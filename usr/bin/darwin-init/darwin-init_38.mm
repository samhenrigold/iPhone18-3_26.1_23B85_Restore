Swift::Int JSON.hashValue.getter()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002F58B0()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  JSON.hash(into:)(v2);
  return Hasher._finalize()();
}

void sub_1002F58F8(uint64_t a1)
{
  v29 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + 16 * (v9 | (v7 << 6)));
    v12 = *v10;
    v11 = v10[1];

    JSON.propertyListValue.getter();
    if (v13)
    {
      v28 = v13;
      v14 = v29;
      v15 = *(v29 + 2);
      if (*(v29 + 3) <= v15)
      {
        sub_100181DD8(v15 + 1, 1);
        v14 = &_swiftEmptyDictionarySingleton;
      }

      v29 = v14;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = v29 + 64;
      v18 = -1 << v29[32];
      v19 = v16 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v29[8 * (v19 >> 6) + 64]) == 0)
      {
        v23 = 0;
        v24 = (63 - v18) >> 6;
        v22 = v28;
        while (++v20 != v24 || (v23 & 1) == 0)
        {
          v25 = v20 == v24;
          if (v20 == v24)
          {
            v20 = 0;
          }

          v23 |= v25;
          v26 = *&v17[8 * v20];
          if (v26 != -1)
          {
            v21 = __clz(__rbit64(~v26)) + (v20 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*&v29[8 * (v19 >> 6) + 64])) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v28;
LABEL_23:
      *&v17[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
      v27 = (*(v29 + 6) + 16 * v21);
      *v27 = v12;
      v27[1] = v11;
      *(*(v29 + 7) + 8 * v21) = v22;
      ++*(v29 + 2);
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1002F5B70(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v31 = &_swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v7 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      *&v29[0] = *(*(a1 + 56) + 8 * v10);

      sub_1002F5E84(&v27);
      if (v28)
      {
        break;
      }

      sub_1001EDC44(&v27);
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    sub_1000279A4(&v27, v30);
    sub_1000279A4(v30, v29);
    v14 = v1[2];
    if (v1[3] <= v14)
    {
      sub_10005CE24(v14 + 1, 1);
      v1 = v31;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    v15 = Hasher._finalize()();
    v16 = (v1 + 8);
    v17 = -1 << *(v1 + 32);
    v18 = v15 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v1[(v18 >> 6) + 8]) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *&v16[8 * v19];
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~v1[(v18 >> 6) + 8])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *&v16[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
    v25 = (v1[6] + 16 * v20);
    *v25 = v13;
    v25[1] = v12;
    sub_1000279A4(v29, (v1[7] + 32 * v20));
    ++v1[2];
  }

  while (v5);
LABEL_7:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

Class JSON.dictionaryValue.getter()
{
  result = 0;
  if (*v0 >> 61 == 5)
  {

    sub_1002F5B70(v2);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return isa;
  }

  return result;
}

void sub_1002F5E84(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 2)
  {
    if (!v4)
    {
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      type metadata accessor for CFBoolean(0);
      goto LABEL_28;
    }

    if (v4 != 1)
    {
      isa = Double._bridgeToObjectiveC()().super.super.isa;
      type metadata accessor for CFNumber(0);
      goto LABEL_28;
    }

    if ((*((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 0x8000000000000000) != 0)
    {
      v8.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
    }

    else
    {
      v8.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    }

    v16 = v8.super.super.isa;
    type metadata accessor for CFNumber(0);
    *a1 = v16;
    *(a1 + 24) = v17;
  }

  else
  {
    if (v4 > 4)
    {
      if (v4 != 5)
      {
        *a1 = 0u;
        *(a1 + 16) = 0u;
        return;
      }

      sub_1002F5B70(v9);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      type metadata accessor for CFDictionary(0);
      goto LABEL_28;
    }

    v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    if (v4 == 3)
    {

      isa = String._bridgeToObjectiveC()();

      type metadata accessor for CFString(0);
LABEL_28:
      *(a1 + 24) = v7;
      *a1 = isa;
      return;
    }

    v10 = *(v5 + 16);
    v11 = *(v10 + 16);

    if (!v11)
    {
LABEL_27:

      isa = Array._bridgeToObjectiveC()().super.isa;

      type metadata accessor for CFArray(0);
      goto LABEL_28;
    }

    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    while (v12 < *(v10 + 16))
    {

      sub_1002F5E84(v20);
      v18 = v20[0];
      v19 = v20[1];

      if (*(&v19 + 1))
      {
        sub_1000279A4(&v18, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_10018D57C(0, *(v13 + 2) + 1, 1, v13);
        }

        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        if (v15 >= v14 >> 1)
        {
          v13 = sub_10018D57C((v14 > 1), v15 + 1, 1, v13);
        }

        *(v13 + 2) = v15 + 1;
        sub_1000279A4(v20, &v13[32 * v15 + 32]);
      }

      else
      {
        sub_1001EDC44(&v18);
      }

      if (v11 == ++v12)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }
}

void sub_1002F615C(uint64_t a1, Swift::Int a2)
{
  v59 = 2651;
  v60 = 0xE200000000000000;
  v4 = *(a1 + 16);
  v58 = _swiftEmptyArrayStorage;
  sub_10000DFF4(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    if (!__OFADD__(a2, 1))
    {
      v6 = a2;
      v7 = (a1 + 32);
      v53 = a2 + 1;
      v54 = a2;
      v50 = a2;
      v8 = __OFSUB__(a2 + 1, 1);
      v51 = v8;
      while (1)
      {
        v9 = *v7;
        v10._countAndFlagsBits = 8224;
        v10._object = 0xE200000000000000;
        v11 = String.init(repeating:count:)(v10, v6);
        v12 = v9 >> 61;
        v55 = v7 + 1;
        if ((v9 >> 61) <= 2)
        {
          if (!v12)
          {
            if (*(v9 + 16))
            {
              countAndFlagsBits = 1702195828;
            }

            else
            {
              countAndFlagsBits = 0x65736C6166;
            }

            if (*(v9 + 16))
            {
              object = 0xE400000000000000;
            }

            else
            {
              object = 0xE500000000000000;
            }

            goto LABEL_27;
          }

          if (v12 != 1)
          {
            v57._countAndFlagsBits = 0;
            v57._object = 0xE000000000000000;
            Double.write<A>(to:)();
LABEL_24:
            countAndFlagsBits = v57._countAndFlagsBits;
            object = v57._object;
            goto LABEL_27;
          }

          v17 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v57._countAndFlagsBits = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v57._object = v17;
          sub_1002F6DF0();
          countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
          object = v19;
        }

        else
        {
          if (v12 <= 4)
          {
            if (v12 != 3)
            {
              v57._countAndFlagsBits = v9;

              sub_1002F615C(v32, v53);
              countAndFlagsBits = v33;
              object = v34;

              goto LABEL_27;
            }

            v13 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v14 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            v57._countAndFlagsBits = 34;
            v57._object = 0xE100000000000000;

            v15._countAndFlagsBits = v13;
            v15._object = v14;
            String.append(_:)(v15);

            v16._countAndFlagsBits = 34;
            v16._object = 0xE100000000000000;
            String.append(_:)(v16);
            goto LABEL_24;
          }

          if (v12 == 5)
          {
            v52 = &v50;
            v21 = __chkstk_darwin(v11._countAndFlagsBits);
            __chkstk_darwin(v21);
            v57._countAndFlagsBits = 2683;
            v57._object = 0xE200000000000000;

            sub_1002F6E80(v22, sub_1002F6E4C);
            v56 = v23;
            sub_1000039E8(&qword_1004A6B48, &unk_100376810);
            sub_10004AF7C();
            v24 = BidirectionalCollection<>.joined(separator:)();
            v26 = v25;

            v27._countAndFlagsBits = v24;
            v27._object = v26;
            String.append(_:)(v27);

            v28._countAndFlagsBits = 10;
            v28._object = 0xE100000000000000;
            String.append(_:)(v28);
            if (v51)
            {
              __break(1u);
              goto LABEL_35;
            }

            v29._countAndFlagsBits = 8224;
            v29._object = 0xE200000000000000;
            v30 = String.init(repeating:count:)(v29, v50);
            String.append(_:)(v30);

            v31._countAndFlagsBits = 125;
            v31._object = 0xE100000000000000;
            String.append(_:)(v31);

            countAndFlagsBits = v57._countAndFlagsBits;
            object = v57._object;
          }

          else
          {
            object = 0xE400000000000000;
            countAndFlagsBits = 1819047278;
          }
        }

LABEL_27:
        v57 = v11;

        v35._countAndFlagsBits = countAndFlagsBits;
        v35._object = object;
        String.append(_:)(v35);

        v37 = v57._object;
        v36 = v57._countAndFlagsBits;
        v58 = v5;
        v39 = v5[2];
        v38 = v5[3];
        if (v39 >= v38 >> 1)
        {
          sub_10000DFF4((v38 > 1), v39 + 1, 1);
          v5 = v58;
        }

        v5[2] = v39 + 1;
        v40 = &v5[2 * v39];
        v40[4] = v36;
        v40[5] = v37;
        --v4;
        v6 = v54;
        v7 = v55;
        if (!v4)
        {
          goto LABEL_32;
        }
      }
    }
  }

  else
  {
    v6 = a2;
LABEL_32:
    v57._countAndFlagsBits = v5;
    v41 = v6;
    sub_1000039E8(&qword_1004A6B48, &unk_100376810);
    sub_10004AF7C();
    v42 = BidirectionalCollection<>.joined(separator:)();
    v44 = v43;

    v45._countAndFlagsBits = v42;
    v45._object = v44;
    String.append(_:)(v45);

    v46._countAndFlagsBits = 10;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    if (!__OFSUB__(v41, 1))
    {
      v47._countAndFlagsBits = 8224;
      v47._object = 0xE200000000000000;
      v48 = String.init(repeating:count:)(v47, v41 - 1);
      String.append(_:)(v48);

      v49._countAndFlagsBits = 93;
      v49._object = 0xE100000000000000;
      String.append(_:)(v49);
      return;
    }

LABEL_35:
    __break(1u);
  }

  __break(1u);
  __break(1u);
}

uint64_t sub_1002F660C(Swift::Int a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2 >> 61;
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        sub_1002F6DF0();
        return String.init<A>(_:radix:uppercase:)();
      }

      v18 = 0;
      Double.write<A>(to:)();
      return v18;
    }

    if (*(v3 + 16))
    {
      return 1702195828;
    }

    else
    {
      return 0x65736C6166;
    }
  }

  else
  {
    if (v4 <= 4)
    {
      if (v4 == 3)
      {
        v5 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
        v18 = 34;

        v8._countAndFlagsBits = v6;
        v8._object = v7;
        String.append(_:)(v8);

        v9._countAndFlagsBits = 34;
        v9._object = 0xE100000000000000;
        String.append(_:)(v9);
        return v18;
      }

      sub_1002F615C(v16, a1);
      goto LABEL_17;
    }

    if (v4 == 5)
    {

      sub_1002F67B4(v13, v12, a1);
LABEL_17:
      v17 = v14;

      return v17;
    }

    return 1819047278;
  }
}

void sub_1002F67B4(__n128 a1, uint64_t a2, uint64_t a3)
{
  sub_1002F6E80(a2, sub_1002F713C);
  sub_1000039E8(&qword_1004A6B48, &unk_100376810);
  sub_10004AF7C();
  v4 = BidirectionalCollection<>.joined(separator:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    v9._countAndFlagsBits = 8224;
    v9._object = 0xE200000000000000;
    v10 = String.init(repeating:count:)(v9, a3 - 1);
    String.append(_:)(v10);

    v11._countAndFlagsBits = 125;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
  }
}

Swift::Int sub_1002F68DC(uint64_t a1, void *a2, int a3, Swift::Int count)
{
  v7._countAndFlagsBits = 8224;
  v7._object = 0xE200000000000000;
  countAndFlagsBits = String.init(repeating:count:)(v7, count)._countAndFlagsBits;
  v9._countAndFlagsBits = a1;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 2112034;
  v10._object = 0xE300000000000000;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 34;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  result = count + 1;
  if (__OFADD__(count, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1002F660C(result, v12);
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);

    return countAndFlagsBits;
  }

  return result;
}

uint64_t _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a1 >> 61;
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 >> 61 == 1)
        {
          v11 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          return v11 & 1;
        }

        goto LABEL_35;
      }

      if (v4 >> 61 == 2 && *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_34;
      }
    }

    else if (!(v4 >> 61))
    {
      v11 = *(v3 + 16) ^ *(v4 + 16) ^ 1;
      return v11 & 1;
    }

LABEL_35:
    v11 = 0;
    return v11 & 1;
  }

  if (v5 > 4)
  {
    if (v5 == 5)
    {
      if (v4 >> 61 != 5)
      {
        goto LABEL_35;
      }

      v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v14 = sub_10024FCD8(v12, v13);
LABEL_31:
      v19 = v14;

      return v19 & 1;
    }

    if (v4 != 0xC000000000000000)
    {
      goto LABEL_35;
    }

LABEL_34:
    v11 = 1;
    return v11 & 1;
  }

  if (v5 != 3)
  {
    if (v4 >> 61 != 4)
    {
      goto LABEL_35;
    }

    v15 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v14 = sub_10024E060(v15, v16, v17, v18);
    goto LABEL_31;
  }

  if (v4 >> 61 != 3)
  {
    goto LABEL_35;
  }

  v6 = v3 & 0x1FFFFFFFFFFFFFFFLL;
  v7 = v4 & 0x1FFFFFFFFFFFFFFFLL;
  if (*(v6 + 16) == *(v7 + 16) && *(v6 + 24) == *(v7 + 24))
  {
    goto LABEL_34;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1002F6C10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002F6C48()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1002F6CB4()
{
  result = qword_1004B05F8;
  if (!qword_1004B05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B05F8);
  }

  return result;
}

uint64_t sub_1002F6D08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002F6D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1002F6DB4(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1002F6DF0()
{
  result = qword_1004B0600;
  if (!qword_1004B0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0600);
  }

  return result;
}

