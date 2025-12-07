uint64_t sub_100177318(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  String.hash(into:)();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(a1, a4);

  return a6(a1, a5);
}

Swift::Int sub_10017739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  sub_100006A80(a1);
  v6 = String.hash(into:)();
  v14 = sub_10000F30C(v6, v7, v8, v9, v10, v11, v12, v13, v26, v28);
  v16 = _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v14, v15);
  v24 = sub_10001BDBC(v16, v17, v18, v19, v20, v21, v22, v23, v27, v29);
  a5(v24);
  return Hasher._finalize()();
}

Swift::Int sub_100177444(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = Hasher.init(_seed:)();
  v13 = sub_10000F30C(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return Hasher._finalize()();
}

uint64_t AvroMap.description.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_100007A1C();
  sub_100006D34();
  _StringGuts.grow(_:)(31);

  sub_1000066DC();
  sub_10000BF70();
  v7._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v7);

  v8 = sub_10000470C();
  sub_100015BF0(v8);
  v11._countAndFlagsBits = AvroMapSchema.description.getter(v5, v4, a3);
  sub_100014CD8(v11);

  sub_100012FAC();
  return v10;
}

uint64_t _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        goto LABEL_29;
      }

      v10 = a1 == a5;
      goto LABEL_18;
    case 2:
      if (a8 != 2)
      {
        goto LABEL_29;
      }

      v10 = a1 == a5;
LABEL_18:
      v8 = v10;
      return v8 & 1;
    case 3:
      if (a8 != 3)
      {
        goto LABEL_29;
      }

      v9 = *&a1 == *&a5;
      goto LABEL_10;
    case 4:
      if (a8 != 4)
      {
        goto LABEL_29;
      }

      v9 = *&a1 == *&a5;
LABEL_10:
      v8 = v9;
      return v8 & 1;
    case 5:
      if (a8 != 5)
      {
        goto LABEL_29;
      }

      if (a1 != a5 || a2 != a6)
      {
        return sub_100008C48(a1, a2, a5, a6);
      }

LABEL_31:
      v8 = 1;
      return v8 & 1;
    case 6:
      if (a8 != 6)
      {
        goto LABEL_29;
      }

      return sub_1001778CC(a1, a2, a3, a5, a6);
    case 7:
      if (a8 == 7 && !(a5 | a7 | a6))
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    default:
      if (a8)
      {
LABEL_29:
        v8 = 0;
      }

      else
      {
        v8 = a5 ^ a1 ^ 1;
      }

      return v8 & 1;
  }
}

void _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000AA8C();
  switch(v4)
  {
    case 1:
      Hasher._combine(_:)(2uLL);
      v7 = v3;
      goto LABEL_16;
    case 2:
      Hasher._combine(_:)(3uLL);
      v5 = v3;
      goto LABEL_7;
    case 3:
      Hasher._combine(_:)(4uLL);
      if ((v3 & 0x7FFFFF) == 0 && (v3 & 0x7F800000) == 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = v3;
      }

LABEL_16:
      Hasher._combine(_:)(v7);
      return;
    case 4:
      Hasher._combine(_:)(5uLL);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }

LABEL_7:
      Hasher._combine(_:)(v5);
      break;
    case 5:
      Hasher._combine(_:)(6uLL);
      sub_10000672C();

      String.hash(into:)();
      break;
    case 6:
      Hasher._combine(_:)(7uLL);
      sub_10000672C();

      sub_1001779A0();
      break;
    case 7:
      Hasher._combine(_:)(0);
      break;
    default:
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v3 & 1);
      break;
  }
}

uint64_t sub_10017785C(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) & 3) != 0)
  {
    v2 = sub_1000041F8();
    sub_100014924(v2, v3);
  }

  else
  {

    sub_1001790EC(v4);
  }

  sub_1000041F8();
  v5 = Data.hashValue.getter();
  v6 = sub_1000041F8();
  sub_100014A40(v6, v7);
  return v5;
}

BOOL sub_1001778CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1;
  if (((a2 >> 60) & 3) != 0)
  {
    v7 = a2 & 0xCFFFFFFFFFFFFFFFLL;
    sub_100014924(a1, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else
  {

    v6 = sub_1001790EC(v8);
    v7 = v9;
  }

  v10 = Data.hashValue.getter();
  sub_100014A40(v6, v7);
  if (((a5 >> 60) & 3) != 0)
  {
    v11 = sub_1000041F8();
    sub_100014924(v11, v12);
  }

  else
  {

    sub_1001790EC(v13);
  }

  sub_1000041F8();
  v14 = Data.hashValue.getter();
  v15 = sub_1000041F8();
  sub_100014A40(v15, v16);
  return v10 == v14;
}

void sub_1001779A0()
{
  sub_10000AA8C();
  if (((v0 >> 60) & 3) != 0)
  {
    v1 = sub_100007CD4();
    sub_100014924(v1, v2);
  }

  else
  {

    sub_1001790EC(v3);
  }

  sub_100007CD4();
  v4 = Data.hashValue.getter();
  v5 = sub_100007CD4();
  sub_100014A40(v5, v6);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_100177A24(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001779A0();
  return Hasher._finalize()();
}

Swift::Int sub_100177A9C()
{
  sub_100007A1C();
  sub_100006A80(v2);
  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0(v4, v1, v0);
  return Hasher._finalize()();
}

Swift::Int sub_100177B30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = Hasher.init(_seed:)();
  v13 = sub_10000F30C(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return Hasher._finalize()();
}

uint64_t AvroPrimitive.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a1;
  result = 7104878;
  switch(a4)
  {
    case 1:
    case 2:
      result = dispatch thunk of CustomStringConvertible.description.getter();
      break;
    case 3:
      result = Float.description.getter();
      break;
    case 4:
      result = Double.description.getter();
      break;
    case 5:
      v9 = sub_1000041F8();
      sub_100163C88(v9, v10, v11, 5);
      result = sub_1000041F8();
      break;
    case 6:
      v6 = sub_1000041F8();
      sub_100163C88(v6, v7, v8, 6);
      result = String.init<A>(describing:)();
      break;
    case 7:
      return result;
    default:
      if (v4)
      {
        result = 1702195828;
      }

      else
      {
        result = 0x65736C6166;
      }

      break;
  }

  return result;
}

uint64_t AvroUnion.init(schema:value:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = AvroValue.schema.getter();
  v7 = sub_10017398C(v6, a1);
  v9 = v8;

  if (v9)
  {
LABEL_6:
    sub_1000068B4();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = v13 | 0x8000000000000000;
    v15 = AvroValue.schema.getter();
    v16 = sub_10017813C();
    sub_100004248(&type metadata for SchemaMismatchError, v16);
    *v17 = v14;
    v17[1] = v15;
    swift_willThrow();
    return sub_100096480(a2);
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(a1 + 16))
  {
    v11 = *(a1 + 8 * v7 + 32);

    v12 = sub_10015B364(a2, v11);

    if (v12)
    {
      *a3 = a1;
      result = memcpy(a3 + 1, a2, 0x41uLL);
      a3[10] = v7;
      return result;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void AvroUnion.hash(into:)(uint64_t a1)
{
  AvroUnionSchema.hash(into:)(a1, *v1);
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
  Hasher._combine(_:)(*(v1 + 80));
}

Swift::Int AvroUnion.hashValue.getter(uint64_t a1)
{
  sub_100006A80(a1);
  AvroUnionSchema.hash(into:)(v3, *v1);
  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(v3);
  Hasher._combine(_:)(*(v1 + 80));
  return Hasher._finalize()();
}

Swift::Int sub_100177F2C(uint64_t a1)
{
  Hasher.init(_seed:)();
  AvroUnion.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t AvroUnion.description.getter()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  sub_1000066DC();
  v1 = memcpy(__dst, (v0 + 8), 0x41uLL);
  v9._countAndFlagsBits = AvroValue.description.getter(v1, v2, v3, v4, v5, v6, v7, v8);
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x3A7865646E69202CLL;
  v10._object = 0xE900000000000020;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = sub_10000470C();
  v12._object = 0xEA0000000000203ALL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0xD000000000000011;
}

char *sub_1001780C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001781F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1001780E8()
{
  result = qword_10021F858;
  if (!qword_10021F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F858);
  }

  return result;
}

unint64_t sub_10017813C()
{
  result = qword_10021F860;
  if (!qword_10021F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F860);
  }

  return result;
}

char *sub_1001781F8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100046184(&qword_10021F840, &qword_1001A5968);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_10017246C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_10017831C(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  sub_100004154();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 16 * v13 + 8);
      memcpy(__dst, (*(a2 + 56) + 72 * v13), 0x41uLL);
      v18 = *&__dst[48];
      v19 = *&__dst[16];
      v16 = *&__dst[32];
      v17 = *__dst;
      v15 = __dst[64];

      sub_100163ABC(__dst, __src);
      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      *__src = v17;
      *&__src[16] = v19;
      *&__src[32] = v16;
      *&__src[48] = v18;
      __src[64] = v15;
      memcpy(__dst, a1, sizeof(__dst));
      String.hash(into:)();

      memcpy(v23, __src, sizeof(v23));
      sub_100163ABC(__src, v20);
      _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(__dst);
      sub_100096480(__src);
      sub_100096480(__src);
      v10 ^= Hasher._finalize()();
      v11 = v12;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

LABEL_9:

    Hasher._combine(_:)(v10);
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

      if (v12 >= v9)
      {
        goto LABEL_9;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1001784D8()
{
  result = qword_10021F868;
  if (!qword_10021F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F868);
  }

  return result;
}

unint64_t sub_100178530()
{
  result = qword_10021F870;
  if (!qword_10021F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F870);
  }

  return result;
}

unint64_t sub_100178588()
{
  result = qword_10021F878;
  if (!qword_10021F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F878);
  }

  return result;
}

unint64_t sub_1001785E0()
{
  result = qword_10021F880;
  if (!qword_10021F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F880);
  }

  return result;
}

unint64_t sub_10017865C()
{
  result = qword_10021F888;
  if (!qword_10021F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F888);
  }

  return result;
}

unint64_t sub_1001786B4()
{
  result = qword_10021F890;
  if (!qword_10021F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F890);
  }

  return result;
}

unint64_t sub_10017870C()
{
  result = qword_10021F898;
  if (!qword_10021F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F898);
  }

  return result;
}

unint64_t sub_100178770()
{
  result = qword_10021F8A0;
  if (!qword_10021F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8A0);
  }

  return result;
}

unint64_t sub_1001787C8()
{
  result = qword_10021F8A8;
  if (!qword_10021F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8A8);
  }

  return result;
}

unint64_t sub_100178820()
{
  result = qword_10021F8B0;
  if (!qword_10021F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8B0);
  }

  return result;
}

unint64_t sub_100178878()
{
  result = qword_10021F8B8;
  if (!qword_10021F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8B8);
  }

  return result;
}

unint64_t sub_1001788D0()
{
  result = qword_10021F8C0;
  if (!qword_10021F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8C0);
  }

  return result;
}

uint64_t sub_100178924(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 16))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100178978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1001789E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return sub_10001BF0C(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return sub_10001BF0C(result, a2);
    }
  }

  return result;
}

uint64_t sub_100178A2C(uint64_t a1)
{
  if ((*(a1 + 24) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t sub_100178A80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return sub_10001BF0C(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_10001BF0C(result, a2);
    }
  }

  return result;
}

uint64_t sub_100178AD8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100178B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100178B78(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 25))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 7)
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

uint64_t sub_100178BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_100178C00(uint64_t result, unsigned int a2)
{
  v2 = a2 - 7;
  if (a2 >= 7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 7;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_100178C28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 == 1 || !*(a1 + 24))
    {
      if ((~*(a1 + 8) & 0x3000000000000000) != 0)
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

uint64_t sub_100178C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = xmmword_1001A5970;
      *(result + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_100178CE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 65))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 4)
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

uint64_t sub_100178D24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t sub_100178D94()
{
  result = qword_10021F8C8;
  if (!qword_10021F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8C8);
  }

  return result;
}

unint64_t sub_100178DEC()
{
  result = qword_10021F8D0;
  if (!qword_10021F8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8D0);
  }

  return result;
}

unint64_t sub_100178E44()
{
  result = qword_10021F8D8;
  if (!qword_10021F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8D8);
  }

  return result;
}

unint64_t sub_100178E98()
{
  result = qword_10021F8E0;
  if (!qword_10021F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8E0);
  }

  return result;
}

void *sub_100178F64(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

uint64_t AvroPrimitive.get<A>()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  switch(a4)
  {
    case 5:
      sub_100163C88(a1, a2, a3, 5);
      goto LABEL_8;
    case 6:
      sub_100163C88(a1, a2, a3, 6);
      if (((a2 >> 60) & 3) == 0)
      {
        sub_1001790EC(a1);
      }

      goto LABEL_8;
    case 7:

      return sub_1000051C0(a6, 1, 1, a5);
    default:
LABEL_8:
      v11 = swift_dynamicCast();
      return sub_1000051C0(a6, v11 ^ 1u, 1, a5);
  }
}

uint64_t sub_1001790EC(uint64_t a1)
{
  v7 = sub_100046184(&qword_100217F20, &qword_1001A5520);
  v8 = sub_100163BC8();
  v6[0] = a1;
  v2 = sub_100007534(v6, v7);
  sub_1000F891C(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_100007378(v6);
  return v3;
}

uint64_t AvroSchema.canHold(_:)(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v6 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a1);
    if (v6)
    {

      return 1;
    }

    else
    {
      v9 = a1;
      __chkstk_darwin(v6);
      v8[2] = &v9;
      v7 = sub_100161250(sub_100163CE0, v8, v5);
    }

    return v7;
  }

  else
  {

    return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a1);
  }
}

BOOL AvroSchema.canHold(all:)(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 32);
  for (i = a2 & 0x1FFFFFFFFFFFFFFFLL; v3; --v3)
  {
    v6 = *v4;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = *(i + 16);

      v9 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v6);
      if (v9)
      {
      }

      else
      {
        v13 = v6;
        __chkstk_darwin(v9);
        v12[2] = &v13;
        v10 = sub_100161250(sub_100179530, v12, v8);

        if (!v10)
        {
          return v3 == 0;
        }
      }
    }

    else
    {

      v7 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v6);

      if ((v7 & 1) == 0)
      {
        return v3 == 0;
      }
    }

    ++v4;
  }

  return v3 == 0;
}

BOOL AvroSchema.canHold(nullable:)(uint64_t a1, unint64_t a2)
{
  sub_100046184(&qword_10021F680, &qword_1001A44F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100198F10;
  *(inited + 32) = a1;
  v5 = qword_10021F5B0;

  if (v5 != -1)
  {
    swift_once();
  }

  *(inited + 40) = static AvroSchema.null;

  v6 = AvroSchema.canHold(all:)(inited, a2);
  swift_setDeallocating();
  sub_1001794C8();
  return v6;
}

uint64_t sub_1001794C8()
{
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10017954C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    sub_10017C7E0(v5, v6, v7);
    v4 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
  }

  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
}

uint64_t AvroSchemaEncoder.OutputFormatting.indentation.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*AvroSchemaEncoder.OutputFormatting.indentation.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100179614;
}

uint64_t *sub_100179614(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *result[1] = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Int AvroSchemaEncoder.encodeBytes(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SchemaEncoder();
  result = sub_1001796E8(a1);
  if (!v2)
  {
    sub_1001797F4(result, a2);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1001796E8(uint64_t a1)
{
  swift_allocObject();
  v3 = sub_10017A968();
  swift_beginAccess();
  v4 = *(v3[6] + 16);
  v5 = v3[2];

  sub_10017AA2C(a1);
  sub_10017B870(v3, v4, v5);

  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    a1 = v3[5];
  }

  return a1;
}

void sub_1001797F4(Swift::Int a1, uint64_t a2)
{
  v4 = sub_10017A678(a1);
  sub_10006C9F0(0, v4 & ~(v4 >> 63), 0, _swiftEmptyArrayStorage);
  v6 = v5;
  sub_10017954C(a1, &v140);
  v7 = a2;
  v144 = v140;
  v8 = v141;
  v9 = v142;
  v10 = *(&v140 + 1);
  v138 = a2;
  v139 = v140;
  v136 = 0;
  v137 = v140 + 32;
  v135 = -a2;
  LOBYTE(v11) = v143;
  while (1)
  {
    if (v11 == 0xFF)
    {
LABEL_117:
      sub_10017C778(&v144);
      return;
    }

    v12 = *(v139 + 16);
    v13 = v8;
    v14 = v9;
    v15 = v136;
LABEL_4:
    v16 = v15;
    if (v10 == v12)
    {
      v8 = 0;
      v9 = 0;
      v11 = 255;
      v10 = v12;
      goto LABEL_9;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v139 + 16))
    {
      goto LABEL_121;
    }

    v17 = v10 + 1;
    v18 = v137 + 24 * v10;
    v11 = *(v18 + 16);
    v19 = *v18;
    v20 = *(v18 + 8);
    sub_10017C7E0(*v18, v20, *(v18 + 16));
    v9 = v20;
    v8 = v19;
    v7 = v138;
    v10 = v17;
LABEL_9:
    switch(v11)
    {
      case 1:
        if (v11 == 1 || v11 == 255)
        {
          if (v13)
          {
            v21 = 125;
          }

          else
          {
            v21 = 93;
          }

          v23 = *(v6 + 16);
          v22 = *(v6 + 24);
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v27 = v9;
            v28 = v6;
            v29 = v8;
            sub_10006C9F0(v22 > 1, v23 + 1, 1, v28);
            v9 = v27;
            v8 = v29;
            v7 = v138;
            v6 = v30;
          }

          *(v6 + 16) = v24;
          *(v6 + v23 + 32) = v21;
          if (v7 < 1)
          {
            continue;
          }

          if (v11 == 255)
          {
            goto LABEL_117;
          }

          v25 = v16 - v7;
          if (__OFSUB__(v16, v7))
          {
            __break(1u);
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v25 < 0)
          {
            goto LABEL_119;
          }

          v26 = *(v6 + 24);
          if ((v23 + 2) > (v26 >> 1))
          {
            v31 = v9;
            v32 = v6;
            v33 = v8;
            sub_10006C9F0(v26 > 1, v23 + 2, 1, v32);
            v9 = v31;
            v8 = v33;
            v7 = v138;
            v6 = v34;
          }

          v15 = 0;
          *(v6 + 16) = v23 + 2;
          *(v6 + v24 + 32) = 10;
          v13 = v8;
          v14 = v9;
          if (v25)
          {
            v70 = v23 + 34;
            v71 = v135 + v16;
            do
            {
              v72 = *(v6 + 24);
              if (v70 - 32 >= v72 >> 1)
              {
                v73 = v9;
                v74 = v6;
                v75 = v8;
                sub_10006C9F0(v72 > 1, v70 - 31, 1, v74);
                v9 = v73;
                v8 = v75;
                v7 = v138;
                v6 = v76;
              }

              *(v6 + 16) = v70 - 31;
              *(v6 + v70++) = 32;
              --v71;
            }

            while (v71);
            goto LABEL_116;
          }

          goto LABEL_4;
        }

        if (v13)
        {
          v77 = 125;
        }

        else
        {
          v77 = 93;
        }

        v79 = *(v6 + 16);
        v78 = *(v6 + 24);
        v80 = v78 >> 1;
        v81 = v79 + 1;
        if (v78 >> 1 <= v79)
        {
          v118 = v9;
          v119 = v6;
          v120 = v8;
          sub_10006C9F0(v78 > 1, v79 + 1, 1, v119);
          v9 = v118;
          v8 = v120;
          v7 = v138;
          v6 = v121;
          v78 = *(v121 + 24);
          v80 = v78 >> 1;
        }

        *(v6 + 16) = v81;
        *(v6 + v79 + 32) = v77;
        v82 = v79 + 2;
        if (v80 < (v79 + 2))
        {
          v122 = v9;
          v123 = v8;
          sub_10006C9F0(v78 > 1, v79 + 2, 1, v6);
          v9 = v122;
          v8 = v123;
          v7 = v138;
          v6 = v124;
        }

        *(v6 + 16) = v82;
        *(v6 + v81 + 32) = 44;
        v136 = v16;
        if (v7 >= 1)
        {
          v83 = *(v6 + 24);
          if ((v79 + 3) > (v83 >> 1))
          {
            v129 = v9;
            v130 = v8;
            sub_10006C9F0(v83 > 1, v79 + 3, 1, v6);
            v9 = v129;
            v8 = v130;
            v7 = v138;
            v6 = v131;
          }

          *(v6 + 16) = v79 + 3;
          *(v6 + v82 + 32) = 10;
          if (v16 < 0)
          {
            goto LABEL_125;
          }

          v136 = 0;
          if (!v16)
          {
            continue;
          }

          v84 = v79 + 35;
          v85 = v16;
          do
          {
            v86 = *(v6 + 24);
            if (v84 - 32 >= v86 >> 1)
            {
              v87 = v9;
              v88 = v6;
              v89 = v8;
              sub_10006C9F0(v86 > 1, v84 - 31, 1, v88);
              v9 = v87;
              v8 = v89;
              v7 = v138;
              v6 = v90;
            }

            *(v6 + 16) = v84 - 31;
            *(v6 + v84++) = 32;
            --v85;
          }

          while (v85);
LABEL_78:
          v136 = v16;
        }

        break;
      case 2:
        if (v11 && v11 != 3)
        {
          goto LABEL_128;
        }

        v60 = v9;
        v61 = v8;
        v63 = *(v6 + 16);
        v62 = *(v6 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_10006C9F0(v62 > 1, v63 + 1, 1, v6);
          v6 = v105;
        }

        *(v6 + 16) = v63 + 1;
        *(v6 + v63 + 32) = 34;
        sub_10017A59C(v13, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10006C9F0(0, *(v6 + 16) + 1, 1, v6);
          v6 = v106;
        }

        v9 = v60;
        v65 = *(v6 + 16);
        v64 = *(v6 + 24);
        v66 = v64 >> 1;
        v67 = v65 + 1;
        v7 = v138;
        if (v64 >> 1 <= v65)
        {
          sub_10006C9F0(v64 > 1, v65 + 1, 1, v6);
          v9 = v60;
          v7 = v138;
          v6 = v107;
          v64 = *(v107 + 24);
          v66 = v64 >> 1;
        }

        *(v6 + 16) = v67;
        *(v6 + v65 + 32) = 34;
        v68 = v65 + 2;
        if (v66 < (v65 + 2))
        {
          sub_10006C9F0(v64 > 1, v65 + 2, 1, v6);
          v9 = v60;
          v7 = v138;
          v6 = v108;
        }

        *(v6 + 16) = v68;
        *(v6 + v67 + 32) = 58;
        v136 = v16;
        v8 = v61;
        if (v7 < 1)
        {
          continue;
        }

        v69 = *(v6 + 24);
        if ((v65 + 3) > (v69 >> 1))
        {
          sub_10006C9F0(v69 > 1, v65 + 3, 1, v6);
          v9 = v60;
          v8 = v61;
          v7 = v138;
          v6 = v109;
        }

        *(v6 + 16) = v65 + 3;
        *(v6 + v68 + 32) = 32;
        goto LABEL_78;
      case 3:
        v35 = (v11 - 2) < 2 || v11 == 0;
        v133 = v8;
        v134 = v9;
        if (v35)
        {
          v37 = *(v6 + 16);
          v36 = *(v6 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_10006C9F0(v36 > 1, v37 + 1, 1, v6);
            v6 = v114;
          }

          *(v6 + 16) = v37 + 1;
          *(v6 + v37 + 32) = 34;
          sub_10017A59C(v13, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10006C9F0(0, *(v6 + 16) + 1, 1, v6);
            v6 = v115;
          }

          v9 = v134;
          v39 = *(v6 + 16);
          v38 = *(v6 + 24);
          v40 = v38 >> 1;
          v41 = v39 + 1;
          v7 = v138;
          if (v38 >> 1 <= v39)
          {
            sub_10006C9F0(v38 > 1, v39 + 1, 1, v6);
            v9 = v134;
            v7 = v138;
            v6 = v116;
            v38 = *(v116 + 24);
            v40 = v38 >> 1;
          }

          *(v6 + 16) = v41;
          *(v6 + v39 + 32) = 34;
          v42 = v39 + 2;
          if (v40 < (v39 + 2))
          {
            sub_10006C9F0(v38 > 1, v39 + 2, 1, v6);
            v9 = v134;
            v7 = v138;
            v6 = v117;
          }

          *(v6 + 16) = v42;
          *(v6 + v41 + 32) = 44;
          v136 = v16;
          v8 = v133;
          if (v7 >= 1)
          {
            v43 = *(v6 + 24);
            if ((v39 + 3) > (v43 >> 1))
            {
              sub_10006C9F0(v43 > 1, v39 + 3, 1, v6);
              v8 = v133;
              v9 = v134;
              v7 = v138;
              v6 = v128;
            }

            *(v6 + 16) = v39 + 3;
            *(v6 + v42 + 32) = 10;
            if (v16 < 0)
            {
              goto LABEL_124;
            }

            v136 = 0;
            if (v16)
            {
              v44 = v39 + 35;
              v45 = v16;
              do
              {
                v46 = *(v6 + 24);
                if (v44 - 32 >= v46 >> 1)
                {
                  sub_10006C9F0(v46 > 1, v44 - 31, 1, v6);
                  v8 = v133;
                  v9 = v134;
                  v7 = v138;
                  v6 = v47;
                }

                *(v6 + 16) = v44 - 31;
                *(v6 + v44++) = 32;
                --v45;
              }

              while (v45);
              goto LABEL_78;
            }
          }
        }

        else
        {
          v92 = *(v6 + 16);
          v91 = *(v6 + 24);
          if (v92 >= v91 >> 1)
          {
            sub_10006C9F0(v91 > 1, v92 + 1, 1, v6);
            v6 = v125;
          }

          *(v6 + 16) = v92 + 1;
          *(v6 + v92 + 32) = 34;
          sub_10017A59C(v13, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10006C9F0(0, *(v6 + 16) + 1, 1, v6);
            v6 = v126;
          }

          v94 = *(v6 + 16);
          v93 = *(v6 + 24);
          v95 = v94 + 1;
          v7 = v138;
          v8 = v133;
          v9 = v134;
          if (v94 >= v93 >> 1)
          {
            sub_10006C9F0(v93 > 1, v94 + 1, 1, v6);
            v8 = v133;
            v9 = v134;
            v7 = v138;
            v6 = v127;
          }

          *(v6 + 16) = v95;
          *(v6 + v94 + 32) = 34;
          v136 = v16;
          if (v7 >= 1)
          {
            v25 = v16 - v7;
            if (__OFSUB__(v16, v7))
            {
              goto LABEL_126;
            }

            if (v25 < 0)
            {
              goto LABEL_127;
            }

            v96 = *(v6 + 24);
            if ((v94 + 2) > (v96 >> 1))
            {
              sub_10006C9F0(v96 > 1, v94 + 2, 1, v6);
              v8 = v133;
              v9 = v134;
              v7 = v138;
              v6 = v132;
            }

            v136 = 0;
            *(v6 + 16) = v94 + 2;
            *(v6 + v95 + 32) = 10;
            if (v25)
            {
              v97 = v94 + 34;
              v98 = v25;
              do
              {
                v99 = *(v6 + 24);
                if (v97 - 32 >= v99 >> 1)
                {
                  sub_10006C9F0(v99 > 1, v97 - 31, 1, v6);
                  v8 = v133;
                  v9 = v134;
                  v7 = v138;
                  v6 = v100;
                }

                *(v6 + 16) = v97 - 31;
                *(v6 + v97++) = 32;
                --v98;
              }

              while (v98);
LABEL_116:
              v136 = v25;
            }
          }
        }

        continue;
      default:
        if (v13)
        {
          v48 = 123;
        }

        else
        {
          v48 = 91;
        }

        v50 = *(v6 + 16);
        v49 = *(v6 + 24);
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v101 = v9;
          v102 = v6;
          v103 = v8;
          sub_10006C9F0(v49 > 1, v50 + 1, 1, v102);
          v9 = v101;
          v8 = v103;
          v7 = v138;
          v6 = v104;
        }

        *(v6 + 16) = v51;
        *(v6 + v50 + 32) = v48;
        v136 = v16;
        if (v7 < 1)
        {
          continue;
        }

        v25 = v16 + v7;
        if (__OFADD__(v16, v7))
        {
          goto LABEL_122;
        }

        v52 = *(v6 + 24);
        if ((v50 + 2) > (v52 >> 1))
        {
          v110 = v9;
          v111 = v6;
          v112 = v8;
          sub_10006C9F0(v52 > 1, v50 + 2, 1, v111);
          v9 = v110;
          v8 = v112;
          v7 = v138;
          v6 = v113;
        }

        *(v6 + 16) = v50 + 2;
        *(v6 + v51 + 32) = 10;
        if (v25 < 0)
        {
          goto LABEL_123;
        }

        v136 = 0;
        if (!v25)
        {
          continue;
        }

        v53 = v50 + 34;
        v54 = v25;
        do
        {
          v55 = *(v6 + 24);
          if (v53 - 32 >= v55 >> 1)
          {
            v56 = v9;
            v57 = v6;
            v58 = v8;
            sub_10006C9F0(v55 > 1, v53 - 31, 1, v57);
            v9 = v56;
            v8 = v58;
            v7 = v138;
            v6 = v59;
          }

          *(v6 + 16) = v53 - 31;
          *(v6 + v53++) = 32;
          --v54;
        }

        while (v54);
        goto LABEL_116;
    }
  }

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
}

