void *ProtobufPayload.deinit()
{
  sub_100007378(v0 + 2);
  sub_100014A40(v0[7], v0[8]);
  return v0;
}

void sub_10012EEEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_100046184(&qword_10021C7B8, &qword_1001A1320);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 32);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_10012EFBC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

void sub_10012F01C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014A40(a1, a2);
  [a4 writeData:isa forTag:a3];
}

unint64_t sub_10012F108()
{
  result = qword_10021CF40;
  if (!qword_10021CF40)
  {
    sub_1000461CC(&qword_10021CF38, &qword_1001A1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021CF40);
  }

  return result;
}

uint64_t sub_10012F16C(uint64_t a1, uint64_t a2)
{
  result = sub_1000270E0(&qword_10021CF48, a2, type metadata accessor for ProtobufPayload, &protocol conformance descriptor for ProtobufPayload);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10012F254(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = 1;
  *(v5 + 74) = a3[32];
  *(v5 + 80) = *(a3 + 3);
  v8 = *a3;
  v11 = *(a3 + 8);
  v10[0] = v8;
  v12 = a5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v13 = 0;
  sub_10012F808(v10, v5 + 32);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return v5;
}

uint64_t sub_10012F2F0@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = sub_10012F730(v1 + 32, &v21);
  if (v23 != 1)
  {
    sub_10012F768(&v21, v19);
    switch(v19[0])
    {
      case 1:
        sub_100003CE8();
        v18[40] = v9;
        goto LABEL_17;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 8:
      case 9:
        sub_100003CE8();
        goto LABEL_16;
      case 7:
        if (!v20 || !swift_unknownObjectWeakLoadStrong())
        {
          sub_10011DDBC();
          swift_allocError();
          v14 = 10;
          goto LABEL_21;
        }

        swift_getObjectType();
        v7 = sub_100006290();
        v8(v7);
        swift_unknownObjectRelease();
        if (v2)
        {
          return sub_10012F7A0(v19);
        }

        v16[24] = 0;
        goto LABEL_14;
      case 0xA:
        if (v20 && swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          v10 = sub_100006290();
          v11(v10);
          swift_unknownObjectRelease();
          if (!v2)
          {
            v16[24] = 1;
LABEL_14:
            *v18 = v15;
            *&v18[16] = *v16;
            *&v18[25] = *&v16[9];
LABEL_17:
            sub_10011FB8C(v18, &v15);
            v17 = 1;
            swift_beginAccess();
            sub_10012F7D0(&v15, v1 + 32);
            swift_endAccess();
            result = sub_10012F7A0(v19);
            v12 = *&v18[16];
            *a1 = *v18;
            a1[1] = v12;
            v6 = *&v18[25];
            goto LABEL_18;
          }
        }

        else
        {
          sub_10011DDBC();
          swift_allocError();
          v14 = 9;
LABEL_21:
          *v13 = v14;
          *(v13 + 8) = 0u;
          *(v13 + 24) = 0u;
          *(v13 + 40) = 3584;
          swift_willThrow();
        }

        return sub_10012F7A0(v19);
      default:
        memset(v18, 0, 40);
LABEL_16:
        v18[40] = 2;
        goto LABEL_17;
    }
  }

  v5 = *v22;
  *a1 = v21;
  a1[1] = v5;
  v6 = *&v22[9];
LABEL_18:
  *(a1 + 25) = v6;
  return result;
}

uint64_t sub_10012F5AC()
{

  sub_10012F700(v0 + 32);

  return _swift_deallocClassInstance(v0, 89, 7);
}

uint64_t sub_10012F61C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012F658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_10012F6A4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

uint64_t sub_10012F840(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else if ((*(a1 + 32) & 0xF000000000000007) != 0)
    {
      v2 = *(a1 + 24) & 0x7FFFFFFF;
    }

    else
    {
      v2 = -1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10012F884(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
      *(result + 32) = 1;
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

ValueMetadata *PGetManyColumn.columnType.getter(char a1)
{
  v1 = &type metadata for String;
  switch(a1)
  {
    case 1:
    case 2:
      v1 = &type metadata for Data;
      sub_10012F954();
      break;
    case 3:
    case 4:
      return v1;
    default:
      v1 = &type metadata for SQLiteUndefined;
      sub_10012F9A8();
      break;
  }

  return v1;
}

unint64_t sub_10012F954()
{
  result = qword_10021D178;
  if (!qword_10021D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D178);
  }

  return result;
}

unint64_t sub_10012F9A8()
{
  result = qword_10021D180;
  if (!qword_10021D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D180);
  }

  return result;
}

Schematizer::PGetManyColumn_optional __swiftcall PGetManyColumn.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001FE9B8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t PGetManyColumn.rawValue.getter(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x7463656A626FLL;
      break;
    case 2:
      result = 0x64616F6C796170;
      break;
    case 3:
      result = 0x614E616D65686373;
      break;
    case 4:
      result = 0x79747265706F7270;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10012FB0C(char a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_10012FC64(a1);
  v6 = v5;
  if (v4 == sub_10012FC64(v2) && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = PGetManyColumn.columnType.getter(a1);
    return v11 == PGetManyColumn.columnType.getter(v2);
  }

  return result;
}

Schematizer::PGetManyColumn_optional sub_10012FBE0@<W0>(Swift::String *a1@<X0>, Schematizer::PGetManyColumn_optional *a2@<X8>)
{
  result.value = PGetManyColumn.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10012FC10@<X0>(uint64_t *a1@<X8>)
{
  result = PGetManyColumn.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10012FC64(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x7463656A626FLL;
      break;
    case 2:
      result = 0x64616F6C796170;
      break;
    case 3:
      result = 0x614E616D65686373;
      break;
    case 4:
      result = 0x79747265706F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PGetManyConnection.init(_:argc:argv:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = a2;
  sub_100046184(&qword_10021C648, &unk_1001A2040);
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    v12 = sub_10012FF30();
    sub_100004248(&type metadata for PGetManyError, v12);
    *v13 = xmmword_10019BC20;
    swift_willThrow();
    goto LABEL_5;
  }

  v9 = v8;
  sub_10011DCBC();
  if (v4)
  {
LABEL_5:

    swift_deallocPartialClassInstance();
    return v5;
  }

  v10 = SQLiteBaseSchematizer.getSQLiteBridge()();
  v15 = v11;

  *(v3 + 40) = v10;
  *(v3 + 48) = v15;
  v5 = SQLiteBaseVTab.Connection.init(_:argc:argv:)(v9, v7, a3);

  return v5;
}

unint64_t sub_10012FF30()
{
  result = qword_10021D188;
  if (!qword_10021D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D188);
  }

  return result;
}

uint64_t PGetManyConnection.bestIndex(_:)(uint64_t result)
{
  v1 = *result;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    while (2)
    {
      v4 = 8 * v3;
      v5 = 12 * v3;
      do
      {
        if (v1 == v3)
        {
          *(result + 64) = 0;
          *(result + 72) = 1;
          return (v2 & 0xFFFFFFFE) != 2;
        }

        if (v3 >= v1)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_22;
        }

        v7 = *(result + 8);
        if (!v7)
        {
          goto LABEL_26;
        }

        v8 = *(v7 + v5);
        if (v8 > 4)
        {
          return 19;
        }

        if ((v8 & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v4 += 8;
        ++v3;
        v5 += 12;
      }

      while (!*(&off_1001FEA78 + v8 + 32));
      v9 = v7 + v5;
      v10 = *(v7 + v5 - 8);
      if (*(v9 - 7))
      {
        v11 = v10 == 2;
      }

      else
      {
        v11 = 0;
      }

      if (!v11)
      {
        return 19;
      }

      if (__OFADD__(v2++, 1))
      {
        goto LABEL_25;
      }

      v13 = *(result + 32);
      if (v13)
      {
        v14 = v13 + v4;
        *(v14 - 8) = v2;
        *(v14 - 4) = 1;
        v3 = v6;
        continue;
      }

      break;
    }
  }

  __break(1u);
  return result;
}

uint64_t PGetManyConnection.deinit()
{

  swift_weakDestroy();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PGetManyConnection.__deallocating_deinit()
{
  PGetManyConnection.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100130124(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 80) = _swiftEmptyArrayStorage;
  if (*a1 == &type metadata for PGetManyConnection)
  {
    *(v1 + 64) = *(a1 + 40);
    swift_unknownObjectRetain();
    return SQLiteBaseVTab.Cursor.init(_:)(a1);
  }

  else
  {
    v4 = sub_10012FF30();
    sub_100004248(&type metadata for PGetManyError, v4);
    *v5 = xmmword_10019BC20;
    swift_willThrow();

    swift_unknownObjectRelease();

    type metadata accessor for PGetManyCursor(0);
    return swift_deallocPartialClassInstance();
  }
}

uint64_t sub_10013021C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4 != 3)
  {
    if (v4 == 2)
    {
      v6 = SQLiteArgument.getStringNonNull()();
      result = v6._countAndFlagsBits;
      if (!v7)
      {
        ObjectType = swift_getObjectType();
        object = v1[4]._object;
        v10 = *(a1 + 32);
        v11 = object[3];
        swift_unknownObjectRetain();
        v11(v10, ObjectType, object);
        v33 = v32;
        v35 = v34;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v1[2]._countAndFlagsBits = v33;
        v1[2]._object = v35;
        swift_unknownObjectRelease();
        v1[3] = v6;
      }

      return result;
    }

    v24 = sub_10012FF30();
    sub_100004248(&type metadata for PGetManyError, v24);
    *v25 = 0;
    v25[1] = 0;
    return swift_willThrow();
  }

  v12 = SQLiteArgument.getStringNonNull()();
  result = v12._countAndFlagsBits;
  if (v13)
  {
    return result;
  }

  v14 = v1[4]._object;
  v15 = swift_getObjectType();
  v16 = v14[1];
  swift_unknownObjectRetain();
  v17 = v16(v15, v14);
  v19 = v18;
  swift_unknownObjectRelease();
  v20 = SQLiteArgument.getData()(*(a1 + 32));
  if (v21 >> 60 == 15)
  {

    swift_unknownObjectRelease();
    v22 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v22);
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = 6;
    *(v23 + 24) = 4;
    return swift_willThrow();
  }

  v26 = v20;
  v27 = v21;
  type metadata accessor for ProtobufPayload();
  v28 = ProtobufPayload.__allocating_init(with:from:payload:)(v12._countAndFlagsBits, v12._object, v17, v19, v26, v27);
  v29 = sub_10012A1B8();
  v2[2]._countAndFlagsBits = v28;
  v2[2]._object = v29;
  swift_unknownObjectRelease();
  v30 = SQLiteArgument.getStringNonNull()();
  result = v30._countAndFlagsBits;
  if (!v31)
  {
    v2[3] = v30;
  }

  return result;
}

uint64_t PGetManyCursor.filter(idxNum:idxStr:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = SQLiteBaseVTab.Cursor.filter(idxNum:idxStr:arguments:)();
  if (!v4 && !result)
  {
    sub_10013021C(a3);
    if (v3[4] && (v7 = v3[7]) != 0)
    {
      v9 = v3[5];
      v8 = v3[6];
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 104);
      swift_unknownObjectRetain();

      v12 = v11(v8, v7, ObjectType, v9);
      swift_unknownObjectRelease();

      v3[10] = v12;

      return 0;
    }

    else
    {
      v13 = sub_10012FF30();
      sub_100004248(&type metadata for PGetManyError, v13);
      *v14 = 0xD000000000000012;
      v14[1] = 0x80000001001B27D0;
      return swift_willThrow();
    }
  }

  return result;
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PGetManyCursor.setValue(forColumn:on:)(Swift::String forColumn, SQLiter::SQLiteContext on)
{
  object = forColumn._object;
  countAndFlagsBits = forColumn._countAndFlagsBits;
  v6 = SQLiteDatabase.unsafeConnection()();

  v7._countAndFlagsBits = countAndFlagsBits;
  v7._object = object;
  value = PGetManyColumn.init(rawValue:)(v7).value;
  if (value == 5 || (v9 = v2[4]) == 0)
  {
    LODWORD(v12) = 1;
    return v12;
  }

  v10 = v2[5];
  switch(value)
  {
    case 1:
      v28 = v2[9];
      ObjectType = swift_getObjectType();
      v30 = *(v28 + 16);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v30(v9, v10, on.context._rawValue, ObjectType, v28);
      swift_unknownObjectRelease();
      goto LABEL_12;
    case 2:
      v17 = swift_getObjectType();
      v18 = *(v10 + 24);
      swift_unknownObjectRetain();
      v19 = v18(v17, v10);
      v21 = v20;
      SQLiteContext.setData(_:destructor:)(v19, v20, 1, on.context._rawValue);
      swift_unknownObjectRelease();
      sub_100014A40(v19, v21);
      goto LABEL_13;
    case 3:
      v22 = swift_getObjectType();
      v23 = *(v10 + 16);
      swift_unknownObjectRetain();
      v23(v32, v22, v10);
      v25 = v33;
      v24 = v34;
      sub_100007534(v32, v33);
      v26 = (*(*(v24 + 8) + 8))(v25);
      SQLiteContext.setString(_:destructor:)(v26, v27, 1, on.context._rawValue);

      swift_unknownObjectRelease();
      sub_100007378(v32);
      goto LABEL_13;
    case 4:
      v16 = v2[6];
      v15 = v2[7];

      swift_unknownObjectRetain();
      SQLiteContext.setString(_:destructor:)(v16, v15, 1, on.context._rawValue);

      goto LABEL_12;
    default:
      v11 = v2[9];
      v12 = swift_getObjectType();
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = v2[10];
      if (v6 >= *(v13 + 16))
      {
LABEL_15:
        __break(1u);
        return v12;
      }

      v14 = v12;
      sub_100026258(v13 + (v6 << 6) + 32, v32);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_1001354FC(v32, on.context._rawValue, v14, v11);
      sub_100130888(v32);
      swift_unknownObjectRelease();
LABEL_12:
      swift_unknownObjectRelease();
LABEL_13:
      LODWORD(v12) = 0;
      return v12;
  }
}

uint64_t sub_100130888(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021D078, &qword_1001A2370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001308F0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t PGetManyCursor.deinit()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v0;
}

uint64_t PGetManyCursor.__deallocating_deinit()
{
  PGetManyCursor.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

unint64_t sub_1001309A8()
{
  result = qword_10021D190;
  if (!qword_10021D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D190);
  }

  return result;
}

unint64_t sub_1001309FC(void *a1)
{
  a1[1] = sub_100130A34();
  a1[2] = sub_100130A88();
  result = sub_100130ADC();
  a1[3] = result;
  return result;
}

unint64_t sub_100130A34()
{
  result = qword_10021D198;
  if (!qword_10021D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D198);
  }

  return result;
}

unint64_t sub_100130A88()
{
  result = qword_10021D1A0;
  if (!qword_10021D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D1A0);
  }

  return result;
}

unint64_t sub_100130ADC()
{
  result = qword_10021D1A8;
  if (!qword_10021D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D1A8);
  }

  return result;
}

unint64_t sub_100130B34()
{
  result = qword_10021D1B0;
  if (!qword_10021D1B0)
  {
    sub_1000461CC(&qword_10021D1B8, &qword_1001A2110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D1B0);
  }

  return result;
}

