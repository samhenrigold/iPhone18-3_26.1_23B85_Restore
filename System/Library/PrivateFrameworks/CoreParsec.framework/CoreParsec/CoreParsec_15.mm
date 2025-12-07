uint64_t sub_100140460()
{
  v0 = Dictionary.init(dictionaryLiteral:)();
  result = Dictionary.init(dictionaryLiteral:)();
  static SchemaStoreModel.emptyStore = v0;
  *algn_100232DB8 = result;
  return result;
}

uint64_t static SchemaStoreModel.emptyStore.getter()
{
  if (qword_10021BFD8 != -1)
  {
    sub_1000045E4(&qword_10021BFD8);
  }

  v0 = static SchemaStoreModel.emptyStore;

  return v0;
}

uint64_t sub_10014053C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73616D65686373 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D756E65 && a2 == 0xE500000000000000)
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

uint64_t sub_100140600(char a1)
{
  if (a1)
  {
    return 0x736D756E65;
  }

  else
  {
    return 0x73616D65686373;
  }
}

uint64_t sub_10014063C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10014053C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100140664(uint64_t a1)
{
  v2 = sub_100140C34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001406A0(uint64_t a1)
{
  v2 = sub_100140C34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SchemaStoreModel.init(from:)(void *a1)
{
  sub_100046184(&qword_10021E828, &qword_1001A2EB0);
  sub_100003BC8();
  __chkstk_darwin(v3);
  v4 = a1[3];
  sub_100007534(a1, v4);
  sub_100140C34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007378(a1);
  }

  else
  {
    sub_100046184(&qword_10021E838, &qword_1001A2EB8);
    v5 = sub_100140DA4(&qword_10021E840, sub_100140C88);
    sub_1000086FC(v5);
    v4 = v10;
    if (!v10)
    {
      v4 = Dictionary.init(dictionaryLiteral:)();
    }

    sub_100046184(&qword_10021E850, &qword_1001A2EC0);
    v6 = sub_100140CDC(&qword_10021E858, sub_100140D50);
    sub_1000086FC(v6);
    if (!v10)
    {
      Dictionary.init(dictionaryLiteral:)();
    }

    v8 = sub_10000F6C0();
    v9(v8);
    sub_100007378(a1);
  }

  return v4;
}

uint64_t SchemaStoreModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100046184(&qword_10021E868, &qword_1001A2EC8);
  sub_100003BC8();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_100007534(a1, a1[3]);
  sub_100140C34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!*(a2 + 16) || (v18 = a2, v17 = 0, sub_100046184(&qword_10021E838, &qword_1001A2EB8), v13 = sub_100140DA4(&qword_10021E870, sub_100140E18), sub_100003D34(v13), !v3))
  {
    if (*(a3 + 16))
    {
      v18 = a3;
      v17 = 1;
      sub_100046184(&qword_10021E850, &qword_1001A2EC0);
      v14 = sub_100140CDC(&qword_10021E880, sub_100140E6C);
      sub_100003D34(v14);
    }
  }

  return (*(v9 + 8))(v12, v4);
}

void static SchemaStoreModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10011C340(a1, a3);
  if (v6)
  {

    sub_10011C558(a2, a4);
  }
}

uint64_t sub_100140BAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SchemaStoreModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void sub_100140C08(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1000063C0(a1, a2, a3, a4, a5);
  *(v8 + 4 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_100003DB0(v6, v11);
  }
}

unint64_t sub_100140C34()
{
  result = qword_10021E830;
  if (!qword_10021E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E830);
  }

  return result;
}

unint64_t sub_100140C88()
{
  result = qword_10021E848;
  if (!qword_10021E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E848);
  }

  return result;
}

uint64_t sub_100140CDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021E850, &qword_1001A2EC0);
    a2();
    result = sub_10000DFB8();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100140D50()
{
  result = qword_10021E860;
  if (!qword_10021E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E860);
  }

  return result;
}

uint64_t sub_100140DA4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(&qword_10021E838, &qword_1001A2EB8);
    a2();
    result = sub_10000DFB8();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100140E18()
{
  result = qword_10021E878;
  if (!qword_10021E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E878);
  }

  return result;
}

unint64_t sub_100140E6C()
{
  result = qword_10021E888;
  if (!qword_10021E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E888);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SchemaStoreModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100140FB0()
{
  result = qword_10021E890;
  if (!qword_10021E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E890);
  }

  return result;
}

unint64_t sub_100141008()
{
  result = qword_10021E898;
  if (!qword_10021E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E898);
  }

  return result;
}

unint64_t sub_100141060()
{
  result = qword_10021E8A0;
  if (!qword_10021E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E8A0);
  }

  return result;
}

void sub_1001410B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1000063C0(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_100003DB0(v6, v11);
  }
}

unint64_t sub_1001410E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_10014114C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1000063C0(a1, a2, a3, a4, a5);
  result = v9(v8, v7 + 40 * v6);
  v11 = *(a5 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v13;
  }

  return result;
}

void sub_100141198(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1000063C0(a1, a2, a3, a4, a5);
  v8 = v7 + 40 * v5;
  v10 = *(v9 + 16);
  *v8 = *v9;
  *(v8 + 16) = v10;
  *(v8 + 32) = *(v9 + 32);
  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_100003DB0(v6, v13);
  }
}