uint64_t AvroSchemaEncoder.encode(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SchemaEncoder();
  v6 = a1;
  v7 = v5;
  v8 = sub_1001796E8(v6);
  if (!v2)
  {
    sub_1001797F4(v8, a2);

    v7 = static String._fromUTF8Repairing(_:)();
  }

  return v7;
}

Swift::Int _s9SwiftAvro0B13SchemaEncoderV16OutputFormattingV9hashValueSivg_0(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10017A424(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

unint64_t sub_10017A474()
{
  result = qword_10021F8E8;
  if (!qword_10021F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8E8);
  }

  return result;
}

unint64_t sub_10017A4CC()
{
  result = qword_10021F8F0;
  if (!qword_10021F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F8F0);
  }

  return result;
}

void sub_10017A538(uint64_t a1)
{
  v3 = *v1;
  if (!swift_isUniquelyReferenced_nonNull_native() || a1 > *(v3 + 24) >> 1)
  {
    sub_100172208();
    v3 = v4;
  }

  *v1 = v3;
}

uint64_t sub_10017A59C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v3 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = *(*v2 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_10017C710(result, 1);
  v6 = *v2;
  result = _StringGuts.copyUTF8(into:)();
  if ((v7 & 1) == 0)
  {
    v8 = result;

    if (v8 >= v3)
    {
      if (v8 < 1)
      {
LABEL_11:
        *v2 = v6;
        return result;
      }

      v9 = *(v6 + 16);
      v10 = __OFADD__(v9, v8);
      v11 = v9 + v8;
      if (!v10)
      {
        *(v6 + 16) = v11;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10017A678(Swift::Int result)
{
  v1 = 0;
  v2 = (result + 48);
  v3 = *(result + 16) + 1;
  do
  {
    if (!--v3)
    {
      return v1;
    }

    v4 = *v2;
    if (v4 >= 2)
    {
      v6 = *(v2 - 2);
      v7 = *(v2 - 1);
      if (v4 == 2)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          result = String.UTF8View._foreignCount()();
        }

        else if ((v7 & 0x2000000000000000) != 0)
        {
          result = HIBYTE(v7) & 0xF;
        }

        else
        {
          result = v6 & 0xFFFFFFFFFFFFLL;
        }

        v5 = result + 3;
        if (__OFADD__(result, 3))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          result = String.UTF8View._foreignCount()();
        }

        else if ((v7 & 0x2000000000000000) != 0)
        {
          result = HIBYTE(v7) & 0xF;
        }

        else
        {
          result = v6 & 0xFFFFFFFFFFFFLL;
        }

        v5 = result + 2;
        if (__OFADD__(result, 2))
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v5 = 1;
    }

    v2 += 24;
    v8 = __OFADD__(v1, v5);
    v1 += v5;
  }

  while (!v8);
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_10017A738(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      result = a6 == 1 && ((a4 ^ a1) & 1) == 0;
      break;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    case 3:
      if (a6 == 3)
      {
LABEL_6:
        if (a1 == a4 && a2 == a5)
        {
          result = 1;
        }

        else
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
LABEL_12:
        result = 0;
      }

      break;
    default:
      if (a6)
      {
        result = 0;
      }

      else
      {
        result = ((a4 ^ a1) & 1) == 0;
      }

      break;
  }

  return result;
}

void sub_10017A7D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a2;
  switch(a4)
  {
    case 1:
      v5 = 1;
      goto LABEL_9;
    case 2:
      v6 = 2;
      goto LABEL_5;
    case 3:
      v6 = 3;
LABEL_5:
      Hasher._combine(_:)(v6);

      String.hash(into:)();
      break;
    default:
      v5 = 0;
LABEL_9:
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v4 & 1);
      break;
  }
}

Swift::Int sub_10017A87C(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  sub_10017A7D4(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10017A8F4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_10017A7D4(v6, v2, v3, v4);
  return Hasher._finalize()();
}

void *sub_10017A968()
{
  type metadata accessor for CodingUserInfoKey();
  v0[3] = Dictionary.init(dictionaryLiteral:)();
  v0[4] = Dictionary.init(dictionaryLiteral:)();
  v0[6] = _swiftEmptyArrayStorage;
  v0[2] = _swiftEmptyArrayStorage;
  v0[5] = _swiftEmptyArrayStorage;
  swift_beginAccess();
  sub_10017A538(64);
  swift_endAccess();
  return v0;
}

uint64_t sub_10017AAB0(void (*a1)(uint64_t))
{
  swift_beginAccess();
  v3 = *(v1[6] + 16);
  v4 = v1[2];

  a1(v5);
  sub_10017B870(v1, v3, v4);
}

uint64_t sub_10017AB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006550();
  swift_beginAccess();
  sub_100172904();
  v6 = *(*(v3 + 40) + 16);
  sub_1001729A8(v6);
  sub_100004720(v6 + 1);
  v9 = v8 + v6 * v7;
  *(v9 + 32) = xmmword_1001A3410;
  *(v9 + 48) = 0;
  *(v3 + 40) = v8;
  swift_endAccess();
  sub_100006550();
  swift_beginAccess();
  sub_1001728EC();
  v10 = *(*(v3 + 48) + 16);
  sub_100172990(v10);
  v11 = *(v3 + 48);
  *(v11 + 16) = v10 + 1;
  *(v11 + v10 + 32) = 1;
  *(v3 + 48) = v11;
  swift_endAccess();
  type metadata accessor for KeyedContainer(0, a2, a3, v12);

  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t sub_10017AC88@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_100006550();
  swift_beginAccess();
  sub_100172904();
  v4 = *(v1[5] + 16);
  sub_1001729A8(v4);
  v5 = v1[5];
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 24 * v4;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  v1[5] = v5;
  swift_endAccess();
  sub_100006550();
  swift_beginAccess();
  sub_1001728EC();
  v7 = *(v1[6] + 16);
  sub_100172990(v7);
  v8 = v1[6];
  *(v8 + 16) = v7 + 1;
  *(v8 + v7 + 32) = 0;
  v1[6] = v8;
  swift_endAccess();
  v9 = v1[2];
  a1[3] = &unk_100202CB0;
  a1[4] = sub_10017C5CC();
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v2;
}

uint64_t sub_10017AD84@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[3] = &unk_100202D38;
  a1[4] = sub_10017BD24();
  *a1 = v3;
  a1[1] = v1;
}

uint64_t sub_10017ADE4(uint64_t a1, uint64_t a2)
{
  sub_100006550();
  swift_beginAccess();

  sub_100172904();
  v5 = *(*(v2 + 40) + 16);
  sub_1001729A8(v5);
  v6 = *(v2 + 40);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 24 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 48) = 3;
  *(v2 + 40) = v6;
  return swift_endAccess();
}

uint64_t sub_10017AE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = dispatch thunk of CodingKey.stringValue.getter();
  v10 = v9;
  sub_100006550();
  swift_beginAccess();
  sub_100172904();
  v11 = *(*(v5 + 40) + 16);
  sub_1001729A8(v11);
  sub_100004720(v11 + 1);
  v14 = v13 + v11 * v12;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  sub_100008884(v14, v16);
  return sub_10017ADE4(a1, a2);
}

uint64_t sub_10017AF34(unint64_t a1, void *a2)
{
  if (a1 >> 61 == 3)
  {
    v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v7[0] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v7[1] = v5;
    v7[2] = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v8 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    sub_1000967A0(v7, v6);
    sub_10017B588(v7);
    return sub_100161354(v7);
  }

  else if (a1 >> 61)
  {
    v6[3] = *a2;
    v6[4] = sub_10017C9B4();
    v6[0] = a2;

    AvroSchema.encode(to:)(v6, a1);
    return sub_100007378(v6);
  }

  else
  {
    return sub_10017B398(*(a1 + 16));
  }
}

uint64_t sub_10017B028(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v21 = *a2;
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v15 = __chkstk_darwin(v14);
  v16 = *(v8 + 16);
  v16(&v21 - v17, a1, v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (v16)(v13, a1, a3);
    if (swift_dynamicCast())
    {
      return sub_10017B398(v22);
    }

    (v16)(v10, a1, a3);
    if (swift_dynamicCast())
    {
      v28[0] = v22;
      v28[1] = v23;
      v28[2] = v24;
      v29 = v25;
      sub_10017B588(v28);
      return sub_100161354(v28);
    }

    *(&v23 + 1) = v21;
    *&v24 = sub_10017C9B4();
    *&v22 = a2;

    dispatch thunk of Encodable.encode(to:)();
    return sub_100007378(&v22);
  }

  if (v22 >> 61 != 3)
  {
    if (!(v22 >> 61))
    {
      v18 = *(v22 + 16);

      sub_10017B398(v18);
    }

    *(&v23 + 1) = v21;
    *&v24 = sub_10017C9B4();
    *&v22 = a2;

    dispatch thunk of Encodable.encode(to:)();

    return sub_100007378(&v22);
  }

  v20 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v26[0] = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v26[1] = v20;
  v26[2] = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  v27 = *((v22 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

  sub_1000967A0(v26, &v22);
  sub_10017B588(v26);
  if (v4)
  {
    sub_100161354(v26);
  }

  sub_100161354(v26);
}

uint64_t sub_10017B398(char a1)
{
  swift_beginAccess();
  if (*(*(v1 + 40) + 16))
  {
    v3 = sub_100163E7C(a1);
    v5 = v4;
    swift_beginAccess();
    sub_100172904();
    v6 = *(*(v1 + 40) + 16);
    sub_1001729A8(v6);
    v7 = *(v1 + 40);
    *(v7 + 16) = v6 + 1;
    v8 = v7 + 24 * v6;
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    v9 = 3;
  }

  else
  {
    swift_beginAccess();
    sub_100172904();
    v10 = *(*(v1 + 40) + 16);
    sub_1001729A8(v10);
    v11 = *(v1 + 40);
    *(v11 + 16) = v10 + 1;
    v12 = v11 + 24 * v10;
    *(v12 + 32) = xmmword_1001A3410;
    *(v12 + 48) = 0;
    *(v1 + 40) = v11;
    sub_100172904();
    v13 = *(*(v1 + 40) + 16);
    sub_1001729A8(v13);
    v14 = *(v1 + 40);
    *(v14 + 16) = v13 + 1;
    v15 = v14 + 24 * v13;
    *(v15 + 32) = xmmword_1001A7760;
    *(v15 + 48) = 2;
    *(v1 + 40) = v14;
    v16 = sub_100163E7C(a1);
    v18 = v17;
    sub_100172904();
    v19 = *(*(v1 + 40) + 16);
    sub_1001729A8(v19);
    v20 = *(v1 + 40);
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 24 * v19;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
    *(v21 + 48) = 3;
    *(v1 + 40) = v20;
    sub_100172904();
    v22 = *(*(v1 + 40) + 16);
    sub_1001729A8(v22);
    v7 = *(v1 + 40);
    *(v7 + 16) = v22 + 1;
    v8 = v7 + 24 * v22;
    *(v8 + 32) = xmmword_1001A3410;
    v9 = 1;
  }

  *(v8 + 48) = v9;
  *(v1 + 40) = v7;
  return swift_endAccess();
}

uint64_t sub_10017B588(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *v1;
  swift_beginAccess();
  sub_1000967A0(a1, v18);
  sub_10017C7F8(a1, v5, v6, &v19);
  swift_endAccess();
  v8 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {
    *(&v20 + 1) = v7;
    *&v21 = sub_10017C9B4();
    *&v19 = v3;

    AvroRecordSchema.encode(to:)(&v19);
    return sub_100007378(&v19);
  }

  v27 = v2;
  v9 = v19;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  if (static AvroRecordSchema.__derived_struct_equals(_:_:)())
  {
    sub_10017CA08(v9, v8);
    *(&v20 + 1) = v7;
    *&v21 = sub_10017C9B4();
    *&v19 = v3;

    String.encode(to:)();
    return sub_100007378(&v19);
  }

  v11 = swift_allocObject();
  v12 = v24;
  *(v11 + 16) = v23;
  *(v11 + 32) = v12;
  *(v11 + 48) = v25;
  *(v11 + 64) = v26;
  v13 = v11 | 0x6000000000000000;
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = *(a1 + 48);
  v16 = v14 | 0x6000000000000000;
  sub_10017813C();
  swift_allocError();
  *v17 = v13;
  v17[1] = v16;
  swift_willThrow();
  return sub_1000967A0(a1, &v19);
}

uint64_t sub_10017B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = dispatch thunk of CodingKey.stringValue.getter();
  v12 = v11;
  sub_100006550();
  swift_beginAccess();
  sub_100172904();
  v13 = *(*(v6 + 40) + 16);
  sub_1001729A8(v13);
  sub_100004720(v13 + 1);
  v16 = v15 + v13 * v14;
  *(v16 + 32) = v10;
  *(v16 + 40) = v12;
  sub_100008884(v16, v18);
  return sub_10017AA70(a1, a3, a5);
}

void sub_10017B870(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  while (1)
  {
    v6 = a1[6];
    v7 = *(v6 + 16);
    if (v7 <= a2)
    {
      a1[2] = a3;

      return;
    }

    swift_beginAccess();
    if (!v7)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1[6] = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001780B4();
      v6 = v18;
    }

    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = v9 - 1;
    v11 = *(v6 + v10 + 32);
    *(v6 + 16) = v10;
    a1[6] = v6;
    swift_endAccess();
    if (v11)
    {
      swift_beginAccess();
      v12 = a1[5];
      v13 = swift_isUniquelyReferenced_nonNull_native();
      a1[5] = v12;
      if ((v13 & 1) == 0)
      {
        sub_100172208();
        v12 = v19;
        a1[5] = v19;
      }

      v14 = *(v12 + 16);
      if (v14 >= *(v12 + 24) >> 1)
      {
        sub_100172208();
        v12 = v20;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 24 * v14;
      *(v15 + 32) = xmmword_1001A3410;
    }

    else
    {
      swift_beginAccess();
      v12 = a1[5];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      a1[5] = v12;
      if ((v16 & 1) == 0)
      {
        sub_100172208();
        v12 = v21;
        a1[5] = v21;
      }

      v17 = *(v12 + 16);
      if (v17 >= *(v12 + 24) >> 1)
      {
        sub_100172208();
        v12 = v22;
      }

      *(v12 + 16) = v17 + 1;
      v15 = v12 + 24 * v17;
      *(v15 + 32) = 0;
      *(v15 + 40) = 0;
    }

    *(v15 + 48) = 1;
    a1[5] = v12;
    swift_endAccess();
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10017BA8C()
{

  return v0;
}

uint64_t sub_10017BACC()
{
  sub_10017BA8C();

  return _swift_deallocClassInstance(v0, 56, 7);
}

_BYTE *sub_10017BB00(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10017BBF4()
{
  result = qword_10021F9B8;
  if (!qword_10021F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9B8);
  }

  return result;
}

unint64_t sub_10017BC4C()
{
  result = qword_10021F9C0;
  if (!qword_10021F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9C0);
  }

  return result;
}

unint64_t sub_10017BD24()
{
  result = qword_10021F9C8;
  if (!qword_10021F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9C8);
  }

  return result;
}

uint64_t sub_10017C158(uint64_t result, uint64_t a2)
{
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v2;
    return sub_10017ADE4(result, a2);
  }

  return result;
}

uint64_t sub_10017C198(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(*v3, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v3;
    return sub_10017AA70(result, a2, a3);
  }

  return result;
}

unint64_t sub_10017C5CC()
{
  result = qword_10021F9D0;
  if (!qword_10021F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9D0);
  }

  return result;
}

void *sub_10017C638(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 72 * a1), __src, 0x41uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10017C6AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_10017C710(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_10006C9F0(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

uint64_t sub_10017C778(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021F9D8, &qword_1001A7AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10017C7E0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 0xFE) == 2)
  {
  }

  return result;
}

uint64_t sub_10017C7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v4;
  v10 = sub_100005B74(a2, a3);
  v12 = v27[2];
  v13 = (v11 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v10;
  v16 = v11;
  sub_100046184(qword_10021F9E8, &qword_1001A7AA8);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v14);
  if (result)
  {
    result = sub_100005B74(a2, a3);
    if ((v16 & 1) == (v18 & 1))
    {
      v15 = result;
      goto LABEL_5;
    }

LABEL_10:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v16)
  {
    v19 = v27[7] + 56 * v15;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    v25 = *(v19 + 48);
    v26 = *(a1 + 16);
    *v19 = *a1;
    *(v19 + 16) = v26;
    *(v19 + 32) = *(a1 + 32);
    *(v19 + 48) = *(a1 + 48);
  }

  else
  {
    sub_10017C6AC(v15, a2, a3, a1, v27);

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v25 = 0;
    v24 = 0uLL;
  }

  *a4 = v20;
  *(a4 + 8) = v21;
  *(a4 + 16) = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v24;
  *(a4 + 48) = v25;
  *v4 = v27;
  return result;
}

unint64_t sub_10017C9B4()
{
  result = qword_10021F9E0;
  if (!qword_10021F9E0)
  {
    type metadata accessor for SchemaEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021F9E0);
  }

  return result;
}

uint64_t sub_10017CA08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10017CA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t BiomeSearchTablesProvider.__allocating_init(environment:feedbackConfig:feedbackStreamDescriptors:)()
{
  sub_1000088A4();
  swift_allocObject();
  return BiomeSearchTablesProvider.init(environment:feedbackConfig:feedbackStreamDescriptors:)();
}

uint64_t BiomeSearchTablesProvider.init(environment:feedbackConfig:feedbackStreamDescriptors:)()
{
  sub_1000088A4();
  v4 = type metadata accessor for BiomeSearchTablesConfig(0);
  v9 = v4;
  v10 = &off_100203138;
  v5 = sub_1000205C4(&v8);
  v6 = type metadata accessor for FeedbackStoreConfig();
  (*(*(v6 - 8) + 32))(v5, v1, v6);
  *(v5 + *(v4 + 20)) = v0;
  return BiomeTablesProvider.init(config:environment:)(&v8, v3, v2);
}

uint64_t BiomeTablesProvider.init(config:environment:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  sub_100008C84(a1, v3 + 16);
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return v3;
}