unint64_t sub_100130B98(uint64_t a1)
{
  result = sub_1001309A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100130BC4()
{
  result = qword_10021D1C0;
  if (!qword_10021D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D1C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PGetManyColumn(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100130DE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100130DFC(uint64_t a1, unsigned int a2)
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

uint64_t sub_100130E50(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_100130EAC(void *result, int a2)
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PPayloadFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  sub_10011DE10();
  if (!v2)
  {
    SQLiteBaseSchematizer.getSQLiteBridge()();
    v6 = v5;

    if (*(arguments._rawValue + 2))
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(*(arguments._rawValue + 4), ObjectType, v6);
      v9 = v8;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v10 = swift_getObjectType();
      v11 = (*(v9 + 24))(v10, v9);
      v13 = v12;
      SQLiteContext.setData(_:destructor:)(v11, v12, 1, with.context._rawValue);
      sub_100014A40(v11, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PSetTimeWindowFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = SQLiteArgument.getDouble()();
  if (v3 == 1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = SQLiteArgument.getDouble()();
  if (v5 >= v6)
  {
    sub_10011DDBC();
    swift_allocError();
    *v10 = 0xD000000000000028;
    *(v10 + 8) = 0x80000001001B2880;
    *(v10 + 41) = 0;
    swift_willThrow();
  }

  else
  {
    v7 = v6;
    v8 = sub_10011DE10();
    if (!v2)
    {
      if (v5 <= v7)
      {
        v9 = v8;
        swift_beginAccess();
        *(v9 + 32) = v5;
        *(v9 + 40) = v7;

        SQLiteContext.setBool(_:)(1);
        return;
      }

      goto LABEL_11;
    }
  }
}

uint64_t sub_10013116C(sqlite3_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a5 + 160))(ObjectType, a5);
  SQLiteContext.setString(_:destructor:)(v8, v9, 1, a1);
}

void sub_100131258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[0] = a1;
  v15[1] = a2;
  v15[8] = 64;
  v15[9] = 0xE100000000000000;
  sub_10000527C();
  if (StringProtocol.contains<A>(_:)())
  {
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    v13._object = 0x80000001001B2910;
    SQLiteContext.setError(message:code:)(v13, -1);
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a7 + 64))(v15, a1, a2, ObjectType, a7);
    sub_1001314A4(a3, a4, a5);
    sub_100130888(v15);
  }
}

void sub_1001314A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001318EC(v3, v7);
  if (v8[25] == 255)
  {
    sub_100130888(v7);
    SQLiteContext.setNull()();
  }

  else
  {
    v9[0] = v7[0];
    v9[1] = v7[1];
    v10[0] = *v8;
    *(v10 + 10) = *&v8[10];
    sub_100131660(a1, a2, a3);
    sub_10002633C(v9);
  }
}

uint64_t sub_100131554(uint64_t a1, uint64_t a2, sqlite3_context *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v12 = (*(a7 + 120))(a1, a2, ObjectType, a7);
  SQLiteContext.setString(_:destructor:)(v12, v13, 1, a3);
}

void sub_100131660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_100026258(v5, v45);
  switch(v48)
  {
    case 1:
      SQLiteContext.setUInt32(_:)(v45[0]);
      return;
    case 2:
      SQLiteContext.setInt64(_:)(*v45);
      return;
    case 3:
      SQLiteContext.setUInt64(_:)(*v45);
      return;
    case 4:
      SQLiteContext.setFloat(_:)(*v45);
      return;
    case 5:
      SQLiteContext.setDouble(_:)(*v45);
      return;
    case 6:
      SQLiteContext.setBool(_:)(v45[0]);
      return;
    case 7:
      *&v44[9] = *&v47[9];
      v43 = v46;
      *v44 = *v47;
      v42 = *v45;
      v19 = *&v47[8];
      if (v47[24])
      {
        v20 = *(&v43 + 1);
        v21 = *v44;
        sub_100007534(&v42, *(&v43 + 1));
        (*(v21 + 32))(v19, v20, v21);
        if (v4)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      sub_100005FBC();
      sub_100003CFC();
      SQLiteContext.setString(_:destructor:)(v30, v31, v32, v33);

LABEL_19:
      sub_10012F200(&v42);
      return;
    case 8:
      sub_100003CFC();
      SQLiteContext.setString(_:destructor:)(v26, v27, v28, v29);

      return;
    case 9:
      v9 = sub_100005FBC();
      sub_100014924(v9, v10);
      sub_100005FBC();
      sub_100003CFC();
      SQLiteContext.setData(_:destructor:)(v11, v12, v13, v14);
      v15 = sub_100005FBC();
      sub_100014A40(v15, v16);
      v17 = sub_100005FBC();
      goto LABEL_21;
    case 10:
      v22 = *v45;
      v23 = *&v45[2];
      if (a2)
      {
        ObjectType = swift_getObjectType();
        v25 = *(a3 + 16);
        swift_unknownObjectRetain();
        v25(v22, v23, a1, ObjectType, a3);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = swift_getObjectType();
        v35 = (*(v23 + 24))(v34, v23);
        v37 = v36;
        sub_100003CFC();
        SQLiteContext.setData(_:destructor:)(v38, v39, v40, v41);
        swift_unknownObjectRelease();
        v17 = v35;
        v18 = v37;
LABEL_21:
        sub_100014A40(v17, v18);
      }

      return;
    default:
      SQLiteContext.setInt32(_:)(v45[0]);
      return;
  }
}

uint64_t sub_1001318EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_10021D078, &qword_1001A2370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IntegerSet.forEach(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a1;
  v71 = a2;
  v7 = *(*(a5 + 8) + 32);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_10000DC50();
  v73 = type metadata accessor for ClosedRange<>.Index();
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003838();
  v72 = v12;
  sub_100007F80();
  __chkstk_darwin(v13);
  sub_100009934();
  v75 = v14;
  sub_100003A6C();
  v67 = v15;
  __chkstk_darwin(v16);
  sub_100004370();
  v69 = v17;
  v18 = type metadata accessor for ClosedRange();
  v77 = AssociatedConformanceWitness;
  v78 = v7;
  v79[1] = v7;
  v79[2] = AssociatedConformanceWitness;
  sub_100006C8C();
  swift_getWitnessTable();
  v19 = type metadata accessor for IndexingIterator();
  sub_100003650();
  v63 = v20;
  sub_100003760();
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  sub_100003A6C();
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v28);
  v64 = &v55 - v29;
  sub_100023F30();
  v30 = Array.startIndex.getter();
  after = v30;
  sub_100023F30();
  result = Array.endIndex.getter();
  if (v30 != result)
  {
    v56 = v27;
    v61 = (v25 + 8);
    v74 = (v10 + 8);
    v66 = v67 + 32;
    v65 = (v10 + 32);
    v67 += 8;
    v68 = (v10 + 16);
    ++v63;
    v59 = a3;
    v60 = v19;
    v57 = v25;
    v58 = (v25 + 16);
    v62 = a4;
    while (2)
    {
      sub_100023F30();
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v33 = a3 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v30;
        v34 = *(v25 + 16);
        v35 = v64;
        v34(v64, v33, v18);
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v56 != 8)
        {
LABEL_17:
          __break(1u);
          return result;
        }

        v79[0] = result;
        v34 = *v58;
        v35 = v64;
        (*v58)(v64, v79, v18);
        swift_unknownObjectRelease();
      }

      Array.formIndex(after:)(&after);
      v34(v23, v35, v18);
      v36 = *(v19 + 36);
      ClosedRange<>.startIndex.getter();
      (*v61)(v35, v18);
      v37 = v62;
      while (1)
      {
        v38 = v75;
        ClosedRange<>.endIndex.getter();
        v39 = static ClosedRange<>.Index.== infix(_:_:)();
        v40 = v73;
        v41 = *v74;
        (*v74)(v38, v73);
        if (v39)
        {
          break;
        }

        v42 = v18;
        v43 = v72;
        (*v68)(v72, &v23[v36], v40);
        result = sub_100008D0C(v43, 1, v37);
        if (result == 1)
        {
          __break(1u);
          goto LABEL_17;
        }

        v44 = v69;
        v45 = sub_1000041F8();
        v46(v45);
        v47 = &v23[v36];
        v48 = v23;
        v49 = v75;
        (*v65)(v75, v47, v40);
        ClosedRange<>.index(after:)();
        v41(v49, v40);
        v50 = v76;
        v70(v44);
        v76 = v50;
        if (v50)
        {
          v53 = sub_100006818();
          v54(v53, v37);
          return (*v63)(v48, v60);
        }

        v51 = sub_100006818();
        v52(v51, v37);
        v18 = v42;
        v23 = v48;
      }

      v19 = v60;
      (*v63)(v23, v60);
      a3 = v59;
      sub_100023F30();
      result = Array.endIndex.getter();
      v30 = after;
      v25 = v57;
      if (after != result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void IntegerSet.add(_:)()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_100003650();
  v215 = v8;
  __chkstk_darwin(v9);
  sub_100003838();
  v217 = v10;
  sub_100007F80();
  __chkstk_darwin(v11);
  sub_100009934();
  v214 = v12;
  v13 = *(v3 + 24);
  v14 = *(v13 + 8);
  v206 = *(v14 + 24);
  v210 = *(v206 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003760();
  __chkstk_darwin(v15);
  v209 = v193 - v16;
  v207 = v14;
  v17 = *(*(v14 + 32) + 8);
  type metadata accessor for ClosedRange();
  sub_100003650();
  v213 = v18;
  __chkstk_darwin(v19);
  sub_100003838();
  v202 = v20;
  sub_100007F80();
  __chkstk_darwin(v21);
  v204 = v193 - v22;
  sub_100007F80();
  __chkstk_darwin(v23);
  sub_100009934();
  v220 = v24;
  sub_100003A6C();
  v219 = v25;
  __chkstk_darwin(v26);
  sub_100003838();
  v208 = v27;
  sub_100007F80();
  __chkstk_darwin(v28);
  v212 = (v193 - v29);
  sub_100007F80();
  __chkstk_darwin(v30);
  sub_100009934();
  v211 = v31;
  v32 = *v1;
  v223 = *v1;
  v221 = v33;
  v34 = type metadata accessor for Array();
  sub_100011B24();
  swift_getWitnessTable();
  v35 = Collection.isEmpty.getter();
  v218 = v1;
  v216 = v34;
  if (v35)
  {
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v36 = v219;
      v37 = *(v219 + 16);
      v38 = v214;
      v37(v214, v5, v6);
      v37(v38 + *(TupleTypeMetadata2 + 48), v5, v6);
      v39 = v38;
      v40 = v215;
      v41 = v217;
      (*(v215 + 16))(v217, v38, TupleTypeMetadata2);
      v213 = *(TupleTypeMetadata2 + 48);
      v42 = *(v36 + 32);
      v43 = TupleTypeMetadata2;
      v44 = v220;
      v45 = sub_100005994();
      v42(v45);
      v46 = *(v36 + 8);
      v46(v41 + v213, v6);
      (*(v40 + 32))(v41, v39, v43);
      (v42)(v44 + *(v221 + 36), v41 + *(v43 + 48), v6);
      v46(v41, v6);
LABEL_4:
      Array.append(_:)();
LABEL_28:
      sub_100005460();
      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  v200 = v17;
  v199 = TupleTypeMetadata2;
  v222 = v32;
  __chkstk_darwin(v35);
  v47 = v6;
  v193[-4] = v6;
  v193[-3] = v13;
  v203 = v5;
  v193[-2] = v5;

  Collection.firstIndex(where:)();

  v201 = v32;
  if (v224)
  {
    v48 = v221;
    v49 = __OFSUB__(Array.count.getter(), 1);
    v50 = v211;
    if (v49)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v51 = v220;
    Array.subscript.getter();
    v52 = v219;
    v53 = *(v219 + 16);
    v54 = v51 + *(v48 + 36);
    v55 = v212;
    v198 = v219 + 16;
    v202 = v53;
    (v53)(v212, v54, v47);
    v197 = *(v213 + 8);
    v197(v51, v48);
    sub_100006B0C();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v56 = *(v52 + 8);
    v57 = sub_100005994();
    v56(v57);
    (v56)(v55, v47);
    sub_10000EC54();
    v58 = v203;
    sub_100015BC8();
    LOBYTE(v55) = dispatch thunk of static Equatable.== infix(_:_:)();
    (v56)(v50, v47);
    v210 = v56;
    if ((v55 & 1) == 0)
    {
      if (sub_10000DF54(v58, v58))
      {
        v156 = v214;
        sub_100015BC8();
        v157 = v202;
        v202();
        v158 = v199;
        sub_100015BC8();
        v157();
        v159 = v215;
        v160 = v217;
        (*(v215 + 16))(v217, v156, v158);
        v161 = *(v158 + 48);
        v162 = v220;
        v163 = *(v219 + 32);
        v163(v220, v160, v47);
        v164 = v160 + v161;
        v165 = v210;
        (v210)(v164, v47);
        (*(v159 + 32))(v160, v156, v158);
        v163(v162 + *(v221 + 36), v160 + *(v158 + 48), v47);
        v166 = sub_100005994();
        v165(v166);
        goto LABEL_4;
      }

      goto LABEL_33;
    }

    sub_10000F698();
    v59 = Array.count.getter();
    if (__OFSUB__(v59, 1))
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v212 = (v59 - 1);
    sub_10000F698();
    v49 = __OFSUB__(Array.count.getter(), 1);
    v60 = v202;
    if (v49)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v61 = v204;
    Array.subscript.getter();
    (v60)(v50, v61, v47);
    sub_10000F698();
    sub_10000BECC();
    v62();
    v63 = v203;
    if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v64 = *(v219 + 32);
    v65 = v214;
    v64(v214, v50, v47);
    v66 = v199;
    (v60)(v65 + *(v199 + 48), v63, v47);
    v67 = v217;
    v68 = sub_100008A40();
    v69(v68);
    v70 = *(v66 + 48);
    v71 = v220;
    v64(v220, v67, v47);
    v72 = v67 + v70;
    v73 = v210;
    (v210)(v72, v47);
    v74 = sub_100008A40();
    v75(v74);
    v76 = v221;
    v64(v71 + *(v221 + 36), v67 + *(v66 + 48), v47);
    v73(v67, v47);
    v77 = v218;
    Array._makeMutableAndUnique()();
    v78 = *v77;
    v79 = v212;
    sub_100133F50(v212, v78, v76);
    sub_10000869C();
    v83 = v78 + v81 + *(v82 + 32) * v79;
    v84 = v71;
    v85 = v76;
LABEL_27:
    v80(v83, v84, v85);
    goto LABEL_28;
  }

  v86 = v211;
  v198 = v223;
  if (!v223)
  {
    goto LABEL_18;
  }

  if (__OFSUB__(v223, 1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v87 = v220;
  v194 = v223 - 1;
  v88 = v221;
  Array.subscript.getter();
  v89 = v219;
  v90 = v87 + *(v88 + 36);
  v195 = *(v219 + 16);
  v193[4] = v219 + 16;
  v195(v212, v90, v47);
  v91 = *(v213 + 8);
  v197 = (v213 + 8);
  v196 = v91;
  (v91)(v87, v88);
  swift_getAssociatedConformanceWitness();
  sub_100005690();
  v193[3] = v92;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v93 = v208;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v193[2] = *(v206 + 8);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  v94 = *(v89 + 8);
  v94(v93, v47);
  v95 = sub_100006B0C();
  (v94)(v95);
  v96 = *(*(v207 + 16) + 8);
  LOBYTE(v87) = dispatch thunk of static Equatable.== infix(_:_:)();
  v94(v86, v47);
  if ((v87 & 1) == 0)
  {
LABEL_18:
    v127 = v220;
    v128 = v221;
    sub_10000DC50();
    Array.subscript.getter();
    v129 = v219;
    v130 = v212;
    v131 = sub_1000041F8();
    v202 = v132;
    (v132)(v131);
    v197 = *(v213 + 8);
    v197(v127, v128);
    swift_getAssociatedConformanceWitness();
    sub_100005690();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v133 = v208;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    sub_10000F698();
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v134 = *(v129 + 8);
    v134(v133, v47);
    v134(v130, v47);
    sub_10000EC54();
    v135 = v203;
    sub_100007964();
    v136 = dispatch thunk of static Equatable.== infix(_:_:)();
    v212 = v134;
    v134(v86, v47);
    if ((v136 & 1) == 0)
    {
      v167 = v202;
      if (sub_10000DF54(v135, v135))
      {
        sub_100007964();
        v167();
        v168 = v199;
        sub_100007964();
        v167();
        v169 = v217;
        sub_100012F88();
        v170();
        v171 = *(v168 + 48);
        v172 = v220;
        v173 = *(v219 + 32);
        sub_100015BC8();
        v173();
        v174 = v169 + v171;
        v175 = v212;
        v212(v174, v47);
        sub_100012F88();
        v176();
        (v173)(v172 + *(v221 + 36), v169 + *(v168 + 48), v47);
        v177 = sub_100006B0C();
        v175(v177);
        Array.insert(_:at:)();
        goto LABEL_28;
      }

      goto LABEL_37;
    }

    sub_10000C8B8();
    v137 = v221;
    Array.subscript.getter();
    v138 = v202;
    (v202)(v86, v136 + *(v137 + 36), v47);
    sub_1000041F8();
    sub_10000BECC();
    v139();
    if ((sub_10000DF54(v135, v86) & 1) == 0)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v140 = v214;
    sub_100007964();
    v138();
    v141 = v199;
    v142 = *(v219 + 32);
    v142(v140 + *(v199 + 48), v86, v47);
    sub_100007000();
    v143 = v217;
    v144(v217, v140, v141);
    v145 = *(v141 + 48);
    v146 = v220;
    v142(v220, v143, v47);
    v147 = v143 + v145;
    v148 = v212;
    v212(v147, v47);
    (*(v86 + 32))(v143, v140, v141);
    v149 = v221;
    v142(v146 + *(v221 + 36), v143 + *(v141 + 48), v47);
    v150 = sub_100005994();
    v148(v150);
    v151 = v218;
    Array._makeMutableAndUnique()();
    v152 = *v151;
    v153 = v198;
    sub_100133F50(v198, v152, v149);
    sub_10000869C();
    v83 = v152 + v154 + *(v155 + 32) * v153;
    v84 = v146;
    v85 = v149;
    goto LABEL_27;
  }

  v97 = v220;
  v207 = v96;
  Array.subscript.getter();
  v98 = v212;
  v99 = v47;
  v195(v212, v97, v47);
  v100 = sub_100007DE4();
  v101(v100);
  sub_100005690();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v102 = v208;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v94(v102, v47);
  v103 = v98;
  v104 = v211;
  v94(v103, v47);
  v105 = v203;
  v106 = dispatch thunk of static Equatable.== infix(_:_:)();
  v94(v104, v47);
  sub_10000DC50();
  Array.subscript.getter();
  sub_10000B12C();
  v107();
  v108 = sub_100007DE4();
  v109(v108);
  v193[1] = v94;
  if (v106)
  {
    sub_10000C8B8();
    sub_10000DC50();
    Array.subscript.getter();
    v110 = v212;
    sub_10000B12C();
    v111();
    sub_10000BECC();
    v196();
    if (sub_10001AE3C(v104, v110))
    {
      v112 = *(v219 + 32);
      v113 = v214;
      sub_100012F88();
      v112();
      v114 = v199;
      (v112)(v113 + *(v199 + 48), v110, v99);
      sub_100007000();
      v115 = v217;
      v116(v217, v113, v114);
      v117 = *(v114 + 48);
      v118 = v220;
      (v112)(v220, v115, v99);
      v119 = sub_10001BEC8();
      v117(v119);
      (*(v104 + 32))(v115, v113, v114);
      v120 = v221;
      (v112)(v118 + *(v221 + 36), v115 + *(v114 + 48), v99);
      (v117)(v115, v99);
      v121 = v218;
      Array._makeMutableAndUnique()();
      v122 = *v121;
      v123 = v194;
      sub_100133F50(v194, *v121, v120);
      sub_10000869C();
      v126(v122 + v124 + *(v125 + 32) * v123, v118, v120);
      Array.remove(at:)();
      sub_10000BECC();
      v196();
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  if (sub_10001AE3C(v104, v105))
  {
    v178 = *(v219 + 32);
    v179 = v214;
    sub_100012F88();
    v178();
    v180 = v199;
    sub_10000B12C();
    v181();
    sub_100007000();
    v182 = v217;
    v183(v217, v179, v180);
    v184 = *(v180 + 48);
    v185 = v220;
    (v178)(v220, v182, v99);
    v186 = sub_10001BEC8();
    v184(v186);
    (*(v104 + 32))(v182, v179, v180);
    v187 = v221;
    (v178)(v185 + *(v221 + 36), v182 + *(v180 + 48), v99);
    (v184)(v182, v99);
    v188 = v218;
    Array._makeMutableAndUnique()();
    v189 = *v188;
    v190 = v194;
    sub_100133F50(v194, v189, v187);
    sub_10000869C();
    v83 = v189 + v191 + *(v192 + 32) * v190;
    v84 = v185;
    v85 = v187;
    goto LABEL_27;
  }

LABEL_39:
  __break(1u);
}

void IntegerSet.lowerBound.getter()
{
  sub_100005478();
  v4 = sub_100008184(v3);
  sub_10000F2BC();
  v5 = type metadata accessor for Optional();
  sub_100003650();
  v7 = v6;
  sub_100003760();
  __chkstk_darwin(v8);
  v9 = sub_10000CA60();
  sub_100003650();
  v21 = v10;
  sub_100003760();
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v23 = v1;
  sub_10000F2BC();
  type metadata accessor for Array();
  sub_100011B24();
  swift_getWitnessTable();
  sub_10000AF64();
  Collection.first.getter();
  if (sub_100008D0C(v2, 1, v4) == 1)
  {
    (*(v7 + 8))(v2, v5);
    sub_10001BC74(v13, 1);
    dispatch thunk of static FixedWidthInteger.max.getter();
    sub_100007760(v13);
    if (!v14)
    {
      (*(v21 + 8))(v13, v9);
    }
  }

  else
  {
    sub_100003A6C();
    v16 = v15;
    (*(v17 + 16))(v13, v2, v0);
    v18 = sub_100005994();
    v19(v18);
    sub_10001BC74(v13, 0);
    (*(v16 + 32))(v22, v13, v0);
  }

  sub_100005460();
}

void IntegerSet.upperBound.getter()
{
  sub_100005478();
  v4 = sub_100008184(v3);
  sub_10000F2BC();
  v5 = type metadata accessor for Optional();
  sub_100003650();
  v7 = v6;
  sub_100003760();
  __chkstk_darwin(v8);
  v9 = sub_10000CA60();
  sub_100003650();
  v19 = v10;
  sub_100003760();
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  v21 = v1;
  sub_10000F2BC();
  type metadata accessor for Array();
  swift_getWitnessTable();
  sub_10000AF64();
  BidirectionalCollection.last.getter();
  if (sub_100008D0C(v2, 1, v4) == 1)
  {
    (*(v7 + 8))(v2, v5);
    sub_10001BC74(v13, 1);
    dispatch thunk of static FixedWidthInteger.min.getter();
    sub_100007760(v13);
    if (!v14)
    {
      (*(v19 + 8))(v13, v9);
    }
  }

  else
  {
    v15 = *(v0 - 8);
    (*(v15 + 16))(v13, v2 + *(v4 + 36), v0);
    v16 = sub_100005994();
    v17(v16);
    sub_10001BC74(v13, 0);
    (*(v15 + 32))(v20, v13, v0);
  }

  sub_100005460();
}

BOOL IntegerSet.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClosedRange();
  v9 = type metadata accessor for Optional();
  sub_100003650();
  v11 = v10;
  sub_100003760();
  __chkstk_darwin(v12);
  v14 = &v17[-v13];
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a1;
  type metadata accessor for Array();

  swift_getWitnessTable();
  Sequence.first(where:)();

  v15 = sub_100008D0C(v14, 1, v8) != 1;
  (*(v11 + 8))(v14, v9);
  return v15;
}

void IntegerSet.forEach(_:)()
{
  sub_100005478();
  v1 = v0;
  v3 = v2;
  v66 = v4;
  v67 = v5;
  v7 = *(*(v6 + 8) + 32);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v58 = type metadata accessor for ClosedRange<>.Index();
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003838();
  v68 = v12;
  sub_100007F80();
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  sub_100003A6C();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100004370();
  v65 = v19;
  v20 = type metadata accessor for ClosedRange();
  v69 = v7;
  v73[1] = v7;
  v73[2] = AssociatedConformanceWitness;
  sub_100006C8C();
  swift_getWitnessTable();
  v60 = type metadata accessor for IndexingIterator();
  sub_100003650();
  v71 = v21;
  sub_100003760();
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  sub_100003A6C();
  v59 = v25;
  sub_100003760();
  v51 = v26;
  __chkstk_darwin(v27);
  v29 = &v51 - v28;
  sub_100008A40();
  v30 = Array.startIndex.getter();
  v73[0] = v30;
  sub_100008A40();
  if (v30 == Array.endIndex.getter())
  {
LABEL_2:
    sub_100005460();
    return;
  }

  v57 = (v59 + 16);
  v55 = (v59 + 8);
  v63 = v17 + 32;
  v64 = (v10 + 16);
  v61 = v17 + 8;
  v62 = (v10 + 32);
  v52 = (v71 + 8);
  v56 = v3;
  v53 = v29;
  v54 = (v10 + 8);
  v70 = v20;
  while (2)
  {
    sub_100008A40();
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      v32 = v3 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v30;
      v33 = *(v59 + 16);
      v33(v29, v32, v20);
      goto LABEL_6;
    }

    v50 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v51 == 8)
    {
      v72 = v50;
      v33 = *v57;
      (*v57)(v29, &v72, v20);
      swift_unknownObjectRelease();
LABEL_6:
      v34 = v60;
      Array.formIndex(after:)(v73);
      v35 = sub_100006B0C();
      (v33)(v35);
      v71 = *(v34 + 36);
      ClosedRange<>.startIndex.getter();
      (*v55)(v29, v20);
      v36 = v58;
      v37 = v54;
      while (1)
      {
        ClosedRange<>.endIndex.getter();
        v38 = AssociatedConformanceWitness;
        v39 = static ClosedRange<>.Index.== infix(_:_:)();
        v40 = *v37;
        (*v37)(v15, v36);
        if (v39)
        {
          break;
        }

        v41 = v68;
        (*v64)(v68, &v24[v71], v36);
        sub_100007760(v41);
        if (v42)
        {
          __break(1u);
          goto LABEL_15;
        }

        v43 = v1;
        v44 = v65;
        v45 = sub_1000041F8();
        v46(v45);
        (*v62)(v15, &v24[v71], v36);
        ClosedRange<>.index(after:)();
        v40(v15, v36);
        AssociatedConformanceWitness = v38;
        v66(v44);
        v47 = sub_100006818();
        v1 = v43;
        v20 = v70;
        v48(v47, v1);
      }

      (*v52)(v24, v60);
      v3 = v56;
      sub_100008A40();
      v49 = Array.endIndex.getter();
      v30 = v73[0];
      AssociatedConformanceWitness = v38;
      v29 = v53;
      if (v73[0] != v49)
      {
        continue;
      }

      goto LABEL_2;
    }

    break;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100133F50(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100133FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100134040(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(a1 + 56) + 8 * v12);
      v16[0] = *v13;
      v16[1] = v14;
      v16[2] = v15;

      sub_1001348E8(v16);
      if (v2)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SchematizedPayload.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100046184(&qword_10021D7A8, &qword_1001A23E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  sub_100007534(a1, a1[3]);
  sub_100123FC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100046184(&qword_10021D7B0, &qword_1001A23E8);
  v16 = Dictionary.init(dictionaryLiteral:)();
  v14 = &v16;
  v15 = v9;
  v10 = v12[1];
  (*(a3 + 96))(sub_1001348CC, v13, a2, a3);
  if (!v10)
  {
    sub_100134040(v16, v9);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100134368(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_100007534(a1, v7);
  LOBYTE(v8) = (*(v8 + 16))(v7, v8);
  v10 = a1[3];
  v9 = a1[4];
  sub_100007534(a1, v10);
  v11 = (*(*(v9 + 8) + 8))(v10);
  if (v8)
  {
    v13 = sub_1000BCF98(v11, v12, *a3);

    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
    }

    sub_100026258(a2, &v49);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001236B0();
      v14 = v47;
    }

    v15 = v14[2];
    if (v15 >= v14[3] >> 1)
    {
      sub_1001236B0();
      v14 = v48;
    }

    v14[2] = v15 + 1;
    v16 = &v14[8 * v15];
    v17 = v49;
    v18 = v50;
    v19 = v51[0];
    *(v16 + 74) = *(v51 + 10);
    v16[3] = v18;
    v16[4] = v19;
    v16[2] = v17;
    v21 = a1[3];
    v20 = a1[4];
    sub_100007534(a1, v21);
    v22 = (*(*(v20 + 8) + 8))(v21);
    v24 = v23;
    swift_isUniquelyReferenced_nonNull_native();
    *&v49 = *a3;
    sub_1001365F4(v14, v22, v24);
    *a3 = v49;
  }

  *&v49 = v11;
  *(&v49 + 1) = v12;
  sub_100046184(&qword_10021D7A8, &qword_1001A23E0);
  sub_100134CB8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
  }

  if (qword_10021BFB0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000964C(v25, qword_100232D90);
  sub_1000092B4(a1, &v49);
  swift_errorRetain();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v28 = 136315394;
    v30 = *(&v50 + 1);
    v29 = *&v51[0];
    sub_100007534(&v49, *(&v50 + 1));
    v31 = (*(*(v29 + 8) + 8))(v30);
    v33 = v32;
    sub_100007378(&v49);
    v34 = sub_100009684(v31, v33, &v53);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    v52 = v3;
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    v35 = String.init<A>(describing:)();
    v37 = sub_100009684(v35, v36, &v53);

    *(v28 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "Sch: Error encoding %s: %s", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100007378(&v49);
  }

  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  *&v49 = 0xD000000000000014;
  *(&v49 + 1) = 0x80000001001B2990;
  v40 = a1[3];
  v39 = a1[4];
  sub_100007534(a1, v40);
  v41._countAndFlagsBits = (*(*(v39 + 8) + 8))(v40);
  String.append(_:)(v41);

  v42._countAndFlagsBits = 8250;
  v42._object = 0xE200000000000000;
  String.append(_:)(v42);
  v53 = v3;
  swift_errorRetain();
  sub_100046184(&qword_100216900, &unk_10019AE20);
  v43._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v43);

  v45 = a1[3];
  v44 = a1[4];
  sub_100007534(a1, v45);
  *&v49 = (*(*(v44 + 8) + 8))(v45);
  *(&v49 + 1) = v46;
  KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_1001348E8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v15 = *a1;
  v16 = v2;
  sub_100046184(&qword_10021D7A8, &qword_1001A23E0);
  sub_100046184(&qword_10021D7B0, &qword_1001A23E8);
  sub_100134C34();
  result = KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    if (qword_10021BFB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000964C(v5, qword_100232D90);

    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100009684(v3, v2, &v15);
      *(v8 + 12) = 2080;
      v17 = v1;
      swift_errorRetain();
      sub_100046184(&qword_100216900, &unk_10019AE20);
      v9 = String.init<A>(describing:)();
      v11 = sub_100009684(v9, v10, &v15);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Sch: Error encoding %s: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v15 = 0xD000000000000014;
    v16 = 0x80000001001B2990;
    v12._countAndFlagsBits = v3;
    v12._object = v2;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8250;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    v17 = v1;
    swift_errorRetain();
    sub_100046184(&qword_100216900, &unk_10019AE20);
    v14._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v14);

    v15 = v3;
    v16 = v2;

    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return result;
}

unint64_t sub_100134C34()
{
  result = qword_10021D7B8;
  if (!qword_10021D7B8)
  {
    sub_1000461CC(&qword_10021D7B0, &qword_1001A23E8);
    sub_100134CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7B8);
  }

  return result;
}

unint64_t sub_100134CB8()
{
  result = qword_10021D7C0;
  if (!qword_10021D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7C0);
  }

  return result;
}

uint64_t AnyValue.encode(to:)(void *a1)
{
  sub_100007534(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100026258(v1, v7);
  switch(v9)
  {
    case 1:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 2:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 3:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 4:
      sub_100003D08();
      sub_100004584();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 5:
      sub_100003D08();
      sub_100004584();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 6:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
    case 7:
      v5[0] = v7[0];
      v5[1] = v7[1];
      v6[0] = *v8;
      *(v6 + 9) = *&v8[9];
      sub_100003D08();
      sub_100134FB0();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      sub_10012F200(v5);
      break;
    case 8:
      sub_100026EEC(v10, v11);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();

      break;
    case 9:
      v2 = v7[0];
      v5[0] = v7[0];
      sub_100026EEC(v10, v11);
      sub_100069E5C();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      sub_100014A40(v2, *(&v2 + 1));
      break;
    case 10:
      v4 = *&v7[0];
      swift_getObjectType();
      *&v5[0] = v4;
      sub_100026EEC(v10, v11);
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      swift_unknownObjectRelease();
      break;
    default:
      sub_100003D08();
      sub_1000062AC();
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      break;
  }

  return sub_100007378(v10);
}

unint64_t sub_100134FB0()
{
  result = qword_10021D7C8;
  if (!qword_10021D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021D7C8);
  }

  return result;
}

__n128 sub_10013501C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100135038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 58))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 57);
  if (v3 >= 0xB)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100135074(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 42) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001350C4(uint64_t result, unsigned int a2)
{
  if (a2 > 0xA)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 11;
    LOBYTE(a2) = 11;
  }

  *(result + 57) = a2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PEnumFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  if (*(arguments._rawValue + 2) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v4 = SQLiteArgument.getStringNonNull()();
    if (!v5)
    {
      sub_10011DE10();
      SQLiteBaseSchematizer.enum(withName:)(v4._countAndFlagsBits, v4._object);

      sub_100008C84(&v17, v18);
      v6 = *(arguments._rawValue + 4);
      if (SQLiteArgument.isText.getter(*(arguments._rawValue + 4)))
      {
        v7 = SQLiteArgument.getStringNonNull()();
        if (!v8)
        {
          v9 = v19;
          v10 = v20;
          sub_100007534(v18, v19);
          v16 = (*(v10 + 24))(v7._countAndFlagsBits, v7._object, v9, v10);

          SQLiteContext.setInt32(_:)(v16);
        }
      }

      else if (SQLiteArgument.isInteger.getter(v6))
      {
        v11 = SQLiteArgument.getInt32()();
        v12 = v19;
        v13 = v20;
        sub_100007534(v18, v19);
        v14 = (*(v13 + 32))(v11, v12, v13);
        SQLiteContext.setString(_:destructor:)(v14, v15, 1, with.context._rawValue);
      }

      sub_100007378(v18);
    }
  }
}