void sub_1002F6E80(uint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v2 = a1;
  v3 = *(a1 + 16);
  v42 = _swiftEmptyArrayStorage;
  sub_10000DFF4(0, v3, 0);
  v4 = v2 + 64;
  v5 = _swiftEmptyArrayStorage;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v2 + 64);
  v9 = (63 - v7) >> 6;
  v36 = v2;
  v34 = v3;
  if (v3)
  {

    v10 = 0;
    v3 = 0;
    while (v8)
    {
LABEL_10:
      v12 = __clz(__rbit64(v8)) | (v3 << 6);
      v13 = *(v2 + 56);
      v14 = (*(v2 + 48) + 16 * v12);
      v15 = v14[1];
      v16 = *(v13 + 8 * v12);
      v39 = *v14;
      v40 = v15;
      v41 = v16;

      v37 = a2(&v39);
      v18 = v17;

      v42 = v5;
      v20 = v5[2];
      v19 = v5[3];
      if (v20 >= v19 >> 1)
      {
        sub_10000DFF4((v19 > 1), v20 + 1, 1);
        v5 = v42;
      }

      ++v10;
      v8 &= v8 - 1;
      v5[2] = v20 + 1;
      v21 = &v5[2 * v20];
      v2 = v36;
      v21[4] = v37;
      v21[5] = v18;
      if (v10 == v34)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
        goto LABEL_27;
      }

      v8 = *(v4 + 8 * v11);
      ++v3;
      if (v8)
      {
        v3 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

LABEL_15:
    if (!v8)
    {
      goto LABEL_17;
    }

    do
    {
      v38 = v5;
LABEL_21:
      v23 = __clz(__rbit64(v8)) | (v3 << 6);
      v24 = *(v2 + 56);
      v25 = (*(v2 + 48) + 16 * v23);
      v26 = v25[1];
      v27 = *(v24 + 8 * v23);
      v39 = *v25;
      v40 = v26;
      v41 = v27;

      v28 = a2(&v39);
      v30 = v29;

      v5 = v38;
      v42 = v38;
      v32 = v38[2];
      v31 = v38[3];
      if (v32 >= v31 >> 1)
      {
        sub_10000DFF4((v31 > 1), v32 + 1, 1);
        v5 = v42;
      }

      v8 &= v8 - 1;
      v5[2] = v32 + 1;
      v33 = &v5[2 * v32];
      v33[4] = v28;
      v33[5] = v30;
      v2 = v36;
    }

    while (v8);
LABEL_17:
    while (1)
    {
      v22 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v22 >= v9)
      {

        return;
      }

      v8 = *(v4 + 8 * v22);
      ++v3;
      if (v8)
      {
        v38 = v5;
        v3 = v22;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
}

DarwinInit::DInitLogConfig::CodingKeys_optional __swiftcall DInitLogConfig.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489210, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_DInitLogConfig_CodingKeys_systemLoggingEnabled;
  }

  else
  {
    v4.value = DarwinInit_DInitLogConfig_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F71B8@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100489210, *a1);

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

uint64_t sub_1002F7218@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100489210, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1002F728C(uint64_t a1)
{
  v2 = sub_1002F79EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002F72C8(uint64_t a1)
{
  v2 = sub_1002F79EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002F731C@<X0>(_WORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1002F7830(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DInitLogConfig.encode(to:)(void *a1, __int16 a2)
{
  v3 = a2;
  v5 = sub_1000039E8(&qword_1004B0608, &qword_100406D30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000E2A8(a1, a1[3]);
  sub_1002F79EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = v3;
  v10[14] = 0;
  sub_100269610();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void DInitLogConfig.hash(into:)(uint64_t a1, unsigned int a2)
{
  v3 = BYTE1(a2);
  if (a2 != 3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (v3 != 2)
    {
      goto LABEL_3;
    }

LABEL_5:
    LOBYTE(v4) = 0;
    goto LABEL_6;
  }

  Hasher._combine(_:)(0);
  if (v3 == 2)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  v4 = (a2 >> 8) & 1;
LABEL_6:
  Hasher._combine(_:)(v4);
}

Swift::Int DInitLogConfig.hashValue.getter(unsigned int a1)
{
  Hasher.init(_seed:)();
  DInitLogConfig.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1002F762C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DInitLogConfig.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002F767C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DInitLogConfig.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t _s10DarwinInit14DInitLogConfigV2eeoiySbAC_ACtFZ_0(__int16 a1, __int16 a2)
{
  if (a1 == 3)
  {
    if (a2 != 3)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (a2 != 3)
  {
    v2 = 0xE700000000000000;
    v3 = 0x65746176697250;
    if (a1 != 1)
    {
      v3 = 0x76697469736E6553;
      v2 = 0xE900000000000065;
    }

    if (a1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x63696C627550;
    }

    if (a1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    v6 = 0xE700000000000000;
    v7 = 0x65746176697250;
    if (a2 != 1)
    {
      v7 = 0x76697469736E6553;
      v6 = 0xE900000000000065;
    }

    if (a2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x63696C627550;
    }

    if (a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    v10 = HIBYTE(a1);
    v11 = HIBYTE(a2);
    if (v4 == v8 && v5 == v9)
    {

      HIBYTE(a2) = v11;
      HIBYTE(a1) = v10;
      goto LABEL_25;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    HIBYTE(a2) = v11;
    HIBYTE(a1) = v10;
    if (v12)
    {
LABEL_25:
      if (HIBYTE(a1) == 2)
      {
        if (HIBYTE(a2) != 2)
        {
          return 0;
        }
      }

      else if (HIBYTE(a2) == 2 || ((HIBYTE(a2) ^ HIBYTE(a1)) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002F7830(void *a1)
{
  v3 = sub_1000039E8(&qword_1004B0648, &qword_100406FC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1002F79EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100003C3C(a1);
  }

  v10[14] = 0;
  sub_1002695BC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v7 = v10[15];
  v10[13] = 1;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100003C3C(a1);
  return v7 | (v8 << 8);
}

unint64_t sub_1002F79EC()
{
  result = qword_1004B0610;
  if (!qword_1004B0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0610);
  }

  return result;
}

unint64_t sub_1002F7A44()
{
  result = qword_1004B0618;
  if (!qword_1004B0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0618);
  }

  return result;
}

unint64_t sub_1002F7A9C()
{
  result = qword_1004B0620;
  if (!qword_1004B0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0620);
  }

  return result;
}

unint64_t sub_1002F7AF4()
{
  result = qword_1004B0628;
  if (!qword_1004B0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0628);
  }

  return result;
}

unint64_t sub_1002F7B4C()
{
  result = qword_1004B0630;
  if (!qword_1004B0630)
  {
    sub_100003A94(&qword_1004B0638, &qword_100406E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0630);
  }

  return result;
}

unint64_t sub_1002F7BB4()
{
  result = qword_1004B0640;
  if (!qword_1004B0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DInitLogConfig(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for DInitLogConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t *RealFileSystem.shared.unsafeMutableAddressor()
{
  if (qword_1004A9F90 != -1)
  {
    swift_once();
  }

  return &static RealFileSystem.shared;
}

uint64_t FileSystem.write(text:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 56))(a3, 1, 1536, 438, 1, a4, a5);
  if (!v5)
  {
    __chkstk_darwin(result);
    return FileDescriptor.closeAfter<A>(_:)();
  }

  return result;
}

FILE *sub_1002F7ECC(uint64_t a1, uint64_t a2, char *__filename)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__mode = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = __mode;
      return fopen(__filename, v4);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return fopen(__filename, v4);
    }
  }

  sub_1000039E8(&qword_1004B0650, &qword_100406FC8);
  result = _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return result;
}

BOOL sub_1002F8080(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 (*a4)(void))
{
  (*(a3 + 8))(v10, a1, a2);
  if (!v4)
  {
    v12[6] = v10[6];
    v12[7] = v10[7];
    v12[8] = v10[8];
    v13 = v11;
    v12[2] = v10[2];
    v12[3] = v10[3];
    v12[4] = v10[4];
    v12[5] = v10[5];
    v12[0] = v10[0];
    v12[1] = v10[1];
    if (sub_1002F90B8(v12) == 1)
    {
      return 0;
    }

    else
    {
      v7 = WORD2(v12[0]);
      v8 = S_IFMT.getter() & v7;
      return v8 == a4();
    }
  }

  return v6;
}

uint64_t FileSystem.touch(_:permissions:)(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a2;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000270B4(v13, qword_1004B00F8);
  v14 = *(v10 + 16);
  v36 = a1;
  v14(v12, a1, v9);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = a3;
    v37 = v19;
    *v18 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = a4;
    v22 = v21;
    (*(v10 + 8))(v12, v9);
    v23 = sub_1000026C0(v20, v22, &v37);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = v35;
    v25 = FilePermissions.description.getter();
    v27 = sub_1000026C0(v25, v26, &v37);
    a4 = v34;

    *(v18 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating file at %s with permissions %s", v18, 0x16u);
    swift_arrayDestroy();
    a3 = v32;

    v5 = v33;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v24 = v35;
  }

  result = (*(a4 + 56))(v36, 1, 512, v24, 1, a3, a4);
  if (!v5)
  {
    result = FileDescriptor._close()();
    if ((result & 0x100000000) != 0)
    {
      v38 = result;
      v29 = result;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v30 = v29;
    }
  }

  return result;
}

uint64_t FileSystem.truncate(_:at:permissions:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a4;
  v33 = a3;
  v10 = type metadata accessor for FilePath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000270B4(v14, qword_1004B00F8);
  v15 = *(v11 + 16);
  v30 = a1;
  v15(v13, a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = a5;
    v19 = v18;
    v27 = swift_slowAlloc();
    v32 = v27;
    *v19 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v5;
    v21 = a2;
    v23 = v22;
    (*(v11 + 8))(v13, v10);
    v24 = sub_1000026C0(v20, v23, &v32);
    a2 = v21;
    v6 = v28;

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    *(v19 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v16, v17, "Truncating file at %s at offset %llu", v19, 0x16u);
    sub_100003C3C(v27);

    a5 = v29;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  result = (*(a5 + 56))(v30, 1, 512, v33, 1, v31, a5);
  if (!v6)
  {
    *(&v26 - 4) = __chkstk_darwin(result);
    *(&v26 - 1) = a2;
    return FileDescriptor.closeAfter<A>(_:)();
  }

  return result;
}

uint64_t sub_1002F8804(uint64_t result, off_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    while (1)
    {
      result = ftruncate(v3, a2);
      if (result != -1)
      {
        break;
      }

      v4 = errno.getter();
      if (v4 != 4)
      {
        v5 = v4;
        sub_100187D3C();
        swift_willThrowTypedImpl();
        result = swift_allocError();
        *v6 = v5;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1002F8924(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      result = FileDescriptor._write(_:retryOnInterrupt:)();
      if ((v5 & 1) == 0)
      {
        return result;
      }

LABEL_17:
      v11 = result;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v12 = v11;
      return result;
    }

    goto LABEL_11;
  }

  if (v3 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, a1))
      {
        goto LABEL_20;
      }
    }

    if (!__OFSUB__(v7, v6))
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_11:
    v8 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v8, __DataStorage._offset.getter()))
      {
LABEL_14:
        __DataStorage._length.getter();
        result = FileDescriptor._write(_:retryOnInterrupt:)();
        if (v9)
        {
          goto LABEL_17;
        }

        return result;
      }

LABEL_21:
      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = FileDescriptor._write(_:retryOnInterrupt:)();
  if (v10)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t FileSystem.append(text:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 56))(a3, 1, 16777736, 438, 1, a4, a5);
  if (!v5)
  {
    __chkstk_darwin(result);
    return FileDescriptor.closeAfter<A>(_:)();
  }

  return result;
}

uint64_t FileSystem.readData(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 56))(a1, 0, 0x1000000, 438, 1, a2, a3);
  if (!v3)
  {
    __chkstk_darwin(result);
    FileDescriptor.closeAfter<A>(_:)();
    return v5;
  }

  return result;
}

uint64_t sub_1002F8CF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(&v12, 0, sizeof(v12));
  while (fstat(a1, &v12) == -1)
  {
    v5 = errno.getter();
    if (v5 != 4)
    {
      LODWORD(v13) = v5;
      v6 = v5;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v8 = v6;
      return result;
    }
  }

  v13 = sub_10018E100(v12.st_size);
  v14 = v9;
  sub_1002FA1AC(&v13, a1, v10);
  result = v13;
  v11 = v14;
  if (v2)
  {
    return sub_100031928(v13, v14);
  }

  *a2 = v13;
  a2[1] = v11;
  return result;
}

uint64_t FileSystem.readJson<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v11 = FileSystem.readData(from:)(a2, a3, a5);
  if (!v7)
  {
    v14 = v11;
    v15 = v12;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100031928(v14, v15);
  }
}

uint64_t FileSystem.readText(from:encoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = FileSystem.readData(from:)(a1, a3, a4);
  if (!v4)
  {
    v15 = v13;
    v16 = v14;
    (*(v10 + 16))(v12, a2, v9);
    v17 = String.init(data:encoding:)();
    if (v18)
    {
      a2 = v17;
    }

    else
    {
      sub_100187D3C();
      a2 = swift_allocError();
      *v20 = 22;
      swift_willThrow();
    }

    sub_100031928(v15, v16);
  }

  return a2;
}

uint64_t sub_1002F908C(uint64_t a1)
{
  type metadata accessor for RealFileSystem();
  result = swift_initStaticObject();
  static RealFileSystem.shared = result;
  return result;
}

uint64_t sub_1002F90B8(uint64_t a1)
{
  if (*(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t static RealFileSystem.shared.getter(uint64_t a1)
{
  type metadata accessor for RealFileSystem();

  return swift_initStaticObject();
}

void sub_1002F9104(uint64_t a1@<X8>)
{
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v17 = &v8;
  FilePath.withCString<A>(_:)();
  if (!v1)
  {
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v23 = v13;
    v18 = v8;
    v19 = v9;
    sub_1002FAB14(&v18);
    v34 = v24;
    v35 = v25;
    v36 = v26;
    v37 = v27;
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v28 = v18;
    v29 = v19;
    goto LABEL_6;
  }

  *&v18 = v1;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
  if ((swift_dynamicCast() & 1) != 0 && v7 == 2)
  {

    sub_1002FAAF0(&v28);
LABEL_6:
    v3 = v35;
    *(a1 + 96) = v34;
    *(a1 + 112) = v3;
    *(a1 + 128) = v36;
    *(a1 + 144) = v37;
    v4 = v31;
    *(a1 + 32) = v30;
    *(a1 + 48) = v4;
    v5 = v33;
    *(a1 + 64) = v32;
    *(a1 + 80) = v5;
    v6 = v29;
    *a1 = v28;
    *(a1 + 16) = v6;
  }
}

uint64_t sub_1002F92AC(char *a1, stat *a2)
{
  while (1)
  {
    result = stat(a1, a2);
    if (result != -1)
    {
      break;
    }

    v5 = errno.getter();
    if (v5 != 4)
    {
      v6 = v5;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v7 = v6;
      return result;
    }
  }

  return result;
}

uint64_t sub_1002F9410(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = v10;
    v12 = v11;
    v28 = swift_slowAlloc();
    v29 = v28;
    *v12 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v26 = v9;
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1000026C0(v13, v15, &v29);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    v17 = FilePermissions.description.getter();
    v19 = sub_1000026C0(v17, v18, &v29);

    *(v12 + 14) = v19;
    v20 = v26;
    _os_log_impl(&_mh_execute_header, v26, v27, "Creating directory at %s with permissions %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v21 = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    __chkstk_darwin(v21);
    *(&v25 - 8) = v2;
    result = FilePath.withCString<A>(_:)();
    if (v29 != -1)
    {
      break;
    }

    v21 = errno.getter();
    if (v21 != 4)
    {
      LODWORD(v29) = v21;
      v23 = v21;
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v24 = v23;
      return result;
    }
  }

  return result;
}

uint64_t sub_1002F97C0(uint64_t a1, unsigned int a2, int a3, int a4, char a5)
{
  v6 = v5;
  v36 = a2;
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000270B4(v15, qword_1004B00F8);
  (*(v12 + 16))(v14, a1, v11);
  v16 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v34))
  {
    v17 = swift_slowAlloc();
    v33 = a1;
    v18 = v17;
    v31 = swift_slowAlloc();
    v35 = v31;
    *v18 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v30 = v16;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = a3;
    v21 = v20;
    (*(v12 + 8))(v14, v11);
    v22 = sub_1000026C0(v19, v21, &v35);
    v6 = v5;
    a3 = v32;

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = v36;
    v24 = FileDescriptor.AccessMode.description.getter();
    v26 = sub_1000026C0(v24, v25, &v35);

    *(v18 + 14) = v26;
    v27 = v30;
    _os_log_impl(&_mh_execute_header, v30, v34, "Opening FileDescriptor at %s, mode: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v28 = (*(v12 + 8))(v14, v11);
    v23 = v36;
  }

  __chkstk_darwin(v28);
  LODWORD((&v30)[-2]) = v23;
  HIDWORD((&v30)[-2]) = a3;
  LOWORD((&v30)[-1]) = a4;
  BYTE2((&v30)[-1]) = BYTE2(a4) & 1;
  BYTE3((&v30)[-1]) = a5 & 1;
  result = FilePath.withCString<A>(_:)();
  if (!v6)
  {
    return v37;
  }

  return result;
}

uint64_t sub_1002F9B34(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v33 = a2;
  v5 = type metadata accessor for POSIXError();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000270B4(v11, qword_1004B00F8);
  v12 = *(v8 + 16);
  v34 = a1;
  v12(v10, a1, v7);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v14;
    v16 = v15;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v16 = 136315394;
    sub_1002FB0D0(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v5;
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_1000026C0(v17, v20, &v35);
    v5 = v18;

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = v33;
    *(v16 + 14) = sub_1000026C0(v33, a3, &v35);
    _os_log_impl(&_mh_execute_header, v13, v29, "Opening FILE at %s, mode: %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = (*(v8 + 8))(v10, v7);
    v22 = v33;
  }

  __chkstk_darwin(v23);
  *&v28[-16] = v22;
  *&v28[-8] = a3;
  sub_1000039E8(&qword_1004B0650, &qword_100406FC8);
  FilePath.withCString<A>(_:)();
  result = v35;
  if (!v35)
  {
    errno.getter();
    v25 = POSIXErrorCode.init(rawValue:)();
    if ((v25 & &_mh_execute_header) != 0)
    {
      v26 = 5;
    }

    else
    {
      v26 = v25;
    }

    LODWORD(v35) = v26;
    sub_1002FAB80(_swiftEmptyArrayStorage);
    sub_1002FB0D0(&qword_1004B0658, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
    v27 = v31;
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v32 + 8))(v27, v5);
    return swift_willThrow();
  }

  return result;
}

double sub_1002F9FA4@<D0>(uint64_t a1@<X8>)
{
  (*(**v1 + 80))(v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v10;
    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    v7 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
  }

  return result;
}

uint64_t sub_1002FA1AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {

      sub_100031928(v7, v6);
      *a1 = xmmword_1003780A0;
      sub_100031928(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      result = sub_1002FA59C(*(v7 + 16), *(v7 + 24), v13, a2);
      *a1 = v7;
      a1[1] = v13 | 0x8000000000000000;
    }

    else
    {
      result = FileDescriptor._read(into:retryOnInterrupt:)();
      if (!v3 && (v16 & 1) != 0)
      {
        v17 = result;
        sub_100187D3C();
        swift_willThrowTypedImpl();
        result = swift_allocError();
        *v18 = v17;
      }
    }

    return result;
  }

  if (v8)
  {
    v14 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_100031928(v7, v6);
    *a1 = xmmword_1003780A0;
    sub_100031928(0, 0xC000000000000000);
    v15 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v15 < v7)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_25:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v19 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v14 = v19;
    }

    if (v15 >= v7)
    {

      v20 = sub_1002FA59C(v7, v7 >> 32, v14, a2);

      *a1 = v7;
      a1[1] = v14 | 0x4000000000000000;
      if (!v3)
      {
        return v20;
      }

      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_100031928(v7, v6);
  LOWORD(v21) = v6;
  BYTE2(v21) = BYTE2(v6);
  HIBYTE(v21) = BYTE3(v6);
  LOBYTE(v22) = BYTE4(v6);
  HIBYTE(v22) = BYTE5(v6);
  result = FileDescriptor._read(into:retryOnInterrupt:)();
  if (v3)
  {
LABEL_6:
    *a1 = v7;
    a1[1] = v21 | ((v22 | (BYTE6(v6) << 16)) << 32);
    return result;
  }

  if (v10)
  {
    v11 = result;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v12 = v11;
    goto LABEL_6;
  }

  *a1 = v7;
  a1[1] = v21 | ((v22 | (BYTE6(v6) << 16)) << 32);
  return result;
}

uint64_t sub_1002FA59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_10;
  }

  result = __DataStorage._offset.getter();
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = FileDescriptor._read(into:retryOnInterrupt:)();
  if (!v4 && (v8 & 1) != 0)
  {
    v9 = result;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    swift_allocError();
    result = v9;
    *v10 = v9;
  }

  return result;
}

uint64_t sub_1002FA684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v25 = a5;
  v27 = a1;
  v28 = a4;
  v23 = a2;
  v24 = a3;
  v26 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v9);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000039E8(&qword_1004A84E0, &qword_100378BD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100376F00;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  static JSONEncoder.OutputFormatting.withoutEscapingSlashes.getter();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  v32[0] = v10;
  sub_1002FB0D0(&qword_1004A84E8, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_1000039E8(&qword_1004A84F0, qword_10037ACF0);
  sub_1001EF720();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  if (qword_1004A9E60 != -1)
  {
    swift_once();
  }

  v11 = v26;
  v12 = sub_1000270B4(v26, static CredentialString.redactionOverrideKey);
  (*(v6 + 16))(v8, v12, v11);
  v32[3] = &type metadata for Bool;
  LOBYTE(v32[0]) = 1;
  v13 = dispatch thunk of JSONEncoder.userInfo.modify();
  sub_1001C9DC8(v32, v8);
  v13(v31, 0);
  v14 = v30;
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v14)
  {
  }

  v17 = v15;
  v18 = v16;
  v19 = (*(v25 + 56))(v23, 1, 1536, 438, 1, v24);
  v20 = __chkstk_darwin(v19);
  *(&v22 - 4) = v17;
  *(&v22 - 3) = v18;
  *(&v22 - 4) = v20;
  FileDescriptor.closeAfter<A>(_:)();

  return sub_100031928(v17, v18);
}

double sub_1002FAAF0(uint64_t a1)
{
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 1;
  return result;
}

uint64_t sub_1002FAB1C@<X0>(const char *a1@<X0>, _DWORD *a2@<X8>)
{
  result = mkdir(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

FILE *sub_1002FAB50@<X0>(char *__filename@<X0>, FILE **a2@<X8>)
{
  result = sub_1002F7ECC(*(v2 + 16), *(v2 + 24), __filename);
  *a2 = result;
  return result;
}

unint64_t sub_1002FAB80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000039E8(&qword_1004A7CD0, &unk_1003F3E00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1002FB028(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100013364(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000279A4(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1002FB028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A7A98, &qword_100377318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

FILE *sub_1002FB098@<X0>(char *__mode@<X0>, FILE **a2@<X8>)
{
  result = fopen(*(v2 + 16), __mode);
  *a2 = result;
  return result;
}

uint64_t sub_1002FB0D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TemporaryDirectory.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static TemporaryDirectory.defaultTempDir.getter()
{
  v0 = swift_slowAlloc();
  if (confstr(65537, v0, 0x400uLL))
  {
    FilePath.init(platformString:)();
  }

  else
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000270B4(v1, qword_1004B00F8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      v6 = errno.getter();
      sub_100187D3C();
      swift_allocError();
      *v7 = v6;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v8;
      *v5 = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "confstr error: %@", v4, 0xCu);
      sub_100013F2C(v5, &qword_1004AA050, &unk_1003F2F10);
    }

    FilePath.init(stringLiteral:)();
  }
}

uint64_t static TemporaryDirectory.mkdtemp(at:prefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a2;
  v70 = a3;
  v62 = a4;
  v5 = type metadata accessor for UUID();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v66 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilePath();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = __chkstk_darwin(v7);
  v61 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v54 - v10;
  v12 = sub_1000039E8(&qword_1004B0748, &qword_100407028);
  __chkstk_darwin(v12 - 8);
  v14 = v54 - v13;
  v15 = type metadata accessor for FilePath.Component();
  v63 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v54 - v19;
  v21 = type metadata accessor for String.Encoding();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0x10000000000000;
  v72 = 16842752;
  v25 = v75;
  result = FilePath.withCString<A>(_:)();
  if (v25)
  {
    return result;
  }

  v55 = v20;
  v56 = v18;
  v57 = v14;
  v58 = v15;
  v59 = a1;
  v60 = 0;
  v75 = v11;
  v27 = v68;
  v28 = v69;
  v29 = v73;
  v30 = v70;
  v73 = v69;
  v74 = v70;

  v31._countAndFlagsBits = 0x5858585858582ELL;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  static String.Encoding.utf8.getter();
  sub_10000B080();
  v32 = StringProtocol.cString(using:)();
  (*(v22 + 8))(v24, v21);

  if (!v32)
  {
    sub_100187D3C();
    swift_allocError();
    *v50 = 22;
    swift_willThrow();
    result = FileDescriptor._close()();
    if ((result & 0x100000000) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v33 = v28;
  v34 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_10018D68C(0, *(v32 + 16), 0, v32);
  }

  v35 = mkdtempat_np(v29, (v32 + 32));
  v36 = v29;
  v37 = v66;
  v38 = v67;
  v39 = v75;
  if (!v35)
  {

    v51 = errno.getter();
    sub_100187D3C();
    swift_allocError();
    *v52 = v51;
    swift_willThrow();
    result = FileDescriptor._close()();
    if ((result & 0x100000000) == 0)
    {
      return result;
    }

LABEL_10:
    LODWORD(v73) = result;
    return swift_willThrowTypedImpl();
  }

  v40 = v27;
  v54[3] = v36;
  v41 = v32;
  v42 = v57;
  sub_1002FBAA0(v41, v57);
  v43 = v63;
  v44 = v58;
  if ((*(v63 + 48))(v42, 1, v58) == 1)
  {
    sub_100013F2C(v42, &qword_1004B0748, &qword_100407028);
    v45 = v64;
    (*(v64 + 16))(v39, v59, v65);
    v73 = v33;
    v74 = v34;

    v46._countAndFlagsBits = 46;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    UUID.init()();
    sub_1002A3494(&qword_1004AA848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v47);

    (*(v38 + 8))(v37, v40);
    v48 = v61;
    FilePath.appending(_:)();
    v49 = v60;
    FilePath.createDirectory(permissions:intermediateDirectories:)(511, 0);
    if (v49)
    {
      (*(v45 + 8))(v48, v65);
    }

    else
    {
      (*(v45 + 32))(v62, v48, v65);
    }

    result = FileDescriptor._close()();
    if ((result & 0x100000000) != 0)
    {
      LODWORD(v73) = result;
      sub_100187D3C();
      return swift_willThrowTypedImpl();
    }
  }

  else
  {
    v53 = v55;
    (*(v43 + 32))(v55, v42, v44);
    (*(v64 + 16))(v39, v59, v65);
    (*(v43 + 16))(v56, v53, v44);
    FilePath.appending(_:)();
    (*(v43 + 8))(v53, v44);
    result = FileDescriptor._close()();
    if ((result & 0x100000000) != 0)
    {
      LODWORD(v73) = result;
      sub_100187D3C();
      return swift_willThrowTypedImpl();
    }
  }

  return result;
}

uint64_t sub_1002FBAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000039E8(&qword_1004B0748, &qword_100407028);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    while (*v8++)
    {
      if (!--v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  FilePath.Component.init(platformString:)();

  v10 = type metadata accessor for FilePath.Component();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_100013F2C(v6, &qword_1004B0748, &qword_100407028);
    v12 = 1;
  }

  else
  {
    (*(v11 + 32))(a2, v6, v10);
    v12 = 0;
  }

  return (*(v11 + 56))(a2, v12, 1, v10);
}

uint64_t TemporaryDirectory.init(at:prefix:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + *(type metadata accessor for TemporaryDirectory(0) + 20)) = 0;
  static TemporaryDirectory.mkdtemp(at:prefix:)(a1, a2, a3, v12);
  (*(v10 + 8))(a1, v9);
  if (v4)
  {
  }

  return (*(v10 + 32))(a4, v12, v9);
}

Swift::Void __swiftcall TemporaryDirectory.cleanup()()
{
  v1 = *(type metadata accessor for TemporaryDirectory(0) + 20);
  if ((*(v0 + v1) & 1) == 0)
  {
    sub_1002FBDF4();
    *(v0 + v1) = 1;
  }
}

void sub_1002FBDF4()
{
  v43 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v43 - 8);
  __chkstk_darwin(v43);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000039E8(&qword_1004A6D30, &unk_100376820);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002A3494(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v44 = v15;
  (*(v5 + 16))(v7, v0, v4);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v43);
  v16 = v7;
  v17 = v12;
  sub_1001746A8(v16, v3, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100013F2C(v10, &qword_1004A6D30, &unk_100376820);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v18 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v45 = 0;
    v22 = [v18 removeItemAtURL:v20 error:&v45];

    if (v22)
    {
      v23 = qword_1004A9F20;
      v24 = v45;
      v25 = v44;
      if (v23 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_1000270B4(v26, qword_1004B00F8);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v45 = v30;
        *v29 = 136315138;
        v31 = sub_1000026C0(v42, v25, &v45);

        *(v29 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "cleaned up temporary directory at: %s", v29, 0xCu);
        sub_100003C3C(v30);
      }

      else
      {
      }

      (*(v17 + 8))(v14, v11);
    }

    else
    {
      v32 = v45;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v17 + 8))(v14, v11);
      v33 = v44;
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000270B4(v34, qword_1004B00F8);

      swift_errorRetain();
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v37 = 136315394;
        v40 = sub_1000026C0(v42, v33, &v45);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2112;
        swift_errorRetain();
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v41;
        *v38 = v41;
        _os_log_impl(&_mh_execute_header, v35, v36, "failed to cleanup temporary directory at %s: %@", v37, 0x16u);
        sub_100013F2C(v38, &qword_1004AA050, &unk_1003F2F10);

        sub_100003C3C(v39);
      }

      else
      {
      }
    }
  }
}

uint64_t TemporaryDirectory.deinit()
{
  if ((*(v0 + *(type metadata accessor for TemporaryDirectory(0) + 20)) & 1) == 0)
  {
    sub_1002FBDF4();
  }

  v1 = type metadata accessor for FilePath();
  v2 = *(*(v1 - 8) + 8);

  return v2(v0, v1);
}

uint64_t type metadata accessor for TemporaryDirectory(uint64_t a1)
{
  result = qword_1004B07A8;
  if (!qword_1004B07A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002FC5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FC650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1002FC6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1002FC7C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FilePath();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1002FC878(uint64_t a1)
{
  result = type metadata accessor for FilePath();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t static LDAP.query(from:recordDN:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_1002FC934, 0, 0);
}

uint64_t sub_1002FC934()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = sub_1000039E8(&qword_1004B07E0, &unk_1003788C0);
  *v4 = v0;
  v4[1] = sub_1002FCA54;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000020, 0x800000010043DE50, sub_10019AC68, v2, v5);
}

uint64_t sub_1002FCA54()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1002FCB8C;
  }

  else
  {

    v2 = sub_1002FCB70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002FCB8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002FCBF0()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static LDAP.logger);
  v1 = sub_1000270B4(v0, static LDAP.logger);
  if (qword_1004A9F60 != -1)
  {
    swift_once();
  }

  v2 = sub_1000270B4(v0, static Logger.ldap);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LDAP.logger.unsafeMutableAddressor()
{
  if (qword_1004A9F98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static LDAP.logger);
}

uint64_t static LDAP.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9F98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static LDAP.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_1002FCDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v23 = a6;
  v8 = sub_1000039E8(&qword_1004B07E8, &unk_1004070E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = ldap_connection_create_with_hostname();

  if (v14)
  {
    (*(v9 + 16))(v12, a1, v8);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v15, v12, v8);
    *(v18 + v16) = v14;
    v19 = (v18 + v17);
    v20 = v23;
    *v19 = v22;
    v19[1] = a5;
    *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;
    aBlock[4] = sub_1002FD980;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002FDC34;
    aBlock[3] = &unk_100493D70;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    ldap_connection_start();
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002FD020(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000039E8(&qword_1004B07E8, &unk_1004070E0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - v10;
  if (a3)
  {
    if (qword_1004A9F98 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000270B4(v12, static LDAP.logger);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to start LDAP connection: %d", v15, 8u);
    }

    sub_1002FDA74();
    v16 = swift_allocError();
    *v17 = a3;
    *(v17 + 4) = 0;
    aBlock[0] = v16;
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v18 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(v9 + 16))(v11, a4, v8);
    v20 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    (*(v9 + 32))(v21 + v20, v11, v8);
    aBlock[4] = sub_1002FDB98;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002FDC34;
    aBlock[3] = &unk_100493DC0;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    ldap_connection_retrieve_record();
    _Block_release(v22);
    swift_unknownObjectRelease();
  }
}

void sub_1002FD334(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  ldap_connection_disconnect();
  if (a3)
  {
    if (qword_1004A9F98 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000270B4(v6, static LDAP.logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to retrieve record from LDAP connection: %d", v9, 8u);
    }

    sub_1002FDA74();
    swift_allocError();
    *v10 = a3;
    *(v10 + 4) = 0;
LABEL_7:
    sub_1000039E8(&qword_1004B07E8, &unk_1004070E0);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (qword_1004A9F98 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000270B4(v11, static LDAP.logger);
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = a2;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "Retrieved records:\n%@", v15, 0xCu);
    sub_10019AC78(v16);
  }

  if (!a2)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Result record is nil", v20, 2u);
    }

    sub_1002FDA74();
    swift_allocError();
    *v21 = 0;
    *(v21 + 4) = 1;
    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  else
  {
    v22 = v12;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Result record isn't a dictionary", v25, 2u);
  }

  sub_1002FDA74();
  swift_allocError();
  *v26 = 0;
  *(v26 + 4) = 1;
  sub_1000039E8(&qword_1004B07E8, &unk_1004070E0);
  CheckedContinuation.resume(throwing:)();
}

uint64_t sub_1002FD778(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v8 = a3;
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for LDAPError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for LDAPError(uint64_t result, int a2, int a3)
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

uint64_t sub_1002FD860(uint64_t a1)
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

uint64_t sub_1002FD87C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1002FD8AC()
{
  v1 = sub_1000039E8(&qword_1004B07E8, &unk_1004070E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1002FD980(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(sub_1000039E8(&qword_1004B07E8, &unk_1004070E0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1002FD020(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1002FDA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;
}

unint64_t sub_1002FDA74()
{
  result = qword_1004B0850;
  if (!qword_1004B0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0850);
  }

  return result;
}

uint64_t sub_1002FDAC8()
{
  v1 = sub_1000039E8(&qword_1004B07E8, &unk_1004070E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002FDB98(uint64_t a1, void *a2, int a3)
{
  sub_1000039E8(&qword_1004B07E8, &unk_1004070E0);
  v7 = *(v3 + 16);

  sub_1002FD334(a1, a2, a3, v7);
}

void FilePath.readArchiveMagic()()
{
  v2 = v0;
  v65 = type metadata accessor for FilePath();
  v3 = *(v65 - 8);
  v4 = __chkstk_darwin(v65);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v60 - v8;
  __chkstk_darwin(v7);
  v11 = &v60 - v10;
  FilePath.description.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() fileHandleForReadingAtPath:v12];

  if (v13)
  {
    v14 = NSFileHandle.read(upToCount:)();
    if (v1)
    {
LABEL_5:

      return;
    }

    v16 = v15;
    if (v15 >> 60 == 15)
    {
      sub_100187D3C();
      swift_allocError();
      *v17 = 5;
      swift_willThrow();
      goto LABEL_5;
    }

    v19 = v14;
    v20 = sub_10030537C(&off_100484C10, v14, v15);
    v64 = v19;
    if (v20)
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_1000270B4(v21, qword_1004B00F8);
      v22 = v3;
      v23 = *(v3 + 16);
      v24 = v65;
      v23(v11, v2, v65);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v62 = v27;
        v63 = swift_slowAlloc();
        v66 = v63;
        *v27 = 136315138;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v22;
        v31 = v30;
        (*(v29 + 8))(v11, v24);
        v32 = sub_1000026C0(v28, v31, &v66);

        v33 = v62;
        *(v62 + 1) = v32;
        _os_log_impl(&_mh_execute_header, v25, v26, "Apple Encrypted Archive detected at %s", v33, 0xCu);
        sub_100003C3C(v63);

        sub_100031914(v64, v16);
      }

      else
      {
        sub_100031914(v64, v16);

        (*(v22 + 8))(v11, v24);
      }
    }

    else if (sub_10030537C(&off_100484C38, v19, v16))
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000270B4(v34, qword_1004B00F8);
      v35 = v3;
      v36 = *(v3 + 16);
      v37 = v65;
      v36(v9, v2, v65);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v62 = v40;
        v63 = swift_slowAlloc();
        v66 = v63;
        *v40 = 136315138;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
        v61 = v38;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*(v35 + 8))(v9, v37);
        v44 = sub_1000026C0(v41, v43, &v66);

        v46 = v61;
        v45 = v62;
        *(v62 + 1) = v44;
        _os_log_impl(&_mh_execute_header, v46, v39, "Uncompressed Apple Archive detected at %s", v45, 0xCu);
        sub_100003C3C(v63);

        sub_100031914(v64, v16);
      }

      else
      {
        sub_100031914(v64, v16);

        (*(v35 + 8))(v9, v37);
      }
    }

    else
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_1000270B4(v47, qword_1004B00F8);
      v48 = v3;
      v49 = *(v3 + 16);
      v50 = v65;
      v49(v6, v2, v65);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v62 = v53;
        v63 = swift_slowAlloc();
        v66 = v63;
        *v53 = 136315138;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
        v61 = v51;
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        (*(v48 + 8))(v6, v50);
        v57 = sub_1000026C0(v54, v56, &v66);

        v59 = v61;
        v58 = v62;
        *(v62 + 1) = v57;
        _os_log_impl(&_mh_execute_header, v59, v52, "No known archive magic in file at %s", v58, 0xCu);
        sub_100003C3C(v63);

        sub_100031914(v64, v16);
      }

      else
      {
        sub_100031914(v64, v16);

        (*(v48 + 8))(v6, v50);
      }
    }
  }

  else
  {
    sub_100187D3C();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
  }
}

uint64_t FilePath.wrapFileContentsInAppleEncryptedArchive(at:using:permissions:compression:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v112 = a2;
  LODWORD(v110) = a4;
  LODWORD(v102) = a3;
  v5 = type metadata accessor for ArchiveFlags();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v99 = &v90[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ArchiveCompression();
  __chkstk_darwin(v7 - 8);
  v109 = &v90[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ArchiveEncryptionContext.Profile();
  __chkstk_darwin(v9 - 8);
  v108 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v97 = &v90[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v95 = &v90[-v16];
  v17 = __chkstk_darwin(v15);
  v98 = &v90[-v18];
  v19 = __chkstk_darwin(v17);
  v96 = &v90[-v20];
  v21 = __chkstk_darwin(v19);
  v23 = &v90[-v22];
  v24 = __chkstk_darwin(v21);
  v26 = &v90[-v25];
  __chkstk_darwin(v24);
  v28 = &v90[-v27];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v30 = sub_1000270B4(v29, qword_1004B00F8);
  v31 = *(v12 + 16);
  v31(v28, v113, v11);
  v107 = a1;
  v103 = v31;
  v104 = v12 + 16;
  v31(v26, a1, v11);
  v105 = v30;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v106 = v12;
  v94 = v23;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v114 = v93;
    *v35 = 136315394;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v92 = v32;
    v91 = v33;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v11;
    v39 = v38;
    v40 = *(v12 + 8);
    v40(v28, v37);
    v41 = sub_1000026C0(v36, v39, &v114);
    v11 = v37;

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v40(v26, v37);
    v45 = v40;
    v46 = sub_1000026C0(v42, v44, &v114);

    *(v35 + 14) = v46;
    v47 = v92;
    _os_log_impl(&_mh_execute_header, v92, v91, "Wrapping the contents of file at %s in Apple Encrypted Archive at %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v45 = *(v12 + 8);
    v45(v26, v11);
    v45(v28, v11);
  }

  static ArchiveEncryptionContext.Profile.hkdf_sha256_aesctr_hmac__symmetric__none.getter();
  if (v110)
  {
    static ArchiveCompression.lzfse.getter();
  }

  else
  {
    static ArchiveCompression.none.getter();
  }

  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();
  v48 = ArchiveEncryptionContext.init(profile:compressionAlgorithm:compressionBlockSize:)();
  v49 = v111;
  v112 = v48;
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  if (!v49)
  {
    v111 = v45;
    v51 = v11;
    type metadata accessor for ArchiveByteStream();
    v110 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
    if (v110)
    {
      v52 = v107;
      v53 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
      if (v53)
      {
        v114 = _swiftEmptyArrayStorage;
        v54 = v53;
        sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
        sub_1000039E8(&qword_1004A6FA0, &qword_100376B60);
        sub_1003063B0();
        v55 = v99;
        v56 = v101;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v109 = v54;
        v57 = static ArchiveByteStream.encryptionStream(writingTo:encryptionContext:flags:threadCount:)();
        (*(v100 + 8))(v55, v56);
        if (!v57)
        {
          v77 = v94;
          v103(v94, v107, v11);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v114 = v81;
            *v80 = 136446210;
            sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
            v82 = dispatch thunk of CustomStringConvertible.description.getter();
            v84 = v83;
            v111(v77, v51);
            v85 = sub_1000026C0(v82, v84, &v114);

            *(v80 + 4) = v85;
            _os_log_impl(&_mh_execute_header, v78, v79, "Failed to open encryption stream for %{public}s", v80, 0xCu);
            sub_100003C3C(v81);
          }

          else
          {

            v111(v77, v11);
          }

          sub_10030635C();
          swift_allocError();
          *v88 = 0;
          swift_willThrow();
          v89 = v113;
          sub_100302D30(v109, v113, &dispatch thunk of ArchiveByteStream.close(), "Failed to close output file stream to %{public}s: %{public}@");

          sub_100302D30(v110, v89, &dispatch thunk of ArchiveByteStream.close(), "Failed to close input file stream for %{public}s: %{public}@");
        }

        static ArchiveByteStream.process(readingFrom:writingTo:)();
        sub_100302D30(v57, v107, &dispatch thunk of ArchiveByteStream.close(), "Failed to close encryption stream for %{public}s: %{public}@");

        v87 = v113;
        sub_100302D30(v109, v113, &dispatch thunk of ArchiveByteStream.close(), "Failed to close output file stream to %{public}s: %{public}@");

        sub_100302D30(v110, v87, &dispatch thunk of ArchiveByteStream.close(), "Failed to close input file stream for %{public}s: %{public}@");
      }

      else
      {
        v67 = v96;
        v103(v96, v52, v11);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v114 = v71;
          *v70 = 136446210;
          sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
          v72 = dispatch thunk of CustomStringConvertible.description.getter();
          v74 = v73;
          v111(v67, v51);
          v75 = sub_1000026C0(v72, v74, &v114);

          *(v70 + 4) = v75;
          _os_log_impl(&_mh_execute_header, v68, v69, "Failed to open output file stream to %{public}s", v70, 0xCu);
          sub_100003C3C(v71);
        }

        else
        {

          v111(v67, v11);
        }

        sub_10030635C();
        swift_allocError();
        *v86 = 0;
        swift_willThrow();
        sub_100302D30(v110, v113, &dispatch thunk of ArchiveByteStream.close(), "Failed to close input file stream for %{public}s: %{public}@");
      }
    }

    v58 = v98;
    v103(v98, v113, v11);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v114 = v62;
      *v61 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v111(v58, v51);
      v66 = sub_1000026C0(v63, v65, &v114);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Failed to open input file stream for %{public}s", v61, 0xCu);
      sub_100003C3C(v62);
    }

    else
    {

      v111(v58, v11);
    }

    sub_10030635C();
    swift_allocError();
    *v76 = 0;
    swift_willThrow();
  }
}

uint64_t FilePath.extractAppleEncryptedArchive(to:using:expectingArchiveIdentifier:mode:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v207 = a5;
  v202 = a2;
  v192 = type metadata accessor for ArchiveCompression();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v182[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ArchiveFlags();
  v196 = *(v9 - 8);
  v197 = v9;
  __chkstk_darwin(v9);
  v195 = &v182[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v189 = &v182[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v182[-v16];
  v18 = __chkstk_darwin(v15);
  v200 = &v182[-v19];
  v20 = __chkstk_darwin(v18);
  v201 = &v182[-v21];
  v22 = __chkstk_darwin(v20);
  v199 = &v182[-v23];
  v24 = __chkstk_darwin(v22);
  v193 = &v182[-v25];
  v26 = __chkstk_darwin(v24);
  v187 = &v182[-v27];
  v28 = __chkstk_darwin(v26);
  v198 = &v182[-v29];
  v30 = __chkstk_darwin(v28);
  v206 = &v182[-v31];
  v32 = __chkstk_darwin(v30);
  v204 = &v182[-v33];
  v34 = __chkstk_darwin(v32);
  v36 = &v182[-v35];
  __chkstk_darwin(v34);
  v38 = &v182[-v37];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v188 = v17;
  v194 = a3;
  v39 = type metadata accessor for Logger();
  v40 = sub_1000270B4(v39, qword_1004B00F8);
  v41 = *(v12 + 16);
  v41(v38, v212, v11);
  v208 = v41;
  v209 = v12 + 16;
  v41(v36, a1, v11);
  v211 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  v44 = os_log_type_enabled(v42, v43);
  v210 = v12;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v184 = v42;
    v46 = v45;
    v185 = swift_slowAlloc();
    v213 = v185;
    *v46 = 136446466;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v203 = a1;
    v183 = v43;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v186 = a4;
    v49 = v48;
    v50 = *(v12 + 8);
    v50(v38, v11);
    v51 = sub_1000026C0(v47, v49, &v213);
    a4 = v186;

    *(v46 + 4) = v51;
    *(v46 + 12) = 2082;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    v50(v36, v11);
    v55 = sub_1000026C0(v52, v54, &v213);
    a1 = v203;

    *(v46 + 14) = v55;
    v56 = v184;
    _os_log_impl(&_mh_execute_header, v184, v183, "Extracting Apple Encrypted Archive at %{public}s into %{public}s", v46, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v50 = *(v12 + 8);
    v50(v36, v11);
    v50(v38, v11);
  }

  v57 = v206;
  if ((v207 & 0x10000) != 0)
  {
    v73 = FilePath.directoryExists()();
    if (v74)
    {
    }

    else
    {
      v205 = 0;
      if (v73)
      {
        goto LABEL_7;
      }
    }

    v86 = v204;
    v208(v204, a1, v11);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = v11;
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v213 = v91;
      *v90 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      v50(v86, v89);
      v95 = sub_1000026C0(v92, v94, &v213);

      *(v90 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v87, v88, "Output path %{public}s is not a directory or is not accessible", v90, 0xCu);
      sub_100003C3C(v91);
    }

    else
    {

      v50(v86, v11);
    }

    sub_10030635C();
    swift_allocError();
    *v96 = 3;
    return swift_willThrow();
  }

LABEL_7:
  v58 = type metadata accessor for ArchiveByteStream();
  v204 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v204)
  {
    v75 = v201;
    v208(v201, v212, v11);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = v11;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v213 = v80;
      *v79 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v82 = v75;
      v84 = v83;
      v50(v82, v78);
      v85 = sub_1000026C0(v81, v84, &v213);

      *(v79 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v76, v77, "Failed to open archive file stream for %{public}s", v79, 0xCu);
      sub_100003C3C(v80);
    }

    else
    {

      v50(v75, v11);
    }

    sub_10030635C();
    swift_allocError();
    *v108 = 0;
    return swift_willThrow();
  }

  v203 = a1;
  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();

  v59 = ArchiveEncryptionContext.init(from:)();
  if (!v59)
  {
    v97 = v199;
    v208(v199, v212, v11);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = v50;
      v101 = v11;
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v213 = v103;
      *v102 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v105;
      v100(v97, v101);
      v107 = sub_1000026C0(v104, v106, &v213);

      *(v102 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v98, v99, "Failed to get encryption context for %{public}s", v102, 0xCu);
      sub_100003C3C(v103);
    }

    else
    {

      v50(v97, v11);
    }

    sub_10030635C();
    swift_allocError();
    *v120 = 1;
    swift_willThrow();
    goto LABEL_32;
  }

  v60 = v59;
  v61 = v205;
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  if (!v61)
  {
    v202 = v58;
    v208(v57, v212, v11);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.info.getter();
    v112 = os_log_type_enabled(v110, v111);
    v186 = v50;
    if (v112)
    {
      v113 = swift_slowAlloc();
      v205 = v11;
      v114 = v113;
      v201 = swift_slowAlloc();
      v213 = v201;
      *v114 = 134218242;
      *(v114 + 4) = 12;
      *(v114 + 12) = 2080;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v60;
      v118 = v117;
      v50(v57, v205);
      v119 = sub_1000026C0(v115, v118, &v213);
      v60 = v116;

      *(v114 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v110, v111, "Decryption thread count: %ld (%s)", v114, 0x16u);
      sub_100003C3C(v201);

      v11 = v205;
    }

    else
    {

      v50(v57, v11);
    }

    v213 = _swiftEmptyArrayStorage;
    sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
    sub_1000039E8(&qword_1004A6FA0, &qword_100376B60);
    sub_1003063B0();
    v121 = v195;
    v122 = v197;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v123 = static ArchiveByteStream.decryptionStream(readingFrom:encryptionContext:flags:threadCount:)();
    (*(v196 + 8))(v121, v122);
    v124 = v198;
    if (!v123)
    {
      v141 = v193;
      v208(v193, v212, v11);
      v142 = Logger.logObject.getter();
      v143 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v142, v143))
      {
        v144 = v11;
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v213 = v146;
        *v145 = 136446210;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
        v147 = dispatch thunk of CustomStringConvertible.description.getter();
        v149 = v148;
        v186(v141, v144);
        v150 = sub_1000026C0(v147, v149, &v213);

        *(v145 + 4) = v150;
        _os_log_impl(&_mh_execute_header, v142, v143, "Failed to open decryption stream for %{public}s", v145, 0xCu);
        sub_100003C3C(v146);
      }

      else
      {

        v186(v141, v11);
      }

      sub_10030635C();
      swift_allocError();
      *v161 = 0;
      goto LABEL_29;
    }

    v208(v198, v212, v11);

    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v205 = v11;
      v128 = v127;
      v129 = swift_slowAlloc();
      v206 = v60;
      v200 = v129;
      v213 = v129;
      *v128 = 136446466;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      v201 = v123;
      v132 = v131;
      v186(v124, v205);
      v133 = sub_1000026C0(v130, v132, &v213);

      *(v128 + 4) = v133;
      *(v128 + 12) = 2080;
      v134 = v190;
      dispatch thunk of ArchiveEncryptionContext.compressionAlgorithm.getter();
      sub_1003069C8(&qword_1004B0860, &type metadata accessor for ArchiveCompression, &protocol conformance descriptor for ArchiveCompression);
      v135 = v192;
      v136 = dispatch thunk of CustomStringConvertible.description.getter();
      v138 = v137;
      (*(v191 + 8))(v134, v135);
      v139 = sub_1000026C0(v136, v138, &v213);
      v123 = v201;

      *(v128 + 14) = v139;
      _os_log_impl(&_mh_execute_header, v125, v126, "AEA compression algorithm used for %{public}s: %s", v128, 0x16u);
      swift_arrayDestroy();

      v11 = v205;
    }

    else
    {

      v186(v124, v11);
    }

    v151 = v194;
    if (a4 >> 60 == 15)
    {
      if ((v207 & 0x10000) == 0)
      {
LABEL_43:
        v152 = v203;
        v153 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
        if (!v153)
        {
          v170 = v123;
          v171 = v187;
          v208(v187, v152, v11);
          v172 = Logger.logObject.getter();
          v173 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v172, v173))
          {
            v174 = v11;
            v175 = swift_slowAlloc();
            v176 = swift_slowAlloc();
            v213 = v176;
            *v175 = 136446210;
            sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
            v177 = dispatch thunk of CustomStringConvertible.description.getter();
            v179 = v178;
            v186(v171, v174);
            v180 = sub_1000026C0(v177, v179, &v213);

            *(v175 + 4) = v180;
            _os_log_impl(&_mh_execute_header, v172, v173, "Failed to open output file stream for %{public}s", v175, 0xCu);
            sub_100003C3C(v176);
          }

          else
          {

            v186(v171, v11);
          }

          sub_10030635C();
          swift_allocError();
          *v181 = 0;
          swift_willThrow();
          v169 = v212;
          sub_100302D30(v170, v212, &dispatch thunk of ArchiveByteStream.close(), "Failed to close decryption stream for %{public}s: %{public}@");

          goto LABEL_62;
        }

        v154 = v153;
        static ArchiveByteStream.process(readingFrom:writingTo:)();
        sub_100302D30(v154, v212, &dispatch thunk of ArchiveByteStream.close(), "Failed to close output file stream for %{public}s: %{public}@");