uint64_t sub_1001411F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_100141230(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001412C0(unsigned __int8 a1, char a2)
{
  v2 = 7630441;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7630441;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x3436746E69;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1953393013;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x3436746E6975;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x74616F6C66;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x656C62756F64;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1819242338;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1836412517;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1635017060;
      break;
    case 9:
      v3 = 0xE600000000000000;
      v5 = 0x676E69727473;
      break;
    case 10:
      v3 = 0xE600000000000000;
      v5 = 0x616D65686373;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x3436746E69;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1953393013;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x3436746E6975;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x74616F6C66;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x656C62756F64;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1819242338;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v2 = 1836412517;
      break;
    case 8:
      v6 = 0xE400000000000000;
      v2 = 1635017060;
      break;
    case 9:
      v6 = 0xE600000000000000;
      v2 = 0x676E69727473;
      break;
    case 10:
      v6 = 0xE600000000000000;
      v2 = 0x616D65686373;
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

Swift::Int sub_1001414E8(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100141548(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1);
  sub_100005F34(v4, v5, v6);

  return Hasher._finalize()();
}

uint64_t sub_1001415A0(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1001416C0(uint64_t a1, char a2)
{
  String.hash(into:)();
}

Swift::Int sub_100141794(uint64_t a1, Swift::UInt8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int sub_1001417F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_100005F34(v5, v6, v7);

  return Hasher._finalize()();
}

Schematizer::TypeModel_optional __swiftcall TypeModel.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001FEAA0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t TypeModel.rawValue.getter(char a1)
{
  result = 7630441;
  switch(a1)
  {
    case 1:
      result = 0x3436746E69;
      break;
    case 2:
      result = 1953393013;
      break;
    case 3:
      result = 0x3436746E6975;
      break;
    case 4:
      result = 0x74616F6C66;
      break;
    case 5:
      result = 0x656C62756F64;
      break;
    case 6:
      result = 1819242338;
      break;
    case 7:
      result = 1836412517;
      break;
    case 8:
      result = 1635017060;
      break;
    case 9:
      result = 0x676E69727473;
      break;
    case 10:
      result = 0x616D65686373;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10014198C()
{
  result = qword_10021E950;
  if (!qword_10021E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E950);
  }

  return result;
}

Schematizer::TypeModel_optional sub_100141A48@<W0>(Swift::String *a1@<X0>, Schematizer::TypeModel_optional *a2@<X8>)
{
  result.value = TypeModel.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100141A78@<X0>(uint64_t *a1@<X8>)
{
  result = TypeModel.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for TypeModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TypeModel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100141CB8()
{
  result = qword_10021E958;
  if (!qword_10021E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021E958);
  }

  return result;
}

void sub_100141D0C(int a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
LABEL_12:
    sub_100135B60();
    v13 = *(*v1 + 16);
    sub_100135C04(v13);
    v14 = *v1;
    *(v14 + 16) = v13 + 1;
    *(v14 + 8 * v13 + 32) = vdup_n_s32(v2);
    *v1 = v14;
    return;
  }

  v5 = 0;
  for (i = 24; ; i += 8)
  {
    if (v4 == v5)
    {
      v5 = v4 - 1;
      v8 = (v3 + 32 + 8 * (v4 - 1));
      v9 = v8[1];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        if (v11 != a1)
        {
          goto LABEL_12;
        }

        i = *v8;
        if (i <= a1)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_10:
            if (v4 <= *(v3 + 16))
            {
              v12 = v3 + 8 * v5;
              *(v12 + 32) = i;
              *(v12 + 36) = v2;
              goto LABEL_33;
            }

            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          sub_1000063F0();
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v7 = *(v3 + i + 8);
    if (v7 > a1)
    {
      break;
    }

    ++v5;
  }

  if (i == 24)
  {
    goto LABEL_22;
  }

  v15 = *(v3 + i + 4);
  v10 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v16 != a1)
  {
LABEL_22:
    if (v7 - 1 != a1)
    {

      sub_100142750(v5, v5, a1 | (a1 << 32));
      return;
    }

    LODWORD(v5) = *(v3 + i + 12);
    if (v5 >= a1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v19 = v3 + i;
        *(v19 + 8) = v2;
        *(v19 + 12) = v5;
        goto LABEL_33;
      }

LABEL_40:
      sub_1000063F0();
      goto LABEL_25;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v17 = *(v3 + i);
  if (v7 - 1 != a1)
  {
    if (v17 > a1)
    {
      goto LABEL_42;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000063F0();
    }

    v20 = (v3 + i);
    *v20 = v17;
    v20[1] = v2;
LABEL_33:
    *v1 = v3;
    return;
  }

  v2 = *(v3 + i + 12);
  if (v2 >= v17)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1000063F0();
LABEL_19:
  v18 = (v3 + i);
  *v18 = v17;
  v18[1] = v2;
  *v1 = v3;

  sub_10014218C(v5);
}

void sub_100141F3C(int64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
LABEL_12:
    sub_100135B78();
    v13 = *(*v1 + 16);
    sub_100135C1C(v13);
    v14 = *v1;
    *(v14 + 16) = v13 + 1;
    *(v14 + 16 * v13 + 32) = vdupq_n_s64(v2);
    *v1 = v14;
    return;
  }

  v5 = 0;
  for (i = 24; ; i += 16)
  {
    if (v4 == v5)
    {
      v5 = v4 - 1;
      v8 = (v3 + 32 + 16 * (v4 - 1));
      v9 = v8[1];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        if (v11 != a1)
        {
          goto LABEL_12;
        }

        i = *v8;
        if (*v8 <= a1)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_10:
            if (v4 <= *(v3 + 16))
            {
              v12 = v3 + 16 * v5;
              *(v12 + 32) = i;
              *(v12 + 40) = v2;
              goto LABEL_33;
            }

            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          sub_1001428D4(v3);
          v3 = v21;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v7 = *(v3 + i + 8);
    if (v7 > a1)
    {
      break;
    }

    ++v5;
  }

  if (i == 24)
  {
    goto LABEL_22;
  }

  v15 = *(v3 + i);
  v10 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (v10)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v16 != a1)
  {
LABEL_22:
    if (v7 - 1 != a1)
    {

      sub_100142800(v5, v5, a1, a1);
      return;
    }

    v5 = *(v3 + i + 16);
    if (v5 >= a1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_25:
        v19 = v3 + i;
        *(v19 + 8) = v2;
        *(v19 + 16) = v5;
        goto LABEL_33;
      }

LABEL_40:
      sub_1001428D4(v3);
      v3 = v22;
      goto LABEL_25;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v17 = *(v3 + i - 8);
  if (v7 - 1 != a1)
  {
    if (v17 > a1)
    {
      goto LABEL_42;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001428D4(v3);
      v3 = v24;
    }

    v20 = (v3 + i);
    *(v20 - 1) = v17;
    *v20 = v2;
LABEL_33:
    *v1 = v3;
    return;
  }

  v2 = *(v3 + i + 16);
  if (v2 >= v17)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  sub_1001428D4(v3);
  v3 = v23;
LABEL_19:
  v18 = (v3 + i);
  *(v18 - 1) = v17;
  *v18 = v2;
  *v1 = v3;

  sub_100142208(v5);
}

void sub_10014218C(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001428C0();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_100115B50((v3 + 8 * a1 + 40), v4 - 1 - a1, (v3 + 8 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_100142208(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001428D4(v3);
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_10001B82C((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_100142290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  swift_bridgeObjectRetain_n();
  v3[5] = sub_100138B30(a3);
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_100141F3C(*(*(a3 + 56) + ((v12 << 9) | (8 * v13))));
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

      v3[6] = _swiftEmptyArrayStorage;
      v3[2] = a1;
      v3[3] = a2;
      return;
    }

    v9 = *(a3 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1001423C8(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  if (*(v5 + 16))
  {
    v6 = sub_100005B74(a1, a2);
    if (v7)
    {
      return *(*(v5 + 56) + 8 * v6);
    }
  }

  sub_10011DDBC();
  swift_allocError();
  v10 = v9;
  _StringGuts.grow(_:)(29);

  v11._countAndFlagsBits = a1;
  v11._object = a2;
  String.append(_:)(v11);
  *v10 = 0xD00000000000001BLL;
  *(v10 + 8) = 0x80000001001B3090;
  *(v10 + 41) = 4;
  return swift_willThrow();
}

unint64_t *sub_1001424B8(unint64_t *result)
{
  v2 = 0;
  v3 = *(v1 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = v9 | (v8 << 6);
    if (*(*(v3 + 56) + 8 * v10) == result)
    {
      v11 = *(*(v3 + 48) + 16 * v10);

      return v11;
    }
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
      sub_10011DDBC();
      swift_allocError();
      v13 = v12;
      _StringGuts.grow(_:)(28);

      v16 = 0xD00000000000001ALL;
      v17 = 0x80000001001B3070;
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = &v16;
      String.append(_:)(v14);

      v15 = v17;
      *v13 = v16;
      *(v13 + 8) = v15;
      *(v13 + 41) = 4;
      swift_willThrow();
      return v11;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100142640()
{
}

uint64_t sub_100142678()
{

  return v0;
}

uint64_t sub_1001426B0()
{
  sub_100142678();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100142750(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(*v3 + 16);
  if (v5 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __OFSUB__(1, v7);
  v9 = 1 - v7;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v5 + v9;
  if (__OFADD__(v5, v9))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1001428E8(result, 1, sub_100123220);

  return sub_100142960(v6, a2, 1, a3);
}

uint64_t sub_100142800(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1001428E8(result, 1, sub_1001233FC);

  return sub_100142A08(v7, a2, 1, a3, a4);
}

uint64_t sub_1001428E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

char *sub_100142960(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = *v4;
  v10 = *v4 + 32;
  v11 = (v10 + 8 * result);
  if (v7)
  {
    v12 = *(v9 + 16);
    v13 = __OFSUB__(v12, a2);
    v14 = v12 - a2;
    if (!v13)
    {
      result = sub_100115B50((v10 + 8 * a2), v14, &v11[a3]);
      v15 = *(v9 + 16);
      v13 = __OFADD__(v15, v7);
      v16 = v15 + v7;
      if (!v13)
      {
        *(v9 + 16) = v16;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v11 = a4;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

char *sub_100142A08(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 16 * result);
  if (v8)
  {
    v14 = *(v11 + 16);
    v15 = __OFSUB__(v14, a2);
    v16 = v14 - a2;
    if (!v15)
    {
      result = sub_10001B82C((v12 + 16 * a2), v16, &v13[2 * a3]);
      v17 = *(v11 + 16);
      v15 = __OFADD__(v17, v8);
      v18 = v17 + v8;
      if (!v15)
      {
        *(v11 + 16) = v18;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v13 = a4;
    v13[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_100142AB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 'u':
      v2 = 1;
      goto LABEL_16;
    case 'U':
      v2 = 3;
      goto LABEL_16;
    case 'b':
      v2 = 8;
      goto LABEL_16;
    case 'd':
      v2 = 5;
      goto LABEL_16;
    case 'i':
      v2 = 0;
      goto LABEL_16;
    case 't':
      v2 = 7;
      goto LABEL_16;
    case 'I':
      v2 = 2;
LABEL_16:
      *a2 = v2;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      v3 = 2;
      goto LABEL_17;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = -1;
LABEL_17:
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_100142B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  static ProtoTagPathHelper.extractValue(from:pathAndType:)(a2, a3, a4, &v6);
  sub_1001314A4(a1, 0, 0);
  return sub_10000F94C(&v6, &qword_10021D078, &qword_1001A2370);
}

uint64_t sub_100142E8C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

char *sub_100142F70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100142FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100142F90(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001430E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100142FB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001431EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100142FD0(char *result, int64_t a2, char a3, uint64_t a4)
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
      sub_100046184(&qword_10021EA48, &unk_1001A3400);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_100123794((a4 + 32), v8, v10 + 32);
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

    sub_100046184(&qword_10021CC90, &qword_1001A1730);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1001430E8(char *result, int64_t a2, char a3, uint64_t a4)
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
      sub_100046184(&qword_1002153A8, &qword_1001996B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_100115A08((a4 + 32), v8, v10 + 32);
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

char *sub_1001431EC(char *result, int64_t a2, char a3, uint64_t a4)
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
      sub_100046184(&qword_10021EA40, &qword_1001A33F8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1001237C4((a4 + 32), v8, v10 + 32);
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

uint64_t sub_1001432F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005B74(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 24 * v4);

  return v6;
}

uint64_t sub_100143374@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = xmmword_1001A3410;
  if (*(a3 + 16))
  {
    v12 = xmmword_1001A3410;
    result = sub_100005B74(result, a2);
    if (v7)
    {
      v8 = (*(a3 + 56) + 40 * result);
      v9 = *v8;
      v10 = *(v8 + 1);
      v12 = *(v8 + 1);
      v11 = v8[32];
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

    v5 = v12;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  *a4 = v9;
  *(a4 + 8) = v10;
  *(a4 + 16) = v5;
  *(a4 + 32) = v11;
  return result;
}

double sub_10014341C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1000BBA18(a1), (v5 & 1) != 0))
  {
    sub_100008BB0(v4);
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

unint64_t static ProtoFirstOfHelper.getFirst<A>(ofTags:fromData:atTagPath:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a1;
  v66 = a6;
  v62 = *(a5 - 8);
  __chkstk_darwin(a1);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10021BFE0 != -1)
  {
    sub_100003DB8(&qword_10021BFE0);
  }

  v12 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v12 updateData:isa];

  v14 = sub_1000045B8();
  [v14 v15];
  v16 = *(a4 + 16);
  v17 = Data.count.getter();
  if (v17 < 0)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
  }

  v18 = v17;
  v64 = v6;
  if (v16)
  {
    v19 = 0;
    v20 = a4 + 32;
    v60 = a4 + 32;
    v61 = v16;
    while (1)
    {
      v63 = v19;
      v21 = *(v20 + 8 * v19);
      while (1)
      {
        v22 = [v12 position];
        if ((v22 & 0x8000000000000000) == 0 && v22 >= v18)
        {
          goto LABEL_56;
        }

        v23 = 0;
        v24 = 0;
        for (i = 0; ; ++i)
        {
          if (i > 9)
          {
            v29 = 0;
            goto LABEL_21;
          }

          LOBYTE(v68) = 0;
          [v12 position];
          if (a2 >= [sub_10000640C() position] && (objc_msgSend(v12, "position"), a2 <= objc_msgSend(sub_10000640C(), "length")))
          {
            [v12 data];
            objc_claimAutoreleasedReturnValue();
            v26 = sub_10000DFD8();
            sub_100004604(v26);

            sub_10000AD00([v12 position]);
          }

          else
          {
            [v12 _setError];
          }

          sub_100006CD8();
          v24 |= v27;
          if ((v28 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
        }

        v29 = [v12 hasError] ? 0 : v24;
LABEL_21:
        a2 = v29 & 7;
        if (v21 == (v29 >> 3))
        {
          break;
        }

        PBReaderSkipValueWithTag();
      }

      if (a2 != 2)
      {
        break;
      }

      v30 = 0;
      v31 = 0;
      for (j = 0; ; ++j)
      {
        if (j > 9)
        {
          a2 = 0;
          goto LABEL_37;
        }

        LOBYTE(v68) = 0;
        [v12 position];
        if (a2 >= [sub_10000640C() position] && (objc_msgSend(v12, "position"), a2 <= objc_msgSend(sub_10000640C(), "length")))
        {
          [v12 data];
          objc_claimAutoreleasedReturnValue();
          v33 = sub_10000DFD8();
          sub_100004604(v33);

          sub_10000AD00([v12 position]);
        }

        else
        {
          [v12 _setError];
        }

        sub_100006CD8();
        v31 |= v34;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v30 += 7;
      }

      if ([v12 hasError])
      {
        a2 = 0;
      }

      else
      {
        a2 = v31;
      }

      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

LABEL_37:
      v36 = [v12 position];
      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

      v19 = v63 + 1;
      v18 = (v36 + a2);
      v20 = v60;
      if (v63 + 1 == v61)
      {
        goto LABEL_39;
      }
    }

    v52 = sub_10011DDBC();
    sub_100004248(&type metadata for SchemaError, v52);
    v54 = v53;
    v68 = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    v68 = 0xD000000000000024;
    v69 = 0x80000001001B23E0;
    v67 = a2;
    v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v55._object;
    String.append(_:)(v55);

    v56 = v69;
    *v54 = v68;
    *(v54 + 8) = v56;
    *(v54 + 41) = 12;
    swift_willThrow();
    v57 = sub_1000045B8();
    [v57 v58];
  }

  else
  {
LABEL_39:
    v37 = (v62 + 8);
    while (1)
    {
      v38 = [v12 position];
      if ((v38 & 0x8000000000000000) == 0 && v38 >= v18)
      {
        break;
      }

      v39 = 0;
      v40 = 0;
      for (k = 0; ; ++k)
      {
        if (k > 9)
        {
          v45 = 0;
          goto LABEL_54;
        }

        LOBYTE(v68) = 0;
        [v12 position];
        if (a2 >= [sub_10000640C() position] && (objc_msgSend(v12, "position"), a2 <= objc_msgSend(sub_10000640C(), "length")))
        {
          [v12 data];
          objc_claimAutoreleasedReturnValue();
          v42 = sub_10000DFD8();
          sub_100004604(v42);

          sub_10000AD00([v12 position]);
        }

        else
        {
          [v12 _setError];
        }

        sub_100006CD8();
        v40 |= v43;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v39 += 7;
      }

      if ([v12 hasError])
      {
        v45 = 0;
      }

      else
      {
        v45 = v40;
      }

LABEL_54:
      a2 = v45 >> 3;
      LODWORD(v68) = v45 >> 3;
      v46 = v66;
      sub_100144200();
      dispatch thunk of BinaryInteger.init<A>(_:)();
      v47 = IntegerSet.contains(_:)(v11, v65, a5, v46);
      (*v37)(v11, a5);
      if (v47)
      {
        object = (v45 >> 3);
        goto LABEL_57;
      }

      PBReaderSkipValueWithTag();
    }

LABEL_56:
    object = 0;
LABEL_57:
    v49 = sub_1000045B8();
    [v49 v50];
  }

  return object;
}

id static ProtoFirstOfHelper.getOneOfValue<A>(ofTags:messageSchema:fromData:atTagPath:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v69 = a7;
  v62[0] = a2;
  v68 = a1;
  v64 = a8;
  v11 = *(a6 - 8);
  __chkstk_darwin(a1);
  v67 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10021BFE0 != -1)
  {
    sub_100003DB8(&qword_10021BFE0);
  }

  v13 = qword_10021EA50;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v13 updateData:isa];

  v15 = sub_1000045B8();
  [v15 v16];
  v17 = a5[2];
  v18 = Data.count.getter();
  if (v18 < 0)
  {
    __break(1u);
    __break(1u);
    __break(1u);
  }

  v19 = v18;
  v63 = v11;
  v20 = &selRef_resultWithError_;
  v65 = v8;
  if (!v17)
  {
    v28 = (v63 + 8);
    for (i = v18; ; v19 = i)
    {
      v29 = [v13 v20[216]];
      if ((v29 & 0x8000000000000000) == 0 && v29 >= v19)
      {
        goto LABEL_36;
      }

      v30 = 0;
      for (j = 0; j <= 9; ++j)
      {
        LOBYTE(v71) = 0;
        [v13 position];
        if (a5 >= [sub_10000640C() position] && (objc_msgSend(v13, "position"), a5 <= objc_msgSend(sub_10000640C(), "length")))
        {
          [v13 data];
          objc_claimAutoreleasedReturnValue();
          v32 = sub_10000DFD8();
          sub_100008738(v32);

          sub_10000AD00([v13 position]);
        }

        else
        {
          [v13 _setError];
        }

        sub_1000081DC();
        if ((v33 & 0x80) == 0)
        {
          [v13 hasError];
          break;
        }

        v30 += 7;
      }

      a5 = 0;
      v24 = 0;
      LODWORD(v71) = 0;
      v34 = v69;
      sub_100144200();
      v35 = v67;
      dispatch thunk of BinaryInteger.init<A>(_:)();
      v36 = IntegerSet.contains(_:)(v35, v68, a6, v34);
      (*v28)(v35, a6);
      if (v36)
      {
        break;
      }

      PBReaderSkipValueWithTag();
      v20 = &selRef_resultWithError_;
    }

    v41 = sub_10012BC40(0);
    if (v41 == 6)
    {
      v42 = sub_10011DDBC();
      sub_100004248(&type metadata for SchemaError, v42);
      sub_10000F6D0();
      _StringGuts.grow(_:)(21);

      sub_100007DBC();
LABEL_40:
      *&v71 = v55;
      *(&v71 + 1) = v53;
      LOBYTE(v70[0]) = 0;
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      MEMORY[0] = v71;
      v44 = 12;
    }

    else
    {
      v45 = v41;
      v46 = v62[0][3];
      v47 = v62[0][4];
      sub_100007534(v62[0], v46);
      v48 = v65;
      v49 = (*(v47 + 40))(v46, v47);
      if (v48)
      {
        goto LABEL_37;
      }

      sub_10014341C(0, v49, &v71);

      if (*(&v72 + 1))
      {
        sub_10011FEDC(&v71, v75);
        sub_1000092B4(v75, v74);
        v50 = v76;
        v51 = v77;
        sub_100007534(v75, v76);
        (*(v51 + 40))(v70, v50, v51);
        sub_10012BC90(v13, v45, &v71);
        sub_10011FBE8(v70);
        v60 = v64;
        sub_10011FEDC(v74, v64);
        v61 = v72;
        *(v60 + 40) = v71;
        *(v60 + 56) = v61;
        *(v60 + 72) = v73[0];
        *(v60 + 82) = *(v73 + 10);
        sub_100007378(v75);
        goto LABEL_37;
      }

      sub_100144254(&v71);
      v56 = sub_10011DDBC();
      sub_100004248(&type metadata for SchemaError, v56);
      v24 = v57;
      *&v71 = 0x6761742068746957;
      *(&v71 + 1) = 0xE900000000000020;
      v70[0] = 0;
      v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v58);

      v59 = *(&v71 + 1);
      *v24 = v71;
      *(v24 + 8) = v59;
      v44 = 4;
    }

    *(v24 + 41) = v44;
    swift_willThrow();
    goto LABEL_37;
  }

  v62[2] = v17;
  v62[1] = a5 + 4;
  i = 0;
  v21 = a5[4];
  while (1)
  {
    v22 = [v13 position];
    if ((v22 & 0x8000000000000000) == 0 && v22 >= v19)
    {
      break;
    }

    v23 = 0;
    v24 = 0;
    for (k = 0; k <= 9; ++k)
    {
      LOBYTE(v71) = 0;
      [v13 position];
      if (a5 >= [sub_10000640C() position] && (objc_msgSend(v13, "position"), a5 <= objc_msgSend(sub_10000640C(), "length")))
      {
        [v13 data];
        objc_claimAutoreleasedReturnValue();
        v26 = sub_10000DFD8();
        sub_100008738(v26);

        sub_10000AD00([v13 position]);
      }

      else
      {
        [v13 _setError];
      }

      sub_1000081DC();
      if ((v27 & 0x80) == 0)
      {
        [v13 hasError];
        break;
      }

      v23 += 7;
    }

    a5 = 0;
    if (!v21)
    {
      v52 = sub_10011DDBC();
      sub_100004248(&type metadata for SchemaError, v52);
      sub_10000F6D0();
      _StringGuts.grow(_:)(38);

      sub_100007DBC();
      v55 = v54 + 17;
      goto LABEL_40;
    }

    PBReaderSkipValueWithTag();
  }

LABEL_36:
  v37 = v64;
  *(v64 + 96) = 0;
  v37[4] = 0u;
  v37[5] = 0u;
  v37[2] = 0u;
  v37[3] = 0u;
  *v37 = 0u;
  v37[1] = 0u;
LABEL_37:
  v38 = sub_1000045B8();
  return [v38 v39];
}

id sub_1001441CC()
{
  result = [objc_allocWithZone(PBDataReader) init];
  qword_10021EA50 = result;
  return result;
}

unint64_t sub_100144200()
{
  result = qword_10021EA58;
  if (!qword_10021EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EA58);
  }

  return result;
}

uint64_t sub_100144254(uint64_t a1)
{
  v2 = sub_100046184(&qword_10021CC58, &qword_1001A16F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001442E0()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_100057FF8(v7, qword_100232DC8);
  sub_10000964C(v0, qword_100232DC8);
  static CharacterSet.alphanumerics.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

uint64_t sub_100144420(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 200))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100144474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100144528(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100144548(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_1001445A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001445C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100144634(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

sqlite3_stmt *Bool.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {

    return v5;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v6 = sqlite3_column_int(result, a2);

    return (v6 != 0);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_100144700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Bool.init(with:column:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

sqlite3_stmt *Float.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(result, a2);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_1001447B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  result = Float.init(with:column:)(a1, a2);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

sqlite3_stmt *Double.init(with:column:)(uint64_t a1, uint64_t a2)
{
  result = sub_100154FFC();
  if (v2)
  {
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    sqlite3_column_double(result, a2);
  }

  __break(1u);
  return result;
}

sqlite3_stmt *sub_100144860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = Double.init(with:column:)(a1, a2);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

uint64_t RawRepresentable<>.init(with:column:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a6;
  v11 = type metadata accessor for Optional();
  sub_100003650();
  v38 = v12;
  __chkstk_darwin(v13);
  v41 = &v37 - v14;
  v39 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100003650();
  v40 = v16;
  __chkstk_darwin(v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  v23 = *(a5 + 8);

  v42 = v22;
  v25 = v45;
  v23(v24, a2, AssociatedTypeWitness, a5);
  if (v25)
  {
  }

  v27 = v38;
  v45 = a1;
  v28 = v40;
  (*(v40 + 16))(v19, v42, AssociatedTypeWitness);
  v29 = v41;
  dispatch thunk of RawRepresentable.init(rawValue:)();
  if (sub_100008D0C(v29, 1, a3) == 1)
  {
    (*(v27 + 8))(v41, v11);
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v30._object = 0x80000001001B3110;
    v30._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v30);
    v31._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 0xD000000000000018;
    v32._object = 0x80000001001B3130;
    String.append(_:)(v32);
    v33 = v42;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v34 = v43;
    v35 = v44;
    sub_10011DC44();
    swift_allocError();
    *v36 = v34;
    *(v36 + 8) = v35;
    *(v36 + 16) = 0;
    *(v36 + 24) = 3;
    swift_willThrow();

    return (*(v28 + 8))(v33, AssociatedTypeWitness);
  }

  else
  {
    (*(v28 + 8))(v42, AssociatedTypeWitness);

    return (*(*(a3 - 8) + 32))(v37, v41, a3);
  }
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.getColumnCount()()
{
  result = sub_100154FFC();
  if (!v0)
  {
    return sqlite3_column_count(result);
  }

  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.columnName(for:)(Swift::Int a1)
{
  v3 = sub_100154FFC();
  if (!v1)
  {
    if (a1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1 <= 0x7FFFFFFF)
    {
      v3 = sqlite3_column_name(v3, a1);
      if (v3)
      {
        v3 = String.init(cString:)();
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.columnIndex(for:)(Swift::String a1)
{
  v3 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v6 = String.lowercased()();
  swift_beginAccess();
  v7 = *(v3 + 32);

  v8 = sub_100144ED0(v6._countAndFlagsBits, v6._object, v7);
  v10 = v9;

  if ((v10 & 1) == 0 || (v11 = sub_100154FFC(), v2))
  {

    return v8;
  }

  v20 = countAndFlagsBits;
  v21 = object;
  result = sqlite3_column_count(v11);
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v13 = result;
  while (1)
  {
    if (v13 == v8)
    {

      v18 = sub_10011DC44();
      sub_100004248(&type metadata for SQLiteError, v18);
      *v19 = v20;
      *(v19 + 8) = v21;
      *(v19 + 16) = 0;
      *(v19 + 24) = 1;
      swift_willThrow();

      return v8;
    }

    v14 = sub_100154FFC();
    if (!sqlite3_column_name(v14, v8))
    {
      goto LABEL_14;
    }

    String.init(cString:)();
    v15 = String.lowercased()();

    if (v6._countAndFlagsBits == v15._countAndFlagsBits && v6._object == v15._object)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_17;
    }

LABEL_14:
    ++v8;
  }

LABEL_17:
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v3 + 32);
  sub_100135D6C(v8, v6._countAndFlagsBits, v6._object);
  *(v3 + 32) = v22;

  swift_endAccess();
  return v8;
}

uint64_t sub_100144ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100005B74(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

SQLiter::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.type(at:)(Swift::Int at)
{
  v3 = sub_100154FFC();
  if (v1)
  {
    return v3;
  }

  if (at < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return v3;
  }

  v4 = sqlite3_column_type(v3, at);
  LOBYTE(v3) = SQLiteDataType.init(rawValue:)(v4);
  if (v3 == 5)
  {
    _StringGuts.grow(_:)(21);

    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = sub_10011DC44();
    sub_100004248(&type metadata for SQLiteError, v6);
    *v7 = 0xD000000000000013;
    *(v7 + 8) = 0x80000001001B3150;
    *(v7 + 16) = 0;
    *(v7 + 24) = 3;
    LOBYTE(v3) = swift_willThrow();
  }

  return v3;
}

SQLiter::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.type(for:)(Swift::String a1)
{
  v1 = SQLiteRow.columnIndex(for:)(a1);
  if (!v2)
  {
    LOBYTE(v1) = SQLiteRow.type(at:)(v1);
  }

  return v1;
}

uint64_t SQLiteRow.get<A>(at:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100006418(a1, a2, a3);
  v4 = sub_100004624();
  return v3(v4);
}

{
  sub_100006418(a1, a2, a3);
  v4 = sub_100004624();
  return v3(v4);
}

Swift::Int SQLiteRow.get<A>(from:type:)(Swift::String a1)
{
  result = sub_100008758(a1);
  if (!v1)
  {
    sub_100011B80();
    sub_100006CE8();
    return v2();
  }

  return result;
}

{
  result = sub_100008758(a1);
  if (!v1)
  {
    sub_100011B80();
    sub_100006CE8();
    return v2();
  }

  return result;
}

uint64_t SQLiteRow.getNonNull<A>(at:type:)(Swift::Int a1, uint64_t a2, uint64_t a3)
{
  result = SQLiteRow.type(at:)(a1);
  if (!v7)
  {
    if (result == 4)
    {
      v8 = sub_10011DC44();
      v9 = sub_100004248(&type metadata for SQLiteError, v8);
      return sub_100003DD8(v9, v10);
    }

    else
    {
      return SQLiteRow.get<A>(at:type:)(a1, v6, a3);
    }
  }

  return result;
}

uint64_t SQLiteRow.getNonNull<A>(at:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  result = SQLiteRow.get<A>(at:type:)(a1, v13, a2);
  if (!v4)
  {
    if (sub_100008D0C(v12, 1, a3) == 1)
    {
      (*(v10 + 8))(v12, v9);
      v15 = sub_10011DC44();
      v16 = sub_100004248(&type metadata for SQLiteError, v15);
      return sub_100003DD8(v16, v17);
    }

    else
    {
      return (*(*(a3 - 8) + 32))(a4, v12, a3);
    }
  }

  return result;
}

Swift::Int SQLiteRow.getNonNull<A>(from:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_100145508(a1, a2, a3, a4, a5, a6, SQLiteRow.getNonNull<A>(at:type:));
}

{
  return sub_100145508(a1, a2, a3, a4, a5, a6, SQLiteRow.getNonNull<A>(at:type:));
}

uint64_t SQLiteRow.getNullable<A>(at:type:)@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  result = SQLiteRow.type(at:)(a1);
  if (!v9)
  {
    if (result == 4)
    {
      v10 = a4;
      v11 = 1;
    }

    else
    {
      v12 = *(a3 + 8);

      v12(v13, a1, a2, a3);
      v10 = a4;
      v11 = 0;
    }

    return sub_1000051C0(v10, v11, 1, a2);
  }

  return result;
}

Swift::Int sub_100145508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(Swift::Int))
{
  result = SQLiteRow.columnIndex(for:)(*&a1);
  if (!v9)
  {
    return a7(result);
  }

  return result;
}

uint64_t SQLiteRow.forEachColumn(_:)(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  result = sub_100154FFC();
  if (!v1)
  {
    result = sqlite3_column_count(result);
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      v5 = result;
      while (v5 != v4)
      {
        v6 = sub_100154FFC();
        result = sqlite3_column_name(v6, v4);
        if (result)
        {
          v7 = String.init(cString:)();
          a1(v4, v7, v8);
        }

        ++v4;
      }
    }
  }

  return result;
}

uint64_t static SQLiteUndefined.sqlColumnType.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_10000877C(a1);
  static SQLiteUndefined.sqlColumnType = v1;
  return result;
}

uint64_t static SQLiteUndefined.sqlNullable.setter(uint64_t a1)
{
  v1 = a1;
  result = sub_10000877C(a1);
  static SQLiteUndefined.sqlNullable = v1;
  return result;
}

SQLiter::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteUndefined.getSQLDataType()()
{
  sub_10011DC44();
  swift_allocError();
  return sub_100006448(v0, 58);
}

double SQLiteUndefined.unwrapIfOptional()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t static SQLiteUndefined.create(from:at:nullable:)()
{
  sub_10011DC44();
  swift_allocError();
  return sub_100006448(v0, 36);
}

uint64_t SQLiteUndefined.bind(to:at:)()
{
  sub_10011DC44();
  swift_allocError();
  return sub_100006448(v0, 47);
}

unint64_t static SQLiteUndefined.create(from:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SQLiteUndefined;
  result = sub_10012F9A8();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_100145A88(uint64_t a1)
{
  result = sub_100145AB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100145AB0()
{
  result = qword_10021EAB8;
  if (!qword_10021EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EAB8);
  }

  return result;
}

unint64_t sub_100145B08()
{
  result = qword_10021EAC0;
  if (!qword_10021EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EAC0);
  }

  return result;
}

uint64_t static SQLiteError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a4)
  {
    case 1:
      if (a8 != 1)
      {
        return 0;
      }

      goto LABEL_23;
    case 2:
      if (a8 != 2)
      {
        return 0;
      }

      goto LABEL_23;
    case 3:
      if (a8 != 3)
      {
        return 0;
      }

LABEL_23:
      if (a1 != a5 || a2 != a6)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    case 4:
      v9 = a3 | a2;
      if (a3 | a2 | a1)
      {
        if (a1 != 1 || v9)
        {
          if (a1 != 2 || v9)
          {
            if (a1 != 3 || v9)
            {
              if (a1 != 4 || v9)
              {
                if (a1 != 5 || v9)
                {
                  if (a1 != 6 || v9)
                  {
                    if (a1 != 7 || v9)
                    {
                      if (a1 != 8 || v9)
                      {
                        if (a1 != 9 || v9)
                        {
                          if (a1 != 10 || v9)
                          {
                            if (a8 != 4 || a5 != 11)
                            {
                              return 0;
                            }
                          }

                          else if (a8 != 4 || a5 != 10)
                          {
                            return 0;
                          }
                        }

                        else if (a8 != 4 || a5 != 9)
                        {
                          return 0;
                        }
                      }

                      else if (a8 != 4 || a5 != 8)
                      {
                        return 0;
                      }
                    }

                    else if (a8 != 4 || a5 != 7)
                    {
                      return 0;
                    }
                  }

                  else if (a8 != 4 || a5 != 6)
                  {
                    return 0;
                  }
                }

                else if (a8 != 4 || a5 != 5)
                {
                  return 0;
                }
              }

              else if (a8 != 4 || a5 != 4)
              {
                return 0;
              }
            }

            else if (a8 != 4 || a5 != 3)
            {
              return 0;
            }
          }

          else if (a8 != 4 || a5 != 2)
          {
            return 0;
          }
        }

        else if (a8 != 4 || a5 != 1)
        {
          return 0;
        }

        if (!(a7 | a6))
        {
          return 1;
        }
      }

      else if (a8 == 4 && !(a7 | a6 | a5))
      {
        return 1;
      }

      return 0;
    default:
      if (a8 || a1 != a5)
      {
        return 0;
      }

      if (a2 == a6 && a3 == a7)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100145DBC(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t sub_100145DD8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_100145E18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_100145E60(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_100145ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of static CaseIterable.allCases.getter();
  swift_getKeyPath();
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = _ArrayProtocol.filter(_:)();

  return v4;
}

BOOL sub_100145FC4@<W0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = SQLiteVTabColumnSchema.visible.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

uint64_t SQLiteVTab.__allocating_init(style:)(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return SQLiteBaseVTab.init(style:)(v1);
}

uint64_t SQLiteVTab.__deallocating_deinit()
{
  v0 = SQLiteBaseVTab.deinit();

  return _swift_deallocClassInstance(v0, 41, 7);
}

uint64_t static SQLiteVTab.getTable(forConnection:)(uint64_t a1)
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

  sub_100146180();
  swift_allocError();
  *v2 = 0;
  *(v2 + 4) = 1;
  return swift_willThrow();
}

unint64_t sub_100146180()
{
  result = qword_10021EAC8[0];
  if (!qword_10021EAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10021EAC8);
  }

  return result;
}

uint64_t static SQLiteVTab.getConnection(forCursor:)(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getAssociatedTypeWitness();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  sub_100146180();
  swift_allocError();
  *v2 = 1;
  *(v2 + 4) = 1;
  return swift_willThrow();
}

uint64_t static SQLiteVTab.getTable(forCursor:)(uint64_t a1)
{
  v3 = static SQLiteVTab.getConnection(forCursor:)(a1);
  if (!v2)
  {
    v1 = static SQLiteVTab.getTable(forConnection:)(v3);
  }

  return v1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteVTab.BaseConnection.getTableSchema()()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static CaseIterable.allCases.getter();
  v13[3] = v1;
  v13[4] = v14;
  v13[2] = v2;
  v3 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_100152A48(sub_100146C24, v13, v3, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);

  v14 = v6;
  sub_100046184(&unk_100219130, &qword_100199320);
  sub_10001B84C();
  v7 = BidirectionalCollection<>.joined(separator:)();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_1001464C0@<X0>(void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  String.append(_:)(v14);

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  (*(*(AssociatedConformanceWitness + 8) + 24))(AssociatedTypeWitness);
  (*(v7 + 24))();
  _print_unlocked<A, B>(_:_:)();
  v8 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v9 = (v8 & 1) == 0;
  if (v8)
  {
    v10 = 0x4E454444494820;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteVTab.BaseConnection.columnName(atIndex:)(Swift::Int32 atIndex)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v19 - v4;
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v20 = atIndex;
  v11 = AssociatedTypeWitness;
  SQLiteColumnDescribing<>.init(index:)(atIndex, AssociatedTypeWitness, v5);
  if (sub_100008D0C(v5, 1, AssociatedTypeWitness) == 1)
  {
    v13 = *(v3 + 8);
    v12 = (v3 + 8);
    v13(v5, v19);
    sub_100146180();
    swift_allocError();
    *v14 = v20;
    *(v14 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v9, v5, AssociatedTypeWitness);
    v11 = (*(v10 + 32))(AssociatedTypeWitness, v10);
    v12 = v15;
    (*(v6 + 8))(v9, AssociatedTypeWitness);
  }

  v16 = v11;
  v17 = v12;
  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t SQLiteVTab.BaseConnection.__allocating_init(_:argc:argv:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_allocObject();
  return SQLiteBaseVTab.Connection.init(_:argc:argv:)(a1, v4, a3);
}

uint64_t SQLiteBaseVTab.Connection.deinit()
{

  swift_weakDestroy();
  return v0;
}

uint64_t SQLiteVTab.BaseConnection.__deallocating_deinit()
{
  SQLiteBaseVTab.Connection.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t SQLiteBaseVTab.Cursor.__deallocating_deinit()
{
  swift_weakDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t initializeBufferWithCopyOfBuffer for SQLiteVTabError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteVTabError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLiteVTabError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_100146AE8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100146B04(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t sub_100146C60()
{
  v0 = type metadata accessor for Logger();
  sub_100057FF8(v0, qword_100232DE0);
  sub_10000964C(v0, qword_100232DE0);
  return Logger.init(subsystem:category:)();
}

uint64_t static SQLiteType.sqlNull.getter@<X0>(uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for Optional();
  sub_100006478();
  a2[4] = swift_getWitnessTable();
  sub_1000205C4(a2);
  sub_100007E38();
  return sub_1000051C0(v3, v4, v5, v6);
}

uint64_t static SQLiteType.getSQLNonNullDataType()(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(a1);
  result = sub_10000701C();
  switch(v3)
  {
    case 1:
      result = 2;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      result = 0;
      break;
    case 6:
    case 7:
    case 8:
      result = 3;
      break;
    case 10:
      v4 = sub_10011DC44();
      v5 = sub_100004248(&type metadata for SQLiteError, v4);
      result = sub_10000879C(v5, v6);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SQLiteType.isEqualTo(sqlValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v48[1] = a3;
  v52 = a1;
  sub_100003A6C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100003664();
  v48[0] = v10 - v9;
  v11 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_100003A6C();
  v49 = v13;
  __chkstk_darwin(v14);
  v16 = v48 - v15;
  sub_100003A6C();
  v18 = v17;
  __chkstk_darwin(v19);
  v53 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v48 - v22;
  v25 = __chkstk_darwin(v24);
  v27 = v48 - v26;
  v51 = v7;
  (*(v7 + 16))(v48 - v26, v4, a2, v25);
  sub_1000051C0(v27, 0, 1, a2);
  sub_1000092B4(v52, v54);
  sub_100046184(&qword_10021ECE8, &qword_1001A3928);
  v28 = swift_dynamicCast();
  sub_1000051C0(v23, v28 ^ 1u, 1, a2);
  v50 = TupleTypeMetadata2;
  v29 = *(TupleTypeMetadata2 + 48);
  v52 = v18;
  v30 = (v18 + 16);
  v31 = *(v18 + 16);
  v31(v16, v27, v11);
  v31(&v16[v29], v23, v11);
  sub_10000C8CC();
  if (sub_100008D0C(v32, v33, v34) != 1)
  {
    v31(v53, v16, v11);
    sub_10000C8CC();
    if (sub_100008D0C(v40, v41, v42) != 1)
    {
      v44 = v51;
      v30 = v48[0];
      (*(v51 + 32))(v48[0], &v16[v29], a2);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *(v44 + 8);
      v45(v30, a2);
      v46 = sub_10000CAA4();
      v30(v46);
      v45(v53, a2);
      (v30)(v16, v11);
      goto LABEL_8;
    }

    v43 = sub_10000CAA4();
    v30(v43);
    (*(v51 + 8))(v53, a2);
    goto LABEL_6;
  }

  v35 = sub_10000CAA4();
  v30(v35);
  sub_10000C8CC();
  if (sub_100008D0C(v36, v37, v38) != 1)
  {
LABEL_6:
    (*(v49 + 8))(v16, v50);
    v39 = 0;
    goto LABEL_8;
  }

  (v30)(v16, v11);
  v39 = 1;
LABEL_8:
  (v30)(v23, v11);
  return v39 & 1;
}

uint64_t static SQLiteSafeType<>.create(from:at:nullable:)@<X0>(Swift::Int at@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = v6;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  result = SQLiteRow.type(at:)(at);
  v7 = v14;
  if (v14)
  {
    return result;
  }

  sub_10000DFF0();
  if (v15)
  {
    a6[3] = type metadata accessor for Optional();
    sub_100006478();
    a6[4] = swift_getWitnessTable();
    sub_1000205C4(a6);
    sub_100007E38();
    return sub_1000051C0(v16, v17, v18, v19);
  }

  else
  {
LABEL_6:
    v20 = *(a4 + 8);
    a6[3] = a3;
    a6[4] = a5;
    sub_1000205C4(a6);

    result = v20(v21, at, a3, a4);
    if (v7)
    {
      return sub_100147348(a6);
    }
  }

  return result;
}

void *sub_100147348(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t SQLiteSafeType<>.getSQLDataType()()
{
  sub_10000BF2C();
  v0();
  result = sub_10000701C();
  switch(v2)
  {
    case 1:
      result = 2;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      result = 0;
      break;
    case 6:
    case 7:
    case 8:
      result = 3;
      break;
    case 10:
      v3 = sub_10011DC44();
      v4 = sub_100004248(&type metadata for SQLiteError, v3);
      result = sub_10000879C(v4, v5);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SQLiteSafeType<>.unwrapIfOptional()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  v5 = sub_1000205C4(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(v5, v3, a1);
}

uint64_t static SQLiteUnsafeType<>.create(from:at:nullable:)@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v35 = a4;
  v34 = a2;
  v33 = a6;
  v10 = type metadata accessor for Optional();
  sub_100003A6C();
  v32 = v11;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  v15 = *(a5 + 8);

  result = v15(v16, a1, a3, a5);
  if (!v6)
  {
    v19 = v32;
    v18 = v33;
    v20 = v34;
    v21 = v35;
    sub_10000C8CC();
    if (sub_100008D0C(v22, v23, v24) == 1)
    {
      (*(v19 + 8))(v14, v10);
      if (v20)
      {
        v18[3] = v10;
        v36 = v21;
        sub_100006478();
        v18[4] = swift_getWitnessTable();
        sub_1000205C4(v18);
        sub_100007E38();
        return sub_1000051C0(v25, v26, v27, v28);
      }

      else
      {
        v30 = sub_10011DC44();
        sub_100004248(&type metadata for SQLiteError, v30);
        *(v31 + 8) = 0;
        *(v31 + 16) = 0;
        *v31 = 6;
        *(v31 + 24) = 4;
        return swift_willThrow();
      }
    }

    else
    {
      v18[3] = a3;
      v18[4] = v21;
      v29 = sub_1000205C4(v18);
      return (*(*(a3 - 8) + 32))(v29, v14, a3);
    }
  }

  return result;
}

uint64_t SQLiteUnsafeType<>.getSQLDataType()()
{
  sub_10000BF2C();
  v0();
  result = sub_10000701C();
  switch(v2)
  {
    case 1:
      result = 2;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 9:
      result = 0;
      break;
    case 6:
    case 7:
    case 8:
      result = 3;
      break;
    case 10:
      v3 = sub_10011DC44();
      v4 = sub_100004248(&type metadata for SQLiteError, v3);
      result = sub_10000879C(v4, v5);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SQLiteUnsafeType<>.unwrapIfOptional()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  v5 = sub_1000205C4(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(v5, v3, a1);
}

uint64_t static Bool.create(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = String.lowercased()();
  value = Bool.init(_:)(v2).value;
  *(a1 + 24) = sub_100046184(&qword_10021ECF0, &qword_1001A3930);
  result = sub_100149810(&qword_10021ECF8, &qword_10021ECF0, &qword_1001A3930);
  *(a1 + 32) = result;
  *a1 = value;
  return result;
}

uint64_t sub_100147824@<X0>(Swift::Int at@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v8 = v5;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  result = SQLiteRow.type(at:)(at);
  v8 = v12;
  if (v12)
  {
    return result;
  }

  if (result == 4)
  {
    a5[3] = sub_100046184(&qword_10021ECF0, &qword_1001A3930);
    result = sub_100149810(&qword_10021ECF8, &qword_10021ECF0, &qword_1001A3930);
    a5[4] = result;
    v13 = 2;
  }

  else
  {
LABEL_5:
    a5[3] = a3;
    a5[4] = a4;

    result = Bool.init(with:column:)(v14, at);
    if (v8)
    {
      return sub_100147348(a5);
    }

    v13 = result & 1;
  }

  *a5 = v13;
  return result;
}

uint64_t static Float.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;

  v6 = sub_100149590(a1, a2, &v9, &__swift_stdlib_strtof_clocale, sub_100149908);

  if (v6)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 24) = sub_100046184(&qword_10021ED00, &qword_1001A3938);
  result = sub_100149810(&qword_10021ED08, &qword_10021ED00, &qword_1001A3938);
  *(a3 + 32) = result;
  *a3 = v7;
  *(a3 + 4) = !v6;
  return result;
}

float sub_100147A0C@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *v3;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *a3 = result;
  return result;
}

uint64_t sub_100147A1C@<X0>(Swift::Int at@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v8 = v5;
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  result = SQLiteRow.type(at:)(at);
  v8 = v12;
  if (v12)
  {
    return result;
  }

  if (result == 4)
  {
    *(a5 + 24) = sub_100046184(&qword_10021ED00, &qword_1001A3938);
    result = sub_100149810(&qword_10021ED08, &qword_10021ED00, &qword_1001A3938);
    *(a5 + 32) = result;
    *a5 = 0;
    *(a5 + 4) = 1;
  }

  else
  {
LABEL_5:
    *(a5 + 24) = a3;
    *(a5 + 32) = a4;

    result = Float.init(with:column:)(v13, at);
    if (v8)
    {
      return sub_100147348(a5);
    }

    else
    {
      *a5 = v14;
    }
  }

  return result;
}

uint64_t sub_100147B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_100109714(a1, a2);
  *(a3 + 24) = sub_100046184(&qword_10021ED00, &qword_1001A3938);
  result = sub_100149810(&qword_10021ED08, &qword_10021ED00, &qword_1001A3938);
  *(a3 + 32) = result;
  *a3 = v6;
  *(a3 + 4) = BYTE4(v6) & 1;
  return result;
}

uint64_t static Double.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;

  v6 = sub_100149590(a1, a2, &v9, &_swift_stdlib_strtod_clocale, sub_1001498D8);

  if (v6)
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  *(a3 + 24) = sub_100046184(&qword_10021ED10, &qword_1001A3940);
  result = sub_100149810(&qword_10021ED18, &qword_10021ED10, &qword_1001A3940);
  *(a3 + 32) = result;
  *a3 = v7;
  *(a3 + 8) = !v6;
  return result;
}

uint64_t sub_100147CAC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_100149590(a1, a2, &v4, &_swift_stdlib_strtod_clocale, sub_1001498D8);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

double sub_100147D34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *v3;
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  *a3 = result;
  return result;
}

void sub_100147D44(Swift::Int at@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = v6;
  if (a3)
  {
    v12 = SQLiteRow.type(at:)(at);
    v9 = v13;
    if (v13)
    {
      return;
    }

    if (v12 == SQLiter_SQLiteDataType_null)
    {
      *(a6 + 24) = sub_100046184(&qword_10021ED10, &qword_1001A3940);
      *(a6 + 32) = sub_100149810(&qword_10021ED18, &qword_10021ED10, &qword_1001A3940);
      *a6 = 0;
      *(a6 + 8) = 1;
      return;
    }
  }

  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  v14 = sub_100154FFC();
  if (v9)
  {
    sub_100147348(a6);
    return;
  }

  if (at < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return;
  }

  *a6 = sqlite3_column_double(v14, at);
}

uint64_t sub_100147E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_100147CAC(a1, a2);
  v8 = v7;
  *(a3 + 24) = sub_100046184(&qword_10021ED10, &qword_1001A3940);
  result = sub_100149810(&qword_10021ED18, &qword_10021ED10, &qword_1001A3940);
  *(a3 + 32) = result;
  *a3 = v6;
  *(a3 + 8) = v8 & 1;
  return result;
}

uint64_t static String.create(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for String;
  a3[4] = &protocol witness table for String;
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_100147F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v4 = v3[1];
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v5;
  a3[1] = v4;
}

uint64_t sub_100147F44@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{

  result = String.init(with:column:)(v11, a1);
  if (!v5)
  {
    if (v13)
    {
      a5[3] = a3;
      a5[4] = a4;
      *a5 = result;
      a5[1] = v13;
    }

    else if (a2)
    {
      a5[3] = sub_100046184(&qword_1002181F0, &qword_10019C610);
      result = sub_100149810(&qword_10021EDD0, &qword_1002181F0, &qword_10019C610);
      a5[4] = result;
      *a5 = 0;
      a5[1] = 0;
    }

    else
    {
      sub_10011DC44();
      swift_allocError();
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 6;
      *(v14 + 24) = 4;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100148034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = a3;
  a5[4] = a4;
  *a5 = a1;
  a5[1] = a2;
}

unint64_t static Data.create(from:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = Data.init(base64Encoded:options:)();
  v5 = v4;
  a2[3] = sub_100046184(&qword_10021ED20, &qword_1001A3948);
  result = sub_100149684();
  a2[4] = result;
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1001480BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *v3;
  v5 = v3[1];
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
  a3[1] = v5;
  return sub_100014924(v4, v5);
}

uint64_t sub_1001480D4@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{

  result = Data.init(with:column:)(v11, a1);
  if (!v5)
  {
    if (v13 >> 60 == 15)
    {
      if (a2)
      {
        *(a5 + 24) = sub_100046184(&qword_10021ED20, &qword_1001A3948);
        result = sub_100149684();
        *(a5 + 32) = result;
        *a5 = xmmword_1001995F0;
      }

      else
      {
        sub_10011DC44();
        swift_allocError();
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *v14 = 6;
        *(v14 + 24) = 4;
        return swift_willThrow();
      }
    }

    else
    {
      *(a5 + 24) = a3;
      *(a5 + 32) = a4;
      *a5 = result;
      *(a5 + 8) = v13;
    }
  }

  return result;
}

uint64_t static Optional<A>.create(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    return (*(a4 + 64))();
  }

  a5[3] = type metadata accessor for Optional();
  sub_100006478();
  a5[4] = swift_getWitnessTable();
  sub_1000205C4(a5);
  sub_100007E38();
  return sub_1000051C0(v8, v9, v10, v11);
}

uint64_t Optional<A>.getSQLDataType()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  __chkstk_darwin(a1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10, v6);
  if (sub_100008D0C(v8, 1, v1) == 1)
  {
    return 4;
  }

  (*(v2 + 32))(v4, v8, v1);
  v12 = sub_10000CC98();
  v11 = v13(v12);
  (*(v2 + 8))(v4, v1);
  return v11;
}

uint64_t Optional<A>.unwrapIfOptional()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  sub_100003A6C();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100003664();
  v11 = v10 - v9;
  sub_100003A6C();
  __chkstk_darwin(v12);
  sub_100003664();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13, v17);
  result = sub_100008D0C(v15, 1, v5);
  if (result == 1)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v19 = sub_10000CC98();
    v20(v19);
    (*(a2 + 48))(v5, a2);
    return (*(v7 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_100148658(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, v8);
  if (sub_100008D0C(v10, 1, v3) == 1)
  {
    return 4;
  }

  (*(v4 + 32))(v6, v10, v3);
  v13 = (*(v2 + 40))(v3, v2);
  (*(v4 + 8))(v6, v3);
  return v13;
}

uint64_t sub_100148818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, v10);
  result = sub_100008D0C(v12, 1, v5);
  if (result == 1)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    (*(v6 + 32))(v8, v12, v5);
    (*(v4 + 48))(v5, v4);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_100148A0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    return (*(*(a4 - 8) + 64))();
  }

  a5[3] = a3;
  a5[4] = a4;
  v8 = sub_1000205C4(a5);
  return sub_1000051C0(v8, 1, 1, *(a3 + 16));
}

uint64_t static RawRepresentable<>.sqlColumnType.getter()
{
  swift_getAssociatedTypeWitness();
  sub_10000BF2C();
  return v0();
}

void sub_100148AE0()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_7;
  }

  sub_100005AD8();
  if (v2 == v3)
  {
    sub_100008BD0();
    if (!(v2 ^ v3 | v5))
    {
      goto LABEL_12;
    }

    if (sqlite3_column_int(v4, v1) < -128)
    {
      v6 = sub_10011DC44();
      v7 = sub_100004248(&type metadata for SQLiteError, v6);
      sub_100003E48(v7, v8);
LABEL_7:

LABEL_8:
      sub_10000AF78();
      return;
    }

    sub_10000F2C8();
    if (v1 <= 127)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_100148B6C()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_7;
  }

  sub_100005AD8();
  if (v2 == v3)
  {
    sub_100008BD0();
    if (!(v2 ^ v3 | v5))
    {
      goto LABEL_12;
    }

    if (sqlite3_column_int(v4, v1) < -32768)
    {
      v6 = sub_10011DC44();
      v7 = sub_100004248(&type metadata for SQLiteError, v6);
      sub_100003E48(v7, v8);
LABEL_7:

LABEL_8:
      sub_10000AF78();
      return;
    }

    sub_10000F2C8();
    if (v1 < 0x8000)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_100148BF8()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_6;
  }

  sub_100005AD8();
  if (v2 == v3)
  {
    sub_100008BD0();
    if (!(v2 ^ v3 | v5))
    {
      goto LABEL_8;
    }

    sqlite3_column_int(v4, v1);
LABEL_6:

    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

void sub_100148C5C()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_2;
  }

  sub_100005AD8();
  if (v2 != v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100008BD0();
  if (!(v2 ^ v3 | v5))
  {
    goto LABEL_11;
  }

  if (sqlite3_column_int(v4, v1) < 0)
  {
    v6 = sub_10011DC44();
    v7 = sub_100004248(&type metadata for SQLiteError, v6);
    sub_100003E48(v7, v8);
LABEL_2:

LABEL_8:
    sub_10000AF78();
    return;
  }

  sub_10000F2C8();
  if (v1 <= 0xFF)
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_100148CEC()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_2;
  }

  sub_100005AD8();
  if (v2 != v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100008BD0();
  if (!(v2 ^ v3 | v5))
  {
    goto LABEL_11;
  }

  if (sqlite3_column_int(v4, v1) < 0)
  {
    v6 = sub_10011DC44();
    v7 = sub_100004248(&type metadata for SQLiteError, v6);
    sub_100003E48(v7, v8);
LABEL_2:

LABEL_8:
    sub_10000AF78();
    return;
  }

  sub_10000F2C8();
  if (!HIWORD(v1))
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_100148D7C()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_2;
  }

  sub_100005AD8();
  if (v2 != v3)
  {
    __break(1u);
  }

  else
  {
    sub_100008BD0();
    if (v2 ^ v3 | v5)
    {
      if ((sqlite3_column_int(v4, v1) & 0x80000000) == 0)
      {
        sub_10000F2C8();
        goto LABEL_8;
      }

      v6 = sub_10011DC44();
      v7 = sub_100004248(&type metadata for SQLiteError, v6);
      sub_100003E48(v7, v8);
LABEL_2:

LABEL_8:
      sub_10000AF78();
      return;
    }
  }

  __break(1u);
}

void sub_100148E00()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v0[4] = sub_10000EC68(&qword_10021EDC8);
    *v0 = 256;
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148AE0();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v7;
    }
  }
}

void sub_100148EB8()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v0[4] = sub_10000EC68(&qword_10021EDB8);
    *v0 = 256;
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148C5C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v7;
    }
  }
}

void sub_100148F70()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021EDA8);
    sub_100007970(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148B6C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_100149020()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED98);
    sub_100007970(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148CEC();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_1001490D0()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED88);
    sub_10000DCC4(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148BF8();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_100149180()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED78);
    sub_10000DCC4(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_100148D7C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_100149230()
{
  sub_1000099F4();
  if (v0)
  {
    goto LABEL_7;
  }

  sub_100005AD8();
  if (v2 == v3)
  {
    sub_100008BD0();
    if (!(v2 ^ v3 | v5))
    {
      goto LABEL_9;
    }

    if (sqlite3_column_int64(v4, v1) < 0)
    {
      v6 = sub_10011DC44();
      v7 = sub_100004248(&type metadata for SQLiteError, v6);
      sub_100003E48(v7, v8);
    }

LABEL_7:

    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_1001492C0()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED68);
    sub_1000081F0(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_10004051C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

void sub_1001493B4(Swift::Int at@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, unint64_t *a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v12 = v9;
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
  }

  SQLiteRow.type(at:)(at);
  v12 = v17;
  if (v17)
  {
    return;
  }

  sub_10000DFF0();
  if (v18)
  {
    a8[3] = sub_100046184(a5, a6);
    v19 = sub_100149810(a7, a5, a6);
    sub_1000081F0(v19);
  }

  else
  {
LABEL_6:
    a8[3] = a3;
    a8[4] = a4;

    sub_100149230();
    if (v12)
    {
      sub_100147348(a8);
    }

    else
    {
      *a8 = v20;
    }
  }
}

void sub_10014949C()
{
  sub_100003E2C();
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = sub_10000CC98();
  SQLiteRow.type(at:)(v3);
  if (v1)
  {
    return;
  }

  sub_10000DFF0();
  if (v4)
  {
    v5 = sub_10000CC98();
    v0[3] = sub_100046184(v5, v6);
    v7 = sub_10000EC68(&qword_10021ED50);
    sub_1000081F0(v7);
  }

  else
  {
LABEL_6:
    sub_10000E260();
    sub_100006834();
    sub_10004051C();
    if (v1)
    {
      sub_100147348(v0);
    }

    else
    {
      *v0 = v8;
    }
  }
}

BOOL sub_100149590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_14;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 < 0x21 && ((0x100003E01uLL >> v7) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

LABEL_14:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v5)
    {
      return v12;
    }

    return v9;
  }

  v11[0] = a1;
  v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

  v6 = v11;
LABEL_10:
  v8 = a4(v6, a3);
  if (!v8)
  {
    return 0;
  }

  return *v8 == 0;
}

unint64_t sub_100149684()
{
  result = qword_10021ED28;
  if (!qword_10021ED28)
  {
    sub_1000461CC(&qword_10021ED20, &qword_1001A3948);
    sub_10012F954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ED28);
  }

  return result;
}

unint64_t sub_100149708(uint64_t a1)
{
  result = sub_100149730();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100149730()
{
  result = qword_10021ED30;
  if (!qword_10021ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021ED30);
  }

  return result;
}

uint64_t sub_100149784(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100149810(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000461CC(a2, a3);
    sub_100006478();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_100149868@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X2>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = a2()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

unsigned __int8 *sub_100149988@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021EDC0, qword_1001A3A20);
  result = sub_10014FCA0(&qword_10021EDC8, &qword_10021EDC0, qword_1001A3A20);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v29) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v19 = v8 - 1;
          if (v8 != 1)
          {
            LOBYTE(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v19 != 0;
                if (!v19)
                {
                  break;
                }

                v21 = *i - 48;
                if (v21 > 9)
                {
                  goto LABEL_53;
                }

                v22 = (10 * a1);
                if (v22 != 10 * a1)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = v22 + v21;
                if ((v22 + v21) != a1)
                {
                  goto LABEL_53;
                }

                --v19;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LOBYTE(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_53;
            }

            v28 = (10 * a1);
            if (v28 != 10 * a1)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = v28 + v27;
            if ((v28 + v27) != a1)
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              v14 = (10 * a1);
              if (v14 != 10 * a1)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = v14 - v13;
              if ((v14 - v13) != a1)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LOBYTE(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v34[0] = a1;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v23 = v7 - 1;
      if (v7 != 1)
      {
        LOBYTE(a1) = 0;
        for (k = v34 + 1; ; ++k)
        {
          LOBYTE(v7) = v23 != 0;
          if (!v23)
          {
            break;
          }

          v25 = *k - 48;
          if (v25 > 9)
          {
            goto LABEL_53;
          }

          v26 = (10 * a1);
          if (v26 != 10 * a1)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v26 + v25;
          if ((v26 + v25) != a1)
          {
            goto LABEL_53;
          }

          --v23;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LOBYTE(a1) = 0;
        if (v7)
        {
          for (m = v34; ; ++m)
          {
            v31 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v32 = *m - 48;
            if (v32 > 9 || (v33 = (10 * a1), v33 != 10 * a1) || (LODWORD(a1) = v33 + v32, (v33 + v32) != a1))
            {
              LOBYTE(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v31 = 1;
LABEL_68:
        v35 = v31;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v15 = v7 - 1;
      if (v7 != 1)
      {
        LOBYTE(a1) = 0;
        for (n = v34 + 1; ; ++n)
        {
          LOBYTE(v7) = v15 != 0;
          if (!v15)
          {
            break;
          }

          v17 = *n - 48;
          if (v17 > 9)
          {
            goto LABEL_53;
          }

          v18 = (10 * a1);
          if (v18 != 10 * a1)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v18 - v17;
          if ((v18 - v17) != a1)
          {
            goto LABEL_53;
          }

          --v15;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LOBYTE(a1) = 0;
LABEL_54:
    v35 = v7;
LABEL_55:
    LOBYTE(v29) = v35;
    goto LABEL_56;
  }

  LODWORD(a1) = sub_10014D0F0(a1, a2, 10);

  v29 = (a1 >> 8) & 1;
LABEL_56:
  if (v29)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 1) = v29 & 1;
  return result;
}

unsigned __int8 *sub_100149D60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021EDA0, &qword_1001A3A10);
  result = sub_10014FCA0(&qword_10021EDA8, &qword_10021EDA0, &qword_1001A3A10);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v29) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v19 = v8 - 1;
          if (v8 != 1)
          {
            LOWORD(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v19 != 0;
                if (!v19)
                {
                  break;
                }

                v21 = *i - 48;
                if (v21 > 9)
                {
                  goto LABEL_53;
                }

                v22 = (10 * a1);
                if (v22 != 10 * a1)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = v22 + v21;
                if ((v22 + v21) != a1)
                {
                  goto LABEL_53;
                }

                --v19;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LOWORD(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_53;
            }

            v28 = (10 * a1);
            if (v28 != 10 * a1)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = v28 + v27;
            if ((v28 + v27) != a1)
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              v14 = (10 * a1);
              if (v14 != 10 * a1)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = v14 - v13;
              if ((v14 - v13) != a1)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LOWORD(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v34[0] = a1;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v23 = v7 - 1;
      if (v7 != 1)
      {
        LOWORD(a1) = 0;
        for (k = v34 + 1; ; ++k)
        {
          LOBYTE(v7) = v23 != 0;
          if (!v23)
          {
            break;
          }

          v25 = *k - 48;
          if (v25 > 9)
          {
            goto LABEL_53;
          }

          v26 = (10 * a1);
          if (v26 != 10 * a1)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v26 + v25;
          if ((v26 + v25) != a1)
          {
            goto LABEL_53;
          }

          --v23;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LOWORD(a1) = 0;
        if (v7)
        {
          for (m = v34; ; ++m)
          {
            v31 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v32 = *m - 48;
            if (v32 > 9 || (v33 = (10 * a1), v33 != 10 * a1) || (LODWORD(a1) = v33 + v32, (v33 + v32) != a1))
            {
              LOWORD(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v31 = 1;
LABEL_68:
        v35 = v31;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v15 = v7 - 1;
      if (v7 != 1)
      {
        LOWORD(a1) = 0;
        for (n = v34 + 1; ; ++n)
        {
          LOBYTE(v7) = v15 != 0;
          if (!v15)
          {
            break;
          }

          v17 = *n - 48;
          if (v17 > 9)
          {
            goto LABEL_53;
          }

          v18 = (10 * a1);
          if (v18 != 10 * a1)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v18 - v17;
          if ((v18 - v17) != a1)
          {
            goto LABEL_53;
          }

          --v15;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LOWORD(a1) = 0;
LABEL_54:
    v35 = v7;
LABEL_55:
    LOBYTE(v29) = v35;
    goto LABEL_56;
  }

  LODWORD(a1) = sub_10014D6D4(a1, a2, 10);

  v29 = WORD1(a1) & 1;
LABEL_56:
  if (v29)
  {
    LOWORD(v9) = 0;
  }

  else
  {
    LOWORD(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 2) = v29 & 1;
  return result;
}

unsigned __int8 *sub_10014A138@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021ED80, &qword_1001A3A00);
  result = sub_10014FCA0(&qword_10021ED88, &qword_10021ED80, &qword_1001A3A00);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v29) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v19 = v8 - 1;
          if (v8 != 1)
          {
            LODWORD(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v19 != 0;
                if (!v19)
                {
                  break;
                }

                v21 = *i - 48;
                if (v21 > 9)
                {
                  goto LABEL_53;
                }

                v22 = 10 * a1;
                if (v22 != v22)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  goto LABEL_53;
                }

                --v19;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LODWORD(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_53;
            }

            v28 = 10 * a1;
            if (v28 != v28)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LODWORD(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              v14 = 10 * a1;
              if (v14 != v14)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LODWORD(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v34[0] = a1;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v23 = v7 - 1;
      if (v7 != 1)
      {
        LODWORD(a1) = 0;
        for (k = v34 + 1; ; ++k)
        {
          LOBYTE(v7) = v23 != 0;
          if (!v23)
          {
            break;
          }

          v25 = *k - 48;
          if (v25 > 9)
          {
            goto LABEL_53;
          }

          v26 = 10 * a1;
          if (v26 != v26)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            goto LABEL_53;
          }

          --v23;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LODWORD(a1) = 0;
        if (v7)
        {
          for (m = v34; ; ++m)
          {
            v31 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v32 = *m - 48;
            if (v32 > 9 || (v33 = 10 * a1, v33 != v33) || (LODWORD(a1) = v33 + v32, __OFADD__(v33, v32)))
            {
              LODWORD(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v31 = 1;
LABEL_68:
        v35 = v31;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v15 = v7 - 1;
      if (v7 != 1)
      {
        LODWORD(a1) = 0;
        for (n = v34 + 1; ; ++n)
        {
          LOBYTE(v7) = v15 != 0;
          if (!v15)
          {
            break;
          }

          v17 = *n - 48;
          if (v17 > 9)
          {
            goto LABEL_53;
          }

          v18 = 10 * a1;
          if (v18 != v18)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v18 - v17;
          if (__OFSUB__(v18, v17))
          {
            goto LABEL_53;
          }

          --v15;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LODWORD(a1) = 0;
LABEL_54:
    v35 = v7;
LABEL_55:
    LOBYTE(v29) = v35;
    goto LABEL_56;
  }

  a1 = sub_10014DCB8(a1, a2, 10);

  v29 = HIDWORD(a1) & 1;
LABEL_56:
  if (v29)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    LODWORD(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 4) = v29 & 1;
  return result;
}

unsigned __int8 *sub_10014A4B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021EDB0, &qword_1001A3A18);
  result = sub_10014FCA0(&qword_10021EDB8, &qword_10021EDB0, &qword_1001A3A18);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v24) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v17 = v8 - 1;
          if (v8 != 1)
          {
            LOBYTE(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v17 != 0;
                if (!v17)
                {
                  break;
                }

                v19 = *i - 48;
                if (v19 > 9)
                {
                  goto LABEL_53;
                }

                if (((10 * a1) & 0xF00) != 0)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = (10 * a1) + v19;
                if ((a1 >> 8))
                {
                  goto LABEL_53;
                }

                --v17;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LOBYTE(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_53;
            }

            if (((10 * a1) & 0xF00) != 0)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = (10 * a1) + v23;
            if ((a1 >> 8))
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LOBYTE(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              if (((10 * a1) & 0xF00) != 0)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = (10 * a1) - v13;
              if ((a1 & 0xFFFFFF00) != 0)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LOBYTE(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v28[0] = a1;
    v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v20 = v7 - 1;
      if (v7 != 1)
      {
        LOBYTE(a1) = 0;
        for (k = v28 + 1; ; ++k)
        {
          LOBYTE(v7) = v20 != 0;
          if (!v20)
          {
            break;
          }

          v22 = *k - 48;
          if (v22 > 9)
          {
            goto LABEL_53;
          }

          if (((10 * a1) & 0xF00) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = (10 * a1) + v22;
          if ((a1 >> 8))
          {
            goto LABEL_53;
          }

          --v20;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LOBYTE(a1) = 0;
        if (v7)
        {
          for (m = v28; ; ++m)
          {
            v26 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v27 = *m - 48;
            if (v27 > 9 || ((10 * a1) & 0xF00) != 0 || (LODWORD(a1) = (10 * a1) + v27, ((a1 >> 8) & 1) != 0))
            {
              LOBYTE(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v26 = 1;
LABEL_68:
        v29 = v26;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v14 = v7 - 1;
      if (v7 != 1)
      {
        LOBYTE(a1) = 0;
        for (n = v28 + 1; ; ++n)
        {
          LOBYTE(v7) = v14 != 0;
          if (!v14)
          {
            break;
          }

          v16 = *n - 48;
          if (v16 > 9)
          {
            goto LABEL_53;
          }

          if (((10 * a1) & 0xF00) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = (10 * a1) - v16;
          if ((a1 & 0xFFFFFF00) != 0)
          {
            goto LABEL_53;
          }

          --v14;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LOBYTE(a1) = 0;
LABEL_54:
    v29 = v7;
LABEL_55:
    LOBYTE(v24) = v29;
    goto LABEL_56;
  }

  LODWORD(a1) = sub_10014E6E0(a1, a2, 10);

  v24 = (a1 >> 8) & 1;
LABEL_56:
  if (v24)
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    LOBYTE(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 1) = v24 & 1;
  return result;
}

unsigned __int8 *sub_10014A8A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021ED90, &qword_1001A3A08);
  result = sub_10014FCA0(&qword_10021ED98, &qword_10021ED90, &qword_1001A3A08);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v24) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v17 = v8 - 1;
          if (v8 != 1)
          {
            LOWORD(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v17 != 0;
                if (!v17)
                {
                  break;
                }

                v19 = *i - 48;
                if (v19 > 9)
                {
                  goto LABEL_53;
                }

                if (((10 * a1) & 0xF0000) != 0)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = (10 * a1) + v19;
                if ((a1 & 0x10000) != 0)
                {
                  goto LABEL_53;
                }

                --v17;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LOWORD(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_53;
            }

            if (((10 * a1) & 0xF0000) != 0)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = (10 * a1) + v23;
            if ((a1 & 0x10000) != 0)
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LOWORD(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              if (((10 * a1) & 0xF0000) != 0)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = (10 * a1) - v13;
              if ((a1 & 0xFFFF0000) != 0)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LOWORD(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v28[0] = a1;
    v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v20 = v7 - 1;
      if (v7 != 1)
      {
        LOWORD(a1) = 0;
        for (k = v28 + 1; ; ++k)
        {
          LOBYTE(v7) = v20 != 0;
          if (!v20)
          {
            break;
          }

          v22 = *k - 48;
          if (v22 > 9)
          {
            goto LABEL_53;
          }

          if (((10 * a1) & 0xF0000) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = (10 * a1) + v22;
          if ((a1 & 0x10000) != 0)
          {
            goto LABEL_53;
          }

          --v20;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LOWORD(a1) = 0;
        if (v7)
        {
          for (m = v28; ; ++m)
          {
            v26 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v27 = *m - 48;
            if (v27 > 9 || ((10 * a1) & 0xF0000) != 0 || (LODWORD(a1) = (10 * a1) + v27, (a1 & 0x10000) != 0))
            {
              LOWORD(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v26 = 1;
LABEL_68:
        v29 = v26;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v14 = v7 - 1;
      if (v7 != 1)
      {
        LOWORD(a1) = 0;
        for (n = v28 + 1; ; ++n)
        {
          LOBYTE(v7) = v14 != 0;
          if (!v14)
          {
            break;
          }

          v16 = *n - 48;
          if (v16 > 9)
          {
            goto LABEL_53;
          }

          if (((10 * a1) & 0xF0000) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = (10 * a1) - v16;
          if ((a1 & 0xFFFF0000) != 0)
          {
            goto LABEL_53;
          }

          --v14;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LOWORD(a1) = 0;
LABEL_54:
    v29 = v7;
LABEL_55:
    LOBYTE(v24) = v29;
    goto LABEL_56;
  }

  LODWORD(a1) = sub_10014ECAC(a1, a2, 10);

  v24 = WORD1(a1) & 1;
LABEL_56:
  if (v24)
  {
    LOWORD(v9) = 0;
  }

  else
  {
    LOWORD(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 2) = v24 & 1;
  return result;
}

unsigned __int8 *sub_10014AC90@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = sub_100046184(&qword_10021ED70, &qword_1001A39F8);
  result = sub_10014FCA0(&qword_10021ED78, &qword_10021ED70, &qword_1001A39F8);
  *(a3 + 32) = result;
  v7 = HIBYTE(a2) & 0xF;
  v8 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    LOBYTE(v29) = 1;
    goto LABEL_59;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v19 = v8 - 1;
          if (v8 != 1)
          {
            LODWORD(a1) = 0;
            if (result)
            {
              for (i = result + 1; ; ++i)
              {
                LOBYTE(v7) = v19 != 0;
                if (!v19)
                {
                  break;
                }

                v21 = *i - 48;
                if (v21 > 9)
                {
                  goto LABEL_53;
                }

                v22 = 10 * a1;
                if ((v22 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_53;
                }

                LODWORD(a1) = v22 + v21;
                if (__CFADD__(v22, v21))
                {
                  goto LABEL_53;
                }

                --v19;
              }

              goto LABEL_54;
            }

LABEL_69:
            LOBYTE(v7) = 0;
            goto LABEL_54;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v10 != 45)
      {
        LODWORD(a1) = 0;
        if (v8)
        {
          while (1)
          {
            LOBYTE(v7) = v8 != 0;
            if (!v8)
            {
              goto LABEL_54;
            }

            v27 = *result - 48;
            if (v27 > 9)
            {
              goto LABEL_53;
            }

            v28 = 10 * a1;
            if ((v28 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_53;
            }

            LODWORD(a1) = v28 + v27;
            if (__CFADD__(v28, v27))
            {
              goto LABEL_53;
            }

            ++result;
            --v8;
          }
        }

        goto LABEL_74;
      }

      if (v8 >= 1)
      {
        v11 = v8 - 1;
        if (v8 != 1)
        {
          LODWORD(a1) = 0;
          if (result)
          {
            for (j = result + 1; ; ++j)
            {
              LOBYTE(v7) = v11 != 0;
              if (!v11)
              {
                break;
              }

              v13 = *j - 48;
              if (v13 > 9)
              {
                goto LABEL_53;
              }

              v14 = 10 * a1;
              if ((v14 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_53;
              }

              LODWORD(a1) = v14 - v13;
              if (v14 < v13)
              {
                goto LABEL_53;
              }

              --v11;
            }

            goto LABEL_54;
          }

          goto LABEL_69;
        }

LABEL_73:
        LODWORD(a1) = 0;
LABEL_74:
        LOBYTE(v7) = 1;
        goto LABEL_54;
      }

      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v34[0] = a1;
    v34[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (!v7)
      {
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      v23 = v7 - 1;
      if (v7 != 1)
      {
        LODWORD(a1) = 0;
        for (k = v34 + 1; ; ++k)
        {
          LOBYTE(v7) = v23 != 0;
          if (!v23)
          {
            break;
          }

          v25 = *k - 48;
          if (v25 > 9)
          {
            goto LABEL_53;
          }

          v26 = 10 * a1;
          if ((v26 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v26 + v25;
          if (__CFADD__(v26, v25))
          {
            goto LABEL_53;
          }

          --v23;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (a1 != 45)
      {
        LODWORD(a1) = 0;
        if (v7)
        {
          for (m = v34; ; ++m)
          {
            v31 = v7 != 0;
            if (!v7)
            {
              break;
            }

            v32 = *m - 48;
            if (v32 > 9 || (v33 = 10 * a1, (v33 & 0xFFFFFFFF00000000) != 0) || (LODWORD(a1) = v33 + v32, __CFADD__(v33, v32)))
            {
              LODWORD(a1) = 0;
              goto LABEL_68;
            }

            --v7;
          }

          goto LABEL_68;
        }

LABEL_79:
        v31 = 1;
LABEL_68:
        v35 = v31;
        goto LABEL_55;
      }

      if (!v7)
      {
        goto LABEL_76;
      }

      v15 = v7 - 1;
      if (v7 != 1)
      {
        LODWORD(a1) = 0;
        for (n = v34 + 1; ; ++n)
        {
          LOBYTE(v7) = v15 != 0;
          if (!v15)
          {
            break;
          }

          v17 = *n - 48;
          if (v17 > 9)
          {
            goto LABEL_53;
          }

          v18 = 10 * a1;
          if ((v18 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_53;
          }

          LODWORD(a1) = v18 - v17;
          if (v18 < v17)
          {
            goto LABEL_53;
          }

          --v15;
        }

        goto LABEL_54;
      }
    }

LABEL_53:
    LODWORD(a1) = 0;
LABEL_54:
    v35 = v7;
LABEL_55:
    LOBYTE(v29) = v35;
    goto LABEL_56;
  }

  a1 = sub_10014F278(a1, a2, 10);

  v29 = HIDWORD(a1) & 1;
LABEL_56:
  if (v29)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    LODWORD(v9) = a1;
  }

LABEL_59:
  *a3 = v9;
  *(a3 + 4) = v29 & 1;
  return result;
}

void sub_10014B020(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CAB4(a1, a2, a3, a4);
  v7 = sub_10001AE5C(v6);
  sub_10001BEDC(v7);
  if (!v8)
  {
    v39 = 0;
LABEL_69:
    sub_10014FD74(v39);
    return;
  }

  if ((v5 & 0x1000000000000000) != 0)
  {

    v40 = sub_10000CC98();
    sub_10014E22C(v40, v41, 10);
    v13 = v42;
    v38 = v43;

LABEL_66:
    if (v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = v13;
    }

    goto LABEL_69;
  }

  if ((v5 & 0x2000000000000000) == 0)
  {
    if ((v4 & 0x1000000000000000) == 0)
    {
      sub_10000CC98();
      _StringObject.sharedUTF8.getter();
    }

    sub_100013628();
    if (v12)
    {
      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          v13 = 0;
          if (v9)
          {
            sub_100017CE0();
            while (1)
            {
              LOBYTE(v15) = v25 != 0;
              if (!v25)
              {
                goto LABEL_55;
              }

              sub_1000087CC();
              if (!v12 & v16)
              {
                goto LABEL_54;
              }

              sub_100006CFC();
              if (!v12)
              {
                goto LABEL_54;
              }

              v13 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_54;
              }

              v25 = v26 - 1;
            }
          }

LABEL_70:
          LOBYTE(v15) = 0;
LABEL_55:
          v44 = v15;
LABEL_65:
          v38 = v44;
          goto LABEL_66;
        }

        goto LABEL_74;
      }

      goto LABEL_78;
    }

    if (v11 != 45)
    {
      v13 = 0;
      if (v10)
      {
        while (1)
        {
          LOBYTE(v15) = v10 != 0;
          if (!v10)
          {
            goto LABEL_55;
          }

          v33 = *v9 - 48;
          if (v33 > 9)
          {
            goto LABEL_54;
          }

          v34 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            goto LABEL_54;
          }

          v13 = v34 + v33;
          if (__OFADD__(v34, v33))
          {
            goto LABEL_54;
          }

          ++v9;
          --v10;
        }
      }

      goto LABEL_75;
    }

    if (v10 >= 1)
    {
      if (v10 != 1)
      {
        v13 = 0;
        if (v9)
        {
          sub_100017CE0();
          while (1)
          {
            LOBYTE(v15) = v14 != 0;
            if (!v14)
            {
              goto LABEL_55;
            }

            sub_1000087CC();
            if (!v12 & v16)
            {
              goto LABEL_54;
            }

            sub_100006CFC();
            if (!v12)
            {
              goto LABEL_54;
            }

            v13 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_54;
            }

            v14 = v17 - 1;
          }
        }

        goto LABEL_70;
      }

LABEL_74:
      v13 = 0;
LABEL_75:
      LOBYTE(v15) = 1;
      goto LABEL_55;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_10014FD94();
  if (!v12)
  {
    if (v20 == 45)
    {
      if (!v15)
      {
        goto LABEL_77;
      }

      v13 = 0;
      if (v15 != 1)
      {
        sub_100015BD4();
        while (1)
        {
          v22 = v21 != 0;
          if (!v21)
          {
            goto LABEL_64;
          }

          sub_1000087CC();
          if (!v12 & v16)
          {
            goto LABEL_63;
          }

          sub_100006CFC();
          if (!v12)
          {
            goto LABEL_63;
          }

          v13 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            goto LABEL_63;
          }

          sub_10001909C();
        }
      }
    }

    else
    {
      v13 = 0;
      if (v15)
      {
        while (1)
        {
          v22 = v15 != 0;
          if (!v15)
          {
            goto LABEL_64;
          }

          sub_1000087CC();
          if (!v12 & v16 || (sub_100006CFC(), !v12) || (v13 = v37 + v36, __OFADD__(v37, v36)))
          {
LABEL_63:
            v13 = 0;
            goto LABEL_64;
          }

          v15 = v35 - 1;
        }
      }
    }

    v22 = 1;
LABEL_64:
    v44 = v22;
    goto LABEL_65;
  }

  if (v15)
  {
    v29 = v15 - 1;
    if (v15 == 1)
    {
LABEL_54:
      v13 = 0;
    }

    else
    {
      v13 = 0;
      while (1)
      {
        LOBYTE(v15) = v29 != 0;
        if (!v29)
        {
          break;
        }

        sub_1000087CC();
        if (!v12 & v16)
        {
          goto LABEL_54;
        }

        sub_100006CFC();
        if (!v12)
        {
          goto LABEL_54;
        }

        v13 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          goto LABEL_54;
        }

        v29 = v30 - 1;
      }
    }

    goto LABEL_55;
  }

LABEL_79:
  __break(1u);
}

void sub_10014B2E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CAB4(a1, a2, a3, a4);
  v7 = sub_10001AE5C(v6);
  sub_10001BEDC(v7);
  if (!v8)
  {
    v35 = 0;
    goto LABEL_67;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      sub_10014FD94();
      if (v12)
      {
        if (v18)
        {
          v4 = 0;
          if (v18 != 1)
          {
            sub_100015BD4();
            while (1)
            {
              v14 = v26 != 0;
              if (!v26)
              {
                goto LABEL_62;
              }

              sub_1000087CC();
              if (!v12 && v15 || (sub_100012F94(), !v12) || (sub_100005AE4(), v4 = v28 + v27, __CFADD__(v28, v27)))
              {
LABEL_61:
                v4 = 0;
                goto LABEL_62;
              }

              sub_10001909C();
            }
          }

          goto LABEL_74;
        }

        goto LABEL_78;
      }

      if (v19 != 45)
      {
        v4 = 0;
        if (v18)
        {
          while (1)
          {
            v14 = v18 != 0;
            if (!v18)
            {
              goto LABEL_62;
            }

            sub_1000087CC();
            if (!v12 && v15)
            {
              goto LABEL_61;
            }

            sub_100012F94();
            if (!v12)
            {
              goto LABEL_61;
            }

            sub_100005AE4();
            v4 = v33 + v32;
            if (__CFADD__(v33, v32))
            {
              goto LABEL_61;
            }

            v18 = v31 - 1;
          }
        }

        goto LABEL_74;
      }

      if (v18)
      {
        v4 = 0;
        if (v18 != 1)
        {
          sub_100015BD4();
          while (1)
          {
            v14 = v20 != 0;
            if (!v20)
            {
              goto LABEL_62;
            }

            sub_1000087CC();
            if (!v12 && v15)
            {
              goto LABEL_61;
            }

            sub_100012F94();
            if (!v12)
            {
              goto LABEL_61;
            }

            sub_100005AE4();
            v4 = v22 - v21;
            if (v22 < v21)
            {
              goto LABEL_61;
            }

            sub_10001909C();
          }
        }

        goto LABEL_74;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) == 0)
      {
        sub_10000CC98();
        _StringObject.sharedUTF8.getter();
      }

      sub_100013628();
      if (v12)
      {
        if (v10 >= 1)
        {
          if (v10 != 1)
          {
            v4 = 0;
            if (v9)
            {
              sub_100017CE0();
              while (1)
              {
                v14 = v23 != 0;
                if (!v23)
                {
                  goto LABEL_62;
                }

                sub_1000087CC();
                if (!v12 && v15)
                {
                  goto LABEL_61;
                }

                sub_100012F94();
                if (!v12)
                {
                  goto LABEL_61;
                }

                sub_100005AE4();
                v4 = v25 + v24;
                if (__CFADD__(v25, v24))
                {
                  goto LABEL_61;
                }

                sub_10001909C();
              }
            }

LABEL_70:
            v14 = 0;
LABEL_62:
            v40 = v14;
LABEL_63:
            v34 = v40;
            goto LABEL_64;
          }

          goto LABEL_73;
        }

        goto LABEL_77;
      }

      if (v11 != 45)
      {
        v4 = 0;
        if (v10)
        {
          while (1)
          {
            v29 = v10 != 0;
            if (!v10)
            {
              goto LABEL_69;
            }

            v30 = *v9 - 48;
            if (v30 > 9 || !is_mul_ok(v4, 0xAuLL) || (v15 = __CFADD__(10 * v4, v30), v4 = 10 * v4 + v30, v15))
            {
              v4 = 0;
              goto LABEL_69;
            }

            ++v9;
            --v10;
          }
        }

LABEL_79:
        v29 = 1;
LABEL_69:
        v40 = v29;
        goto LABEL_63;
      }

      if (v10 >= 1)
      {
        if (v10 != 1)
        {
          v4 = 0;
          if (v9)
          {
            sub_100017CE0();
            while (1)
            {
              v14 = v13 != 0;
              if (!v13)
              {
                goto LABEL_62;
              }

              sub_1000087CC();
              if (!v12 && v15)
              {
                goto LABEL_61;
              }

              sub_100012F94();
              if (!v12)
              {
                goto LABEL_61;
              }

              sub_100005AE4();
              v4 = v17 - v16;
              if (v17 < v16)
              {
                goto LABEL_61;
              }

              sub_10001909C();
            }
          }

          goto LABEL_70;
        }

LABEL_73:
        v4 = 0;
LABEL_74:
        v14 = 1;
        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v36 = sub_10000CC98();
  sub_10014F7EC(v36, v37, 0xAuLL);
  v4 = v38;
  v34 = v39;

LABEL_64:
  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v4;
  }

LABEL_67:
  sub_10014FD74(v35);
}

uint64_t sub_10014B5A8@<X0>(uint64_t *a5@<X8>)
{
  a5[3] = type metadata accessor for Optional();
  sub_100008204();
  a5[4] = swift_getWitnessTable();
  sub_1000205C4(a5);

  return dispatch thunk of LosslessStringConvertible.init(_:)();
}

void sub_10014B658(_BYTE *a1@<X8>)
{
  sub_100148AE0();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SQLiteInteger32.init(with:column:)()
{
  sub_100006A3C();
  sub_100006840();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000407C();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_10000702C();
  v11 = sub_100154FFC();
  if (v0)
  {
    goto LABEL_19;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    v12 = sqlite3_column_int(v11, v2);
    if (v1 == &type metadata for Int32)
    {
      goto LABEL_16;
    }

    v28 = v12;
    sub_100007E48();
    dispatch thunk of static FixedWidthInteger.min.getter();
    sub_100007E48();
    v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
    sub_10000F6E8();
    v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v13)
    {
      if (v14 > 32)
      {
        goto LABEL_15;
      }

      sub_10000F6E8();
      v18 = dispatch thunk of BinaryInteger._lowWord.getter();
      v19 = sub_100011BA0();
      v20(v19);
      if (v28 < v18)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v14 > 31)
      {
        if (v28 < 0)
        {
          v23 = sub_100011BA0();
          v24(v23);
          goto LABEL_18;
        }

LABEL_15:
        sub_10014CB70();
        sub_1000056AC();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v21 = sub_10014FD3C();
        v22 = *(v5 + 8);
        v22(v9, v1);
        v22(v3, v1);
        if ((v21 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_18:
        v25 = sub_10011DC44();
        v26 = sub_100004248(&type metadata for SQLiteError, v25);
        sub_10000DCD8(v26, v27);
        goto LABEL_19;
      }

      sub_10000F6E8();
      v15 = dispatch thunk of BinaryInteger._lowWord.getter();
      v16 = sub_100011BA0();
      v17(v16);
      if (v28 < v15)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    sub_10014CB70();
    sub_1000056AC();
    dispatch thunk of BinaryInteger.init<A>(_:)();
LABEL_19:

    sub_100007FD4();
    return;
  }

  __break(1u);
}

uint64_t sub_10014B948(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v7 = result;
        sub_10011DC44();
        swift_allocError();
        *v8 = v7;
        *(v8 + 8) = 0xD000000000000012;
        *(v8 + 16) = 0x80000001001B3290;
        *(v8 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BA08(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v7 = result;
        sub_10011DC44();
        swift_allocError();
        *v8 = v7;
        *(v8 + 8) = 0xD000000000000012;
        *(v8 + 16) = 0x80000001001B3290;
        *(v8 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BAC8(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v7 = result;
        sub_10011DC44();
        swift_allocError();
        *v8 = v7;
        *(v8 + 8) = 0xD000000000000012;
        *(v8 + 16) = 0x80000001001B3290;
        *(v8 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BB88(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v7 = result;
        sub_10011DC44();
        swift_allocError();
        *v8 = v7;
        *(v8 + 8) = 0xD000000000000012;
        *(v8 + 16) = 0x80000001001B3290;
        *(v8 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BC48(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3);
      if (result)
      {
        v7 = result;
        sub_10011DC44();
        swift_allocError();
        *v8 = v7;
        *(v8 + 8) = 0xD000000000000012;
        *(v8 + 16) = 0x80000001001B3290;
        *(v8 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014BD08(uint64_t a1, uint64_t a2, int a3)
{
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      if ((a3 & 0x80000000) == 0)
      {
        result = sqlite3_bind_int(result, a2, a3);
        if (result)
        {
          v7 = result;
          sub_10011DC44();
          swift_allocError();
          *v8 = v7;
          *(v8 + 8) = 0xD000000000000012;
          *(v8 + 16) = 0x80000001001B3290;
          *(v8 + 24) = 0;
          return swift_willThrow();
        }

        return result;
      }

LABEL_10:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void SQLiteInteger32.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100006A3C();
  a20 = v25;
  a21 = v26;
  sub_100009A0C(v27, v28);
  swift_getAssociatedTypeWitness();
  sub_10014FD60();
  __chkstk_darwin(v29);
  sub_10000F2E0();
  __chkstk_darwin(v30);
  sub_10000407C();
  __chkstk_darwin(v31);
  sub_10000702C();
  v32 = *v22;
  sub_100154FFC();
  if (v23)
  {
    goto LABEL_29;
  }

  sub_10000AF84();
  if (v34 != v35)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v33 > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = sub_100008BDC();
  v37(v36);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    sub_10000465C();
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 32)
    {
      sub_10000AB34();
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        sub_10000465C();
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 32)
        {
LABEL_11:
          sub_10014CB70();
          v39 = sub_10001AC9C();
          sub_100007984(v39, v40, v41);
          sub_10000DFFC();
          v42 = sub_100003E74();
          v43(v42);
          if (v21)
          {
            goto LABEL_32;
          }

          goto LABEL_17;
        }

        goto LABEL_16;
      }

      sub_10000AB34();
      dispatch thunk of static BinaryInteger.isSigned.getter();
      v38 = sub_10001BC8C();
      if (v32)
      {
        if (v38 > 32)
        {
          goto LABEL_11;
        }

        v44 = sub_100007780();
        sub_10014FDA8(&unk_1001A3A70, v45, v46, v44);
        sub_10001BD7C();
        sub_10000DFFC();
        v47 = sub_100003E74();
        v48(v47);
        if ((v21 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_32:
        __break(1u);
        return;
      }

      if (v38 < 32)
      {
LABEL_16:
        sub_10000465C();
        dispatch thunk of BinaryInteger._lowWord.getter();
      }
    }
  }

LABEL_17:
  sub_10000465C();
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 32)
  {
    goto LABEL_22;
  }

  while (1)
  {
    a11 = 0x7FFFFFFF;
    sub_10000AB34();
    v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
    sub_10000465C();
    v49 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v21 & 1) == 0)
    {
      break;
    }

    if (v49 < 33)
    {
      goto LABEL_26;
    }

LABEL_20:
    v50 = sub_10014CB70();
    sub_100007984(&a11, &type metadata for Int32, v50);
    sub_100007AD4();
    v51 = sub_100003E74();
    v52(v51);
    if (v21)
    {
      __break(1u);
LABEL_22:
      sub_10000465C();
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 32)
      {
        sub_10000AB34();
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_27;
  }

  if (v49 >= 32)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_10000465C();
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_27:
  sub_10000465C();
  dispatch thunk of BinaryInteger._lowWord.getter();
  v53 = sub_1000189F4();
  v54(v53);
  if (sqlite3_bind_int(v24, v58, v21))
  {
    v55 = sub_10011DC44();
    v56 = sub_100004248(&type metadata for SQLiteError, v55);
    sub_10000C8D8(v56, v57);
  }

LABEL_29:
  sub_100007FD4();
}

void sub_10014C138(_BYTE *a1@<X8>)
{
  sub_100148C5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C19C(_WORD *a1@<X8>)
{
  sub_100148B6C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C1FC(_WORD *a1@<X8>)
{
  sub_100148CEC();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C25C(_DWORD *a1@<X8>)
{
  sub_100148BF8();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C2BC(_DWORD *a1@<X8>)
{
  sub_100148D7C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_10014C31C(void *a1@<X8>)
{
  sub_100149960();
  if (!v1)
  {
    *a1 = v3;
  }
}

void SQLiteInteger64.init(with:column:)()
{
  sub_100006A3C();
  sub_100006840();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000407C();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_10000702C();
  v11 = sub_100154FFC();
  if (v0)
  {
    goto LABEL_19;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    v12 = sqlite3_column_int64(v11, v2);
    if (v1 == &type metadata for Int64)
    {
      goto LABEL_16;
    }

    v28 = v12;
    sub_100007E48();
    dispatch thunk of static FixedWidthInteger.min.getter();
    sub_100007E48();
    v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
    sub_10000F6E8();
    v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v13)
    {
      if (v14 > 64)
      {
        goto LABEL_15;
      }

      sub_10000F6E8();
      v18 = dispatch thunk of BinaryInteger._lowWord.getter();
      v19 = sub_100011BA0();
      v20(v19);
      if (v28 < v18)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v14 > 63)
      {
        if (v28 < 0)
        {
          v23 = sub_100011BA0();
          v24(v23);
          goto LABEL_18;
        }

LABEL_15:
        sub_10014CBC4();
        sub_10001AC9C();
        sub_1000056AC();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v21 = sub_10014FD3C();
        v22 = *(v5 + 8);
        v22(v9, v1);
        v22(v3, v1);
        if ((v21 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_18:
        v25 = sub_10011DC44();
        v26 = sub_100004248(&type metadata for SQLiteError, v25);
        sub_10000DCD8(v26, v27);
        goto LABEL_19;
      }

      sub_10000F6E8();
      v15 = dispatch thunk of BinaryInteger._lowWord.getter();
      v16 = sub_100011BA0();
      v17(v16);
      if (v28 < v15)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    sub_10014CBC4();
    sub_1000056AC();
    dispatch thunk of BinaryInteger.init<A>(_:)();
LABEL_19:

    sub_100007FD4();
    return;
  }

  __break(1u);
}

uint64_t sub_10014C5D4(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int64(result, a2, a3);
      if (result)
      {
        v7 = sub_10011DC44();
        v8 = sub_100004248(&type metadata for SQLiteError, v7);
        return sub_10000BF38(v8, v9);
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10014C670(uint64_t a1, uint64_t a2, sqlite3_int64 a3)
{
  result = sub_100154FFC();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        result = sqlite3_bind_int64(result, a2, a3);
        if (result)
        {
          v7 = sub_10011DC44();
          v8 = sub_100004248(&type metadata for SQLiteError, v7);
          return sub_10000BF38(v8, v9);
        }

        return result;
      }

LABEL_10:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

void SQLiteInteger64.bind(to:at:)()
{
  sub_100006A3C();
  sub_100009A0C(v4, v5);
  swift_getAssociatedTypeWitness();
  sub_10014FD60();
  __chkstk_darwin(v6);
  sub_10000F2E0();
  __chkstk_darwin(v7);
  sub_10000407C();
  __chkstk_darwin(v8);
  sub_10000702C();
  v9 = *v1;
  sub_100154FFC();
  if (v2)
  {
    goto LABEL_29;
  }

  sub_10000AF84();
  if (v11 != v12)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v13 = sub_100008BDC();
  v14(v13);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    sub_10000465C();
    if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
    {
      sub_10000AB34();
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        sub_10000465C();
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
        {
LABEL_11:
          sub_10014CBC4();
          v16 = sub_10001AC9C();
          sub_100007984(v16, v17, v18);
          sub_10000DFFC();
          v19 = sub_100003E74();
          v20(v19);
          if (v0)
          {
            goto LABEL_32;
          }

          goto LABEL_17;
        }

        goto LABEL_16;
      }

      sub_10000AB34();
      dispatch thunk of static BinaryInteger.isSigned.getter();
      v15 = sub_10001BC8C();
      if (v9)
      {
        if (v15 > 64)
        {
          goto LABEL_11;
        }

        v21 = sub_100007780();
        sub_10014FDA8(&unk_1001A3A70, v22, v23, v21);
        sub_10001BD7C();
        sub_10000DFFC();
        v24 = sub_100003E74();
        v25(v24);
        if ((v0 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_32:
        __break(1u);
        return;
      }

      if (v15 < 64)
      {
LABEL_16:
        sub_10000465C();
        dispatch thunk of BinaryInteger._lowWord.getter();
      }
    }
  }

LABEL_17:
  sub_10000465C();
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    sub_10000AB34();
    v0 = dispatch thunk of static BinaryInteger.isSigned.getter();
    sub_10000465C();
    v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v0 & 1) == 0)
    {
      break;
    }

    if (v26 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    sub_10014CBC4();
    v27 = sub_10001AC9C();
    sub_100007984(v27, v28, v29);
    sub_100007AD4();
    v30 = sub_100003E74();
    v31(v30);
    if (v0)
    {
      __break(1u);
LABEL_22:
      sub_10000465C();
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64)
      {
        sub_10000AB34();
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_27;
  }

  if (v26 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  sub_10000465C();
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_27:
  sub_10000465C();
  dispatch thunk of BinaryInteger._lowWord.getter();
  v32 = sub_1000189F4();
  v33(v32);
  if (sqlite3_bind_int64(v3, v37, v0))
  {
    v34 = sub_10011DC44();
    v35 = sub_100004248(&type metadata for SQLiteError, v34);
    sub_10000C8D8(v35, v36);
  }

LABEL_29:
  sub_100007FD4();
}

void sub_10014CA98(uint64_t *a1@<X8>)
{
  sub_100149938();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_10014CB70()
{
  result = qword_10021EDD8;
  if (!qword_10021EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDD8);
  }

  return result;
}

unint64_t sub_10014CBC4()
{
  result = qword_10021EDE0;
  if (!qword_10021EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDE0);
  }

  return result;
}

unint64_t sub_10014CC18(uint64_t a1)
{
  result = sub_10014CC40();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CC40()
{
  result = qword_10021EDE8;
  if (!qword_10021EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDE8);
  }

  return result;
}

unint64_t sub_10014CC94(uint64_t a1)
{
  result = sub_10014CCBC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CCBC()
{
  result = qword_10021EDF0;
  if (!qword_10021EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDF0);
  }

  return result;
}

unint64_t sub_10014CD10(uint64_t a1)
{
  result = sub_10014CD38();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CD38()
{
  result = qword_10021EDF8;
  if (!qword_10021EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EDF8);
  }

  return result;
}

unint64_t sub_10014CD8C(uint64_t a1)
{
  result = sub_10014CDB4();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CDB4()
{
  result = qword_10021EE00;
  if (!qword_10021EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE00);
  }

  return result;
}

unint64_t sub_10014CE08(uint64_t a1)
{
  result = sub_10014CE30();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CE30()
{
  result = qword_10021EE08;
  if (!qword_10021EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE08);
  }

  return result;
}

unint64_t sub_10014CE84(uint64_t a1)
{
  result = sub_10014CEAC();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CEAC()
{
  result = qword_10021EE10;
  if (!qword_10021EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE10);
  }

  return result;
}

unint64_t sub_10014CF00(uint64_t a1)
{
  result = sub_10014CF28();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CF28()
{
  result = qword_10021EE18;
  if (!qword_10021EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE18);
  }

  return result;
}

unint64_t sub_10014CF7C(uint64_t a1)
{
  result = sub_10014CFA4();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014CFA4()
{
  result = qword_10021EE20;
  if (!qword_10021EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE20);
  }

  return result;
}

unint64_t sub_10014CFF8(uint64_t a1)
{
  result = sub_10014D020();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014D020()
{
  result = qword_10021EE28;
  if (!qword_10021EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE28);
  }

  return result;
}

unint64_t sub_10014D074(uint64_t a1)
{
  result = sub_10014D09C();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_10014D09C()
{
  result = qword_10021EE30;
  if (!qword_10021EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10021EE30);
  }

  return result;
}

unsigned __int8 *sub_10014D0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100107FD4(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v8 != 1)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            LOBYTE(v14) = 0;
            v25 = result + 1;
            v26 = a3;
            while (1)
            {
              v17 = v21 != 0;
              if (!v21)
              {
                goto LABEL_108;
              }

              v27 = *v25;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_107;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = (v14 * v26);
              if (v29 != v14 * v26)
              {
                goto LABEL_107;
              }

              v14 = v29 + (v27 + v28);
              if ((v29 + v27 + v28) != v14)
              {
                goto LABEL_107;
              }

              --v21;
              ++v25;
            }
          }

LABEL_65:
          LOBYTE(v14) = 0;
          v17 = 0;
LABEL_108:

          return (v14 | (v17 << 8));
        }

LABEL_127:
        LOBYTE(v14) = 0;
        v17 = 1;
        goto LABEL_108;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        LOBYTE(v30) = 0;
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        v34 = a3;
        v17 = 1;
        do
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v32)
            {
              LOBYTE(v14) = 0;
              if (v35 < 0x61 || v35 >= v33)
              {
                goto LABEL_108;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v30 * v34;
          v38 = (v30 * v34);
          if (v38 != v37)
          {
            goto LABEL_127;
          }

          v30 = v38 + (v35 + v36);
          if (v30 != v30)
          {
            goto LABEL_127;
          }

          ++result;
          --v8;
        }

        while (v8);
        v17 = 0;
        LOBYTE(v14) = v30;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          LOBYTE(v14) = 0;
          v15 = result + 1;
          v16 = a3;
          while (1)
          {
            v17 = v10 != 0;
            if (!v10)
            {
              goto LABEL_108;
            }

            v18 = *v15;
            if (v18 < 0x30 || v18 >= v11)
            {
              if (v18 < 0x41 || v18 >= v12)
              {
                if (v18 < 0x61 || v18 >= v13)
                {
                  goto LABEL_107;
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

            v20 = (v14 * v16);
            if (v20 != v14 * v16)
            {
              goto LABEL_107;
            }

            v14 = v20 - (v18 + v19);
            if ((v20 - (v18 + v19)) != v14)
            {
              goto LABEL_107;
            }

            --v10;
            ++v15;
          }
        }

        goto LABEL_65;
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        LOBYTE(v60) = 0;
        v61 = a3 + 55;
        v62 = a3 + 87;
        v63 = a3 + 48;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v62 = 97;
          v61 = 65;
        }

        v64 = &v70;
        v65 = a3;
        v17 = 1;
        do
        {
          v66 = *v64;
          if (v66 < 0x30 || v66 >= v63)
          {
            if (v66 < 0x41 || v66 >= v61)
            {
              LOBYTE(v14) = 0;
              if (v66 < 0x61 || v66 >= v62)
              {
                goto LABEL_108;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v60 * v65;
          v69 = (v60 * v65);
          if (v69 != v68)
          {
            goto LABEL_127;
          }

          v60 = v69 + (v66 + v67);
          if (v60 != v60)
          {
            goto LABEL_127;
          }

          v64 = (v64 + 1);
          --v41;
        }

        while (v41);
        v17 = 0;
        LOBYTE(v14) = v60;
        goto LABEL_108;
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        LOBYTE(v14) = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v70 + 1;
        v47 = a3;
        while (1)
        {
          v17 = v42 != 0;
          if (!v42)
          {
            goto LABEL_108;
          }

          v48 = *v46;
          if (v48 < 0x30 || v48 >= v43)
          {
            if (v48 < 0x41 || v48 >= v44)
            {
              if (v48 < 0x61 || v48 >= v45)
              {
                goto LABEL_107;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = (v14 * v47);
          if (v50 != v14 * v47)
          {
            goto LABEL_107;
          }

          v14 = v50 - (v48 + v49);
          if ((v50 - (v48 + v49)) != v14)
          {
            goto LABEL_107;
          }

          --v42;
          ++v46;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      LOBYTE(v14) = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v70 + 1;
      v56 = a3;
      while (1)
      {
        v17 = v51 != 0;
        if (!v51)
        {
          goto LABEL_108;
        }

        v57 = *v55;
        if (v57 < 0x30 || v57 >= v52)
        {
          if (v57 < 0x41 || v57 >= v53)
          {
            if (v57 < 0x61 || v57 >= v54)
            {
LABEL_107:
              LOBYTE(v14) = 0;
              goto LABEL_108;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = (v14 * v56);
        if (v59 != v14 * v56)
        {
          goto LABEL_107;
        }

        v14 = v59 + (v57 + v58);
        if ((v59 + v57 + v58) != v14)
        {
          goto LABEL_107;
        }

        --v51;
        ++v55;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
  return result;
}