uint64_t sub_10013533C(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021D7D0, &qword_1001A2608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001353D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v10 = (*(a2 + 24))(ObjectType, a2);
  v12 = v11;
  (*(a2 + 16))(v18, ObjectType, a2);
  v14 = v19;
  v13 = v20;
  sub_100007534(v18, v19);
  v15 = (*(*(v13 + 8) + 8))(v14);
  (*(*(a5 + 8) + 32))(v10, v12, v15, v16, a3, a4);
  sub_100014A40(v10, v12);

  return sub_100007378(v18);
}

void sub_1001354FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001318EC(a1, v7);
  if (v8[25] == 255)
  {
    sub_100130888(v7);
    SQLiteContext.setNull()();
  }

  else
  {
    v9[0] = v7[0];
    v9[1] = v7[1];
    v10[0] = *v8;
    *(v10 + 10) = *&v8[10];
    sub_100131660(a2, v4, a4);
    sub_10002633C(v9);
  }
}

uint64_t sub_1001355A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 16))(v19, a3, a4, a6, a7);
  sub_1000092B4(v19, v18);
  type metadata accessor for ProtobufPayload();
  v12 = swift_allocObject();
  sub_10011FEDC(v18, v12 + 16);
  *(v12 + 56) = a1;
  *(v12 + 64) = a2;
  v13 = sub_10012A1B8();
  v14 = *(a7 + 8);
  v15 = *(v14 + 16);
  sub_100014924(a1, a2);

  v15(v16, v13, a5, a6, v14);

  return sub_100007378(v19);
}

void *sub_10013572C(uint64_t a1, uint64_t a2)
{
  v2[2] = _swiftEmptyArrayStorage;
  v2[3] = Dictionary.init(dictionaryLiteral:)();
  v2[4] = a1;
  v2[5] = a2;
  return v2;
}

uint64_t SQLiteMessageTypeRegistry.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteMessageTypeRegistry.id(forSchemaName:)(Swift::String forSchemaName)
{
  v3 = v1;
  object = forSchemaName._object;
  countAndFlagsBits = forSchemaName._countAndFlagsBits;
  v6 = *v1;
  swift_beginAccess();
  v7 = v1[3];
  if (*(v7 + 16))
  {

    v8 = sub_100005B74(countAndFlagsBits, object);
    if (v9)
    {
      v6 = *(*(v7 + 56) + 8 * v8);

      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_14;
      }

      if (!HIDWORD(v6))
      {
        return v6;
      }

      __break(1u);
    }
  }

  v11 = swift_beginAccess();
  v12 = *(v3[2] + 16);
  if (v12 >= (*(v6 + 104))(v11))
  {
    sub_10012CFB0();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    return v6;
  }

  v18 = v12;
  v6 = v3[5];
  ObjectType = swift_getObjectType();
  v14 = *(v6 + 40);
  swift_unknownObjectRetain();
  v14(v19, countAndFlagsBits, object, ObjectType, v6);
  swift_unknownObjectRelease();
  if (v2)
  {
    return v6;
  }

  LODWORD(v6) = v18 + 1;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v20 = v3[3];
  sub_100135D6C(v18 + 1, countAndFlagsBits, object);
  v3[3] = v20;
  swift_endAccess();
  swift_beginAccess();
  sub_100135BA8(sub_100123108);
  v15 = *(v3[2] + 16);
  sub_100135C4C(v15, sub_100123108);
  v16 = v3[2];
  *(v16 + 16) = v15 + 1;
  sub_1000092B4(v19, v16 + 40 * v15 + 32);
  v3[2] = v16;
  swift_endAccess();
  result = sub_100007378(v19);
  if (v18 <= 0xFFFFFFFE)
  {
    return v6;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100135A54@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    sub_10012CFB0();
    swift_allocError();
    v7 = 2;
    goto LABEL_5;
  }

  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) < a1)
  {
    sub_10012CFB0();
    swift_allocError();
    v7 = 1;
LABEL_5:
    *v6 = v7;
    return swift_willThrow();
  }

  return sub_1000092B4(v5 + 40 * (a1 - 1) + 32, a2);
}

uint64_t SQLiteMessageTypeRegistry.__deallocating_deinit()
{
  SQLiteMessageTypeRegistry.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_100135BA8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_100135C4C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_100135C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000086B4(a1, a2, a3);
  sub_100005F80();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100006700();
  sub_100046184(&unk_1002167A0, &unk_10019AD50);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v9)
    {
      goto LABEL_12;
    }

    v5 = v8;
  }

  if (v4)
  {
    *(*(*v3 + 56) + 4 * v5) = a1;
    sub_100007CB4();
  }

  else
  {
    v10 = sub_100011B3C();
    sub_100140C08(v10, v11, v12, a1, v13);
    sub_100007CB4();
  }
}

void sub_100135D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000039C8(a1, a2, a3);
  sub_100005F80();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100006700();
  sub_100046184(&qword_10021DA70, &qword_1001A27B0);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v9)
    {
      goto LABEL_12;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    sub_100007CB4();
  }

  else
  {
    v10 = sub_100011B3C();
    sub_1001410B4(v10, v11, v12, v3, v13);
    sub_100007CB4();
  }
}

_BYTE *storeEnumTagSinglePayload for SQLiteMessageTypeRegistry.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100135F34()
{
  result = qword_10021DA30;
  if (!qword_10021DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DA30);
  }

  return result;
}

uint64_t sub_100135FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10000DF74();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1000086B4(v14, v12, v10);
  sub_100005F80();
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  sub_100046184(v7, v9);
  if (!sub_100008B4C())
  {
    goto LABEL_5;
  }

  v21 = sub_100005B74(v13, v11);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v21;