LABEL_59:
        v169 = v212;
        sub_100302D30(v123, v212, &dispatch thunk of ArchiveByteStream.close(), "Failed to close decryption stream for %{public}s: %{public}@");

LABEL_62:

        sub_100302D30(v204, v169, &dispatch thunk of ArchiveByteStream.close(), "Failed to close archive file stream for %{public}s: %{public}@");
      }
    }

    else
    {
      sub_1000318C0(v194, a4, v140, v207);
      v155 = dispatch thunk of ArchiveEncryptionContext.archiveIdentifier.getter();
      if (v156 >> 60 == 15)
      {
        v157 = Logger.logObject.getter();
        v158 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          *v159 = 0;
          _os_log_impl(&_mh_execute_header, v157, v158, "Archive identifier is missing on archive", v159, 2u);
        }

        sub_10030635C();
        swift_allocError();
        *v160 = 4;
        swift_willThrow();
        sub_100031914(v151, a4);
        goto LABEL_59;
      }

      v162 = v11;
      v163 = v155;
      v164 = v156;
      if (!sub_10030651C(v155, v156, v151, a4))
      {
        v201 = v123;
        v165 = Logger.logObject.getter();
        v166 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          *v167 = 0;
          _os_log_impl(&_mh_execute_header, v165, v166, "Archive identifier does not match expected", v167, 2u);
        }

        sub_10030635C();
        swift_allocError();
        *v168 = 4;
        swift_willThrow();
        sub_100031914(v163, v164);
        sub_100031914(v151, a4);
        v169 = v212;
        sub_100302D30(v201, v212, &dispatch thunk of ArchiveByteStream.close(), "Failed to close decryption stream for %{public}s: %{public}@");

        goto LABEL_62;
      }

      sub_100031914(v163, v164);
      sub_100031914(v151, a4);
      v11 = v162;
      if ((v207 & 0x10000) == 0)
      {
        goto LABEL_43;
      }
    }

    sub_100303740(v123, v203);
    goto LABEL_59;
  }

  v62 = v200;
  v208(v200, v212, v11);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v186 = v50;
    v66 = v11;
    v67 = v65;
    v68 = swift_slowAlloc();
    v213 = v68;
    *v67 = 136446210;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v69 = dispatch thunk of CustomStringConvertible.description.getter();
    v71 = v70;
    v186(v62, v66);
    v72 = sub_1000026C0(v69, v71, &v213);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v63, v64, "Failed to set symmetric key for encryption context %{public}s", v67, 0xCu);
    sub_100003C3C(v68);
  }

  else
  {

    v50(v62, v11);
  }

