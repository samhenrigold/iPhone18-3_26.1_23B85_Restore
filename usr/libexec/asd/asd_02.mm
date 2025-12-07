void sub_100054454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (qword_1006C9798 == -1)
    {
LABEL_25:
      v34 = type metadata accessor for Logger();
      sub_100046E6C(v34, qword_1006CA2E8);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Airport data is nil", v37, 2u);
      }

      sub_1000443DC(&qword_1006CA308);
      v38 = Dictionary.init(dictionaryLiteral:)();
      swift_beginAccess();
      *(a3 + 16) = v38;

      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_25;
  }

  v5 = 3 * a4;
  if ((a4 * 3) >> 64 != (3 * a4) >> 63)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v5 != a2)
  {
    if (qword_1006C9798 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100046E6C(v8, qword_1006CA2E8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = v5;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v9, v10, "Expected %ld values in airport data but found %ld", v11, 0x16u);
    }
  }

  if (a2 < -2)
  {
    goto LABEL_34;
  }

  if ((a2 + 2) >= 5)
  {
    v12 = (a1 + 4);
    v13 = 0x2AAAAAAAAAAAAAAALL;
    for (i = a2 / 3; i; --i)
    {
      if (!i)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (!v13)
      {
        goto LABEL_30;
      }

      v15 = *(v12 - 2);
      v16 = *(v12 - 1);
      v17 = *v12;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      v20 = sub_1000BFBD8(v15);
      v22 = v19[2];
      v23 = (v21 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_31;
      }

      v25 = v20;
      v26 = v21;
      sub_1000443DC(&qword_1006CA310);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24))
      {
        v27 = sub_1000BFBD8(v15);
        if ((v26 & 1) != (v28 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v25 = v27;
      }

      if (v26)
      {
        v29 = (v19[7] + 4 * v25);
        *v29 = v16;
        v29[1] = v17;
      }

      else
      {
        v19[(v25 >> 6) + 8] |= 1 << v25;
        *(v19[6] + 2 * v25) = v15;
        v30 = (v19[7] + 4 * v25);
        *v30 = v16;
        v30[1] = v17;
        v31 = v19[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_32;
        }

        v19[2] = v33;
      }

      *(a3 + 16) = v19;
      swift_endAccess();
      --v13;
      v12 += 3;
    }
  }
}

uint64_t sub_100054818()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100054858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1000548B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CoordRange.southLimit.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t CoordRange.northLimit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t CoordRange.eastLimit.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t CoordRange.westLimit.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

Swift::Int sub_100054A30()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100054A7C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> GlobalLocationHelper.boundingRectAround(lat:lon:radiusMetres:)(asd::CoordRange *__return_ptr retstr, Swift::Double lat, Swift::Double lon, Swift::Double radiusMetres)
{
  if (radiusMetres < 0.0 || fabs(lat) > 90.0 || fabs(lon) > 180.0)
  {
    sub_100054CD8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v8 = radiusMetres / (v4 * 6.28318531) * 360.0;
  v9 = v8 + lat;
  v10 = lat - v8;
  if (v10 >= -90.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  if (v9 <= 90.0)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0.0;
  }

  if (v9 <= 90.0 && v10 >= -90.0)
  {
    v13 = radiusMetres / (cos(lat * 3.14159265 / 180.0) * ((v4 + v4) * 3.14159265)) * 360.0;
    if (v13 >= 180.0)
    {
      v14 = 0;
      v15 = 0.0;
      v16 = 0.0;
LABEL_23:
      v17 = 0;
      v18 = 0;
      v19 = v13 >= 180.0;
      goto LABEL_24;
    }

    v16 = v13 + lon;
    v15 = lon - v13;
    if (v13 + lon <= 180.0)
    {
      if (v15 >= -180.0)
      {
        v14 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v16 = v16 + -360.0;
      if (v15 >= -180.0)
      {
        goto LABEL_21;
      }
    }

    v15 = v15 + 360.0;
LABEL_21:
    v14 = 1;
    goto LABEL_23;
  }

  v14 = 0;
  v17 = v10 < -90.0;
  v18 = v9 > 90.0;
  v19 = 1;
  v16 = 0.0;
  v15 = 0.0;
LABEL_24:
  retstr->southLimit.value = v11;
  retstr->southLimit.is_nil = v17;
  *(&retstr->northLimit.value + 7) = v12;
  BYTE6(retstr->eastLimit.value) = v18;
  *(&retstr->westLimit.value + 5) = v16;
  BYTE3(retstr[1].southLimit.value) = v19;
  *(&retstr[1].northLimit.value + 2) = v15;
  BYTE1(retstr[1].eastLimit.value) = v19;
  BYTE2(retstr[1].eastLimit.value) = v14;
}

unint64_t sub_100054CD8()
{
  result = qword_1006CA318;
  if (!qword_1006CA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA318);
  }

  return result;
}

__n128 sub_100054D2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100054D48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 58))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 57);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_100054D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASMotionHelper.Error(unsigned int *a1, int a2)
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

_BYTE *sub_100054E54(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100054EF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100054F28()
{
  result = qword_1006CA320;
  if (!qword_1006CA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA320);
  }

  return result;
}