LABEL_5:
  v23 = *v8;
  if (v20)
  {
    *(*(v23 + 56) + 8 * v19) = v15;
    sub_10000AAF4();
  }

  else
  {
    a7(v19, v13, v11, v15, v23);
    sub_10000AAF4();
  }
}

uint64_t sub_1001360EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  sub_100005B74(a4, a5);
  sub_100005F80();
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  sub_100046184(&qword_10021DA50, &qword_1001A2B50);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a6 & 1, v14))
  {
    goto LABEL_5;
  }

  v20 = sub_100005B74(a4, a5);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v20;
LABEL_5:
  v22 = *v7;
  if (v19)
  {
    v23 = (v22[7] + 24 * v18);
    *v23 = a1;
    v23[1] = a2;
    v23[2] = a3;
  }

  else
  {
    sub_1001410E0(v18, a4, a5, a1, a2, a3, v22);
  }
}

uint64_t sub_1001362D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10000DF74();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1000086B4(v15, v13, v11);
  sub_100005F80();
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  sub_100046184(v8, v10);
  if (sub_100008B4C())
  {
    v22 = sub_100005B74(v14, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      v20 = v22;
      goto LABEL_5;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  v24 = *v9;
  if (v21)
  {
    sub_100007378((*(v24 + 56) + 40 * v20));
    sub_10000AAF4();

    __asm { BRAA            X2, X16 }
  }

  a8(v20, v14, v12, v16, v24);
  sub_10000AAF4();
}

uint64_t sub_1001363FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000086B4(a1, a2, a3);
  sub_100005F80();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  sub_100046184(&qword_10021CC80, &qword_1001A1720);
  if (!sub_10000433C())
  {
    goto LABEL_5;
  }

  v12 = sub_100005B74(a2, a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    v15 = *(v14 + 56) + 40 * v10;
    *(v15 + 32) = *(a1 + 32);
    v16 = *(a1 + 16);
    *v15 = *a1;
    *(v15 + 16) = v16;
    sub_100007CB4();
  }

  else
  {
    sub_100141198(v10, a2, a3, a1, v14);
    sub_100007CB4();
  }
}

uint64_t sub_10013651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000039C8(a1, a2, a3);
  sub_100005F80();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_100006700();
  sub_100046184(&qword_10021DA48, &qword_1001A2790);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    sub_100007CB4();
  }

  else
  {
    v12 = sub_100011B3C();
    sub_1001410B4(v12, v13, v14, v3, v15);
    sub_100007CB4();
  }
}

uint64_t sub_1001365F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000039C8(a1, a2, a3);
  sub_100005F80();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_100006700();
  sub_100046184(&qword_10021DA68, &qword_1001A27A8);
  if (sub_10000433C())
  {
    sub_100007C98();
    sub_100006AD8();
    if (!v9)
    {
      goto LABEL_14;
    }

    v6 = v8;
  }

  if (v5)
  {
    *(*(*v4 + 56) + 8 * v6) = v3;
    sub_100007CB4();
  }

  else
  {
    v12 = sub_100011B3C();
    sub_1001410B4(v12, v13, v14, v3, v15);
    sub_100007CB4();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> POneOfFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(arguments._rawValue + 4);
  if (SQLiteArgument.isNull.getter(v5))
  {
    SQLiteContext.setNull()();
    return;
  }

  sub_10011DE10();
  if (!v2)
  {
    SQLiteBaseSchematizer.getSQLiteBridge()();
    v7 = v6;

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24))(v5, ObjectType, v7);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    swift_unknownObjectRelease();
    if (v3 != 1)
    {
      v16 = SQLiteArgument.getStringNonNull()();
      if (v17)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_100131554(v16._countAndFlagsBits, v16._object, with.context._rawValue, v9, v11, v13, v15);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_100136860(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, sqlite3_context *a5)
{
  SQLiteContext.setData(_:destructor:)(a1, a2, 1, a5);
  v8._countAndFlagsBits = a3;
  v8._object = a4;
  v9 = SQLiteMessageTypeRegistry.id(forSchemaName:)(v8);
  if (v10)
  {
    v12 = v10;
    v11 = sub_100046184(&qword_100216900, &unk_10019AE20);
    SQLiteContext.setError<A>(_:message:code:)(&v12, 0xD000000000000014, 0x80000001001B2680, -1, a5, v11);
  }

  else
  {

    SQLiteContext.setSubtype(_:)(v9);
  }
}

uint64_t sub_100136934(sqlite3_value *a1)
{
  v4 = SQLiteArgument.subtype.getter(a1);
  sub_100135A54(v4, v12);
  if (!v2)
  {
    v5 = SQLiteArgument.getUnsafeData()(a1);
    if (v6 >> 60 == 15)
    {
      sub_10011DC44();
      swift_allocError();
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 6;
      *(v7 + 24) = 4;
      swift_willThrow();
      sub_100007378(v12);
    }

    else
    {
      v9 = v5;
      v10 = v6;
      type metadata accessor for ProtobufPayload();
      v11 = swift_allocObject();
      sub_10011FEDC(v12, v11 + 16);
      *(v11 + 56) = v9;
      *(v11 + 64) = v10;
      sub_10012A1B8();
    }
  }

  return v1;
}

uint64_t sub_100136A64(sqlite3_value *a1)
{
  result = sub_100136934(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t Dictionary<>.registerAll(on:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = a2 + 64;
  sub_1000062E8();
  v8 = v7 >> 6;
  v20 = v9;

  v11 = 0;
  if (v3)
  {
    while (1)
    {
      v22 = v4;
      v12 = v11;
LABEL_7:
      v13 = (v12 << 10) | (16 * __clz(__rbit64(v3)));
      v14 = (*(v20 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v20 + 56) + v13);
      v18 = *v17;
      v19 = *(v17[1] + 8);
      v21 = *(*a1 + 152);
      swift_unknownObjectRetain_n();

      v21(v18, v19, v15, v16);
      v4 = v22;
      if (v22)
      {
        break;
      }

      v3 &= v3 - 1;

      result = swift_unknownObjectRelease_n();
      v11 = v12;
      if (!v3)
      {
        goto LABEL_3;
      }
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
      }

      v3 = *(v6 + 8 * v12);
      ++v11;
      if (v3)
      {
        v22 = v4;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Dictionary<>.unregisterAll(from:)(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  sub_1000062E8();
  v5 = v4 >> 6;

  v7 = 0;
  if (v2)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v5)
    {
      break;
    }

    v2 = *(v3 + 8 * v8);
    ++v7;
    if (v2)
    {
      v7 = v8;
      do
      {
LABEL_6:
        v9 = *(*(a2 + 56) + ((v7 << 10) | (16 * __clz(__rbit64(v2)))) + 8);
        ObjectType = swift_getObjectType();
        v11 = *(v9 + 32);
        swift_unknownObjectRetain();
        v11(a1, ObjectType, v9);
        v2 &= v2 - 1;
        result = swift_unknownObjectRelease();
      }

      while (v2);
    }
  }
}

uint64_t sub_100136D24()
{
  if ([v0 isAtEnd])
  {
    return 0;
  }

  v2 = [v0 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  NSScanner.currentIndex.getter();
  v1 = String.subscript.getter();

  return v1;
}

uint64_t sub_100136DBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_100136D24();
  v7 = v6;
  if (v6)
  {
    if (v5 == a1 && v6 == a2)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    v10 = [v2 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    NSScanner.currentIndex.getter();
    v7 = 1;
    String.index(_:offsetBy:)();

    NSScanner.currentIndex.setter();
  }

  return v7;
}

uint64_t sub_100136E94(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_26:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v21 = a4 & 0xFFFFFFFFFFFFFFLL;
  v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = v10;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v11 = _StringObject.sharedUTF8.getter();
      }

      v12 = (v11 + v9);
      v13 = *(v11 + v9);
      v14 = *(v11 + v9);
      if (v13 < 0)
      {
        switch(__clz(v14 ^ 0xFF))
        {
          case 0x1Au:
            goto LABEL_20;
          case 0x1Bu:
            goto LABEL_21;
          case 0x1Cu:
            goto LABEL_22;
          default:
            break;
        }
      }

LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v20[0] = a3;
    v20[1] = v21;
    v12 = v20 + v9;
    v14 = *(v20 + v9);
    if ((*(v20 + v9) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    switch(__clz(v14 ^ 0xFF))
    {
      case 0x1Au:
LABEL_20:
        v14 = v12[1] & 0x3F | ((v14 & 0x1F) << 6);
        v16 = 2;
        break;
      case 0x1Bu:
LABEL_21:
        v14 = ((v14 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
        v16 = 3;
        break;
      case 0x1Cu:
LABEL_22:
        v14 = ((v14 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
        v16 = 4;
        break;
      default:
        goto LABEL_14;
    }

LABEL_15:
    LODWORD(v20[0]) = v14;
    v17 = a1(v20);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_26;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t static PropertyPathUtil.parse(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v75 = type metadata accessor for NSScanner.NumberRepresentation();
  sub_100003650();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100004370();
  v74 = v9;
  v10 = type metadata accessor for CharacterSet();
  sub_100003650();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100004370();
  v78 = v14;
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    v42 = sub_100137E0C();
    sub_100004248(&type metadata for PropertyPathUtil.Error, v42);
    *v43 = 0u;
    *(v43 + 16) = 0u;
    *(v43 + 32) = 0;
    *(v43 + 40) = 6;
    swift_willThrow();
    return a1;
  }

  sub_100137724();

  v68 = a1;
  v69 = a2;
  v16 = sub_1001376B0();
  [v16 setCharactersToBeSkipped:0];
  v77 = (v12 + 8);
  v72 = (v7 + 8);
  v73 = (v7 + 104);
  a1 = _swiftEmptyArrayStorage;
  v71 = enum case for NSScanner.NumberRepresentation.decimal(_:);
  while (1)
  {
    v80 = a1;
    a1 = NSScanner.currentIndex.getter();
    if (qword_10021BFC8 != -1)
    {
      swift_once();
    }

    sub_10000964C(v10, qword_10021DCF8);
    v17 = NSScanner.scanCharacters(from:)();
    if (!v18)
    {

      v44 = sub_100137E0C();
      v45 = sub_100004248(&type metadata for PropertyPathUtil.Error, v44);
      sub_10000ACB4(v45, v46);
      *(v47 + 16) = a1;
      *(v47 + 40) = 0;
      goto LABEL_31;
    }

    v19 = v17;
    v20 = v18;
    v21 = String.subscript.getter();
    v23 = v22;
    if (qword_10021BFC0 != -1)
    {
      swift_once();
    }

    v24 = sub_10000964C(v10, qword_10021DCE0);
    __chkstk_darwin(v24);
    *(&v68 - 2) = v25;
    v26 = sub_100136E94(sub_100137E60, (&v68 - 4), v21, v23);

    if ((v26 & 1) == 0)
    {

      v48 = sub_100137E0C();
      sub_100004248(&type metadata for PropertyPathUtil.Error, v48);
      *v49 = v19;
      *(v49 + 8) = v20;
      v50 = v69;
      *(v49 + 16) = v68;
      *(v49 + 24) = v50;
      *(v49 + 32) = a1;
      v51 = 1;
      goto LABEL_30;
    }

    v79 = sub_100136DBC(91, 0xE100000000000000);
    if ((v79 & 1) == 0)
    {
      v32 = 0;
      a1 = v80;
      goto LABEL_17;
    }

    v76 = v3;
    v27 = v78;
    static CharacterSet.whitespaces.getter();
    NSScanner.scanCharacters(from:)();

    v28 = *v77;
    v29 = v27;
    v30 = v10;
    (*v77)(v29, v10);
    v70 = NSScanner.currentIndex.getter();
    a1 = v74;
    v31 = v75;
    (*v73)(v74, v71, v75);
    v32 = NSScanner.scanInt(representation:)();
    v34 = v33;
    (*v72)(a1, v31);
    if (v34)
    {

      v55 = sub_100137E0C();
      v56 = sub_100004248(&type metadata for PropertyPathUtil.Error, v55);
      sub_10000ACB4(v56, v57);
      *(v49 + 16) = v70;
      v51 = 2;
      goto LABEL_30;
    }

    if (v32 < 0)
    {

      v58 = sub_100137E0C();
      sub_100004248(&type metadata for PropertyPathUtil.Error, v58);
      v59 = v68;
      v60 = v69;
      *v49 = v32;
      *(v49 + 8) = v59;
      v61 = v70;
      *(v49 + 16) = v60;
      *(v49 + 24) = v61;
      *(v49 + 32) = 0;
      v51 = 3;
LABEL_30:
      *(v49 + 40) = v51;
LABEL_31:
      swift_willThrow();

      goto LABEL_33;
    }

    v35 = v78;
    static CharacterSet.whitespaces.getter();
    NSScanner.scanCharacters(from:)();

    v10 = v30;
    v28(v35, v30);
    v36 = sub_100136DBC(93, 0xE100000000000000);
    v3 = v76;
    a1 = v80;
    if ((v36 & 1) == 0)
    {
      break;
    }

LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001235CC();
      a1 = v40;
    }

    v37 = *(a1 + 16);
    if (v37 >= *(a1 + 24) >> 1)
    {
      sub_1001235CC();
      a1 = v41;
    }

    v38 = v79 ^ 1;
    *(a1 + 16) = v37 + 1;
    v39 = a1 + 32 * v37;
    *(v39 + 32) = v19;
    *(v39 + 40) = v20;
    *(v39 + 48) = v32;
    *(v39 + 56) = v38 & 1;
    if ([v16 isAtEnd])
    {
      goto LABEL_33;
    }

    if ((sub_100136DBC(46, 0xE100000000000000) & 1) == 0)
    {

      NSScanner.currentIndex.getter();
      v52 = sub_100137E0C();
      v53 = sub_100004248(&type metadata for PropertyPathUtil.Error, v52);
      sub_1000086D0(v53, v54);
      v66 = 5;
      goto LABEL_32;
    }
  }

  NSScanner.currentIndex.getter();
  v62 = sub_100137E0C();
  v63 = sub_100004248(&type metadata for PropertyPathUtil.Error, v62);
  sub_1000086D0(v63, v64);
  v66 = 4;
LABEL_32:
  *(v65 + 40) = v66;
  swift_willThrow();
LABEL_33:

  return a1;
}

id sub_1001376B0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithString:v1];

  return v2;
}

unint64_t sub_100137724()
{
  result = qword_10021DD10;
  if (!qword_10021DD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10021DD10);
  }

  return result;
}

ValueMetadata **PropertyPathUtil.Error.errorDescription.getter()
{
  v1 = v0;
  sub_100046184(&qword_10021DD20, &qword_1001A2810);
  v26 = String.init<A>(describing:)();
  v27 = v2;
  v3._countAndFlagsBits = 0x203A726F72724520;
  v4 = &v26;
  v3._object = 0xE800000000000000;
  String.append(_:)(v3);
  v6 = v26;
  v5 = v27;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  switch(*(v1 + 40))
  {
    case 1:
      v18 = *(v1 + 32);
      sub_100004598();
      _StringGuts.grow(_:)(62);
      v19._countAndFlagsBits = 0xD00000000000003BLL;
      v19._object = 0x80000001001B2B90;
      String.append(_:)(v19);
      v20._countAndFlagsBits = v8;
      v20._object = v7;
      String.append(_:)(v20);
      v4 = &v26;
      v21._countAndFlagsBits = 41;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      sub_100137A24(v26, v27, v9, v10, v18, v6, v5);
      sub_100006310();

      goto LABEL_10;
    case 2:
      v13 = 0x20676E697373694DLL;
      v15 = 0xED00007865646E69;
      goto LABEL_9;
    case 3:
      sub_100004598();
      _StringGuts.grow(_:)(35);

      v26 = 0xD000000000000020;
      v27 = 0x80000001001B2B40;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v4 = &v26;
      v17._countAndFlagsBits = 41;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      sub_100137A24(v26, v27, v7, v9, v10, v6, v5);
      sub_100006310();

      goto LABEL_10;
    case 4:
      sub_100003D24();
      v13 = v14 | 6;
      goto LABEL_4;
    case 5:
      v15 = 0x80000001001B2B00;
      v13 = 0xD000000000000011;
      goto LABEL_9;
    case 6:
      sub_100004598();
      _StringGuts.grow(_:)(30);

      v26 = v6;
      v27 = v5;
      sub_100003D24();
      v24._countAndFlagsBits = v23 + 11;
      v24._object = (v25 | 0x8000000000000000);
      String.append(_:)(v24);
      return v26;
    default:
      sub_100003D24();
      v13 = v12 | 4;
LABEL_4:
      v15 = (v11 | 0x8000000000000000);
LABEL_9:
      sub_100137A24(v13, v15, v8, v7, v9, v6, v5);
      sub_100006310();
LABEL_10:

      return v4;
  }
}

uint64_t sub_100137A24(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = String.distance(from:to:)();
  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  v20 = String.init(repeating:count:)(v13, v12);

  v14._countAndFlagsBits = 0x6572654820A987E2;
  v14._object = 0xA800000000000000;
  String.append(_:)(v14);

  v15._countAndFlagsBits = a1;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  String.append(_:)(v20);

  v17._countAndFlagsBits = 10;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = a3;
  v18._object = a4;
  String.append(_:)(v18);
  return a6;
}

uint64_t sub_100137B4C()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_100057FF8(v7, qword_10021DCE0);
  sub_10000964C(v0, qword_10021DCE0);
  static CharacterSet.letters.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

uint64_t sub_100137C84()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  sub_100057FF8(v7, qword_10021DCF8);
  sub_10000964C(v0, qword_10021DCF8);
  if (qword_10021BFC0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000964C(v0, qword_10021DCE0);
  (*(v1 + 16))(v6, v8, v0);
  static CharacterSet.decimalDigits.getter();
  CharacterSet.union(_:)();
  v9 = *(v1 + 8);
  v9(v3, v0);
  return (v9)(v6, v0);
}

unint64_t sub_100137E0C()
{
  result = qword_10021DD18;
  if (!qword_10021DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021DD18);
  }

  return result;
}

__n128 sub_100137E84(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100137E98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_100137ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100137F34(uint64_t a1)
{
  if ((*(a1 + 40) & 7u) <= 5)
  {
    return *(a1 + 40) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_100137F50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 41))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 6)
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

uint64_t sub_100137F90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_100137FE0(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 6;
  }

  *(result + 40) = a2;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PGetTimeWindowStartFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = sub_10011DE10();
  if (!v2)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(v4 + 32);

    SQLiteContext.setDouble(_:)(v5);
  }
}

uint64_t SQLiteSchematizerTableFunction.schematizer.setter(uint64_t a1)
{
  sub_100006320(a1);
  swift_weakAssign();
}

void (*SQLiteSchematizerTableFunction.schematizer.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = sub_100138220(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_1001381A0;
}

void sub_1001381A0(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void *sub_100138220(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SQLiteSchematizerTableFunction.init(_:)(uint64_t a1)
{
  v1 = swift_weakInit();
  sub_100006320(v1);
  swift_weakAssign();
  v2 = SQLiteVTab.init(style:)(2);

  return v2;
}

uint64_t SQLiteSchematizerTableFunction.deinit()
{
  v0 = SQLiteVTab.deinit();
  swift_weakDestroy();
  return v0;
}

uint64_t SQLiteSchematizerTableFunction.__deallocating_deinit()
{
  v0 = SQLiteSchematizerTableFunction.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t SQLiteSchematizerFunction.init(_:)(uint64_t a1)
{
  swift_weakInit();
  sub_100006340();
  swift_beginAccess();
  swift_weakAssign();

  return SQLiteBaseFunction.init()();
}

void SQLiteSchematizerFunction.hookPerform(_:)(uint64_t a1, uint64_t a2)
{
  v6 = objc_autoreleasePoolPush();
  v7 = sub_10011DE10();
  if (!v3)
  {
    (*(*v7 + 336))(v2, a1, a2);
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t SQLiteSchematizerFunction.schematizer.getter()
{
  sub_100006340();
  swift_beginAccess();
  return swift_weakLoadStrong();
}

uint64_t SQLiteSchematizerFunction.schematizer.setter(uint64_t a1)
{
  sub_100006340();
  swift_beginAccess();
  swift_weakAssign();
}

void (*SQLiteSchematizerFunction.schematizer.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100138220(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_100138640;
}

void sub_100138640(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t ProtoSchemaStore.__allocating_init()()
{
  sub_10000ACC8();
  v0 = swift_allocObject();
  ProtoSchemaStore.init()();
  return v0;
}

uint64_t ProtoSchemaStore.__allocating_init(withModel:)(uint64_t a1, uint64_t a2)
{
  sub_10000ACC8();
  v4 = swift_allocObject();
  ProtoSchemaStore.init(withModel:)(a1, a2);
  return v4;
}

uint64_t ProtoSchemaStore.__allocating_init(withURL:)(uint64_t a1)
{
  type metadata accessor for JSONDecoder();
  v3 = swift_allocObject();
  JSONDecoder.init()();
  v4 = Data.init(contentsOf:options:)();
  if (!v1)
  {
    v7 = v4;
    v8 = v5;
    sub_100138AB8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100014A40(v7, v8);
    type metadata accessor for ProtoSchemaStore();
    v3 = swift_allocObject();
    ProtoSchemaStore.init(withModel:)(v10, v11);
  }

  type metadata accessor for URL();
  sub_10000374C();
  (*(v6 + 8))(a1);

  return v3;
}

void *ProtoSchemaStore.init()()
{
  v1 = type metadata accessor for ProtoEnum();
  v0[4] = sub_10000F6A4(v1, v2, v1);
  v3 = type metadata accessor for ProtoMessageSchema();
  v5 = sub_10000F6A4(v3, v4, v3);
  v0[5] = v5;
  v0[2] = _swiftEmptySetSingleton;
  v0[3] = _swiftEmptySetSingleton;
  v7 = sub_10000F6A4(v5, v6, &type metadata for EnumModel);
  v0[6] = v7;
  v0[7] = sub_10000F6A4(v7, v8, &type metadata for MessageSchemaModel);
  return v0;
}

void *ProtoSchemaStore.init(withModel:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProtoEnum();
  v2[4] = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for ProtoMessageSchema();
  v2[5] = Dictionary.init(dictionaryLiteral:)();

  sub_100138B34(v5);
  v2[2] = v6;

  sub_100138B34(v7);
  v2[3] = v8;
  v2[6] = a2;
  v2[7] = a1;
  return v2;
}

unint64_t sub_100138AB8()
{
  result = qword_10021E018;
  if (!qword_10021E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E018);
  }

  return result;
}

void sub_100138B34(uint64_t a1)
{
  v2 = 0;
  v13[2] = Set.init(minimumCapacity:)();
  sub_100004154();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    do
    {
      v8 = v2;
LABEL_7:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1000936D4(v13, v11, v12);
    }

    while (v5);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void ProtoSchemaStore.enum(withName:)()
{
  sub_10000DF88();
  sub_100004384();
  swift_beginAccess();
  v6 = *(v1 + 32);
  if (*(v6 + 16))
  {

    v7 = sub_100008380();
    v9 = sub_100005B74(v7, v8);
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v9);

      v2[3] = type metadata accessor for ProtoEnum();
      v2[4] = &off_1001FF000;
      *v2 = v11;
      return;
    }
  }

  sub_100004384();
  swift_beginAccess();

  sub_100008380();
  v12 = sub_1001442CC();

  if (v12)
  {
    v13 = type metadata accessor for ProtoEnum();
    swift_allocObject();

    v14 = sub_100008380();
    sub_10011FEE0(v14, v15, v12);
    if (!v0)
    {
      v18 = v16;
      sub_1000041DC(v5 + 32, v17);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v5 + 32);
      sub_100135FB0(v18, v4, v3, isUniquelyReferenced_nonNull_native);
      *(v5 + 32) = v27;
      swift_endAccess();
      sub_1000041DC(v5 + 48, v20);
      v21 = sub_100008380();
      sub_100139B98(v21, v22, v23, v24, v25);
      swift_endAccess();

      v2[3] = v13;
      v2[4] = &off_1001FF000;
      *v2 = v18;
    }
  }

  else
  {
    sub_10011DDBC();
    swift_allocError();
    *v26 = v4;
    *(v26 + 8) = v3;
    *(v26 + 41) = 2;
    swift_willThrow();
  }
}

unint64_t ProtoSchemaStore.description.getter()
{
  _StringGuts.grow(_:)(28);

  sub_100004384();
  swift_beginAccess();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000001ALL;
}

Schematizer::SchemaStoreModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtoSchemaStore.asModel()()
{
  v0 = swift_unknownObjectRetain();
  v1 = SchemaStoreModel.init(_:)(v0, &protocol witness table for ProtoSchemaStore);
  result.enums._rawValue = v2;
  result.schemas._rawValue = v1;
  return result;
}

Schematizer::SchemaStoreModel __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtoSchemaStore.engagedElementsModel()()
{

  v1 = sub_100138F34(v0);
  result.enums._rawValue = v2;
  result.schemas._rawValue = v1;
  return result;
}

uint64_t sub_100138F34(void *a1)
{
  v2 = v1;
  sub_100004384();
  swift_beginAccess();
  v4 = a1[5];

  v89 = Dictionary.init(dictionaryLiteral:)();
  sub_100004154();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v7)
    {
      break;
    }

LABEL_6:
    v12 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
    v14 = *v12;
    v13 = v12[1];

    ProtoSchemaStore.messageSchema(withName:)();
    if (v1)
    {

      goto LABEL_48;
    }

    v7 &= v7 - 1;
    sub_100046184(&qword_10021C7C8, &qword_1001A1330);
    type metadata accessor for ProtoMessageSchema();
    if (swift_dynamicCast())
    {

      v16 = sub_1001299EC(v15);
      v93 = v17;
      v90 = v16;
      v92 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94[0] = v89;
      sub_1001360EC(v90, v92, v93, v14, v13, isUniquelyReferenced_nonNull_native);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      sub_100004384();
      swift_beginAccess();
      v20 = a1[4];

      v91 = Dictionary.init(dictionaryLiteral:)();
      v21 = v20 + 64;
      sub_100004154();
      v24 = v23 & v22;
      v26 = (v25 + 63) >> 6;

      v27 = 0;
      v28 = v2;
      v88 = v20;
      v80 = v26;
      v81 = v20 + 64;
      if (v24)
      {
        goto LABEL_15;
      }

LABEL_11:
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_54;
        }

        if (v29 >= v26)
        {

          return v89;
        }

        v24 = *(v21 + 8 * v29);
        ++v27;
        if (v24)
        {
          v27 = v29;
          while (1)
          {
LABEL_15:
            v82 = v24;
            v83 = v27;
            v30 = (*(v20 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v24)))));
            v31 = *v30;
            v32 = v30[1];

            v87 = v31;
            ProtoSchemaStore.enum(withName:)();
            if (v28)
            {
            }

            v33 = Dictionary.init(dictionaryLiteral:)();
            v34 = v95;
            v35 = v96;
            sub_100007534(v94, v95);
            v36 = (*(v35 + 16))(v34, v35);
            v84 = *(v36 + 16);
            if (v84)
            {
              break;
            }

LABEL_35:

            sub_100007378(v94);
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v94[0] = v91;
            v65 = sub_100005B74(v87, v32);
            v67 = *(v91 + 16);
            v68 = (v66 & 1) == 0;
            v69 = v67 + v68;
            if (__OFADD__(v67, v68))
            {
              goto LABEL_56;
            }

            v70 = v65;
            v71 = v66;
            sub_100046184(&qword_10021E190, &qword_1001A2B60);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v64, v69))
            {
              v72 = sub_100005B74(v87, v32);
              v28 = 0;
              if ((v71 & 1) != (v73 & 1))
              {
                goto LABEL_58;
              }

              v70 = v72;
            }

            else
            {
              v28 = 0;
            }

            v74 = v94[0];
            v91 = v94[0];
            if (v71)
            {
              *(*(v94[0] + 56) + 8 * v70) = v33;
            }

            else
            {
              *(v94[0] + 8 * (v70 >> 6) + 64) |= 1 << v70;
              v75 = (v74[6] + 16 * v70);
              *v75 = v87;
              v75[1] = v32;
              *(v74[7] + 8 * v70) = v33;
              v76 = v74[2];
              v61 = __OFADD__(v76, 1);
              v77 = v76 + 1;
              if (v61)
              {
                goto LABEL_57;
              }

              v74[2] = v77;
            }

            v20 = v88;
            v26 = v80;
            v21 = v81;
            v27 = v83;
            v24 = (v82 - 1) & v82;
            if (!v24)
            {
              goto LABEL_11;
            }
          }

          v37 = 0;
          v38 = v36 + 32;
          v86 = v36;
          v79 = v36 + 32;
LABEL_18:
          if (v37 >= *(v36 + 16))
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v39 = (v38 + 8 * v37);
          v41 = *v39;
          v40 = v39[1];
          v85 = v37 + 1;
          while (1)
          {
            if (v41 == v40)
            {
              v42 = 0;
            }

            else
            {
              if (v41 == 0x7FFFFFFF)
              {
                goto LABEL_52;
              }

              v42 = (v41 + 1);
            }

            v43 = v95;
            v44 = v96;
            sub_100007534(v94, v95);
            v45 = (*(v44 + 32))(v41, v43, v44);
            v47 = v46;
            v48 = v40;
            v49 = swift_isUniquelyReferenced_nonNull_native();
            v97 = v33;
            v50 = sub_100005B74(v45, v47);
            v52 = v33[2];
            v53 = (v51 & 1) == 0;
            v54 = v52 + v53;
            if (__OFADD__(v52, v53))
            {
              goto LABEL_51;
            }

            v55 = v50;
            v56 = v51;
            sub_100046184(&unk_1002167A0, &unk_10019AD50);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v49, v54))
            {
              v57 = sub_100005B74(v45, v47);
              if ((v56 & 1) != (v58 & 1))
              {
                goto LABEL_58;
              }

              v55 = v57;
            }

            v40 = v48;
            if (v56)
            {

              v33 = v97;
              *(v97[7] + 4 * v55) = v41;
            }

            else
            {
              v33 = v97;
              v97[(v55 >> 6) + 8] |= 1 << v55;
              v59 = (v33[6] + 16 * v55);
              *v59 = v45;
              v59[1] = v47;
              *(v33[7] + 4 * v55) = v41;
              v60 = v33[2];
              v61 = __OFADD__(v60, 1);
              v62 = v60 + 1;
              if (v61)
              {
                goto LABEL_53;
              }

              v33[2] = v62;
            }

            v63 = v41 == v48;
            v41 = v42;
            if (v63)
            {
              v37 = v85;
              v36 = v86;
              v38 = v79;
              if (v85 != v84)
              {
                goto LABEL_18;
              }

              goto LABEL_35;
            }
          }
        }
      }
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);