LABEL_29:
  swift_willThrow();

LABEL_32:
  sub_100302D30(v204, v212, &dispatch thunk of ArchiveByteStream.close(), "Failed to close archive file stream for %{public}s: %{public}@");
}

uint64_t FilePath.extractUncompressedAppleArchive(to:)(uint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v85[-v8];
  v10 = __chkstk_darwin(v7);
  v96 = &v85[-v11];
  v12 = __chkstk_darwin(v10);
  v91 = &v85[-v13];
  v14 = __chkstk_darwin(v12);
  v94 = &v85[-v15];
  v16 = __chkstk_darwin(v14);
  v18 = &v85[-v17];
  v19 = __chkstk_darwin(v16);
  v21 = &v85[-v20];
  __chkstk_darwin(v19);
  v23 = &v85[-v22];
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v90 = v18;
  v92 = v9;
  v24 = type metadata accessor for Logger();
  v25 = sub_1000270B4(v24, qword_1004B00F8);
  v26 = *(v3 + 16);
  (v26)(v23, v101, v2);
  v97 = v26;
  v98 = v3 + 16;
  (v26)(v21, a1, v2);
  v99 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v95 = v3;
    v30 = v29;
    v88 = swift_slowAlloc();
    v102 = v88;
    *v30 = 136446466;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v89 = a1;
    v87 = v27;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v28;
    v33 = v32;
    v93 = v6;
    v34 = *(v95 + 8);
    v34(v23, v2);
    v35 = sub_1000026C0(v31, v33, &v102);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2082;
    a1 = v89;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v34(v21, v2);
    v39 = sub_1000026C0(v36, v38, &v102);

    *(v30 + 14) = v39;
    v40 = v87;
    _os_log_impl(&_mh_execute_header, v87, v86, "Extracting uncompressed Apple Archive at %{public}s into %{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v34 = *(v3 + 8);
    v34(v21, v2);
    v34(v23, v2);
  }

  v41 = FilePath.directoryExists()();
  if (v42)
  {

LABEL_11:
    v45 = v96;
    (v97)(v96, a1, v2);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v102 = v49;
      *v48 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v45;
      v53 = v52;
      v34(v51, v2);
      v54 = sub_1000026C0(v50, v53, &v102);

      *(v48 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v46, v47, "Output path %{public}s is not a directory or is not accessible", v48, 0xCu);
      sub_100003C3C(v49);
    }

    else
    {

      v34(v45, v2);
    }

    sub_10030635C();
    swift_allocError();
    *v55 = 3;
    return swift_willThrow();
  }

  if (!v41)
  {
    goto LABEL_11;
  }

  type metadata accessor for ArchiveByteStream();
  v43 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v43)
  {
    v57 = v91;
    (v97)(v91, v101, v2);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v102 = v101;
      *v60 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      v34(v57, v2);
      v64 = sub_1000026C0(v61, v63, &v102);

      *(v60 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v58, v59, "Failed to open archive file stream for %{public}s", v60, 0xCu);
      sub_100003C3C(v101);
    }

    else
    {

      v34(v57, v2);
    }

    sub_10030635C();
    swift_allocError();
    *v84 = 0;
    return swift_willThrow();
  }

  v44 = v43;
  sub_100303740(v43, a1);
  v65 = v90;
  v66 = v97;
  (v97)(v90, v101, v2);
  (v66)(v94, a1, v2);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v100 = v44;
    v70 = v69;
    v96 = v69;
    v99 = swift_slowAlloc();
    v102 = v99;
    *v70 = 136446466;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    LODWORD(v98) = v68;
    v71 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v94;
    v97 = v67;
    v73 = v34;
    v74 = v2;
    v76 = v75;
    v73(v65, v74);
    v77 = sub_1000026C0(v71, v76, &v102);

    v78 = v96;
    *(v96 + 4) = v77;
    *(v78 + 6) = 2082;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = v80;
    v73(v72, v74);
    v82 = sub_1000026C0(v79, v81, &v102);

    *(v78 + 14) = v82;
    v83 = v97;
    _os_log_impl(&_mh_execute_header, v97, v98, "Successfully extracted uncompressed Apple Archive at %{public}s into %{public}s", v78, 0x16u);
    swift_arrayDestroy();

    v44 = v100;
  }

  else
  {

    v34(v94, v2);
    v34(v65, v2);
  }

  sub_100302D30(v44, v101, &dispatch thunk of ArchiveByteStream.close(), "Failed to close archive file stream for %{public}s: %{public}@");
}