uint64_t BiomeTablesProvider.deinit()
{
  sub_100007378((v0 + 16));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t BiomeSearchTablesProvider.__deallocating_deinit()
{
  v0 = BiomeTablesProvider.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void *sub_10017CD54()
{
  v1 = type metadata accessor for FeedbackStreamDescriptor();
  sub_100003650();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000407C();
  v7 = (v5 - v6);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = *(v0 + *(type metadata accessor for BiomeSearchTablesConfig(0) + 20));
  v12 = *(v11 + 16);
  if (!v12)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = *(v3 + 16);
  v13 = v3 + 16;
  v15 = (v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
  v34 = *(v13 + 56);
  v35 = v14;
  v16 = (v13 + 72);
  v33 = enum case for FeedbackStreamDescriptor.session(_:);
  v17 = (v13 - 8);
  v18 = _swiftEmptyArrayStorage;
  v30 = v13;
  do
  {
    v19 = v35;
    v35(v10, v15, v1);
    v19(v7, v10, v1);
    v20 = (*v16)(v7, v1);
    v21 = *v17;
    if (v20 == v33)
    {
      v21(v10, v1);
      v21(v7, v1);
    }

    else
    {
      v21(v7, v1);
      v22 = FeedbackStreamDescriptor.tableName.getter();
      v31 = v23;
      v32 = v22;
      v21(v10, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10001B77C();
        v18 = v27;
      }

      v24 = v18[2];
      if (v24 >= v18[3] >> 1)
      {
        sub_10001B77C();
        v18 = v28;
      }

      v18[2] = v24 + 1;
      v25 = &v18[2 * v24];
      v26 = v31;
      v25[4] = v32;
      v25[5] = v26;
    }

    v15 += v34;
    --v12;
  }

  while (v12);
  return v18;
}

uint64_t sub_10017CFC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v66 = a3;
  type metadata accessor for BiomeStreamConfig();
  sub_100003650();
  v67 = v6;
  v68 = v5;
  __chkstk_darwin(v5);
  sub_10000407C();
  v69 = v7 - v8;
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_100046184(&qword_10021FC98, &qword_1001A7F68);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = type metadata accessor for FeedbackStreamDescriptor();
  sub_100003650();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000407C();
  v65 = (v19 - v20);
  __chkstk_darwin(v21);
  v23 = &v56 - v22;
  __chkstk_darwin(v24);
  v26 = &v56 - v25;

  FeedbackStreamDescriptor.init(tableName:)();
  if (sub_100008D0C(v14, 1, v15) == 1)
  {
    sub_10017D840(v14);
    v70 = 0;
    v71 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v70 = 0xD000000000000015;
    v71 = 0x80000001001B3BA0;
    v27._countAndFlagsBits = a1;
    v27._object = a2;
    String.append(_:)(v27);
    v28 = v70;
    v29 = v71;
    sub_10017D8A8();
    swift_allocError();
    *v30 = v28;
    v30[1] = v29;
    return swift_willThrow();
  }

  else
  {
    (*(v17 + 32))(v26, v14, v15);
    v32 = v72;
    FeedbackStoreConfig.getConfig(forStream:)();
    if (v32)
    {
      return (*(v17 + 8))(v26, v15);
    }

    else
    {
      v33 = *(v17 + 104);
      LODWORD(v72) = enum case for FeedbackStreamDescriptor.session(_:);
      v64 = v33;
      v33(v23);
      FeedbackStoreConfig.getConfig(forStream:)();
      v63 = *(v17 + 8);
      v63(v23, v15);
      v34 = BiomeStreamConfig.tableName.getter();
      v61 = v35;
      v62 = v34;
      sub_100046184(&qword_10021FCA8, &qword_1001A7F70);
      v36 = swift_allocObject();
      v60 = v11;
      v37 = v36;
      *(v36 + 16) = xmmword_100198F10;
      v38 = FeedbackStreamDescriptor.rawValue.getter();
      v58 = v39;
      v59 = v38;
      v40 = BiomeStreamConfig.messageSchemaName.getter();
      v57 = v41;
      v42 = BiomeStreamConfig.storeConfig.getter();
      v43 = v58;
      v37[4] = v59;
      v37[5] = v43;
      v44 = v57;
      v37[6] = v40;
      v37[7] = v44;
      v37[8] = v42;
      v45 = v65;
      v64(v65, v72, v15);
      v72 = FeedbackStreamDescriptor.rawValue.getter();
      v47 = v46;
      v63(v45, v15);
      v48 = BiomeStreamConfig.messageSchemaName.getter();
      v50 = v49;
      v51 = BiomeStreamConfig.storeConfig.getter();
      v37[9] = v72;
      v37[10] = v47;
      v37[11] = v48;
      v37[12] = v50;
      v37[13] = v51;
      v52 = v66;
      v66[3] = &type metadata for BiomeSearchTablesConfig.TableConfig;
      v52[4] = &off_10021FCB0;
      v53 = v61;
      *v52 = v62;
      v52[1] = v53;
      v52[2] = v37;
      v54 = v68;
      v55 = *(v67 + 8);
      v55(v69, v68);
      v55(v60, v54);
      return (v63)(v26, v15);
    }
  }
}

double _s14SearchFeedback0A13SessionCursorC18timeFrameGuidelineSNySdGvpfi_0()
{
  if (qword_10021FA98 != -1)
  {
    swift_once();
  }

  return *&static BiomeStoreEnumerator.Constants.defaultTimeRange;
}

uint64_t variable initialization expression of BiomeDatabaseWriter.feedbackStreamWriters()
{
  type metadata accessor for SessionType();
  sub_100046184(&qword_10021FAB8, &qword_1001A7F00);
  sub_10017D560();

  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t sub_10017D560()
{
  result = qword_100217588;
  if (!qword_100217588)
  {
    type metadata accessor for SessionType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100217588);
  }

  return result;
}

uint64_t variable initialization expression of SessionFeedback.closingDate@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();

  return sub_1000051C0(a1, 1, 1, v2);
}

uint64_t variable initialization expression of WritableSessionDatabase.locker()
{
  type metadata accessor for Locker();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t variable initialization expression of WritableSessionDatabase.sessions()
{
  type metadata accessor for SessionFeedback(0);

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_10017D764(uint64_t a1)
{
  type metadata accessor for FeedbackStoreConfig();
  if (v1 <= 0x3F)
  {
    sub_10017D7E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10017D7E8(uint64_t a1)
{
  if (!qword_10021FC68)
  {
    type metadata accessor for FeedbackStreamDescriptor();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10021FC68);
    }
  }
}

uint64_t sub_10017D840(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021FC98, &qword_1001A7F68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10017D8A8()
{
  result = qword_10021FCA0;
  if (!qword_10021FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCA0);
  }

  return result;
}

void *SearchSessionTableColumn.columnType.getter(char a1)
{
  v1 = &type metadata for Double;
  switch(a1)
  {
    case 1:
      v1 = &type metadata for Data;
      sub_10012F954();
      break;
    case 2:
    case 3:
    case 7:
      v1 = &type metadata for String;
      break;
    case 4:
      v1 = &type metadata for Bool;
      break;
    case 5:
    case 6:
      v1 = sub_100046184(&qword_1002181F0, &qword_10019C610);
      sub_10017D9FC();
      break;
    default:
      return v1;
  }

  return v1;
}

unint64_t sub_10017D9FC()
{
  result = qword_10021EDD0;
  if (!qword_10021EDD0)
  {
    sub_1000461CC(&qword_1002181F0, &qword_10019C610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDD0);
  }

  return result;
}

uint64_t SearchSessionTableColumn.propertyName.getter(char a1)
{
  result = 0x536E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
      result = sub_100003F38();
      break;
    case 3:
      result = 0x6469754772657375;
      break;
    case 4:
      result = 0x656C62616E457564;
      break;
    case 5:
      result = 0x437972746E756F63;
      break;
    case 6:
      result = sub_100004730();
      break;
    case 7:
      result = 0x6F6973726556736FLL;
      break;
    default:
      return result;
  }

  return result;
}

SearchFeedback::SearchSessionTableColumn_optional __swiftcall SearchSessionTableColumn.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100202D90, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t SearchSessionTableColumn.rawValue.getter(char a1)
{
  result = 29556;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973736573;
      break;
    case 2:
      result = sub_100003F38();
      break;
    case 3:
      result = 0x6975675F72657375;
      break;
    case 4:
      result = 0x6C62616E655F7564;
      break;
    case 5:
      result = 0x5F7972746E756F63;
      break;
    case 6:
      result = sub_100004730();
      break;
    case 7:
      result = 0x625F6D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

SearchFeedback::SearchSessionTableColumn_optional sub_10017DCA8@<W0>(Swift::String *a1@<X0>, SearchFeedback::SearchSessionTableColumn_optional *a2@<X8>)
{
  result.value = SearchSessionTableColumn.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10017DCD8@<X0>(uint64_t *a1@<X8>)
{
  result = SearchSessionTableColumn.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String __swiftcall SearchSessionTable.getModuleName()()
{
  v0 = 0x6F69737365735F70;
  v1 = 0xE90000000000006ELL;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SearchSessionTable.__allocating_init(config:environment:)()
{
  sub_100007FB8();
  swift_allocObject();
  sub_1000092B4(v0, v3);
  v1 = sub_10017DE2C();
  return sub_100007E8C(v1);
}

uint64_t SearchSessionTable.init(config:environment:)()
{
  sub_100007FB8();
  sub_1000092B4(v0, v3);
  v1 = sub_10017DE2C();
  return sub_100007E8C(v1);
}

uint64_t sub_10017DE2C()
{
  sub_100007FB8();
  sub_1000092B4(v3, v1 + 48);
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  v4 = SQLiteBaseVTab.init(style:)(0);
  return sub_100007E8C(v4);
}

uint64_t sub_10017DE88()
{
  v0 = SQLiteBaseVTab.deinit();
  sub_100007378((v0 + 48));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SearchSessionTable.__deallocating_deinit()
{
  v0 = sub_10017DE88();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_10017DEF0()
{
  type metadata accessor for SearchSessionTable(0);
  v2 = sub_10000AB28();
  v3 = sub_100187F40(v2);
  if (v1)
  {
    return v0;
  }

  sub_1000092B4(v3 + 48, v16);

  v4 = v17;
  v5 = v18;
  sub_100007534(v16, v17);
  (*(v5 + 16))(v15, *(v0 + 16), *(v0 + 24), v4, v5);
  v7 = v15[4];
  sub_100007534(v15, v15[3]);
  v8 = sub_10000AB28();
  v9(v8, v7);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v10 = _arrayForceCast<A, B>(_:)();

  if (*(v10 + 16))
  {
    sub_1000092B4(v10 + 32, v14);

    v11 = v14[4];
    sub_100007534(v14, v14[3]);
    v12 = sub_10000AB28();
    v0 = v13(v12, v11);
    sub_100007378(v14);
    sub_100007378(v15);
    sub_100007378(v16);
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t SearchSessionConnection.checkPlanOrdering(_:)(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 24);
    if (!v1)
    {
      goto LABEL_10;
    }

    if (!*(v1 + 4))
    {
      v2 = *v1;
      if (v2 <= 7)
      {
        if ((v2 & 0x80000000) == 0)
        {
          if (!*(&off_100202E70 + v2 + 32))
          {
            *(result + 60) = 1;
          }

          return result;
        }

        __break(1u);
LABEL_10:
        __break(1u);
      }
    }
  }

  return result;
}

void SearchSessionConnection.checkPlanConstraints(_:)(unsigned int *result)
{
  v1 = *result;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
LABEL_3:
  v8 = v6;
  v9 = 8 * v6;
  v10 = 12 * v6;
  while (v1 != v8)
  {
    if (v8 >= v1)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    v11 = *(result + 1);
    if (!v11)
    {
      goto LABEL_45;
    }

    v12 = (v11 + v10);
    v13 = *v12;
    if (v13 <= 7)
    {
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v14 = *(&off_100202EC0 + v13 + 32);
      if ((v14 - 2) >= 6)
      {
        if (v14)
        {
          if (!*(v12 + 5))
          {

            return;
          }
        }

        else if (*(v12 + 5))
        {
          v15 = *(v12 + 4);
          HIDWORD(v16) = v15 - 4;
          LODWORD(v16) = v15 - 4;
          switch((v16 >> 2))
          {
            case 0u:
            case 7u:
              v17 = v5;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                goto LABEL_26;
              }

              v3 = 1;
              break;
            case 1u:
            case 3u:
              v17 = v5;
              v18 = v3;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v3 = v18;
              v4 = 1;
              if (isUniquelyReferenced_nonNull_native)
              {
                v4 = 1;
              }

              else
              {
LABEL_26:
                sub_1000088BC();
                v31 = v7;
                v33 = v32;
                sub_10017EDF8(0, v30 + 1, 1, v31, &qword_100216160, &qword_10019A598, v34);
                v3 = v33;
                v7 = v35;
              }

              break;
            default:
              goto LABEL_11;
          }

          v20 = v17;
          v22 = v7[2];
          v21 = v7[3];
          v23 = v22 + 1;
          if (v22 >= v21 >> 1)
          {
            v27 = v7;
            v43 = v20;
            v28 = v3;
            sub_10017EDF8(v21 > 1, v22 + 1, 1, v27, &qword_100216160, &qword_10019A598, sub_100117CA8);
            v23 = v22 + 1;
            v3 = v28;
            v20 = v43;
            v7 = v29;
          }

          v7[2] = v23;
          *(v7 + v22 + 32) = v15;
          v24 = __OFADD__(v20, 1);
          v5 = v20 + 1;
          if (v24)
          {
            goto LABEL_44;
          }

          v25 = *(result + 4);
          if (!v25)
          {
            goto LABEL_47;
          }

          v6 = v8 + 1;
          v26 = v25 + v9;
          *v26 = v5;
          *(v26 + 4) = 1;
          goto LABEL_3;
        }
      }
    }

LABEL_11:
    v9 += 8;
    v10 += 12;
    ++v8;
  }

  *(result + 8) = *(&off_100202EE8 + v4 + v3 + 4);
  v36 = v7[2];
  if (v36 > 0x7FFFFFFE)
  {
    goto LABEL_43;
  }

  v37 = v36 + 1;
  v38 = sqlite3_malloc(v36 + 1);
  if (!v38)
  {
    goto LABEL_46;
  }

  v45 = v38;
  *(result + 6) = v38;
  if (v36)
  {
    v44 = v36 + 1;
    sub_10017EFF8(0, v36, 0);
    v39 = 32;
    while (1)
    {
      v40 = *(v7 + v39);
      if (v40 < 0)
      {
        break;
      }

      v42 = _swiftEmptyArrayStorage[2];
      v41 = _swiftEmptyArrayStorage[3];
      if (v42 >= v41 >> 1)
      {
        sub_10017EFF8((v41 > 1), v42 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v42 + 1;
      *(&_swiftEmptyArrayStorage[4] + v42) = v40;
      ++v39;
      if (!--v36)
      {

        v37 = v44;
        goto LABEL_37;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_37:
  sub_10017F018(&off_100202F20);
  memcpy(v45, &_swiftEmptyArrayStorage[4], v37);

  result[14] = 1;
}

uint64_t SearchSessionConnection.__allocating_init(_:argc:argv:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_allocObject();
  return sub_10017E59C(a1, v4, a3, &qword_100220288, &unk_1001A8260, &qword_100220290, &qword_1001A89F0);
}

uint64_t sub_10017E59C(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  *(v7 + 40) = 100;
  sub_100046184(a4, a5);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    if (a2 == 3)
    {
      return SQLiteBaseVTab.Connection.init(_:argc:argv:)(v12, 3, a3);
    }

    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  sub_10017F550();
  swift_allocError();
  *v15 = v14;
  swift_willThrow();

  sub_100046184(a6, a7);
  return swift_deallocPartialClassInstance();
}

uint64_t SearchFeedbackConnection.__deallocating_deinit()
{

  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 48, 7);
}

double *sub_10017E6CC()
{
  swift_allocObject();
  v0 = sub_10000AB28();
  return sub_10017E714(v0);
}

double *sub_10017E714(uint64_t a1)
{
  v3 = v1;
  if (qword_10021FA98 != -1)
  {
    swift_once();
  }

  *(v1 + 72) = static BiomeStoreEnumerator.Constants.defaultTimeRange;
  type metadata accessor for SearchSessionConnection(0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    sub_10017F550();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_100187FEC();
  if (v2)
  {
LABEL_7:

    type metadata accessor for SearchSessionCursor(0);
    swift_deallocPartialClassInstance();
    return v3;
  }

  v8 = v6;
  v9 = v7;
  sub_100006D74();
  v13 = sub_100188078(v10);
  v15 = v14;
  ObjectType = swift_getObjectType();
  (*(v9 + 8))(ObjectType, v9);
  v31 = v8;
  v18 = v17;
  v19 = swift_getObjectType();
  (*(v18 + 40))(v30, v13, v15, v19, v18);
  v20 = v31;
  swift_unknownObjectRelease();

  sub_100006D74();
  *(v1 + 72) = sub_10018811C();
  *(v1 + 80) = v21;
  sub_100006D74();
  v22 = sub_10017DEF0();
  v24 = v23;
  sub_100006D74();
  v26 = sub_1001881AC(v25);
  v27 = v3[9];
  v28 = v3[10];
  sub_1000092B4(v30, v29);
  type metadata accessor for SessionEnumerator();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + 8) = sub_100180D70(v22, v24, v26, v20, v9, v29, v27, v28);

  v3 = sub_10018823C(v5);
  sub_100007378(v30);

  swift_unknownObjectRelease();
  return v3;
}

void SearchSessionCursor.readFilterParameters(idxNum:idxStr:arguments:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (a2)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = a2;
      v8 = a3 + 32;
      do
      {
        v9 = *v7++;
        v10 = SQLiteArgument.getDouble()();
        HIDWORD(v11) = v9 - 4;
        LODWORD(v11) = v9 - 4;
        switch((v11 >> 2))
        {
          case 0u:
            if (v4 < v10)
            {
              v4 = v10 + 0.0;
              if (v10 != INFINITY)
              {
                *&v4 += (*&v4 >> 63) | 1;
              }
            }

            break;
          case 1u:
            if (v10 <= v5)
            {
              v5 = v10;
            }

            break;
          case 3u:
            if (v10 < v5)
            {
              v12 = 0.0 - v10;
              if (v12 != INFINITY)
              {
                *&v12 += (*&v12 >> 63) | 1;
              }

              v5 = -v12;
            }

            break;
          case 7u:
            if (v4 <= v10)
            {
              v4 = v10;
            }

            break;
          default:
            break;
        }

        v8 += 8;
        --v6;
      }

      while (v6);
    }
  }

  v13 = 0.0;
  if (v4 >= 0.0)
  {
    v14 = v4;
  }

  else
  {
    v14 = 0.0;
  }

  if (v5 >= 0.0)
  {
    v13 = v5;
  }

  if (v13 < v14)
  {
    v13 = v14;
  }

  if (v14 > v13)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v3 + 64);
    v16 = ClosedRange<>.fromUnixToReferenceTime.getter(v14, v13);
    v18 = v17;
    swift_beginAccess();
    *(v15 + 24) = v16;
    *(v15 + 32) = v18;
  }
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchSessionCursor.setValue(forColumn:on:)(Swift::String forColumn, SQLiter::SQLiteContext on)
{
  object = forColumn._object;
  countAndFlagsBits = forColumn._countAndFlagsBits;

  v5._countAndFlagsBits = countAndFlagsBits;
  v5._object = object;
  switch(SearchSessionTableColumn.init(rawValue:)(v5).value)
  {
    case SearchFeedback_SearchSessionTableColumn_session:
      BiomeStoreEnumerator.setPayload(on:)(on);
      break;
    case SearchFeedback_SearchSessionTableColumn_client:
      sub_100181290(on.context._rawValue);
      break;
    case SearchFeedback_SearchSessionTableColumn_userGuid:
      v6 = sub_100006560();
      sub_100181880(v6);
      break;
    case SearchFeedback_SearchSessionTableColumn_duEnabled:
      sub_100006560();
      sub_1001813C8();
      break;
    case SearchFeedback_SearchSessionTableColumn_countryCode:
      v8 = sub_100006560();
      sub_10018141C(v8);
      break;
    case SearchFeedback_SearchSessionTableColumn_locale:
      v9 = sub_100006560();
      sub_100181450(v9);
      break;
    case SearchFeedback_SearchSessionTableColumn_systemBuild:
      v7 = sub_100006560();
      sub_10018181C(v7);
      break;
    case SearchFeedback_SearchSessionTableColumn_unknownDefault:
      SQLiteContext.setNull()();
      break;
    default:
      sub_100006560();
      sub_100181BE0();
      break;
  }

  return 0;
}

uint64_t SearchFeedbackCursor.deinit()
{
  swift_weakDestroy();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SearchFeedbackCursor.__deallocating_deinit()
{
  SearchFeedbackCursor.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void sub_10017EDF8(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_100005DE0();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_100046184(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * v16 - 64;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), v13);
    goto LABEL_15;
  }

  if (v10 + 0x4000000000000000 >= 0)
  {
    sub_10000381C();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10017EF0C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_100005DE0();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_100046184(a5, a6);
      v16 = swift_allocObject();
      j__malloc_size(v16);
      sub_100008084();
      v16[2] = v14;
      v16[3] = v17;
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    sub_10000381C();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_10017EFF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100185920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_10017F018(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10018265C(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  if ((*(v5 + 24) >> 1) - v6 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + v6 + 32), (a1 + 32), v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v7 = *(v5 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v5 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

unint64_t sub_10017F0D4()
{
  result = qword_10021FCE0;
  if (!qword_10021FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCE0);
  }

  return result;
}

unint64_t sub_10017F128(void *a1)
{
  a1[1] = sub_10017F160();
  a1[2] = sub_10017F1B4();
  result = sub_10017F208();
  a1[3] = result;
  return result;
}

unint64_t sub_10017F160()
{
  result = qword_10021FCE8;
  if (!qword_10021FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCE8);
  }

  return result;
}

unint64_t sub_10017F1B4()
{
  result = qword_10021FCF0;
  if (!qword_10021FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCF0);
  }

  return result;
}

unint64_t sub_10017F208()
{
  result = qword_10021FCF8;
  if (!qword_10021FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FCF8);
  }

  return result;
}

unint64_t sub_10017F260()
{
  result = qword_10021FD00;
  if (!qword_10021FD00)
  {
    sub_1000461CC(&qword_10021FD08, &qword_1001A80E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD00);
  }

  return result;
}

unint64_t sub_10017F2C4(uint64_t a1)
{
  result = sub_10017F0D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10017F2F0()
{
  result = qword_10021FD10;
  if (!qword_10021FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021FD10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchSessionTableColumn(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10017F550()
{
  result = qword_100220260;
  if (!qword_100220260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220260);
  }

  return result;
}

uint64_t BaseBiomeTable.init(config:environment:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000092B4(a1, v3 + 48);
  *(v3 + 88) = a2;
  *(v3 + 96) = a3;
  v7 = SQLiteVTab.init(style:)(0);
  sub_100007378(a1);
  return v7;
}

uint64_t BaseBiomeTable.deinit()
{
  v0 = SQLiteVTab.deinit();
  sub_100007378((v0 + 48));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BaseBiomeTable.getSQLiteBridge()()
{
  v1 = *(v0 + 96);
  swift_getObjectType();
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  v3 = sub_1000082A8();
  v4 = v2(v3);
  swift_unknownObjectRelease();
  return v4;
}

double BaseBiomeTable.getQueryTimeFrameGuideline()()
{
  v1 = *(v0 + 96);
  swift_getObjectType();
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  v3 = sub_1000082A8();
  v4 = v2(v3);
  swift_unknownObjectRelease();
  return v4;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BaseBiomeTable.getMessageName(forTable:storeIndex:)(Swift::String forTable, Swift::Int storeIndex)
{
  sub_100007534((v2 + 48), *(v2 + 72));
  v5 = sub_100003F4C();
  v6(v5);
  if (v3)
  {
    goto LABEL_5;
  }

  sub_100007534(v23, v23[3]);
  v7 = sub_1000088D4();
  v8(v7);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v9 = _arrayForceCast<A, B>(_:)();

  if (storeIndex < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v9 + 16) <= storeIndex)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100005728(v10, v11, v12, v13, v14, v15, v16, v17, v22[0]);

  v18 = v22[4];
  sub_100007534(v22, v22[3]);
  v19 = sub_10000AB28();
  v20(v19, v18);
  sub_100007378(v22);
  sub_100007378(v23);
LABEL_5:
  v10 = sub_10000450C();
LABEL_8:
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void *BaseBiomeTable.getStoreReader(at:forTable:)(unint64_t a1)
{
  sub_100007534(v1 + 6, v1[9]);
  v4 = sub_100003F4C();
  v5(v4);
  if (v2)
  {
    return v1;
  }

  sub_100007534(v37, v37[3]);
  v6 = sub_1000088D4();
  v7(v6);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v8 = _arrayForceCast<A, B>(_:)();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8 + 16) > a1)
  {
    sub_100005728(result, v10, v11, v12, v13, v14, v15, v16, v34[0]);

    v17 = v36;
    sub_100007534(v34, v35);
    v18 = sub_10000AB28();
    v20 = v19(v18, v17);
    v22 = v21;
    v23 = v35;
    v24 = v36;
    sub_100007534(v34, v35);
    v25 = (*(v24 + 24))(v23, v24);
    v26 = type metadata accessor for RawPayload();
    v27 = BMUseCaseLegacy;
    v28 = objc_allocWithZone(BMStreamDatastoreReader);
    v29 = v27;
    v30 = v25;
    v1 = v28;
    v31 = sub_100180808(v20, v22, v30, v26, v29);
    if (v31)
    {
      v1 = v31;
    }

    else
    {
      v32 = sub_10017F550();
      sub_100004248(&type metadata for BiomeTableError, v32);
      *v33 = 3;
      swift_willThrow();
    }

    sub_100007378(v34);
    sub_100007378(v37);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t BaseBiomeTable.BiomeConnection.init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  *(v3 + 40) = 100;
  sub_100003710();
  sub_100003710();
  v6 = sub_100004744();
  type metadata accessor for BaseBiomeTable(v6, v7, v8, v9);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    if (a2 == 3)
    {
      return SQLiteVTab.BaseConnection.init(_:argc:argv:)(v10, 3, a3);
    }

    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v13 = sub_10017F550();
  sub_100004248(&type metadata for BiomeTableError, v13);
  *v14 = v12;
  swift_willThrow();

  v15 = sub_100004744();
  type metadata accessor for BaseBiomeTable.BiomeConnection(v15, v16, v17, v18);
  return swift_deallocPartialClassInstance();
}

uint64_t BaseBiomeTable.BiomeConnection.bestIndex(_:)(uint64_t a1)
{
  sub_1000037B0();
  if (((*(v3 + 240))() & 1) == 0)
  {
    return 19;
  }

  sub_1000037B0();
  v5 = (*(v4 + 248))(a1);
  sub_100005B40(v5);
  result = 0;
  *(a1 + 72) = *(v1 + 40);
  return result;
}

uint64_t BaseBiomeTable.BiomeConnection.estimatedRows.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t BaseBiomeTable.BiomeConnection.getSQLiteBridge()()
{
  sub_100005D28();
  sub_100003710();
  type metadata accessor for BaseBiomeTable(0, v2, *(v1 + 200), v3);
  sub_100006888();
  if (!v0)
  {
    BaseBiomeTable.getSQLiteBridge()();
    sub_10000F74C();
  }

  return sub_10000450C();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BaseBiomeTable.BiomeConnection.getMessageName(forStoreIndex:)(Swift::Int forStoreIndex)
{
  sub_100005D28();
  sub_100003710();
  type metadata accessor for BaseBiomeTable(0, v5, *(v4 + 200), v6);
  static SQLiteVTab.getTable(forConnection:)(v1);
  if (!v2)
  {
    BaseBiomeTable.getMessageName(forTable:storeIndex:)(v1[1], forStoreIndex);
    sub_10000F74C();
  }

  v7 = sub_10000450C();
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

double BaseBiomeTable.BiomeConnection.getQueryTimeFrameGuideline()()
{
  sub_100005D28();
  sub_100003710();
  type metadata accessor for BaseBiomeTable(0, v3, *(v2 + 200), v4);
  sub_100006888();
  if (!v0)
  {
    TimeFrame = BaseBiomeTable.getQueryTimeFrameGuideline()();
  }

  return TimeFrame;
}

void *BaseBiomeTable.BiomeConnection.getReader(forStoreIndex:)(void *a1)
{
  sub_100005D28();
  sub_100003710();
  type metadata accessor for BaseBiomeTable(0, v5, *(v4 + 200), v6);
  static SQLiteVTab.getTable(forConnection:)(v1);
  if (!v2)
  {
    a1 = BaseBiomeTable.getStoreReader(at:forTable:)(a1);
  }

  return a1;
}

uint64_t BaseBiomeTable.BiomeCursor.init(_:)(uint64_t a1)
{
  v3 = v1;
  sub_100005D28();
  sub_100003710();
  v4 = sub_100004744();
  type metadata accessor for BaseBiomeTable.BiomeConnection(v4, v5, v6, v7);
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    v12 = sub_10017F550();
    v13 = sub_100004248(&type metadata for BiomeTableError, v12);
    sub_10000828C(v13, v14);

    goto LABEL_6;
  }

  v9 = v8;

  v10 = BaseBiomeTable.BiomeConnection.getSQLiteBridge()();
  if (v2)
  {

LABEL_6:
    v15 = sub_100004744();
    type metadata accessor for BaseBiomeTable.BiomeCursor(v15, v16, v17, v18);
    swift_deallocPartialClassInstance();
    return v3;
  }

  *(v3 + 32) = v10;
  *(v3 + 40) = v11;
  *(v3 + 48) = BaseBiomeTable.BiomeConnection.getQueryTimeFrameGuideline()();
  *(v3 + 56) = v20;
  v3 = SQLiteVTab.BaseCursor.init(_:)(v9);

  return v3;
}

uint64_t BaseBiomeTable.BiomeCursor.deinit()
{
  v0 = SQLiteBaseVTab.Cursor.deinit();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t BaseBiomeTable.BiomeCursor.filter(idxNum:idxStr:arguments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = SQLiteBaseVTab.Cursor.filter(idxNum:idxStr:arguments:)();
  if (!v3 && !result)
  {
    sub_1000037B0();
    (*(v8 + 296))(a1, a2, a3);
    sub_1000037B0();
    (*(v9 + 304))();
    return 0;
  }

  return result;
}

uint64_t BaseBiomeTable.__allocating_init(config:environment:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v5 = sub_10000AB28();
  return BaseBiomeTable.init(config:environment:)(v5, a2, a3);
}

Swift::String __swiftcall BaseBiomeTable.getModuleName()()
{
  v0 = 0x6D61657274735F70;
  v1 = 0xE800000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t BaseBiomeTable.register(with:)(uint64_t a1)
{
  sub_1000037B0();
  v5 = (*(v4 + 448))();
  v7 = v6;
  (*(*a1 + 152))(v1, &protocol witness table for SQLiteBaseVTab, v5, v6);
  if (v2)
  {
  }

  v8 = v1[9];
  v9 = v1[10];
  sub_100007534(v1 + 6, v8);
  result = (*(v9 + 8))(v8, v9);
  v11 = 0;
  v19 = *(result + 16);
  v24 = result;
  for (i = (result + 40); ; i += 2)
  {
    if (v19 == v11)
    {
      goto LABEL_9;
    }

    if (v11 >= *(v24 + 16))
    {
      break;
    }

    v14 = *(i - 1);
    v13 = *i;

    _StringGuts.grow(_:)(37);

    v15._countAndFlagsBits = v14;
    v15._object = v13;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x20474E49535520;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = v5;
    v17._object = v7;
    String.append(_:)(v17);
    (*(*a1 + 176))(&v20, 0xD00000000000001ALL, 0x80000001001B3CC0, 0);

    SQLiteStatement.execute()();
    if (v18)
    {

      v23 = v21;
      sub_100062E58(&v23);

LABEL_9:
    }

    v22 = v21;
    sub_100062E58(&v22);

    ++v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001804EC()
{
  sub_100007378((v0 + 48));

  return swift_unknownObjectRelease();
}

uint64_t BaseBiomeTable.__deallocating_deinit()
{
  v0 = BaseBiomeTable.deinit();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t BaseBiomeTable.BiomeConnection.__deallocating_deinit()
{
  v0 = SQLiteBaseVTab.Connection.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t BaseBiomeTable.BiomeCursor.__allocating_init(_:)()
{
  swift_allocObject();
  v0 = sub_10000AB28();
  return BaseBiomeTable.BiomeCursor.init(_:)(v0);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BaseBiomeTable.BiomeCursor.getMessageName(forStoreIndex:)(Swift::Int forStoreIndex)
{
  sub_100005D28();
  v2 = (*(v1 + 120))();
  if (!v2)
  {
    goto LABEL_5;
  }

  if (!sub_100007078(v2, v3, v4, v5))
  {

LABEL_5:
    v7 = sub_10017F550();
    v8 = sub_100004248(&type metadata for BiomeTableError, v7);
    sub_10000828C(v8, v9);
    goto LABEL_6;
  }

  v6 = sub_10000AB28();
  BaseBiomeTable.BiomeConnection.getMessageName(forStoreIndex:)(v6);
  sub_10000F74C();

LABEL_6:
  v10 = sub_10000450C();
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

void *BaseBiomeTable.BiomeCursor.getReader(forStoreIndex:)()
{
  sub_100005D28();
  v2 = (*(v1 + 120))();
  if (!v2)
  {
    goto LABEL_5;
  }

  if (!sub_100007078(v2, v3, v4, v5))
  {

LABEL_5:
    v7 = sub_10017F550();
    v8 = sub_100004248(&type metadata for BiomeTableError, v7);
    sub_10000828C(v8, v9);
    return v0;
  }

  v6 = sub_10000AB28();
  v0 = BaseBiomeTable.BiomeConnection.getReader(forStoreIndex:)(v6);

  return v0;
}

uint64_t BaseBiomeTable.BiomeCursor.__deallocating_deinit()
{
  v0 = BaseBiomeTable.BiomeCursor.deinit();

  return _swift_deallocClassInstance(v0, 64, 7);
}

id sub_100180808(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = String._bridgeToObjectiveC()();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v12 = [v6 initWithStream:v10 config:a3 eventDataClass:ObjCClassFromMetadata useCase:a5];

  return v12;
}

unint64_t sub_1001808EC()
{
  result = qword_100220298[0];
  if (!qword_100220298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100220298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BiomeTableError(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Int sub_100180AFC(uint64_t a1)
{
  Hasher.init(_seed:)();
  SessionDBFeatureFlags.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_100180B3C()
{
  result = qword_100220428;
  if (!qword_100220428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220428);
  }

  return result;
}

unint64_t sub_100180B94()
{
  result = qword_100220430;
  if (!qword_100220430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220430);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadFrom(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionDBFeatureFlags(_BYTE *result, int a2, int a3)
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

uint64_t sub_100180D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  *(v8 + 144) = 0;
  *(v8 + 152) = 1;
  *(v8 + 160) = 0u;
  *(v8 + 176) = 0u;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  result = sub_1000092B4(a6, v8 + 104);
  v16 = a7 + -1200.0;
  if (v16 > a8)
  {
    __break(1u);
  }

  else
  {
    v18 = a6[3];
    v17 = a6[4];
    sub_100007534(a6, v18);
    v19 = (*(*(v17 + 8) + 8))(v18);
    v21 = BiomeStoreEnumerator.init(reader:sqliteBridge:enumerationRange:messageName:)(a3, a4, a5, v19, v20, v16, a8);
    sub_100007378(a6);
    return v21;
  }

  return result;
}

void *sub_100180E68()
{
  v1 = v0;
  v2 = sub_100046184(&qword_100220688, &qword_1001A8588);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for BiomeSessionWrapper(0);
  __chkstk_darwin(v5);
  v18[0] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v7 = BiomeStoreEnumerator.getNextEvent()();
    v8 = v7;
    if (!v7)
    {
      break;
    }

    v9 = [v7 eventBody];
    if (v9)
    {
      v10 = v9;
      sub_10018C83C(v10, v4);
      sub_1000051C0(v4, 0, 1, v5);
      v11 = v18[0];
      sub_100181A30(v4, v18[0]);
      *(v0 + 160) = RawPayload.schemitized(with:)(v0 + 104);
      *(v0 + 168) = v12;
      swift_unknownObjectRelease();
      [v8 timestamp];
      *(v0 + 144) = v13;
      *(v0 + 152) = 0;
      v14 = SessionType.canonicalIdentifier.getter();
      v16 = v15;

      *(v1 + 176) = v14;
      *(v1 + 184) = v16;

      sub_10002719C(v11);
      return v8;
    }
  }

  return v8;
}

uint64_t sub_100181070()
{
  if (!*(v0 + 160))
  {
    return 0;
  }

  v1 = *(v0 + 168);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 24);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

double sub_100181100@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 160))
  {
    v6 = *(v3 + 168);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 56);
    swift_unknownObjectRetain();
    v8(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    *(a3 + 48) = 0;
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = -256;
  }

  return result;
}

void sub_1001811C8(uint64_t a1, uint64_t a2)
{
  sub_100181100(a1, a2, v12);
  if (!v2)
  {
    if (BYTE1(v14) == 255)
    {
      sub_10000F94C(v12, &qword_10021D078, &qword_1001A2370);
    }

    else
    {
      sub_100006570(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v12[2], v13, v14, v15[0], v15[1], v15[2]);
      if (BYTE1(v14) != 8)
      {
        sub_10002633C(v12);
        sub_100181A94();
        swift_allocError();
        *v11 = 0;
        swift_willThrow();
      }

      sub_10002633C(v15);
    }
  }
}

uint64_t sub_100181290(sqlite3_context *a1)
{
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);

  SQLiteContext.setString(_:destructor:)(v4, v3, 1, a1);
}

void sub_1001812EC()
{
  sub_100181100(0x656C62616E457564, 0xE900000000000064, v10);
  if (!v0)
  {
    if (BYTE1(v12) == 255)
    {
      sub_10000F94C(v10, &qword_10021D078, &qword_1001A2370);
    }

    else
    {
      sub_100006570(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v10[2], v11, v12, v13[0], v13[1], v13[2]);
      if (BYTE1(v12) != 6)
      {
        sub_10002633C(v10);
        sub_100181A94();
        swift_allocError();
        *v9 = 0;
        swift_willThrow();
      }

      sub_10002633C(v13);
    }
  }
}

void sub_1001813C8()
{
  sub_1001812EC();
  if (!v0)
  {
    if (v1 == 2)
    {
      SQLiteContext.setNull()();
    }

    else
    {
      SQLiteContext.setBool(_:)(v1 & 1);
    }
  }
}

unint64_t sub_100181478()
{
  sub_1001811C8(0x746E656761, 0xE500000000000000);
  if (v1)
  {
    return v0;
  }

  v0 = v2;
  v4 = v3;
  if (!v3)
  {
    return v0;
  }

  sub_10013DDB8(40, 0xE100000000000000, v2, v3);
  if (v5)
  {
    goto LABEL_7;
  }

  v6 = String.index(after:)();
  v0 = sub_100181778(v6, v0, v4);
  sub_100004754();
  result = sub_10018168C(v7, v8, v9, v10);
  if (v12)
  {
    goto LABEL_7;
  }

  if (result >> 14 < v0 >> 14)
  {
    __break(1u);
  }

  else
  {
    sub_100004754();
    Substring.subscript.getter();
    v14 = v13;
    v0 = v15;

    __chkstk_darwin(v16);
    sub_100003F74();
    sub_100181AE8(v17, v18, v19, v20, v21, v22);
    if (v23)
    {
LABEL_7:

      sub_100181A94();
      swift_allocError();
      *v24 = 1;
      swift_willThrow();
      return v0;
    }

    result = Substring.index(after:)();
    if (v14 >> 14 >= result >> 14)
    {
      sub_100003F74();
      Substring.subscript.getter();

      v0 = static String._fromSubstring(_:)();

      return v0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018168C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  while (1)
  {
    if ((a3 ^ a4) < 0x4000)
    {
      return 0;
    }

    if (Substring.subscript.getter() == a1 && v8 == a2)
    {
      break;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return a3;
    }

    a3 = Substring.index(after:)();
  }

  return a3;
}

unint64_t sub_100181778(unint64_t result, uint64_t a2, unint64_t a3)
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

void sub_10018181C(sqlite3_context *a1)
{
  v3 = sub_100181478();
  if (!v1)
  {
    if (v4)
    {
      SQLiteContext.setString(_:destructor:)(v3, v4, 1, a1);
    }

    else
    {
      SQLiteContext.setNull()();
    }
  }
}

void sub_1001818B8(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  sub_1001811C8(a2, a3);
  if (!v3)
  {
    if (v6)
    {
      SQLiteContext.setString(_:destructor:)(v5, v6, 1, a1);
    }

    else
    {
      SQLiteContext.setNull()();
    }
  }
}

uint64_t sub_100181954()
{

  sub_100007378((v0 + 104));
  swift_unknownObjectRelease();
}

id *sub_100181994()
{
  v0 = BiomeStoreEnumerator.deinit();

  sub_100007378(v0 + 13);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1001819DC()
{
  v0 = sub_100181994();

  return _swift_deallocClassInstance(v0, 192, 7);
}

uint64_t sub_100181A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BiomeSessionWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100181A94()
{
  result = qword_100220690;
  if (!qword_100220690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220690);
  }

  return result;
}

uint64_t sub_100181AE8(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a6;
  while (1)
  {
    if ((a4 ^ a3) < 0x4000)
    {
      return 0;
    }

    a4 = Substring.index(before:)();
    v14[0] = Substring.subscript.getter();
    v14[1] = v9;
    v10 = a1(v14);
    if (v6)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return a4;
    }
  }

  return a4;
}

void sub_100181BE0()
{
  v1 = COERCE_DOUBLE((*(*v0 + 240))());
  if (v2)
  {
    SQLiteContext.setNull()();
  }

  else
  {
    Double.fromReferenceToUnixTime.getter(v1);
    SQLiteContext.setDouble(_:)(v3);
  }
}

uint64_t Double.fromReferenceToUnixTime.getter(double a1)
{
  if (qword_10021FA80 != -1)
  {
    result = sub_1000088EC(&qword_10021FA80);
  }

  if (*&qword_1002206A8 >= a1)
  {
    if (qword_10021FA70 != -1)
    {
      return sub_100006D80(&qword_10021FA70);
    }
  }

  else
  {
    if (qword_10021FA88 != -1)
    {
      result = sub_100004768(&qword_10021FA88);
    }

    if (*&qword_1002206B0 <= a1)
    {
      if (qword_10021FA78 != -1)
      {
        return sub_1000065A0(&qword_10021FA78);
      }
    }

    else if (qword_10021FA90 != -1)
    {
      return sub_100003F88(&qword_10021FA90);
    }
  }

  return result;
}

double ClosedRange<>.fromUnixToReferenceTime.getter(double a1, double a2)
{
  if (qword_10021FA70 != -1)
  {
    sub_100006D80(&qword_10021FA70);
  }

  v4 = *&qword_100220698;
  if (*&qword_100220698 >= a1)
  {
    if (qword_10021FA80 != -1)
    {
      sub_1000088EC(&qword_10021FA80);
    }

    a1 = *&qword_1002206A8;
    goto LABEL_15;
  }

  if (qword_10021FA78 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    if (*&qword_1002206A0 <= a1)
    {
      if (qword_10021FA88 != -1)
      {
        sub_100004768(&qword_10021FA88);
      }

      a1 = *&qword_1002206B0;
    }

    else
    {
      if (qword_10021FA90 != -1)
      {
        sub_100003F88(&qword_10021FA90);
      }

      a1 = a1 - *&qword_1002206B8;
    }

LABEL_15:
    if (v4 >= a2)
    {
      if (qword_10021FA80 != -1)
      {
        sub_1000088EC(&qword_10021FA80);
      }

      v5 = *&qword_1002206A8;
    }

    else
    {
      if (qword_10021FA78 != -1)
      {
        sub_1000065A0(&qword_10021FA78);
      }

      if (*&qword_1002206A0 <= a2)
      {
        if (qword_10021FA88 != -1)
        {
          sub_100004768(&qword_10021FA88);
        }

        v5 = *&qword_1002206B0;
      }

      else
      {
        if (qword_10021FA90 != -1)
        {
          sub_100003F88(&qword_10021FA90);
        }

        v5 = a2 - *&qword_1002206B8;
      }
    }

    if (a1 <= v5)
    {
      break;
    }

    __break(1u);
LABEL_31:
    sub_1000065A0(&qword_10021FA78);
  }

  return a1;
}

uint64_t sub_100181FB0()
{
  v0 = BiomeStoreEnumerator.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_1001820B0(uint64_t a1, uint64_t (*a2)(double), double (*a3)(uint64_t), double *a4)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2(v9);
  v13 = a3(v12);
  result = (*(v8 + 8))(v11, v7);
  *a4 = v13;
  return result;
}

double sub_1001821A4()
{
  if (qword_10021FA70 != -1)
  {
    swift_once();
  }

  v0 = *&qword_100220698;
  if (qword_10021FA80 != -1)
  {
    swift_once();
  }

  result = v0 - *&qword_1002206A8;
  *&qword_1002206B8 = v0 - *&qword_1002206A8;
  return result;
}

uint64_t Double.fromUnixToReferenceTime.getter(double a1)
{
  if (qword_10021FA70 != -1)
  {
    result = sub_100006D80(&qword_10021FA70);
  }

  if (*&qword_100220698 >= a1)
  {
    if (qword_10021FA80 != -1)
    {
      return sub_1000088EC(&qword_10021FA80);
    }
  }

  else
  {
    if (qword_10021FA78 != -1)
    {
      result = sub_1000065A0(&qword_10021FA78);
    }

    if (*&qword_1002206A0 <= a1)
    {
      if (qword_10021FA88 != -1)
      {
        return sub_100004768(&qword_10021FA88);
      }
    }

    else if (qword_10021FA90 != -1)
    {
      return sub_100003F88(&qword_10021FA90);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchStoreEnumerator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100182444()
{
  result = qword_100220820;
  if (!qword_100220820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220820);
  }

  return result;
}

uint64_t UploadStateFileStore.uploadedAtBookmarks()()
{
  result = sub_10018B8D4();
  if (v0)
  {
    return v1;
  }

  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = 0;
  v1 = _swiftEmptyArrayStorage;
LABEL_5:
  v6 = (v3 + 40 + 16 * v5);
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    ++v5;
    v7 = *v6;
    v6 += 16;
    if (v7)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v1 = _swiftEmptyArrayStorage;
      goto LABEL_5;
    }
  }

  if (!*(v3 + 16))
  {
    goto LABEL_19;
  }

  v8 = *(v3 + 40);

  if (v8)
  {
    return v1;
  }

  type metadata accessor for SessionBookmark();
  swift_allocObject();
  SessionBookmark.init()();
  v10 = v9;
  sub_10008C4AC(0, _swiftEmptyArrayStorage);
  result = sub_10004229C(_swiftEmptyArrayStorage);
  if (result < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = sub_10004229C(_swiftEmptyArrayStorage);
  v12 = __OFADD__(v11, 1);
  result = v11 + 1;
  if (!v12)
  {
    sub_1001826C4(result, 1);
    sub_100182764(0, 0, 1, v10);
    return v1;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_10018265C(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_10006D244(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5);
    *v2 = v8;
  }
}

uint64_t sub_1001826C4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_100182764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a4;
  v7 = a3;
  v8 = a2;
  v6 = a1;
  v13 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v11 = v10 + 32;
  v9 = v10 + 32 + 8 * a1;
  type metadata accessor for SessionBookmark();
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v7, v12);
  v12 = v7 - v12;
  if (v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = (v9 + 8 * v7);
  if (!v12)
  {
    goto LABEL_12;
  }

  v9 = v13 >> 62;
  if (!(v13 >> 62))
  {
    result = *(v10 + 16);
    goto LABEL_6;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(result, v8))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  sub_100115B50((v11 + 8 * v8), result - v8, v5);
  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *(v10 + 16);
  }

  if (__OFADD__(result, v12))
  {
    goto LABEL_23;
  }

  *(v10 + 16) = result + v12;
LABEL_12:
  if (v7 < 1)
  {
  }

  else
  {
    v16 = v10 + 8 * v6;
    *(v16 + 32) = v4;
    if (v16 + 40 < v5)
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t BiomeDatabaseReader.__allocating_init(fileManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1001828FC(id a1, unint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  while (1)
  {
    v9 = [a1 bookmark];
    if (!v9)
    {

      return;
    }

    v10 = v9;
    v11 = [a1 nextEvent];
    if (!v11)
    {

      return;
    }

    v12 = v11;
    sub_100183AE8(v10, v11, a2, a3, a4);
    if (v4)
    {
      break;
    }
  }
}

void *sub_1001829EC(id a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v8 = [a1 bookmark];
    if (!v8)
    {

      return 0;
    }

    v9 = v8;
    v10 = [a1 nextEvent];
    if (!v10)
    {

      return 0;
    }

    v11 = v10;
    v12 = sub_1001851C4(v9, v10, a2, a3);
    if (v3)
    {
      break;
    }

    v4 = v12;

    if (v4)
    {

      return v4;
    }
  }

  return v4;
}

void sub_100182AEC()
{
  sub_100006A3C();
  v3 = v2;
  do
  {
    v4 = [v0 bookmark];
    if (!v4)
    {
      break;
    }

    v5 = v4;
    v6 = [v0 nextEvent];
    if (!v6)
    {
      v7 = v5;
LABEL_9:

      break;
    }

    v7 = v6;
    v8 = v3(v5, v6);
    if (v1)
    {

      goto LABEL_9;
    }

    v9 = v8;
  }

  while (!v9);
  sub_100007FD4();
}

id sub_100182BCC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003664();
  v10 = v9 - v8;
  if (*(a1 + 16))
  {
    return [v2 newEnumeratorFromBookmark:?];
  }

  Date.init(timeIntervalSinceNow:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v11 = [v2 newEnumeratorFromStartTime:?];
  (*(v6 + 8))(v10, v4);
  return v11;
}

void sub_100182CD8()
{
  sub_100006A3C();
  v44 = v1;
  type metadata accessor for BiomeStreamConfig();
  sub_100003650();
  v38 = v3;
  v39 = v2;
  __chkstk_darwin(v2);
  sub_100003664();
  v41 = v5 - v4;
  v6 = type metadata accessor for FeedbackStreamDescriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v40 = &v35 - v10;
  v11 = type metadata accessor for FeedbackStoreConfig();
  sub_100003650();
  v42 = v12;
  __chkstk_darwin(v13);
  sub_100003664();
  v16 = v15 - v14;
  v17 = *(v0 + 16);
  sub_100046184(&qword_100220938, &qword_1001A8730);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100197F20;
  v20 = enum case for FeedbackStreamDescriptor.session(_:);
  v21 = *(v7 + 104);
  v21(v19 + v18, enum case for FeedbackStreamDescriptor.session(_:), v6);
  v22 = v17;
  v23 = v44;
  FeedbackStoreConfig.init(fileManager:streams:)();
  if (!v23)
  {
    v44 = v11;
    v24 = v40;
    v21(v40, v20, v6);
    v36 = FeedbackStreamDescriptor.rawValue.getter();
    v37 = v25;
    v26 = *(v7 + 8);
    v26(v24, v6);
    v21(v43, v20, v6);
    v27 = v41;
    FeedbackStoreConfig.getConfig(forStream:)();
    v26(v43, v6);
    v28 = BiomeStreamConfig.storeConfig.getter();
    (*(v38 + 8))(v27, v39);
    v29 = type metadata accessor for RawPayload();
    v30 = BMUseCaseLegacy;
    objc_allocWithZone(BMStreamDatastoreReader);
    v31 = v30;
    if (!sub_100180808(v36, v37, v28, v29, v31))
    {
      v32 = sub_100185740();
      v33 = sub_100004248(&type metadata for SessionDatabaseError, v32);
      sub_100011BE4(xmmword_10019B690, v33, v34);
    }

    (*(v42 + 8))(v16, v44);
  }

  sub_100007FD4();
}

void sub_1001830B4()
{
  sub_100006A3C();
  type metadata accessor for BiomeStreamConfig();
  sub_100003650();
  v39 = v3;
  v40 = v2;
  __chkstk_darwin(v2);
  sub_100003664();
  v6 = v5 - v4;
  type metadata accessor for FeedbackStoreConfig();
  sub_100003650();
  v41 = v7;
  __chkstk_darwin(v8);
  sub_100003664();
  v9 = sub_100046184(&qword_10021FC98, &qword_1001A7F68);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for FeedbackStreamDescriptor();
  sub_100003650();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100003664();
  v18 = v17 - v16;
  SessionType.biomeStreamDescriptor.getter();
  if (sub_100008D0C(v11, 1, v12) == 1)
  {
    sub_10000F94C(v11, &qword_10021FC98, &qword_1001A7F68);
    v19 = sub_100185740();
    v20 = sub_100004248(&type metadata for SessionDatabaseError, v19);
    sub_100011BE4(xmmword_10019BC20, v20, v21);
  }

  else
  {
    (*(v14 + 32))(v18, v11, v12);
    v22 = *(v0 + 16);
    sub_100046184(&qword_100220938, &qword_1001A8730);
    v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100197F20;
    (*(v14 + 16))(v24 + v23, v18, v12);
    v25 = v22;
    FeedbackStoreConfig.init(fileManager:streams:)();
    if (!v1)
    {
      v26 = FeedbackStreamDescriptor.rawValue.getter();
      v28 = v27;
      FeedbackStoreConfig.getConfig(forStream:)();
      v38 = BiomeStreamConfig.storeConfig.getter();
      (*(v39 + 8))(v6, v40);
      v40 = type metadata accessor for RawPayload();
      v31 = BMUseCaseLegacy;
      objc_allocWithZone(BMStreamDatastoreReader);
      v32 = v31;
      if (sub_100180808(v26, v28, v38, v40, v32))
      {
        v33 = sub_100007824();
        v34(v33);
        (*(v14 + 8))(v18, v12);
        goto LABEL_6;
      }

      v35 = sub_100185740();
      v36 = sub_100004248(&type metadata for SessionDatabaseError, v35);
      sub_100011BE4(xmmword_10019B690, v36, v37);
      v29 = sub_100007824();
      v30(v29);
    }

    (*(v14 + 8))(v18, v12);
  }

LABEL_6:
  sub_100007FD4();
}

void sub_100183494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v5 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for Date();
  sub_100003650();
  v80 = v12;
  __chkstk_darwin(v13);
  sub_100003664();
  v16 = v15 - v14;
  type metadata accessor for SessionType();
  sub_100003650();
  v78 = v18;
  v79 = v17;
  __chkstk_darwin(v17);
  sub_100003664();
  v21 = v20 - v19;
  v22 = [objc_allocWithZone(PBDataWriter) init];
  if (v22)
  {
    v76 = v21;
    v77 = a1;
    v23 = v22;
    sub_1001830B4();
    if (v3)
    {
    }

    else
    {
      v28 = v24;
      v73 = v16;
      v29 = v77;
      swift_beginAccess();
      v30 = (*(v29 + 16) + OBJC_IVAR___SRRawPayload_data);
      v31 = *v30;
      v32 = v30[1];
      sub_100014924(*v30, v32);
      sub_100186E38(v31, v32, v23);
      v33 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate;
      Date.timeIntervalSinceReferenceDate.getter();
      v35 = v34;
      Date.timeIntervalSinceReferenceDate.getter();
      if (v35 <= v36)
      {
        v39 = v36;
        v67 = v33;
        v68 = v10;
        v69 = v11;
        v70 = 0;
        v66 = v7;
        v75 = v23;

        v72 = v28;
        v40 = [v28 fetchEventsFrom:v35 to:v39];
        sub_100046184(&qword_100220948, &qword_1001A8738);
        v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = sub_10004229C(v41);
        v43 = 0;
        LODWORD(v74) = 1;
        while (v42 != v43)
        {
          if ((v41 & 0xC000000000000001) != 0)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v44 = *(v41 + 8 * v43 + 32);
          }

          v45 = v44;
          v46 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return;
          }

          v47 = [v44 eventBody];
          if (v47)
          {
            v48 = v47;
            v49 = *&v47[OBJC_IVAR___SRRawPayload_data];
            v74 = *&v47[OBJC_IVAR___SRRawPayload_data + 8];
            sub_100014924(v49, v74);
            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100014A40(v49, v74);
            v50 = isa;
            [v75 writeData:isa forTag:200];

            [v45 timestamp];
            LODWORD(v74) = 0;
            v43 = v46;
          }

          else
          {

            ++v43;
          }
        }

        v51 = v75;
        v52 = [v75 data];
        if (v52)
        {
          v53 = v52;
          sub_100026410(v53);
          v54 = objc_allocWithZone(type metadata accessor for RawPayload());
          RawPayload.init(with:)();
          v55 = v77;
          (*(v78 + 16))(v76, v77 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type, v79);
          v56 = v69;
          (*(v80 + 16))(v73, v55 + v67, v69);
          v57 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
          swift_beginAccess();
          sub_10002DF94(v55 + v57, v68);
          type metadata accessor for SessionFeedback(0);
          swift_allocObject();

          v58 = v70;
          SessionFeedback.init(session:sessionId:type:creationDate:closingDate:)();
          if (v58)
          {
          }

          else
          {
            v62 = v72;
            if (v74)
            {
              v63 = 1;
              v64 = v81;
              v65 = v66;
            }

            else
            {
              v65 = v66;
              Date.init(timeIntervalSinceReferenceDate:)();
              v63 = 0;
              v64 = v81;
            }

            sub_1000051C0(v65, v63, 1, v56);
            sub_10018D72C(v64, v65);

            sub_10000F94C(v65, &qword_100217050, &qword_100199180);
          }
        }

        else
        {
          v59 = sub_10018722C();
          v60 = sub_100004248(&type metadata for BiomeReadError, v59);
          sub_10000E078(v60, v61);
        }
      }

      else
      {
        v37 = sub_10018722C();
        sub_100004248(&type metadata for BiomeReadError, v37);
        *v38 = 260;
        swift_willThrow();
      }
    }
  }

  else
  {
    v25 = sub_10018722C();
    v26 = sub_100004248(&type metadata for BiomeReadError, v25);
    sub_10000E078(v26, v27);
  }
}

void sub_100183AE8(void *a1, void *a2, unint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v11 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v11 - 8);
  v13 = v30 - v12;
  v14 = type metadata accessor for Date();
  v15 = __chkstk_darwin(v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 eventBody];
  if (v18)
  {
    v30[1] = a5;
    v31 = a4;
    v19 = v18;
    [a2 timestamp];
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_1000051C0(v13, 1, 1, v14);
    type metadata accessor for SessionFeedback(0);
    swift_allocObject();
    v20 = SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(v19, v17, v13);
    if (!v5)
    {
      v21 = v20;
      v22 = *(v20 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId);
      v23 = *(v20 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId + 8);

      [a2 timestamp];
      v25 = v24;
      type metadata accessor for SessionBookmark();
      swift_allocObject();
      v26 = sub_100190070(a1, v22, v23, v25);
      v32 = v26;
      __chkstk_darwin(v26);
      v30[-2] = &v32;
      v27 = a1;
      if (sub_100185C14(sub_1001874F4, &v30[-4], a3))
      {
      }

      else
      {

        v31(v21, v26);
      }
    }
  }

  else
  {
    v28 = [a2 error];
    sub_10018722C();
    swift_allocError();
    *v29 = v28;
    v29[1] = 0;
    swift_willThrow();
  }
}

void sub_100183E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A3C();
  a19 = v22;
  a20 = v23;
  v55 = v20;
  v52 = v24;
  v53 = v25;
  v60 = v26;
  v28 = v27;
  v54 = type metadata accessor for Date();
  sub_100003650();
  v30 = v29;
  __chkstk_darwin(v31);
  sub_100003664();
  v34 = v33 - v32;
  type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  sub_100003650();
  v56 = v36;
  v57 = v35;
  __chkstk_darwin(v35);
  sub_100003664();
  v39 = v38 - v37;
  a10 = sub_10018582C(v28);
  sub_100185D10(&a10);
  if (!v21)
  {
    v40 = a10;
    v59 = a10[2];
    if (!v59)
    {
LABEL_8:

      sub_100007FD4();
      return;
    }

    v41 = 0;
    v42 = v56;
    v58 = *(v57 + 24);
    v43 = a10 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v51 = v30 + 8;
    while (v41 < v40[2])
    {
      v44 = sub_1001870E8(&v43[*(v42 + 72) * v41], v39);
      v45 = *(v39 + v58);
      a10 = v45;
      __chkstk_darwin(v44);
      *(&v51 - 2) = &a10;
      if ((sub_100185C14(sub_10018714C, (&v51 - 4), v60) & 1) == 0)
      {
        v46 = *(v39 + *(v57 + 20));
        Date.init()();
        sub_100183494(v46, v39, v34);
        v48 = v47;
        v49 = sub_10000AD64();
        v50(v49);

        v52(v48, v45);

        v42 = v56;
      }

      ++v41;
      sub_10018716C(v39);
      if (v59 == v41)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001840D8(void *a1, unint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  type metadata accessor for SessionType();
  type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  sub_10017D560();
  var48[0] = Dictionary.init(dictionaryLiteral:)();

  while (1)
  {
    v10 = [a1 bookmark];
    if (!v10)
    {

LABEL_8:
      sub_100183E04(var48[0], a2, a3, a4, v14, v15, v16, v17, v19, var48[0], var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
    }

    v11 = v10;
    v12 = [a1 nextEvent];
    if (!v12)
    {

      goto LABEL_8;
    }

    v13 = v12;
    sub_10018425C(v11, v12, var48, a2, v4, a3, a4);
    if (v5)
    {
      break;
    }
  }
}

void sub_10018425C(void *a1, void *a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v62 = a7;
  v63 = a6;
  v64 = a5;
  v66 = a4;
  v69 = a1;
  v70 = a3;
  v9 = sub_100046184(&qword_100220950, &unk_1001A8750);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  __chkstk_darwin(v15);
  v67 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SessionType();
  v71 = *(v17 - 8);
  v72 = v17;
  __chkstk_darwin(v17);
  v68 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v22 - 8);
  v24 = &v58 - v23;
  v25 = type metadata accessor for Date();
  v26 = __chkstk_darwin(v25);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 eventBody];
  if (v29)
  {
    v61 = v11;
    v65 = v21;
    v30 = v29;
    [a2 timestamp];
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_1000051C0(v24, 1, 1, v25);
    type metadata accessor for SessionFeedback(0);
    swift_allocObject();
    v31 = SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(v30, v28, v24);
    if (v7)
    {
    }

    else
    {
      v34 = v31;
      v60 = v30;
      v35 = *&v31[OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId];
      v36 = *&v31[OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId + 8];

      [a2 timestamp];
      v38 = v37;
      type metadata accessor for SessionBookmark();
      swift_allocObject();
      v39 = v69;
      v59 = sub_100190070(v69, v35, v36, v38);
      v58 = *(v71 + 16);
      v58(v65, &v34[OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type], v72);
      v40 = *v70;
      v41 = v39;
      sub_10018A30C(v40, v14);
      if (sub_100008D0C(v14, 1, v15) == 1)
      {
        v69 = v34;
        sub_10000F94C(v14, &qword_100220950, &unk_1001A8750);
        v42 = v61;
      }

      else
      {
        v43 = v14;
        v44 = v67;
        v45 = sub_1001871C8(v43, v67);
        v46 = *(v44 + v15[6]);
        v73 = v46;
        __chkstk_darwin(v45);
        *(&v58 - 2) = &v73;
        v47 = sub_100185C14(sub_1001874F4, (&v58 - 4), v66);
        v42 = v61;
        if (v47)
        {
          v69 = v34;
          sub_10018716C(v44);
        }

        else
        {
          v66 = v46;
          sub_100183494(*(v44 + v15[5]), v65, &v34[OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate]);
          v56 = v55;

          v57 = v66;

          v63(v56, v57);
          v69 = v34;
          sub_10018716C(v67);
        }
      }

      v48 = v68;
      v49 = v65;
      v50 = v72;
      v51 = v58;
      v58(v68, v65, v72);
      v51(v42, v49, v50);
      v52 = v69;

      v53 = v59;

      [a2 timestamp];
      *(v42 + v15[5]) = v52;
      *(v42 + v15[6]) = v53;
      *(v42 + v15[7]) = v54;
      sub_1000051C0(v42, 0, 1, v15);
      sub_1001848FC(v42, v48);

      (*(v71 + 8))(v49, v50);
    }
  }

  else
  {
    v32 = [a2 error];
    sub_10018722C();
    swift_allocError();
    *v33 = v32;
    v33[1] = 0;
    swift_willThrow();
  }
}

uint64_t sub_1001848FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100046184(&qword_100220950, &unk_1001A8750);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100008D0C(a1, 1, v12) == 1)
  {
    sub_10000F94C(a1, &qword_100220950, &unk_1001A8750);
    sub_1001910F0(v8);
    v13 = type metadata accessor for SessionType();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_10000F94C(v8, &qword_100220950, &unk_1001A8750);
  }

  else
  {
    sub_1001871C8(a1, v11);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10019144C();
    *v3 = v17;
    v15 = type metadata accessor for SessionType();
    return (*(*(v15 - 8) + 8))(a2, v15);
  }
}

void BiomeDatabaseReader.forEach(withPredicate:block:)()
{
  sub_100006A3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100182CD8();
  if (v0)
  {
LABEL_16:
    sub_100007FD4();
    return;
  }

  v10 = v9;
  if ((v6 & 0x80) == 0)
  {

    v16 = _swiftEmptyArrayStorage;
LABEL_9:

    v12 = sub_100182BCC(v11);

    if (v12)
    {
      if (v6)
      {
        sub_1001840D8(v12, v16, v4, v2);
      }

      else
      {

        sub_1001828FC(v12, v16, v4, v2);
      }
    }

    else
    {

      v13 = sub_100185740();
      v14 = sub_100004248(&type metadata for SessionDatabaseError, v13);
      sub_100011BE4(xmmword_1001A86D0, v14, v15);
    }

    goto LABEL_16;
  }

  if (!sub_10004229C(v8))
  {
    v16 = v8;
    type metadata accessor for SessionBookmark();
    swift_allocObject();
    SessionBookmark.init()();

    v6 = 1;
    goto LABEL_9;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v16 = v8;

    specialized _ArrayBuffer._getElementSlowPath(_:)();
    v6 = 1;
    goto LABEL_9;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = v8;
    sub_100185794(v8, v6);

    v6 = 1;
    goto LABEL_9;
  }

  __break(1u);
}

void BiomeDatabaseReader.forEach(start:block:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  sub_100182CD8();
  if (!v3)
  {
    v7 = v6;
    Date.timeIntervalSinceReferenceDate.getter();
    v8 = [v7 newEnumeratorFromStartTime:?];

    if (v8)
    {
      sub_1001840D8(v8, _swiftEmptyArrayStorage, a2, a3);
    }

    else
    {
      v9 = sub_100185740();
      v10 = sub_100004248(&type metadata for SessionDatabaseError, v9);
      sub_100011BE4(xmmword_1001A86D0, v10, v11);
    }
  }
}

void BiomeDatabaseReader.lookupSession(guid:creationTs:)()
{
  sub_100006A3C();
  v46 = v2;
  v47 = v3;
  v4 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for Date();
  sub_100003650();
  v45 = v8;
  __chkstk_darwin(v9);
  sub_100003664();
  v12 = v11 - v10;
  v13 = type metadata accessor for SessionType();
  sub_100003650();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100003664();
  v19 = v18 - v17;
  sub_100182CD8();
  if (!v1)
  {
    v21 = v20;
    v40 = v6;
    v41 = v12;
    v42 = v0;
    v43 = v15;
    v44 = v19;
    Date.timeIntervalSinceReferenceDate.getter();
    v22 = [v21 newEnumeratorFromStartTime:?];

    if (v22)
    {
      v23 = v47;

      v24 = sub_1001829EC(v22, v46, v23);
      v28 = v24;
      if (v24)
      {
        v30 = v43;
        v29 = v44;
        v31 = v13;
        v32 = (*(v43 + 16))(v44, v24 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type, v13);
        __chkstk_darwin(v32);
        *(&v40 - 2) = v29;
        sub_100182AEC();
        v46 = v33;
        v47 = v28;
        v48 = v22;
        if (v33)
        {
          v34 = v45;
          v35 = v40;
          v36 = v7;
          (*(v45 + 16))(v40, v33 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate, v7);
          sub_1000051C0(v35, 0, 1, v7);
          v37 = v41;
          (*(v34 + 32))(v41, v35, v36);
        }

        else
        {
          v38 = v40;
          v36 = v7;
          sub_1000051C0(v40, 1, 1, v7);
          v37 = v41;
          Date.init()();
          v39 = sub_100008D0C(v38, 1, v36);
          v34 = v45;
          if (v39 != 1)
          {
            sub_10000F94C(v38, &qword_100217050, &qword_100199180);
          }
        }

        sub_100183494(v47, v29, v37);
        (*(v34 + 8))(v37, v36);

        (*(v30 + 8))(v29, v31);
      }

      else
      {
      }
    }

    else
    {
      v25 = sub_100185740();
      v26 = sub_100004248(&type metadata for SessionDatabaseError, v25);
      sub_100011BE4(xmmword_1001A86D0, v26, v27);
    }
  }

  sub_100007FD4();
}

void *sub_1001851C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for Date();
  v13 = __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 eventBody];
  if (v16)
  {
    v17 = v16;
    [a2 timestamp];
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_1000051C0(v11, 1, 1, v12);
    type metadata accessor for SessionFeedback(0);
    swift_allocObject();
    v18 = SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(v17, v15, v11);
    if (v4 || ((v5 = v18, *(v18 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId) == a3) ? (v22 = *(v18 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId + 8) == a4) : (v22 = 0), v22))
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {

        return 0;
      }
    }
  }

  else
  {
    v19 = [a2 error];
    sub_10018722C();
    swift_allocError();
    *v20 = v19;
    v20[1] = 0;
    swift_willThrow();
  }

  return v5;
}

void *sub_1001853D8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v6 - 8);
  v8 = v20 - v7;
  v9 = type metadata accessor for Date();
  v10 = __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 eventBody];
  if (v13)
  {
    v14 = v13;
    [a2 timestamp];
    Date.init(timeIntervalSinceReferenceDate:)();
    sub_1000051C0(v8, 1, 1, v9);
    type metadata accessor for SessionFeedback(0);
    swift_allocObject();
    v15 = SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(v14, v12, v8);
    if (v3)
    {
    }

    else
    {
      v4 = v15;
      v19 = static SessionType.== infix(_:_:)();

      if ((v19 & 1) == 0)
      {

        return 0;
      }
    }
  }

  else
  {
    v16 = [a2 error];
    sub_10018722C();
    swift_allocError();
    *v17 = v16;
    v17[1] = 0;
    swift_willThrow();
  }

  return v4;
}

uint64_t BiomeDatabaseReader.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

void *sub_100185644(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100046184(&qword_100220930, &qword_1001A8728);
  v4 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100185740()
{
  result = qword_100220828;
  if (!qword_100220828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220828);
  }

  return result;
}

uint64_t sub_100185794(uint64_t a1, char a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for BiomeDatabaseReader.SessionProxy(uint64_t a1)
{
  result = qword_1002209B0;
  if (!qword_1002209B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10018582C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_100185644(*(a1 + 16), 0);
  v4 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy(0) - 8);
  sub_100186E9C(&v9, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  v6 = v5;
  v7 = v9;

  sub_100019180(v7);
  if (v6 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

char *sub_100185920(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100046184(&qword_100216188, &qword_1001A8270);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_100117CA8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_100185A0C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100046184(&qword_100220930, &qword_1001A8728);
  v10 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10018E950(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100185C14(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  result = sub_10004229C(a3);
  v6 = result;
  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (v6 == v7)
    {
      return v6 != v8;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = result;
    }

    else
    {
      if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    v12 = v9;
    v10 = a1(&v12);

    if (!v3)
    {
      v7 = v8 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return v6 != v8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_100185D10(uint64_t *a1)
{
  v2 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001870B0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100185DB8(v5);
  *a1 = v3;
}

void sub_100185DB8(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BiomeDatabaseReader.SessionProxy(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1001860E8(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_100185EE8(0, v2, 1, a1);
  }
}

void sub_100185EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v30 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v35 = a3;
      v32 = v23;
      v33 = v22;
      v24 = v22;
      v34 = v20;
      do
      {
        sub_1001870E8(v23, v17);
        sub_1001870E8(v20, v13);
        v25 = *(v8 + 28);
        v26 = *&v17[v25];
        v27 = *&v13[v25];
        sub_10018716C(v13);
        sub_10018716C(v17);
        if (v26 >= v27)
        {
          break;
        }

        if (!v18)
        {
          __break(1u);
          return;
        }

        sub_1001871C8(v23, v10);
        swift_arrayInitWithTakeFrontToBack();
        sub_1001871C8(v10, v20);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v35 + 1;
      v20 = v34 + v30;
      v22 = v33 - 1;
      v23 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1001860E8(uint64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v8 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  v117 = *(v8 - 8);
  __chkstk_darwin(v8);
  v113 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v122 = &v106 - v11;
  __chkstk_darwin(v12);
  v14 = &v106 - v13;
  __chkstk_darwin(v15);
  v18 = &v106 - v17;
  v119 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_100:
    a3 = *v110;
    if (!*v110)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v101 = (v21 + 16);
      v100 = *(v21 + 16);
      for (i = v21; v100 >= 2; v21 = i)
      {
        if (!*v119)
        {
          goto LABEL_138;
        }

        v102 = (v21 + 16 * v100);
        v21 = *v102;
        v103 = &v101[2 * v100];
        v104 = v103[1];
        sub_100186934(*v119 + *(v117 + 72) * *v102, *v119 + *(v117 + 72) * *v103, *v119 + *(v117 + 72) * v104, a3);
        if (v5)
        {
          break;
        }

        if (v104 < v21)
        {
          goto LABEL_126;
        }

        if (v100 - 2 >= *v101)
        {
          goto LABEL_127;
        }

        *v102 = v21;
        v102[1] = v104;
        v105 = *v101 - v100;
        if (*v101 < v100)
        {
          goto LABEL_128;
        }

        v100 = *v101 - 1;
        memmove(v103, v103 + 2, 16 * v105);
        *v101 = v100;
      }

LABEL_110:

      return;
    }

LABEL_135:
    v21 = sub_10011775C(v21);
    goto LABEL_102;
  }

  v123 = v16;
  v108 = a4;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v114 = &v106 - v17;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v20 + 1 < v19)
    {
      v24 = *v119;
      a3 = *(v117 + 72);
      i = v19;
      v121 = v20 + 1;
      v25 = v24 + a3 * v23;
      v26 = v24;
      sub_1001870E8(v25, v18);
      sub_1001870E8(v26 + a3 * v22, v14);
      v27 = *(v123 + 28);
      v28 = *&v18[v27];
      v29 = *&v14[v27];
      sub_10018716C(v14);
      sub_10018716C(v18);
      v30 = i;
      v109 = v22;
      v31 = v22 + 2;
      v118 = a3;
      v32 = v26 + a3 * (v22 + 2);
      while (1)
      {
        v33 = v31;
        if (++v121 >= v30)
        {
          break;
        }

        a3 = v28 < v29;
        sub_1001870E8(v32, v18);
        sub_1001870E8(v25, v14);
        v34 = *(v123 + 28);
        v35 = *&v18[v34];
        v36 = *&v14[v34];
        sub_10018716C(v14);
        sub_10018716C(v18);
        v30 = i;
        v32 += v118;
        v25 += v118;
        v31 = v33 + 1;
        if (v28 < v29 == v35 >= v36)
        {
          goto LABEL_9;
        }
      }

      v121 = v30;
LABEL_9:
      if (v28 < v29)
      {
        v23 = v121;
        if (v121 < v109)
        {
          goto LABEL_132;
        }

        if (v109 >= v121)
        {
          v22 = v109;
          goto LABEL_31;
        }

        i = v21;
        v107 = v5;
        if (v30 >= v33)
        {
          v37 = v33;
        }

        else
        {
          v37 = v30;
        }

        v38 = v118 * (v37 - 1);
        v39 = v118 * v37;
        v40 = v109 * v118;
        v41 = v109;
        do
        {
          if (v41 != --v23)
          {
            a3 = *v119;
            if (!*v119)
            {
              goto LABEL_139;
            }

            sub_1001871C8(a3 + v40, v113);
            v42 = v40 < v38 || a3 + v40 >= a3 + v39;
            if (v42)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1001871C8(v113, a3 + v38);
          }

          ++v41;
          v38 -= v118;
          v39 -= v118;
          v40 += v118;
        }

        while (v41 < v23);
        v5 = v107;
        v21 = i;
      }

      v23 = v121;
      v22 = v109;
    }

LABEL_31:
    v43 = v119[1];
    if (v23 < v43)
    {
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_131;
      }

      if (v23 - v22 < v108)
      {
        break;
      }
    }

LABEL_47:
    if (v23 < v22)
    {
      goto LABEL_130;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10006C888();
      v21 = v98;
    }

    a3 = *(v21 + 16);
    v58 = a3 + 1;
    if (a3 >= *(v21 + 24) >> 1)
    {
      sub_10006C888();
      v21 = v99;
    }

    *(v21 + 16) = v58;
    v59 = v21 + 32;
    v60 = (v21 + 32 + 16 * a3);
    v61 = v121;
    *v60 = v22;
    v60[1] = v61;
    v118 = *v110;
    if (!v118)
    {
      goto LABEL_140;
    }

    if (a3)
    {
      i = v21;
      while (1)
      {
        v62 = v58 - 1;
        v63 = (v59 + 16 * (v58 - 1));
        v64 = (v21 + 16 * v58);
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v65 = *(v21 + 32);
          v66 = *(v21 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_68:
          if (v68)
          {
            goto LABEL_117;
          }

          v80 = *v64;
          v79 = v64[1];
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_120;
          }

          v84 = v63[1];
          v85 = v84 - *v63;
          if (__OFSUB__(v84, *v63))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v82, v85))
          {
            goto LABEL_125;
          }

          if (v82 + v85 >= v67)
          {
            if (v67 < v85)
            {
              v62 = v58 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v58 < 2)
        {
          goto LABEL_119;
        }

        v87 = *v64;
        v86 = v64[1];
        v75 = __OFSUB__(v86, v87);
        v82 = v86 - v87;
        v83 = v75;
LABEL_83:
        if (v83)
        {
          goto LABEL_122;
        }

        v89 = *v63;
        v88 = v63[1];
        v75 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v75)
        {
          goto LABEL_124;
        }

        if (v90 < v82)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v62 - 1 >= v58)
        {
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
          goto LABEL_134;
        }

        if (!*v119)
        {
          goto LABEL_137;
        }

        v94 = (v59 + 16 * (v62 - 1));
        v95 = *v94;
        a3 = v62;
        v96 = (v59 + 16 * v62);
        v21 = v96[1];
        sub_100186934(*v119 + *(v117 + 72) * *v94, *v119 + *(v117 + 72) * *v96, *v119 + *(v117 + 72) * v21, v118);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v21 < v95)
        {
          goto LABEL_112;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_113;
        }

        *v94 = v95;
        v94[1] = v21;
        if (a3 >= v5)
        {
          goto LABEL_114;
        }

        v58 = v5 - 1;
        memmove(v96, v96 + 2, 16 * (v5 - 1 - a3));
        v21 = i;
        *(i + 16) = v5 - 1;
        v97 = v5 > 2;
        v5 = 0;
        v18 = v114;
        if (!v97)
        {
          goto LABEL_97;
        }
      }

      v69 = v59 + 16 * v58;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_115;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_116;
      }

      v76 = v64[1];
      v77 = v76 - *v64;
      if (__OFSUB__(v76, *v64))
      {
        goto LABEL_118;
      }

      v75 = __OFADD__(v67, v77);
      v78 = v67 + v77;
      if (v75)
      {
        goto LABEL_121;
      }

      if (v78 >= v72)
      {
        v92 = *v63;
        v91 = v63[1];
        v75 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v75)
        {
          goto LABEL_129;
        }

        if (v67 < v93)
        {
          v62 = v58 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v19 = v119[1];
    v20 = v121;
    if (v121 >= v19)
    {
      goto LABEL_100;
    }
  }

  v44 = v22 + v108;
  if (__OFADD__(v22, v108))
  {
    goto LABEL_133;
  }

  if (v44 >= v43)
  {
    v44 = v119[1];
  }

  if (v44 < v22)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v23 == v44)
  {
    goto LABEL_47;
  }

  i = v21;
  v107 = v5;
  v45 = *v119;
  v46 = *(v117 + 72);
  v47 = *v119 + v46 * (v23 - 1);
  v48 = v22;
  v49 = -v46;
  v109 = v48;
  v50 = v48 - v23;
  v111 = v46;
  v112 = v44;
  v51 = v45 + v23 * v46;
LABEL_40:
  v121 = v23;
  v115 = v51;
  v116 = v50;
  v118 = v47;
  v52 = v47;
  a3 = v123;
  while (1)
  {
    sub_1001870E8(v51, v18);
    sub_1001870E8(v52, v14);
    v53 = *(a3 + 28);
    v54 = *&v18[v53];
    v55 = *&v14[v53];
    sub_10018716C(v14);
    sub_10018716C(v18);
    if (v54 >= v55)
    {
LABEL_45:
      v23 = v121 + 1;
      v47 = v118 + v111;
      v50 = v116 - 1;
      v51 = v115 + v111;
      if (v121 + 1 == v112)
      {
        v23 = v112;
        v5 = v107;
        v21 = i;
        v22 = v109;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v45)
    {
      break;
    }

    v56 = v122;
    sub_1001871C8(v51, v122);
    a3 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1001871C8(v56, v52);
    v52 += v49;
    v51 += v49;
    v42 = __CFADD__(v50++, 1);
    if (v42)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_100186934(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  __chkstk_darwin(v55);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v58 = a1;
  v57 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    v52 = v9;
    sub_10018E950(a2, v17 / v14, a4);
    v28 = a4 + v20 * v14;
    v29 = -v14;
    v30 = v28;
    v53 = v29;
    v51 = a1;
LABEL_37:
    v54 = a2 + v29;
    v31 = a3;
    v32 = v30;
    while (1)
    {
      if (v28 <= a4)
      {
        v58 = a2;
        v56 = v32;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v32;
      v33 = a2;
      v34 = a4;
      v35 = v30;
      v36 = v31 + v53;
      v37 = v28 + v53;
      v38 = v28;
      sub_1001870E8(v28 + v53, v12);
      v39 = v12;
      v40 = v52;
      sub_1001870E8(v54, v52);
      v41 = *(v55 + 28);
      v42 = *(v39 + v41);
      v43 = *(v40 + v41);
      v44 = v40;
      v12 = v39;
      sub_10018716C(v44);
      sub_10018716C(v39);
      if (v42 < v43)
      {
        v49 = v38;
        v46 = v31 < v33 || v36 >= v33;
        a3 = v36;
        a4 = v34;
        if (v46)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v50;
          a1 = v51;
          v29 = v53;
          v28 = v49;
        }

        else
        {
          a1 = v51;
          v30 = v50;
          v29 = v53;
          v47 = v54;
          a2 = v54;
          v28 = v49;
          if (v31 != v33)
          {
            v48 = v50;
            swift_arrayInitWithTakeBackToFront();
            v28 = v49;
            a2 = v47;
            v30 = v48;
          }
        }

        goto LABEL_37;
      }

      v45 = v31 < v38 || v36 >= v38;
      a4 = v34;
      if (v45)
      {
        swift_arrayInitWithTakeFrontToBack();
        v31 = v36;
        v28 = v37;
        v32 = v37;
        v30 = v35;
        a2 = v33;
        a1 = v51;
      }

      else
      {
        v32 = v37;
        v16 = v38 == v31;
        v31 = v36;
        v28 = v37;
        v30 = v35;
        a2 = v33;
        a1 = v51;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v35;
          v31 = v36;
          v28 = v37;
          v32 = v37;
        }
      }
    }

    v58 = a2;
    v56 = v30;
  }

  else
  {
    sub_10018E950(a1, v15 / v14, a4);
    v21 = a4 + v19 * v14;
    v56 = v21;
    while (a4 < v21 && a2 < a3)
    {
      sub_1001870E8(a2, v12);
      sub_1001870E8(a4, v9);
      v23 = *(v55 + 28);
      v24 = *&v12[v23];
      v25 = *&v9[v23];
      sub_10018716C(v9);
      sub_10018716C(v12);
      if (v24 >= v25)
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v14;
        a4 += v14;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      a1 += v14;
      v58 = a1;
    }
  }

LABEL_59:
  sub_100186D58(&v58, &v57, &v56);
}

uint64_t sub_100186D58(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
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

id sub_100186E38(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100014A40(a1, a2);
  v7 = [a3 writeData:isa];

  return v7;
}

void sub_100186E9C(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  v29 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v30 = a4;
  v16 = *(a4 + 64);
  v15 = a4 + 64;
  v14 = v16;
  v17 = -1 << *(v15 - 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  if (!a2)
  {
    v21 = 0;
LABEL_21:
    *a1 = v30;
    a1[1] = v15;
    a1[2] = ~v17;
    a1[3] = v21;
    a1[4] = v19;
    return;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v27 = -1 << *(v15 - 32);
    v28 = a1;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v17) >> 6;
    while (1)
    {
      if (v20 >= a3)
      {
        goto LABEL_24;
      }

      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_25;
      }

      if (!v19)
      {
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            v19 = 0;
            goto LABEL_19;
          }

          v19 = *(v15 + 8 * v24);
          ++v21;
          if (v19)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v24 = v21;
LABEL_15:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = *(v29 + 72);
      sub_1001870E8(*(v30 + 56) + v26 * (v25 | (v24 << 6)), v10);
      sub_1001871C8(v10, v13);
      sub_1001871C8(v13, a2);
      if (v23 == a3)
      {
        break;
      }

      a2 += v26;
      v20 = v23;
      v21 = v24;
    }

    v21 = v24;
LABEL_19:
    v17 = v27;
    a1 = v28;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1001870E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018716C(uint64_t a1)
{
  v2 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001871C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10018722C()
{
  result = qword_100220940;
  if (!qword_100220940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220940);
  }

  return result;
}

unsigned __int16 *getEnumTagSinglePayload for BiomeReadError(unsigned __int16 *result, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v4 = *(result + 2);
      if (!*(result + 2))
      {
        return v4;
      }

      goto LABEL_17;
    case 2:
      v4 = result[1];
      if (!result[1])
      {
        return v4;
      }

      goto LABEL_17;
    case 3:
      __break(1u);
      return result;
    case 4:
      v4 = *(result + 1);
      if (!v4)
      {
        return v4;
      }

LABEL_17:
      v4 = (*result | (v4 << 16)) - 0xFFFF;
      break;
    default:
      return v4;
  }

  return v4;
}

uint64_t storeEnumTagSinglePayload for BiomeReadError(uint64_t result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
        goto LABEL_21;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        break;
      case 2:
        *(result + 2) = 0;
        break;
      case 3:
LABEL_21:
        __break(1u);
        break;
      case 4:
        *(result + 2) = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1001873D4(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1001873F4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  result[1] = v2;
  return result;
}

uint64_t sub_100187450(uint64_t a1)
{
  result = type metadata accessor for SessionType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SessionFeedback(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SessionBookmark();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_100187510(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = sub_100187A64(a1);
  v6 = v5;
  if (v4 == sub_100187A64(v2) && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = SearchSessionTableColumn.columnType.getter(v3);
    return v11 == SearchSessionTableColumn.columnType.getter(v2);
  }

  return result;
}

BOOL sub_1001875CC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 29556;
  v5 = a2;
  switch(v2)
  {
    case 1:
      v3 = 0xE800000000000000;
      v4 = 0x6B63616264656566;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v4 = 1701869940;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v4 = 0x64695F7972657571;
      break;
    default:
      break;
  }

  v6 = 0xE200000000000000;
  v7 = 29556;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v7 = 0x6B63616264656566;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v7 = 1701869940;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v7 = 0x64695F7972657571;
      break;
    default:
      break;
  }

  if (v4 == v7 && v3 == v6)
  {

    goto LABEL_16;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v9)
  {
LABEL_16:
    v11 = SearchFeedbackTableColumn.columnType.getter(v2);
    return v11 == SearchFeedbackTableColumn.columnType.getter(v5);
  }

  return result;
}

Swift::Int sub_100187738(char a1)
{
  Hasher.init(_seed:)();
  v2 = SearchSessionTableColumn.rawValue.getter(a1);
  sub_100005F34(v2, v3, v4);

  return Hasher._finalize()();
}

Swift::Int sub_100187788(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  sub_1001877D0(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1001877D0(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_100187874(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_100187990(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  v3 = SearchSessionTableColumn.rawValue.getter(a2);
  sub_100005F34(v3, v4, v5);

  return Hasher._finalize()();
}

Swift::Int sub_1001879DC(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  sub_1001877D0(v4, a2);
  return Hasher._finalize()();
}

Swift::Int sub_100187A20(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100187A64(char a1)
{
  result = 29556;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973736573;
      break;
    case 2:
      result = 0x746E65696C63;
      break;
    case 3:
      result = 0x6975675F72657375;
      break;
    case 4:
      result = 0x6C62616E655F7564;
      break;
    case 5:
      result = 0x5F7972746E756F63;
      break;
    case 6:
      result = 0x656C61636F6CLL;
      break;
    case 7:
      result = 0x625F6D6574737973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100187B4C(char a1)
{
  result = 29556;
  switch(a1)
  {
    case 1:
      result = 0x6B63616264656566;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x64695F7972657571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100187BBC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100007534((v3 + 48), *(v3 + 72));
  v6 = sub_100003F4C();
  v7(v6);
  if (v4)
  {
    return sub_10000450C();
  }

  sub_100007534(v24, v24[3]);
  v8 = sub_1000088D4();
  v9(v8);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v10 = _arrayForceCast<A, B>(_:)();

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v10 + 16) > a3)
  {
    sub_100005728(result, v12, v13, v14, v15, v16, v17, v18, v21[0]);

    v19 = v22;
    v20 = v23;
    sub_100007534(v21, v22);
    (*(v20 + 16))(v19, v20);
    sub_100007378(v21);
    sub_100007378(v24);
    return sub_10000450C();
  }

  __break(1u);
  return result;
}

void *sub_100187D1C(unint64_t a1)
{
  sub_100007534(v1 + 6, v1[9]);
  v4 = sub_100003F4C();
  v5(v4);
  if (v2)
  {
    return v1;
  }

  sub_100007534(v36, v36[3]);
  v6 = sub_1000088D4();
  v7(v6);
  swift_getAssociatedTypeWitness();
  sub_100046184(&qword_100220268, &qword_1001A8240);
  v8 = _arrayForceCast<A, B>(_:)();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8 + 16) > a1)
  {
    sub_100005728(result, v10, v11, v12, v13, v14, v15, v16, v33[0]);

    v17 = v34;
    v18 = v35;
    sub_100007534(v33, v34);
    v19 = (*(v18 + 8))(v17, v18);
    v21 = v20;
    v22 = v34;
    v23 = v35;
    sub_100007534(v33, v34);
    v24 = (*(v23 + 24))(v22, v23);
    v25 = type metadata accessor for RawPayload();
    v26 = BMUseCaseLegacy;
    v27 = objc_allocWithZone(BMStreamDatastoreReader);
    v28 = v26;
    v29 = v24;
    v1 = v27;
    v30 = sub_100180808(v19, v21, v29, v25, v28);
    if (v30)
    {
      v1 = v30;
    }

    else
    {
      v31 = sub_10017F550();
      sub_100004248(&type metadata for BiomeTableError, v31);
      *v32 = 3;
      swift_willThrow();
    }

    sub_100007378(v33);
    sub_100007378(v36);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100187F58(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  v2 = sub_100146180();
  sub_100004248(&type metadata for SQLiteVTabError, v2);
  *v3 = 0;
  *(v3 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_100188014(uint64_t *a1, uint64_t *a2)
{
  sub_100046184(a1, a2);
  sub_100007EAC();
  if (!v2)
  {
    BaseBiomeTable.getSQLiteBridge()();
  }

  return sub_10000450C();
}

uint64_t sub_1001880A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000F75C(a1, a2, a3);
  sub_100187F58(v5);
  if (!v3)
  {
    sub_100187BBC(*(v5 + 16), *(v5 + 24), v4);
  }

  return sub_10000450C();
}

double sub_100188144(uint64_t *a1, uint64_t *a2)
{
  sub_100046184(a1, a2);
  sub_100007EAC();
  if (!v2)
  {
    TimeFrame = BaseBiomeTable.getQueryTimeFrameGuideline()();
  }

  return TimeFrame;
}

uint64_t sub_1001881D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10000F75C(a1, a2, a3);
  sub_100187F58(v4);
  if (!v3)
  {
    v5 = sub_10000AF78();
    sub_100187D1C(v5);
  }

  return sub_10000AF78();
}

uint64_t sub_10018823C(uint64_t a1)
{
  v3 = v1;
  sub_100046184(&qword_100220290, &qword_1001A89F0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    v8 = sub_10017F550();
    v9 = sub_100004248(&type metadata for BiomeTableError, v8);
    sub_100008C50(v9, v10);

    goto LABEL_6;
  }

  v5 = v4;

  v6 = sub_100188014(&qword_100220288, &unk_1001A8260);
  if (v2)
  {
    sub_10000E098();
LABEL_6:
    sub_100046184(&qword_100220F78, &qword_1001A89F8);
    swift_deallocPartialClassInstance();
    return v3;
  }

  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = sub_100188144(&qword_100220288, &unk_1001A8260);
  *(v3 + 56) = v12;
  v3 = SQLiteBaseVTab.Cursor.init(_:)(v5);

  return v3;
}

uint64_t sub_100188374(uint64_t a1)
{
  v3 = v1;
  sub_100046184(&qword_100220280, &qword_1001A89E0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    sub_10017F550();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();

    goto LABEL_6;
  }

  v5 = v4;

  v6 = sub_100188014(&qword_100220278, &unk_1001A8250);
  if (v2)
  {

LABEL_6:
    sub_100046184(&qword_100220F70, &qword_1001A89E8);
    swift_deallocPartialClassInstance();
    return v3;
  }

  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = sub_100188144(&qword_100220278, &unk_1001A8250);
  *(v3 + 56) = v10;
  v3 = SQLiteBaseVTab.Cursor.init(_:)(v5);

  return v3;
}

void *SearchFeedbackTableColumn.columnType.getter(char a1)
{
  v1 = &type metadata for Double;
  switch(a1)
  {
    case 1:
      v1 = &type metadata for Data;
      sub_10012F954();
      break;
    case 2:
      v1 = &type metadata for String;
      break;
    case 3:
      v1 = sub_100046184(&qword_10021ED60, &qword_1001A87C0);
      sub_10018856C();
      break;
    default:
      return v1;
  }

  return v1;
}

unint64_t sub_10018856C()
{
  result = qword_10021ED68;
  if (!qword_10021ED68)
  {
    sub_1000461CC(&qword_10021ED60, &qword_1001A87C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ED68);
  }

  return result;
}

uint64_t SearchFeedbackTableColumn.propertyName.getter(char a1)
{
  result = 0x6D617473656D6974;
  switch(a1)
  {
    case 1:
      result = sub_1000065C0();
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x64497972657571;
      break;
    default:
      return result;
  }

  return result;
}

SearchFeedback::SearchFeedbackTableColumn_optional __swiftcall SearchFeedbackTableColumn.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002030B8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t SearchFeedbackTableColumn.rawValue.getter(char a1)
{
  result = 29556;
  switch(a1)
  {
    case 1:
      result = sub_1000065C0();
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x64695F7972657571;
      break;
    default:
      return result;
  }

  return result;
}

SearchFeedback::SearchFeedbackTableColumn_optional sub_100188738@<W0>(Swift::String *a1@<X0>, SearchFeedback::SearchFeedbackTableColumn_optional *a2@<X8>)
{
  result.value = SearchFeedbackTableColumn.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100188768@<X0>(uint64_t *a1@<X8>)
{
  result = SearchFeedbackTableColumn.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String __swiftcall SearchFeedbackTable.getModuleName()()
{
  v0 = 0x6162646565665F70;
  v1 = 0xEA00000000006B63;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t SearchFeedbackTable.__allocating_init(config:environment:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  sub_1000092B4(a1, v8);
  v6 = sub_10017DE28(v8, a2, a3);
  sub_100007378(a1);
  return v6;
}

uint64_t SearchFeedbackTable.init(config:environment:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000092B4(a1, v8);
  v6 = sub_10017DE28(v8, a2, a3);
  sub_100007378(a1);
  return v6;
}

uint64_t SearchFeedbackTable.__deallocating_deinit()
{
  v0 = _s14SearchFeedback0aB5TableCfd_0();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t SearchFeedbackConnection.checkPlanOrdering(_:)(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 24);
    if (!v1)
    {
      goto LABEL_10;
    }

    if (!*(v1 + 4))
    {
      v2 = *v1;
      if (v2 <= 3)
      {
        if ((v2 & 0x80000000) == 0)
        {
          if (!*(&off_100202E98 + v2 + 32))
          {
            *(result + 60) = 1;
          }

          return result;
        }

        __break(1u);
LABEL_10:
        __break(1u);
      }
    }
  }

  return result;
}

void SearchFeedbackConnection.checkPlanConstraints(_:)(unsigned int *result)
{
  v1 = *result;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
LABEL_3:
  v8 = v6;
  v9 = 8 * v6;
  v10 = 12 * v6;
  while (v1 != v8)
  {
    if (v8 >= v1)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    v11 = *(result + 1);
    if (!v11)
    {
      goto LABEL_45;
    }

    v12 = (v11 + v10);
    v13 = *v12;
    if (v13 <= 3)
    {
      if ((v13 & 0x80000000) != 0)
      {
        goto LABEL_41;
      }

      v14 = *(&off_100202F48 + v13 + 32);
      if ((v14 - 2) >= 2)
      {
        if (v14)
        {
          if (!*(v12 + 5))
          {

            return;
          }
        }

        else if (*(v12 + 5))
        {
          v15 = *(v12 + 4);
          HIDWORD(v16) = v15 - 4;
          LODWORD(v16) = v15 - 4;
          switch((v16 >> 2))
          {
            case 0u:
            case 7u:
              v17 = v4;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v4 = v17;
              v3 = 1;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                goto LABEL_25;
              }

              v3 = 1;
              break;
            case 1u:
            case 3u:
              v19 = v3;
              v20 = swift_isUniquelyReferenced_nonNull_native();
              v3 = v19;
              v4 = 1;
              if (v20)
              {
                v4 = 1;
              }

              else
              {
LABEL_25:
                v29 = v7[2] + 1;
                v30 = v7;
                v31 = v3;
                v32 = v4;
                sub_10006C9F0(0, v29, 1, v30);
                v4 = v32;
                v3 = v31;
                v7 = v33;
              }

              break;
            default:
              goto LABEL_15;
          }

          v22 = v7[2];
          v21 = v7[3];
          v44 = v22 + 1;
          if (v22 >= v21 >> 1)
          {
            v26 = v7;
            v27 = v3;
            v42 = v4;
            sub_10006C9F0(v21 > 1, v44, 1, v26);
            v4 = v42;
            v3 = v27;
            v7 = v28;
          }

          v7[2] = v44;
          *(v7 + v22 + 32) = v15;
          if (__OFADD__(v5++, 1))
          {
            goto LABEL_44;
          }

          v24 = *(result + 4);
          if (!v24)
          {
            goto LABEL_47;
          }

          v6 = v8 + 1;
          v25 = v24 + v9;
          *v25 = v5;
          *(v25 + 4) = 1;
          goto LABEL_3;
        }
      }
    }

LABEL_15:
    v9 += 8;
    v10 += 12;
    ++v8;
  }

  *(result + 8) = *(&off_100202F70 + v4 + v3 + 4);
  v34 = v7[2];
  if (v34 > 0x7FFFFFFE)
  {
    goto LABEL_43;
  }

  v35 = v34 + 1;
  v36 = sqlite3_malloc(v34 + 1);
  if (!v36)
  {
    goto LABEL_46;
  }

  v37 = v36;
  *(result + 6) = v36;
  if (v34)
  {
    v43 = v36;
    v45 = v34 + 1;
    sub_10017EFF8(0, v34, 0);
    v38 = 32;
    while (1)
    {
      v39 = *(v7 + v38);
      if (v39 < 0)
      {
        break;
      }

      v41 = _swiftEmptyArrayStorage[2];
      v40 = _swiftEmptyArrayStorage[3];
      if (v41 >= v40 >> 1)
      {
        sub_10017EFF8((v40 > 1), v41 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v41 + 1;
      *(&_swiftEmptyArrayStorage[4] + v41) = v39;
      ++v38;
      if (!--v34)
      {

        v37 = v43;
        v35 = v45;
        goto LABEL_36;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_36:
  sub_10017F018(&off_100202FA8);
  memcpy(v37, &_swiftEmptyArrayStorage[4], v35);

  result[14] = 1;
}

double *sub_100188D58()
{
  swift_allocObject();
  v0 = sub_10000AF78();
  return sub_100188DA0(v0);
}

double *sub_100188DA0(uint64_t a1)
{
  v3 = v1;
  if (qword_10021FA98 != -1)
  {
    swift_once();
  }

  *(v1 + 72) = static BiomeStoreEnumerator.Constants.defaultTimeRange;
  type metadata accessor for SearchFeedbackConnection(0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    v15 = sub_10017F550();
    v16 = sub_100004248(&type metadata for BiomeTableError, v15);
    sub_100008C50(v16, v17);

LABEL_8:
    type metadata accessor for SearchFeedbackCursor(0);
    swift_deallocPartialClassInstance();
    return v3;
  }

  v5 = v4;

  sub_100006D74();
  v8 = sub_100188014(v6, v7);
  if (v2)
  {
    sub_10000E098();
    goto LABEL_8;
  }

  v10 = v8;
  v11 = v9;
  sub_100006D74();
  v18 = sub_1001880A0(v12, v13, v14);
  v20 = v19;
  sub_100006D74();
  v42 = sub_1001880A0(v21, v22, v23);
  v47 = v24;
  ObjectType = swift_getObjectType();
  v40 = *(v11 + 8);
  v40(ObjectType, v11);
  v43 = v25;
  v26 = swift_getObjectType();
  (*(v43 + 40))(v46, v18, v20, v26);
  swift_unknownObjectRelease();

  v40(ObjectType, v11);
  v29 = v28;
  v30 = swift_getObjectType();
  (*(v29 + 40))(v45, v42, v47, v30, v29);
  swift_unknownObjectRelease();

  sub_100006D74();
  *(v1 + 72) = sub_100188144(v31, v32);
  *(v1 + 80) = v33;
  sub_100006D74();
  v37 = sub_1001881D4(v34, v35, v36);
  v38 = v3[9];
  v39 = v3[10];
  sub_1000092B4(v45, v44);
  type metadata accessor for FeedbackEnumerator();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + 8) = sub_10018EA74(v37, v10, v11, v44, v38, v39);
  v3 = sub_100188374(v5);

  swift_unknownObjectRelease();
  sub_100007378(v45);
  sub_100007378(v46);
  return v3;
}

void SearchFeedbackCursor.readFilterParameters(idxNum:idxStr:arguments:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (a2)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = a2;
      v8 = a3 + 32;
      do
      {
        v9 = *v7++;
        v10 = SQLiteArgument.getDouble()();
        HIDWORD(v11) = v9 - 4;
        LODWORD(v11) = v9 - 4;
        switch((v11 >> 2))
        {
          case 0u:
            if (v4 < v10)
            {
              v4 = v10 + 0.0;
              if (v10 != INFINITY)
              {
                *&v4 += (*&v4 >> 63) | 1;
              }
            }

            break;
          case 1u:
            if (v10 <= v5)
            {
              v5 = v10;
            }

            break;
          case 3u:
            if (v10 < v5)
            {
              v12 = 0.0 - v10;
              if (v12 != INFINITY)
              {
                *&v12 += (*&v12 >> 63) | 1;
              }

              v5 = -v12;
            }

            break;
          case 7u:
            if (v4 <= v10)
            {
              v4 = v10;
            }

            break;
          default:
            break;
        }

        v8 += 8;
        --v6;
      }

      while (v6);
    }
  }

  v13 = 0.0;
  if (v4 >= 0.0)
  {
    v14 = v4;
  }

  else
  {
    v14 = 0.0;
  }

  if (v5 >= 0.0)
  {
    v13 = v5;
  }

  if (v13 < v14)
  {
    v13 = v14;
  }

  if (v14 > v13)
  {
    __break(1u);
  }

  else
  {
    v15 = *(v3 + 64);
    v16 = ClosedRange<>.fromUnixToReferenceTime.getter(v14, v13);
    v18 = v17;
    swift_beginAccess();
    *(v15 + 24) = v16;
    *(v15 + 32) = v18;
  }
}

Swift::Int32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchFeedbackCursor.setValue(forColumn:on:)(Swift::String forColumn, SQLiter::SQLiteContext on)
{
  v3 = v2;
  object = forColumn._object;
  countAndFlagsBits = forColumn._countAndFlagsBits;

  v7._countAndFlagsBits = countAndFlagsBits;
  v7._object = object;
  switch(SearchFeedbackTableColumn.init(rawValue:)(v7).value)
  {
    case SearchFeedback_SearchFeedbackTableColumn_feedback:
      v12 = sub_10000AF78();
      sub_10018F200(v12);
      break;
    case SearchFeedback_SearchFeedbackTableColumn_type:
      v10 = sub_10018EFD0();
      if (!v3)
      {
        SQLiteContext.setString(_:destructor:)(v10, v11, 1, on.context._rawValue);
      }

      break;
    case SearchFeedback_SearchFeedbackTableColumn_queryId:
      v8 = sub_10018F090();
      if (!v3)
      {
        if (v9)
        {
          goto LABEL_5;
        }

        SQLiteContext.setUInt64(_:)(v8);
      }

      break;
    case SearchFeedback_SearchFeedbackTableColumn_unknownDefault:
LABEL_5:
      SQLiteContext.setNull()();
      break;
    default:
      sub_10000AF78();
      sub_100181BE0();
      break;
  }

  return 0;
}

unint64_t sub_100189418()
{
  result = qword_1002209F0;
  if (!qword_1002209F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002209F0);
  }

  return result;
}

unint64_t sub_10018946C(void *a1)
{
  a1[1] = sub_1001894A4();
  a1[2] = sub_1001894F8();
  result = sub_10018954C();
  a1[3] = result;
  return result;
}

unint64_t sub_1001894A4()
{
  result = qword_1002209F8;
  if (!qword_1002209F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002209F8);
  }

  return result;
}

unint64_t sub_1001894F8()
{
  result = qword_100220A00;
  if (!qword_100220A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A00);
  }

  return result;
}

unint64_t sub_10018954C()
{
  result = qword_100220A08;
  if (!qword_100220A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A08);
  }

  return result;
}

unint64_t sub_1001895A4()
{
  result = qword_100220A10;
  if (!qword_100220A10)
  {
    sub_1000461CC(&qword_100220A18, &qword_1001A8888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A10);
  }

  return result;
}

unint64_t sub_100189608(uint64_t a1)
{
  result = sub_100189418();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100189634()
{
  result = qword_100220A20;
  if (!qword_100220A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100220A20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchFeedbackTableColumn(_BYTE *result, unsigned int a2, unsigned int a3)
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

__int128 *BiomeStoreEnumerator.Constants.defaultTimeRange.unsafeMutableAddressor()
{
  if (qword_10021FA98 != -1)
  {
    sub_100003FA8(&qword_10021FA98);
  }

  return &static BiomeStoreEnumerator.Constants.defaultTimeRange;
}

void *BiomeStoreEnumerator.getNextEvent()()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 nextEvent];
  v3 = v2;
  if (v2)
  {
    [v2 timestamp];
    v5 = v4;
    sub_1000065D8();
    swift_beginAccess();
    if (v5 > *(v0 + 32))
    {

      return 0;
    }
  }

  return v3;
}

double BiomeStoreEnumerator.enumerationRange.getter()
{
  sub_1000065D8();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t BiomeStoreEnumerator.enumerationRange.setter(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void BiomeStoreEnumerator.currentEvent.setter(void *a1)
{
  v2 = v1[6];
  v1[6] = a1;
  v3 = a1;

  (*(*v1 + 272))();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeStoreEnumerator.startEnumeration()()
{
  v1 = *(v0 + 16);
  sub_1000065D8();
  swift_beginAccess();
  v2 = [v1 newEnumeratorFromStartTime:*(v0 + 24)];
  v3 = *(v0 + 40);
  *(v0 + 40) = v2;

  sub_1000037B0();
  (*(v4 + 224))();
}

Swift::Void __swiftcall BiomeStoreEnumerator.next()()
{
  sub_1000037B0();
  v1 = (*(v0 + 216))();

  BiomeStoreEnumerator.currentEvent.setter(v1);
}

Swift::Void __swiftcall BiomeStoreEnumerator.setPayload(on:)(SQLiter::SQLiteContext on)
{
  sub_1000037B0();
  v4 = (*(v3 + 248))();
  if (v5 >> 60 == 15)
  {

    SQLiteContext.setNull()();
  }

  else
  {
    v6 = v4;
    v7 = v5;
    v8 = v1[8];
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(v6, v7, v1[9], v1[10], on.context._rawValue, ObjectType, v8);

    sub_100014A2C(v6, v7);
  }
}

uint64_t BiomeStoreEnumerator.init(reader:sqliteBridge:enumerationRange:messageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  return v7;
}

id *BiomeStoreEnumerator.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t BiomeStoreEnumerator.timestamp.getter()
{
  if (!*(v0 + 48))
  {
    return 0;
  }

  [*(v0 + 48) timestamp];
  return v1;
}

uint64_t BiomeStoreEnumerator.payload.getter()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 eventBody];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *&v2[OBJC_IVAR___SRRawPayload_data];
  sub_100014924(v4, *&v2[OBJC_IVAR___SRRawPayload_data + 8]);

  return v4;
}

uint64_t sub_100189CF8()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  static Date.distantPast.getter();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v6, v0);
  static Date.distantFuture.getter();
  Date.timeIntervalSince1970.getter();
  v11 = v10;
  result = (v9)(v3, v0);
  if (v8 > v11)
  {
    __break(1u);
  }

  else
  {
    *&static BiomeStoreEnumerator.Constants.defaultTimeRange = v8;
    *(&static BiomeStoreEnumerator.Constants.defaultTimeRange + 1) = v11;
  }

  return result;
}

double static BiomeStoreEnumerator.Constants.defaultTimeRange.getter()
{
  if (qword_10021FA98 != -1)
  {
    sub_100003FA8(&qword_10021FA98);
  }

  return *&static BiomeStoreEnumerator.Constants.defaultTimeRange;
}

uint64_t BiomeStoreEnumerator.messageName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t BiomeStoreEnumerator.__allocating_init(reader:sqliteBridge:enumerationRange:messageName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 16) = a1;
  *(result + 24) = a6;
  *(result + 32) = a7;
  *(result + 56) = a2;
  *(result + 64) = a3;
  *(result + 72) = a4;
  *(result + 80) = a5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeStoreEnumerator.setTimestamp(on:)(SQLiter::SQLiteContext on)
{
  sub_1000037B0();
  v2 = COERCE_DOUBLE((*(v1 + 240))());
  if (v3)
  {
    SQLiteContext.setNull()();
  }

  else
  {
    SQLiteContext.setDouble(_:)(v2);
  }
}

uint64_t BiomeStoreEnumerator.__deallocating_deinit()
{
  BiomeStoreEnumerator.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t BiomeTablesProvider.getTableFunction()()
{
  if (v0[7])
  {
    v1 = v0[7];
  }

  else
  {
    v2 = v0;
    v3 = *(*v0 + 88);
    sub_1000092B4((v2 + 2), v8);
    v4 = v2[9];
    v5 = v2[10];
    v6 = *(v3 + 408);
    swift_unknownObjectRetain();
    v1 = v6(v8, v4, v5);
    v2[7] = v1;
  }

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomeTablesProvider.configure(databaseConnection:)(Swift::OpaquePointer databaseConnection)
{
  type metadata accessor for SQLiteDatabase();
  swift_allocObject();
  v3 = SQLiteDatabase.init(connection:)(databaseConnection._rawValue);
  if (!v1)
  {
    v4 = v3;
    BiomeTablesProvider.getTableFunction()();
    BaseBiomeTable.register(with:)(v4);

    (*(*v4 + 144))(v5);
  }
}

uint64_t BiomeTablesProvider.__allocating_init(config:environment:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  BiomeTablesProvider.init(config:environment:)(a1, a2, a3);
  return v6;
}

uint64_t BiomeTablesProvider.__deallocating_deinit()
{
  BiomeTablesProvider.deinit();

  return _swift_deallocClassInstance(v0, 88, 7);
}

uint64_t sub_10018A30C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_10000F794(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
    sub_1000036B8();
    sub_1001870E8(v7 + *(v9 + 72) * v6, a2);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v12 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
    v10 = a2;
    v11 = 1;
  }

  return sub_1000051C0(v10, v11, 1, v12);
}

void *sub_10018A3B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10000F794();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void *sub_10018A3FC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionType();
  sub_100046184(&qword_10021FAB8, &qword_1001A7F00);
  sub_10017D560();
  v2[2] = Dictionary.init(dictionaryLiteral:)();
  v2[3] = 0;
  v2[4] = a1;
  sub_10018AA60(a2, &v6);
  if (v7)
  {
    sub_10000B240(a2, &qword_100221280, &unk_1001A8C00);
    sub_100008C84(&v6, &v8);
  }

  else
  {
    v9 = &type metadata for BiomeStreamsTelemetryReporter;
    v10 = &off_100203900;
    sub_10000B240(a2, &qword_100221280, &unk_1001A8C00);
    if (v7)
    {
      sub_10000B240(&v6, &qword_100221280, &unk_1001A8C00);
    }
  }

  sub_100008C84(&v8, (v2 + 5));
  return v2;
}

void sub_10018A518(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionType();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100003664();
  v10 = v9 - v8;
  sub_100006DA0();
  swift_beginAccess();
  v11 = *(v1 + 16);

  v12 = sub_10018A3B4(a1, v11);

  if (v12)
  {

    sub_10000E0B0();
    swift_beginAccess();
    v13 = sub_100191254();
    swift_endAccess();

    if (!*(*(v2 + 16) + 16))
    {
      v14 = *(v2 + 24);
      *(v2 + 24) = 0;
    }
  }

  else
  {
    if (qword_10021FAA8 != -1)
    {
      sub_100003FC8();
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000964C(v15, qword_100232E90);
    (*(v6 + 16))(v10, a1, v4);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 136315138;
      v20 = SessionType.description.getter();
      v22 = v21;
      (*(v6 + 8))(v10, v4);
      v23 = sub_100009684(v20, v22, v24);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Attempt to release un-acquired ftore writer for: %s", v18, 0xCu);
      sub_100007378(v19);
      sub_1000037A4();

      sub_1000037A4();
    }

    else
    {

      (*(v6 + 8))(v10, v4);
    }
  }
}

void BiomeDatabaseWriter.deinit()
{
  v19 = sub_100046184(&qword_100221158, &unk_1001A8BA0);
  sub_1000036B8();
  __chkstk_darwin(v1);
  v3 = &v18 - v2;
  sub_1000240CC();
  v5 = v4;
  [v4 syncMappedFiles];

  swift_beginAccess();
  v6 = *(v0 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v6 + 48);
    type metadata accessor for SessionType();
    sub_1000036B8();
    (*(v16 + 16))(v3, v15 + *(v16 + 72) * v14);
    v17 = *(*(v6 + 56) + 8 * v14);
    *&v3[*(v19 + 48)] = v17;
    [v17 syncMappedFiles];
    sub_10000B240(v3, &qword_100221158, &unk_1001A8BA0);
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

      sub_100007378((v0 + 40));
      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t BiomeDatabaseWriter.__deallocating_deinit()
{
  BiomeDatabaseWriter.deinit();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10018AA60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100221280, &unk_1001A8C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018AAD0(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018AAF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10018AAD0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10018AB24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10018AAE8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10018AC00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10018ACC4(char a1)
{
  if (a1)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_10018AD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018AC00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018AD28(uint64_t a1)
{
  v2 = sub_10018C070();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018AD64(uint64_t a1)
{
  v2 = sub_10018C070();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018ADA0(void *a1, uint64_t a2, char a3)
{
  v7 = sub_100046184(&qword_1002213B8, &unk_1001A8DB0);
  sub_100003650();
  v9 = v8;
  sub_100003760();
  __chkstk_darwin(v10);
  v12 = &v14[-v11];
  sub_100007534(a1, a1[3]);
  sub_10018C070();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14[15] = 0;
  type metadata accessor for SessionBookmark();
  sub_10018C118(&qword_1002213C0, &protocol conformance descriptor for SessionBookmark);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[14] = a3 & 1;
    v14[13] = 1;
    sub_10018C15C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_10018AF50(void *a1)
{
  v2 = sub_100046184(&qword_100221398, &qword_1001A8DA8);
  sub_100003650();
  v4 = v3;
  sub_100003760();
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  sub_100007534(a1, a1[3]);
  sub_10018C070();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  type metadata accessor for SessionBookmark();
  v10[7] = 0;
  sub_10018C118(&qword_1002213A8, &protocol conformance descriptor for SessionBookmark);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v11;
  v10[5] = 1;
  sub_10018C0C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v2);
  sub_100007378(a1);
  return v9;
}

uint64_t sub_10018B14C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736574617473 && a2 == 0xE600000000000000)
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

uint64_t sub_10018B1D4(void *a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100221408, &qword_1001A9048);
  sub_100003650();
  v6 = v5;
  sub_100003760();
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_100007534(a1, a1[3]);
  sub_10018C508();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100046184(&qword_100221418, &qword_1001A9050);
  sub_10018C5B0(&qword_100221420, sub_10018C55C, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

void *sub_10018B350(void *a1)
{
  v3 = sub_100046184(&qword_100221430, &qword_1001A9058);
  sub_100003650();
  v5 = v4;
  sub_100003760();
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v9 = sub_100007534(a1, a1[3]);
  sub_10018C508();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_100221418, &qword_1001A9050);
    sub_10018C5B0(&qword_100221438, sub_10018C628, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    sub_100007378(a1);
  }

  return v9;
}

uint64_t sub_10018B4F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10018AF50(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10018B54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018B14C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10018B578(uint64_t a1)
{
  v2 = sub_10018C508();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018B5B4(uint64_t a1)
{
  v2 = sub_10018C508();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10018B5F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10018B350(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t UploadStateFileStore.__allocating_init(fileManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  UploadStateFileStore.init(fileManager:)(a1);
  return v2;
}

uint64_t UploadStateFileStore.init(fileManager:)(uint64_t a1)
{
  Logger.init(subsystem:category:)();
  v3 = (v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_sessionUploadStateFileName);
  *v3 = 0xD000000000000019;
  v3[1] = 0x80000001001B3B50;
  *(v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache) = 0;
  *(v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_fileManager) = a1;
  return v1;
}

uint64_t sub_10018B79C()
{
  v0 = type metadata accessor for Date();
  sub_100003650();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  v8 = v6;
  result = (*(v2 + 8))(v5, v0);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v7 / 0x15180 >= 7)
  {
    return Date.init(timeIntervalSince1970:)();
  }

LABEL_9:
  __break(1u);
  return result;
}

void (*sub_10018B8D4())(char *, uint64_t)
{
  sub_100046184(&qword_100218230, &unk_100199A00);
  sub_100003760();
  __chkstk_darwin(v1);
  v3 = v29 - v2;
  v4 = type metadata accessor for URL();
  sub_100003650();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v29 - v11;
  __chkstk_darwin(v13);
  v15 = v29 - v14;
  if (*(v0 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache))
  {
    v16 = *(v0 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache);
  }

  else
  {
    v30 = OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache;
    v31 = v0;
    v16 = *(v0 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_fileManager);
    NSFileManager.parsecdAssetsDirectoryURL.getter();
    if (sub_100008D0C(v3, 1, v4) == 1)
    {
      sub_1000982A0(v3);
      sub_10018C1B0();
      swift_allocError();
      *v17 = 0;
      swift_willThrow();
      return v16;
    }

    (*(v6 + 32))(v15, v3, v4);
    v18 = *(v31 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_sessionUploadStateFileName);
    v29[1] = *(v31 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_sessionUploadStateFileName + 8);
    v29[2] = v18;
    URL.appendingPathComponent(_:)();
    URL.path.getter();
    v19 = v12;
    v20 = *(v6 + 8);
    v20(v19, v4);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v16 fileExistsAtPath:v21];

    if (v22)
    {
      v16 = v20;
      URL.appendingPathComponent(_:)();
      v23 = v32;
      v24 = Data.init(contentsOf:options:)();
      if (v23)
      {
        v20(v9, v4);
        v20(v15, v4);
        return v16;
      }

      v26 = v24;
      v27 = v25;
      v16(v9, v4);
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_10018C204();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v32 = 0;
      v16(v15, v4);
      sub_100014A40(v26, v27);

      v16 = v33;
      *(v31 + v30) = v33;
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      *(v31 + v30) = _swiftEmptyArrayStorage;

      v20(v15, v4);
    }
  }

  return v16;
}

uint64_t UploadStateFileStore.deinit()
{
  v1 = OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t UploadStateFileStore.__deallocating_deinit()
{
  UploadStateFileStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

unint64_t sub_10018BDAC()
{
  result = qword_100221288;
  if (!qword_100221288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221288);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadStateStoreError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for UploadStateFileStore(uint64_t a1)
{
  result = qword_1002212B8;
  if (!qword_1002212B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018BF30(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10018BFE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10018C020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10018C070()
{
  result = qword_1002213A0;
  if (!qword_1002213A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213A0);
  }

  return result;
}

unint64_t sub_10018C0C4()
{
  result = qword_1002213B0;
  if (!qword_1002213B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213B0);
  }

  return result;
}

uint64_t sub_10018C118(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionBookmark();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018C15C()
{
  result = qword_1002213C8;
  if (!qword_1002213C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213C8);
  }

  return result;
}

unint64_t sub_10018C1B0()
{
  result = qword_1002213D0;
  if (!qword_1002213D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213D0);
  }

  return result;
}

unint64_t sub_10018C204()
{
  result = qword_1002213D8;
  if (!qword_1002213D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213D8);
  }

  return result;
}

_BYTE *sub_10018C278(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10018C358()
{
  result = qword_1002213E0;
  if (!qword_1002213E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213E0);
  }

  return result;
}

unint64_t sub_10018C3B0()
{
  result = qword_1002213E8;
  if (!qword_1002213E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213E8);
  }

  return result;
}

unint64_t sub_10018C408()
{
  result = qword_1002213F0;
  if (!qword_1002213F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213F0);
  }

  return result;
}

unint64_t sub_10018C460()
{
  result = qword_1002213F8;
  if (!qword_1002213F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002213F8);
  }

  return result;
}

unint64_t sub_10018C4B4()
{
  result = qword_100221400;
  if (!qword_100221400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221400);
  }

  return result;
}

unint64_t sub_10018C508()
{
  result = qword_100221410;
  if (!qword_100221410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221410);
  }

  return result;
}

unint64_t sub_10018C55C()
{
  result = qword_100221428;
  if (!qword_100221428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221428);
  }

  return result;
}

uint64_t sub_10018C5B0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_100221418, &qword_1001A9050);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10018C628()
{
  result = qword_100221440;
  if (!qword_100221440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UploadStateFileStore.UploadStates.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_10018C72C()
{
  result = qword_100221448;
  if (!qword_100221448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221448);
  }

  return result;
}

unint64_t sub_10018C784()
{
  result = qword_100221450;
  if (!qword_100221450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221450);
  }

  return result;
}

unint64_t sub_10018C7DC()
{
  result = qword_100221458;
  if (!qword_100221458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221458);
  }

  return result;
}

void sub_10018C83C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100046184(&qword_1002190E0, &qword_10019E238);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for SessionType();
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003664();
  v14 = v13 - v12;
  v15 = sub_100024DB8();
  if (v2)
  {

    return;
  }

  v17 = v15;
  v18 = v16;
  v40 = v10;
  v41 = a2;
  v44 = v8;
  type metadata accessor for ProtobufPayload();
  v19 = a1;
  v21 = *&a1[OBJC_IVAR___SRRawPayload_data];
  v20 = *&a1[OBJC_IVAR___SRRawPayload_data + 8];
  swift_unknownObjectRetain();
  sub_100014924(v21, v20);
  v22 = sub_10000AD8C();
  v23 = ProtobufPayload.__allocating_init(with:from:payload:)(v22, 0xE700000000000000, v17, v18, v21, v20);
  v39 = v19;
  v24 = *(*v23 + 104);
  v24(&v42, 0x546E6F6973736573, 0xEB00000000657079);
  if (HIBYTE(v43) >= 0xFFu)
  {
    sub_10000B240(&v42, &qword_10021D078, &qword_1001A2370);
LABEL_9:
    v29 = sub_10018DE90();
    sub_100004248(&type metadata for BiomeSessionError, v29);
    v28 = 1;
    goto LABEL_10;
  }

  if ((v43 & 0xFF00) != 0x800)
  {
    sub_10002633C(&v42);
    goto LABEL_9;
  }

  SessionType.init(withCanonicalIdentifier:)();
  v25 = v44;
  if (sub_100008D0C(v7, 1, v44) == 1)
  {
    sub_10000B240(v7, &qword_1002190E0, &qword_10019E238);
    v26 = sub_10018DE90();
    sub_100004248(&type metadata for BiomeSessionError, v26);
    v28 = 2;
LABEL_10:
    *v27 = v28;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v30 = v40;
  (*(v40 + 32))(v14, v7, v25);
  (*(v30 + 16))(v41, v14, v25);
  v24(&v42, 0x64616F6C796170, 0xE700000000000000);
  if (HIBYTE(v43) < 0xFFu)
  {
    if ((v43 & 0xFF00) == 0x900)
    {
      v31 = objc_allocWithZone(type metadata accessor for RawPayload());
      v32 = RawPayload.init(with:)();
      swift_unknownObjectRelease();

      (*(v40 + 8))(v14, v44);
      *(v41 + *(type metadata accessor for BiomeSessionWrapper(0) + 20)) = v32;
      return;
    }

    sub_10002633C(&v42);
  }

  else
  {
    sub_10000B240(&v42, &qword_10021D078, &qword_1001A2370);
  }

  v33 = v39;
  v34 = sub_10018DE90();
  sub_100004248(&type metadata for BiomeSessionError, v34);
  *v35 = 3;
  swift_willThrow();
  swift_unknownObjectRelease();

  v36 = *(v40 + 8);
  v37 = v44;
  v36(v14, v44);
  v36(v41, v37);
}

uint64_t SessionFeedback.__allocating_init(session:sessionId:type:creationDate:closingDate:)()
{
  sub_10000890C();
  v0 = swift_allocObject();
  SessionFeedback.init(session:sessionId:type:creationDate:closingDate:)();
  return v0;
}

uint64_t SessionFeedback.__allocating_init(withWrappedPayload:creationDate:closingDate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(a1, a2, a3);
  return v6;
}

uint64_t sub_10018CDF4()
{
  sub_100046184(&qword_100221640, &qword_1001A91C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100198F10;
  *(inited + 32) = 0x72657070617257;
  *(inited + 40) = 0xE700000000000000;
  v3.value._rawValue = Dictionary.init(dictionaryLiteral:)();
  v3.is_nil = 0;
  *(inited + 48) = MessageSchemaModel.init(properties:oneOfs:)(v3, v5);
  *(inited + 72) = 0x6E6F6973736553;
  *(inited + 80) = 0xE700000000000000;
  v4.value._rawValue = Dictionary.init(dictionaryLiteral:)();
  v4.is_nil = 0;
  *(inited + 88) = MessageSchemaModel.init(properties:oneOfs:)(v4, v6);
  v1 = Dictionary.init(dictionaryLiteral:)();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_100221460 = v1;
  *algn_100221468 = result;
  return result;
}

void *sub_10018CF2C()
{
  result = sub_100024DB8();
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    type metadata accessor for ProtobufPayload();
    v6 = (*(v0 + *(type metadata accessor for BiomeSessionWrapper(0) + 20)) + OBJC_IVAR___SRRawPayload_data);
    v7 = *v6;
    v8 = v6[1];
    sub_100014924(*v6, v8);
    v9 = ProtobufPayload.__allocating_init(with:from:payload:)(0x6E6F6973736553, 0xE700000000000000, v4, v5, v7, v8);
    (*(*v9 + 104))(&v12, 25705, 0xE200000000000000);
    if (HIBYTE(v13) < 0xFFu)
    {
      if ((v13 & 0xFF00) == 0x800)
      {

        return v12;
      }

      sub_10002633C(&v12);
    }

    else
    {
      sub_10000B240(&v12, &qword_10021D078, &qword_1001A2370);
    }

    v10 = sub_10018DE90();
    sub_100004248(&type metadata for BiomeSessionError, v10);
    *v11 = 3;
    swift_willThrow();
  }

  return result;
}

id SessionFeedback.backingStore.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void SessionFeedback.backingStore.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*SessionFeedback.backingStore.modify())(uint64_t a1)
{
  sub_100011994();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SessionFeedback.sessionId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId);

  return v1;
}

uint64_t sub_10018D200@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  a2(0);
  sub_1000036B8();
  v8 = *(v7 + 16);

  return v8(a3, v3 + v5, v6);
}

uint64_t sub_10018D270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  swift_beginAccess();
  return sub_10002DF94(v3 + v4, a2);
}

uint64_t sub_10018D2CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_10002DF94(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  swift_beginAccess();
  sub_10002405C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t SessionFeedback.closingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  swift_beginAccess();
  return sub_10002DF94(v1 + v3, a1);
}

void *SessionFeedback.init(withWrappedPayload:creationDate:closingDate:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = type metadata accessor for SessionType();
  sub_100003650();
  v29 = v8;
  __chkstk_darwin(v9);
  sub_100003664();
  v12 = v11 - v10;
  v13 = type metadata accessor for BiomeSessionWrapper(0);
  sub_1000036B8();
  __chkstk_darwin(v14);
  sub_100003664();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  v19 = type metadata accessor for Date();
  sub_1000051C0(v5 + v18, 1, 1, v19);
  v20 = a1;
  sub_10018C83C(v20, v17);
  if (v4)
  {

    sub_10000B240(a3, &qword_100217050, &qword_100199180);
    (*(*(v19 - 8) + 8))(a2, v19);
    sub_10000B240(v5 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate, &qword_100217050, &qword_100199180);
    type metadata accessor for SessionFeedback(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = *(v17 + *(v13 + 20));
    *(v5 + 16) = v21;
    v22 = v21;
    v24 = sub_10018CF2C();
    v26 = v25;

    v27 = (v5 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_sessionId);
    *v27 = v24;
    v27[1] = v26;
    (*(v29 + 16))(v12, v17, v7);
    sub_10002719C(v17);
    (*(v29 + 32))(v5 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type, v12, v7);
    (*(*(v19 - 8) + 32))(v5 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate, a2, v19);
    v28 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
    sub_100011994();
    swift_beginAccess();
    sub_10002405C(a3, v5 + v28);
    swift_endAccess();
  }

  return v5;
}

uint64_t sub_10018D72C(char *a1, uint64_t a2)
{
  v52 = a2;
  v55 = a1;
  v3 = sub_100046184(&qword_100217050, &qword_100199180);
  __chkstk_darwin(v3 - 8);
  sub_100003838();
  v56 = v4;
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = type metadata accessor for Date();
  sub_100003650();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100003838();
  v54 = v12;
  __chkstk_darwin(v13);
  v58 = &v50 - v14;
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  v57 = v2;
  Date.addingTimeInterval(_:)();
  Date.init()();
  sub_10018DE38();
  sub_100006DB4();
  v27 = dispatch thunk of static Comparable.< infix(_:_:)();
  v28 = *(v10 + 8);
  v29 = (v27 & 1) == 0;
  if (v27)
  {
    v30 = v23;
  }

  else
  {
    v30 = v20;
  }

  if (v29)
  {
    v20 = v23;
  }

  v53 = *(v10 + 8);
  v28(v30, v8);
  v31 = *(v10 + 32);
  v31(v26, v20, v8);
  sub_10002DF94(v52, v7);
  v32 = sub_100008D0C(v7, 1, v8);
  v51 = v31;
  if (v32 == 1)
  {
    (*(v10 + 16))(v17, v26, v8);
    if (sub_100008D0C(v7, 1, v8) != 1)
    {
      sub_10000B240(v7, &qword_100217050, &qword_100199180);
    }
  }

  else
  {
    v31(v17, v7, v8);
  }

  sub_100006DB4();
  v33 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v34 = *(v10 + 16);
  if (v33)
  {
    v35 = v26;
  }

  else
  {
    v35 = v17;
  }

  v34(v58, v35, v8);
  v36 = v55;
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v37 = v54;
    v38 = v54;
    v39 = v36;
  }

  else
  {
    v37 = v54;
    v38 = v54;
    v39 = v17;
  }

  v34(v38, v39, v8);
  v40 = v58;
  v41 = v37;
  sub_100006DB4();
  v42 = dispatch thunk of static Comparable.< infix(_:_:)();
  v43 = v53;
  v53(v17, v8);
  v43(v26, v8);
  if (v42)
  {
    v44 = v40;
  }

  else
  {
    v44 = v41;
  }

  if (v42)
  {
    v45 = v41;
  }

  else
  {
    v45 = v40;
  }

  v43(v44, v8);
  v46 = v56;
  v51(v56, v45, v8);
  sub_1000051C0(v46, 0, 1, v8);
  v47 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate;
  v48 = v57;
  sub_100011994();
  swift_beginAccess();
  sub_10002405C(v46, v48 + v47);
  return swift_endAccess();
}

uint64_t SessionFeedback.deinit()
{
  v1 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_type;
  type metadata accessor for SessionType();
  sub_1000036B8();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_creationDate;
  type metadata accessor for Date();
  sub_1000036B8();
  (*(v4 + 8))(v0 + v3);
  sub_10000B240(v0 + OBJC_IVAR____TtC14SearchFeedback15SessionFeedback_closingDate, &qword_100217050, &qword_100199180);
  return v0;
}

uint64_t SessionFeedback.__deallocating_deinit()
{
  SessionFeedback.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10018DC70(uint64_t a1)
{
  type metadata accessor for SessionType();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1000504A0(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10018DDB4(uint64_t a1)
{
  result = type metadata accessor for SessionType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for RawPayload();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10018DE38()
{
  result = qword_1002183B8;
  if (!qword_1002183B8)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002183B8);
  }

  return result;
}

unint64_t sub_10018DE90()
{
  result = qword_100221638;
  if (!qword_100221638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221638);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BiomeSessionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10018DFC4()
{
  result = qword_100221648;
  if (!qword_100221648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221648);
  }

  return result;
}

void UploadStateFileStore.uploadDidStart(at:)(uint64_t a1)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v6 = sub_100004788();
    v37 = v6;
    *v2 = 136315138;
    type metadata accessor for SessionBookmark();

    v7 = String.init<A>(describing:)();
    v9 = sub_100009684(v7, v8, &v37);

    *(v2 + 4) = v9;
    sub_100008928(&_mh_execute_header, v10, v5, "Starting upload at bookmark: %s");
    sub_100007378(v6);

    sub_100003FDC();
  }

  v11 = sub_10018B8D4();
  if (!v1)
  {
    v12 = v11;
    v13 = v11 + 40;
    v14 = *(v11 + 2) + 1;
    while (--v14)
    {
      v15 = v13 + 16;
      v16 = *(v13 - 1);
      v17 = *v13;
      type metadata accessor for SessionBookmark();
      v18 = static SessionBookmark.== infix(_:_:)(v16, a1);
      v13 = v15;
      if (v18)
      {

        if (v17)
        {
          v19 = sub_10018C1B0();
          sub_100004248(&type metadata for UploadStateStoreError, v19);
          v21 = 1;
LABEL_21:
          *v20 = v21;
          swift_willThrow();

          return;
        }

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v27, v28))
        {
          swift_slowAlloc();
          v29 = sub_100004788();
          v37 = v29;
          *v12 = 136315138;

          v30 = String.init<A>(describing:)();
          v32 = sub_100009684(v30, v31, &v37);

          *(v12 + 4) = v32;
          sub_100008928(&_mh_execute_header, v33, v28, "restarting upload at bookmark: %s");
          sub_100007378(v29);

          sub_100003FDC();
        }

        return;
      }
    }

    v22 = sub_10018E3B8(v12);
    if (v22)
    {
      v23 = v22;
      type metadata accessor for SessionBookmark();
      if (!static SessionBookmark.< infix(_:_:)(v23, a1))
      {

        v34 = sub_10018C1B0();
        sub_100004248(&type metadata for UploadStateStoreError, v34);
        v21 = 4;
        goto LABEL_21;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10017EEDC(0, *(v12 + 16) + 1, 1, v12);
      v12 = v35;
    }

    v25 = *(v12 + 16);
    v24 = *(v12 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_10017EEDC(v24 > 1, v25 + 1, 1, v12);
      v12 = v36;
    }

    *(v12 + 16) = v25 + 1;
    v26 = v12 + 16 * v25;
    *(v26 + 32) = a1;
    *(v26 + 40) = 0;
    sub_10018E3FC(v12);
  }
}

uint64_t sub_10018E3B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018E3FC(uint64_t a1)
{
  v4 = sub_100046184(&qword_100218230, &unk_100199A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  *(v1 + OBJC_IVAR____TtC14SearchFeedback20UploadStateFileStore_uploadStateCache) = a1;

  NSFileManager.parsecdAssetsDirectoryURL.getter();
  if (sub_100008D0C(v6, 1, v7) == 1)
  {
    sub_1000982A0(v6);
    v14 = sub_10018C1B0();
    sub_100004248(&type metadata for UploadStateStoreError, v14);
    *v15 = 0;
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v24 = a1;
    sub_10018EA20();

    v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v23 = v18;
    if (v2)
    {

      return (*(v8 + 8))(v13, v7);
    }

    else
    {
      v19 = v17;

      URL.appendingPathComponent(_:)();
      v20 = v23;
      Data.write(to:options:)();
      sub_100014A40(v19, v20);
      v21 = *(v8 + 8);
      v21(v10, v7);
      return (v21)(v13, v7);
    }
  }
}

void UploadStateFileStore.uploadDidFinish(at:)(uint64_t a1)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v6 = sub_100004788();
    v23 = v6;
    *v2 = 136315138;
    type metadata accessor for SessionBookmark();

    v7 = String.init<A>(describing:)();
    v9 = sub_100009684(v7, v8, &v23);

    *(v2 + 4) = v9;
    sub_100008928(&_mh_execute_header, v10, v5, "Finished uploading at bookmark: %s");
    sub_100007378(v6);

    sub_100003FDC();
  }

  v11 = sub_10018B8D4();
  if (!v1)
  {
    v12 = v11;
    v13 = 0;
    v14 = 0;
    v15 = *(v11 + 2);
    while (1)
    {
      if (v15 == v14)
      {
        v17 = 3;
        goto LABEL_11;
      }

      v16 = *(v12 + v13 + 32);
      type metadata accessor for SessionBookmark();
      if (static SessionBookmark.== infix(_:_:)(v16, a1))
      {
        break;
      }

      ++v14;
      v13 += 16;
    }

    if (*(v12 + v13 + 40))
    {
      v17 = 2;
LABEL_11:
      v18 = sub_10018C1B0();
      sub_100004248(&type metadata for UploadStateStoreError, v18);
      *v19 = v17;
      swift_willThrow();
LABEL_20:

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10018EA0C(v12);
      v12 = v22;
    }

    v20 = *(v12 + 16);
    if (v14 < v20)
    {
      *(v12 + v13 + 40) = 1;
      if (*(v12 + 40) == 1)
      {
        while (v20 >= 2 && *(v12 + 56) == 1)
        {
          v21 = v20 - 1;
          memmove((v12 + 32), (v12 + 48), 16 * (v20 - 1));
          *(v12 + 16) = v21;

          v20 = *(v12 + 16);
        }
      }

      sub_10018E3FC(v12);
      goto LABEL_20;
    }

    __break(1u);
  }
}

uint64_t sub_10018E950(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for BiomeDatabaseReader.SessionProxy(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
    sub_100006BC0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100006BC0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_10018EA20()
{
  result = qword_100221650;
  if (!qword_100221650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221650);
  }

  return result;
}

uint64_t sub_10018EA74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  *(v6 + 240) = 0;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 128) = 0u;
  sub_1000092B4(a4, v6 + 88);
  v13 = a4[3];
  sub_100007534(a4, v13);
  sub_100003C24();
  v15 = v14(v13);
  v17 = BiomeStoreEnumerator.init(reader:sqliteBridge:enumerationRange:messageName:)(a1, a2, a3, v15, v16, a5, a6);
  sub_100007378(a4);
  return v17;
}

uint64_t sub_10018EB48()
{
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  swift_unknownObjectRelease();
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  swift_beginAccess();
  sub_10018F3B0(v2, v0 + 144);
  return swift_endAccess();
}

void *sub_10018EBAC()
{
  v1 = v0;
  if (*(v0 + 128))
  {
    v2 = *(v0 + 128);
  }

  else
  {
    v3 = BiomeStoreEnumerator.payload.getter();
    if (v4 >> 60 == 15)
    {
      v2 = 0;
    }

    else
    {
      v5 = v3;
      v6 = v4;
      v7 = objc_allocWithZone(type metadata accessor for RawPayload());
      sub_100014924(v5, v6);
      v8 = RawPayload.init(with:)();
      v2 = RawPayload.schemitized(with:)(v0 + 88);
      v10 = v9;
      sub_100014A2C(v5, v6);

      *(v1 + 128) = v2;
      *(v1 + 136) = v10;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  return v2;
}

void *sub_10018EC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10018EBAC();
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 56))(a1, a2, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  else
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = -256;
  }

  return result;
}

double sub_10018ED40@<D0>(void *a1@<X8>)
{
  v3 = v2;
  if (!sub_10018EBAC())
  {
    return sub_1000065EC();
  }

  v6 = v5;
  v15 = v1;
  ObjectType = swift_getObjectType();
  v8 = qword_100221658;
  v9 = off_100221660;
  v10 = *(v6 + 136);

  v10(__src, v8, v9, ObjectType, v6);

  swift_unknownObjectRelease();
  if (!v3)
  {
    memcpy(__dst, __src, 0x62uLL);
    if (__dst[3])
    {
      memcpy(a1, __src, 0x62uLL);
      sub_10018F474(a1, __dst);
      v12 = v15;
      swift_beginAccess();
      sub_10018F3B0(__dst, v12 + 144);
      swift_endAccess();
    }

    else
    {
      sub_10000F94C(__dst, &qword_100221870, &qword_1001A92C8);
      return sub_1000065EC();
    }
  }

  return result;
}

void sub_10018EE94()
{
  sub_10018ED40(v4);
  if (!v0)
  {
    sub_100053240(v4, __src, &qword_100221870, &qword_1001A92C8);
    if (__src[3])
    {
      memcpy(__dst, __src, 0x62uLL);
      sub_100026258(&__dst[40], __src);
      if (BYTE1(__src[7]) != 10)
      {
        sub_10002633C(__src);
        sub_100181A94();
        swift_allocError();
        *v1 = 0;
        swift_willThrow();
      }

      sub_10018F420(__dst);
      sub_10000F94C(v4, &qword_100221870, &qword_1001A92C8);
    }

    else
    {
      sub_1000047A4(v4);
      sub_1000047A4(__src);
    }
  }
}

uint64_t sub_10018EFD0()
{
  sub_10018ED40(v7);
  if (!v1)
  {
    if (v8)
    {
      sub_1000092B4(v7, v5);
      sub_10018F420(v7);
      v2 = v6;
      sub_100007534(v5, v6);
      sub_100003C24();
      v0 = v3(v2);
      sub_100007378(v5);
    }

    else
    {
      sub_10000F94C(v7, &qword_100221870, &qword_1001A92C8);
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10018F090()
{
  v1 = *aQueryid_0;
  v2 = unk_100221670;

  sub_10018EC98(v1, v2, v9);

  if (!v0)
  {
    sub_100053240(v9, v5, &qword_10021D078, &qword_1001A2370);
    if (HIBYTE(*&v6[24]) <= 0xFEu)
    {
      v7[0] = v5[0];
      v7[1] = v5[1];
      v8[0] = *v6;
      *(v8 + 10) = *&v6[10];
      sub_100026258(v7, v5);
      if (v6[25] == 3)
      {
        sub_10002633C(v7);
        sub_10000F94C(v9, &qword_10021D078, &qword_1001A2370);
        return *&v5[0];
      }

      else
      {
        sub_10002633C(v5);
        sub_100181A94();
        swift_allocError();
        *v4 = 0;
        swift_willThrow();
        sub_10002633C(v7);
        return sub_10000F94C(v9, &qword_10021D078, &qword_1001A2370);
      }
    }

    else
    {
      sub_1000047A4(v9);
      sub_1000047A4(v5);
      return 0;
    }
  }

  return result;
}

void sub_10018F200(uint64_t a1)
{
  sub_10018EE94();
  if (!v2)
  {
    v6 = v4;
    if (v4)
    {
      v7 = v5;
      v8 = *(v1 + 64);
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(v6, v7, a1, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      SQLiteContext.setNull()();
    }
  }
}

uint64_t sub_10018F2D0()
{
  sub_100007378((v0 + 88));
  swift_unknownObjectRelease();
  return sub_10000F94C(v0 + 144, &qword_100221870, &qword_1001A92C8);
}

id *sub_10018F30C()
{
  v0 = BiomeStoreEnumerator.deinit();
  sub_100007378(v0 + 11);
  swift_unknownObjectRelease();
  sub_10000F94C((v0 + 18), &qword_100221870, &qword_1001A92C8);
  return v0;
}

uint64_t sub_10018F35C()
{
  v0 = sub_10018F30C();

  return _swift_deallocClassInstance(v0, 242, 7);
}

uint64_t sub_10018F3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100046184(&qword_100221870, &qword_1001A92C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL static SessionDatabaseError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a2)
  {
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    default:
      if ((a4 - 1) < 5)
      {
        return 0;
      }

      if (a2)
      {
        if (!a4)
        {
          return 0;
        }

        v5 = a1 == a3 && a2 == a4;
        return v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
      }

      return !a4;
  }
}

void SessionDatabaseError.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 1:
      v3 = 0;
      goto LABEL_7;
    case 2:
      v3 = 1;
      goto LABEL_7;
    case 3:
      v3 = 2;
      goto LABEL_7;
    case 4:
      v3 = 3;
      goto LABEL_7;
    case 5:
      v3 = 4;
LABEL_7:
      Hasher._combine(_:)(v3);
      break;
    default:
      Hasher._combine(_:)(5uLL);
      if (a3)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      break;
  }
}

Swift::Int SessionDatabaseError.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  SessionDatabaseError.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10018F6E4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  SessionDatabaseError.hash(into:)(v5, v2, v3);
  return Hasher._finalize()();
}

unint64_t sub_10018F750()
{
  result = qword_100221928;
  if (!qword_100221928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221928);
  }

  return result;
}

uint64_t sub_10018F7A4(uint64_t a1)
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

uint64_t sub_10018F7C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 6)
  {
    return (v3 - 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10018F828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_10018F878(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_10018F8C8()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_100232E90);
  sub_10000964C(v0, qword_100232E90);
  return Logger.init(subsystem:category:)();
}

double SessionBookmark.__allocating_init()()
{
  sub_100003FF8();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  return result;
}

uint64_t static SessionBookmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  result = (v4 | v5) == 0;
  if (v4 && v5)
  {
    if (*(a1 + 24) == *(a2 + 24) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

BOOL static SessionBookmark.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = -1.0;
  if (*(a1 + 48))
  {
    v2 = -1.0;
  }

  if (!*(a2 + 48))
  {
    v3 = *(a2 + 40);
  }

  return v2 < v3;
}

uint64_t sub_10018FA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D6B6F6F426D62 && a2 == 0xEA00000000006B72;
  if (v4 || (sub_1000037C8(0x616D6B6F6F426D62, 0xEA00000000006B72) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064;
    if (v6 || (sub_1000037C8(0x496E6F6973736573, 0xE900000000000064) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
    {

      return 2;
    }

    else
    {
      v8 = sub_1000037C8(0x6D617473656D6974, 0xE900000000000070);

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

uint64_t sub_10018FB00(char a1)
{
  if (!a1)
  {
    return 0x616D6B6F6F426D62;
  }

  if (a1 == 1)
  {
    return 0x496E6F6973736573;
  }

  return 0x6D617473656D6974;
}

uint64_t sub_10018FB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10018FA00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018FB90(uint64_t a1)
{
  v2 = sub_10018FFF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018FBCC(uint64_t a1)
{
  v2 = sub_10018FFF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018FC08(void *a1)
{
  v1 = sub_1001908D0(a1);
  if (v2 >> 60 == 15)
  {
    sub_100190934();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  return v1;
}

id sub_10018FC84(uint64_t a1, unint64_t a2)
{
  objc_allocWithZone(BMStoreBookmark);
  sub_100014924(a1, a2);
  result = sub_10019085C(a1, a2);
  if (!result)
  {
    sub_100190934();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  return result;
}

double SessionBookmark.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  return result;
}

uint64_t SessionBookmark.__allocating_init(from:)(void *a1)
{
  sub_100003FF8();
  v2 = swift_allocObject();
  SessionBookmark.init(from:)(a1);
  return v2;
}

uint64_t SessionBookmark.init(from:)(void *a1)
{
  sub_100046184(&qword_100221930, &qword_1001A9500);
  sub_100003650();
  __chkstk_darwin(v4);
  sub_100007534(a1, a1[3]);
  sub_10018FFF8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for SessionBookmark();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10010B838();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v5 = sub_1000084E8();
    *(v1 + 16) = sub_10018FC84(v5, v6);
    sub_1000047BC(1);
    *(v1 + 24) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 32) = v8;
    sub_1000047BC(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    v11 = sub_100006604();
    v12(v11);
    v13 = sub_1000084E8();
    sub_100014A40(v13, v14);
    *(v1 + 40) = v10;
    *(v1 + 48) = 0;
  }

  sub_100007378(a1);
  return v1;
}

unint64_t sub_10018FFF8()
{
  result = qword_100221938;
  if (!qword_100221938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221938);
  }

  return result;
}

uint64_t sub_100190070(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = 0;
  return v4;
}

void SessionBookmark.encode(to:)(void *a1)
{
  v3 = v1;
  sub_100046184(&qword_100221940, &qword_1001A9508);
  sub_100003650();
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v3 + 16);
  if (v10)
  {
    v18 = v7;
    v19 = v6;
    sub_100007534(a1, a1[3]);
    sub_10018FFF8();
    v11 = v10;
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v12 = sub_10018FC08(v11);
    if (v2)
    {
      (*(v18 + 8))(v9, v19);
    }

    else
    {
      v20 = v12;
      v21 = v13;
      v22 = 0;
      sub_100069E5C();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_100014A40(v20, v21);
      v14 = *(v3 + 32);
      v20 = *(v3 + 24);
      v21 = v14;
      v22 = 1;

      sub_100046184(&qword_1002181F0, &qword_10019C610);
      sub_100190364(&qword_100221948, &qword_1002181F0, &qword_10019C610);
      sub_10000F780();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v15 = *(v3 + 48);
      v20 = *(v3 + 40);
      LOBYTE(v21) = v15;
      v22 = 2;
      sub_100046184(&qword_10021ED10, &qword_1001A3940);
      sub_100190364(&qword_100221950, &qword_10021ED10, &qword_1001A3940);
      sub_10000F780();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v16 = sub_100011BFC();
      v17(v16);
    }
  }
}

uint64_t sub_100190364(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void SessionBookmark.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t SessionBookmark.__deallocating_deinit()
{
  SessionBookmark.deinit();
  v0 = sub_100003FF8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

Swift::Int SessionBookmark.hashValue.getter()
{
  Hasher.init(_seed:)();
  SessionBookmark.hash(into:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100190520()
{
  result = qword_100221958;
  if (!qword_100221958)
  {
    type metadata accessor for SessionBookmark();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221958);
  }

  return result;
}

Swift::Int sub_100190574(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 136))(v3);
  return Hasher._finalize()();
}

uint64_t sub_100190604@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SessionBookmark.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionBookmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100190758()
{
  result = qword_100221A38;
  if (!qword_100221A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A38);
  }

  return result;
}

unint64_t sub_1001907B0()
{
  result = qword_100221A40;
  if (!qword_100221A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A40);
  }

  return result;
}

unint64_t sub_100190808()
{
  result = qword_100221A48;
  if (!qword_100221A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A48);
  }

  return result;
}

id sub_10019085C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100014A2C(a1, a2);
  }

  v6 = [v2 initWithProtoData:isa];

  return v6;
}

uint64_t sub_1001908D0(void *a1)
{
  v1 = [a1 encodeAsProto];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100190934()
{
  result = qword_100221A50;
  if (!qword_100221A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionBookmarkError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100190A68()
{
  result = qword_100221A58;
  if (!qword_100221A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100221A58);
  }

  return result;
}

uint64_t sub_100190AC0()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_100232EA8);
  sub_10000964C(v0, qword_100232EA8);
  return Logger.init(subsystem:category:)();
}

void *WritableSessionDatabase.__allocating_init(fileManager:ledger:)(void *a1, uint64_t a2)
{
  sub_1000092B4(a2, v7);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_100190B9C(a1, v7, v5);
  v3 = sub_10000835C();
  sub_100007378(v3);
  return a1;
}

uint64_t sub_100190B9C(void *a1, void *a2, uint64_t a3)
{
  if (qword_10021FAB0 != -1)
  {
    sub_100006614(&qword_10021FAB0);
  }

  v6 = type metadata accessor for Logger();
  sub_10000964C(v6, qword_100232EA8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    *swift_slowAlloc() = 0;
    sub_10000ADA0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_1000041C0();
  }

  sub_10018AA60(a3, v19);
  type metadata accessor for BiomeDatabaseWriter();
  swift_allocObject();
  v14 = a1;
  v15 = sub_10018A3FC(v14, v19);
  sub_1000092B4(a2, v19);
  type metadata accessor for WritableSessionDatabase();
  v16 = swift_allocObject();
  v17 = sub_1001916A4(v15, v19, v16);

  sub_10019176C(a3);
  sub_100007378(a2);
  return v17;
}

Swift::Bool __swiftcall WritableSessionDatabase.closeSession(guid:)(Swift::String guid)
{
  object = guid._object;
  countAndFlagsBits = guid._countAndFlagsBits;
  v4 = v1[12];

  v5 = sub_100023158(v4, v1, countAndFlagsBits, object);
  if (v5)
  {
    v6 = v5;
    v7 = v1[5];
    v8 = v1[6];
    sub_100007534(v1 + 2, v7);
    (*(v8 + 24))(v6, v7, v8);
    v14 = *(v4 + 16);
    os_unfair_lock_lock(v14);
    swift_beginAccess();
    sub_100191370(countAndFlagsBits, object);
    swift_endAccess();

    os_unfair_lock_unlock(v14);

    return 1;
  }

  else
  {
    if (qword_10021FAB0 != -1)
    {
      sub_100006614(&qword_10021FAB0);
    }

    v9 = type metadata accessor for Logger();
    sub_10000964C(v9, qword_100232EA8);
    sub_10000835C();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100009684(countAndFlagsBits, object, v16);
      _os_log_impl(&_mh_execute_header, v10, v11, "Attempt to close missing session with GUID: %s", v12, 0xCu);
      sub_100007378(v13);
      sub_1000041C0();
      sub_1000036D4(v12);
    }

    return 0;
  }
}

uint64_t WritableSessionDatabase.deinit()
{
  sub_100007378((v0 + 16));
  sub_100007378((v0 + 56));

  return v0;
}

uint64_t WritableSessionDatabase.__deallocating_deinit()
{
  WritableSessionDatabase.deinit();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_1001910F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000F794();
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v1;
    v7 = *(*v1 + 24);
    sub_100046184(&qword_100221B58, &qword_1001A98C8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v7);
    v8 = *(v18 + 48);
    v9 = type metadata accessor for SessionType();
    sub_1000036B8();
    (*(v10 + 8))(v8 + *(v10 + 72) * v5, v9);
    v11 = *(v18 + 56);
    v12 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
    sub_1000036B8();
    sub_1001871C8(v11 + *(v13 + 72) * v5, a1);
    sub_100004008(&qword_100217588);
    _NativeDictionary._delete(at:)();
    *v1 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v16 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
    v14 = a1;
    v15 = 1;
  }

  return sub_1000051C0(v14, v15, 1, v16);
}

uint64_t sub_100191254()
{
  v1 = v0;
  v2 = sub_10000F794();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v0;
  v6 = *(*v0 + 24);
  sub_100046184(&qword_100221B50, &unk_1001A98B8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v6);
  v7 = *(v12 + 48);
  v8 = type metadata accessor for SessionType();
  sub_1000036B8();
  (*(v9 + 8))(v7 + *(v9 + 72) * v4, v8);
  v10 = *(*(v12 + 56) + 8 * v4);
  sub_100046184(&qword_10021FAB8, &qword_1001A7F00);
  sub_100004008(&qword_100217588);
  _NativeDictionary._delete(at:)();
  *v1 = v12;
  return v10;
}

uint64_t sub_100191370(uint64_t a1, uint64_t a2)
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
  sub_100046184(&qword_100221B48, &unk_1001A98A8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

  v9 = *(*(v11 + 56) + 8 * v6);
  type metadata accessor for SessionFeedback(0);
  _NativeDictionary._delete(at:)();
  *v3 = v11;
  return v9;
}

void sub_10019144C()
{
  sub_1000082BC();
  sub_100003BC8();
  __chkstk_darwin(v0);
  sub_100011C10();
  sub_100005F80();
  if (v2)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v3 = v1;
  sub_100046184(&qword_100221B58, &qword_1001A98C8);
  if (sub_10000433C())
  {
    sub_10000F794();
    if ((v3 & 1) != (v4 & 1))
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
    sub_100005460();

    sub_100191818(v5, v6);
  }

  else
  {
    v8 = sub_100008C70();
    v9(v8);
    v10 = sub_100005B60();
    sub_1001915C8(v10, v11, v12, v13);
    sub_100005460();
  }
}

uint64_t sub_1001915C8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SessionType();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  result = sub_1001871C8(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1001916A4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v10 = type metadata accessor for BiomeDatabaseWriter();
  v11 = &protocol witness table for BiomeDatabaseWriter;
  *&v9 = a1;
  type metadata accessor for Locker();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(a3 + 96) = v6;
  type metadata accessor for SessionFeedback(0);
  *(a3 + 104) = Dictionary.init(dictionaryLiteral:)();
  sub_100008C84(&v9, a3 + 16);
  sub_100008C84(a2, a3 + 56);
  return a3;
}

uint64_t sub_10019176C(uint64_t a1)
{
  v2 = sub_100046184(&qword_100221280, &unk_1001A8C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001917D4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100191818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BiomeDatabaseReader.SessionProxy(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall URLRequest.value(forHTTPHeaderField:)(Swift::String forHTTPHeaderField)
{
  v1 = URLRequest.value(forHTTPHeaderField:)(forHTTPHeaderField._countAndFlagsBits, forHTTPHeaderField._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall URL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.host(percentEncoded:)(percentEncoded);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t Client.init(_:)()
{
  return Client.init(_:)();
}

{
  return Client.init(_:)();
}

{
  return Client.init(_:)();
}

uint64_t UserAgent.init(_:requestor:)()
{
  return UserAgent.init(_:requestor:)();
}

{
  return UserAgent.init(_:requestor:)();
}

{
  return UserAgent.init(_:requestor:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
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

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

uint64_t UnkeyedEncodingContainer.encode(_:)()
{
  return UnkeyedEncodingContainer.encode(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

{
  return dispatch thunk of SingleValueDecodingContainer.decode(_:)();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

{
  return dispatch thunk of SingleValueEncodingContainer.encode(_:)();
}

uint64_t SingleValueEncodingContainer.encode(_:)()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainerProtocol.encode(_:forKey:)()
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}