LABEL_48:
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtoSchemaStore.merge(with:)(Schematizer::SchemaStoreModel with)
{
  sub_1000041DC(v1 + 48, with.enums._rawValue);

  sub_10013A3C4(v2, sub_10013AB3C, 0, (v1 + 48), sub_10013A6BC);
  swift_endAccess();
  sub_1000041DC(v1 + 56, v3);

  sub_10013A3C4(v4, sub_10013A970, 0, (v1 + 56), sub_10013A448);
  swift_endAccess();
}

uint64_t ProtoSchemaStore.deinit()
{

  return v0;
}

uint64_t ProtoSchemaStore.__deallocating_deinit()
{
  ProtoSchemaStore.deinit();
  v0 = sub_10000ACC8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1001398C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100005B74(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v2;
  v8 = *(*v2 + 24);
  sub_100046184(&qword_10021DA50, &qword_1001A2B50);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 24 * v6);
  _NativeDictionary._delete(at:)();
  *v3 = v11;
  return v9;
}

uint64_t sub_1001399B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100005B74(a1, a2);
  if (v6)
  {
    v7 = result;
    swift_isUniquelyReferenced_nonNull_native();
    *v23 = *v3;
    v8 = sub_100046184(&qword_10021CC80, &qword_1001A1720);
    sub_1000119C0(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23[0]);

    v16 = (*(*v24 + 56) + 40 * v7);
    v17 = *v16;
    v18 = *(v16 + 1);
    v19 = *(v16 + 2);
    v20 = *(v16 + 3);
    v21 = v16[32];
    result = _NativeDictionary._delete(at:)();
    *v3 = *v24;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 1;
  }

  *a3 = v17;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v21;
  return result;
}

double sub_100139ABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  sub_100005B74(a1, a2);
  if (v7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000081B0();
    v8 = sub_100046184(&qword_10021DA40, &unk_1001A2780);
    v16 = sub_1000119C0(v8, v9, v10, v11, v12, v13, v14, v15, v25, v27);
    sub_100007E00(v16, v17, v18, v19, v20, v21, v22, v23, v26, v28);
    sub_100008B6C();
    sub_100046184(&qword_10021CC68, &qword_1001A1700);
    _NativeDictionary._delete(at:)();
    *v4 = v6;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100139B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = sub_100005B74(a1, a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v5;
  v11 = *(*v5 + 24);
  v12 = sub_100008380();
  sub_100046184(v12, v13);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);

  v14 = *(*(v16 + 56) + 8 * v9);
  _NativeDictionary._delete(at:)();
  *v6 = v16;
  return v14;
}