uint64_t FilePath.createAppleEncryptedArchive(at:using:permissions:compression:)(uint64_t a1, uint64_t a2, int a3, int a4)
{
  LODWORD(v103) = a4;
  LODWORD(v98) = a3;
  v104 = a2;
  v106 = a1;
  v5 = 1752459639;
  v6 = type metadata accessor for ArchiveFlags();
  v90 = *(v6 - 8);
  v91 = v6;
  __chkstk_darwin(v6);
  v89 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for ArchiveCompression();
  __chkstk_darwin(v8 - 8);
  v102 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ArchiveEncryptionContext.Profile();
  __chkstk_darwin(v10 - 8);
  v101 = &v81[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FilePath();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v86 = &v81[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v81[-v17];
  v19 = __chkstk_darwin(v16);
  v87 = &v81[-v20];
  v21 = __chkstk_darwin(v19);
  v85 = &v81[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v81[-v24];
  __chkstk_darwin(v23);
  v27 = &v81[-v26];
  v105 = v4;
  v28 = FilePath.directoryExists()();
  if (v29)
  {

    v100 = 0;
    v30 = 0xE400000000000000;
  }

  else
  {
    v100 = 0;
    if (v28)
    {
      v5 = 0xD00000000000001ELL;
      v30 = 0x80000001004441B0;
    }

    else
    {
      v30 = 0xE400000000000000;
    }
  }

  v88 = v18;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_1000270B4(v31, qword_1004B00F8);
  v33 = *(v13 + 16);
  v33(v27, v105, v12);
  v92 = v33;
  v93 = v13 + 16;
  v33(v25, v106, v12);

  v94 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  v36 = os_log_type_enabled(v34, v35);
  v97 = v13;
  v95 = v12;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v96 = v25;
    v38 = v37;
    v83 = swift_slowAlloc();
    v107 = v83;
    *v38 = 136315650;
    *(v38 + 4) = sub_1000026C0(v5, v30, &v107);
    *(v38 + 12) = 2082;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v84 = v5;
    v82 = v35;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v99 = v30;
    v42 = *(v13 + 8);
    v42(v27, v12);
    v43 = sub_1000026C0(v39, v41, &v107);

    *(v38 + 14) = v43;
    *(v38 + 22) = 2082;
    v44 = v96;
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    v96 = v42;
    v42(v44, v12);
    v30 = v99;
    v48 = sub_1000026C0(v45, v47, &v107);

    *(v38 + 24) = v48;
    _os_log_impl(&_mh_execute_header, v34, v82, "Creating Apple Encrypted Archive %s %{public}s at %{public}s", v38, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v49 = *(v13 + 8);
    v49(v25, v12);
    v96 = v49;
    v49(v27, v12);
  }

  static ArchiveEncryptionContext.Profile.hkdf_sha256_aesctr_hmac__symmetric__none.getter();
  if (v103)
  {
    static ArchiveCompression.lzfse.getter();
  }

  else
  {
    static ArchiveCompression.none.getter();
  }

  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();
  ArchiveEncryptionContext.init(profile:compressionAlgorithm:compressionBlockSize:)();
  v50 = v100;
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  if (v50)
  {
  }

  else
  {
    type metadata accessor for ArchiveByteStream();
    v52 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
    if (v52)
    {
      v53 = v52;
      v99 = v30;
      v107 = _swiftEmptyArrayStorage;
      sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
      v104 = v53;
      sub_1000039E8(&qword_1004A6FA0, &qword_100376B60);
      sub_1003063B0();
      v54 = v89;
      v55 = v91;
      v56 = v104;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v57 = static ArchiveByteStream.encryptionStream(writingTo:encryptionContext:flags:threadCount:)();
      (*(v90 + 8))(v54, v55);
      if (v57)
      {
        sub_100303030(v57, v105);

        sub_100302D30(v57, v106, &dispatch thunk of ArchiveByteStream.close(), "Failed to close encryption stream for %{public}s: %{public}@");

        sub_100302D30(v56, v105, &dispatch thunk of ArchiveByteStream.close(), "Failed to close output file stream for %{public}s: %{public}@");
      }

      else
      {

        v68 = v85;
        v69 = v95;
        v92(v85, v105, v95);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v107 = v73;
          *v72 = 136446210;
          sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
          v74 = dispatch thunk of CustomStringConvertible.description.getter();
          v75 = v68;
          v77 = v76;
          (v96)(v75, v69);
          v78 = sub_1000026C0(v74, v77, &v107);

          *(v72 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v70, v71, "Failed to open encryption stream for %{public}s", v72, 0xCu);
          sub_100003C3C(v73);

          v56 = v104;
        }

        else
        {

          (v96)(v68, v69);
        }

        sub_10030635C();
        swift_allocError();
        *v80 = 0;
        swift_willThrow();
        sub_100302D30(v56, v105, &dispatch thunk of ArchiveByteStream.close(), "Failed to close output file stream for %{public}s: %{public}@");
      }
    }

    else
    {

      v58 = v87;
      v59 = v95;
      v92(v87, v106, v95);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v107 = v63;
        *v62 = 136446210;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
        v64 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v65;
        (v96)(v58, v59);
        v67 = sub_1000026C0(v64, v66, &v107);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v60, v61, "Failed to open output file stream for %{public}s", v62, 0xCu);
        sub_100003C3C(v63);
      }

      else
      {

        (v96)(v58, v59);
      }

      sub_10030635C();
      swift_allocError();
      *v79 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_100302D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4, ...)
{
  v5 = type metadata accessor for FilePath();
  v6 = __chkstk_darwin(v5);
  return a3(v6);
}

uint64_t sub_100303030(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v58 = a1;
  v3 = sub_1000039E8(&qword_1004A9CF8, &qword_10037BF90);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = type metadata accessor for FilePath();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  v8 = __chkstk_darwin(v6);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v52 - v10;
  __chkstk_darwin(v9);
  v13 = &v52 - v12;
  v14 = type metadata accessor for ArchiveFlags();
  v63 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v57 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v59 = a2;
  v19 = FilePath.directoryExists()();
  v62 = v11;
  v56 = v5;
  if (v20)
  {

    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  type metadata accessor for ArchiveStream();
  v64 = _swiftEmptyArrayStorage;
  v22 = sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
  v23 = sub_1000039E8(&qword_1004A6FA0, &qword_100376B60);
  v54 = sub_1003063B0();
  v55 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = static ArchiveStream.encodeStream(writingTo:selectUsing:flags:threadCount:)();
  v25 = v63 + 8;
  v58 = *(v63 + 8);
  v58(v18, v14);
  if (v24)
  {
    v52 = v22;
    v53 = v24;
    v63 = v25;
    v26 = v60;
    v27 = *(v60 + 16);
    if (v21)
    {
      v28 = v61;
      v27(v62, v59, v61);
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v44 = v59;
      v28 = v61;
      v27(v13, v59, v61);
      v45 = (*(v26 + 80) + 16) & ~*(v26 + 80);
      v29 = swift_allocObject();
      v46 = v29 + v45;
      v26 = v60;
      (*(v60 + 32))(v46, v13, v28);

      v27(v13, v44, v28);
      FilePath.appending(_:)();
      v30 = sub_100306930;
    }

    v47 = v56;
    (*(v26 + 56))(v56, 1, 1, v28);
    type metadata accessor for ArchiveHeader.FieldKeySet();
    static ArchiveHeader.FieldKeySet.defaultForArchive.getter();
    v64 = _swiftEmptyArrayStorage;
    v48 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v49 = v53;
    ArchiveStream.writeDirectoryContents(archiveFrom:path:keySet:selectUsing:flags:threadCount:)();
    sub_100031B5C(v30, v29);

    sub_100031B5C(v30, v29);
    v58(v48, v14);
    sub_100013F2C(v47, &qword_1004A9CF8, &qword_10037BF90);
    (*(v26 + 8))(v62, v61);
    sub_100302D30(v49, v59, &dispatch thunk of ArchiveStream.close(), "Failed to close encode stream for %{public}s: %{public}@", v52);
  }

  else
  {
    v31 = v60;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000270B4(v32, qword_1004B00F8);
    v33 = v53;
    v34 = v61;
    (*(v31 + 16))(v53, v59, v61);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v31;
      v39 = swift_slowAlloc();
      v64 = v39;
      *v37 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v38 + 8))(v33, v34);
      v43 = sub_1000026C0(v40, v42, &v64);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to open encode stream for %{public}s", v37, 0xCu);
      sub_100003C3C(v39);
    }

    else
    {

      (*(v31 + 8))(v33, v34);
    }

    sub_10030635C();
    swift_allocError();
    *v51 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100303740(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v2 = type metadata accessor for FilePath();
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v50 = &v50 - v6;
  v7 = type metadata accessor for ArchiveFlags();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v51 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for ArchiveStream();
  v57 = _swiftEmptyArrayStorage;
  sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
  sub_1000039E8(&qword_1004A6FA0, &qword_100376B60);
  sub_1003063B0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = v13;
  v14 = static ArchiveStream.decodeStream(readingFrom:selectUsing:flags:threadCount:)();
  v15 = *(v8 + 8);
  v15(v12, v7);
  v54 = v14;
  if (v14)
  {
    v57 = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = static ArchiveStream.extractStream(extractingTo:selectUsing:flags:threadCount:)();
    v15(v12, v7);
    if (v16)
    {
      v57 = _swiftEmptyArrayStorage;
      v17 = v51;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v18 = v54;
      static ArchiveStream.process(readingFrom:writingTo:selectUsing:flags:threadCount:)();
      v15(v17, v7);
      v19 = v56;
      sub_100305D0C(v16, v56, "Failed to close extract stream for %{public}s");

      sub_100305D0C(v18, v19, "Failed to close decoder stream for %{public}s");
    }

    else
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_1000270B4(v33, qword_1004B00F8);
      v35 = v52;
      v34 = v53;
      v36 = v50;
      v37 = v56;
      (*(v52 + 16))(v50, v56, v53);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v57 = v41;
        *v40 = 136446210;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v36;
        v45 = v44;
        (*(v35 + 8))(v43, v34);
        v46 = sub_1000026C0(v42, v45, &v57);

        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "Failed to open extractor stream for %{public}s", v40, 0xCu);
        sub_100003C3C(v41);
      }

      else
      {

        (*(v35 + 8))(v36, v34);
      }

      sub_10030635C();
      swift_allocError();
      *v49 = 0;
      swift_willThrow();
      sub_100305D0C(v54, v37, "Failed to close decoder stream for %{public}s");
    }
  }

  else
  {
    v20 = v56;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000270B4(v21, qword_1004B00F8);
    v23 = v52;
    v22 = v53;
    v24 = v5;
    (*(v52 + 16))(v5, v20, v53);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v57 = v28;
      *v27 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v23 + 8))(v24, v22);
      v32 = sub_1000026C0(v29, v31, &v57);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to open decode stream for %{public}s", v27, 0xCu);
      sub_100003C3C(v28);
    }

    else
    {

      (*(v23 + 8))(v24, v22);
    }

    sub_10030635C();
    swift_allocError();
    *v47 = 0;
    return swift_willThrow();
  }
}