uint64_t sub_100054F7C(uint64_t a1, uint64_t a2)
{
  if (String.count.getter() != 3)
  {
LABEL_44:
    v23 = 0;
    v22 = 1;
    return v23 | (v22 << 16);
  }

  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v3 = String.Iterator.next()();
    if (!v3.value._object)
    {
      break;
    }

    v4 = v3.value._countAndFlagsBits == 2573 && v3.value._object == 0xE200000000000000;
    if (v4 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {

      LOBYTE(v8) = 10;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_21;
      }

LABEL_26:
      sub_100062778(0, v2[2] + 1, 1, v2);
      v2 = v11;
      goto LABEL_21;
    }

    if ((v3.value._object & 0x2000000000000000) != 0)
    {
      v6 = (v3.value._object >> 56) & 0xF;
    }

    else
    {
      v6 = v3.value._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (!v6)
    {
      __break(1u);
      goto LABEL_47;
    }

    if ((v3.value._object & 0x1000000000000000) != 0)
    {
      v7 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      v7 = _StringGuts.fastUTF8ScalarLength(startingAt:)(0) << 16;
    }

    if (v7 >> 14 != 4 * v6)
    {
      goto LABEL_24;
    }

    result = sub_1000586DC(v3.value._countAndFlagsBits, v3.value._object);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_50;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_24:
    }

    else
    {
      result = sub_1000586DC(v3.value._countAndFlagsBits, v3.value._object);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_51;
      }

      v8 = result;

      if ((v8 & 0xFFFFFF00) != 0)
      {
        goto LABEL_49;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_21:
      v10 = v2[2];
      v9 = v2[3];
      if (v10 >= v9 >> 1)
      {
        sub_100062778(v9 > 1, v10 + 1, 1, v2);
        v2 = v12;
      }

      v2[2] = v10 + 1;
      *(v2 + v10 + 32) = v8;
    }
  }

  v13 = v2[2];
  if (v13)
  {
    v14 = (v2 + 4);
    do
    {
      v16 = *v14++;
      v15 = v16;
      if ((v16 - 91) > 0xFFFFFFE5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000BDE68(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_1000BDE68(v17 > 1, v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        *(&_swiftEmptyArrayStorage[4] + v18) = v15;
      }

      --v13;
    }

    while (v13);
  }

  if (_swiftEmptyArrayStorage[2] != 3)
  {

    goto LABEL_44;
  }

  LOWORD(v19) = 0;
  v20 = 32;
  while (1)
  {
    v21 = *(_swiftEmptyArrayStorage + v20) - 65;
    if ((v21 & 0xFFFFFF00) != 0)
    {
      break;
    }

    v19 = 32 * (v19 & 0x7FF) + v21;
    if ((v19 & 0x10000) != 0)
    {
      goto LABEL_48;
    }

    if (++v20 == 35)
    {

      v22 = 0;
      v23 = v19;
      return v23 | (v22 << 16);
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

double sub_10005527C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1000BFB1C(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_10005346C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t sub_1000552E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1000BFBD8(a1);
  if ((v5 & 1) == 0)
  {
    v2 = 0;
LABEL_5:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v6 = 0;
  v2 = *(*(a2 + 56) + 4 * v4);
  return v2 | (v6 << 32);
}

void *sub_10005533C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000BFB60(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_100055384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000BFB60(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 24 * v4);

  return v6;
}

uint64_t sub_1000553F4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1000BFC20(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_100055444(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1000BFC20(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_10005548C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1000BFB60(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000554DC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1000BFCF8(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005552C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_1000BFCF8(a3), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a1 + 56);
    v9 = type metadata accessor for ServerJSONFetchRetryState(0);
    sub_10005909C(v8 + *(*(v9 - 8) + 72) * v7, a2);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for ServerJSONFetchRetryState(0);
    v10 = a2;
    v11 = 1;
  }

  return sub_1000485F8(v10, v11, 1, v12);
}

uint64_t sub_1000555DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1000BFB60(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 32 * v4);

  return v6;
}

double sub_10005566C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000BFB60(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10005346C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

Class PKPass.arrivalAirportLat(_:)(uint64_t a1)
{
  if (!a1 || sub_1000593AC() == 4)
  {
    return sub_100055C4C(&selRef_arrivalAirportCode_, sub_100055874);
  }

  if (sub_1000593AC() != 10)
  {
    return 0;
  }

  return sub_100055750();
}

Class sub_100055750()
{
  result = sub_100058ABC(v0);
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = sub_10005533C(v3, v4, v2);

    if (!v5)
    {
      return sub_100055C4C(&selRef_arrivalAirportCode_, sub_100055874);
    }

    v6 = [v5 locationValue];

    if (!v6)
    {
      return sub_100055C4C(&selRef_arrivalAirportCode_, sub_100055874);
    }

    [v6 latitude];
    v7.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;

    return v7.super.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100055874(uint64_t a1, uint64_t a2)
{
  v2 = sub_100054F7C(a1, a2);
  if ((v2 & 0x10000) != 0)
  {
    return 0;
  }

  v3 = v2;
  if (qword_1006C97A0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000552E0(v3, qword_1006CA300);
  if ((v4 & 0x100000000) != 0)
  {
    return 0;
  }

  _H0 = v4;
  __asm { FCVT            S8, H0 }

  v11 = objc_allocWithZone(NSNumber);
  LODWORD(v12) = _S8;
  return [v11 initWithFloat:v12];
}

id sub_100055990(uint64_t a1, uint64_t a2)
{
  v2 = sub_100054F7C(a1, a2);
  if ((v2 & 0x10000) != 0)
  {
    return 0;
  }

  v3 = v2;
  if (qword_1006C97A0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000552E0(v3, qword_1006CA300);
  if ((v4 & 0x100000000) != 0)
  {
    return 0;
  }

  _H0 = WORD1(v4);
  __asm { FCVT            S8, H0 }

  v11 = objc_allocWithZone(NSNumber);
  LODWORD(v12) = _S8;
  return [v11 initWithFloat:v12];
}

Class sub_100055A64(void *a1, SEL *a2, SEL *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_100058ABC(v4);
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = sub_10005533C(v10, v11, v9);

    v13 = [v12 locationValue];

    if (!v13)
    {
      return sub_100055C4C(a3, a4);
    }

    [v13 *a2];
    v14.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;

    return v14.super.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class sub_100055BB4(uint64_t a1, SEL *a2, uint64_t (*a3)(uint64_t, uint64_t), void *a4, SEL *a5)
{
  if (!a1 || [v5 style] == 4)
  {
    return sub_100055C4C(a2, a3);
  }

  if ([v5 style] == 10)
  {
    return sub_100055A64(a4, a5, a2, a3);
  }

  return 0;
}

uint64_t sub_100055C4C(SEL *a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  swift_getObjectType();
  v5 = [v2 *a1];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!v9)
  {
    return 0;
  }

  v10 = a2(v7, v9);

  return v10;
}

unint64_t PKPass.departureAirportCode(_:)(uint64_t a1)
{
  if (!a1 || sub_1000593AC() == 4)
  {
    return sub_100055DA8();
  }

  if (sub_1000593AC() == 10)
  {
    return sub_1000560C8(&PKPassSemanticStringKeyDepartureAirportCode, sub_100055DA8);
  }

  return 0;
}

unint64_t sub_100055DA8()
{
  if (!sub_100055F00([v0 style], &off_1006912D8) || objc_msgSend(v0, "transitType") != 1)
  {
    return 0;
  }

  result = sub_100058CD8(v0, &selRef_primaryFields, &qword_1006CA380, PKPassField_ptr);
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = result;
  result = sub_1000582D8(result);
  if (!result)
  {

    return 0;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
    v4 = v3;

    v5 = [v4 value];

    if (v5)
    {
      v6 = [v5 uppercaseString];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    return v5;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_100055F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

unint64_t PKPass.arrivalAirportCode(_:)(uint64_t a1)
{
  if (a1 && [v1 style] != 4)
  {
    return sub_1000560C8(&PKPassSemanticStringKeyDestinationAirportCode, sub_100055F94);
  }

  return sub_100055F94();
}

unint64_t sub_100055F94()
{
  if (!sub_100055F00([v0 style], &off_1006912D8) || objc_msgSend(v0, "transitType") != 1)
  {
    return 0;
  }

  result = sub_100058CD8(v0, &selRef_primaryFields, &qword_1006CA380, PKPassField_ptr);
  if (result)
  {
    result = sub_10005620C(1, result);
    if (v3 == v4 >> 1)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    if (v3 < (v4 >> 1))
    {
      v6 = *(v2 + 8 * v3);
      swift_unknownObjectRelease();
      v5 = [v6 value];

      if (v5)
      {
        v7 = [v5 uppercaseString];

        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000560C8(void *a1, uint64_t (*a2)(uint64_t))
{
  result = sub_100058ABC(v2);
  if (result)
  {
    v5 = result;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_10005533C(v6, v7, v5);

    if (v8)
    {
      v9 = sub_100058B3C(v8);
      if (v10)
      {
        return v9;
      }
    }

    v11 = a2(v9);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10005618C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  v7 = sub_100059338();
  v8 = a4(v7);
  v10 = v9;

  if (v10)
  {
    String._bridgeToObjectiveC()();
    sub_100036C50();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

Swift::Int sub_10005620C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1000582D8(a2);
  v5 = sub_100087838(0, a1, v4, a2);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_100058DAC(v7, a2);
  result = sub_100058DAC(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_1000591B0(0, &qword_1006CA380, PKPassField_ptr);

    result = v7;
    do
    {
      v9 = result + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(result);
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = _CocoaArrayWrapper.subscript.getter();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100056370(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      v7 = a4();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100056418()
{
  if (!sub_100055F00([v0 style], &off_1006912D8))
  {
    return 0;
  }

  if ([v0 transitType] != 1)
  {
    return 0;
  }

  v1 = sub_100058C74(v0);
  if (!v1)
  {
    return 0;
  }

  sub_100056370(2, v1, sub_100087838, sub_10008783C);
  if (v3 == v4 >> 1)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  if (v3 >= (v4 >> 1))
  {
    __break(1u);
LABEL_18:
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  v5 = *(v2 + 8 * v3);

  swift_unknownObjectRelease();
  result = sub_1000582D8(v5);
  if (!result)
  {

    return 0;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_11:
    v8 = v7;

    v9 = [v8 value];
    if (v9)
    {
      countAndFlagsBits = String.init(_:)(v9)._countAndFlagsBits;

      return countAndFlagsBits;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100056588()
{
  v1 = [v0 organizationName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.lowercased()();

  sub_10005915C();
  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v2;
}

id sub_1000566A0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    String._bridgeToObjectiveC()();
    sub_100036C50();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10005674C(uint64_t a1)
{
  v2 = sub_100059338();
  result = sub_100058ABC(v2);
  if (result)
  {
    v4 = result;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005533C(v5, v6, v4);
    sub_10005932C();

    if (v1)
    {
      return sub_100058B3C(v1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class PKPass.anyDate.getter()
{
  v1 = v0;
  v2 = sub_1000443DC(&qword_1006CA2B0);
  v5 = __chkstk_darwin(v2 - 8, v3, v4);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v7, v8);
  v70 = (&v68 - v10);
  v13 = __chkstk_darwin(v9, v11, v12);
  v71 = &v68 - v14;
  v17 = __chkstk_darwin(v13, v15, v16);
  v19 = &v68 - v18;
  v22 = __chkstk_darwin(v17, v20, v21);
  v24 = &v68 - v23;
  __chkstk_darwin(v22, v25, v26);
  v28 = &v68 - v27;
  v29 = type metadata accessor for Date();
  v30 = *(v29 - 8);
  v33 = __chkstk_darwin(v29, v31, v32);
  v35 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v36, v37);
  v39 = &v68 - v38;
  v40 = [v1 relevantDates];
  sub_1000591B0(0, &qword_1006CA328, PKPassRelevantDate_ptr);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_1000582D8(v41);
  if (!result)
  {

    sub_1000592B4(v28);
LABEL_11:
    v46 = [v1 expirationDate];
    if (v46)
    {
      sub_10005937C(v46);

      sub_100059350();
      (v40)(v19, v35, v29);
      v47 = sub_100059290(v19);
      (v40)(v47, v19, v29);
    }

    else
    {
      sub_1000592B4(v19);
      v48 = [v1 modifiedDate];
      if (v48)
      {
        sub_10005937C(v48);

        sub_100059350();
        v49 = v71;
        v50 = sub_1000592E0();
        (v40)(v50);
        v51 = sub_100059290(v49);
        (v40)(v51, v49, v29);
      }

      else
      {
        v52 = v71;
        sub_1000592B4(v71);
        v53 = [v1 ingestedDate];
        if (v53)
        {
          sub_10005937C(v53);

          sub_100059350();
          v54 = v70;
          v55 = sub_1000592E0();
          (v40)(v55);
          v56 = sub_100059290(v54);
          v57 = v54;
          v52 = v71;
          (v40)(v56, v57, v29);
        }

        else
        {
          v58 = v70;
          sub_1000592B4(v70);
          v59 = [v1 signingDate];
          if (v59)
          {
            sub_10005937C(v59);

            sub_100059350();
            v60 = v69;
            v61 = sub_1000592E0();
            v58(v61);
            v62 = sub_100059290(v60);
            v63 = v60;
            v52 = v71;
            (v58)(v62, v63, v29);
            v58 = v70;
          }

          else
          {
            v64 = v69;
            sub_1000592B4(v69);
            static Date.distantPast.getter();
            sub_100059270(v64);
            if (!v45)
            {
              sub_100058C14(v64);
            }
          }

          sub_100059270(v58);
          if (!v45)
          {
            sub_100058C14(v58);
          }
        }

        sub_100059270(v52);
        if (!v45)
        {
          sub_100058C14(v52);
        }
      }

      sub_100059270(v19);
      if (!v45)
      {
        sub_100058C14(v19);
      }
    }

    sub_100059270(v28);
    if (!v45)
    {
      sub_100058C14(v28);
    }

    goto LABEL_29;
  }

  if ((v41 & 0xC000000000000001) != 0)
  {
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v43 = *(v41 + 32);
  }

  v40 = v43;

  v41 = [v40 date];

  if (v41)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  sub_1000485F8(v24, v44, 1, v29);
  sub_100058BAC(v24, v28);
  sub_100059270(v28);
  if (v45)
  {
    goto LABEL_11;
  }

  (*(v30 + 32))(v39, v28, v29);
LABEL_29:
  v65.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v30 + 8))(v39, v29);
  if ([v1 style] == 10)
  {
    v66 = [v1 originalBoardingDate];
    if (v66 || (v66 = [v1 originalDepartureDate]) != 0 || (v66 = objc_msgSend(v1, "originalArrivalDate")) != 0)
    {
      v67 = v66;

      return v67;
    }
  }

  return v65.super.isa;
}

Class sub_100056E0C(char a1)
{
  v3 = v1;
  v5 = sub_1000443DC(&qword_1006CA2B0);
  v8 = __chkstk_darwin(v5 - 8, v6, v7);
  isa = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8, v11, v12);
  v14 = v22 - v13;
  v15 = **(&off_100692750 + a1);
  result = sub_100058ABC(v3);
  if (result)
  {
    v22[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22[2] = v17;
    sub_1000591B0(0, &qword_1006CA378, PKPassSemantic_ptr);
    Dictionary.subscript.getter();
    if (v2)
    {
    }

    else
    {

      v18 = v23;
      v19 = [v23 dateValue];

      if (v19)
      {
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = 0;
      }

      else
      {
        v20 = 1;
      }

      v21 = type metadata accessor for Date();
      sub_1000485F8(isa, v20, 1, v21);
      sub_100058BAC(isa, v14);
      if (sub_100046EA4(v14, 1, v21) == 1)
      {
        sub_100058C14(v14);
        return 0;
      }

      else
      {
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(*(v21 - 8) + 8))(v14, v21);
      }
    }

    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_1000571F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  PKPass.BoardingPassDate.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t sub_100057238()
{
  type metadata accessor for AssessmentConfigurationManager();
  swift_initStackObject();
  result = AssessmentConfigurationManager.airlineNameFormats.getter();
  if (result)
  {
    v1 = result;
    v2 = sub_100056588();
    v4 = sub_100055384(v2, v3, v1);
    v6 = v5;

    if (v6)
    {

      v7 = sub_10006BF5C(v4, v6);
      v9 = v8;
      swift_bridgeObjectRelease_n();
      if (v9)
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id PKPass.boardingPassFirstName.getter()
{
  sub_100056418();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_100057238();
  v5 = v4;
  if (v4)
  {
    v6 = v24;
    if (v3)
    {
      v7 = sub_100059344(v2);
      __chkstk_darwin(v7, v8, v9);
      sub_100059214();
      sub_10005922C(v10, v11, v12, v13);
      sub_100059394();
      sub_1000574BC(v0);
      sub_100059308();
      if (!v24)
      {
        return 0;
      }
    }

    else
    {
      v14 = sub_100059344(v2);
      __chkstk_darwin(v14, v15, v16);
      sub_100059214();
      sub_10005922C(v17, v18, v19, v20);
      sub_100059394();
      if (!*(v0 + 16))
      {

        return 0;
      }

      v6 = *(v0 + 56);
    }

    sub_10005935C();

    v21 = objc_allocWithZone(NSString);
    sub_100036C50();
    v22 = String._bridgeToObjectiveC()();
    v5 = [v6 initWithString:v22];
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1000574BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

id sub_100057520(uint64_t a1, uint64_t a2)
{
  sub_100059338();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_10005932C();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 initWithString:v4];

  return v5;
}

id PKPass.boardingPassLastName.getter()
{
  sub_100056418();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_100057238();
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    v5 = sub_100059344(v2);
    __chkstk_darwin(v5, v6, v7);
    sub_100059214();
    sub_10005922C(v8, v9, v10, v11);
    sub_100059394();
    if (*(v0 + 16))
    {

LABEL_8:
      sub_10005935C();
      v20 = v19;

      sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
      v21 = sub_100036C50();
      return sub_100057520(v21, v20);
    }

LABEL_9:

    return 0;
  }

  v12 = sub_100059344(v2);
  __chkstk_darwin(v12, v13, v14);
  sub_100059214();
  sub_10005922C(v15, v16, v17, v18);
  sub_100059394();
  sub_1000574BC(v0);
  sub_100059308();
  if (&v23)
  {
    goto LABEL_8;
  }

  return 0;
}

id *PKPass.evaluate(attribute:expression:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if ([v3 style] != 4)
  {
    v7 = String._bridgeToObjectiveC()();
    [a1 hasPrefix:v7];
  }

  v8 = sub_100057F3C(a1);
  v10 = v9;
  v11 = v8 == 0x656C797473 && v9 == 0xE500000000000000;
  if (v11 || (v12 = v8, (sub_100059254(0x656C797473, 0xE500000000000000) & 1) != 0))
  {

    v13 = [v3 style];
LABEL_9:
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:v13];
LABEL_10:
    v3 = v14;
    v15 = &qword_1006CA338;
    v16 = NSNumber_ptr;
LABEL_11:
    result = sub_1000591B0(0, v15, v16);
    *(a3 + 24) = result;
    *a3 = v3;
    return result;
  }

  v18 = sub_1000592D0() & 0xFFFFFFFFFFFFLL | 0x5374000000000000;
  v20 = v12 == v18 && v10 == v19;
  if (v20 || (sub_100059254(v18, v19) & 1) != 0)
  {

    v21 = &selRef_transitStatus;
    goto LABEL_18;
  }

  v23 = sub_1000592D0() & 0xFFFFFFFFFFFFLL | 0x5074000000000000;
  v25 = v12 == v23 && v10 == v24;
  if (v25 || (sub_100059254(v23, v24) & 1) != 0)
  {

    v21 = &selRef_transitProvider;
    goto LABEL_18;
  }

  sub_100054218();
  v27 = v12 == 0xD000000000000013 && v26 == v10;
  if (v27 || (sub_100059254(0xD000000000000013, v26) & 1) != 0)
  {

    v21 = &selRef_transitStatusReason;
LABEL_18:
    result = sub_100058D4C(v3, v21);
    if (v22)
    {
      *(a3 + 24) = &type metadata for String;
      *a3 = result;
      *(a3 + 8) = v22;
      return result;
    }

    goto LABEL_52;
  }

  v28 = v12 == 0x65746144796E61 && v10 == 0xE700000000000000;
  if (v28 || (sub_100059254(0x65746144796E61, 0xE700000000000000) & 1) != 0)
  {

    result = [v3 anyDate];
LABEL_38:
    v3 = result;
    v15 = &qword_1006CA340;
    v16 = NSDate_ptr;
    goto LABEL_11;
  }

  v29 = sub_1000592D0() & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
  v31 = v12 == v29 && v10 == v30;
  if (v31 || (sub_100059254(v29, v30) & 1) != 0)
  {

    v13 = [v3 transitType];
    goto LABEL_9;
  }

  sub_100054218();
  v33 = v12 == 0xD000000000000012 && v32 == v10;
  if (v33 || (sub_100059254(0xD000000000000012, v32) & 1) != 0)
  {

    v34 = [v3 currentArrivalDate];
    goto LABEL_51;
  }

  sub_100054218();
  v36 = v12 == 0xD000000000000013 && v35 == v10;
  if (v36 || (sub_100059254(0xD000000000000013, v35) & 1) != 0)
  {

    v34 = [v3 currentBoardingDate];
    goto LABEL_51;
  }

  sub_100054218();
  v38 = v12 == 0xD000000000000014 && v37 == v10;
  if (v38 || (sub_100059254(0xD000000000000014, v37) & 1) != 0)
  {

    v34 = [v3 currentDepartureDate];
    goto LABEL_51;
  }

  sub_100054218();
  v40 = v12 == 0xD000000000000013 && v39 == v10;
  if (v40 || (sub_100059254(0xD000000000000013, v39) & 1) != 0)
  {

    v34 = [v3 originalArrivalDate];
    goto LABEL_51;
  }

  sub_100054218();
  v42 = v12 == 0xD000000000000014 && v41 == v10;
  if (v42 || (sub_100059254(0xD000000000000014, v41) & 1) != 0)
  {

    v34 = [v3 originalBoardingDate];
    goto LABEL_51;
  }

  sub_100054218();
  v44 = v12 == 0xD000000000000015 && v43 == v10;
  if (v44 || (sub_100059254(0xD000000000000015, v43) & 1) != 0)
  {

    v34 = [v3 originalDepartureDate];
LABEL_51:
    result = v34;
    if (result)
    {
      goto LABEL_38;
    }

LABEL_52:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  sub_100054218();
  v46 = v12 == 0xD000000000000010 && v45 == v10;
  if (v46 || (sub_100059254(0xD000000000000010, v45) & 1) != 0)
  {
    if ([v3 organizationName])
    {
      sub_10005932C();

      goto LABEL_90;
    }

    __break(1u);
    goto LABEL_154;
  }

  sub_100054218();
  v48 = v12 == 0xD000000000000011 && v47 == v10;
  if (v48 || (sub_100059254(0xD000000000000011, v47) & 1) != 0)
  {

    v50 = sub_1000593C4(v49, "arrivalAirportLat:");
    goto LABEL_115;
  }

  sub_100054218();
  v52 = v12 == 0xD000000000000012 && v51 == v10;
  if (v52 || (sub_100059254(0xD000000000000012, v51) & 1) != 0)
  {

    v50 = sub_1000593C4(v53, "arrivalAirportLong:");
    goto LABEL_115;
  }

  sub_100054218();
  v55 = v12 == 0xD000000000000013 && v54 == v10;
  if (v55 || (sub_100059254(0xD000000000000013, v54) & 1) != 0)
  {

    v50 = sub_1000593C4(v56, "departureAirportLat:");
    goto LABEL_115;
  }

  sub_100054218();
  v58 = v12 == 0xD000000000000014 && v57 == v10;
  if (v58 || (sub_100059254(0xD000000000000014, v57) & 1) != 0)
  {

    v50 = sub_1000593C4(v59, "departureAirportLong:");
LABEL_115:
    result = v50;
    if (result)
    {
      v3 = result;
      v15 = &qword_1006CA338;
      v16 = NSNumber_ptr;
      goto LABEL_11;
    }

    goto LABEL_52;
  }

  sub_100054218();
  v61 = v12 == 0xD000000000000015 && v60 == v10;
  if (v61 || (sub_100059254(0xD000000000000015, v60) & 1) != 0)
  {

    v62 = [v3 boardingPassFirstName];
LABEL_129:
    result = v62;
    if (!result)
    {
      goto LABEL_52;
    }

    v3 = result;
LABEL_90:
    v15 = &qword_1006CB560;
    v16 = NSString_ptr;
    goto LABEL_11;
  }

  sub_100054218();
  v64 = v12 == 0xD000000000000014 && v63 == v10;
  if (v64 || (sub_100059254(0xD000000000000014, v63) & 1) != 0)
  {

    v62 = [v3 boardingPassLastName];
    goto LABEL_129;
  }

  sub_100054218();
  v66 = v12 == 0xD000000000000018 && v65 == v10;
  if (v66 || (sub_100059254(0xD000000000000018, v65) & 1) != 0)
  {

    v14 = [objc_allocWithZone(NSNumber) initWithBool:{objc_msgSend(v3, "hasLocationRelevancyInfo")}];
    goto LABEL_10;
  }

  sub_100054218();
  v68 = v12 == 0xD000000000000023 && v67 == v10;
  if (v68 || (sub_100059254(0xD000000000000023, v67) & 1) != 0)
  {
    result = sub_100058CD8(v3, &selRef_embeddedLocationsArray, &qword_1006CA330, PKLocation_ptr);
    if (result)
    {
      sub_10005932C();

      result = sub_1000582D8(v3);
      if (!result)
      {

        goto LABEL_52;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
LABEL_154:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_147;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v69 = *(v3 + 32);
LABEL_147:
        sub_100059338();

        result = sub_1000591B0(0, &qword_1006CA330, PKLocation_ptr);
        *(a3 + 24) = result;
        *a3 = v10;
        return result;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    result = [a2 expressionValueWithObject:v3 context:0];
    if (result)
    {
      _bridgeAnyObjectToAny(_:)();
      result = swift_unknownObjectRelease();
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
    }

    *a3 = v70;
    *(a3 + 16) = v71;
  }

  return result;
}

uint64_t sub_100057F3C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 componentsSeparatedByString:v2];

  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4[2];
  if (v5 < 3)
  {
    if (v5 != 2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v6 = v4[6] == 0x79636167656CLL && v4[7] == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v7 = v4[4] == 1179403603 && v4[5] == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = 2;
LABEL_20:
        sub_100056370(v8, v4, sub_100087838, sub_10008783C);
        sub_1000443DC(&qword_1006CA358);
        sub_100059100();
        v10 = BidirectionalCollection<>.joined(separator:)();
        swift_unknownObjectRelease();
        return v10;
      }
    }
  }

  v9 = v4[4] == 1179403603 && v4[5] == 0xE400000000000000;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = 1;
    goto LABEL_20;
  }

LABEL_21:

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

unint64_t sub_1000582B0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000582D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1000582FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void *sub_100058340(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v50 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    sub_100062784();
    v16 = v33;
    v9 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v34 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v38 = (v16 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v16;
    }

LABEL_41:
    sub_100062784();
    v16 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v48 = _swiftEmptyArrayStorage;
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = String.subscript.getter();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = String.index(after:)();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = String.subscript.getter();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100062784();
      v48 = v28;
    }

    v13 = v48[2];
    v12 = v13 + 1;
    if (v13 >= v48[3] >> 1)
    {
      sub_100062784();
      v48 = v29;
    }

    v48[2] = v12;
    v27 = &v48[4 * v13];
    v27[4] = v47;
    v27[5] = v43;
    v27[6] = v42;
    v27[7] = v41;
LABEL_20:
    v17 = String.index(after:)();
    if ((v23 & 1) == 0 && v48[2] == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = String.subscript.getter();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v16 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v34 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      sub_100062784();
      v16 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000586DC(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_100058890(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v10 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
        v10 = *(v17 + v6);
        if (*(v17 + v6) < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
LABEL_14:
              v10 = v8[1] & 0x3F | ((v10 & 0x1F) << 6);
              break;
            case 0x1Bu:
LABEL_15:
              v11 = v8[1];
              v12 = v8[2];
              v13 = ((v10 & 0xF) << 12) | ((v11 & 0x3F) << 6);
              goto LABEL_17;
            case 0x1Cu:
LABEL_16:
              v14 = v8[1];
              v15 = v8[2];
              v12 = v8[3];
              v13 = ((v10 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
LABEL_17:
              v10 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
        v9 = *(v7 + v6);
        v10 = *(v7 + v6);
        if (v9 < 0)
        {
          switch(__clz(v10 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_14;
            case 0x1Bu:
              goto LABEL_15;
            case 0x1Cu:
              goto LABEL_16;
            default:
              break;
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v10 | ((v2 == 0) << 32);
}

unint64_t sub_100058890(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_100058930(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1000589A0(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_100058930(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_100046C88(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000589A0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v8 << 16;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = _StringObject.sharedUTF8.getter();
          v5 = v12;
        }

        if (v5 != v7 && (*(v6 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v8 = v5 - 1;
            v9 = *(v6 - 1 + v5--) & 0xC0;
          }

          while (v9 == 128);
          return v8 << 16;
        }
      }

      v8 = v5;
      return v8 << 16;
    }

    v10 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v10 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v10)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_100058ABC(void *a1)
{
  v1 = [a1 allSemantics];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000591B0(0, &qword_1006CA378, PKPassSemantic_ptr);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100058B3C(void *a1)
{
  v2 = [a1 stringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100058BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CA2B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058C14(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CA2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100058C74(void *a1)
{
  v1 = [a1 frontFieldBuckets];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1000443DC(&qword_1006CA370);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100058CD8(void *a1, SEL *a2, unint64_t *a3, void *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1000591B0(0, a3, a4);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_100058D4C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_100058DAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_100058E54()
{
  result = qword_1006CA348;
  if (!qword_1006CA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA348);
  }

  return result;
}

unint64_t sub_100058EAC()
{
  result = qword_1006CA350;
  if (!qword_1006CA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA350);
  }

  return result;
}

uint64_t _s16BoardingPassDateOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s16BoardingPassDateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x100059064);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10005909C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerJSONFetchRetryState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100059100()
{
  result = qword_1006CA360;
  if (!qword_1006CA360)
  {
    sub_1000471A4(&qword_1006CA358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA360);
  }

  return result;
}

unint64_t sub_10005915C()
{
  result = qword_1006CA368;
  if (!qword_1006CA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA368);
  }

  return result;
}

uint64_t sub_1000591B0(uint64_t a1, unint64_t *a2, void *a3)
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

void *sub_10005922C(void x0_0, void x1_0, void a3, uint64_t a1)
{

  return sub_100058340(0x7FFFFFFFFFFFFFFFLL, 1, v2, a1, v4, v3);
}

uint64_t sub_100059254(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000592B4(uint64_t a1)
{

  return sub_1000485F8(a1, 1, 1, v1);
}

uint64_t sub_100059308()
{
}

uint64_t sub_100059344(uint64_t result)
{
  *(v2 - 64) = result;
  *(v2 - 56) = v1;
  return result;
}

uint64_t sub_10005935C()
{

  return Substring.lowercased()()._countAndFlagsBits;
}

uint64_t sub_10005937C(uint64_t a1)
{

  return static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100059394()
{
}

id sub_1000593AC()
{
  v3 = *(v0 + 360);

  return [v1 v3];
}

id sub_1000593C4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_1000593DC(int a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(NSError);
  return sub_100062458(0xD000000000000010, 0x80000001005A3C00, v1, 0);
}

uint64_t ASBiomeMaterializedViewer.run(query:inputColNames:inputColTypes:)(void *a1, void *a2, void *a3, void *a4)
{
  v33 = a1;
  v34 = a2;
  v8 = type metadata accessor for Configuration();
  __chkstk_darwin(v8 - 8, v9, v10);
  sub_10004EAF4();
  v11 = type metadata accessor for URL();
  sub_10004EAE0();
  v13 = v12;
  __chkstk_darwin(v14, v15, v16);
  sub_10004EAF4();
  v19 = v18 - v17;
  type metadata accessor for SQLDatabase();
  sub_10004EAE0();
  __chkstk_darwin(v20, v21, v22);
  sub_10004EAF4();
  v35 = a3;
  v36 = a4;
  if (a3[2] == a4[2])
  {
    v32 = v4;
    type metadata accessor for Library.Databases.ApplePay.Security.Features();
    sub_10005975C();
    result = static DatabaseResource.database(useCase:)();
    if (!v5)
    {
      SQLDatabase.databasePath()();
      object = URL.path(percentEncoded:)(0)._object;
      (*(v13 + 8))(v19, v11);
      Configuration.init()();
      type metadata accessor for DatabaseQueue();
      swift_allocObject();
      v24 = DatabaseQueue.init(path:configuration:)();
      __chkstk_darwin(v24, v25, v26);
      v27 = v34;
      *(&object - 6) = v33;
      *(&object - 5) = v27;
      v28 = v36;
      *(&object - 4) = v35;
      *(&object - 3) = v28;
      *(&object - 2) = v32;
      sub_1000443DC(&qword_1006CA390);
      DatabaseQueue.read<A>(_:)();
      v29 = sub_10005A8CC();
      v30(v29);

      return v37;
    }
  }

  else
  {
    sub_1000593DC(137101);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_10005975C()
{
  result = qword_1006CA388;
  if (!qword_1006CA388)
  {
    type metadata accessor for Library.Databases.ApplePay.Security.Features();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA388);
  }

  return result;
}

uint64_t sub_1000597B4@<X0>(uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v7 = v6;
  v120 = a4;
  v121 = a5;
  v9 = type metadata accessor for StatementArguments();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11, v12);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Row();
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  StatementArguments.init()();
  v15 = static Row.fetchCursor(_:sql:arguments:adapter:)();
  if (v6)
  {
    (*(v10 + 8))(v14, v9);
    return sub_10005A68C(&v129);
  }

  else
  {
    v17 = v15;
    (*(v10 + 8))(v14, v9);
    sub_10005A68C(&v129);
    v122 = _swiftEmptyArrayStorage;
    v19 = v120;
    v18 = v121;
    v124 = v121 + 4;
    v117 = (v120 + 40);
    v118 = a6;
    v119 = v17;
    while (1)
    {
      v20 = sub_10005A3F4();
      if (v7)
      {
      }

      v21 = v20;
      if (!v20)
      {
        break;
      }

      v123 = 0;
      v127 = *(v19 + 16);
      if (v127)
      {
        v22 = 0;
        v126 = *(v18 + 16);
        v23 = v117;
        v24 = _swiftEmptyDictionarySingleton;
        v125 = v20;
        while (v126 != v22)
        {
          v25 = *(v23 - 1);
          v26 = *v23;
          v27 = v22 >> 31;
          switch(v124[v22])
          {
            case 1:
              v18 = &type metadata for Double;
              *(&v130 + 1) = &type metadata for Double;

              Row._checkIndex(_:file:line:)();
              v28 = Row.sqliteStatement.getter();
              if (v28)
              {
                if (v27)
                {
                  goto LABEL_84;
                }

                v31._rawValue = v28;
                v32 = __chkstk_darwin(v28, v29, v30);
                v18 = (&v116 - 4);
                *(&v116 - 2) = v21;
                *(&v116 - 1) = v22;
                v33 = sqlite3_column_type(v32, v22);
                if (v33 == 5)
                {
                  goto LABEL_93;
                }

                v36 = Double.init(sqliteStatement:index:)(v31, v22);
              }

              else
              {
                v85 = v123;
                Row.fastDecode<A>(_:atUncheckedIndex:)();
                v123 = v85;
                if (v85)
                {
                  goto LABEL_98;
                }

                v36 = *v128;
              }

              *&v129 = v36;
              sub_1000534C8(&v129, v128);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v132 = v24;
              v87 = sub_1000BFB60(v25, v26);
              v89 = v24[2];
              v90 = (v88 & 1) == 0;
              v91 = v89 + v90;
              if (__OFADD__(v89, v90))
              {
                goto LABEL_82;
              }

              v18 = v87;
              v92 = v88;
              sub_1000443DC(&qword_1006CA3D0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v91))
              {
                v93 = sub_1000BFB60(v25, v26);
                if ((v92 & 1) != (v94 & 1))
                {
                  goto LABEL_92;
                }

                v18 = v93;
              }

              if (v92)
              {
                goto LABEL_64;
              }

              v24 = v132;
              v132[(v18 >> 6) + 8] |= 1 << v18;
              v95 = (v24[6] + 16 * v18);
              *v95 = v25;
              v95[1] = v26;
              sub_1000534C8(v128, (v24[7] + 32 * v18));
              v96 = v24[2];
              v71 = __OFADD__(v96, 1);
              v72 = v96 + 1;
              if (v71)
              {
                goto LABEL_91;
              }

              goto LABEL_66;
            case 2:
              v18 = &type metadata for Int32;
              *(&v130 + 1) = &type metadata for Int32;

              Row._checkIndex(_:file:line:)();
              v54 = Row.sqliteStatement.getter();
              if (v54)
              {
                if (v27)
                {
                  goto LABEL_86;
                }

                v57 = v54;
                v58 = __chkstk_darwin(v54, v55, v56);
                v18 = (&v116 - 4);
                *(&v116 - 2) = v21;
                *(&v116 - 1) = v22;
                v33 = sqlite3_column_type(v58, v22);
                if (v33 == 5)
                {
                  goto LABEL_93;
                }

                v33 = sqlite3_column_int64(v57, v22);
                if (v33 != v33)
                {
                  goto LABEL_93;
                }
              }

              else
              {
                v97 = v123;
                Row.fastDecode<A>(_:atUncheckedIndex:)();
                v123 = v97;
                if (v97)
                {
                  goto LABEL_98;
                }

                LODWORD(v33) = v128[0];
              }

              LODWORD(v129) = v33;
              sub_1000534C8(&v129, v128);
              v98 = swift_isUniquelyReferenced_nonNull_native();
              v132 = v24;
              v99 = sub_1000BFB60(v25, v26);
              v101 = v24[2];
              v102 = (v100 & 1) == 0;
              v103 = v101 + v102;
              if (__OFADD__(v101, v102))
              {
                goto LABEL_83;
              }

              v18 = v99;
              v104 = v100;
              sub_1000443DC(&qword_1006CA3D0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v98, v103))
              {
                v105 = sub_1000BFB60(v25, v26);
                if ((v104 & 1) != (v106 & 1))
                {
                  goto LABEL_92;
                }

                v18 = v105;
              }

              if (v104)
              {
                goto LABEL_64;
              }

              v24 = v132;
              v132[(v18 >> 6) + 8] |= 1 << v18;
              v108 = (v24[6] + 16 * v18);
              *v108 = v25;
              v108[1] = v26;
              sub_1000534C8(v128, (v24[7] + 32 * v18));
              v109 = v24[2];
              v71 = __OFADD__(v109, 1);
              v72 = v109 + 1;
              if (v71)
              {
                goto LABEL_89;
              }

              goto LABEL_66;
            case 3:
              v18 = &type metadata for Int64;
              *(&v130 + 1) = &type metadata for Int64;

              Row._checkIndex(_:file:line:)();
              v37 = Row.sqliteStatement.getter();
              if (v37)
              {
                if (v27)
                {
                  goto LABEL_87;
                }

                v40._rawValue = v37;
                v41 = __chkstk_darwin(v37, v38, v39);
                v18 = (&v116 - 4);
                *(&v116 - 2) = v21;
                *(&v116 - 1) = v22;
                v33 = sqlite3_column_type(v41, v22);
                if (v33 == 5)
                {
                  goto LABEL_93;
                }

                v42 = Int64.init(sqliteStatement:index:)(v40, v22);
              }

              else
              {
                v59 = v123;
                Row.fastDecode<A>(_:atUncheckedIndex:)();
                v123 = v59;
                if (v59)
                {
                  goto LABEL_98;
                }

                v42 = *&v128[0];
              }

              *&v129 = v42;
              sub_1000534C8(&v129, v128);
              v60 = swift_isUniquelyReferenced_nonNull_native();
              v132 = v24;
              v61 = sub_1000BFB60(v25, v26);
              v63 = v24[2];
              v64 = (v62 & 1) == 0;
              v65 = v63 + v64;
              if (__OFADD__(v63, v64))
              {
                goto LABEL_80;
              }

              v18 = v61;
              v66 = v62;
              sub_1000443DC(&qword_1006CA3D0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v60, v65))
              {
                v67 = sub_1000BFB60(v25, v26);
                if ((v66 & 1) != (v68 & 1))
                {
                  goto LABEL_92;
                }

                v18 = v67;
              }

              if (v66)
              {
                goto LABEL_64;
              }

              v24 = v132;
              v132[(v18 >> 6) + 8] |= 1 << v18;
              v69 = (v24[6] + 16 * v18);
              *v69 = v25;
              v69[1] = v26;
              sub_1000534C8(v128, (v24[7] + 32 * v18));
              v70 = v24[2];
              v71 = __OFADD__(v70, 1);
              v72 = v70 + 1;
              if (v71)
              {
                goto LABEL_90;
              }

              goto LABEL_66;
            case 4:
              v18 = &type metadata for String;
              *(&v130 + 1) = &type metadata for String;

              Row._checkIndex(_:file:line:)();
              v43 = Row.sqliteStatement.getter();
              if (v43)
              {
                if (v27)
                {
                  goto LABEL_85;
                }

                v46._rawValue = v43;
                v47 = __chkstk_darwin(v43, v44, v45);
                v18 = (&v116 - 4);
                *(&v116 - 2) = v21;
                *(&v116 - 1) = v22;
                v48 = sqlite3_column_type(v47, v22);
                if (v48 == 5)
                {
                  __chkstk_darwin(v48, v49, v50);
                  *(&v116 - 2) = sub_10005A7E8;
                  *(&v116 - 1) = v18;
                  goto LABEL_97;
                }

                v53 = String.init(sqliteStatement:index:)(v46, v22);
                object = v53._object;
                countAndFlagsBits = v53._countAndFlagsBits;
              }

              else
              {
                v73 = v123;
                Row.fastDecode<A>(_:atUncheckedIndex:)();
                v123 = v73;
                if (v73)
                {
                  goto LABEL_98;
                }

                object = *(&v128[0] + 1);
                countAndFlagsBits = *&v128[0];
              }

              *&v129 = countAndFlagsBits;
              *(&v129 + 1) = object;
              sub_1000534C8(&v129, v128);
              v74 = swift_isUniquelyReferenced_nonNull_native();
              v132 = v24;
              v75 = sub_1000BFB60(v25, v26);
              v77 = v24[2];
              v78 = (v76 & 1) == 0;
              v79 = v77 + v78;
              if (__OFADD__(v77, v78))
              {
                goto LABEL_81;
              }

              v18 = v75;
              v80 = v76;
              sub_1000443DC(&qword_1006CA3D0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v74, v79))
              {
                v81 = sub_1000BFB60(v25, v26);
                if ((v80 & 1) != (v82 & 1))
                {
                  goto LABEL_92;
                }

                v18 = v81;
              }

              if (v80)
              {
LABEL_64:

                v24 = v132;
                v107 = (v132[7] + 32 * v18);
                sub_100044850(v107);
                sub_1000534C8(v128, v107);
              }

              else
              {
                v24 = v132;
                v132[(v18 >> 6) + 8] |= 1 << v18;
                v83 = (v24[6] + 16 * v18);
                *v83 = v25;
                v83[1] = v26;
                sub_1000534C8(v128, (v24[7] + 32 * v18));
                v84 = v24[2];
                v71 = __OFADD__(v84, 1);
                v72 = v84 + 1;
                if (v71)
                {
                  goto LABEL_88;
                }

LABEL_66:
                v24[2] = v72;
              }

              v21 = v125;
              ++v22;
              v23 += 2;
              if (v127 == v22)
              {
                goto LABEL_70;
              }

              break;
            default:

              sub_1000593DC(137102);
              swift_willThrow();
          }
        }

        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        v33 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_93:
        __chkstk_darwin(v33, v34, v35);
        *(&v116 - 2) = sub_10005A8C4;
        *(&v116 - 1) = v18;
LABEL_97:
        v115 = v123;
        static DatabaseValueConvertible<>._valueMismatch(fromStatement:atUncheckedIndex:context:)();
        v123 = v115;
LABEL_98:
        swift_unexpectedError();
        __break(1u);
        JUMPOUT(0x10005A3C0);
      }

      v24 = _swiftEmptyDictionarySingleton;
LABEL_70:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10006284C(0, v122[2] + 1, 1, v122);
        v122 = v113;
      }

      a6 = v118;
      v19 = v120;
      v111 = v122[2];
      v110 = v122[3];
      if (v111 >= v110 >> 1)
      {
        sub_10006284C(v110 > 1, v111 + 1, 1, v122);
        v122 = v114;
      }

      v18 = v121;
      v112 = v122;
      v122[2] = v111 + 1;
      v112[v111 + 4] = v24;
      v7 = v123;
    }

    *a6 = v122;
  }

  return result;
}

uint64_t sub_10005A3F4()
{
  if (dispatch thunk of _DatabaseCursor._isDone.getter())
  {
    return 0;
  }

  dispatch thunk of DatabaseCursor.statement.getter();
  type metadata accessor for Row();

  Statement.step<A>(_:)();

  if (!v0)
  {
    result = v2;
    if (!v2)
    {
      dispatch thunk of _DatabaseCursor._isDone.setter();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005A68C(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CA3C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005A6EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000443DC(&qword_1006CA3D8);
  __chkstk_darwin(v3 - 8, v4, v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = a2;
  v8 = enum case for RowKey.columnIndex(_:);
  v9 = type metadata accessor for RowKey();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  sub_1000485F8(v7, 0, 1, v9);

  return RowDecodingContext.init(row:key:)();
}

void *sub_10005A818(uint64_t a1, void *a2)
{
  result = dispatch thunk of _DatabaseCursor._element(sqliteStatement:)();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void *sub_10005A87C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_10005A818(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

Swift::Int sub_10005A8F8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 + 175002);
  return Hasher._finalize()();
}

Swift::Int sub_10005A960(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10005A9C0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  Hasher.init(_seed:)();
  v4 = a2(a1);
  sub_10005BCB8(v4, v5, v6);

  return Hasher._finalize()();
}

uint64_t sub_10005AA40(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_10005AB78(uint64_t a1, uint64_t a2)
{
  sub_1000790EC(a2);
  String.hash(into:)();
}

uint64_t sub_10005ABCC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
    case 4:
    case 5:
      sub_10005BCF4();
      break;
    default:
      break;
  }

  String.hash(into:)();
}

Swift::Int sub_10005AD1C(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10005AD78(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 + 175002);
  return Hasher._finalize()();
}

Swift::Int sub_10005ADE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_10005BCB8(v5, v6, v7);

  return Hasher._finalize()();
}

Swift::Int sub_10005AE34(uint64_t a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

id sub_10005AE78()
{
  v1 = *(v0 + OBJC_IVAR____TtC3asd20ASBiometricKitHelper_currentDevice);
  if (!v1)
  {
    return 0;
  }

  v6 = 0;
  v2 = [v1 lastMatchEventWithError:&v6];
  v3 = v6;
  if (!v2)
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v2;
}

uint64_t sub_10005AF34(uint64_t a1)
{
  if ((a1 - 175002) >= 3)
  {
    return 3;
  }

  else
  {
    return a1 - 175002;
  }
}

uint64_t sub_10005AF80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005AF34(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10005AFAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005AF4C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10005AFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005BC04();
  v5 = sub_10005BC58();

  return Error<>._code.getter(a1, a2, v4, v5);
}

NSNumber __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ASBiometricKitHelper.timeSinceLastSuccessfulBiometricAuthentication()()
{
  if ((sub_10005B4F8() & 1) == 0)
  {
    v7 = sub_10005B738();
    sub_10005BCDC(&type metadata for ASBiometricKitHelper.ASBKError, v7);
    *v8 = 0;
    return swift_willThrow();
  }

  v0 = sub_10005AE78();
  if (!v0)
  {
    v9 = sub_10005B738();
    sub_10005BCDC(&type metadata for ASBiometricKitHelper.ASBKError, v9);
    *v10 = 2;
    return swift_willThrow();
  }

  v1 = v0;
  if (![v0 result])
  {
    v11 = sub_10005B738();
    sub_10005BCDC(&type metadata for ASBiometricKitHelper.ASBKError, v11);
    *v12 = 1;
    swift_willThrow();

    return result;
  }

  v2 = sub_10005B860([v1 timeStamp]);
  v3 = mach_continuous_time();
  v5 = sub_10005B860(v3) - v2;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v5 > -9.22337204e18)
  {
    if (v5 < 9.22337204e18)
    {
      v6 = [objc_allocWithZone(NSNumber) initWithInteger:v5];

      return v6;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

NSNumber __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ASBiometricKitHelper.tenureOfActiveBiometricTemplate()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v5 = __chkstk_darwin(v1, v3, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8, v9);
  v11 = &v28 - v10;
  if ((sub_10005B4F8() & 1) == 0)
  {
    v22 = sub_10005B738();
    sub_10005BCDC(&type metadata for ASBiometricKitHelper.ASBKError, v22);
    *v23 = 0;
LABEL_12:
    swift_willThrow();
    return v0;
  }

  v12 = sub_10005AE78();
  if (!v12)
  {
    v26 = sub_10005B738();
    sub_10005BCDC(&type metadata for ASBiometricKitHelper.ASBKError, v26);
    *v27 = 2;
    goto LABEL_12;
  }

  v13 = v12;
  if (![v12 result] || (v14 = objc_msgSend(v13, "matchedIdentity")) == 0)
  {
    v24 = sub_10005B738();
    sub_10005BCDC(&type metadata for ASBiometricKitHelper.ASBKError, v24);
    *v25 = 1;
    swift_willThrow();

    return v0;
  }

  v15 = v14;
  static Date.now.getter();
  v16 = [v15 creationTime];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince(_:)();
  v18 = v17;
  v19 = v17;
  v20 = *(v2 + 8);
  v20(v7, v1);
  result.super.super.isa = (v20)(v11, v1);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v18 < 9.22337204e18)
  {
    v0 = [objc_allocWithZone(NSNumber) initWithInteger:v18];

    return v0;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_10005B44C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

uint64_t sub_10005B4F8()
{
  if (*(v0 + OBJC_IVAR____TtC3asd20ASBiometricKitHelper_currentDevice))
  {
    return 1;
  }

  v2 = v0;
  v13 = OBJC_IVAR____TtC3asd20ASBiometricKitHelper_currentDevice;
  v3 = [objc_opt_self() availableDevices];
  sub_1000591B0(0, &qword_1006CA438, BKDeviceDescriptor_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = sub_1000591F0(v4);
  for (i = 0; v5 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_18;
    }

    if ([v7 type] == 1 || objc_msgSend(v8, "type") == 2)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  if (sub_1000591F0(_swiftEmptyArrayStorage) == 1)
  {
    sub_100059210();
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      goto LABEL_22;
    }

    v9 = _swiftEmptyArrayStorage[4];
LABEL_18:
    v10 = v9;

    sub_1000591B0(0, &qword_1006CA440, BKDevice_ptr);
    v11 = sub_10005B78C(v10);
    v12 = *(v2 + v13);
    *(v2 + v13) = v11;

    return 1;
  }

  return 0;
}

unint64_t sub_10005B738()
{
  result = qword_1006CA3E0;
  if (!qword_1006CA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA3E0);
  }

  return result;
}

id sub_10005B78C(void *a1)
{
  v6 = 0;
  v2 = [swift_getObjCClassFromMetadata() deviceWithDescriptor:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

double sub_10005B860(unint64_t a1)
{
  v5 = 0;
  mach_timebase_info(&v5);
  LODWORD(v2) = v5.denom;
  LODWORD(v3) = v5.numer;
  return a1 * v3 / v2 / 1000000000.0;
}

id ASBiometricKitHelper.init()()
{
  v1 = OBJC_IVAR____TtC3asd20ASBiometricKitHelper_manager;
  *&v0[v1] = [objc_opt_self() manager];
  *&v0[OBJC_IVAR____TtC3asd20ASBiometricKitHelper_currentDevice] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASBiometricKitHelper();
  return objc_msgSendSuper2(&v3, "init");
}

id ASBiometricKitHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASBiometricKitHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for ASBiometricKitHelper.ASBKError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ASBiometricKitHelper.ASBKError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005BB74);
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

unint64_t sub_10005BBB0()
{
  result = qword_1006CA420;
  if (!qword_1006CA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA420);
  }

  return result;
}

unint64_t sub_10005BC04()
{
  result = qword_1006CA428;
  if (!qword_1006CA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA428);
  }

  return result;
}

unint64_t sub_10005BC58()
{
  result = qword_1006CA430;
  if (!qword_1006CA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA430);
  }

  return result;
}

uint64_t sub_10005BCB8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_10005BCDC(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t sub_10005BD00()
{
  v0 = sub_1000443DC(&qword_1006CA4A0);
  __chkstk_darwin(v0 - 8, v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  sub_100046E08(v5, static RavioliConstants.ravioliUUID);
  v6 = sub_100046E6C(v5, static RavioliConstants.ravioliUUID);
  UUID.init(uuidString:)();
  result = sub_100046EA4(v4, 1, v5);
  if (result != 1)
  {
    return (*(*(v5 - 8) + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t RavioliConstants.ravioliUUID.unsafeMutableAddressor()
{
  if (qword_1006C97A8 != -1)
  {
    sub_10005D910(&qword_1006C97A8);
  }

  v0 = type metadata accessor for UUID();

  return sub_100046E6C(v0, static RavioliConstants.ravioliUUID);
}

uint64_t static RavioliConstants.ravioliUUID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006C97A8 != -1)
  {
    sub_10005D910(&qword_1006C97A8);
  }

  v2 = type metadata accessor for UUID();
  v3 = sub_100046E6C(v2, static RavioliConstants.ravioliUUID);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10005BFFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684366707 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65646F4368747561 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10005C114(char a1)
{
  if (!a1)
  {
    return 1684366707;
  }

  if (a1 == 1)
  {
    return 0x65646F4368747561;
  }

  return 0x6E6F6973726576;
}

uint64_t sub_10005C164@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000443DC(&qword_1006CA4C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044728(a1, a1[3]);
  sub_10005D6A8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  v24 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v12;
  v23 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v13;
  v22 = 2;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v10, v5);
  result = sub_100044850(a1);
  v16 = v21;
  *a2 = v11;
  a2[1] = v16;
  v17 = v20;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v14;
  return result;
}

uint64_t sub_10005C3A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469726765746E69 && a2 == 0xEE006B6365684379)
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

uint64_t sub_10005C478(char a1)
{
  if (a1)
  {
    return 0x7469726765746E69;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_10005C4B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000443DC(&qword_1006CA488);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044728(a1, a1[3]);
  sub_10005D160();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  LOBYTE(v20) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v25 = 1;
  sub_10005D1B4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v10, v5);
  v15 = v20;
  v14 = v21;
  v17 = v22;
  v16 = v23;
  v19 = v24;

  sub_100044850(a1);

  *a2 = v11;
  a2[1] = v13;
  a2[2] = v15;
  a2[3] = v14;
  a2[4] = v17;
  a2[5] = v16;
  a2[6] = v19;
  return result;
}

uint64_t sub_10005C714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005BFFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005C73C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005C10C();
  *a1 = result;
  return result;
}

uint64_t sub_10005C764(uint64_t a1)
{
  v2 = sub_10005D6A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005C7A0(uint64_t a1)
{
  v2 = sub_10005D6A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005C7DC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005C164(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_10005C82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005C3A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005C854(uint64_t a1)
{
  v2 = sub_10005D160();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005C890(uint64_t a1)
{
  v2 = sub_10005D160();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005C8CC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005C4B4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t RavioliVerifier.verifyAndExtract(responseData:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10005CB58();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    a1 = v19;
    if (v20 == 1 && (, v4 = Data.init(base64Encoded:options:)(), v6 = v5, , v6 >> 60 != 15))
    {

      v10 = Data.init(base64Encoded:options:)();
      v12 = v11;

      if (v12 >> 60 == 15)
      {
      }

      else
      {
        v21 = Data.init(base64Encoded:options:)();
        v14 = v13;

        if (v14 >> 60 != 15)
        {
          a1 = sub_10005CC00(v21, v14, v4, v6, v10, v12);
          sub_10004489C(v21, v14);
          v17 = sub_10005D930();
          sub_10004489C(v17, v18);
          sub_10004489C(v4, v6);
          return a1;
        }

        v15 = sub_10005D930();
        sub_10004489C(v15, v16);
      }

      sub_10004489C(v4, v6);
    }

    else
    {
    }

    sub_10005CBAC();
    v7 = swift_allocError();
    sub_10005D93C(v7, v8);
  }

  return a1;
}

unint64_t sub_10005CB58()
{
  result = qword_1006CA448;
  if (!qword_1006CA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA448);
  }

  return result;
}

unint64_t sub_10005CBAC()
{
  result = qword_1006CA450;
  if (!qword_1006CA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA450);
  }

  return result;
}

uint64_t sub_10005CC00(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_100046D38(a5, a6);
  sub_10005D270(a5, a6);
  v10 = sub_10005D930();
  sub_100046D38(v10, v11);
  v12 = sub_10005D930();
  sub_10005D270(v12, v13);
  sub_100046D38(a1, a2);
  v14 = sub_10005D270(a1, a2);

  v15 = Data.count.getter();
  v16 = swift_slowAlloc();
  v17 = Data.count.getter();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v17))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v14[2];

  if (HIDWORD(v18))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10005D930();
  v19 = Data.count.getter();
  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!HIDWORD(v19))
  {
    v24 = noErr.getter();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_10006384C();
LABEL_7:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10006384C();
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10006384C();
  }

  sub_1002C9B10();
  if (v24 == noErr.getter())
  {
    for (i = 0; v15 != i; ++i)
    {
      if (!*(v16 + i))
      {
        goto LABEL_18;
      }
    }

    i = v15;
LABEL_18:
    v15 = sub_100044FFC(0, i, v16, v15);
  }

  else
  {
    sub_10005CBAC();
    v21 = swift_allocError();
    sub_10005D93C(v21, v22);
  }

  return v15;
}

uint64_t getEnumTagSinglePayload for RavioliVerifier.CCVerificationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RavioliVerifier.CCVerificationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005D034);
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

uint64_t sub_10005D06C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10005D0AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005D10C()
{
  result = qword_1006CA480;
  if (!qword_1006CA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA480);
  }

  return result;
}

unint64_t sub_10005D160()
{
  result = qword_1006CA490;
  if (!qword_1006CA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA490);
  }

  return result;
}

unint64_t sub_10005D1B4()
{
  result = qword_1006CA498;
  if (!qword_1006CA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA498);
  }

  return result;
}

void *sub_10005D208(uint64_t a1, uint64_t a2)
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

  sub_1000443DC(&qword_1006CA2E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_10005D270(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x10005D3F4);
      }

      v10 = HIDWORD(a1) - a1;
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = sub_10005D208(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_1000448B0(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        sub_1000448B0(a1, a2);
        return _swiftEmptyArrayStorage;
      }

      return v13;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
      goto LABEL_6;
  }
}

_BYTE *storeEnumTagSinglePayload for RavioliVerifier.ResponseDTO.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005D4D0);
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

uint64_t sub_10005D508(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10005D548(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10005D5A4()
{
  result = qword_1006CA4A8;
  if (!qword_1006CA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4A8);
  }

  return result;
}

unint64_t sub_10005D5FC()
{
  result = qword_1006CA4B0;
  if (!qword_1006CA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4B0);
  }

  return result;
}

unint64_t sub_10005D654()
{
  result = qword_1006CA4B8;
  if (!qword_1006CA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4B8);
  }

  return result;
}

unint64_t sub_10005D6A8()
{
  result = qword_1006CA4C8;
  if (!qword_1006CA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RavioliVerifier.IntegrityCheckJSON.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005D7C8);
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

unint64_t sub_10005D804()
{
  result = qword_1006CA4D0;
  if (!qword_1006CA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4D0);
  }

  return result;
}

unint64_t sub_10005D85C()
{
  result = qword_1006CA4D8;
  if (!qword_1006CA4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4D8);
  }

  return result;
}

unint64_t sub_10005D8B4()
{
  result = qword_1006CA4E0;
  if (!qword_1006CA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA4E0);
  }

  return result;
}

uint64_t sub_10005D910(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10005D93C(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t sub_10005D968(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006449;
  v3 = 0x776F6C666B726F77;
  v4 = a1;
  v5 = 0x776F6C666B726F77;
  v6 = 0xEA00000000006449;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000016;
      v6 = 0x80000001005A3280;
      break;
    case 2:
      v5 = 0x636E657571657266;
      v6 = 0xE900000000000079;
      break;
    case 3:
      v5 = 0x53676E69646E6962;
      v7 = 0x656372756FLL;
      goto LABEL_6;
    case 4:
      v5 = 0x69646E6F63657270;
      v7 = 0x736E6F6974;
LABEL_6:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000016;
      v2 = 0x80000001005A3280;
      break;
    case 2:
      v3 = 0x636E657571657266;
      v2 = 0xE900000000000079;
      break;
    case 3:
      v3 = 0x53676E69646E6962;
      v8 = 0x656372756FLL;
      goto LABEL_12;
    case 4:
      v3 = 0x69646E6F63657270;
      v8 = 0x736E6F6974;
LABEL_12:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10005DB44(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_1000790EC(a1);
  v5 = v4;
  if (v3 == sub_1000790EC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_10005DBC8(unsigned __int8 a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25202;
  v5 = a1;
  v6 = "cancelScheduledOperations";
  switch(v5)
  {
    case 1:
      v4 = sub_1000473C0() | 0x6464416800000000;
      v3 = 0xEF67614273736572;
      break;
    case 2:
      v4 = 0x6361437261656C63;
      v7 = 7562600;
      goto LABEL_6;
    case 3:
      v4 = sub_1000473C0() | 0x6E6F436800000000;
      v7 = 6777190;
LABEL_6:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v4 = sub_1000473C0() | 0x6F72506800000000;
      v3 = 0xED000073656C6966;
      break;
    case 5:
      v4 = sub_1000473C0() | 0x7265536800000000;
      v3 = 0xEE00676142726576;
      break;
    case 6:
      v4 = 0xD000000000000019;
      v3 = 0x80000001005A3250;
      break;
    default:
      break;
  }

  v8 = 0xE200000000000000;
  v9 = 25202;
  switch(a2)
  {
    case 1:
      sub_1000473CC();
      v9 = v10 | 0x6464416800000000;
      v8 = 0xEF67614273736572;
      break;
    case 2:
      v9 = 0x6361437261656C63;
      v12 = 7562600;
      goto LABEL_14;
    case 3:
      sub_1000473CC();
      v9 = v13 | 0x6E6F436800000000;
      v12 = 6777190;
LABEL_14:
      v8 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      sub_1000473CC();
      v9 = v11 | 0x6F72506800000000;
      v8 = 0xED000073656C6966;
      break;
    case 5:
      sub_1000473CC();
      v9 = v14 | 0x7265536800000000;
      v8 = 0xEE00676142726576;
      break;
    case 6:
      v9 = 0xD000000000000019;
      v8 = (v6 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v9 && v3 == v8)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

id ASFinanceStoreHelper.init()()
{
  v1 = OBJC_IVAR____TtC3asd20ASFinanceStoreHelper_errorDomain;
  sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
  *&v0[v1] = sub_100057520(0xD000000000000018, 0x80000001005A3440);
  type metadata accessor for FinanceStore();
  *&v0[OBJC_IVAR____TtC3asd20ASFinanceStoreHelper_store] = static FinanceStore.shared.getter();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ASFinanceStoreHelper();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10005DF64(char a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (a1)
  {
    v5 = 174004;
  }

  else
  {
    v5 = 174002;
  }

  v6 = objc_allocWithZone(NSError);
  return sub_100062458(v2, v4, v5, 0);
}

uint64_t sub_10005DFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10005E038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

Class sub_10005E08C(char a1)
{
  v3 = Dictionary.init(dictionaryLiteral:)();
  if (a1)
  {
    *(&v64 + 1) = type metadata accessor for Date();
    sub_10005351C(&v63);
    InternalTransaction.transactionDate.getter();
    sub_1000534C8(&v63, v62);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v7, 25716, 0xE200000000000000);
    v3 = v59;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*(v1 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0) + 24) + 16))
  {
    v8 = sub_1000BFB60(108, 0xE100000000000000);
    if (v9)
    {
      v10 = v8;
      swift_isUniquelyReferenced_nonNull_native();
      *v62 = v3;
      v3 = *(v3 + 24);
      v11 = sub_1000443DC(&qword_1006CA3D0);
      v19 = sub_100065AF8(v11, v12, v13, v14, v15, v16, v17, v18, v56, v59, v62[0]);
      sub_100065B18(v19, v20, v21, v22, v23, v24, v25, v26, v57, v60, *v62);
      sub_1000534C8((*(v3 + 56) + 32 * v10), &v63);
      sub_100065A64();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
    }

    sub_10004D2E8(&v63, &qword_1006CA130);
    if ((a1 & 4) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    Double.write<A>(to:)();
    v27._countAndFlagsBits = 44;
    v27._object = 0xE100000000000000;
    String.append(_:)(v27);
    Double.write<A>(to:)();
    *(&v64 + 1) = &type metadata for String;
    sub_1000534C8(&v63, v62);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v28, 108, 0xE100000000000000);
    v3 = v59;
    if ((a1 & 4) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  v4 = (v1 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0) + 20));
  if ((v4[1] & 1) == 0)
  {
    v5 = *v4;
    *(&v64 + 1) = &type metadata for Int;
    *&v63 = v5;
    sub_1000534C8(&v63, v62);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v6, 100, 0xE100000000000000);
    v3 = v59;
  }

LABEL_14:
  if ((a1 & 8) == 0)
  {
    goto LABEL_19;
  }

  v29 = (v1 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0) + 32));
  if ((v29[1] & 1) == 0)
  {
    v50 = *v29;
    *(&v64 + 1) = &type metadata for UInt64;
    *&v63 = v50;
    sub_1000534C8(&v63, v62);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v51, 29556, 0xE200000000000000);
LABEL_19:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    v52 = *(v1 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0) + 28));
    *(&v64 + 1) = &type metadata for UInt8;
    LOBYTE(v63) = v52;
    sub_1000534C8(&v63, v62);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000655E0();
    sub_10006A978(v53, 29804, 0xE200000000000000);
    goto LABEL_21;
  }

  v30 = sub_1000BFB60(29556, 0xE200000000000000);
  if (v31)
  {
    v32 = v30;
    swift_isUniquelyReferenced_nonNull_native();
    *v62 = v3;
    v33 = *(v3 + 24);
    v34 = sub_1000443DC(&qword_1006CA3D0);
    v42 = sub_100065AF8(v34, v35, v36, v37, v38, v39, v40, v41, v56, v59, v62[0]);
    sub_100065B18(v42, v43, v44, v45, v46, v47, v48, v49, v58, v61, *v62);
    sub_1000534C8((*(v33 + 56) + 32 * v32), &v63);
    sub_100065A64();
    _NativeDictionary._delete(at:)();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  sub_10004D2E8(&v63, &qword_1006CA130);
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

uint64_t sub_10005E454()
{
  sub_1000657D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_1000443DC(&qword_1006CA6E8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = type metadata accessor for MapsInsight();
  v1[7] = v4;
  sub_1000474C0(v4);
  v1[8] = v5;
  v1[9] = sub_100065948();
  sub_1000443DC(&qword_1006CA6F0);
  v1[10] = sub_100065948();
  v6 = type metadata accessor for ApplePayTransactionInsight.Location();
  v1[11] = v6;
  sub_1000474C0(v6);
  v1[12] = v7;
  v1[13] = sub_100065948();
  v8 = type metadata accessor for TransactionType();
  v1[14] = v8;
  sub_1000474C0(v8);
  v1[15] = v9;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v10 = type metadata accessor for ApplePayTransactionInsight();
  v1[18] = v10;
  sub_1000474C0(v10);
  v1[19] = v11;
  v1[20] = sub_100065948();
  v12 = type metadata accessor for Transaction.Insight();
  v1[21] = v12;
  sub_1000474C0(v12);
  v1[22] = v13;
  v1[23] = sub_100065948();
  v14 = type metadata accessor for UUID();
  v1[24] = v14;
  sub_1000474C0(v14);
  v1[25] = v15;
  v1[26] = sub_100065948();
  v16 = sub_100065864();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_10005E6F0()
{
  sub_1000657D4();
  InternalTransaction.id.getter();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_10005E794;
  v2 = *(v0 + 208);

  return FinanceStore.insightsForTransaction(withID:)(v2);
}

uint64_t sub_10005E794()
{
  sub_1000657EC();
  sub_1000657F8();
  v2 = *v1;
  sub_1000655F4();
  *v3 = v2;
  *(v5 + 224) = v4;
  *(v5 + 232) = v0;

  v6 = sub_100065A4C();
  v7(v6);
  sub_1000658F8();

  return _swift_task_switch(v8, v9, v10);
}

void sub_10005E8F0()
{
  v1 = *(v0 + 224);
  v103 = *(v1 + 16);
  if (!v103)
  {
LABEL_30:

LABEL_31:
    sub_1000658CC();

    sub_10006574C();

    v64();
    return;
  }

  v2 = 0;
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 120);
  v102 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v101 = enum case for Transaction.Insight.maps(_:);
  v100 = enum case for Transaction.Insight.bank(_:);
  v97 = enum case for Transaction.Insight.applePay(_:);
  v93 = (v4 + 32);
  v92 = enum case for TransactionType.pointOfSale(_:);
  v90 = (v5 + 8);
  v91 = (v5 + 104);
  v94 = (v4 + 8);
  v99 = (*(v0 + 64) + 32);
  v98 = *(v0 + 224);
  while (1)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v6 = *(v0 + 184);
    v7 = *(v0 + 168);
    (*(v3 + 16))(v6, v102 + *(v3 + 72) * v2, v7);
    v8 = (*(v3 + 88))(v6, v7);
    if (v8 != v101)
    {
      break;
    }

    v9 = *(v0 + 184);
    v10 = *(v0 + 72);
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = sub_100065AA4();
    v14(v13);
    (*v99)(v10, v9, v11);
    MapsInsight.merchant.getter();
    v15 = type metadata accessor for MapsMerchant();
    if (sub_100046EA4(v12, 1, v15) == 1)
    {
      v16 = *(v0 + 48);
      sub_100065A70();
      v17();
      sub_10004D2E8(v16, &qword_1006CA6E8);
    }

    else
    {
      v24 = *(v0 + 48);
      v25 = MapsMerchant.locationLatitude.getter();
      v27 = v26;
      v28 = *(*(v15 - 8) + 8);
      v28(v24, v15);
      if (v27)
      {
        goto LABEL_10;
      }

      v46 = *(v0 + 40);
      MapsInsight.merchant.getter();
      if (sub_100046EA4(v46, 1, v15) == 1)
      {
        v47 = *(v0 + 40);
        sub_100065A70();
        v48();
        v44 = v47;
        v45 = &qword_1006CA6E8;
LABEL_19:
        sub_10004D2E8(v44, v45);
LABEL_20:
        v1 = v98;
        goto LABEL_23;
      }

      v49 = *(v0 + 40);
      v50 = MapsMerchant.locationLongitude.getter();
      v52 = v51;
      v28(v49, v15);
      if (v52)
      {
LABEL_10:
        sub_100065A70();
        v29();
        goto LABEL_20;
      }

      v53 = *(v0 + 32);
      v54 = *(v0 + 16);
      v55 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
      v56 = v53 + v55[6];
      *v56 = v25;
      *(v56 + 8) = v50;
      *(v56 + 16) = 0;
      v57 = [objc_allocWithZone(CLLocation) initWithLatitude:*&v25 longitude:*&v50];
      [v54 distanceFromLocation:v57];
      v59 = v58;
      v60 = v58;

      v1 = v98;
      if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_45;
      }

      if (v59 <= -9.22337204e18)
      {
        goto LABEL_46;
      }

      if (v59 >= 9.22337204e18)
      {
        goto LABEL_47;
      }

      v61 = *(v0 + 32);
      v62 = v61 + v55[5];
      *v62 = v59;
      *(v62 + 8) = 0;
      sub_100065A70();
      v63();
      *(v61 + v55[7]) = 0;
    }

LABEL_23:
    if (v103 == ++v2)
    {
      goto LABEL_30;
    }
  }

  if (v8 == v100)
  {
    v18 = *(v0 + 168);
    v19 = *(v0 + 32);
    v20 = v19 + *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0) + 32);
    *v20 = 4;
    *(v20 + 8) = 0;
    v21 = sub_100065AA4();
    v23 = v18;
LABEL_22:
    v22(v21, v23);
    goto LABEL_23;
  }

  v30 = *(v0 + 184);
  if (v8 != v97)
  {
    v21 = sub_100065AA4();
    goto LABEL_22;
  }

  v31 = *(v0 + 160);
  v32 = *(v0 + 136);
  v33 = *(v0 + 144);
  v34 = *(v0 + 128);
  v35 = *(v0 + 112);
  v95 = *(v0 + 80);
  v96 = *(v0 + 88);
  v36 = *(v0 + 32);
  v37 = sub_100065AA4();
  v38(v37);
  (*v93)(v31, v30, v33);
  InternalTransaction.transactionType.getter();
  (*v91)(v34, v92, v35);
  sub_100065474();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v39 = *v90;
  (*v90)(v34, v35);
  v39(v32, v35);
  if (*(v0 + 240) == *(v0 + 242))
  {
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

  v41 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
  v42 = v36 + v41[8];
  *v42 = v40;
  *(v42 + 8) = 0;
  ApplePayTransactionInsight.location.getter();
  if (sub_100046EA4(v95, 1, v96) == 1)
  {
    v43 = *(v0 + 80);
    (*v94)(*(v0 + 160), *(v0 + 144));
    v44 = v43;
    v45 = &qword_1006CA6F0;
    goto LABEL_19;
  }

  v66 = *(v0 + 96);
  v65 = *(v0 + 104);
  v67 = *(v0 + 80);
  v68 = *(v0 + 88);
  v69 = *(v0 + 32);
  v70 = *(v0 + 16);

  (*(v66 + 32))(v65, v67, v68);
  ApplePayTransactionInsight.Location.latitude.getter();
  v72 = v71;
  ApplePayTransactionInsight.Location.longitude.getter();
  v73 = v69 + v41[6];
  *v73 = v72;
  *(v73 + 8) = v74;
  *(v73 + 16) = 0;
  v75 = ApplePayTransactionInsight.isCoarseLocation.getter();
  if (v75)
  {
    v76 = 1;
  }

  else
  {
    v76 = 2;
  }

  if (v75 == 2)
  {
    v77 = 0;
  }

  else
  {
    v77 = v76;
  }

  *(v69 + v41[7]) = v77;
  ApplePayTransactionInsight.Location.latitude.getter();
  v79 = v78;
  ApplePayTransactionInsight.Location.longitude.getter();
  v81 = [objc_allocWithZone(CLLocation) initWithLatitude:v79 longitude:v80];
  [v70 distanceFromLocation:v81];
  v83 = v82;
  v84 = v82;

  v85 = sub_1000657E0();
  v86(v85);
  v87 = sub_100065A4C();
  v88(v87);
  if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  if (v83 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v83 < 9.22337204e18)
  {
    v89 = *(v0 + 32) + v41[5];
    *v89 = v83;
    *(v89 + 8) = 0;
    goto LABEL_31;
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_10005F0B8(uint64_t a1)
{
  sub_1000658CC();

  sub_10006574C();

  return v1();
}

uint64_t ASFinanceStoreHelper.queryTransactions(startDateOffset:endDateOffset:transactionSources:locationType:locationFilterDistance:lat:lon:maxCount:sortOrder:sortByAttributes:attributes:)()
{
  sub_1000657D4();
  *(v1 + 112) = v19;
  *(v1 + 120) = v0;
  *(v1 + 80) = v17;
  *(v1 + 96) = v18;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
  *(v1 + 128) = v10;
  sub_1000474C0(v10);
  *(v1 + 136) = v11;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  v12 = sub_100065864();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10005F26C()
{
  sub_100060EF8(v0[7], v0[8], v0[9], v0[10]);
  v0[22] = v1;
  v0[23] = v2;
  sub_100065874();
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_10005F398;
  sub_1000657A4();

  return sub_10006100C();
}

uint64_t sub_10005F398()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v5;
  *(v3 + 208) = v0;

  if (v0)
  {

    sub_10006574C();

    return v6();
  }

  else
  {
    v8 = sub_100065864();

    return _swift_task_switch(v8, v9, v10);
  }
}

void sub_10005F4E0()
{
  v44 = v0;
  v3 = *(v0 + 200);
  *(v0 + 216) = [objc_allocWithZone(CLLocation) initWithLatitude:*(v0 + 176) longitude:*(v0 + 184)];
  v4 = *(v3 + 16);
  *(v0 + 224) = v4;
  if (!v4)
  {
    v8 = *(v0 + 208);
    v9 = _swiftEmptyArrayStorage;
LABEL_13:
    v32 = *(v0 + 104);

    if (v32 != 1)
    {
      goto LABEL_17;
    }

    sub_1000656A8();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_15:
      sub_10006576C();
      if (v8)
      {
        sub_100065990();
        return;
      }

LABEL_17:
      v33 = v9[2];
      if (v33)
      {
        v34 = *(v0 + 136);
        v43 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        sub_1000658C0();
        v36 = v9 + v35;
        v37 = *(v34 + 72);
        do
        {
          sub_100065AD8();
          LOBYTE(v34) = sub_10005E08C(v34);
          sub_10006174C(&v43);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          sub_100065A40();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          sub_100065A40();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v36 += v37;
          --v33;
        }

        while (v33);
      }

      else
      {
      }

      sub_100065758();
      sub_100065990();

      __asm { BRAA            X2, X16 }
    }

LABEL_29:
    sub_10006387C(v9);
    v9 = v42;
    goto LABEL_15;
  }

  *(v0 + 232) = OBJC_IVAR____TtC3asd20ASFinanceStoreHelper_store;
  v5 = type metadata accessor for InternalTransaction();
  v6 = 0;
  *(v0 + 240) = v5;
  v7 = *(v5 - 8);
  *(v0 + 248) = v7;
  *(v0 + 288) = *(v7 + 80);
  v8 = *(v0 + 208);
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_100065A7C(v6);
    if (v10)
    {
      __break(1u);
      goto LABEL_29;
    }

    v11 = sub_1000656E0();
    v12(v11);
    sub_10006565C();
    if (v13 || (v1 & 0xE) != 0)
    {
      break;
    }

    sub_1000617A8(*(v0 + 168), *(v0 + 160));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v0 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000656C4();
      sub_100065A58();
      sub_100062860(v16, v17, v18, v19, &qword_1006CA6E0, v20, v21, v22);
      v9 = v23;
    }

    v15 = v9[2];
    v1 = v15 + 1;
    if (v15 >= v9[3] >> 1)
    {
      sub_100065A58();
      sub_100062860(v24, v25, v26, v27, &qword_1006CA6E0, v28, v29, v30);
      v9 = v31;
    }

    sub_100065A08();
    sub_100065804();
    if (v3 == v2)
    {
      goto LABEL_13;
    }

    v6 = *(v0 + 256) + 1;
  }

  v38 = swift_task_alloc();
  *(v0 + 272) = v38;
  *v38 = v0;
  sub_100065618(v38);
  sub_100065990();

  sub_10005E454();
}

uint64_t sub_10005F8A4()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

void sub_10005F9B0()
{
  v39 = v1;
  v3 = *(v1 + 280);
  do
  {
    sub_1000617A8(*(v1 + 168), *(v1 + 160));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v1 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000656C4();
      sub_100065A58();
      sub_100062860(v11, v12, v13, v14, &qword_1006CA6E0, v15, v16, v17);
      v5 = v18;
    }

    v6 = *(v5 + 16);
    if (v6 >= *(v5 + 24) >> 1)
    {
      sub_100065A58();
      sub_100062860(v19, v20, v21, v22, &qword_1006CA6E0, v23, v24, v25);
      v5 = v26;
    }

    sub_100065A08();
    sub_100065804();
    if (v0 == v2)
    {
      v27 = *(v1 + 104);

      if (v27 != 1)
      {
        goto LABEL_18;
      }

      sub_1000656A8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_13:
        sub_10006576C();
        if (v3)
        {
          sub_10006592C();
          return;
        }

LABEL_18:
        v30 = *(v5 + 16);
        if (v30)
        {
          v31 = *(v1 + 136);
          v38 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          sub_1000658C0();
          v33 = v5 + v32;
          v34 = *(v31 + 72);
          do
          {
            sub_100065AD8();
            LOBYTE(v31) = sub_10005E08C(v31);
            sub_10006174C(&v38);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            sub_100065A40();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            sub_100065A40();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v33 += v34;
            --v30;
          }

          while (v30);
        }

        else
        {
        }

        sub_100065758();
        sub_10006592C();

        __asm { BRAA            X2, X16 }
      }

LABEL_27:
      sub_10006387C(v5);
      v5 = v37;
      goto LABEL_13;
    }

    sub_100065A7C(*(v1 + 256) + 1);
    if (v7)
    {
      __break(1u);
      goto LABEL_27;
    }

    v8 = sub_1000656E0();
    v9(v8);
    sub_10006565C();
  }

  while (!v10 && ((v6 + 1) & 0xE) == 0);
  v28 = swift_task_alloc();
  *(v1 + 272) = v28;
  *v28 = v1;
  sub_100065618(v28);
  sub_10006592C();

  sub_10005E454();
}

uint64_t sub_10005FCD8()
{
  sub_1000657EC();
  v1 = *(v0 + 168);

  sub_10006174C(v1);

  sub_10006574C();

  return v2();
}

BOOL sub_10005FD6C(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0) + 20);
  v5 = (a1 + v4);
  if (*(a1 + v4 + 8))
  {
    return 0;
  }

  v7 = a2 + v4;
  return (*(v7 + 8) & 1) != 0 || *v5 < *v7;
}

BOOL sub_10005FDD4(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0) + 20);
  v5 = (a1 + v4);
  if (*(a1 + v4 + 8))
  {
    return 0;
  }

  v7 = a2 + v4;
  return (*(v7 + 8) & 1) != 0 || *v7 < *v5;
}

uint64_t sub_10005FF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, void *a13)
{
  v13[2] = a13;
  v13[3] = _Block_copy(a12);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13[4] = v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13[5] = v15;
  a13;
  v16 = swift_task_alloc();
  v13[6] = v16;
  *v16 = v13;
  v16[1] = sub_10006006C;

  return ASFinanceStoreHelper.queryTransactions(startDateOffset:endDateOffset:transactionSources:locationType:locationFilterDistance:lat:lon:maxCount:sortOrder:sortByAttributes:attributes:)();
}

uint64_t sub_10006006C(uint64_t a1)
{
  v3 = v1;
  sub_1000657F8();
  v5 = v4;
  sub_10006564C();
  *v6 = v5;
  v8 = *(v7 + 16);
  v9 = *v2;
  sub_1000655F4();
  *v10 = v9;

  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    isa = 0;
    v13 = v11;
  }

  else
  {
    sub_1000591B0(0, &qword_1006CA678, NSDictionary_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = 0;
    v13 = isa;
  }

  v14 = *(v5 + 24);
  (v14)[2](v14, isa, v11);

  _Block_release(v14);
  sub_10006574C();

  return v15();
}

uint64_t type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(uint64_t a1)
{
  result = qword_1006CA578;
  if (!qword_1006CA578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1000602B0(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

BOOL sub_1000602E0(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_10006030C(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_10006033C(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_100060360(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_100060388(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_100060470@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of CoordRange.spansAntimeridian();
  *a1 = result;
  return result;
}

uint64_t sub_100060498@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060280(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000604C8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060290(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000604F8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000602A0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100060530@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006030C(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_100060564@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100060360(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1000605B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000603F4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100060648@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005DFE0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006067C@<X0>(uint64_t *a1@<X8>)
{
  result = _s3asd20ASBiometricKitHelperC13currentDeviceSo8BKDeviceCSgvpfi_0();
  *a1 = result;
  return result;
}

uint64_t sub_1000606A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100060288(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000606D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100060298(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_100060704@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000602A8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10006073C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10006033C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_100060770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100060388(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000607BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000603FC(*a1, *v2);
  *a2 = result;
  return result;
}

void *sub_100060820@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10006083C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10005E038(a1);
  *a2 = result;
  return result;
}

uint64_t ASFinanceStoreHelper.countTransactions(startDateOffset:endDateOffset:transactionSources:locationType:locationFilterDistance:lat:lon:maxCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v15;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v14;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = sub_100065864();
  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000608A8()
{
  sub_100060EF8(v0[7], v0[8], v0[9], v0[10]);
  sub_100065874();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1000609A0;
  sub_1000657A4();

  return sub_10006100C();
}

uint64_t sub_1000609A0()
{
  sub_1000657EC();
  v3 = v2;
  sub_1000657F8();
  v5 = v4;
  sub_10006564C();
  *v6 = v5;
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 112) = v3;
    sub_1000658F8();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_100060AD0()
{
  sub_1000657D4();

  v0 = sub_100065758();

  return v1(v0);
}

uint64_t sub_100060C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, void *a10)
{
  v10[2] = a10;
  v10[3] = _Block_copy(a9);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v10[4] = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10[5] = v17;
  a10;
  v18 = swift_task_alloc();
  v10[6] = v18;
  *v18 = v10;
  v18[1] = sub_100060D30;

  return ASFinanceStoreHelper.countTransactions(startDateOffset:endDateOffset:transactionSources:locationType:locationFilterDistance:lat:lon:maxCount:)(a1, a2, a3, a4, a5, v13, v15, v16);
}

uint64_t sub_100060D30(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_1000655F4();
  *v7 = v6;
  v8 = *(v5 + 16);
  v9 = *v2;
  *v7 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(*(v5 + 24), a1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_100060EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = sub_100060FAC(a1, a2);
  if (v7 & 1) != 0 || (v8 = *&v6, , v9 = sub_100065A64(), result = sub_100060FAC(v9, v10), (v12) || fabs(v8) > 90.0 || fabs(*&result) > 180.0)
  {
    sub_10005DF64(0);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100060FAC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_10006537C(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006100C()
{
  sub_1000657D4();
  v1[9] = v2;
  v1[10] = v0;
  v1[8] = v3;
  v1[6] = v4;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v10 = type metadata accessor for PrivateInternalTransactionQuery();
  v1[11] = v10;
  sub_1000474C0(v10);
  v1[12] = v11;
  v1[13] = sub_100065948();
  v12 = type metadata accessor for FinanceStore.DataType();
  v1[14] = v12;
  sub_1000474C0(v12);
  v1[15] = v13;
  v1[16] = sub_100065948();
  v14 = sub_100065864();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10006110C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for FinanceStore.DataType.financialData(_:), v3);
  type metadata accessor for DeviceInfo();
  v4 = FinanceStore.isDataAvailable(for:deviceInfo:)();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    sub_10005DF64(1);
    swift_willThrow();

    sub_10006574C();
    sub_100065AB0();

    __asm { BRAA            X1, X16 }
  }

  v27 = v0[4];
  v5 = v0[2];
  v6 = v0[3];
  sub_1000443DC(&qword_1006CBEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1005CC340;
  sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
  v8 = sub_1000443DC(&qword_1006CA670);
  v9 = sub_1000659B0(v8);
  *(v9 + 16) = xmmword_1005CB870;
  v10 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:-v5];
  v11 = sub_1000591B0(0, &qword_1006CA340, NSDate_ptr);
  *(v9 + 56) = v11;
  v12 = sub_1000654CC();
  *(v9 + 64) = v12;
  *(v9 + 32) = v10;
  *(v7 + 32) = NSPredicate.init(format:_:)();
  v13 = sub_1000659B0(v8);
  *(v13 + 16) = xmmword_1005CB870;
  v14 = [objc_allocWithZone(NSDate) initWithTimeIntervalSinceNow:-v6];
  *(v13 + 56) = v11;
  *(v13 + 64) = v12;
  *(v13 + 32) = v14;
  *(v7 + 40) = NSPredicate.init(format:_:)();
  v15 = sub_100061BC0(v27);
  v18 = v0[9];
  *(v7 + 48) = v15;
  sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
  v19 = sub_100061DBC(v7, &selRef_andPredicateWithSubpredicates_);
  v0[17] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1005CC350;
  v21 = objc_allocWithZone(NSSortDescriptor);
  *(v20 + 32) = sub_100062508(0xD000000000000027, 0x80000001005A40C0, v18 == 0);
  v22 = v19;
  PrivateInternalTransactionQuery.init(sortDescriptors:predicate:limit:offset:)();
  v23 = swift_task_alloc();
  v0[18] = v23;
  *v23 = v0;
  v23[1] = sub_100061510;
  sub_100065AB0();

  return FinanceStore.privateInternalTransactions(query:)(v24);
}

uint64_t sub_100061510()
{
  sub_1000657EC();
  v3 = v2;
  sub_1000657F8();
  v5 = v4;
  sub_10006564C();
  *v6 = v5;
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  sub_1000658F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10006161C()
{
  sub_1000657EC();

  v1 = sub_100065A4C();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 160);

  return v3(v4);
}

uint64_t sub_1000616B4()
{
  sub_1000657EC();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);

  (*(v2 + 8))(v1, v3);

  sub_10006574C();

  return v4();
}

uint64_t sub_10006174C(uint64_t a1)
{
  v2 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000617A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10006180C(Swift::Double a1, Swift::Double a2, Swift::Double a3)
{
  sub_1000443DC(&qword_1006CBEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1005CC360;
  sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
  v8 = NSPredicate.init(format:_:)();
  *(v7 + 32) = v8;
  sub_100061E40(0xD000000000000045, a1, a2, a3, 0x80000001005A3FC0, 0xD000000000000046, 0x80000001005A4010);
  if (v3)
  {

    *(v7 + 16) = 0;
  }

  else
  {
    v11 = v9;
    sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
    *(v7 + 40) = v11;
    return sub_100061DBC(v7, &selRef_andPredicateWithSubpredicates_);
  }
}

id sub_10006196C(char a1)
{
  v2 = type metadata accessor for TransactionType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for TransactionType.pointOfSale(_:), v2);
  v8 = TransactionType.rawValue.getter();
  (*(v3 + 8))(v7, v2);
  if (a1)
  {
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    if ((a1 & 2) != 0)
    {
      return NSPredicate.init(format:_:)();
    }

LABEL_9:
    v11 = sub_1000443DC(&qword_1006CA670);
    v12 = sub_1000659B0(v11);
    *(v12 + 16) = xmmword_1005CB870;
    *(v12 + 56) = &type metadata for Int16;
    *(v12 + 64) = &protocol witness table for Int16;
    *(v12 + 32) = v8;
    return NSPredicate.init(format:_:)();
  }

  if ((a1 & 2) != 0)
  {
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
    goto LABEL_9;
  }

  v9 = [objc_opt_self() predicateWithValue:0];

  return v9;
}

id sub_100061BC0(uint64_t a1)
{
  v2 = a1;
  if ((a1 & 3) != 0)
  {
    sub_1000443DC(&qword_1006CBEB0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1005CC360;
    v4 = sub_10006196C(v2);
    *(v3 + 32) = v4;
    v5 = sub_100065960();
    sub_100061B74(v5, v6, v7);
    if (v1)
    {

      *(v3 + 16) = 0;
    }

    v10 = v8;
    sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
    *(v3 + 40) = v10;
    sub_100061DBC(v3, &selRef_andPredicateWithSubpredicates_);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if ((v2 & 4) != 0)
  {
    v11 = sub_100065960();
    sub_10006180C(v11, v12, v13);
    if (v1)
    {
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    sub_100065A64();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
  return sub_100061DBC(_swiftEmptyArrayStorage, &selRef_orPredicateWithSubpredicates_);
}

id sub_100061DBC(uint64_t a1, SEL *a2)
{
  sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [swift_getObjCClassFromMetadata() *a2];

  return v4;
}

void sub_100061E40(uint64_t a1, Swift::Double a2, Swift::Double a3, Swift::Double a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a4 >= 0.0)
  {
    GlobalLocationHelper.boundingRectAround(lat:lon:radiusMetres:)(&v13, a2, a3, a4);
    if (!v12)
    {
      sub_100061EF4(&v13, a1, a5, a6, a7);
    }
  }

  else
  {
    v7 = [objc_opt_self() predicateWithValue:1];
  }
}

id sub_100061EF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1[3])
  {
    v10 = 0;
  }

  else
  {
    v11 = a1[2];
    v5 = &protocol witness table for Double;
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);

    v12._countAndFlagsBits = 0x6625203D3C20;
    v12._object = 0xE600000000000000;
    String.append(_:)(v12);
    v13 = sub_1000443DC(&qword_1006CA670);
    v14 = sub_1000659B0(v13);
    *(v14 + 16) = xmmword_1005CB870;
    *(v14 + 56) = &type metadata for Double;
    *(v14 + 64) = &protocol witness table for Double;
    *(v14 + 32) = v11;
    v10 = NSPredicate.init(format:_:)();
  }

  if (a1[1])
  {
    v15 = 0;
  }

  else
  {
    v16 = *a1;
    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);

    sub_1000659E4();
    v5 = a3;
    v17 = sub_1000443DC(&qword_1006CA670);
    v18 = sub_1000659B0(v17);
    *(v18 + 16) = xmmword_1005CB870;
    *(v18 + 56) = &type metadata for Double;
    *(v18 + 64) = &protocol witness table for Double;
    *(v18 + 32) = v16;
    v15 = NSPredicate.init(format:_:)();
  }

  if ((a1[7] & 1) == 0)
  {
    if ((a1[5] & 1) == 0)
    {
      v20 = a1[6];
      v55 = a1[4];
      v21 = *(a1 + 57);
      sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);
      if (v21)
      {
        _StringGuts.grow(_:)(25);

        sub_100065904(v22, v23, v24, v25, v26, v27, v28, v29, v54, v55, a2, 0, 0xE000000000000000);
        sub_100065A2C();
        v30 = 0xEC0000002820524FLL;
      }

      else
      {
        _StringGuts.grow(_:)(26);

        sub_100065904(v31, v32, v33, v34, v35, v36, v37, v38, v54, v55, a2, 0, 0xE000000000000000);
        sub_100065A2C();
        v30 = 0xED00002820444E41;
      }

      v39 = v5 | 0x200;
      String.append(_:)(*(&v30 - 1));
      v40._countAndFlagsBits = a4;
      v40._object = a5;
      String.append(_:)(v40);
      v41._countAndFlagsBits = v5;
      v41._object = 0xE800000000000000;
      String.append(_:)(v41);
      sub_1000443DC(&qword_1006CA670);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1005CC370;
      *(v42 + 56) = &type metadata for Double;
      *(v42 + 64) = &protocol witness table for Double;
      *(v42 + 32) = v20;
      *(v42 + 96) = &type metadata for Double;
      *(v42 + 104) = &protocol witness table for Double;
      *(v42 + 72) = v56;
      v19 = NSPredicate.init(format:_:)();

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if ((a1[5] & 1) == 0)
  {
LABEL_11:
    v19 = [objc_opt_self() predicateWithValue:0];
    goto LABEL_16;
  }

  v19 = 0;
LABEL_16:
  sub_1000443DC(&qword_1006CA658);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CC380;
  *(inited + 32) = v10;
  *(inited + 40) = v15;
  *(inited + 48) = v19;
  v44 = v19;
  v45 = v10;
  result = v15;
  v47 = result;
  for (i = 0; i != 3; ++i)
  {
    if (i > 2)
    {
      __break(1u);
      return result;
    }

    v49 = *(inited + 8 * i + 32);
    if (v49)
    {
      v50 = v49;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  swift_setDeallocating();
  sub_1000CEDBC();
  if (sub_1000591F0(_swiftEmptyArrayStorage))
  {
    sub_1000591B0(0, &qword_1006CA660, NSCompoundPredicate_ptr);
    v51 = sub_100061DBC(_swiftEmptyArrayStorage, &selRef_andPredicateWithSubpredicates_);
  }

  else
  {

    sub_1000591B0(0, &qword_1006CA668, NSPredicate_ptr);

    sub_1000659E4();
    v52 = sub_1000443DC(&qword_1006CA670);
    v53 = sub_1000659B0(v52);
    *(v53 + 16) = xmmword_1005CB870;
    *(v53 + 56) = &type metadata for Double;
    *(v53 + 64) = &protocol witness table for Double;
    *(v53 + 32) = 0xC056866666666666;
    sub_100065A4C();
    v51 = NSPredicate.init(format:_:)();
  }

  return v51;
}

id ASFinanceStoreHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASFinanceStoreHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100062458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

id sub_100062508(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithKey:v5 ascending:a3 & 1];

  return v6;
}

void sub_1000625BC()
{
  sub_100065730();
  if (v4)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  sub_1000655D0();
  if (v3)
  {
    v7 = sub_1000443DC(&qword_1006CA6A0);
    v8 = sub_1000659C8(v7);
    sub_100065714(v8);
    sub_1000657C8(v9 / 104);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v10 = sub_100065898();
  if (v1)
  {
    if (v3 != v0 || &v11[104 * v2] <= v10)
    {
      memmove(v10, v11, 104 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062690()
{
  sub_100065730();
  if (v4)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  sub_1000655D0();
  if (v3)
  {
    v7 = sub_1000443DC(&qword_1006CA688);
    v8 = sub_1000659C8(v7);
    sub_100065714(v8);
    sub_1000657C8(v9 / 24);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || &v0[3 * v2 + 4] <= v3 + 4)
    {
      v11 = sub_1000657E0();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1000443DC(&qword_1006CA690);
    sub_1000657E0();
    swift_arrayInitWithCopy();
  }
}

void sub_100062784()
{
  sub_100065730();
  if (v4)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  sub_1000655D0();
  if (v3)
  {
    sub_1000443DC(&qword_1006CA710);
    v7 = sub_100065978();
    sub_100065714(v7);
    sub_1000657C8(v8 / 32);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100065898();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062860(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = a1;
  if (a3)
  {
    sub_1000655C0();
    if (v13 != v14)
    {
      sub_10006569C();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_1000633F0(v15, v12, a5, a6);
  a7(0);
  sub_1000658C0();
  if (v11)
  {
    sub_100063708(a4 + v17, v15, &v16[v17], a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_100062954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000629B8()
{
  sub_100065730();
  if (v3)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_1000443DC(&unk_1006CB530);
    v9 = sub_100065978();
    j__malloc_size(v9);
    sub_100065604();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_100062A84()
{
  sub_100065730();
  if (v4)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  sub_1000655D0();
  if (v3)
  {
    sub_1000443DC(&qword_1006CA6D0);
    v7 = sub_100065978();
    j__malloc_size(v7);
    sub_100065604();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v7 != v0 || &v0[2 * v2 + 4] <= v7 + 4)
    {
      v10 = sub_1000657E0();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1000443DC(&qword_1006CA6D8);
    sub_1000657E0();
    swift_arrayInitWithCopy();
  }
}

void sub_100062B68()
{
  sub_100065730();
  if (v3)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_1000632D8(v7, v4);
  sub_1000443DC(&qword_1006CAC00);
  sub_1000658C0();
  if (v1)
  {
    sub_10006355C(v0 + v9, v7, &v8[v9]);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062C84()
{
  sub_100065730();
  if (v4)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  sub_1000655D0();
  if (v3)
  {
    sub_1000443DC(&qword_1006CA6A8);
    v7 = sub_100065978();
    j__malloc_size(v7);
    sub_100065604();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100065898();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062D60(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = a1;
  if (a3)
  {
    sub_1000655C0();
    if (v10 != v11)
    {
      sub_10006569C();
      if (v10)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = a4[2];
  if (v9 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    sub_1000443DC(a5);
    v14 = sub_100065978();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 8);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v8)
  {
    if (v14 != a4 || &a4[v12 + 4] <= v14 + 4)
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000443DC(a6);
    swift_arrayInitWithCopy();
  }
}

void sub_100062EB0()
{
  sub_100065730();
  if (v4)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  sub_1000655D0();
  if (v3)
  {
    sub_1000443DC(&qword_1006CA620);
    v7 = sub_100065978();
    j__malloc_size(v7);
    sub_100065604();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_100065898();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100062FC0()
{
  sub_100065730();
  if (v4)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  sub_1000655D0();
  if (v3)
  {
    sub_1000443DC(&qword_1006CA640);
    v7 = sub_100065978();
    sub_100065714(v7);
    sub_1000657C8(v8 / 8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v3 != v0 || &v0[v2 + 4] <= v3 + 4)
    {
      v10 = sub_1000657E0();
      memmove(v10, v11, v12);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1000443DC(&qword_1006CA648);
    sub_1000657E0();
    swift_arrayInitWithCopy();
  }
}

void sub_1000630B0()
{
  sub_100065730();
  if (v4)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  sub_1000655D0();
  if (v3)
  {
    sub_1000443DC(v7);
    v8 = swift_allocObject();
    v9 = j__malloc_size(v8);
    v8[2] = v2;
    v8[3] = 2 * v9 - 64;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_100065898();
  if (v1)
  {
    if (v8 != v0 || &v11[v2] <= v10)
    {
      memmove(v10, v11, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v10, v11, v2);
  }
}

void sub_100063204()
{
  sub_100065730();
  if (v4)
  {
    sub_1000655C0();
    if (v5 != v6)
    {
      sub_10006569C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  sub_1000655D0();
  if (v3)
  {
    v7 = sub_1000443DC(&qword_1006CA680);
    v8 = sub_1000659C8(v7);
    sub_100065714(v8);
    sub_1000657C8(v9 / 24);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v10 = sub_100065898();
  if (v1)
  {
    if (v3 != v0 || &v11[24 * v2] <= v10)
    {
      memmove(v10, v11, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1000632D8(uint64_t a1, uint64_t a2)
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

  sub_1000443DC(&qword_1006CA6C8);
  v4 = *(sub_1000443DC(&qword_1006CAC00) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
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

char *sub_1000633F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000443DC(a3);
  v7 = a4(0);
  sub_1000474C0(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if (&result[-v11] != 0x8000000000000000 || v9 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * (&result[-v11] / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1000634E0(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return sub_10006573C(result, a3, a2);
  }

  return result;
}

char *sub_100063514(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

char *sub_10006353C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

uint64_t sub_10006355C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000443DC(&qword_1006CAC00), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1000443DC(&qword_1006CAC00);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_100063650(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

char *sub_100063690(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

char *sub_1000636B8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

uint64_t sub_100063708(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    sub_100065A90();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100065A90();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000637D0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1000655A0(a3, result);
  }

  return result;
}

Swift::Int sub_100063944(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_1000644F8(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1000642D8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_100063A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTransaction();

  return sub_100046EA4(a1, a2, v4);
}

uint64_t sub_100063AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalTransaction();

  return sub_1000485F8(a1, a2, a2, v4);
}

void sub_100063B40(uint64_t a1)
{
  type metadata accessor for InternalTransaction();
  if (v1 <= 0x3F)
  {
    sub_100063C2C(319, &qword_1006CA588, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_100063C2C(319, &qword_1006CA590, &type metadata for ASFinanceStoreHelper.AugmentedTransaction.Location);
      if (v3 <= 0x3F)
      {
        sub_100063C2C(319, &unk_1006CA598, &type metadata for ASFinanceStoreHelper.TransactionSources);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100063C2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ASFinanceStoreHelper.AugmentedTransaction.Location(uint64_t a1, int a2)
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

unint64_t sub_100063CCC()
{
  result = qword_1006CA5D8;
  if (!qword_1006CA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5D8);
  }

  return result;
}

unint64_t sub_100063D24()
{
  result = qword_1006CA5E0;
  if (!qword_1006CA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5E0);
  }

  return result;
}

unint64_t sub_100063D7C()
{
  result = qword_1006CA5E8;
  if (!qword_1006CA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5E8);
  }

  return result;
}

unint64_t sub_100063DD4()
{
  result = qword_1006CA5F0;
  if (!qword_1006CA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5F0);
  }

  return result;
}

unint64_t sub_100063E2C()
{
  result = qword_1006CA5F8;
  if (!qword_1006CA5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA5F8);
  }

  return result;
}

unint64_t sub_100063E84()
{
  result = qword_1006CA600;
  if (!qword_1006CA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA600);
  }

  return result;
}

unint64_t sub_100063EDC()
{
  result = qword_1006CA608;
  if (!qword_1006CA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA608);
  }

  return result;
}

unint64_t sub_100063F34()
{
  result = qword_1006CA610;
  if (!qword_1006CA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CA610);
  }

  return result;
}

uint64_t sub_100063F88()
{
  _Block_release(*(v0 + 80));

  return _swift_deallocObject(v0, 96, 7);
}

void sub_100063FD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000640AC;
  sub_1000658A4();
  sub_10006592C();

  __asm { BR              X8 }
}

uint64_t sub_1000640AC()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

uint64_t sub_10006418C()
{
  _Block_release(*(v0 + 104));

  return _swift_deallocObject(v0, 120, 7);
}

void sub_1000641DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100065570;
  sub_1000658A4();

  __asm { BR              X8 }
}

uint64_t sub_1000642D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v43 = a4;
  v42 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
  v11 = __chkstk_darwin(v42, v9, v10);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v13, v14);
  v17 = &v33 - v16;
  result = __chkstk_darwin(v15, v18, v19);
  v23 = &v33 - v22;
  v35 = a2;
  if (a3 != a2)
  {
    v24 = *(v21 + 72);
    v25 = *v4 + v24 * (a3 - 1);
    v26 = -v24;
    v27 = a1 - a3;
    v40 = *v4;
    v34 = v24;
    v28 = v40 + v24 * a3;
LABEL_4:
    v38 = v25;
    v39 = a3;
    v36 = v28;
    v37 = v27;
    v29 = v25;
    while (1)
    {
      sub_1000617A8(v28, v23);
      sub_1000617A8(v29, v17);
      v30 = v43(v23, v17);
      sub_10006174C(v17);
      result = sub_10006174C(v23);
      if (v5)
      {
        break;
      }

      if (v30)
      {
        if (!v40)
        {
          __break(1u);
          return result;
        }

        v31 = v41;
        sub_100062954(v28, v41);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_100062954(v31, v29);
        v29 += v26;
        v28 += v26;
        if (!__CFADD__(v27++, 1))
        {
          continue;
        }
      }

      a3 = v39 + 1;
      v25 = v38 + v34;
      v27 = v37 - 1;
      v28 = v36 + v34;
      if (v39 + 1 != v35)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_1000644F8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v159 = a5;
  v158 = a4;
  v146 = a1;
  v151 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
  v156 = *(v151 - 8);
  v12 = __chkstk_darwin(v151, v10, v11);
  v147 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v14, v15);
  v150 = &v136 - v17;
  v20 = __chkstk_darwin(v16, v18, v19);
  v23 = __chkstk_darwin(v20, v21, v22);
  v26 = __chkstk_darwin(v23, v24, v25);
  v29 = __chkstk_darwin(v26, v27, v28);
  v31 = &v136 - v30;
  __chkstk_darwin(v29, v32, v33);
  v37 = __chkstk_darwin(&v136 - v34, v35, v36);
  v157 = a3;
  v42 = a3[1];
  if (v42 < 1)
  {
    v44 = _swiftEmptyArrayStorage;
LABEL_102:
    v155 = *v146;
    if (v155)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_139;
      }

      goto LABEL_104;
    }

    goto LABEL_148;
  }

  v142 = &v136 - v38;
  v143 = v37;
  v152 = v31;
  v153 = v41;
  v148 = v40;
  v149 = v39;
  v141 = a6;
  v43 = 0;
  v44 = _swiftEmptyArrayStorage;
  while (1)
  {
    v45 = v43;
    v46 = v43 + 1;
    if (v43 + 1 < v42)
    {
      v155 = v42;
      v145 = v44;
      v47 = *v157;
      v48 = *(v156 + 72);
      v49 = *v157 + v48 * v46;
      v50 = v142;
      sub_1000617A8(v49, v142);
      v51 = v143;
      sub_1000617A8(v47 + v48 * v45, v143);
      LODWORD(v154) = v158(v50, v51);
      if (v7)
      {
        sub_10006174C(v51);
        v135 = v50;
        goto LABEL_115;
      }

      sub_10006174C(v51);
      sub_10006174C(v50);
      v144 = v45;
      v52 = v45 + 2;
      v53 = v47 + v48 * (v45 + 2);
      v54 = v155;
      while (1)
      {
        v55 = v46;
        v56 = v52;
        if (v46 + 1 >= v54)
        {
          break;
        }

        v57 = v152;
        sub_1000617A8(v53, v152);
        v58 = v153;
        sub_1000617A8(v49, v153);
        v59 = v158(v57, v58);
        sub_10006174C(v58);
        sub_10006174C(v57);
        v53 += v48;
        v49 += v48;
        v46 = v55 + 1;
        v52 = v56 + 1;
        v54 = v155;
        if ((v154 ^ v59))
        {
          goto LABEL_10;
        }
      }

      v46 = v54;
LABEL_10:
      if (v154)
      {
        if (v46 < v144)
        {
          goto LABEL_142;
        }

        if (v144 > v55)
        {
          v44 = v145;
          v45 = v144;
          goto LABEL_33;
        }

        if (v54 >= v56)
        {
          v60 = v56;
        }

        else
        {
          v60 = v54;
        }

        v61 = v48 * (v60 - 1);
        v62 = v48 * v60;
        v63 = v144 * v48;
        v154 = v46;
        v64 = v144;
        do
        {
          if (v64 != --v46)
          {
            v65 = *v157;
            if (!*v157)
            {
              goto LABEL_146;
            }

            sub_100062954(v65 + v63, v147);
            v66 = v63 < v61 || v65 + v63 >= (v65 + v62);
            if (v66)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v61)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_100062954(v147, v65 + v61);
          }

          ++v64;
          v61 -= v48;
          v62 -= v48;
          v63 += v48;
        }

        while (v64 < v46);
        v44 = v145;
        v46 = v154;
      }

      else
      {
        v44 = v145;
      }

      v45 = v144;
    }

LABEL_33:
    v67 = v157[1];
    if (v46 < v67)
    {
      if (__OFSUB__(v46, v45))
      {
        goto LABEL_138;
      }

      if (v46 - v45 < v141)
      {
        v68 = v45 + v141;
        if (__OFADD__(v45, v141))
        {
          __break(1u);
        }

        else
        {
          if (v68 >= v67)
          {
            v68 = v157[1];
          }

          if (v68 >= v45)
          {
            if (v46 == v68)
            {
              goto LABEL_41;
            }

            v144 = v45;
            v145 = v44;
            v115 = *(v156 + 72);
            v116 = *v157 + v115 * (v46 - 1);
            v117 = -v115;
            v118 = v45 - v46;
            v155 = *v157;
            v136 = v115;
            v119 = v155 + v46 * v115;
            v137 = v68;
            while (1)
            {
              v154 = v46;
              v138 = v119;
              v139 = v118;
              v140 = v116;
              v120 = v116;
              do
              {
                v121 = v148;
                sub_1000617A8(v119, v148);
                v122 = v149;
                sub_1000617A8(v120, v149);
                v123 = v158(v121, v122);
                if (v7)
                {
                  sub_10006174C(v122);
                  v135 = v121;
LABEL_115:
                  sub_10006174C(v135);
                  goto LABEL_116;
                }

                v124 = v123;
                sub_10006174C(v122);
                sub_10006174C(v121);
                if ((v124 & 1) == 0)
                {
                  break;
                }

                if (!v155)
                {
                  goto LABEL_145;
                }

                v125 = v150;
                sub_100062954(v119, v150);
                swift_arrayInitWithTakeFrontToBack();
                sub_100062954(v125, v120);
                v120 += v117;
                v119 += v117;
                v66 = __CFADD__(v118++, 1);
              }

              while (!v66);
              v46 = v154 + 1;
              v116 = v140 + v136;
              v118 = v139 - 1;
              v119 = v138 + v136;
              if (v154 + 1 == v137)
              {
                v46 = v137;
                v45 = v144;
                v44 = v145;
                goto LABEL_41;
              }
            }
          }
        }

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
        goto LABEL_147;
      }
    }

LABEL_41:
    if (v46 < v45)
    {
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000629B8();
      v44 = v126;
    }

    v70 = *(v44 + 2);
    v71 = v70 + 1;
    if (v70 >= *(v44 + 3) >> 1)
    {
      sub_1000629B8();
      v44 = v127;
    }

    *(v44 + 2) = v71;
    v72 = v44 + 32;
    v73 = &v44[16 * v70 + 32];
    v74 = v154;
    *v73 = v45;
    *(v73 + 1) = v74;
    v155 = *v146;
    if (!v155)
    {
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
      return;
    }

    if (v70)
    {
      break;
    }

LABEL_90:
    v42 = v157[1];
    v43 = v154;
    if (v154 >= v42)
    {
      goto LABEL_102;
    }
  }

  while (1)
  {
    v75 = v71 - 1;
    v76 = &v72[16 * v71 - 16];
    v77 = &v44[16 * v71];
    if (v71 >= 4)
    {
      v82 = &v72[16 * v71];
      v83 = *(v82 - 8);
      v84 = *(v82 - 7);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_125;
      }

      v87 = *(v82 - 6);
      v86 = *(v82 - 5);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_126;
      }

      v89 = *(v77 + 1);
      v90 = v89 - *v77;
      if (__OFSUB__(v89, *v77))
      {
        goto LABEL_128;
      }

      v88 = __OFADD__(v80, v90);
      v91 = v80 + v90;
      if (v88)
      {
        goto LABEL_131;
      }

      if (v91 >= v85)
      {
        v105 = *v76;
        v104 = *(v76 + 1);
        v88 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v88)
        {
          goto LABEL_136;
        }

        if (v80 < v106)
        {
          v75 = v71 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

    if (v71 == 3)
    {
      v78 = *(v44 + 4);
      v79 = *(v44 + 5);
      v88 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      v81 = v88;
LABEL_61:
      if (v81)
      {
        goto LABEL_127;
      }

      v93 = *v77;
      v92 = *(v77 + 1);
      v94 = __OFSUB__(v92, v93);
      v95 = v92 - v93;
      v96 = v94;
      if (v94)
      {
        goto LABEL_130;
      }

      v97 = *(v76 + 1);
      v98 = v97 - *v76;
      if (__OFSUB__(v97, *v76))
      {
        goto LABEL_133;
      }

      if (__OFADD__(v95, v98))
      {
        goto LABEL_135;
      }

      if (v95 + v98 >= v80)
      {
        if (v80 < v98)
        {
          v75 = v71 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_76;
    }

    if (v71 < 2)
    {
      goto LABEL_129;
    }

    v100 = *v77;
    v99 = *(v77 + 1);
    v88 = __OFSUB__(v99, v100);
    v95 = v99 - v100;
    v96 = v88;
LABEL_76:
    if (v96)
    {
      goto LABEL_132;
    }

    v102 = *v76;
    v101 = *(v76 + 1);
    v88 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v88)
    {
      goto LABEL_134;
    }

    if (v103 < v95)
    {
      goto LABEL_90;
    }

LABEL_83:
    if (v75 - 1 >= v71)
    {
      break;
    }

    if (!*v157)
    {
      goto LABEL_143;
    }

    v107 = &v72[16 * v75 - 16];
    v108 = *v107;
    v109 = v75;
    v110 = &v72[16 * v75];
    v111 = *(v110 + 1);
    sub_100064E38(*v157 + *(v156 + 72) * *v107, *v157 + *(v156 + 72) * *v110, *v157 + *(v156 + 72) * v111, v155, v158, v159);
    if (v7)
    {
      goto LABEL_116;
    }

    if (v111 < v108)
    {
      goto LABEL_119;
    }

    v7 = v72;
    v112 = v44;
    v44 = *(v44 + 2);
    if (v109 > v44)
    {
      goto LABEL_120;
    }

    *v107 = v108;
    *(v107 + 1) = v111;
    if (v109 >= v44)
    {
      goto LABEL_121;
    }

    v113 = v109;
    v71 = (v44 - 1);
    sub_1000872E4(v110 + 16, &v44[-v113 - 1], v110);
    *(v112 + 2) = v44 - 1;
    v114 = v44 > 2;
    v44 = v112;
    v72 = v7;
    v7 = 0;
    if (!v114)
    {
      goto LABEL_90;
    }
  }

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
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  v44 = sub_1000871E4(v44);
LABEL_104:
  v128 = v44 + 16;
  v129 = *(v44 + 2);
  while (v129 >= 2)
  {
    if (!*v157)
    {
      goto LABEL_144;
    }

    v130 = v44;
    v131 = &v44[16 * v129];
    v44 = *v131;
    v132 = &v128[2 * v129];
    v133 = *(v132 + 1);
    sub_100064E38(*v157 + *(v156 + 72) * *v131, *v157 + *(v156 + 72) * *v132, *v157 + *(v156 + 72) * v133, v155, v158, v159);
    if (v7)
    {
      break;
    }

    if (v133 < v44)
    {
      goto LABEL_122;
    }

    if (v129 - 2 >= *v128)
    {
      goto LABEL_123;
    }

    *v131 = v44;
    *(v131 + 1) = v133;
    v134 = *v128 - v129;
    if (*v128 < v129)
    {
      goto LABEL_124;
    }

    v129 = *v128 - 1;
    sub_1000872E4(v132 + 16, v134, v132);
    *v128 = v129;
    v44 = v130;
  }

LABEL_116:
}

uint64_t sub_100064E38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v72 = a5;
  v73 = a6;
  v69 = a3;
  v70 = type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction(0);
  v12 = __chkstk_darwin(v70, v10, v11);
  v15 = __chkstk_darwin(v12, v13, v14);
  v17 = &v62 - v16;
  v20 = __chkstk_darwin(v15, v18, v19);
  v22 = &v62 - v21;
  result = __chkstk_darwin(v20, v23, v24);
  v28 = &v62 - v27;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  v31 = a2 - a1 == 0x8000000000000000 && v30 == -1;
  if (v31)
  {
    goto LABEL_66;
  }

  v32 = v69 - a2;
  if (v69 - a2 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_67;
  }

  v76 = a1;
  v75 = a4;
  v34 = v32 / v30;
  if ((a2 - a1) / v30 >= v32 / v30)
  {
    v71 = v6;
    v67 = a1;
    v65 = v26;
    sub_100063708(a2, v32 / v30, a4, type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction);
    v68 = a4;
    v42 = a4 + v34 * v30;
    v43 = -v30;
    v44 = v42;
    v66 = -v30;
LABEL_38:
    v45 = a2 + v43;
    v46 = v69;
    v63 = v44;
    v47 = v44;
    while (1)
    {
      if (v42 <= v68)
      {
        v76 = a2;
        v74 = v47;
        goto LABEL_64;
      }

      if (a2 <= v67)
      {
        v76 = a2;
        v61 = v63;
        goto LABEL_63;
      }

      v64 = v47;
      v48 = a2;
      v49 = v66;
      v50 = v42 + v66;
      sub_1000617A8(v42 + v66, v17);
      v51 = v45;
      v52 = v17;
      v53 = v65;
      sub_1000617A8(v45, v65);
      v54 = v71;
      v55 = v72(v52, v53);
      v71 = v54;
      if (v54)
      {
        break;
      }

      v56 = v55;
      v57 = v46 + v49;
      sub_10006174C(v53);
      sub_10006174C(v52);
      v17 = v52;
      if (v56)
      {
        v59 = v46 < v48 || v57 >= v48;
        v69 = v57;
        if (v59)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v51;
          v44 = v64;
          v43 = v66;
        }

        else
        {
          v44 = v64;
          a2 = v51;
          v43 = v66;
          if (v46 != v48)
          {
            v60 = v64;
            swift_arrayInitWithTakeBackToFront();
            a2 = v51;
            v44 = v60;
          }
        }

        goto LABEL_38;
      }

      v58 = v46 < v42 || v57 >= v42;
      a2 = v48;
      if (v58)
      {
        swift_arrayInitWithTakeFrontToBack();
        v46 = v57;
        v42 = v50;
        v47 = v50;
        v45 = v51;
      }

      else
      {
        v47 = v50;
        v31 = v42 == v46;
        v46 = v57;
        v42 = v50;
        v45 = v51;
        if (!v31)
        {
          swift_arrayInitWithTakeBackToFront();
          v46 = v57;
          v42 = v50;
          v47 = v50;
        }
      }
    }

    sub_10006174C(v53);
    sub_10006174C(v52);
    v76 = v48;
    v61 = v64;
LABEL_63:
    v74 = v61;
  }

  else
  {
    sub_100063708(a1, (a2 - a1) / v30, a4, type metadata accessor for ASFinanceStoreHelper.AugmentedTransaction);
    v71 = a4 + (a2 - a1) / v30 * v30;
    v74 = v71;
    v35 = a4;
    while (v35 < v71 && a2 < v69)
    {
      sub_1000617A8(a2, v28);
      v37 = v35;
      sub_1000617A8(v35, v22);
      v38 = v72(v28, v22);
      if (v6)
      {
        sub_10006174C(v22);
        sub_10006174C(v28);
        break;
      }

      v39 = v38;
      sub_10006174C(v22);
      sub_10006174C(v28);
      if (v39)
      {
        if (a1 < a2 || a1 >= a2 + v30)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v30;
        v35 = v37;
      }

      else
      {
        v35 = v37 + v30;
        if (a1 < v37 || a1 >= v35)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v37)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v75 = v37 + v30;
      }

      a1 += v30;
      v76 = a1;
    }
  }

LABEL_64:
  sub_1000871F8(&v76, &v75, &v74);
  return 1;
}