double sub_100139C74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  sub_100005B74(a1, a2);
  if (v7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000081B0();
    v8 = sub_100046184(&qword_10021DA38, &unk_1001A2B40);
    v16 = sub_1000119C0(v8, v9, v10, v11, v12, v13, v14, v15, v25, v27);
    sub_100007E00(v16, v17, v18, v19, v20, v21, v22, v23, v26, v28);
    sub_100008B6C();
    sub_100046184(&qword_10021CC88, &qword_1001A1728);
    _NativeDictionary._delete(at:)();
    *v4 = v6;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

Swift::Int sub_100139D34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100046184(&qword_10021E188, &qword_1001A2B58);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v36 = v2;
  v37 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
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
        goto LABEL_34;
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
        v39 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_32;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1000934E4(0, (v35 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v39 = (v12 - 1) & v12;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = v19[1];
    v40 = *v19;
    v21 = (*(v5 + 56) + 24 * v18);
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[2];
    if ((v38 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v7 + 48) + 16 * v28);
    *v33 = v40;
    v33[1] = v20;
    v34 = (*(v7 + 56) + 24 * v28);
    *v34 = v22;
    v34[1] = v23;
    v34[2] = v24;
    ++*(v7 + 16);
    v5 = v37;
    v12 = v39;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_10013A018(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100046184(&qword_10021E198, &qword_1001A2B68);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
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
        goto LABEL_34;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1000934E4(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_10013A2BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10013A308(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a4;
  a1[1] = a5;
  a1[2] = a6;

  return a2;
}

uint64_t sub_10013A378(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_10013A3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a4;
  result = a5(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v12);
  *a4 = v12;
  return result;
}

uint64_t sub_10013A448(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v40 = a5;
  sub_10013A9C0(a1, a2, a3, &v34);
  v33 = v34;

  while (1)
  {
    sub_10013A9FC(&v35);
    v6 = v36;
    if (!v36)
    {
      sub_100019180(v33);
    }

    v7 = v35;
    v8 = v37;
    v9 = v38;
    v10 = v39;
    v11 = *v40;
    v13 = sub_100005B74(v35, v36);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      break;
    }

    v17 = v12;
    if (v11[3] >= v16)
    {
      if ((a4 & 1) == 0)
      {
        sub_100046184(&qword_10021DA50, &qword_1001A2B50);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      sub_100139D34(v16, a4 & 1);
      v18 = sub_100005B74(v7, v6);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_16;
      }

      v13 = v18;
    }

    v20 = *v40;
    if (v17)
    {
      v21 = 3 * v13;
      v22 = (v20[7] + 8 * v21);
      v23 = v22[1];
      v32 = *v22;
      v24 = v22[2];

      v25 = (v20[7] + 8 * v21);
      *v25 = v32;
      v25[1] = v23;
      v25[2] = v24;

      a4 = 1;
    }

    else
    {
      v20[(v13 >> 6) + 8] |= 1 << v13;
      v26 = (v20[6] + 16 * v13);
      *v26 = v7;
      v26[1] = v6;
      v27 = (v20[7] + 24 * v13);
      *v27 = v8;
      v27[1] = v9;
      v27[2] = v10;
      v28 = v20[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_15;
      }

      v20[2] = v30;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10013A6BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  sub_10013A9C0(a1, a2, a3, v43);
  v6 = v43[1];
  v7 = v43[3];
  v8 = v43[4];
  v37 = v43[5];
  v38 = v43[0];
  v9 = (v43[2] + 64) >> 6;

  v35 = v9;
  v36 = v6;
  if (v8)
  {
    while (1)
    {
      v10 = v7;
LABEL_7:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v38 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v38 + 56) + 8 * v12);
      v42[0] = *v13;
      v42[1] = v14;
      v42[2] = v15;

      v37(&v39, v42);

      v17 = v39;
      v16 = v40;
      v18 = v41;
      v19 = *v44;
      v21 = sub_100005B74(v39, v40);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((a4 & 1) == 0)
        {
          sub_100046184(&qword_10021E190, &qword_1001A2B60);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        sub_10013A018(v24, a4 & 1);
        v26 = sub_100005B74(v17, v16);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_23;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v44;
      if (v25)
      {
        v29 = *(v28[7] + 8 * v21);

        *(v28[7] + 8 * v21) = v29;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v30 = (v28[6] + 16 * v21);
        *v30 = v17;
        v30[1] = v16;
        *(v28[7] + 8 * v21) = v18;
        v31 = v28[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_22;
        }

        v28[2] = v33;
      }

      a4 = 1;
      v7 = v10;
      v9 = v35;
      v6 = v36;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_100019180(v38);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 sub_10013A970@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = sub_10013A308(&v7, *a1, a1[1], a1[2], a1[3], a1[4]);
  v4 = v8;
  result = v7;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v6;
  a2[1] = result;
  a2[2].n128_u64[0] = v4;
  return result;
}

uint64_t sub_10013A9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_10013A9FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[3];
  v5 = v1[4];
  if (v5)
  {
    v6 = v1[3];
LABEL_6:
    v7 = __clz(__rbit64(v5)) | (v6 << 6);
    v8 = (*(v3 + 48) + 16 * v7);
    v9 = *v8;
    v10 = v8[1];
    v11 = (*(v3 + 56) + 24 * v7);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v1[3] = v6;
    v1[4] = (v5 - 1) & v5;
    v15 = v1[5];
    v23[0] = v9;
    v23[1] = v10;
    v23[2] = v12;
    v23[3] = v13;
    v23[4] = v14;

    v15(&v20, v23);

    v17 = v20;
    v18 = v21;
    v19 = v22;
LABEL_7:
    *a1 = v17;
    *(a1 + 8) = v18;
    *(a1 + 24) = v19;
  }

  else
  {
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v6 >= ((v1[2] + 64) >> 6))
      {
        v17 = 0;
        v1[3] = v4;
        v1[4] = 0;
        v18 = 0uLL;
        v19 = 0uLL;
        goto LABEL_7;
      }

      v5 = *(v1[1] + 8 * v6);
      ++v4;
      if (v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10013AB3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10013A378(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

id static RawPayload.event(with:dataVersion:)()
{
  v2 = objc_allocWithZone(sub_10000634C());
  sub_100014924(v1, v0);
  return RawPayload.init(with:)();
}

void *RawPayload.schemitized(with:)(uint64_t a1)
{
  v3 = type metadata accessor for ProtobufPayload();
  sub_1000092B4(a1, v16);
  v4 = *(v1 + OBJC_IVAR___SRRawPayload_data);
  v5 = *(v1 + OBJC_IVAR___SRRawPayload_data + 8);
  v6 = v17;
  v7 = v18;
  v8 = sub_100026EEC(v16, v17);
  v9 = __chkstk_darwin(v8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  sub_100014924(v4, v5);
  v13 = sub_100026F3C(v11, v4, v5, v3, v6, v7);
  sub_100007378(v16);
  sub_10012A1B8();
  return v13;
}

uint64_t sub_10013AE04()
{
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10013AE3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 40);
  swift_unknownObjectRetain();
  v7(a1, a2, ObjectType, v5);
  return swift_unknownObjectRelease();
}

void sub_10013AEE0(uint64_t a1, uint64_t a2, sqlite3_context *a3)
{
  v6 = sqlite3_malloc(8);
  if (v6)
  {
    v7 = v6;
    type metadata accessor for SQLiteMessagePointerInBlobBridge.Wrapper();
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *v7 = v8;
    swift_unknownObjectRetain();

    SQLiteContext.setBuffer(_:ofSize:destructor:)(v7, 8, sub_10013AFB8, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_10013AF74(void *a1)
{
  if (a1)
  {

    sqlite3_free(a1);
  }
}

uint64_t *sub_10013AFBC(sqlite3_value *a1)
{
  result = SQLiteArgument.withUnsafeBytes<A>(_:)(sub_10013B1B0, v1, a1);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_10013B014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    swift_getObjectType();
    sub_1001318E4();
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
    a2[3] = v6;
  }

  else
  {
    sub_10011DDBC();
    swift_allocError();
    *v8 = 0xD000000000000031;
    *(v8 + 8) = 0x80000001001B2640;
    *(v8 + 41) = 3;
    return swift_willThrow();
  }
}

uint64_t *sub_10013B184(sqlite3_value *a1)
{
  result = sub_10013AFBC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10013B1CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1000037C8(0x736E6F6974706FLL, 0xE700000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1000037C8(0x69747265706F7270, 0xEA00000000007365) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73664F656E6FLL && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1000037C8(0x73664F656E6FLL, 0xE600000000000000);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_10013B2BC(char a1)
{
  if (!a1)
  {
    return 0x736E6F6974706FLL;
  }

  if (a1 == 1)
  {
    return 0x69747265706F7270;
  }

  return 0x73664F656E6FLL;
}

uint64_t sub_10013B31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10013B1CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10013B350(uint64_t a1)
{
  v2 = sub_10013B6F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10013B38C(uint64_t a1)
{
  v2 = sub_10013B6F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MessageSchemaModel.properties.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MessageSchemaModel.oneOfs.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MessageSchemaModel.init(from:)(void *a1)
{
  sub_100046184(&qword_10021E3B0, &unk_1001A2BF0);
  sub_100003650();
  __chkstk_darwin(v3);
  v4 = a1[3];
  sub_100007534(a1, v4);
  sub_10013B6F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_10021CA80, &qword_1001A1658);
    v5 = sub_100125700();
    sub_10000635C(v5);
    v4 = v11;
    if (!v11)
    {
      v4 = Dictionary.init(dictionaryLiteral:)();
    }

    sub_100046184(&qword_10021E3C0, &qword_1001A2C00);
    v6 = sub_10013B748();
    sub_10000635C(v6);
    if (!v11)
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    sub_100046184(&qword_10021E3D8, &qword_1001A2C08);
    v8 = sub_10013B828();
    sub_10000635C(v8);
    if (!v11)
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v9 = sub_1000045A8();
    v10(v9);
    sub_100007378(a1);
  }

  return v4;
}

unint64_t sub_10013B6F4()
{
  result = qword_10021E3B8;
  if (!qword_10021E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3B8);
  }

  return result;
}

unint64_t sub_10013B748()
{
  result = qword_10021E3C8;
  if (!qword_10021E3C8)
  {
    sub_1000461CC(&qword_10021E3C0, &qword_1001A2C00);
    sub_10013B7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3C8);
  }

  return result;
}

unint64_t sub_10013B7D4()
{
  result = qword_10021E3D0;
  if (!qword_10021E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3D0);
  }

  return result;
}

unint64_t sub_10013B828()
{
  result = qword_10021E3E0;
  if (!qword_10021E3E0)
  {
    sub_1000461CC(&qword_10021E3D8, &qword_1001A2C08);
    sub_10013B8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3E0);
  }

  return result;
}

unint64_t sub_10013B8B4()
{
  result = qword_10021E3E8;
  if (!qword_10021E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3E8);
  }

  return result;
}

Schematizer::MessageSchemaModel __swiftcall MessageSchemaModel.init(properties:oneOfs:)(Swift::OpaquePointer_optional properties, Swift::OpaquePointer_optional oneOfs)
{
  v2 = *&properties.is_nil;
  rawValue = properties.value._rawValue;
  v4 = Dictionary.init(dictionaryLiteral:)();
  if (!rawValue)
  {
    rawValue = Dictionary.init(dictionaryLiteral:)();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = Dictionary.init(dictionaryLiteral:)();
    goto LABEL_3;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = v4;
  v6 = rawValue;
  v7 = v2;
  result.oneOfs._rawValue = v7;
  result.properties._rawValue = v6;
  result.options._rawValue = v5;
  return result;
}

uint64_t MessageSchemaModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v8 = sub_100046184(&qword_10021E3F0, &unk_1001A2C10);
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_100007534(a1, a1[3]);
  sub_10013B6F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!*(a2 + 16) || (v20 = a2, v19 = 0, sub_100046184(&qword_10021CA80, &qword_1001A1658), v14 = sub_10013BB98(), sub_100003D34(v14), !v4))
  {
    if (!*(a3 + 16) || (v20 = a3, v19 = 1, sub_100046184(&qword_10021E3C0, &qword_1001A2C00), v15 = sub_10013BC24(), sub_100003D34(v15), !v4))
    {
      if (*(v18 + 16))
      {
        v20 = v18;
        v19 = 2;
        sub_100046184(&qword_10021E3D8, &qword_1001A2C08);
        v16 = sub_10013BD04();
        sub_100003D34(v16);
      }
    }
  }

  return (*(v10 + 8))(v13, v8);
}

unint64_t sub_10013BB98()
{
  result = qword_10021E3F8;
  if (!qword_10021E3F8)
  {
    sub_1000461CC(&qword_10021CA80, &qword_1001A1658);
    sub_10012578C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E3F8);
  }

  return result;
}

unint64_t sub_10013BC24()
{
  result = qword_10021E400;
  if (!qword_10021E400)
  {
    sub_1000461CC(&qword_10021E3C0, &qword_1001A2C00);
    sub_10013BCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E400);
  }

  return result;
}

unint64_t sub_10013BCB0()
{
  result = qword_10021E408;
  if (!qword_10021E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E408);
  }

  return result;
}

unint64_t sub_10013BD04()
{
  result = qword_10021E410;
  if (!qword_10021E410)
  {
    sub_1000461CC(&qword_10021E3D8, &qword_1001A2C08);
    sub_10013BD90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E410);
  }

  return result;
}

unint64_t sub_10013BD90()
{
  result = qword_10021E418;
  if (!qword_10021E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E418);
  }

  return result;
}

void static MessageSchemaModel.__derived_struct_equals(_:_:)(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_10011AF78(a1, a4);
  if (v10)
  {
    sub_10011BE00(a2, a5);
    if (v11)
    {

      sub_10011C218(a3, a6);
    }
  }
}

uint64_t sub_10013BE60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageSchemaModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void MessageSchemaModel.init(_:dontCopy:)(void *a1, char a2)
{
  v3 = v2;
  v4 = a1[3];
  v5 = a1[4];
  sub_100007534(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  sub_100046184(&qword_10021CA98, &unk_1001A1660);
  v49 = static _DictionaryStorage.copy(original:)();
  v50 = v6;
  v7 = 0;
  v47 = v6 + 64;
  sub_100011B4C();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v48 = v13 + 64;
  if (v10)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v53 = (v10 - 1) & v10;
LABEL_8:
      v17 = v14 | (v7 << 6);
      v18 = (*(v50 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      sub_100009848(*(v50 + 56) + 32 * v17, v52);
      sub_100009848(v52, v51);

      sub_100124CE8(v51);
      if (v3)
      {

        sub_100007378(v52);
        sub_100007378(a1);
        return;
      }

      v24 = v21;
      v25 = v22;
      v26 = v23;
      sub_100007378(v52);
      *(v48 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v27 = (v49[6] + 16 * v17);
      *v27 = v19;
      v27[1] = v20;
      v28 = v49[7] + 24 * v17;
      *v28 = v24;
      *(v28 + 8) = v25;
      *(v28 + 16) = v26;
      v29 = v49[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v49[2] = v31;
      v3 = 0;
      v10 = v53;
      if (!v53)
      {
        goto LABEL_3;
      }
    }

LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_3:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = *(v47 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v53 = (v16 - 1) & v16;
        goto LABEL_8;
      }
    }

    if (a2)
    {
      Dictionary.init(dictionaryLiteral:)();
      v32 = a1;
    }

    else
    {
      v32 = a1;
      v33 = a1[3];
      v34 = a1[4];
      sub_100007534(a1, v33);
      v35 = (*(v34 + 24))(v33, v34);
      v36 = Dictionary.init(dictionaryLiteral:)();
      __chkstk_darwin(v36);
      sub_100006CA8();
      sub_10011D9F0(v37, sub_10013C3B4, v38, v35);
      if (v3)
      {

        sub_100007378(a1);
        return;
      }
    }

    v39 = v32[3];
    v40 = v32[4];
    sub_100007534(v32, v39);
    v41 = (*(v40 + 32))(v39, v40);
    v42 = Dictionary.init(dictionaryLiteral:)();
    __chkstk_darwin(v42);
    sub_100006CA8();
    sub_10011D9F0(v43, sub_10013C4AC, v44, v41);

    sub_100007378(v32);
    if (v3)
    {
    }
  }
}

void *sub_10013C2D8(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a3[3];
  v8 = a3[4];
  sub_100007534(a3, v7);
  result = (*(v8 + 48))(v10, v5, v6, v7, v8);
  if (!v3)
  {
    PropertyModel.init(_:)(v10, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *a1;
    result = sub_1001363FC(v11, v5, v6);
    *a1 = v10[0];
  }

  return result;
}

void *sub_10013C3D0(void *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a3[3];
  v8 = a3[4];
  sub_100007534(a3, v7);
  result = (*(v8 + 56))(v11, v5, v6, v7, v8);
  if (!v3)
  {
    v10 = OneOfModel.init(_:)(v11);
    swift_isUniquelyReferenced_nonNull_native();
    v11[0] = *a1;
    result = sub_10013651C(v10, v5, v6);
    *a1 = v11[0];
  }

  return result;
}

Swift::Void __swiftcall MessageSchemaModel.add(property:withName:)(Schematizer::PropertyModel *property, Swift::String withName)
{
  object = withName._object;
  countAndFlagsBits = withName._countAndFlagsBits;
  sub_10013C544(property, v6);
  swift_isUniquelyReferenced_nonNull_native();
  v6[0] = *(v2 + 8);
  sub_1001363FC(property, countAndFlagsBits, object);
  *(v2 + 8) = v6[0];
}

Swift::Bool __swiftcall MessageSchemaModel.hasProperty(_:)(Swift::String a1)
{
  if (*(v1 + 16))
  {
    sub_100005B74(a1._countAndFlagsBits, a1._object);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t MessageSchemaModel.nextAvailableTag.getter(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1;
  sub_100011B4C();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  while (1)
  {
    v11 = v10;
LABEL_6:
    v12 = *(*(result + 56) + 40 * (__clz(__rbit64(v6)) | (v11 << 6)) + 24);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v6 &= v6 - 1;
    if (v14 > v3)
    {
      v3 = v14;
    }

    v10 = v11;
    if (!v6)
    {
LABEL_3:
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v8)
        {

          return v3;
        }

        v6 = *(v2 + 8 * v11);
        ++v10;
        if (v6)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageSchemaModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10013C798()
{
  result = qword_10021E420;
  if (!qword_10021E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E420);
  }

  return result;
}

unint64_t sub_10013C7F0()
{
  result = qword_10021E428;
  if (!qword_10021E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E428);
  }

  return result;
}

unint64_t sub_10013C848()
{
  result = qword_10021E430;
  if (!qword_10021E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E430);
  }

  return result;
}

uint64_t sub_10013C89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v135 = a4;
  *&v184 = a1;
  *(&v184 + 1) = a2;
  *&v179 = 64;
  *(&v179 + 1) = 0xE100000000000000;
  sub_10000527C();
  if (StringProtocol.contains<A>(_:)())
  {
    v9 = sub_10011DDBC();
    sub_100004248(&type metadata for SchemaError, v9);
    return sub_100003D60(v10, 17);
  }

  else
  {
    sub_10011FB8C(a3, &v184);
    *&v179 = a1;
    *(&v179 + 1) = a2;
    v181[0] = 46;
    v181[1] = 0xE100000000000000;
    v12 = StringProtocol.components<A>(separatedBy:)();
    v13 = 0;
    v166 = *(v12 + 16);
    v14 = (v12 + 40);
    v15 = _swiftEmptyArrayStorage;
    v162 = v12;
    while (1)
    {
      if (v166 == v13)
      {

        v121 = v185[0];
        *(v135 + 8) = v184;
        *(v135 + 24) = v121;
        *(v135 + 33) = *(v185 + 9);
        *v135 = v15;
        return result;
      }

      if (v13 >= *(v12 + 16))
      {
        break;
      }

      v17 = *(v14 - 1);
      v16 = *v14;
      sub_10011FB8C(&v184, &v179);
      if (v180[24] != 1)
      {

        sub_10011FBE8(&v179);
        v122 = sub_10011DDBC();
        sub_100004248(&type metadata for SchemaError, v122);
        sub_100003D60(v123, 16);
        return sub_10011FBE8(&v184);
      }

      sub_100008C84(&v179, v181);

      sub_1000056A0();
      v22 = sub_10013DDB8(v18, v19, v20, v21);
      v186 = v13;
      HIDWORD(v170) = v23;
      if (v23)
      {
        v24 = v14;
        v25 = v182;
        v26 = v183;
        sub_100007534(v181, v182);
        (*(v26 + 48))(&v179, v17, v16, v25, v26);
        if (v5)
        {
          sub_10011FBE8(&v184);

LABEL_34:

          return sub_100007378(v181);
        }

        v27 = sub_100008C84(&v179, &v174);
        sub_100006CBC(v27, v28, v29, v30, v31, v32, v33, v34, v131, v135, v139, v144, v148, v153, v158, v162, v166, v170, v174, v175, v176, v177);
        v35 = sub_10000DFA0();
        v37 = v36(v35);
        if (v37)
        {

          v126 = sub_10011DDBC();
          sub_100004248(&type metadata for SchemaError, v126);
          v128 = 13;
          goto LABEL_38;
        }

        sub_100006CBC(v37, v38, v39, v40, v41, v42, v43, v44, v132, v136, v140, v145, v149, v154, v159, v163, v167, v171, v174, v175, v176, v177);
        v45 = sub_1000086E8();
        v46(v45);
        v47 = sub_10011FBE8(&v184);
        v184 = v179;
        v185[0] = *v180;
        *(v185 + 9) = *&v180[9];
        sub_100006CBC(v47, v48, v49, v50, v51, v52, v53, v54, v133, v137, v141, v146, v150, v155, v160, v164, v168, v172, v174, v175, v176, v177);
        v5 = 0;
        v55 = sub_1000086E8();
        v57 = v56(v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100005AB4();
          v15 = v117;
        }

        v58 = v24;
        v59 = v15[2];
        v60 = v59 + 1;
        v12 = v162;
        if (v59 >= v15[3] >> 1)
        {
          sub_100008B8C();
          v15 = v118;
        }

        v61 = 0;
      }

      else
      {
        v62 = v22;
        sub_1000056A0();
        v67 = sub_10013DDB8(v63, v64, v65, v66);
        if (v68)
        {

          v124 = sub_10011DDBC();
          sub_100004248(&type metadata for SchemaError, v124);
          sub_100003D60(v125, 15);
          sub_10011FBE8(&v184);
          return sub_100007378(v181);
        }

        v69 = v67;
        v151 = v62;
        v142 = v14;

        sub_1000056A0();
        String.subscript.getter();

        v156 = v5;
        v71 = v182;
        v70 = v183;
        sub_100007534(v181, v182);
        v72 = static String._fromSubstring(_:)();
        v74 = v73;

        (*(v70 + 48))(&v179, v72, v74, v71, v70);
        if (v156)
        {
          sub_10011FBE8(&v184);

          goto LABEL_34;
        }

        v75 = sub_100008C84(&v179, &v174);
        sub_100006CBC(v75, v76, v77, v78, v79, v80, v81, v82, v131, v135, v142, v69, v151, 0, v15, v162, v166, v170, v174, v175, v176, v177);
        v83 = sub_10000DFA0();
        v15 = v161;
        v12 = v165;
        if ((v84(v83) & 1) == 0)
        {

          v129 = sub_10011DDBC();
          sub_100004248(&type metadata for SchemaError, v129);
          v128 = 14;
          goto LABEL_38;
        }

        if (v152 >> 14 < String.index(after:)() >> 14)
        {
          goto LABEL_41;
        }

        sub_1000056A0();
        v85 = String.subscript.getter();
        v87 = v86;

        if (!((v85 ^ v87) >> 14))
        {
          goto LABEL_42;
        }

        v88 = sub_1000081C4();
        v93 = sub_10013EAF4(v88, v89, v90, v91, v92);
        if ((v94 & 0x100) != 0)
        {
          v96 = sub_1000081C4();
          v61 = sub_10013E508(v96, v97, v98, v99, v100);
          v102 = v101;

          if (v102)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v61 = v93;
          v95 = v94;

          if (v95)
          {
            goto LABEL_37;
          }
        }

        v103 = v177;
        v104 = v178;
        sub_100007534(&v174, v177);
        sub_100006828();
        v105(v103, v104);
        v106 = sub_10011FBE8(&v184);
        v184 = v179;
        v185[0] = *v180;
        *(v185 + 9) = *&v180[9];
        sub_100006CBC(v106, v107, v108, v109, v110, v111, v112, v113, v134, v138, v143, v147, v152, v157, v161, v165, v169, v173, v174, v175, v176, v177);
        v5 = 0;
        v114 = sub_1000086E8();
        v57 = v115(v114);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100005AB4();
          v15 = v119;
        }

        v58 = v139;
        v59 = v15[2];
        v60 = v59 + 1;
        if (v59 >= v15[3] >> 1)
        {
          sub_100008B8C();
          v15 = v120;
        }
      }

      v15[2] = v60;
      v116 = &v15[3 * v59];
      v116[4] = v57;
      v116[5] = v61;
      *(v116 + 48) = (v170 & 0x100000000) == 0;
      sub_100007378(&v174);
      sub_100007378(v181);
      v14 = (v58 + 16);
      v13 = v186 + 1;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:

LABEL_37:

    v130 = sub_10011DDBC();
    sub_100004248(&type metadata for SchemaError, v130);
    v128 = 15;
LABEL_38:
    sub_100003D60(v127, v128);
    sub_10011FBE8(&v184);
    sub_100007378(&v174);
    return sub_100007378(v181);
  }
}

void static ProtoTagPathHelper.extractValue(from:pathAndType:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  if (!*(*a3 + 16))
  {
LABEL_59:
    v72 = sub_10011DDBC();
    sub_100004248(&type metadata for SchemaError, v72);
    *v73 = 0x2064696C61766E69;
    *(v73 + 8) = 0xEF68746170676174;
    *(v73 + 41) = 12;
    swift_willThrow();
    return;
  }

  v126 = a3;
  v131 = a4;
  v5 = sub_10013DBEC(a1, a2);
  v129 = *(v4 + 16);
  v6 = Data.count.getter();
  if (v6 < 0)
  {
    goto LABEL_77;
  }

  v7 = v6;
  v8 = 0;
  v9 = v4 + 32;
  v127 = v4 + 32;
  v128 = v4;
  while (1)
  {
    if (v8 >= *(v4 + 16))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v132 = v8;
    v10 = v9 + 24 * v8;
    v11 = *v10;
    if (*(v10 + 16))
    {
      v12 = *(v10 + 8);
      while (1)
      {
        v13 = [v5 position];
        if ((v13 & 0x8000000000000000) == 0 && v13 >= v7)
        {
          break;
        }

        v21 = v5;
        v22 = 0;
        v23 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v36 = 0;
            goto LABEL_21;
          }

          LOBYTE(v134) = 0;
          v25 = [v21 position] + 1;
          if (v25 >= [v21 position] && (v26 = objc_msgSend(v21, "position") + 1, v26 <= objc_msgSend(v21, "length")))
          {
            v27 = [v21 data];
            v28 = [v21 position];
            sub_10000CA84(v28, v29, v30, v31, v32, v33, v34, v35, v125, v126, v127, v128, v129, v130, v131, v132, v133);

            [v21 setPosition:{objc_msgSend(v21, "position") + 1}];
          }

          else
          {
            [v21 _setError];
          }

          v23 |= (v134 & 0x7F) << v22;
          if ((v134 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
        }

        if ([v21 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v23;
        }

LABEL_21:
        v37 = v36 & 7;
        if (v11 == (v36 >> 3))
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          --v12;
        }

        PBReaderSkipValueWithTag();
      }

      sub_100011B60(v13, v14, v15, v16, v17, v18, v19, v20, v125, v126, v127, v128, v129, v130, v131);
      v74 = sub_1000045B8();
      [v74 v75];
      v76 = sub_1000045B8();
      [v76 v77];
      sub_10000638C();
      if (!v80)
      {
        goto LABEL_64;
      }

      __break(1u);
LABEL_63:
      sub_100011B60(v38, v39, v40, v41, v42, v43, v44, v45, v125, v126, v127, v128, v129, v130, v131);
      v81 = sub_1000045B8();
      [v81 v82];
      v83 = sub_1000045B8();
      [v83 v84];
      sub_10000638C();
      if (!v80)
      {
        goto LABEL_64;
      }

      goto LABEL_79;
    }

    while (1)
    {
      v38 = [v5 position];
      if ((v38 & 0x8000000000000000) == 0 && v38 >= v7)
      {
        goto LABEL_63;
      }

      v46 = v5;
      v47 = 0;
      v48 = 0;
      for (j = 0; ; ++j)
      {
        if (j > 9)
        {
          v61 = 0;
          goto LABEL_39;
        }

        LOBYTE(v134) = 0;
        v50 = [v46 position] + 1;
        if (v50 >= [v46 position] && (v51 = objc_msgSend(v46, "position") + 1, v51 <= objc_msgSend(v46, "length")))
        {
          v52 = [v46 data];
          v53 = [v46 position];
          sub_10000CA84(v53, v54, v55, v56, v57, v58, v59, v60, v125, v126, v127, v128, v129, v130, v131, v132, v133);

          [v46 setPosition:{objc_msgSend(v46, "position") + 1}];
        }

        else
        {
          [v46 _setError];
        }

        v48 |= (v134 & 0x7F) << v47;
        if ((v134 & 0x80) == 0)
        {
          break;
        }

        v47 += 7;
      }

      v61 = [v46 hasError] ? 0 : v48;
LABEL_39:
      v37 = v61 & 7;
      if (v11 == (v61 >> 3))
      {
        break;
      }

      PBReaderSkipValueWithTag();
    }

LABEL_41:

    v62 = sub_10012BC40(v37);
    if (v62 == 6)
    {
      break;
    }

    v63 = v62;
    if (v132 + 1 == v129)
    {
      goto LABEL_68;
    }

    if (v62 != 2)
    {
      goto LABEL_72;
    }

    v8 = v132 + 1;
    v64 = 0;
    v65 = 0;
    for (k = 0; ; ++k)
    {
      if (k > 9)
      {
        v70 = 0;
        goto LABEL_57;
      }

      LOBYTE(v134) = 0;
      v67 = [v5 position] + 1;
      if (v67 >= [v5 position] && (v68 = objc_msgSend(v5, "position") + 1, v68 <= objc_msgSend(v5, "length")))
      {
        v69 = [v5 data];
        [v69 getBytes:&v134 range:{objc_msgSend(v5, "position"), 1}];

        [v5 setPosition:{objc_msgSend(v5, "position") + 1}];
      }

      else
      {
        [v5 _setError];
      }

      v65 |= (v134 & 0x7F) << v64;
      if ((v134 & 0x80) == 0)
      {
        break;
      }

      v64 += 7;
    }

    if ([v5 hasError])
    {
      v70 = 0;
    }

    else
    {
      v70 = v65;
    }

    if (v70 < 0)
    {
      goto LABEL_78;
    }

LABEL_57:
    v71 = [v5 position];
    v7 = (v71 + v70);
    v9 = v127;
    v4 = v128;
    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_59;
    }
  }

  v85 = sub_10011DDBC();
  sub_100004248(&type metadata for SchemaError, v85);
  sub_100007E20();
  _StringGuts.grow(_:)(22);

  sub_10000B13C();
  v134 = v87;
  v135 = v86;
  HIBYTE(v133) = v37;
  v88._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v88);

  sub_10000ACD8(v89, v90, v91, v92, v93, v94, v95, v96, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
  v97 = sub_1000045B8();
  [v97 v98];
  v99 = sub_1000045B8();
  [v99 v100];
  sub_10000638C();
  if (!v80)
  {
    goto LABEL_64;
  }

  __break(1u);
LABEL_68:
  sub_10012BC90(v5, v63, v131);
  if (!v130)
  {
    v121 = sub_1000045B8();
    [v121 v122];
    v123 = sub_1000045B8();
    [v123 v124];
    sub_10000638C();
    if (!v80)
    {
      goto LABEL_64;
    }

LABEL_81:
    __break(1u);
  }

  v101 = sub_1000045B8();
  [v101 v102];
  v103 = sub_1000045B8();
  [v103 v104];
  sub_10000638C();
  if (v80)
  {
    __break(1u);
LABEL_72:
    v105 = sub_10011DDBC();
    sub_100004248(&type metadata for SchemaError, v105);
    sub_100007E20();
    _StringGuts.grow(_:)(38);

    sub_10000B13C();
    v134 = v107 + 16;
    v135 = v106;
    HIBYTE(v133) = v37;
    v108._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v108);

    sub_10000ACD8(v109, v110, v111, v112, v113, v114, v115, v116, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135);
    v117 = sub_1000045B8();
    [v117 v118];
    v119 = sub_1000045B8();
    [v119 v120];
    sub_10000638C();
    if (v80)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }
  }

LABEL_64:
  *(v78 + 1080) = v79;
}

uint64_t static ProtoTagPathHelper.extractValues(from:property:block:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(_OWORD *))
{
  v9 = a3[3];
  v10 = a3[4];
  sub_100007534(a3, v9);
  sub_100006828();
  result = v11(v9, v10);
  if (!v4)
  {
    v13 = a3[3];
    v14 = a3[4];
    sub_100007534(a3, v13);
    sub_100006828();
    v27 = v15(v13, v14);
    v17 = a3[3];
    v16 = a3[4];
    sub_100007534(a3, v17);
    v18 = (*(v16 + 16))(v17, v16);
    if (v18)
    {
      __chkstk_darwin(v18);
      sub_10013E008(a1, a2, v27, sub_10013DFE8);
    }

    else
    {
      sub_100046184(&qword_10021C7A0, &qword_1001A1300);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100197F20;
      *(v19 + 32) = v27;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      sub_10011FB8C(v26, &v21);
      v20 = v19;
      static ProtoTagPathHelper.extractValue(from:pathAndType:)(a1, a2, &v20, v22);
      sub_10012F098(&v20);
      if (v23[25] == 255)
      {
        sub_10000F94C(v22, &qword_10021D078, &qword_1001A2370);
      }

      else
      {
        v24[0] = v22[0];
        v24[1] = v22[1];
        v25[0] = *v23;
        *(v25 + 10) = *&v23[10];
        a4(v24);
        sub_10002633C(v24);
      }
    }

    return sub_10011FBE8(v26);
  }

  return result;
}

void static ProtoTagPathHelper.extractAllValues(from:schema:block:)(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, __int128 *), uint64_t a5)
{
  v9 = a3[3];
  v10 = a3[4];
  sub_100007534(a3, v9);
  sub_100006828();
  v12 = v11(v9, v10);
  if (!v5)
  {
    v13 = v12;
    v14 = sub_10013DBEC(a1, a2);
    v30 = Data.count.getter();
    if ((v30 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      while (1)
      {
        v15 = [v14 position];
        if ((v15 & 0x8000000000000000) == 0 && v15 >= v30)
        {
          break;
        }

        v16 = 0;
        v17 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v22 = 0;
            goto LABEL_17;
          }

          v31 = 0;
          v19 = [v14 position] + 1;
          if (v19 >= [v14 position] && (v20 = objc_msgSend(v14, "position") + 1, v20 <= objc_msgSend(v14, "length")))
          {
            v21 = [v14 data];
            [v21 getBytes:&v31 range:{objc_msgSend(v14, "position"), 1}];

            [v14 setPosition:{objc_msgSend(v14, "position") + 1}];
          }

          else
          {
            [v14 _setError];
          }

          v17 |= (v31 & 0x7F) << v16;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
        }

        if ([v14 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v17;
        }

LABEL_17:
        sub_10013E288(v22 & 7, v22 >> 3, v14, v13, a4);
      }

      v23 = sub_100007010();
      [v23 v24];
      v25 = sub_100007010();
      [v25 v26];
      sub_10000638C();
      if (!v29)
      {
        *(v27 + 1080) = v28;

        return;
      }
    }

    __break(1u);
  }
}

id sub_10013DB7C()
{
  sub_100046184(&qword_100214808, &unk_1001A2E40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100198F00;
  result = [objc_allocWithZone(PBDataReader) init];
  *(v0 + 32) = result;
  qword_10021E440 = v0;
  return result;
}

id sub_10013DBEC(uint64_t a1, uint64_t a2)
{
  if (__OFADD__(qword_10021E438, 1))
  {
    __break(1u);
LABEL_16:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  v2 = a2;
  v3 = a1;
  ++qword_10021E438;
  while (1)
  {
    if (qword_10021BFD0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_10021E440 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((qword_10021E440 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = qword_10021E438;
    if (qword_10021E438 < v4)
    {
      break;
    }

    [objc_allocWithZone(PBDataReader) init];
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((qword_10021E440 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_10021E440 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  swift_beginAccess();
  v6 = qword_10021E440;
  sub_1001068A8(v5, (qword_10021E440 & 0xC000000000000001) == 0, qword_10021E440);
  if ((v6 & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  v7 = *(v6 + 8 * v5 + 32);
LABEL_14:
  v8 = v7;
  swift_endAccess();
  sub_10013EA9C(v3, v2, v8);
  return v8;
}

unint64_t sub_10013DDB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = String.index(after:)())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (String.subscript.getter() == a1 && v9 == a2)
    {
      break;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

void sub_10013DEA0(void *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v5 = a2;
  v7 = sub_10012BC40(a2);
  if (v7 == 6)
  {
    sub_10011DDBC();
    swift_allocError();
    v9 = v8;
    _StringGuts.grow(_:)(22);

    v12 = v5;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    *v9 = 0xD000000000000014;
    *(v9 + 8) = 0x80000001001B2E90;
    *(v9 + 41) = 12;
    swift_willThrow();
  }

  else
  {
    sub_10012BC90(a1, v7, &v11);
    if (!v3)
    {
      a3(&v11);
      sub_10002633C(&v11);
    }
  }
}

void sub_10013E008(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, unint64_t))
{
  v15 = a4;
  v6 = sub_10013DBEC(a1, a2);
  v16 = Data.count.getter();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  do
  {
    while (1)
    {
      v7 = [v6 position];
      if ((v7 & 0x8000000000000000) == 0 && v7 >= v16)
      {
        [v6 seekToOffset:0];
        [v6 updateData:0];
        if (!__OFSUB__(qword_10021E438, 1))
        {
          --qword_10021E438;

          return;
        }

        goto LABEL_24;
      }

      v8 = v6;
      v9 = 0;
      v10 = 0;
      for (i = 0; ; ++i)
      {
        if (i > 9)
        {
          v10 = 0;
          goto LABEL_15;
        }

        v17 = 0;
        v12 = [v8 position] + 1;
        if (v12 >= [v8 position] && (v13 = objc_msgSend(v8, "position") + 1, v13 <= objc_msgSend(v8, "length")))
        {
          v14 = [v8 data];
          [v14 getBytes:&v17 range:{objc_msgSend(v8, "position"), 1}];

          [v8 setPosition:{objc_msgSend(v8, "position") + 1}];
        }

        else
        {
          [v8 _setError];
        }

        v10 |= (v17 & 0x7F) << v9;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
      }

      if ([v8 hasError])
      {
        v10 = 0;
      }

LABEL_15:
      if (a3 == (v10 >> 3))
      {
        break;
      }

      PBReaderSkipValueWithTag();
    }

    v15(v8, v10 & 7);
  }

  while (!v4);
  [v8 seekToOffset:0];
  [v8 updateData:0];
  if (__OFSUB__(qword_10021E438, 1))
  {
LABEL_25:
    __break(1u);
  }

  --qword_10021E438;
}

uint64_t sub_10013E288(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, void (*a5)(void *, __int128 *))
{
  sub_10014341C(a2, a4, &v22);
  if (v23)
  {
    sub_100008C84(&v22, v26);
    v10 = v27;
    v11 = v28;
    sub_100007534(v26, v27);
    (*(v11 + 40))(v25, v10, v11);
    if (!v5)
    {
      v12 = sub_10012BC40(a1);
      if (v12 == 6)
      {
        sub_10011DDBC();
        swift_allocError();
        v14 = v13;
        *&v22 = 0;
        *(&v22 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        *&v22 = 0xD000000000000014;
        *(&v22 + 1) = 0x80000001001B2E90;
        v24 = a1;
        v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v15);

        v16 = *(&v22 + 1);
        *v14 = v22;
        *(v14 + 8) = v16;
        *(v14 + 41) = 12;
        swift_willThrow();
      }

      else
      {
        sub_10012BC90(a3, v12, &v22);
        a5(v26, &v22);
        sub_10002633C(&v22);
      }

      sub_10011FBE8(v25);
    }

    return sub_100007378(v26);
  }

  else
  {
    sub_10000F94C(&v22, &qword_10021CC58, &qword_1001A16F0);
    sub_10011DDBC();
    swift_allocError();
    v18 = v17;
    *&v22 = 0x6761742068746977;
    *(&v22 + 1) = 0xE900000000000020;
    LODWORD(v25[0]) = a2;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20 = *(&v22 + 1);
    *v18 = v22;
    *(v18 + 8) = v20;
    *(v18 + 41) = 4;
    return swift_willThrow();
  }
}

unsigned __int8 *sub_10013E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v71 = a1;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  sub_10013EBD0();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100107FD4(result, v7);
    v42 = v41;

    v9 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v24 = v10 - 1;
        if (v10 != 1)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v16 = 0;
            v28 = result + 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              if (!is_mul_ok(v16, a5))
              {
                goto LABEL_128;
              }

              v31 = v16 * a5;
              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v16 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v20 = v16;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            if (!is_mul_ok(v36, a5))
            {
              goto LABEL_128;
            }

            v39 = v36 * a5;
            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            if (!is_mul_ok(v16, a5))
            {
              goto LABEL_128;
            }

            v21 = v16 * a5;
            v22 = v18 + v19;
            v23 = v21 >= v22;
            v16 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
LABEL_129:

        return v20;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v9) & 0xF;
  v71 = v8;
  v72 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v71;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v69 = v45 * a5;
          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v71 + 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          if (!is_mul_ok(v45, a5))
          {
            goto LABEL_128;
          }

          v52 = v45 * a5;
          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v71 + 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        if (!is_mul_ok(v45, a5))
        {
          goto LABEL_128;
        }

        v61 = v45 * a5;
        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void sub_10013EA9C(uint64_t a1, uint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  [a3 updateData:isa];
}

uint64_t sub_10013EAF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10013EC24(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_10013EBD0()
{
  result = qword_10021E448;
  if (!qword_10021E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E448);
  }

  return result;
}

uint64_t sub_10013EC24(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1000F8AF4(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_97;
    }

    result = String.UTF8View._foreignDistance(from:to:)();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1000F8AF4(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1000F8AF4(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_93;
  }

  if (v23 < a4 >> 16)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_92;
  }

  if (v24 < v18)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a7 + 48;
        v40 = a7 + 55;
        v41 = a7 + 87;
        if (a7 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v42 = v25 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v35 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v35;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (!is_mul_ok(v30, a7))
            {
              return 0;
            }

            v46 = v30 * a7;
            v47 = v44 + v45;
            v38 = __CFADD__(v46, v47);
            v30 = v46 + v47;
            if (v38)
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_96;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v48 = a7 + 48;
      v49 = a7 + 55;
      v50 = a7 + 87;
      if (a7 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v51 = *v25;
          if (v51 < 0x30 || v51 >= v48)
          {
            if (v51 < 0x41 || v51 >= v49)
            {
              v35 = 0;
              if (v51 < 0x61 || v51 >= v50)
              {
                return v35;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v53 = v30 * a7;
          v54 = v51 + v52;
          v38 = __CFADD__(v53, v54);
          v30 = v53 + v54;
          if (v38)
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          if (!is_mul_ok(v30, a7))
          {
            return 0;
          }

          v36 = v30 * a7;
          v37 = v33 + v34;
          v38 = v36 >= v37;
          v30 = v36 - v37;
          if (!v38)
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PBase64DecodeFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v5 = sub_100046184(&qword_10021E450, &unk_1001A2E50);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v14 = &v48 - v13;
  v15 = *(arguments._rawValue + 2);
  if ((v15 - 1) > 1)
  {
    v21._countAndFlagsBits = 0xD00000000000002CLL;
    v21._object = 0x80000001001B2EB0;
    SQLiteContext.setError(message:code:)(v21, -1);
    return;
  }

  v49 = v12;
  v50 = v11;
  v53 = v10;
  v16 = *(arguments._rawValue + 4);
  SQLiteArgument.getBase64EncodedData()(v16);
  if (v17 >> 60 == 15)
  {
    v18 = SQLiteArgument.getData()(v16);
    v20 = v19;
    SQLiteContext.setData(_:destructor:)(v18, v19, 1, with.context._rawValue);
    sub_100014A2C(v18, v20);
    return;
  }

  rawValue = with.context._rawValue;
  v48 = v2;
  while (2)
  {
    static String.Encoding.utf8.getter();
    sub_100003674();
    String.init(data:encoding:)();
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = Data.init(base64Encoded:options:)();
    v25 = v24;

    if (v25 >> 60 == 15)
    {
      goto LABEL_16;
    }

    switch(v25 >> 62)
    {
      case 1uLL:
        v26 = v23;
        v27 = v23 >> 32;
        goto LABEL_13;
      case 2uLL:
        v26 = *(v23 + 16);
        v27 = *(v23 + 24);
LABEL_13:
        if (v26 != v27)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      case 3uLL:
        goto LABEL_15;
      default:
        if ((v25 & 0xFF000000000000) != 0)
        {
LABEL_14:
          v28 = sub_100003674();
          sub_100014A40(v28, v29);
          continue;
        }

LABEL_15:
        sub_100014A2C(v23, v25);
LABEL_16:
        if (v15 == 2)
        {
          v30 = SQLiteArgument.getStringNonNull()();
          if (v31)
          {
            goto LABEL_20;
          }

          sub_10013F498(v7);
          v32 = v53;
          if (sub_100008D0C(v7, 1, v53) == 1)
          {
            sub_10013F568(v7);
            v52._countAndFlagsBits = 0;
            v52._object = 0xE000000000000000;
            _StringGuts.grow(_:)(23);

            v52._countAndFlagsBits = 0xD000000000000011;
            v52._object = 0x80000001001B2EE0;
            String.append(_:)(v30);

            v33._object = 0x80000001001B2F00;
            v33._countAndFlagsBits = 0xD000000000000011;
            String.append(_:)(v33);
            SQLiteContext.setError(message:code:)(v52, -1);

LABEL_20:
            v34 = sub_100003674();
            sub_100014A40(v34, v35);
          }

          else
          {

            v41 = v49;
            v40 = v50;
            (*(v50 + 32))(v49, v7, v32);
            (*(v40 + 16))(v14, v41, v32);
            sub_100003674();
            v42 = String.init(data:encoding:)();
            if (v43)
            {
              SQLiteContext.setString(_:destructor:)(v42, v43, 1, rawValue);
              v44 = sub_100003674();
              sub_100014A40(v44, v45);
            }

            else
            {
              SQLiteContext.setNull()();
              v46 = sub_100003674();
              sub_100014A40(v46, v47);
            }

            (*(v40 + 8))(v41, v32);
          }
        }

        else
        {
          v36 = sub_100003674();
          SQLiteContext.setData(_:destructor:)(v36, v37, 1, rawValue);
          v38 = sub_100003674();
          sub_100014A40(v38, v39);
        }

        return;
    }
  }
}

uint64_t sub_10013F498@<X0>(uint64_t a1@<X8>)
{
  v2 = String.lowercased()();

  if (v2._countAndFlagsBits == 946238581 && v2._object == 0xE400000000000000)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      v5 = 1;
      goto LABEL_9;
    }
  }

  static String.Encoding.utf8.getter();
  v5 = 0;
LABEL_9:
  v6 = type metadata accessor for String.Encoding();

  return sub_1000051C0(a1, v5, 1, v6);
}

uint64_t sub_10013F568(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021E450, &unk_1001A2E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PBGetFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v6 = SQLiteArgument.getUnsafeData()(*(arguments._rawValue + 4));
  if (v7 >> 60 == 15)
  {
    sub_10011DC44();
    swift_allocError();
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *v8 = 6;
    *(v8 + 24) = 4;
    swift_willThrow();
    return;
  }

  if (v3 == 1)
  {
    goto LABEL_44;
  }

  v9 = v6;
  v10 = v7;
  rawValue = arguments._rawValue;
  v48 = v3;
  v11 = sqlite3_value_text(*(arguments._rawValue + 5));
  if (!v11)
  {
    sub_10011DDBC();
    swift_allocError();
    *v42 = 0xD000000000000024;
    *(v42 + 8) = 0x80000001001B2F50;
    *(v42 + 41) = 0;
    swift_willThrow();
    sub_100014A2C(v9, v10);
    return;
  }

  v18 = v11;
  v44 = with.context._rawValue;
  v45 = v9;
  v19 = *v11;
  if (*v11)
  {
    v20 = 0;
    v21 = 0;
    v46 = v2;
    while (2)
    {
      v22 = 0;
      ++v18;
      while ((v19 - 58) >= 0xF6u)
      {
        if (!is_mul_ok(v22, 0xAuLL))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v23 = __CFADD__(10 * v22, (v19 - 48));
        v22 = 10 * v22 + (v19 - 48);
        if (v23)
        {
          goto LABEL_40;
        }

        v24 = *v18++;
        v19 = v24;
      }

      v25 = v19 == 105;
      if (v19 == 105)
      {
        v20 = v22;
LABEL_31:
        v19 = *v18;
        v21 = v25;
        if (*v18)
        {
          continue;
        }

        goto LABEL_32;
      }

      break;
    }

    if (v21)
    {
      if (!v20)
      {
        goto LABEL_32;
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        sub_1000045C4(v11, v12, v13, v14, v15, v16, v17);
        v26 = *(v2 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 48) = v26;
        v28 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100003D8C();
          v26 = v35;
          *(v46 + 48) = v35;
        }

        v29 = *(v26 + 16);
        if (v29 >= *(v26 + 24) >> 1)
        {
          sub_10000639C();
          v26 = v36;
        }

        *(v26 + 16) = v29 + 1;
        v30 = v26 + 24 * v29;
        v20 = v28;
        *(v30 + 32) = v28;
        *(v30 + 40) = v22;
        *(v30 + 48) = 1;
        v2 = v46;
        *(v46 + 48) = v26;
        v11 = swift_endAccess();
        if (!v19)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      goto LABEL_43;
    }

    if (!v22)
    {
      goto LABEL_32;
    }

    if ((v22 & 0x8000000000000000) == 0)
    {
      sub_1000045C4(v11, v12, v13, v14, v15, v16, v17);
      v31 = *(v2 + 48);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 48) = v31;
      v53 = v20;
      if ((v32 & 1) == 0)
      {
        sub_100003D8C();
        v31 = v37;
        *(v2 + 48) = v37;
      }

      v33 = *(v31 + 16);
      if (v33 >= *(v31 + 24) >> 1)
      {
        sub_10000639C();
        v31 = v38;
      }

      *(v31 + 16) = v33 + 1;
      v34 = v31 + 24 * v33;
      *(v34 + 32) = v22;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v2 + 48) = v31;
      v11 = swift_endAccess();
      v20 = v53;
      if (!v19)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_32:
  if (v48 < 3)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v39 = sqlite3_value_text(rawValue[6]);
  if (!v39)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v40 = *v39;
  swift_beginAccess();
  v41 = *(v2 + 48);
  sub_100142AB0(v40, &v49);
  if (v50[24] == 255)
  {
    sub_10013FAAC(&v49);
    v43._object = 0x80000001001B2F80;
    v43._countAndFlagsBits = 0xD000000000000017;
    SQLiteContext.setError(message:code:)(v43, -1);
    sub_100014A2C(v45, v10);
  }

  else
  {
    v51 = v49;
    v52[0] = *v50;
    *(v52 + 9) = *&v50[9];
    sub_10011FB8C(&v51, &v49 + 8);
    *&v49 = v41;

    sub_100142B50(v44, v45, v10, &v49);
    sub_100014A2C(v45, v10);
    sub_10012F098(&v49);
    sub_10011FBE8(&v51);
  }

  *(v2 + 48) = _swiftEmptyArrayStorage;
}

uint64_t PBGetFunction.deinit()
{
  v0 = SQLiteBaseFunction.deinit();
  swift_weakDestroy();

  return v0;
}

uint64_t PBGetFunction.__deallocating_deinit()
{
  v0 = PBGetFunction.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10013FAAC(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021E590, &qword_1001A2E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PGetFunction.perform(with:arguments:)(SQLiter::SQLiteContext with, Swift::OpaquePointer arguments)
{
  v3 = *(arguments._rawValue + 2);
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(arguments._rawValue + 4);
  if (SQLiteArgument.isNull.getter(v5))
  {
    SQLiteContext.setNull()();
    return;
  }

  sub_10011DE10();
  if (!v2)
  {
    SQLiteBaseSchematizer.getSQLiteBridge()();
    v7 = v6;

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24))(v5, ObjectType, v7);
    v11 = v10;
    v13 = v12;
    v15 = v14;
    swift_unknownObjectRelease();
    if (v3 != 1)
    {
      v16 = SQLiteArgument.getStringNonNull()();
      if (v17)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        sub_100131258(v16._countAndFlagsBits, v16._object, with.context._rawValue, v9, v11, v13, v15);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      return;
    }

LABEL_11:
    __break(1u);
  }
}

uint64_t *SchemaStoreModel.emptyStore.unsafeMutableAddressor()
{
  if (qword_10021BFD8 != -1)
  {
    sub_1000045E4(&qword_10021BFD8);
  }

  return &static SchemaStoreModel.emptyStore;
}

uint64_t SchemaStoreModel.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(a2 + 8))(ObjectType, a2);
  Dictionary.init(dictionaryLiteral:)();
  v6 = v5 + 56;
  sub_100004154();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v97 = a2;
  v98 = v12;

  v13 = 0;
  v94 = v11;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_6:
      v15 = (*(v5 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v97 + 40);

      v18(v100, v17, v16, ObjectType, v97);
      if (v3)
      {
        break;
      }

      MessageSchemaModel.init(_:dontCopy:)(v100, 0);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v9 &= v9 - 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100[0] = v98;
      sub_1001360EC(v20, v22, v24, v17, v16, isUniquelyReferenced_nonNull_native);

      v98 = v100[0];
      v13 = v14;
      v3 = 0;
      v11 = v94;
      v6 = v5 + 56;
      if (!v9)
      {
        goto LABEL_3;
      }
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    while (1)
    {
LABEL_3:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v14 >= v11)
      {
        break;
      }

      v9 = *(v6 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    v26 = (*(v97 + 16))(ObjectType, v97);
    Dictionary.init(dictionaryLiteral:)();
    v27 = v26 + 56;
    sub_100004154();
    v30 = v29 & v28;
    v32 = (v31 + 63) >> 6;
    v95 = v33;

    v34 = 0;
    v93 = v26;
    v86 = v32;
    v87 = v26 + 56;
    if (v30)
    {
      goto LABEL_14;
    }

LABEL_10:
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v32)
      {

        swift_unknownObjectRelease();
        return v98;
      }

      v30 = *(v27 + 8 * v35);
      ++v34;
      if (v30)
      {
        v34 = v35;
        while (1)
        {
LABEL_14:
          v88 = v30;
          v89 = v34;
          v36 = (*(v26 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v30)))));
          v37 = *v36;
          v38 = v36[1];
          v39 = *(v97 + 48);

          v39(v100, v37, v38, ObjectType, v97);
          if (v3)
          {

            swift_unknownObjectRelease();
          }

          v40 = Dictionary.init(dictionaryLiteral:)();
          v41 = v101;
          v42 = v102;
          sub_100007534(v100, v101);
          v43 = (*(v42 + 16))(v41, v42);
          v90 = *(v43 + 16);
          if (v90)
          {
            break;
          }

LABEL_34:

          sub_100007378(v100);
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v100[0] = v95;
          v71 = sub_100005B74(v37, v38);
          v73 = *(v95 + 16);
          v74 = (v72 & 1) == 0;
          v75 = v73 + v74;
          if (__OFADD__(v73, v74))
          {
            goto LABEL_53;
          }

          v76 = v71;
          v77 = v72;
          sub_100046184(&qword_10021E190, &qword_1001A2B60);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v70, v75))
          {
            v78 = sub_100005B74(v37, v38);
            if ((v77 & 1) != (v79 & 1))
            {
              goto LABEL_55;
            }

            v76 = v78;
          }

          v80 = v100[0];
          v95 = v100[0];
          if (v77)
          {
            *(*(v100[0] + 56) + 8 * v76) = v40;
          }

          else
          {
            *(v100[0] + 8 * (v76 >> 6) + 64) |= 1 << v76;
            v81 = (v80[6] + 16 * v76);
            *v81 = v37;
            v81[1] = v38;
            *(v80[7] + 8 * v76) = v40;
            v82 = v80[2];
            v67 = __OFADD__(v82, 1);
            v83 = v82 + 1;
            if (v67)
            {
              goto LABEL_54;
            }

            v80[2] = v83;
          }

          v26 = v93;
          v32 = v86;
          v27 = v87;
          v34 = v89;
          v30 = (v88 - 1) & v88;
          if (!v30)
          {
            goto LABEL_10;
          }
        }

        v44 = 0;
        v45 = v43 + 32;
        v92 = v43;
        v85 = v43 + 32;
LABEL_17:
        if (v44 < *(v43 + 16))
        {
          v46 = (v45 + 8 * v44);
          v48 = *v46;
          v47 = v46[1];
          v91 = v44 + 1;
          while (1)
          {
            if (v48 == v47)
            {
              v49 = 0;
            }

            else
            {
              if (v48 == 0x7FFFFFFF)
              {
                goto LABEL_49;
              }

              v49 = v48 + 1;
            }

            v50 = v101;
            v51 = v102;
            sub_100007534(v100, v101);
            v52 = (*(v51 + 32))(v48, v50, v51);
            v54 = v53;
            v99 = v49;
            v55 = swift_isUniquelyReferenced_nonNull_native();
            v103 = v40;
            v56 = sub_100005B74(v52, v54);
            v58 = v40[2];
            v59 = (v57 & 1) == 0;
            v60 = v58 + v59;
            if (__OFADD__(v58, v59))
            {
              goto LABEL_48;
            }

            v61 = v56;
            v62 = v57;
            sub_100046184(&unk_1002167A0, &unk_10019AD50);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v55, v60))
            {
              v63 = sub_100005B74(v52, v54);
              if ((v62 & 1) != (v64 & 1))
              {
                goto LABEL_55;
              }

              v61 = v63;
            }

            if (v62)
            {

              v40 = v103;
              *(v103[7] + 4 * v61) = v48;
            }

            else
            {
              v40 = v103;
              v103[(v61 >> 6) + 8] |= 1 << v61;
              v65 = (v40[6] + 16 * v61);
              *v65 = v52;
              v65[1] = v54;
              *(v40[7] + 4 * v61) = v48;
              v66 = v40[2];
              v67 = __OFADD__(v66, 1);
              v68 = v66 + 1;
              if (v67)
              {
                goto LABEL_50;
              }

              v40[2] = v68;
            }

            v69 = v48 == v47;
            v48 = v99;
            v3 = 0;
            if (v69)
            {
              v44 = v91;
              v43 = v92;
              v45 = v85;
              if (v91 != v90)
              {
                goto LABEL_17;
              }

              goto LABEL_34;
            }
          }
        }

        goto LABEL_52;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}