uint64_t FilePath.createAppleArchive(at:permissions:compression:)(uint64_t a1, int a2, int a3)
{
  v119 = a3;
  LODWORD(v125) = a2;
  v130 = a1;
  v4 = 1752459639;
  v5 = type metadata accessor for ArchiveFlags();
  v115 = *(v5 - 8);
  v116 = v5;
  __chkstk_darwin(v5);
  v113 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ArchiveCompression();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FilePath();
  v129 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v120 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v127 = &v106 - v12;
  v13 = __chkstk_darwin(v11);
  v117 = &v106 - v14;
  v15 = __chkstk_darwin(v13);
  v109 = &v106 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v106 - v18;
  __chkstk_darwin(v17);
  v21 = &v106 - v20;
  v128 = v3;
  v22 = FilePath.directoryExists()();
  if (v23)
  {

    v118 = 0;
    v24 = 0xE400000000000000;
  }

  else
  {
    v118 = 0;
    if (v22)
    {
      v4 = 0xD00000000000001ELL;
      v24 = 0x80000001004441B0;
    }

    else
    {
      v24 = 0xE400000000000000;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000270B4(v25, qword_1004B00F8);
  v27 = (v129 + 16);
  v28 = *(v129 + 16);
  v29 = v21;
  (v28)(v21, v128, v8);
  v121 = v28;
  v122 = v27;
  (v28)(v19, v130, v8);

  v123 = v26;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v110 = v4;
  v126 = v24;
  if (v32)
  {
    v33 = v24;
    v34 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v131 = v108;
    *v34 = 136315650;
    *(v34 + 4) = sub_1000026C0(v4, v33, &v131);
    *(v34 + 12) = 2082;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v107 = v31;
    v35 = v29;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v106 = v30;
    v38 = v37;
    v39 = *(v129 + 8);
    v39(v35, v8);
    v40 = sub_1000026C0(v36, v38, &v131);

    *(v34 + 14) = v40;
    *(v34 + 22) = 2082;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v124 = v39;
    v39(v19, v8);
    v44 = sub_1000026C0(v41, v43, &v131);

    *(v34 + 24) = v44;
    v45 = v106;
    _os_log_impl(&_mh_execute_header, v106, v107, "Creating Apple Archive %s %{public}s at %{public}s", v34, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v46 = *(v129 + 8);
    v46(v19, v8);
    v124 = v46;
    v46(v29, v8);
  }

  type metadata accessor for ArchiveByteStream();
  v47 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  v48 = v127;
  if (v47)
  {
    v49 = v47;
    if (v119)
    {
      v50 = v111;
      static ArchiveCompression.lzfse.getter();
      v131 = _swiftEmptyArrayStorage;
      sub_1003069C8(&qword_1004A6F98, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
      sub_1000039E8(&qword_1004A6FA0, &qword_100376B60);
      sub_1003063B0();
      v51 = v113;
      v52 = v116;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v53 = static ArchiveByteStream.compressionStream(using:writingTo:blockSize:flags:threadCount:)();
      (*(v115 + 8))(v51, v52);
      (*(v112 + 8))(v50, v114);
      if (!v53)
      {

        v93 = v109;
        (v121)(v109, v130, v8);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v128 = v49;
          v97 = v96;
          v98 = v8;
          v99 = swift_slowAlloc();
          v131 = v99;
          *v97 = 136446210;
          sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
          v100 = dispatch thunk of CustomStringConvertible.description.getter();
          v101 = v93;
          v103 = v102;
          v124(v101, v98);
          v104 = sub_1000026C0(v100, v103, &v131);

          *(v97 + 4) = v104;
          _os_log_impl(&_mh_execute_header, v94, v95, "Failed to open compression stream for %{public}s", v97, 0xCu);
          sub_100003C3C(v99);

          v49 = v128;
        }

        else
        {

          v124(v93, v8);
        }

        sub_10030635C();
        swift_allocError();
        *v105 = 0;
        swift_willThrow();
        sub_100302D30(v49, v130, &dispatch thunk of ArchiveByteStream.close(), "Failed to close output file stream for %{public}s: %{public}@");
      }

      v125 = v53;
      v48 = v127;
    }

    else
    {
      v125 = 0;
    }

    v65 = v118;
    sub_100303030(v64, v128);
    if (v65)
    {

      v66 = v121;
      (v121)(v48, v128, v8);
      (v66)(v120, v130, v8);
      v67 = v126;

      swift_errorRetain();
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = v8;
        v71 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v131 = v123;
        *v71 = 136315906;
        v72 = sub_1000026C0(v110, v67, &v131);
        v121 = v68;
        v73 = v72;

        *(v71 + 4) = v73;
        *(v71 + 12) = 2082;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
        LODWORD(v126) = v69;
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v128 = v49;
        v76 = v75;
        v77 = v124;
        v124(v48, v70);
        v78 = sub_1000026C0(v74, v76, &v131);
        v49 = v128;

        *(v71 + 14) = v78;
        *(v71 + 22) = 2082;
        v79 = v120;
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        v77(v79, v70);
        v83 = sub_1000026C0(v80, v82, &v131);

        *(v71 + 24) = v83;
        *(v71 + 32) = 2114;
        swift_errorRetain();
        v84 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 34) = v84;
        v86 = v121;
        v85 = v122;
        *v122 = v84;
        _os_log_impl(&_mh_execute_header, v86, v126, "Failed to create Apple Archive %s %{public}s at %{public}s: %{public}@", v71, 0x2Au);
        sub_100013F2C(v85, &qword_1004AA050, &unk_1003F2F10);

        swift_arrayDestroy();
      }

      else
      {

        v90 = v124;
        v124(v120, v8);
        v90(v48, v8);
      }

      sub_10030635C();
      swift_allocError();
      *v91 = 2;
      swift_willThrow();

      v92 = v130;
      sub_100304CDC(v125);

      sub_100302D30(v49, v92, &dispatch thunk of ArchiveByteStream.close(), "Failed to close output file stream for %{public}s: %{public}@");
    }

    v87 = v130;
    sub_100304CDC(v125);

    sub_100302D30(v49, v87, &dispatch thunk of ArchiveByteStream.close(), "Failed to close output file stream for %{public}s: %{public}@");
  }

  v54 = v117;
  (v121)(v117, v130, v8);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = v8;
    v59 = swift_slowAlloc();
    v131 = v59;
    *v57 = 136446210;
    sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
    v60 = dispatch thunk of CustomStringConvertible.description.getter();
    v62 = v61;
    v124(v54, v58);
    v63 = sub_1000026C0(v60, v62, &v131);

    *(v57 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v55, v56, "Failed to open output file stream for %{public}s", v57, 0xCu);
    sub_100003C3C(v59);
  }

  else
  {

    v124(v54, v8);
  }

  sub_10030635C();
  swift_allocError();
  *v88 = 0;
  return swift_willThrow();
}

uint64_t sub_100304CDC(uint64_t a1)
{
  v2 = type metadata accessor for FilePath();
  result = __chkstk_darwin(v2);
  if (a1)
  {

    dispatch thunk of ArchiveByteStream.close()();
  }

  return result;
}

unint64_t sub_100305028(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v34 = v5;
  v6 = 4 * v5;
  v7 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v37 = 4 << v7;
  v29 = a4 & 0xFFFFFFFFFFFFFFLL;
  v28 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v27 = a2 & 0xFFFFFFFFFFFFFFLL;
  v12 = 15;
  v13 = 15;
  v36 = v6;
  v31 = 4 << v10;
  while (1)
  {
    v14 = v13 >> 14;
    if (v13 >> 14 == v6)
    {
      v15 = 0;
      goto LABEL_29;
    }

    result = v13;
    if ((v13 & 0xC) == v37)
    {
      result = sub_1000C34F8(v13, a3, a4);
      v11 = v31;
    }

    v17 = result >> 16;
    v18 = a4;
    if (result >> 16 >= v34)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v18 = a4;
      v11 = v31;
      v15 = result;
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v38 = a3;
      v39 = v29;
      v15 = *(&v38 + v17);
    }

    else
    {
      result = v28;
      if ((a3 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v18 = a4;
        v11 = v31;
      }

      v15 = *(result + v17);
    }

    if ((v13 & 0xC) == v37)
    {
      result = sub_1000C34F8(v13, a3, v18);
      v11 = v31;
      v13 = result;
      if ((a4 & 0x1000000000000000) != 0)
      {
LABEL_26:
        if (v34 <= v13 >> 16)
        {
          goto LABEL_55;
        }

        v19 = String.UTF8View._foreignIndex(after:)();
        v11 = v31;
        v13 = v19;
        goto LABEL_28;
      }
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      goto LABEL_26;
    }

    v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_28:
    v6 = v36;
LABEL_29:
    v20 = v12 >> 14;
    v21 = v12 >> 14 == v9;
    if (v12 >> 14 == v9)
    {
      v22 = 0;
      if (v14 == v6)
      {
        return v21;
      }

      goto LABEL_47;
    }

    v23 = v12 & 0xC;
    result = v12;
    if (v23 == v11)
    {
      result = sub_1000C34F8(v12, a1, a2);
      v11 = v31;
      v6 = v36;
    }

    v24 = result >> 16;
    if (result >> 16 >= v32)
    {
      goto LABEL_54;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v11 = v31;
      v6 = v36;
      v22 = result;
      if (v23 != v31)
      {
        goto LABEL_45;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v38 = a1;
      v39 = v27;
      v22 = *(&v38 + v24);
      if (v23 != v11)
      {
        goto LABEL_45;
      }
    }

    else
    {
      result = v26;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
        v11 = v31;
        v6 = v36;
      }

      v22 = *(result + v24);
      if (v23 != v11)
      {
LABEL_45:
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_46:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14 == v6)
          {
            return v21;
          }

          goto LABEL_47;
        }

        goto LABEL_41;
      }
    }

    result = sub_1000C34F8(v12, a1, a2);
    v11 = v31;
    v6 = v36;
    v12 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_41:
    if (v32 <= v12 >> 16)
    {
      goto LABEL_56;
    }

    v25 = String.UTF8View._foreignIndex(after:)();
    v11 = v31;
    v6 = v36;
    v12 = v25;
    if (v14 == v36)
    {
      return v21;
    }

LABEL_47:
    v21 = 0;
    if (v20 == v9 || v15 != v22)
    {
      return v21;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_10030537C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Data.Iterator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000318C0(a2, a3, v10, v11);
  Data.Iterator.init(_:at:)();
  v12 = *(a1 + 16);
  sub_1003069C8(&qword_1004B0880, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v12)
  {
    v13 = (a1 + 32);
    while (1)
    {
      v14 = 0;
      if (v18)
      {
        break;
      }

      v15 = *v13++;
      if (v17[14] != v15)
      {
        break;
      }

      dispatch thunk of IteratorProtocol.next()();
      if (!--v12)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v14 = v18;
  }

  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t FilePath.readAppleEncryptedArchiveIdentifier()()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  type metadata accessor for ArchiveByteStream();
  if (static ArchiveByteStream.fileStream(path:mode:options:permissions:)())
  {
    type metadata accessor for ArchiveEncryptionContext();
    swift_allocObject();

    if (ArchiveEncryptionContext.init(from:)())
    {
      v8 = dispatch thunk of ArchiveEncryptionContext.archiveIdentifier.getter();

      return v8;
    }

    else
    {
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000270B4(v19, qword_1004B00F8);
      (*(v2 + 16))(v7, v0, v1);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v30;
        *v22 = 136446210;
        sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        (*(v2 + 8))(v7, v1);
        v26 = sub_1000026C0(v23, v25, &v31);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get encryption context for %{public}s", v22, 0xCu);
        sub_100003C3C(v30);
      }

      else
      {

        (*(v2 + 8))(v7, v1);
      }

      sub_10030635C();
      swift_allocError();
      *v28 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000270B4(v10, qword_1004B00F8);
    (*(v2 + 16))(v5, v0, v1);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136446210;
      sub_1003069C8(&qword_1004AA058, &type metadata accessor for FilePath, &protocol conformance descriptor for FilePath);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v2 + 8))(v5, v1);
      v18 = sub_1000026C0(v15, v17, &v31);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to open archive file stream for %{public}s", v13, 0xCu);
      sub_100003C3C(v14);
    }

    else
    {

      (*(v2 + 8))(v5, v1);
    }

    sub_10030635C();
    swift_allocError();
    *v27 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100305A5C(uint64_t a1)
{
  v1 = sub_1000039E8(&qword_1004B0748, &qword_100407028);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for ArchiveHeader.EntryMessage();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ArchiveHeader.EntryMessage.searchExclude.getter();
  sub_1003069C8(&qword_1004B0878, &type metadata accessor for ArchiveHeader.EntryMessage, &protocol conformance descriptor for ArchiveHeader.EntryMessage);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    FilePath.lastComponent.getter();
    v9 = type metadata accessor for FilePath.Component();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v3, 1, v9) == 1)
    {
      sub_100013F2C(v3, &qword_1004B0748, &qword_100407028);
      FilePath.description.getter();
LABEL_11:

      return static ArchiveHeader.EntryMessageStatus.skip.getter();
    }

    v11 = FilePath.Component.description.getter();
    v13 = v12;
    (*(v10 + 8))(v3, v9);
    v14 = FilePath.description.getter();
    if (!v13)
    {
      goto LABEL_11;
    }

    if (v11 == v14 && v13 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        return static ArchiveHeader.EntryMessageStatus.skip.getter();
      }
    }
  }

  return static ArchiveHeader.EntryMessageStatus.ok.getter();
}

uint64_t sub_100305D0C(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  v3 = type metadata accessor for FilePath();
  __chkstk_darwin(v3);
  return dispatch thunk of ArchiveStream.close()();
}

uint64_t sub_100305F9C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1003061CC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100306464(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100031928(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100305F9C(v13, a3, a4, &v12);
  v10 = v4;
  sub_100031928(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_10030635C()
{
  result = qword_1004B0858;
  if (!qword_1004B0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0858);
  }

  return result;
}

unint64_t sub_1003063B0()
{
  result = qword_1004A6FA8;
  if (!qword_1004A6FA8)
  {
    sub_100003A94(&qword_1004A6FA0, &qword_100376B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A6FA8);
  }

  return result;
}

void *sub_100306414(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100306434@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100306464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
  sub_100305F9C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10030651C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000318C0(a3, a4, a3, a4);
          return sub_1003061CC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_100306688()
{
  result = qword_1004B0868;
  if (!qword_1004B0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0868);
  }

  return result;
}

uint64_t _s35AppleEncryptedArchiveExtractionModeOwCP(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s35AppleEncryptedArchiveExtractionModeOwet(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFFFF) >> 24 == 255)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    if ((a2 + 0xFFFFFF) >> 24)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      return v3;
    }

    if (v3 == 2)
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    else
    {
      v3 = *(a1 + 3);
      if (!*(a1 + 3))
      {
        return v3;
      }
    }

    return (*a1 | (*(a1 + 2) << 16) | (v3 << 24)) - 0xFFFFFF;
  }

  return 0;
}

uint64_t _s35AppleEncryptedArchiveExtractionModeOwst(uint64_t result, int a2, int a3)
{
  if ((a3 + 0xFFFFFF) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 0xFFFFFF) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v4)
    {
      v5 = ((a2 - 1) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else if (v4)
  {
    if (v4 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t sub_1003067D8(unsigned __int16 *a1)
{
  if (*(a1 + 2))
  {
    return (*a1 | (*(a1 + 2) << 16)) - 0xFFFF;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003067FC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = ((a2 - 1) >> 16) + 1;
  }

  else
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_100306854()
{
  result = qword_1004B0870;
  if (!qword_1004B0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0870);
  }

  return result;
}

uint64_t sub_1003068A8()
{
  v1 = type metadata accessor for FilePath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100306930(uint64_t a1)
{
  type metadata accessor for FilePath();

  return sub_100305A5C(a1);
}

uint64_t sub_1003069C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100306A10()
{
  result = sub_100306A30();
  qword_1004B0888 = result;
  return result;
}

id sub_100306A30()
{
  v0 = sub_1000039E8(qword_1004B08D0, &qword_100407608);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = [objc_allocWithZone(NSDateFormatter) init];
  TimeZone.init(abbreviation:)();
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  isa = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v2, v4);
  }

  [v3 setTimeZone:isa];

  v7 = String._bridgeToObjectiveC()();
  [v3 setDateFormat:v7];

  return v3;
}

Swift::UInt64_optional __swiftcall iso8601DateToEpochMillis(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  if (!object)
  {
    goto LABEL_9;
  }

  if (qword_1004A9FA0 != -1)
  {
    swift_once();
  }

  v9 = qword_1004B0888;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 dateFromString:v10];

  if (!v11)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v8, v6, v2);
  Date.timeIntervalSince1970.getter();
  v13 = v12;
  v14 = (*(v3 + 8))(v8, v2);
  v16 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v16 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v16;
LABEL_10:
  v15 = object == 0;
LABEL_14:
  result.value = v14;
  result.is_nil = v15;
  return result;
}

uint64_t WhisperSecretDetail.secret.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  sub_100031994(v5, *(v4 + 56), a3, a4);
  return v5;
}

uint64_t WhisperSecretDetail.secret.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100031914(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t WhisperSecretDetail.creationDate.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t WhisperSecretDetail.updateDate.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void WhisperSecretDetail.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 24))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 24))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  if (*(v1 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
  }

  if (*(v1 + 56) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  if (*(v1 + 72) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *(v1 + 64);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
  }

  if (*(v1 + 88) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v1 + 80);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
  }

  if (*(v1 + 104) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v1 + 96);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }
}

Swift::Int WhisperSecretDetail.hashValue.getter()
{
  Hasher.init(_seed:)();
  WhisperSecretDetail.hash(into:)(v1);
  return Hasher._finalize()();
}

double WhisperSecretDetail.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 1;
  result = 0.0;
  *(a1 + 48) = xmmword_100376D40;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  return result;
}

uint64_t WhisperSecretDetail.init(name:metadata:version:secret:creationDate:updateDate:secretLength:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15 & 1;
  return result;
}

BOOL sub_1003070E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 9) = *(a1 + 89);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[9] = *(a2 + 89);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return _s10DarwinInit19WhisperSecretDetailV2eeoiySbAC_ACtFZ_0(v10, v12);
}

Swift::Int sub_100307154()
{
  Hasher.init(_seed:)();
  WhisperSecretDetail.hash(into:)(v1);
  return Hasher._finalize()();
}

DarwinInit::WhisperSecretDetail::CodingKeys_optional __swiftcall WhisperSecretDetail.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489288, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t WhisperSecretDetail.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 1701667182;
  v2 = 0x6144657461647075;
  if (a1 != 5)
  {
    v2 = 0x654C746572636573;
  }

  v3 = 0x746572636573;
  if (a1 != 3)
  {
    v3 = 0x6E6F697461657263;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x617461646174656DLL;
  if (a1 != 1)
  {
    v4 = 0x6E6F6973726576;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1003072CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = *a2;
  v5 = 0x6144657461647075;
  v6 = 0xEA00000000006574;
  if (v2 != 5)
  {
    v5 = 0x654C746572636573;
    v6 = 0xEC0000006874676ELL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746572636573;
  if (v2 != 3)
  {
    v8 = 0x6E6F697461657263;
    v7 = 0xEC00000065746144;
  }

  if (*a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v10 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
  }

  if (*a1)
  {
    v3 = v9;
  }

  else
  {
    v10 = 1701667182;
  }

  if (*a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (*a2 <= 2u)
  {
    if (*a2)
    {
      if (v4 == 1)
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x617461646174656DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E6F6973726576)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1701667182)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (*a2 > 4u)
  {
    if (v4 == 5)
    {
      v13 = 0xEA00000000006574;
      if (v11 != 0x6144657461647075)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x654C746572636573;
    v15 = 1752459118;
  }

  else
  {
    if (v4 == 3)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x746572636573)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v14 = 0x6E6F697461657263;
    v15 = 1702125892;
  }

  v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v14)
  {
LABEL_39:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_40;
  }

LABEL_37:
  if (v12 != v13)
  {
    goto LABEL_39;
  }

  v16 = 1;
LABEL_40:

  return v16 & 1;
}

Swift::Int sub_100307508()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100307634(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10030774C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::WhisperSecretDetail::CodingKeys_optional sub_100307874@<W0>(Swift::String *a1@<X0>, DarwinInit::WhisperSecretDetail::CodingKeys_optional *a2@<X8>)
{
  result.value = WhisperSecretDetail.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_1003078A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEA00000000006574;
  v6 = 0x6144657461647075;
  if (v2 != 5)
  {
    v6 = 0x654C746572636573;
    v5 = 0xEC0000006874676ELL;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746572636573;
  if (v2 != 3)
  {
    v8 = 0x6E6F697461657263;
    v7 = 0xEC00000065746144;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v10 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_10030798C()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6144657461647075;
  if (v1 != 5)
  {
    v3 = 0x654C746572636573;
  }

  v4 = 0x746572636573;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461657263;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x617461646174656DLL;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
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

DarwinInit::WhisperSecretDetail::CodingKeys_optional sub_100307A70@<W0>(uint64_t a1@<X0>, DarwinInit::WhisperSecretDetail::CodingKeys_optional *a2@<X8>)
{
  result.value = WhisperSecretDetail.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_100307A98(uint64_t a1)
{
  v2 = sub_1003090EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100307AD4(uint64_t a1)
{
  v2 = sub_1003090EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 WhisperSecretDetail.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100307FB4(a2, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t static WhisperSecretDetail.fetchWhisperSecret(from:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100307C0C;

  return sub_10030873C(a1);
}

uint64_t sub_100307C0C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

BOOL _s10DarwinInit19WhisperSecretDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 48);
  v27 = *(a2 + 48);
  v28 = v16;
  v17 = v16;
  v18 = v27;
  if (*(&v16 + 1) >> 60 == 15)
  {
    if (*(&v27 + 1) >> 60 == 15)
    {
      v19 = a2;
      v20 = a1;
      sub_1003092A8(&v28, v26);
      sub_1003092A8(&v27, v26);
      sub_100031914(v17, *(&v17 + 1));
      goto LABEL_30;
    }

LABEL_27:
    sub_1003092A8(&v28, v26);
    sub_1003092A8(&v27, v26);
    sub_100031914(v17, *(&v17 + 1));
    sub_100031914(v18, *(&v18 + 1));
    return 0;
  }

  if (*(&v27 + 1) >> 60 == 15)
  {
    goto LABEL_27;
  }

  v19 = a2;
  v20 = a1;
  sub_1003092A8(&v28, v26);
  sub_1003092A8(&v27, v26);
  v22 = sub_10030651C(v17, *(&v17 + 1), v18, *(&v18 + 1));
  sub_100031914(v18, *(&v18 + 1));
  sub_100031914(v17, *(&v17 + 1));
  if (!v22)
  {
    return 0;
  }

LABEL_30:
  v23 = *(v19 + 72);
  if (*(v20 + 72))
  {
    if (!*(v19 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(v20 + 64) != *(v19 + 64))
    {
      v23 = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v24 = *(v19 + 88);
  if (*(v20 + 88))
  {
    if (!*(v19 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (*(v20 + 80) != *(v19 + 80))
    {
      v24 = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = *(v19 + 104);
  if (*(v20 + 104))
  {
    return (*(v19 + 104) & 1) != 0;
  }

  if (*(v20 + 96) != *(v19 + 96))
  {
    v25 = 1;
  }

  return (v25 & 1) == 0;
}

uint64_t sub_100307FB4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004B08C8, "~");
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v82 = 1;
  v80 = 1;
  v78 = 1;
  v76 = 1;
  v9 = a1[3];
  v53 = a1;
  sub_10000E2A8(a1, v9);
  sub_1003090EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v83 = v2;
    v51 = 0;
    value = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0xF000000000000000;
LABEL_4:
    sub_100003C3C(v53);
    *&v61 = v15;
    *(&v61 + 1) = v14;
    *&v62 = v13;
    *(&v62 + 1) = v12;
    v63 = v11;
    v64 = v82;
    *v65 = *v81;
    *&v65[3] = *&v81[3];
    v66 = v10;
    v67 = v16;
    v68 = value;
    v69 = v80;
    *v70 = *v79;
    *&v70[3] = *&v79[3];
    v71 = v51;
    v72 = v78;
    *v73 = *v77;
    *&v73[3] = *&v77[3];
    v74 = 0;
    v75 = v76;
    return sub_1003091E8(&v61);
  }

  LOBYTE(v61) = 0;
  *&v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v50 + 1) = v18;
  LOBYTE(v61) = 1;
  *&v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v49 + 1) = v19;
  LOBYTE(v61) = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = 0;
  v48 = v20;
  v82 = v21 & 1;
  LOBYTE(v54) = 3;
  sub_10025AA8C();
  v22 = v83;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v83 = v22;
  if (v22)
  {
    (*(v6 + 8))(v8, v5);
    v51 = 0;
    value = 0;
    v10 = 0;
    v16 = 0xF000000000000000;
    v14 = *(&v50 + 1);
    v15 = v50;
    v12 = *(&v49 + 1);
    v13 = v49;
    v11 = v48;
    goto LABEL_4;
  }

  v23 = v61;
  sub_100031914(0, 0xF000000000000000);
  LOBYTE(v61) = 4;
  v24 = v83;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = v24;
  if (v24)
  {
    (*(v6 + 8))(v8, v5);
    v51 = 0;
    value = 0;
LABEL_11:
    v14 = *(&v50 + 1);
    v15 = v50;
    v10 = v23;
    v12 = *(&v49 + 1);
    v13 = v49;
    v16 = *(&v23 + 1);
    v11 = v48;
    goto LABEL_4;
  }

  v84 = iso8601DateToEpochMillis(_:)(*&v25);
  value = v84.value;
  is_nil = v84.is_nil;

  v80 = is_nil;
  LOBYTE(v61) = 5;
  v28 = v83;
  v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = v28;
  if (v28)
  {
    (*(v6 + 8))(v8, v5);
    v51 = 0;
    goto LABEL_11;
  }

  v47 = *(&v23 + 1);
  v10 = v23;
  v85 = iso8601DateToEpochMillis(_:)(*&v29);
  v51 = v85.value;
  v31 = v85.is_nil;

  v78 = v31;
  v60 = 6;
  v32 = v83;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = v32;
  if (v32)
  {
    (*(v6 + 8))(v8, v5);
    v14 = *(&v50 + 1);
    v15 = v50;
    v12 = *(&v49 + 1);
    v13 = v49;
    v16 = v47;
    v11 = v48;
    goto LABEL_4;
  }

  v35 = v34;
  v36 = v33;
  (*(v6 + 8))(v8, v5);
  v35 &= 1u;
  v76 = v35;
  v54 = v50;
  v55 = v49;
  v37 = v47;
  *&v56 = v48;
  v46 = v82;
  BYTE8(v56) = v82;
  *&v57 = v23;
  *(&v57 + 1) = v47;
  v39 = v51;
  v38 = value;
  *&v58 = value;
  v45 = v80;
  BYTE8(v58) = v80;
  *v59 = v51;
  v40 = v78;
  v59[8] = v78;
  *&v59[16] = v36;
  v59[24] = v35;
  sub_100309270(&v54, &v61);
  sub_100003C3C(v53);
  v61 = v50;
  v62 = v49;
  v63 = v48;
  v64 = v46;
  v66 = v23;
  v67 = v37;
  v68 = v38;
  v69 = v45;
  v71 = v39;
  v72 = v40;
  v74 = v36;
  v75 = v35;
  result = sub_1003091E8(&v61);
  v41 = *v59;
  a2[4] = v58;
  a2[5] = v41;
  *(a2 + 89) = *&v59[9];
  v42 = v55;
  *a2 = v54;
  a2[1] = v42;
  v43 = v57;
  a2[2] = v56;
  a2[3] = v43;
  return result;
}

uint64_t sub_100308538(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100309140();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v2)
  {
    goto LABEL_4;
  }

  v14 = v17;
  v15[0] = v18[0];
  *(v15 + 9) = *(v18 + 9);
  v12[0] = v15[2];
  v12[1] = v15[3];
  v12[2] = v15[4];
  v13 = v16;
  if (*(&v16 + 1) >> 60 == 15)
  {
    sub_100309194();
    swift_allocError();
    *v6 = 0xD00000000000002ALL;
    v6[1] = 0x80000001004441D0;
    swift_willThrow();
    sub_1003091E8(v12);
LABEL_4:

    return a1;
  }

  a1 = v13;
  sub_1000318C0(v13, *(&v16 + 1), v4, v5);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, qword_1004B00F8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Successfully decoded response into Whisper JSON", v11, 2u);
  }

  sub_1003091E8(v12);
  return a1;
}

uint64_t sub_10030873C(uint64_t a1)
{
  v1[7] = a1;
  v2 = type metadata accessor for URL();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100308864, 0, 0);
}

uint64_t sub_100308864()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = sub_1001862DC(_swiftEmptyArrayStorage);
  *(v0 + 16) = xmmword_1003F2EE0;
  *(v0 + 32) = xmmword_1003F2EF0;
  *(v0 + 48) = 1;
  v6 = *(v3 + 16);
  *(v0 + 120) = v6;
  *(v0 + 128) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.addHeaders(additionalHTTPHeaders:)(v5);

  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_1003089E4;
  v8 = *(v0 + 112);

  return sub_1001AA578(v8, 3, 0x8AC7230489E80000, 0, 0, v0 + 16, 1, 1);
}

uint64_t sub_1003089E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[18] = a1;
  v6[19] = a2;
  v6[20] = v3;

  if (v3)
  {
    v7 = sub_100308DCC;
  }

  else
  {

    v7 = sub_100308B04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100308B04()
{
  v28 = v0;
  (*(v0[13] + 8))(v0[14], v0[12]);
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, qword_1004B00F8);
  v1(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    sub_100309218();
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000026C0(v14, v16, &v27);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully fetched secret from %s", v12, 0xCu);
    sub_100003C3C(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[20];
  v19 = sub_100308538(v0[18], v0[19]);
  v21 = v20;
  v22 = v0[19];
  if (v18)
  {
    sub_100031928(v0[18], v22);

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v19;
    sub_100031928(v0[18], v22);

    v26 = v0[1];

    return v26(v25, v21);
  }
}

uint64_t sub_100308DCC()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_100308E68()
{
  result = qword_1004B0890;
  if (!qword_1004B0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0890);
  }

  return result;
}

unint64_t sub_100308EC0()
{
  result = qword_1004B0898;
  if (!qword_1004B0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0898);
  }

  return result;
}

unint64_t sub_100308F18()
{
  result = qword_1004B08A0;
  if (!qword_1004B08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08A0);
  }

  return result;
}

unint64_t sub_100308F70()
{
  result = qword_1004B08A8;
  if (!qword_1004B08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08A8);
  }

  return result;
}

__n128 sub_100308FC4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100308FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
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

uint64_t sub_10030904C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1003090EC()
{
  result = qword_1004B08B0;
  if (!qword_1004B08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08B0);
  }

  return result;
}

unint64_t sub_100309140()
{
  result = qword_1004B08B8;
  if (!qword_1004B08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08B8);
  }

  return result;
}

unint64_t sub_100309194()
{
  result = qword_1004B08C0;
  if (!qword_1004B08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B08C0);
  }

  return result;
}

unint64_t sub_100309218()
{
  result = qword_1004AAE30;
  if (!qword_1004AAE30)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE30);
  }

  return result;
}

uint64_t sub_1003092A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004AE138, &qword_100400F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Either<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v43 = a1;
  v44 = a2;
  v41 = *(a4 - 8);
  v7 = __chkstk_darwin(a1);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(v9 - 8);
  __chkstk_darwin(v7);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v11;
  v13 = type metadata accessor for Either(0, v12, v11, v11);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v21 = __chkstk_darwin(TupleTypeMetadata2);
  v23 = &v35 - v22;
  v24 = *(v21 + 48);
  v25 = *(v14 + 16);
  v25(&v35 - v22, v43, v13);
  v25(&v23[v24], v44, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v25(v19, v23, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = v40;
      v32 = v35;
      (*(v40 + 32))(v35, &v23[v24], a3);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v31 + 8);
      v33(v32, a3);
      v33(v19, a3);
      goto LABEL_9;
    }

    (*(v40 + 8))(v19, a3);
    goto LABEL_7;
  }

  v25(v17, v23, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v41 + 8))(v17, v42);
LABEL_7:
    v29 = 0;
    v14 = v39;
    v13 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v27 = v41;
  v26 = v42;
  v28 = v36;
  (*(v41 + 32))(v36, &v23[v24], v42);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v27 + 8);
  v30(v28, v26);
  v30(v17, v26);
LABEL_9:
  (*(v14 + 8))(v23, v13);
  return v29 & 1;
}

uint64_t Either<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a5;
  v45 = a4;
  v47 = a6;
  v10 = type metadata accessor for Optional();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = __chkstk_darwin(v10);
  v42 = v33 - v12;
  v41 = *(a3 - 8);
  __chkstk_darwin(v11);
  v35 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = __chkstk_darwin(v14);
  v44 = v33 - v16;
  v43 = *(a2 - 8);
  __chkstk_darwin(v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v20 = type metadata accessor for Either(0, a2, a3, v19);
  v46 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v33 - v21;
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v6)
  {
    v23 = a1;
  }

  else
  {
    v33[0] = v22;
    v33[1] = a3;
    v34 = a1;
    sub_10000E2A8(v48, v48[3]);
    v24 = v44;
    v25 = v49;
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v26 = v43;
    (*(v43 + 56))(v24, 0, 1, v25);
    v27 = *(v26 + 32);
    v28 = v18;
    v27(v18, v24, v25);
    v29 = v33[0];
    v27(v33[0], v28, v25);
    v31 = v46;
    v30 = v47;
    swift_storeEnumTagMultiPayload();
    sub_100003C3C(v48);
    (*(v31 + 32))(v30, v29, v20);
    v23 = v34;
  }

  return sub_100003C3C(v23);
}

uint64_t Either<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v26 = *(*(a2 + 24) - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v23 = *(v9 - 8);
  v10 = __chkstk_darwin(v5);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v10);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E2A8(v15, v15[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  (*(v14 + 16))(v17, v28, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v26;
    v18 = v27;
    (*(v26 + 32))(v7, v17, v27);
    sub_100003BEC(v29, v30);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    (*(v19 + 8))(v7, v18);
  }

  else
  {
    v20 = v23;
    (*(v23 + 32))(v12, v17, v9);
    sub_100003BEC(v29, v30);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    (*(v20 + 8))(v12, v9);
  }

  return sub_100003C3C(v29);
}

uint64_t Either<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a4;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v7);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v17, v5);
    Hasher._combine(_:)(1uLL);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v12 + 32))(v15, v17, v11);
    Hasher._combine(_:)(0);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v12 + 8))(v15, v11);
  }
}

Swift::Int Either<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10030A3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a2, v4, v5);
  return Hasher._finalize()();
}

uint64_t sub_10030A44C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10030A4C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_10030A5F0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

id NSError.rootError()()
{
  for (i = v0; ; i = v5)
  {
    v2 = _convertErrorToNSError(_:)();
    v3 = [v2 underlyingErrors];

    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v4 + 16))
    {
      break;
    }

    v5 = *(v4 + 32);
    swift_errorRetain();

    swift_errorRetain();
  }

  return i;
}

uint64_t DInitAEADecryptionParams.getDecryptionKey()@<X0>(unint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = String.hexadecimalASCIIBytes.getter(a1, a2);
  if (v4)
  {
    if (*(v4 + 2))
    {
      sub_1000039E8(&qword_1004A71E0, &qword_100376D60);
      sub_10018EC94();
      SymmetricKey.init<A>(data:)();
      v5 = type metadata accessor for SymmetricKey();
      return (*(*(v5 - 8) + 56))(a3, 0, 1, v5);
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000270B4(v7, qword_1004B00F8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Invalid hex decryption key, could not convert to array of UInt8", v10, 2u);
  }

  v11 = type metadata accessor for SymmetricKey();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, 1, 1, v11);
}

DarwinInit::DInitAEADecryptionParams::CodingKeys_optional __swiftcall DInitAEADecryptionParams.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100489350, v2);

  if (v3 == 1)
  {
    v4.value = DarwinInit_DInitAEADecryptionParams_CodingKeys_aeaDecryptionKey;
  }

  else
  {
    v4.value = DarwinInit_DInitAEADecryptionParams_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030AAC4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100489350, *a1);

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

uint64_t sub_10030AB24@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100489350, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10030AB88(uint64_t a1)
{
  v2 = sub_10030B434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10030ABC4(uint64_t a1)
{
  v2 = sub_10030B434();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitAEADecryptionParams.init(from:)(void *a1)
{
  result = sub_10030B138(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_10030AC2C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10030B138(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t DInitAEADecryptionParams.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_1000039E8(&qword_1004B0958, &qword_100407758);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000E2A8(a1, a1[3]);
  sub_10030B434();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t static DInitAEADecryptionParams.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
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

uint64_t sub_10030AEB8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
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

uint64_t DInitAEADecryptionParams.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int DInitAEADecryptionParams.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10030B01C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10030B084(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10030B0D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10030B138(void *a1)
{
  v3 = sub_1000039E8(&qword_1004B0988, &qword_1004079C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000E2A8(a1, a1[3]);
  sub_10030B434();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003C3C(a1);
  return v7;
}

uint64_t _s10DarwinInit24DInitAEADecryptionParamsV12getArchiveID10Foundation4DataVSgyF_0(unint64_t a1, unint64_t a2)
{
  v2 = String.hexadecimalASCIIBytes.getter(a1, a2);
  if (v2)
  {
    if (*(v2 + 2))
    {
      v3 = sub_10018E354(v2);

      return v3;
    }
  }

  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, qword_1004B00F8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to convert archive identifier from String to Data", v8, 2u);
  }

  return 0;
}

unint64_t sub_10030B434()
{
  result = qword_1004B0960;
  if (!qword_1004B0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0960);
  }

  return result;
}

unint64_t sub_10030B48C()
{
  result = qword_1004B0968;
  if (!qword_1004B0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0968);
  }

  return result;
}

unint64_t sub_10030B4E4()
{
  result = qword_1004B0970;
  if (!qword_1004B0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0970);
  }

  return result;
}

unint64_t sub_10030B53C()
{
  result = qword_1004B0978;
  if (!qword_1004B0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0978);
  }

  return result;
}

unint64_t sub_10030B594()
{
  result = qword_1004B0980;
  if (!qword_1004B0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004B0980);
  }

  return result;
}

uint64_t DInitError.description.getter(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (!a4)
    {
      _StringGuts.grow(_:)(41);

      v14 = 0xD000000000000023;
      type metadata accessor for Config(0);
      v5._countAndFlagsBits = Array.description.getter();
      String.append(_:)(v5);

      v6._countAndFlagsBits = 8236;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      swift_getErrorValue();
      v7._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v7);

      return v14;
    }

    v14 = 0;
    if (a3)
    {
      _StringGuts.grow(_:)(32);
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      v11._object = 0x80000001004442A0;
      String.append(_:)(v11);
      v12._countAndFlagsBits = a2;
      v12._object = a3;
      String.append(_:)(v12);
      v8 = 8250;
      v9 = 0xE200000000000000;
    }

    else
    {
      _StringGuts.grow(_:)(27);
      v9 = 0x8000000100444280;
      v8 = 0xD000000000000019;
    }

LABEL_12:
    String.append(_:)(*&v8);
    sub_1000039E8(&qword_1004AB0A0, &unk_100377120);
    _print_unlocked<A, B>(_:_:)();
    return v14;
  }

  if (a4 == 2)
  {
    v14 = 0;
    _StringGuts.grow(_:)(17);
    v8 = 0x6620746F6F626552;
    v9 = 0xEF203A64656C6961;
    goto LABEL_12;
  }

  if (a3 | a2 | a1)
  {
    return 0x6E776F6474756853;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_10030B890(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_10030B8AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10030B8F4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10030B93C(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

DarwinInit::DInitUserOptions __swiftcall DInitUserOptions.init(username:uid:gid:)(Swift::String username, Swift::UInt32 uid, Swift::UInt32 gid)
{
  v3 = uid | (*&gid << 32);
  result.username = username;
  result.uid = v3;
  result.gid = HIDWORD(v3);
  return result;
}

uint64_t sub_10030B980@<X0>(uint64_t *a2@<X8>)
{
  result = _s10DarwinInit16DInitUserOptionsV8argumentACSgSS_tcfC_0();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

unsigned __int8 *sub_10030B9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_100064CF0();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100083890(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
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
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
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

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}