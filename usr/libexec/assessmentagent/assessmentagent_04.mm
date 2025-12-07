BOOL sub_100054D70(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 == v9;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 == v9;
  }

  return result;
}

Swift::Int sub_100054E40()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 33);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100054ED8(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100054F40()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 33);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_100054FD4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = *a2;
  v10 = a2[1];
  static String.StandardComparator.localizedStandard.getter();
  v12._countAndFlagsBits = v9;
  v12._object = v8;
  v13._countAndFlagsBits = v11;
  v13._object = v10;
  v14 = String.StandardComparator.compare(_:_:)(v12, v13);
  (*(v5 + 8))(v7, v4);
  return v14 == NSOrderedAscending;
}

BOOL sub_1000550D8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = *a2;
  v10 = a2[1];
  static String.StandardComparator.localizedStandard.getter();
  v12._countAndFlagsBits = v11;
  v12._object = v10;
  v13._countAndFlagsBits = v9;
  v13._object = v8;
  v14 = String.StandardComparator.compare(_:_:)(v12, v13);
  (*(v5 + 8))(v7, v4);
  return v14 != NSOrderedAscending;
}

BOOL sub_1000551DC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = *a2;
  v10 = a2[1];
  static String.StandardComparator.localizedStandard.getter();
  v12._countAndFlagsBits = v9;
  v12._object = v8;
  v13._countAndFlagsBits = v11;
  v13._object = v10;
  v14 = String.StandardComparator.compare(_:_:)(v12, v13);
  (*(v5 + 8))(v7, v4);
  return v14 != NSOrderedAscending;
}

BOOL sub_1000552E0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = *a2;
  v10 = a2[1];
  static String.StandardComparator.localizedStandard.getter();
  v12._countAndFlagsBits = v11;
  v12._object = v10;
  v13._countAndFlagsBits = v9;
  v13._object = v8;
  v14 = String.StandardComparator.compare(_:_:)(v12, v13);
  (*(v5 + 8))(v7, v4);
  return v14 == NSOrderedAscending;
}

uint64_t sub_1000553E4@<X0>(uint64_t *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = HIBYTE(a2);
  v5 = *a1;
  v6 = a1[1];
  v7 = objc_allocWithZone(LSApplicationRecord);
  swift_bridgeObjectRetain_n();
  v8 = sub_10005B030(v5, v6, 0);
  v20[3] = sub_100022884(0, &qword_1000B9F48, LSApplicationRecord_ptr);
  v20[4] = &off_1000A8258;
  v20[0] = v8;
  sub_100019D8C(v20, v17, &qword_1000BA558, "ĳ");
  v9 = v18;
  if (v18)
  {
    v10 = v19;
    sub_100005A3C(v17, v18);
    v9 = (*(v10 + 16))(v9, v10);
    v12 = v11;
    sub_100003FB4(v17);
  }

  else
  {
    sub_100019B28(v17, &qword_1000BA558, "ĳ");
    v12 = 0xE000000000000000;
  }

  sub_100019D8C(v20, v17, &qword_1000BA558, "ĳ");
  v13 = v18;
  if (v18)
  {
    v14 = v19;
    sub_100005A3C(v17, v18);
    v15 = (*(v14 + 24))(v13, v14);
    sub_100019B28(v20, &qword_1000BA558, "ĳ");
    result = sub_100003FB4(v17);
  }

  else
  {
    sub_100019B28(v20, &qword_1000BA558, "ĳ");
    result = sub_100019B28(v17, &qword_1000BA558, "ĳ");
    v15 = 2;
  }

  *a3 = v9;
  *(a3 + 8) = v12;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v3 & 1;
  *(a3 + 33) = v15;
  return result;
}

uint64_t sub_1000555F8(uint64_t a1, char a2, void *a3)
{
  v44 = a3;
  v31 = *(a1 + 16);
  if (!v31)
  {
  }

  v5 = 0;
  for (i = 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(a1 + i + 16);
    v35 = *(a1 + i);
    v36 = v7;
    v37 = *(a1 + i + 32);
    v8 = *(a1 + i + 48);
    v38 = v8;
    v32 = v7;
    v33 = v35;
    v9 = v37;
    v10 = BYTE8(v37);
    v11 = BYTE9(v37);
    sub_100019D8C(&v35, v34, &qword_1000BA188, &qword_1000832E0);
    if (!*(&v33 + 1))
    {
    }

    v39 = v33;
    v40 = v32;
    v41 = v9;
    LOBYTE(v37) = v9;
    v35 = v33;
    v36 = v32;
    v12 = *v44;
    v13 = sub_100020EB0(&v39);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_18;
    }

    v19 = v14;
    if (v12[3] >= v18)
    {
      if ((a2 & 1) == 0)
      {
        v27 = v13;
        sub_10006E25C();
        v13 = v27;
      }
    }

    else
    {
      sub_10006CE1C(v18, a2 & 1);
      v13 = sub_100020EB0(&v39);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_20;
      }
    }

    v42 = v39;
    v43 = v40;
    if (v19)
    {
      break;
    }

    v21 = *v44;
    v21[(v13 >> 6) + 8] |= 1 << v13;
    v22 = v21[6] + 40 * v13;
    v23 = v40;
    *v22 = v39;
    *(v22 + 16) = v23;
    *(v22 + 32) = v41;
    v24 = v21[7] + 16 * v13;
    *v24 = v10 & 1;
    *(v24 + 1) = v11 & 1;
    *(v24 + 8) = v8;
    v25 = v21[2];
    v17 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v17)
    {
      goto LABEL_19;
    }

    ++v5;
    v21[2] = v26;
    a2 = 1;
    if (v31 == v5)
    {
    }
  }

  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100053F94(&v42);
    sub_100019B28(&v43, &qword_1000BA548, &qword_1000834D0);
  }

LABEL_21:
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v29._object = 0x8000000100089E20;
  v29._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v29);
  _print_unlocked<A, B>(_:_:)();
  v30._countAndFlagsBits = 39;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100055980(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (__CocoaDictionary.Index.age.getter() == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
      swift_dynamicCast();
      sub_10002102C(v6);
      v5 = v4;

      if (v5)
      {
        __CocoaDictionary.Index.dictionary.getter();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  _HashTable.occupiedBucket(after:)();
}

void sub_100055AE4(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      __CocoaDictionary.lookup(_:)();
      sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
      swift_dynamicCast();
      sub_100022884(0, &qword_1000BA570, AEAssessmentIndividualConfiguration_ptr);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  __CocoaDictionary.Index.key.getter();
  sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
  swift_dynamicCast();
  a2 = sub_10002102C(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

uint64_t sub_100055CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  v94 = a3;
  sub_10006FAA8(v6);
  v7 = sub_10004C1E0(a2);

  result = a1;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  v98 = v9;
  if (!v9)
  {
    goto LABEL_33;
  }

  v11 = 0;
  v96 = result + 32;
  v97 = result;
  v110 = v7 + 56;
  v100 = v7;
  do
  {
    v99 = v10;
    while (1)
    {
      if (v11 >= *(result + 16))
      {
LABEL_81:
        __break(1u);
        return result;
      }

      v12 = (v96 + 40 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[3];
      v16 = *(v12 + 32);
      v17 = *(v12 + 33);
      v101 = v11 + 1;
      v103 = *(v12 + 33);
      v107 = v12[2];
      v106 = v16;
      if (!*(v7 + 16))
      {
        break;
      }

      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      if (((*(v110 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_28;
      }

      v21 = ~v19;
      v22 = *(v100 + 48);
      while (1)
      {
        v25 = v22 + 40 * v20;
        v26 = *(v25 + 16);
        v27 = *(v25 + 24);
        v28 = *(v25 + 32);
        v29 = *(v25 + 33);
        v30 = *v25 == v14 && *(v25 + 8) == v13;
        if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_13;
        }

        if (v26 == v107 && v27 == v15)
        {
          v23 = v106 == v28;
          goto LABEL_9;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }

LABEL_13:
        v20 = (v20 + 1) & v21;
        if (((*(v110 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v23 = v106 == v28;
LABEL_9:
      if (!v23 || v29 != v103)
      {
        goto LABEL_13;
      }

      v10 = v99;
      v7 = v100;
      v11 = v101;
      result = v97;
      if (v101 == v98)
      {
        goto LABEL_33;
      }
    }

LABEL_28:
    v10 = v99;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004A8EC(0, v99[2] + 1, 1);
      v10 = v99;
    }

    result = v97;
    v7 = v100;
    v11 = v101;
    v33 = v10[2];
    v32 = v10[3];
    if (v33 >= v32 >> 1)
    {
      sub_10004A8EC((v32 > 1), v33 + 1, 1);
      result = v97;
      v10 = v99;
    }

    v10[2] = v33 + 1;
    v34 = &v10[5 * v33];
    v34[4] = v14;
    v34[5] = v13;
    v34[6] = v107;
    v34[7] = v15;
    *(v34 + 64) = v106;
    *(v34 + 65) = v103;
  }

  while (v101 != v98);
LABEL_33:

  v35 = v10[2];
  if (v35)
  {
    sub_10004A8CC(0, v35, 0);
    v36 = v10 + 7;
    do
    {
      v38 = *(v36 - 1);
      v37 = *v36;
      v40 = _swiftEmptyArrayStorage[2];
      v39 = _swiftEmptyArrayStorage[3];

      if (v40 >= v39 >> 1)
      {
        sub_10004A8CC((v39 > 1), v40 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v40 + 1;
      v41 = &_swiftEmptyArrayStorage[2 * v40];
      v41[4] = v38;
      v41[5] = v37;
      v36 += 5;
      --v35;
    }

    while (v35);
  }

  v42 = *(a2 + 16);
  if (v42)
  {
    sub_10004A8CC(0, v42, 0);
    v43 = (a2 + 56);
    do
    {
      v45 = *(v43 - 1);
      v44 = *v43;
      v47 = _swiftEmptyArrayStorage[2];
      v46 = _swiftEmptyArrayStorage[3];

      if (v47 >= v46 >> 1)
      {
        sub_10004A8CC((v46 > 1), v47 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v47 + 1;
      v48 = &_swiftEmptyArrayStorage[2 * v47];
      v48[4] = v45;
      v48[5] = v44;
      v43 += 5;
      --v42;
    }

    while (v42);
  }

  v49 = *(v94 + 16);
  if (v49)
  {
    sub_10004A8CC(0, v49, 0);
    v50 = (v94 + 56);
    do
    {
      v52 = *(v50 - 1);
      v51 = *v50;
      v54 = _swiftEmptyArrayStorage[2];
      v53 = _swiftEmptyArrayStorage[3];

      if (v54 >= v53 >> 1)
      {
        sub_10004A8CC((v53 > 1), v54 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v54 + 1;
      v55 = &_swiftEmptyArrayStorage[2 * v54];
      v55[4] = v52;
      v55[5] = v51;
      v50 += 5;
      --v49;
    }

    while (v49);
  }

  v56 = 0;
  result = a2;
  v57 = *(a2 + 16);
LABEL_49:
  v58 = 40 * v56;
  while (v57 != v56)
  {
    if (v56 >= *(result + 16))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    ++v56;
    v59 = v58 + 40;
    v60 = *(result + v58 + 64);
    v58 += 40;
    if (v60)
    {
      v62 = *(result + v59 - 8);
      v61 = *(result + v59);
      v63 = *(result + v59 + 16);
      v104 = *(result + v59 + 8);
      v64 = *(result + v59 + 25);

      v108 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10004A8EC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v66 = _swiftEmptyArrayStorage[2];
      v65 = _swiftEmptyArrayStorage[3];
      if (v66 >= v65 >> 1)
      {
        sub_10004A8EC((v65 > 1), v66 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v66 + 1;
      v67 = &_swiftEmptyArrayStorage[5 * v66];
      v67[4] = v62;
      v67[5] = v61;
      v67[6] = v104;
      v67[7] = v63;
      *(v67 + 64) = 1;
      *(v67 + 65) = v108;
      result = a2;
      goto LABEL_49;
    }
  }

  v68 = _swiftEmptyArrayStorage[2];
  if (v68)
  {
    sub_10004A8CC(0, v68, 0);
    v69 = &_swiftEmptyArrayStorage[7];
    do
    {
      v70 = *(v69 - 1);
      v71 = *v69;
      v73 = _swiftEmptyArrayStorage[2];
      v72 = _swiftEmptyArrayStorage[3];

      if (v73 >= v72 >> 1)
      {
        sub_10004A8CC((v72 > 1), v73 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v73 + 1;
      v74 = &_swiftEmptyArrayStorage[2 * v73];
      v74[4] = v70;
      v74[5] = v71;
      v69 += 5;
      --v68;
    }

    while (v68);
  }

  v75 = 0;
  result = v94;
  v76 = *(v94 + 16);
LABEL_64:
  v77 = 40 * v75;
  while (v76 != v75)
  {
    if (v75 >= *(result + 16))
    {
      goto LABEL_80;
    }

    ++v75;
    v78 = v77 + 40;
    v79 = *(result + v77 + 64);
    v77 += 40;
    if (v79)
    {
      v80 = *(result + v78);
      v81 = *(result + v78 + 16);
      v102 = *(result + v78 + 8);
      v105 = *(result + v78 - 8);
      v82 = *(result + v78 + 25);

      v109 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10004A8EC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v84 = _swiftEmptyArrayStorage[2];
      v83 = _swiftEmptyArrayStorage[3];
      result = v94;
      if (v84 >= v83 >> 1)
      {
        sub_10004A8EC((v83 > 1), v84 + 1, 1);
        result = v94;
      }

      _swiftEmptyArrayStorage[2] = v84 + 1;
      v85 = &_swiftEmptyArrayStorage[5 * v84];
      v85[4] = v105;
      v85[5] = v80;
      v85[6] = v102;
      v85[7] = v81;
      *(v85 + 64) = 1;
      *(v85 + 65) = v109;
      goto LABEL_64;
    }
  }

  v86 = _swiftEmptyArrayStorage[2];
  if (v86)
  {
    sub_10004A8CC(0, v86, 0);
    v87 = &_swiftEmptyArrayStorage[7];
    do
    {
      v88 = *(v87 - 1);
      v89 = *v87;
      v90 = _swiftEmptyArrayStorage[2];
      v91 = _swiftEmptyArrayStorage[3];

      if (v90 >= v91 >> 1)
      {
        sub_10004A8CC((v91 > 1), v90 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v90 + 1;
      v92 = &_swiftEmptyArrayStorage[2 * v90];
      v92[4] = v88;
      v92[5] = v89;
      v87 += 5;
      --v86;
    }

    while (v86);
  }

  *a4 = _swiftEmptyArrayStorage;
  a4[1] = _swiftEmptyArrayStorage;
  a4[2] = _swiftEmptyArrayStorage;
  a4[3] = _swiftEmptyArrayStorage;
  a4[4] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100056564(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000565AC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_100056604(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100056618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_100056660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000566B4()
{
  result = qword_1000BA560;
  if (!qword_1000BA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA560);
  }

  return result;
}

unint64_t sub_10005670C()
{
  result = qword_1000BA568;
  if (!qword_1000BA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA568);
  }

  return result;
}

unint64_t sub_100056760()
{
  result = qword_1000BA578;
  if (!qword_1000BA578)
  {
    sub_100022884(255, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA578);
  }

  return result;
}

uint64_t sub_1000567C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.Process(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100056870()
{
  result = qword_1000BA598;
  if (!qword_1000BA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA598);
  }

  return result;
}

void *sub_1000568F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10004A8CC(0, v1, 0);
  v3 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v9 = (*(a1 + 48) + 40 * v5);
    v10 = v9[1];
    v23 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_10004A8CC((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v23;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 72 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_10001A784(v5, v22, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_10001A784(v5, v22, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100056B48(uint64_t a1)
{
  sub_100057C18();
  swift_getKeyPath();
  swift_getKeyPath();
  v7[0] = a1;

  static Published.subscript.setter();
  swift_beginAccess();
  sub_100019D8C(v1 + 96, v7, &qword_1000BA880, &qword_1000838F8);
  if (v7[3])
  {
    sub_10000859C(v7, v6);
    sub_100019B28(v7, &qword_1000BA880, &qword_1000838F8);
    sub_100005A3C(v6, v6[3]);
    v3 = sub_1000568F4(a1);
    v4 = sub_10004C148(v3);

    sub_100031A84(v4);

    return sub_100003FB4(v6);
  }

  else
  {

    return sub_100019B28(v7, &qword_1000BA880, &qword_1000838F8);
  }
}

uint64_t sub_100056C98()
{
  v1 = v0;
  v2 = sub_100003F6C(&qword_1000B9188, &qword_100081CA0);
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v28 - v3;
  v4 = sub_100003F6C(&qword_1000BA888, &unk_100083998);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C370(v7, qword_1000BC548);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Resuming participant matching", v10, 2u);
  }

  v11 = type metadata accessor for AEAConcreteRunningBoardPrimitives.RunningApplicationMonitor(0);
  v12 = swift_allocObject();
  *(v12 + 16) = [objc_allocWithZone(RBSProcessMonitor) init];
  v36[0] = &_swiftEmptySetSingleton;
  sub_100003F6C(&qword_1000B95F8, &qword_100082260);
  swift_allocObject();
  *(v12 + 24) = CurrentValueSubject.init(_:)();
  v13 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken;
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *(v12 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs) = &_swiftEmptySetSingleton;
  v37 = v11;
  v38 = &off_1000A86D8;
  v36[0] = v12;
  sub_100005A3C(v36, v11);
  sub_100057C18();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = sub_1000568F4(v33);
  v16 = sub_10004C148(v15);

  sub_100031A84(v16);

  sub_10000859C(v36, &v33);
  swift_beginAccess();
  sub_100058714(&v33, v1 + 96);
  swift_endAccess();
  sub_100005A3C(v36, v37);
  *&v33 = sub_1000330D8();
  sub_100003F6C(&qword_1000BA890, &qword_1000839F0);
  sub_100004EE0(&qword_1000BA898, &qword_1000BA890, &qword_1000839F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100004EE0(&qword_1000BA8A0, &qword_1000BA8A8, &qword_1000839F8, &protocol conformance descriptor for Set<A>);
  Publisher<>.removeDuplicates()();

  sub_10000859C(v1 + 56, &v33);
  v17 = swift_allocObject();
  sub_100008748(&v33, v17 + 16);
  v18 = &v6[*(v4 + 76)];
  *v18 = sub_10005881C;
  v18[1] = v17;
  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000BA8B0, &qword_1000BA888, &unk_100083998, &unk_10007FEC0);
  Publisher<>.sink(receiveValue:)();

  sub_100019B28(v6, &qword_1000BA888, &unk_100083998);
  swift_beginAccess();
  sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
  sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v19 = sub_100057DCC();
  v20 = *(v19 + 16);
  if (v20)
  {
    v32 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = v19 + 32;
    do
    {
      sub_10000859C(v21, &v33);
      v22 = v34;
      v23 = v35;
      sub_100005A3C(&v33, v34);
      (*(v23 + 8))(v22, v23);
      sub_100003FB4(&v33);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 += 40;
      --v20;
    }

    while (v20);

    v24 = v32;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  *&v33 = v24;
  sub_100003F6C(&qword_1000B91D0, &qword_100081CD0);
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  sub_100004EE0(&qword_1000B91D8, &qword_1000B91D0, &qword_100081CD0, &protocol conformance descriptor for Publishers.AEACombineLatestMany<A>);
  v25 = v29;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000B91E0, &qword_1000B9188, &qword_100081CA0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v26 = v31;
  Publisher<>.sink(receiveValue:)();

  (*(v30 + 8))(v25, v26);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return sub_100003FB4(v36);
}

uint64_t sub_1000574B0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100057548(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = qword_1000B6430;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C370(v5, qword_1000BC548);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      sub_10002C1E4();
      v10 = Set.description.getter();
      v12 = sub_100043D60(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Publishing Participants: %{public}s", v8, 0xCu);
      sub_100003FB4(v9);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v2;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100057718()
{
  v1 = v0;
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC548);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Suspending participant matching", v5, 2u);
  }

  swift_beginAccess();
  sub_100019D8C(v1 + 96, &v17, &qword_1000BA880, &qword_1000838F8);
  if (*(&v18 + 1))
  {
    sub_10000859C(&v17, v16);
    sub_100019B28(&v17, &qword_1000BA880, &qword_1000838F8);
    sub_100005A3C(v16, v16[3]);
    sub_100032B7C();
    sub_100003FB4(v16);
  }

  else
  {
    sub_100019B28(&v17, &qword_1000BA880, &qword_1000838F8);
  }

  *&v19 = 0;
  v17 = 0u;
  v18 = 0u;
  swift_beginAccess();
  sub_100058714(&v17, v1 + 96);
  swift_endAccess();
  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v17 = &_swiftEmptySetSingleton;

  static Published.subscript.setter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v17 = v9;
    *v8 = 136446210;
    sub_10002C1E4();
    v10 = Set.description.getter();
    v12 = sub_100043D60(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Publishing Participants: %{public}s", v8, 0xCu);
    sub_100003FB4(v9);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v17 = &_swiftEmptySetSingleton;

  static Published.subscript.setter();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sub_100057B2C();
  sub_100019D8C(&v17, v16, &qword_1000BBFF0, &qword_100081B30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v16, &v15, &qword_1000BBFF0, &qword_100081B30);
  static Published.subscript.setter();
  sub_100019B28(v16, &qword_1000BBFF0, &qword_100081B30);
  sub_100019B28(&v17, &qword_1000BBFF0, &qword_100081B30);
  v13 = sub_100022574(_swiftEmptyArrayStorage);
  return sub_100056B48(v13);
}

uint64_t sub_100057B2C()
{
  v1 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___mainParticipantSource;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___mainParticipantSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___mainParticipantSource);
  }

  else
  {
    type metadata accessor for AEAMainParticipantSource(0);
    v2 = swift_allocObject();
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_100019D8C(v5, v4, &qword_1000BBFF0, &qword_100081B30);
    sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
    Published.init(initialValue:)();
    sub_100019B28(v5, &qword_1000BBFF0, &qword_100081B30);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100057C18()
{
  v1 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - v3;
  v5 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___configurationParticipantSource;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___configurationParticipantSource))
  {
    v6 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___configurationParticipantSource);
  }

  else
  {
    swift_beginAccess();
    sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
    v7 = v0;
    Published.projectedValue.getter();
    swift_endAccess();
    type metadata accessor for AEAConfigurationParticipantSource(0);
    v6 = swift_allocObject();
    v9[1] = _swiftEmptyDictionarySingleton;
    sub_100003F6C(&qword_1000B9178, &qword_100081BC0);
    Published.init(initialValue:)();
    (*(v2 + 32))(v6 + OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource_candidateProcesses, v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100057DCC()
{
  v1 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___participantSources;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___participantSources))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___participantSources);
  }

  else
  {
    sub_100003F6C(&qword_1000B9158, &qword_100081B98);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100083800;
    v3 = sub_100057B2C();
    *(v2 + 56) = type metadata accessor for AEAMainParticipantSource(0);
    *(v2 + 64) = &off_1000A9A28;
    *(v2 + 32) = v3;
    v4 = sub_100057C18();
    *(v2 + 96) = type metadata accessor for AEAConfigurationParticipantSource(0);
    *(v2 + 104) = &off_1000A96A0;
    *(v2 + 72) = v4;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100057E9C()
{
  sub_100003FB4((v0 + 16));
  sub_100003FB4((v0 + 56));
  sub_100019B28(v0 + 96, &qword_1000BA880, &qword_1000838F8);
  v1 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager__candidateProcesses;
  v2 = sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager__participants;
  v4 = sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_100057FBC()
{
  sub_100057E9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAiOSParticipantManager(uint64_t a1)
{
  result = qword_1000BA690;
  if (!qword_1000BA690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058068(uint64_t a1)
{
  sub_10002B688(319, &qword_1000B8EA0, &unk_1000B7360, &unk_100081AA0);
  if (v1 <= 0x3F)
  {
    sub_10002B688(319, &qword_1000B8EB8, &qword_1000B7418, &qword_100081AB0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100058194()
{
  v0 = sub_100003F6C(&qword_1000B9130, &qword_100081B80);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  v4 = sub_100003F6C(&qword_1000B9138, &qword_100081B88);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  swift_beginAccess();
  sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100004EE0(&qword_1000B9148, &qword_1000B9130, &qword_100081B80, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0, &protocol conformance descriptor for Set<A>);
  Publisher<>.removeDuplicates()();
  (*(v1 + 8))(v3, v0);
  sub_100004EE0(&qword_1000B9150, &qword_1000B9138, &qword_100081B88, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v8 = Publisher.eraseToAnyPublisher()();
  (*(v5 + 8))(v7, v4);
  return v8;
}

uint64_t sub_100058410()
{
  sub_100057B2C();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100058498(uint64_t a1)
{
  sub_100057B2C();
  sub_100019D8C(a1, v4, &qword_1000BBFF0, &qword_100081B30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v4, &v3, &qword_1000BBFF0, &qword_100081B30);
  static Published.subscript.setter();
  sub_100019B28(a1, &qword_1000BBFF0, &qword_100081B30);
  return sub_100019B28(v4, &qword_1000BBFF0, &qword_100081B30);
}

uint64_t sub_100058568()
{
  type metadata accessor for AEAAuxiliaryParticipantAggregatorSource(0);
  v0 = swift_allocObject();
  UUID.init()();
  v1 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject;
  sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  swift_allocObject();
  *(v0 + v1) = CurrentValueSubject.init(_:)();
  return v0;
}

uint64_t sub_100058610(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10005868C(void *a1, uint64_t *a2)
{

  sub_10002BFA4(v2);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100058714(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA880, &qword_1000838F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000587E4()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005881C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1[5];
  v4 = v1[6];
  sub_100005A3C(v1 + 2, v3);
  return (*(v4 + 8))(v2, v3, v4);
}

uint64_t sub_100058888()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000588D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100058948()
{
  v0 = sub_100003F6C(&qword_1000BA9B0, &qword_100083A38);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - v2;
  v25 = sub_100003F6C(&qword_1000BA9B8, &qword_100083A40);
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v25 - v5;
  v7 = sub_100003F6C(&qword_1000BA9C0, &qword_100083A48);
  v8 = *(v7 - 8);
  v26 = v7;
  v27 = v8;
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_100003F6C(&qword_1000BA9C8, &qword_100083A50);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  __chkstk_darwin(v11);
  v14 = &v25 - v13;
  v15 = sub_100003F6C(&qword_1000BA9D0, &qword_100083A58);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  __chkstk_darwin(v15);
  v18 = &v25 - v17;
  swift_beginAccess();
  sub_100003F6C(&qword_1000BA9D8, &qword_100083A60);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100004EE0(&qword_1000BA9E0, &qword_1000BA9B0, &qword_100083A38, &protocol conformance descriptor for Published<A>.Publisher);
  sub_10005926C();
  Publisher<>.removeDuplicates()();
  (*(v1 + 8))(v3, v0);
  sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
  sub_100004EE0(&qword_1000BA9F0, &qword_1000BA9B8, &qword_100083A40, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v19 = v25;
  Publisher.map<A>(_:)();
  (*(v4 + 8))(v6, v19);
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  v20 = v26;
  Publishers.Map.map<A>(_:)();
  (*(v27 + 8))(v10, v20);
  sub_100004EE0(&qword_1000BA9F8, &qword_1000BA9C8, &qword_100083A50, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0, &protocol conformance descriptor for Set<A>);
  v21 = v30;
  Publisher<>.removeDuplicates()();
  (*(v31 + 8))(v14, v21);
  sub_100004EE0(&qword_1000BAA00, &qword_1000BA9D0, &qword_100083A58, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v22 = v28;
  v23 = Publisher.eraseToAnyPublisher()();
  (*(v29 + 8))(v18, v22);
  return v23;
}

void sub_100058E98()
{
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC548);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Main participant did change", v2, 2u);
  }
}

uint64_t sub_100058F80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100026B2C(a1, &v6);
  if (*(&v7 + 1))
  {
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = v8;
    v11 = v9;
    sub_100003F6C(&qword_1000BA110, &qword_100083250);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000807D0;
    sub_100030BD0(v10, inited + 32);
    v4 = sub_10004C3EC(inited);
    swift_setDeallocating();
    sub_100030C2C(inited + 32);
    result = sub_100030C2C(v10);
  }

  else
  {
    sub_1000353E0(&v6);
    result = sub_10004C3EC(_swiftEmptyArrayStorage);
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_100059058()
{
  v1 = OBJC_IVAR____TtC15assessmentagent24AEAMainParticipantSource__mainParticipant;
  v2 = sub_100003F6C(&qword_1000BA9D8, &qword_100083A60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAMainParticipantSource(uint64_t a1)
{
  result = qword_1000BA8E8;
  if (!qword_1000BA8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100059154(uint64_t a1)
{
  sub_1000591E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000591E4(uint64_t a1)
{
  if (!qword_1000BA8F8)
  {
    sub_100004B50(&qword_1000BBFF0, &qword_100081B30);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1000BA8F8);
    }
  }
}

unint64_t sub_10005926C()
{
  result = qword_1000BA9E8;
  if (!qword_1000BA9E8)
  {
    sub_100004B50(&qword_1000BBFF0, &qword_100081B30);
    sub_10001FC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA9E8);
  }

  return result;
}

uint64_t sub_1000592F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v42 = a6;
  v43 = a4;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v16 = qword_1000BC5B8;
  *v15 = qword_1000BC5B8;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2)
  {
    *(a3 + 144) = 0;
    swift_errorRetain();
    if (qword_1000B6420 == -1)
    {
LABEL_6:
      v19 = type metadata accessor for Logger();
      sub_10000C370(v19, qword_1000BC518);
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v46 = v23;
        *v22 = 136446210;
        swift_getErrorValue();
        v24 = sub_100067820(v44, v45);
        v26 = sub_100043D60(v24, v25, &v46);

        *(v22 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v20, v21, "An error occurred while beginning the session. Error: %{public}s", v22, 0xCu);
        sub_100003FB4(v23);
      }

      swift_errorRetain();
      v43(a2);
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v28 = sub_10005AD24();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    if (qword_1000B6510 != -1)
    {
      swift_once();
    }

    sub_100003F6C(&qword_1000B9718, &unk_100083BF0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000807D0;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_10003549C();
    *(v32 + 32) = v30;
    *(v32 + 40) = v31;
    v33 = String.init(format:_:)();
    v35 = v34;
  }

  else
  {
    if (qword_1000B6518 != -1)
    {
      swift_once();
    }

    v36 = qword_1000BC708;
    v35 = unk_1000BC710;

    v33 = v36;
  }

  sub_10005A650(v33, v35, 3.0);

  v37 = swift_allocObject();
  v37[2] = a3;
  v37[3] = a1;
  v38 = v43;
  v37[4] = a7;
  v37[5] = v38;
  v37[6] = a5;
  v39 = a1;
  v40 = a7;

  sub_10005F078(v42, sub_10005BF54, v37);
}

uint64_t sub_10005974C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v16 = qword_1000BC5B8;
  *v15 = qword_1000BC5B8;
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  *(a2 + 144) = 0;
  if (!a1)
  {
    goto LABEL_9;
  }

  v33[1] = a6;
  swift_errorRetain();
  if (qword_1000B6420 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v18 = type metadata accessor for Logger();
  sub_10000C370(v18, qword_1000BC518);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33[0] = a5;
    v22 = v21;
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    swift_getErrorValue();
    v24 = sub_100067820(v33[3], v33[4]);
    v26 = sub_100043D60(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "An error occurred while beginning the session. Error: %{public}s", v22, 0xCu);
    sub_100003FB4(v23);

    a5 = v33[0];
  }

  else
  {
  }

LABEL_9:
  if (a3)
  {
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = a4;
    aBlock[4] = sub_10005BFDC;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100059C2C;
    aBlock[3] = &unk_1000A9C30;
    v29 = _Block_copy(aBlock);
    v30 = a4;

    [a3 setInvalidationHandler:v29];
    _Block_release(v29);
  }

  *(a2 + 136) = a3;
  v31 = a3;
  swift_unknownObjectRelease();
  return a5(a1);
}

void sub_100059B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 168) = a1;
    swift_errorRetain();
  }

  v6 = *(a3 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
  v7 = _convertErrorToNSError(_:)();
  aBlock[4] = sub_100009A18;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063398;
  aBlock[3] = &unk_1000A9C58;
  v8 = _Block_copy(aBlock);
  [v6 handleEventDidInvalidateWithError:v7 completion:v8];
  _Block_release(v8);
}

void sub_100059C2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100059C94(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100059D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v10 = qword_1000BC5B8;
  *v9 = qword_1000BC5B8;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  *(a2 + 144) = 0;
  if (!a1)
  {
    return a3(a1);
  }

  swift_errorRetain();
  if (qword_1000B6420 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v12 = type metadata accessor for Logger();
  sub_10000C370(v12, qword_1000BC518);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136446210;
    swift_getErrorValue();
    v17 = sub_100067820(v21[2], v21[3]);
    v19 = sub_100043D60(v17, v18, &v22);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "An error occurred while updating the session. Error: %{public}s", v15, 0xCu);
    sub_100003FB4(v16);
  }

  else
  {
  }

  return a3(a1);
}

uint64_t sub_100059FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v10 = qword_1000BC5B8;
  *v9 = qword_1000BC5B8;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  swift_errorRetain();
  if (qword_1000B6420 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v12 = type metadata accessor for Logger();
  sub_10000C370(v12, qword_1000BC518);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v27 = v16;
    *v15 = 136446210;
    swift_getErrorValue();
    v17 = sub_100067820(v26[2], v26[3]);
    v19 = sub_100043D60(v17, v18, v27);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "An error occurred while ending the session. Error: %{public}s", v15, 0xCu);
    sub_100003FB4(v16);
  }

  else
  {
  }

LABEL_9:
  *(a2 + 136) = 0;
  swift_unknownObjectRelease();
  *(a2 + 144) = 0;
  v20 = *(a2 + 152);
  v21 = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  sub_10000858C(v20, v21);
  v22 = *(a2 + 64);
  ObjectType = swift_getObjectType();
  (*(v22 + 80))(ObjectType, v22);
  v24 = *(a2 + 128);
  swift_beginAccess();
  *(v24 + 24) = _swiftEmptyDictionarySingleton;

  swift_beginAccess();
  *(v24 + 32) = _swiftEmptyDictionarySingleton;

  memset(v27, 0, sizeof(v27));
  swift_beginAccess();
  sub_10005B2A0(v27, v24 + 40);
  swift_endAccess();
  return a3(a1);
}

uint64_t sub_10005A384()
{
  if (*(v0 + 168))
  {
    ErrorValue = swift_getErrorValue();
    v2 = v22;
    v3 = v23;
    v4 = *(v22 - 8);
    __chkstk_darwin(ErrorValue);
    v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    sub_10004C578(sub_10005AFE0, 0, v2, v3);
    LOBYTE(v3) = v7;
    (*(v4 + 8))(v6, v2);
    if (v3)
    {
      v8 = sub_10005AD24();
      if (v9)
      {
        v10 = v8;
        v11 = v9;
        if (qword_1000B6530 == -1)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

      if (qword_1000B6538 != -1)
      {
        swift_once();
      }

      v18 = &qword_1000BC748;
LABEL_15:
      v19 = *v18;
      v17 = v18[1];

      v15 = v19;
      goto LABEL_16;
    }
  }

  v12 = sub_10005AD24();
  if (!v13)
  {
    if (qword_1000B6528 != -1)
    {
      swift_once();
    }

    v18 = &qword_1000BC728;
    goto LABEL_15;
  }

  v10 = v12;
  v11 = v13;
  if (qword_1000B6520 != -1)
  {
LABEL_17:
    swift_once();
  }

LABEL_8:
  sub_100003F6C(&qword_1000B9718, &unk_100083BF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000807D0;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_10003549C();
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  v15 = String.init(format:_:)();
  v17 = v16;
LABEL_16:
  sub_10005A650(v15, v17, 2.1);
}

void sub_10005A650(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = v3[19];
  if (v10)
  {
    v11 = v3[20];
    v12 = v3[14];

    v13 = [v12 showPromptsAndBanners];
    v14 = [v13 value];

    if (v14)
    {
      v15 = [v14 BOOLValue];

      if (v15)
      {
        v16 = type metadata accessor for TaskPriority();
        (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
        type metadata accessor for MainActor();
        sub_100008448(v10, v11);

        v17 = static MainActor.shared.getter();
        v18 = swift_allocObject();
        *(v18 + 16) = v17;
        *(v18 + 24) = &protocol witness table for MainActor;
        *(v18 + 32) = v10;
        *(v18 + 40) = v11;
        *(v18 + 48) = a1;
        *(v18 + 56) = a2;
        *(v18 + 64) = a3;
        sub_10006F6D0(0, 0, v9, &unk_100083BE8, v18);
        sub_10000858C(v10, v11);
      }

      else
      {

        sub_10000858C(v10, v11);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10005A868(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v16 = (a5 + *a5);
  v13 = swift_task_alloc();
  v8[8] = v13;
  *v13 = v8;
  v13[1] = sub_10005A9A0;
  v14.n128_f64[0] = a1;

  return v16(a7, a8, v14);
}

uint64_t sub_10005A9A0()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10005AB5C;
  }

  else
  {
    v4 = sub_10005AAFC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10005AAFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005AB5C()
{
  v12 = v0;

  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC518);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    swift_getErrorValue();
    v6 = sub_100067820(v0[3], v0[4]);
    v8 = sub_100043D60(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to present banner with error: %{public}s", v4, 0xCu);
    sub_100003FB4(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10005AD24()
{
  v1 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(&v13, ObjectType, v1);
  if (*(&v14 + 1))
  {
    v17[1] = v14;
    v17[2] = v15;
    v17[0] = v13;
    v18 = v16;
    v3 = *(&v14 + 1);
    v4 = v15;
    sub_100005A3C(v17, *(&v14 + 1));
    v5 = (*(v4 + 48))(v3, v4);
    v7 = v6;
    v8 = objc_allocWithZone(LSApplicationRecord);
    v9 = sub_10005B030(v5, v7, 0);
    v10 = [v9 localizedName];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100030C2C(v17);
    return v11;
  }

  else
  {
    sub_1000353E0(&v13);
    return 0;
  }
}

uint64_t sub_10005AE70()
{
  sub_100003FB4((v0 + 16));
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 72));

  swift_unknownObjectRelease();
  sub_10000858C(*(v0 + 152), *(v0 + 160));

  return v0;
}

uint64_t sub_10005AED8()
{
  sub_10005AE70();

  return swift_deallocClassInstance();
}

uint64_t sub_10005AF34()
{
  if (*v0)
  {
    if (qword_1000B6490 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC610;
  }

  else
  {
    if (qword_1000B6488 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC600;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_10005AFE0(uint64_t a1)
{
  swift_errorRetain();
  sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  return swift_dynamicCast();
}

id sub_10005B030(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10005B10C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005B154(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000F618;

  return sub_10005A868(v10, a1, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_10005B24C()
{
  result = qword_1000BABC0;
  if (!qword_1000BABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BABC0);
  }

  return result;
}

uint64_t sub_10005B2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA580, &qword_1000836E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B310(uint64_t a1, _BYTE *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v58 = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10000CB28;
  *(v14 + 24) = v13;
  v59 = v14;
  v15 = qword_1000B6460;
  swift_retain_n();

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1000BC5B8;
  *v12 = qword_1000BC5B8;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v16)
  {
    if (*(a3 + 136))
    {
      v63 = 0;
      v64 = 0;

      a4(&v63);
    }

    if (*(a3 + 144))
    {
      sub_10003176C();
      v19 = swift_allocError();
      *v20 = 0;
      v63 = v19;
      v64 = 1;

      swift_errorRetain();
      a4(&v63);
    }

    else
    {
      sub_10003FFDC(a1);
      if (((*(a1 + 81) & 1) != 0 || *(a1 + 82) == 1) && (v58[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI] & 1) == 0)
      {
        v47 = AECoreError();
        swift_willThrow();
        v63 = v47;
        v64 = 1;

        swift_errorRetain();
        a4(&v63);
      }

      *(a3 + 144) = 1;
      *(a3 + 168) = 0;

      v21 = *(a3 + 56);
      v22 = *(a3 + 64);
      ObjectType = swift_getObjectType();
      sub_100030BD0(a1, &v63);
      v24 = *(v22 + 24);
      v56 = v21;
      v24(&v63, ObjectType, v22);
      v57 = a1;
      v25 = *(v22 + 48);

      v25(v26, ObjectType, v22);
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = *(a3 + 152);
      v29 = *(a3 + 160);
      v54 = &unk_100083C88;
      *(a3 + 152) = &unk_100083C88;
      *(a3 + 160) = v27;
      v50 = v27;

      sub_10000858C(v28, v29);
      sub_100030BD0(v57, &v63);
      v49 = v22;
      v30 = *(v22 + 8);
      v55 = ObjectType;
      v52 = v30(ObjectType, v22);
      v51 = (*(v22 + 64))(ObjectType, v22);
      v53 = *(a3 + 128);
      v31 = v53;
      v68 = sub_100003F6C(&qword_1000BABC8, &qword_100083C90);
      v69 = sub_10005BB80();
      v67 = v31;
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = *(a3 + 176);
      v65 = v52;
      v66 = v51;
      v70 = &unk_100083C98;
      v71 = v32;
      v72 = &unk_100083CA0;
      v73 = v33;
      v74 = v54;
      v75 = v50;
      v76 = &unk_100083CA8;
      v77 = v34;
      v78 = &unk_100083CB0;
      v79 = v35;
      v80 = v36;
      v37 = *(a3 + 96);
      v38 = *(a3 + 104);
      sub_100005A3C((a3 + 72), v37);
      v39 = *(v38 + 8);

      v40 = v39(&v63, v37, v38);
      (*(v49 + 72))(v55);
      sub_100019F70(v57, v61);
      v41 = swift_allocObject();
      v42 = v61[3];
      *(v41 + 72) = v61[2];
      *(v41 + 88) = v42;
      *(v41 + 104) = *v62;
      v43 = v61[1];
      *(v41 + 40) = v61[0];
      *(v41 + 16) = a3;
      *(v41 + 24) = sub_10000CB34;
      v44 = v58;
      *(v41 + 32) = v59;
      *(v41 + 119) = *&v62[15];
      *(v41 + 56) = v43;
      *(v41 + 128) = v44;
      v60[4] = sub_10005BE84;
      v60[5] = v41;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 1107296256;
      v60[2] = sub_100059C94;
      v60[3] = &unk_1000A9B90;
      v45 = _Block_copy(v60);

      v46 = v44;

      [v40 activateSessionWithCompletion:v45];
      _Block_release(v45);

      sub_10005BEB0(&v63);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005BA60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005BA98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005BAD0(uint64_t a1, uint64_t a2, double a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10000F618;

  return sub_10000B450(a1, a2, v3, a3);
}

unint64_t sub_10005BB80()
{
  result = qword_1000BABD0;
  if (!qword_1000BABD0)
  {
    sub_100004B50(&qword_1000BABC8, &qword_100083C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BABD0);
  }

  return result;
}

uint64_t sub_10005BBE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001A778;

  return sub_10000ACA4(v0);
}

uint64_t sub_10005BC74()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001A778;

  return sub_10000B010(v0);
}

uint64_t sub_10005BD04()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001A778;

  return sub_10000B85C(v0);
}

uint64_t sub_10005BD94()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001A778;

  return sub_10000BA04(v0);
}

uint64_t sub_10005BE24()
{

  sub_100003FB4((v0 + 40));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_10005BE98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005BF04()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005BF64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005BF9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10005BFF8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AEAUserNotificationError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AEAUserNotificationError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AEAUserNotificationError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_10005C088(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005C0A4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

__n128 sub_10005C0D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10005C0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10005C13C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10005C1B4()
{
  result = qword_1000BABD8[0];
  if (!qword_1000BABD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BABD8);
  }

  return result;
}

uint64_t sub_10005C2B4(uint64_t a1)
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

uint64_t sub_10005C458()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_10005C568()
{

  return swift_deallocClassInstance();
}

__n128 sub_10005C5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10005C5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005C638(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10005C69C()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v9 - 8);
  __chkstk_darwin(v9);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v8 = sub_10005C8E0();
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_10005C92C();
  sub_100003F6C(&qword_1000BADC8, &qword_100083FA0);
  sub_100004EE0(&qword_1000BADD0, &qword_1000BADC8, &qword_100083FA0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  v5 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = v10;
  *(v10 + 16) = v5;
  *(v6 + 24) = dispatch_group_create();
  return v6;
}

unint64_t sub_10005C8E0()
{
  result = qword_1000B9CD8;
  if (!qword_1000B9CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B9CD8);
  }

  return result;
}

unint64_t sub_10005C92C()
{
  result = qword_1000BADC0;
  if (!qword_1000BADC0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BADC0);
  }

  return result;
}

uint64_t sub_10005C984()
{
  v1 = sub_100003F6C(&qword_1000BADD8, &unk_100083FA8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v18 - v3;
  *&v19[0] = &_swiftEmptySetSingleton;
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  Just.init(_:)();
  sub_100004EE0(&qword_1000BADE0, &qword_1000BADD8, &unk_100083FA8, &protocol conformance descriptor for Just<A>);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v4, v1);
  type metadata accessor for AEAAuxiliaryParticipantAggregatorSource(0);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v6 = swift_allocObject();
  UUID.init()();
  v7 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject;
  v18[1] = &_swiftEmptySetSingleton;
  sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  swift_allocObject();
  *(v6 + v7) = CurrentValueSubject.init(_:)();
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v8 = qword_1000BC5B8;
  v9 = sub_100003F6C(&qword_1000BABC8, &qword_100083C90);
  v10 = swift_allocObject();
  *(v10 + 24) = _swiftEmptyDictionarySingleton;
  *(v10 + 32) = _swiftEmptyDictionarySingleton;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 119) = 0;
  *(v10 + 16) = v8;
  v24 = v9;
  v25 = sub_100004EE0(&qword_1000BABD0, &qword_1000BABC8, &qword_100083C90, &unk_1000843A8);
  v23 = v10;
  type metadata accessor for AEAManagedConfigurationRestrictionStatusManager();
  v11 = swift_allocObject();
  *(v11 + 16) = &_swiftEmptySetSingleton;
  v21 = v5;
  v22 = v6;
  v26 = &unk_100083FB8;
  v27 = 0;
  v28 = &unk_100083FC0;
  v29 = 0;
  v30 = &unk_100083FC8;
  v31 = 0;
  v32 = &unk_100084258;
  v33 = 0;
  v34 = &unk_100084250;
  v35 = 0;
  v36 = v11;
  v12 = v0[3];
  v13 = v0[4];
  sub_100005A3C(v0, v12);
  v14 = *(v13 + 8);
  v15 = v8;
  v16 = v14(v19, v12, v13);
  sub_10005BEB0(v19);
  sub_100003F6C(qword_1000BADE8, &qword_100083FD0);
  result = swift_allocObject();
  *(result + 16) = v16;
  return result;
}

uint64_t sub_10005CD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10005CDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005CE70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10005CF48(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10005CFD4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005CFD4(uint64_t a1)
{
  if (!qword_1000BAED8)
  {
    type metadata accessor for AEAConfigurationProfile.Payload(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_1000BAED8);
    }
  }
}

uint64_t sub_10005D060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 3)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005D130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

uint64_t sub_10005D1EC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005D27C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10005D290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10005D2D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.CalculatorSetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x79)
  {
    goto LABEL_17;
  }

  if (a2 + 135 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 135) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 135;
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

      return (*a1 | (v4 << 8)) - 135;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 135;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x78)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.CalculatorSetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 135 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 135) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x79)
  {
    v4 = 0;
  }

  if (a2 > 0x78)
  {
    v5 = ((a2 - 121) >> 8) + 1;
    *result = a2 - 121;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.NotesSetting(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.AppAccessSetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x78)
  {
    goto LABEL_17;
  }

  if (a2 + 136 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 136) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 136;
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

      return (*a1 | (v4 << 8)) - 136;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 136;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xFFFFFF8F | (16 * ((*a1 >> 1) & 7))) ^ 0x7F;
  if (v6 >= 0x77)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.AppAccessSetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 136 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 136) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x78)
  {
    v4 = 0;
  }

  if (a2 > 0x77)
  {
    v5 = ((a2 - 120) >> 8) + 1;
    *result = a2 - 120;
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
    *result = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.AccessibilitySetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.AccessibilitySetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_10005D8B8()
{
  sub_10005D910();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000BC6A0 = result;
  return result;
}

unint64_t sub_10005D910()
{
  result = qword_1000BAFA8;
  if (!qword_1000BAFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000BAFA8);
  }

  return result;
}

double sub_10005D95C@<D0>(uint64_t a1@<X8>)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [objc_opt_self() auditTokenWithData:isa];

  if (v3)
  {
    [v3 underlyingToken];
    v4 = SecTaskCreateWithAuditToken(0, &v9);
    if (v4)
    {
      v5 = v4;
      v6 = type metadata accessor for AEAConcreteSecurityTaskPrimitives.ConcreteSecurityTask();
      v7 = swift_allocObject();
      *(v7 + 24) = xmmword_1000841C0;
      *(v7 + 16) = v5;
      *(a1 + 24) = v6;
      *(a1 + 32) = &off_1000AA308;

      *a1 = v7;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10005DA74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v1;
  if (v2 == 1)
  {
    v4 = SecTaskCopySigningIdentifier(*(v0 + 16), 0);
    if (v4)
    {
      v5 = v4;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v3 = 0;
      v7 = 0;
    }

    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    *(v0 + 24) = v3;
    *(v0 + 32) = v7;

    sub_10005DB80(v8, v9);
  }

  sub_10005DB94(v1, v2);
  return v3;
}

uint64_t sub_10005DB1C()
{
  sub_10005DB80(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_10005DB80(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10005DB94(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10005DBA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005DBF0(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005DC40(uint64_t a1)
{
  result = type metadata accessor for Optional();
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

uint64_t sub_10005DCF4()
{
  sub_10005DE40();

  v1 = qword_1000BB190;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10005DD60()
{
  sub_10005DCF4();

  return swift_deallocClassInstance();
}

uint64_t sub_10005DDB4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = qword_1000BB190;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t sub_10005DE40()
{
  if (*(v0 + 16))
  {
    v1 = qword_1000BB190;

    sub_10005E1E0(v0 + v1);
  }

  *(v0 + 16) = 0;
}

uint64_t sub_10005DED4(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t sub_10005DF14()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UUID();
  v18 = *(v3 - 8);
  v4 = v18;
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  UUID.init()();
  v17 = *(v2 + 80);
  sub_100004B50(&qword_1000B9C20, &qword_100082A88);
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  v10 = PassthroughSubject.__allocating_init()();
  v11 = *(v4 + 16);
  v11(v7, v9, v3);
  v20 = v10;
  swift_beginAccess();
  sub_10005E54C();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
  type metadata accessor for AEACurrentValueAntiphony.Membership(0, v17, v12, v13);
  v11(v7, v9, v3);
  v14 = sub_10005DDB4(v1, v7);
  type metadata accessor for AnyCancellable();
  v19 = v14;

  swift_getWitnessTable();
  v15 = AnyCancellable.__allocating_init<A>(_:)();
  v19 = v10;
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();

  (*(v18 + 8))(v9, v3);

  return v15;
}

uint64_t sub_10005E1E0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2);
  v7 = 0;
  swift_beginAccess();
  sub_100004B50(&qword_1000B9C20, &qword_100082A88);
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  sub_10005E54C();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

id *sub_10005E360()
{

  v1 = *(*v0 + 14);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10005E404()
{
  sub_10005E360();

  return swift_deallocClassInstance();
}

uint64_t sub_10005E474(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

unint64_t sub_10005E54C()
{
  result = qword_1000B88A0;
  if (!qword_1000B88A0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B88A0);
  }

  return result;
}

id sub_10005E5A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v4 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  __chkstk_darwin(v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  v11 = [v49 dataRepresentation];
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100005A80(v12, v14);
  v16 = [v10 codeForAuditTokenData:isa];

  if (v16)
  {
    v17 = [v16 bundleIdentifier];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v20;
      v48 = v19;

      v21 = [v16 entitlements];
      if (v21)
      {
        v22 = v21;
        v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v23 = 0;
      }

      v27 = sub_10006EF84(v23);
      if (!v27)
      {
        v27 = sub_100022428(_swiftEmptyArrayStorage);
      }

      if (*(v27 + 16) && (v28 = sub_100020DA8(0xD00000000000002BLL, 0x800000010008A310), (v29 & 1) != 0))
      {
        v30 = *(v27 + 56) + 24 * v28;
        v31 = *v30;
        v32 = *(v30 + 8);
        v33 = *(v30 + 16);
        sub_100006174(*v30, v32, *(v30 + 16));

        if (v33 > 1)
        {
          if (v33 == 2)
          {
            sub_100006198(v31, v32, 2);
          }

          else
          {
            sub_100006198(v31, v32, 3);
          }
        }

        else if (!v33)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      LOBYTE(v31) = 0;
LABEL_19:
      v34 = [v16 isTrusted];
      v35 = [v16 teamIdentifier];
      if (v35)
      {
        v36 = v35;
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v40 = [v16 url];
      if (v40)
      {
        v41 = v40;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        swift_unknownObjectRelease();
        v42 = type metadata accessor for URL();
        (*(*(v42 - 8) + 56))(v6, 0, 1, v42);
      }

      else
      {
        swift_unknownObjectRelease();
        v43 = type metadata accessor for URL();
        (*(*(v43 - 8) + 56))(v6, 1, 1, v43);
      }

      *v9 = v34;
      *(v9 + 1) = v37;
      *(v9 + 2) = v39;
      sub_10005EDD4(v6, &v9[*(v7 + 24)]);
      v44 = v48;
      *a2 = v49;
      *(a2 + 8) = v44;
      *(a2 + 16) = v47;
      *(a2 + 24) = v31 & 1;
      v45 = type metadata accessor for AEAParticipant.Process(0);
      sub_10005EE44(v9, a2 + *(v45 + 24));
      (*(*(v45 - 8) + 56))(a2, 0, 1, v45);
      v46 = v49;

      return v46;
    }

    swift_unknownObjectRelease();
  }

  v24 = type metadata accessor for AEAParticipant.Process(0);
  v25 = *(*(v24 - 8) + 56);

  return v25(a2, 1, 1, v24);
}

uint64_t sub_10005EA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32[-v10];
  v12 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  __chkstk_darwin(v12);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = [*(v4 + 16) codeForPid:a1];
  if (v15)
  {
    v16 = v15;
    v34 = a2;
    v17 = a3;

    v33 = [v16 isTrusted];
    v18 = [v16 teamIdentifier];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0;
    }

    v26 = [v16 url];
    v27 = v17;
    if (v26)
    {
      v28 = v26;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v11, 0, 1, v29);
    }

    else
    {
      swift_unknownObjectRelease();
      v30 = type metadata accessor for URL();
      (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    }

    *v14 = v33;
    *(v14 + 1) = v20;
    *(v14 + 2) = v22;
    sub_10005EDD4(v11, &v14[*(v12 + 24)]);
    *a4 = a1;
    *(a4 + 8) = v34;
    *(a4 + 16) = v27;
    *(a4 + 24) = 0;
    v31 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
    sub_10005EE44(v14, a4 + *(v31 + 24));
    return (*(*(v31 - 8) + 56))(a4, 0, 1, v31);
  }

  else
  {
    v23 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
    v24 = *(*(v23 - 8) + 56);

    return v24(a4, 1, 1, v23);
  }
}

uint64_t sub_10005EDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EEA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10005EEF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005EF50(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));

      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
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
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005F078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v28 = a2;
  v27 = type metadata accessor for UUID();
  v6 = *(v27 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v27);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v30 = &v27 - v10;
  sub_100003F6C(&qword_1000BB2F8, &qword_100084480);
  swift_allocObject();
  *&v34[0] = Future.init(_:)();
  sub_100004EE0(&qword_1000BB300, &qword_1000BB2F8, &qword_100084480, &protocol conformance descriptor for Future<A, B>);
  v11 = Publisher.eraseToAnyPublisher()();

  v37 = v11;
  swift_beginAccess();
  v12 = *(v4 + 24);
  v32 = &v37;
  v33 = a1;

  sub_10005EF50(sub_1000608E0, v31, v12);

  v13 = v30;
  UUID.init()();
  v36 = v37;
  v14 = v27;
  (*(v6 + 16))(v9, v13, v27);
  sub_100019F70(a1, v34);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  (*(v6 + 32))(v17 + v15, v9, v14);
  v18 = v17 + v16;
  v19 = v34[3];
  *(v18 + 32) = v34[2];
  *(v18 + 48) = v19;
  *(v18 + 64) = *v35;
  *(v18 + 79) = *&v35[15];
  v20 = v34[1];
  *v18 = v34[0];
  *(v18 + 16) = v20;
  v21 = (v17 + ((v16 + 90) & 0xFFFFFFFFFFFFFFF8));
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;

  sub_100003F6C(&qword_1000BB308, &qword_100084488);
  sub_100004EE0(&qword_1000BB310, &qword_1000BB308, &qword_100084488, &protocol conformance descriptor for AnyPublisher<A, B>);
  v23 = Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v4 + 32);
  *(v4 + 32) = 0x8000000000000000;
  v25 = v30;
  sub_100041030(v23, v30, isUniquelyReferenced_nonNull_native);
  *(v4 + 32) = v36;
  swift_endAccess();

  (*(v6 + 8))(v25, v14);
}

uint64_t sub_10005F484(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v18 = a2;
  v6 = sub_100003F6C(&qword_1000BB318, &qword_100084490);
  v7 = *(v6 - 8);
  v19 = v6;
  v20 = v7;
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v23 = *a2;
  sub_100019F70(a3, v21);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = v21[3];
  *(v10 + 56) = v21[2];
  *(v10 + 72) = v11;
  *(v10 + 88) = *v22;
  *(v10 + 103) = *&v22[15];
  v12 = v21[1];
  *(v10 + 24) = v21[0];
  *(v10 + 40) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100060C80;
  *(v13 + 24) = v10;

  v17 = static Subscribers.Demand.unlimited.getter();
  sub_100003F6C(&qword_1000BB308, &qword_100084488);
  sub_100003F6C(&qword_1000BB2F8, &qword_100084480);
  sub_100004EE0(&qword_1000BB310, &qword_1000BB308, &qword_100084488, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100004EE0(&qword_1000BB300, &qword_1000BB2F8, &qword_100084480, &protocol conformance descriptor for Future<A, B>);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_100004EE0(&qword_1000BB320, &qword_1000BB318, &qword_100084490, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v14 = v19;
  v15 = Publisher.eraseToAnyPublisher()();
  (*(v20 + 8))(v9, v14);
  *v18 = v15;
}

uint64_t sub_10005F75C(uint64_t a1, uint64_t a2)
{
  sub_100019F70(a2, v7);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = v7[3];
  *(v3 + 56) = v7[2];
  *(v3 + 72) = v4;
  *(v3 + 88) = *v8;
  *(v3 + 103) = *&v8[15];
  v5 = v7[1];
  *(v3 + 24) = v7[0];
  *(v3 + 40) = v5;
  sub_100003F6C(&qword_1000BB2F8, &qword_100084480);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_10005F834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_100019F70(a4, v10);
  v12[2] = v10[2];
  v12[3] = v10[3];
  *v13 = v11[0];
  *&v13[15] = *(v11 + 15);
  v12[0] = v10[0];
  v12[1] = v10[1];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100060EBC;
  *(v8 + 24) = v7;
  v14 = sub_100060D18;
  v15 = v8;

  PassthroughSubject.send(_:)();
  return sub_100060D20(v12);
}

uint64_t sub_10005F928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v30 = a5;
  v29 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + 16);
  (*(v13 + 16))(v15, a3, v12);
  sub_100019F70(a4, v40);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v13 + 32))(v19 + v16, v15, v12);
  *(v19 + v17) = v29;
  v20 = v19 + v18;
  v21 = v40[1];
  *v20 = v40[0];
  *(v20 + 16) = v21;
  *(v20 + 79) = *&v41[15];
  v22 = *v41;
  *(v20 + 48) = v40[3];
  *(v20 + 64) = v22;
  *(v20 + 32) = v40[2];
  v23 = (v19 + ((v18 + 90) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  aBlock[4] = sub_100060BD0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000AA6D8;
  v25 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450, &protocol conformance descriptor for [A]);
  v26 = v33;
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v37 + 8))(v26, v27);
  (*(v34 + 8))(v11, v36);
}

uint64_t sub_10005FD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  (*(v13 + 16))(v12, a2);
  swift_beginAccess();
  sub_10003FE1C(0, v12);
  swift_endAccess();
  if (!a3)
  {
    sub_100019F70(a4, v16);
    swift_beginAccess();
    sub_10005B2A0(v16, a1 + 40);
    swift_endAccess();
  }

  return a5(a3);
}

uint64_t sub_10005FEB0(void (*a1)(uint64_t *), uint64_t a2)
{

  sub_10005FF08(v2, a1, a2);
}

uint64_t sub_10005FF08(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v8 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = swift_allocObject();
  v60 = a2;
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = v9;
  v12 = a1[7];
  v11 = a1[8];
  v13 = a1[6];
  v14 = *a1;
  sub_10000859C((a1 + 1), &v64);
  v61 = a3;
  swift_retain_n();
  v15 = v11;
  v16 = v13;
  v17 = v12;
  if ([v15 isEnabled])
  {
    sub_10000859C(&v64, &v62);

    sub_1000546A8(v17, v15, v14, &v62, &v69);
    v46 = v14;
    sub_100003FB4(&v64);
    v26 = v10;
    if (*(v14 + 136))
    {

      v21 = 0;
      v20 = v69;
      v22 = v70;
      v23 = v71;
      v24 = v72;
      v25 = *v73;
      v19 = *&v73[16];
      v18 = *&v73[16] | (v73[18] << 16);
    }

    else
    {
      v20 = v69;
      v22 = v70;
      v23 = v71;
      v24 = v72;
      v25 = *v73;
      v18 = *&v73[16] | (v73[18] << 16);
      v21 = 1;
      v19 = v16;
    }
  }

  else
  {

    sub_100003FB4(&v64);
    v18 = 0;
    v19 = 0;
    v20 = 0uLL;
    v21 = 2;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = v10;
    v46 = v14;
  }

  v76[0] = v20;
  v76[1] = v22;
  v76[2] = v23;
  v76[3] = v24;
  v76[4] = v25;
  v77 = *&v18 & 0xFFFFFFLL;
  v78 = v19;
  v79 = v21;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10000CB28;
  *(v27 + 24) = v26;
  sub_100060810(v76, &v69);
  if (!v75)
  {
    v66 = v71;
    v67 = v72;
    v68[0] = *v73;
    *(v68 + 15) = *&v73[15];
    v64 = v69;
    v65 = v70;
    v30 = qword_1000B6460;
    swift_retain_n();
    if (v30 != -1)
    {
      swift_once();
    }

    v31 = qword_1000BC5B8;
    *v8 = qword_1000BC5B8;
    v33 = v58;
    v32 = v59;
    (*(v58 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v59);
    v34 = v31;
    LOBYTE(v31) = _dispatchPreconditionTest(_:)();
    (*(v33 + 8))(v8, v32);
    if ((v31 & 1) == 0)
    {
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_14;
    }

    if (*(v46 + 144))
    {
      sub_10003176C();
      v35 = swift_allocError();
      *v36 = 0;
      v62 = v35;
      v63 = 1;
      swift_errorRetain();
      v60(&v62);
    }

    else
    {
      sub_10003FFDC(&v64);
      if (((BYTE1(v68[1]) & 1) != 0 || BYTE2(v68[1]) == 1) && (*(v16 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI) & 1) == 0)
      {
        v57 = AECoreError();
        swift_willThrow();
        v62 = v57;
        v63 = 1;
        swift_errorRetain();
        v60(&v62);

        goto LABEL_21;
      }

      *(v46 + 144) = 1;
      v49 = *(v46 + 64);
      ObjectType = swift_getObjectType();
      sub_100030BD0(&v64, &v62);
      (*(v49 + 24))(&v62, ObjectType, v49);
      v51 = *(v46 + 64);
      v52 = swift_getObjectType();
      v53 = v46;
      v54 = *(v51 + 48);

      v54(v55, v52, v51);
      v56 = swift_allocObject();
      v56[2] = v53;
      v56[3] = sub_10000CB34;
      v56[4] = v27;

      sub_10005F078(&v64, sub_10006087C, v56);
    }

LABEL_21:
    sub_10005682C(&v64);
    sub_100060848(v76);
    goto LABEL_25;
  }

  if (v75 == 1)
  {
    v28 = v74;
    v66 = v71;
    v67 = v72;
    v68[0] = *v73;
    *(v68 + 15) = *&v73[15];
    v64 = v69;
    v65 = v70;
    swift_retain_n();
    v29 = v61;

    sub_10005B310(&v64, v28, v46, v60, v29);

    sub_10005682C(&v64);
    sub_100060848(v76);
LABEL_25:
  }

  v37 = qword_1000B6460;
  swift_retain_n();
  if (v37 != -1)
  {
    goto LABEL_33;
  }

LABEL_14:
  v38 = qword_1000BC5B8;
  *v8 = qword_1000BC5B8;
  v40 = v58;
  v39 = v59;
  (*(v58 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v59);
  v41 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  result = (*(v40 + 8))(v8, v39);
  if (v38)
  {
    v43 = *(v46 + 136);
    if (v43)
    {
      if (*(v46 + 144))
      {
        sub_10003176C();
        v44 = swift_allocError();
        *v45 = 0;
        *&v64 = v44;
        BYTE8(v64) = 1;
        swift_unknownObjectRetain();
        swift_errorRetain();
        v60(&v64);

        swift_unknownObjectRelease();
      }

      else
      {
        *(v46 + 144) = 1;
        swift_unknownObjectRetain();
        sub_10005A384();
        v47 = swift_allocObject();
        v47[2] = v46;
        v47[3] = sub_10000CB34;
        v47[4] = v27;
        *&v66 = sub_100031748;
        *(&v66 + 1) = v47;
        *&v64 = _NSConcreteStackBlock;
        *(&v64 + 1) = 1107296256;
        *&v65 = sub_100063398;
        *(&v65 + 1) = &unk_1000AA660;
        v48 = _Block_copy(&v64);

        [v43 deactivateWithCompletion:v48];
        _Block_release(v48);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      *&v64 = 0;
      BYTE8(v64) = 0;
      v60(&v64);
    }

    sub_100060848(v76);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000607D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060888()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000608C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100060900()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_100003FB4((v0 + v5));

  return _swift_deallocObject(v0, ((v5 + 90) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100060A08(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = (v1 + ((v5 + 90) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *a1;

  return sub_10005F928(v10, v6, v1 + v4, v1 + v5, v8, v9);
}

uint64_t sub_100060AB8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  sub_100003FB4((v0 + v5));

  return _swift_deallocObject(v0, ((v5 + 90) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_100060BD0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + ((v4 + 90) & 0xFFFFFFFFFFFFFFF8));

  return sub_10005FD58(v5, v0 + v2, v6, v0 + v4, v7);
}

uint64_t sub_100060C8C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_100060CBC()
{

  sub_100003FB4((v0 + 24));

  return _swift_deallocObject(v0, 107, 7);
}

uint64_t sub_100060D20(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BB328, &qword_100084498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100060D88(uint64_t a1)
{
  if ((*(a1 + 96) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

__n128 sub_100060DA4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100060DD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 97))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 96);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100060E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_100060E60(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t sub_100060EC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100005A3C(a1, a1[3]);
  sub_10000859C(*v6 + 168, v69);
  v7 = sub_10001A19C(v69, v70);
  __chkstk_darwin(v7);
  v9 = (&v63[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v67 = v12;
  v68 = &off_1000A7928;
  *&v66 = v11;
  type metadata accessor for AEAPolicyStore();
  v13 = swift_allocObject();
  v14 = sub_10001A19C(&v66, v12);
  __chkstk_darwin(v14);
  v16 = (&v63[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v13[5] = v12;
  v13[6] = &off_1000A7928;
  v13[2] = v18;
  sub_100003FB4(&v66);
  sub_100003FB4(v69);
  sub_1000616D0(a2, &v66);
  if (v67)
  {
    sub_100008748(&v66, v69);
  }

  else
  {
    v70 = &type metadata for AEAiOSPolicyBundleFactory;
    v71 = &off_1000ABE30;
    v19 = swift_allocObject();
    v69[0] = v19;
    sub_10000859C(a1, v19 + 16);
    *(v19 + 56) = v13;
    v20 = v67;

    if (v20)
    {
      sub_100003F04(&v66);
    }
  }

  v21 = sub_100005A3C(a1, a1[3]);
  sub_10000859C(*v21 + 384, &v66);
  v22 = sub_10001A19C(&v66, v67);
  __chkstk_darwin(v22);
  v24 = (&v63[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = type metadata accessor for AEAConcreteSecurityTaskPrimitives();
  v64 = v27;
  v65 = &off_1000AA318;
  v63[0] = v26;
  v62 = type metadata accessor for AEAiOSOSProcessLift();
  v28 = swift_allocObject();
  v29 = sub_10001A19C(v63, v27);
  __chkstk_darwin(v29);
  v31 = (&v63[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;
  v28[5] = v27;
  v28[6] = &off_1000AA318;
  v28[2] = v33;
  sub_100003FB4(v63);
  sub_100003FB4(&v66);
  v34 = sub_100005A3C(a1, a1[3]);
  sub_10000859C(*v34 + 424, &v66);
  v35 = sub_10001A19C(&v66, v67);
  __chkstk_darwin(v35);
  v37 = (&v63[-1] - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v40 = type metadata accessor for AEAConcreteRunningBoardPrimitives();
  v64 = v40;
  v65 = &off_1000A86F8;
  v63[0] = v39;
  type metadata accessor for AEAiOSParticipantManager(0);
  v41 = swift_allocObject();
  v42 = sub_10001A19C(v63, v40);
  __chkstk_darwin(v42);
  v44 = (&v63[-1] - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v44;

  v47 = sub_100061D2C(v46, v28, v41);
  sub_100003FB4(v63);
  sub_100003FB4(&v66);
  v48 = sub_100005A3C(a1, a1[3]);
  sub_10000859C(*v48 + 320, &v66);
  sub_10000859C(v69, v63);
  sub_100005A3C(a1, a1[3]);

  v49 = sub_10006AD78();
  v50 = sub_10001A19C(&v66, v67);
  __chkstk_darwin(v50);
  v52 = (&v63[-1] - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = sub_10006199C(*v52, v47, v28, v63, v49);
  sub_100003FB4(&v66);
  sub_10000859C(a1, &v66);
  v55 = swift_allocObject();
  sub_100008748(&v66, v55 + 16);
  sub_10000859C(a1, &v66);
  v56 = swift_allocObject();
  sub_100008748(&v66, v56 + 16);
  *(v56 + 56) = v54;
  v58 = a1[3];
  v57 = a1[4];
  v59 = sub_100005A3C(a1, v58);
  a3[3] = v58;
  a3[4] = *(v57 + 8);
  v60 = sub_100004F80(a3);
  (*(*(v58 - 8) + 16))(v60, v59, v58);
  sub_10000859C(v69, (a3 + 7));
  a3[16] = v62;
  a3[17] = &off_1000AC0C8;

  a3[5] = v47;
  a3[6] = &off_1000A9980;
  a3[12] = v54;
  a3[13] = v28;
  a3[18] = sub_100061FE4;
  a3[19] = v55;
  a3[20] = sub_100062054;
  a3[21] = v56;
  return sub_100003FB4(v69);
}

uint64_t sub_1000616D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B6578, &qword_10007F640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061758(uint64_t a1, void *a2)
{
  sub_100003F6C(&qword_1000BB338, &qword_100084578);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100083800;
  v4 = *sub_100005A3C(a2, a2[3]);
  v5 = *sub_100005A3C(a2, a2[3]);
  v6 = *(*sub_100005A3C(a2, a2[3]) + 504);
  v7 = sub_100005A3C((v4 + 168), *(v4 + 192));
  v8 = sub_100005A3C((v5 + 592), *(v5 + 616));
  v9 = *v7;
  v10 = *v8;
  swift_unknownObjectRetain();
  v11 = sub_10006226C(v9, v10, v6);
  swift_unknownObjectRelease();
  *(v3 + 32) = v11;
  *(v3 + 40) = sub_10005C984();
  return v3;
}

uint64_t sub_10006184C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100003F6C(&qword_1000BB330, &qword_100084570);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100083800;
  v9 = *(*sub_100005A3C(a3, a3[3]) + 144);
  v10 = type metadata accessor for AEAActiveRestrictionUUIDFetchingService();
  objc_allocWithZone(v10);
  swift_unknownObjectRetain();

  v11 = sub_10001E324(v9, a4);
  *(v8 + 56) = v10;
  *(v8 + 64) = &off_1000A7970;
  *(v8 + 32) = v11;
  v12 = *(*sub_100005A3C(a3, a3[3]) + 144);
  sub_100023F48(a1, v17);
  v13 = type metadata accessor for AEAAssessmentModeService();
  v14 = objc_allocWithZone(v13);
  swift_unknownObjectRetain();

  v15 = sub_10006516C(v12, v17, a2);
  swift_unknownObjectRelease();

  *(v8 + 96) = v13;
  *(v8 + 104) = &off_1000AAB80;
  *(v8 + 72) = v15;
  return v8;
}

uint64_t sub_10006199C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for AEAConcreteLaunchServicesPrimitives();
  v36[3] = v9;
  v36[4] = &off_1000AC480;
  v36[0] = a1;

  type metadata accessor for AEAAssessmentSessionManager();
  v10 = swift_allocObject();
  v11 = sub_10001A19C(v36, v9);
  v12 = *(v9 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v31 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (&v30 - v31);
  v32 = *(v12 + 16);
  v32(&v30 - v31);
  v15 = *v14;
  v35[3] = v9;
  v35[4] = &off_1000AC480;
  v35[0] = v15;
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v16 = qword_1000BC5B8;
  sub_100003F6C(&qword_1000BABC8, &qword_100083C90);
  v17 = swift_allocObject();
  *(v17 + 24) = _swiftEmptyDictionarySingleton;
  *(v17 + 32) = _swiftEmptyDictionarySingleton;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 119) = 0;
  *(v17 + 16) = v16;
  *(v10 + 128) = v17;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  type metadata accessor for AEAManagedConfigurationRestrictionStatusManager();
  *(v10 + 160) = 0;
  *(v10 + 168) = 0;
  *(v10 + 152) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  *(v10 + 176) = v18;
  sub_10000859C(v35, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 64) = &off_1000A9980;
  sub_10000859C(a4, v10 + 72);
  *(v10 + 112) = a5;
  sub_10000859C(v35, v34);
  v19 = sub_10001A19C(v34, v34[3]);
  __chkstk_darwin(v19);
  v21 = (&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v33[3] = v9;
  v33[4] = &off_1000AC480;
  v33[0] = v23;
  type metadata accessor for AEAAssessmentSessionConfigurationValidator();
  v24 = swift_allocObject();
  v25 = sub_10001A19C(v33, v9);
  __chkstk_darwin(v25);
  v26 = (&v30 - v31);
  v32(&v30 - v31);
  v27 = *v26;
  v24[5] = v9;
  v24[6] = &off_1000AC480;
  v24[2] = v27;
  v28 = v16;
  sub_100003FB4(a4);
  sub_100003FB4(v35);
  sub_100003FB4(v33);
  sub_100003FB4(v34);
  *(v10 + 120) = v24;
  sub_100003FB4(v36);
  return v10;
}

uint64_t sub_100061D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  v23 = type metadata accessor for AEAiOSOSProcessLift();
  v24 = &off_1000AC0C8;
  *&v22 = a2;
  v20 = type metadata accessor for AEAConcreteRunningBoardPrimitives();
  v21 = &off_1000A86F8;
  *&v19 = a1;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  v14 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager__candidateProcesses;
  v18 = &_swiftEmptySetSingleton;
  sub_100003F6C(&unk_1000B7360, &unk_100081AA0);
  Published.init(initialValue:)();
  (*(v11 + 32))(a3 + v14, v13, v10);
  v15 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager__participants;
  v18 = &_swiftEmptySetSingleton;
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  Published.init(initialValue:)();
  (*(v7 + 32))(a3 + v15, v9, v6);
  *(a3 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager_subscriptions) = _swiftEmptyArrayStorage;
  *(a3 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___mainParticipantSource) = 0;
  *(a3 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___configurationParticipantSource) = 0;
  *(a3 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___participantSources) = 0;
  sub_100008748(&v22, a3 + 56);
  sub_100008748(&v19, a3 + 16);
  return a3;
}

uint64_t sub_100061FAC()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062004(void (*a1)(void))
{
  sub_100003FB4((v1 + 16));
  a1(*(v1 + 56));

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_100062060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v23[3] = v6;
  v23[4] = &off_1000A7928;
  v23[0] = a1;
  v7 = type metadata accessor for AEAConcreteMobileKeyBagPrimitives();
  v21 = v7;
  v22 = &off_1000A6410;
  v20[0] = a2;
  type metadata accessor for AEAWaitForReadPermissionTask();
  v8 = swift_allocObject();
  v9 = sub_10001A19C(v23, v6);
  __chkstk_darwin(v9);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10001A19C(v20, v21);
  __chkstk_darwin(v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  *(v8 + 40) = v6;
  *(v8 + 48) = &off_1000A7928;
  *(v8 + 16) = v17;
  *(v8 + 80) = v7;
  *(v8 + 88) = &off_1000A6410;
  *(v8 + 56) = v18;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  *(v8 + 96) = a3;
  sub_100003FB4(v20);
  sub_100003FB4(v23);
  return v8;
}

uint64_t sub_10006226C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[3] = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v22[4] = &off_1000A7928;
  v22[0] = a1;
  v21[3] = type metadata accessor for AEAConcreteMobileKeyBagPrimitives();
  v21[4] = &off_1000A6410;
  v21[0] = a2;
  sub_10000859C(v22, v20);
  sub_10000859C(v21, v19);
  v6 = sub_10001A19C(v20, v20[3]);
  __chkstk_darwin(v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = sub_10001A19C(v19, v19[3]);
  __chkstk_darwin(v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v8;
  v15 = *v12;

  swift_unknownObjectRetain();
  v16 = sub_100062060(v14, v15, a3);
  sub_100003FB4(v19);
  sub_100003FB4(v20);
  sub_100003F6C(&qword_1000BB340, &unk_100084580);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  sub_100003FB4(v22);
  sub_100003FB4(v21);
  return v17;
}

uint64_t sub_1000624A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100062500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_100062570(uint64_t a1, unsigned int a2)
{
  if (a2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = a2 & 1;
  }

  Hasher._combine(_:)(v3);
  if ((a2 & 0xFF00) == 0x200)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = (a2 >> 8) & 1;
  }

  Hasher._combine(_:)(v4);
  if ((a2 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = HIWORD(a2) & 1;
  }

  Hasher._combine(_:)(v5);
  if (HIBYTE(a2) == 2)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = HIBYTE(a2) & 1;
  }

  Hasher._combine(_:)(v6);
}

BOOL sub_10006262C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_100062FE4(v5, v7);
}

uint64_t sub_100062688(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return sub_1000628F4(&v5, &v7) & 1;
}

Swift::Int sub_1000626D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100062728()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100062770()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100062570(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000627C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100062570(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_100062810(unsigned int a1, unsigned int a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }
  }

  else if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 0xFF00) == 0x200)
  {
    if (BYTE1(a2) != 2)
    {
      return 0;
    }
  }

  else if (BYTE1(a2) == 2 || ((((a1 & 0x100) == 0) ^ (a2 >> 8)) & 1) == 0)
  {
    return 0;
  }

  if ((a1 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a2) != 2)
    {
      return 0;
    }
  }

  else if (BYTE2(a2) == 2 || ((((a1 & 0x10000) == 0) ^ HIWORD(a2)) & 1) == 0)
  {
    return 0;
  }

  v2 = HIBYTE(a2);
  if (HIBYTE(a1) == 2)
  {
    if (v2 == 2)
    {
      return 1;
    }
  }

  else if (v2 != 2 && ((v2 ^ HIBYTE(a1)) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1000628F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v12 = a1[5];
  v13 = a2[5];
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
  {
    return 0;
  }

  v14 = a1[6];
  v15 = a2[6];
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v15 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v16 = a1[7];
  v17 = a2[7];
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v17 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v18 = a1[8];
  v19 = a2[8];
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
  {
    return 0;
  }

  v20 = a1[9];
  v21 = a2[9];
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v21 ^ v20) & 1) != 0)
  {
    return 0;
  }

  v22 = a1[10];
  v23 = a2[10];
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v24 = a1[11];
  v25 = a2[11];
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
  {
    return 0;
  }

  v26 = a1[12];
  v27 = a2[12];
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v28 = a1[13];
  v29 = a2[13];
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
  {
    return 0;
  }

  v30 = a1[14];
  v31 = a2[14];
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v31 ^ v30) & 1) != 0)
  {
    return 0;
  }

  v32 = a1[15];
  v33 = a2[15];
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else if (v33 == 2 || ((v33 ^ v32) & 1) != 0)
  {
    return 0;
  }

  v34 = a1[16];
  v35 = a2[16];
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      return 0;
    }
  }

  else if (v35 == 2 || ((v35 ^ v34) & 1) != 0)
  {
    return 0;
  }

  v36 = a1[17];
  v37 = a2[17];
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      return 0;
    }
  }

  else if (v37 == 2 || ((v37 ^ v36) & 1) != 0)
  {
    return 0;
  }

  v38 = a1[18];
  v39 = a2[18];
  if (v38 == 2)
  {
    if (v39 != 2)
    {
      return 0;
    }
  }

  else if (v39 == 2 || ((v39 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v40 = a1[19];
  v41 = a2[19];
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v41 ^ v40) & 1) != 0)
  {
    return 0;
  }

  v42 = a1[20];
  v43 = a2[20];
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      return 0;
    }
  }

  else if (v43 == 2 || ((v43 ^ v42) & 1) != 0)
  {
    return 0;
  }

  v44 = a1[21];
  v45 = a2[21];
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else if (v45 == 2 || ((v45 ^ v44) & 1) != 0)
  {
    return 0;
  }

  v46 = a1[22];
  v47 = a2[22];
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else if (v47 == 2 || ((v47 ^ v46) & 1) != 0)
  {
    return 0;
  }

  v48 = a1[23];
  v49 = a2[23];
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      return 0;
    }
  }

  else if (v49 == 2 || ((v49 ^ v48) & 1) != 0)
  {
    return 0;
  }

  v50 = a1[24];
  v51 = a2[24];
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else if (v51 == 2 || ((v51 ^ v50) & 1) != 0)
  {
    return 0;
  }

  v52 = a1[25];
  v53 = a2[25];
  if (v52 == 2)
  {
    if (v53 != 2)
    {
      return 0;
    }
  }

  else if (v53 == 2 || ((v53 ^ v52) & 1) != 0)
  {
    return 0;
  }

  v54 = a1[26];
  v55 = a2[26];
  if (v54 == 2)
  {
    if (v55 != 2)
    {
      return 0;
    }
  }

  else if (v55 == 2 || ((v55 ^ v54) & 1) != 0)
  {
    return 0;
  }

  v56 = a1[27];
  v57 = a2[27];
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      return 0;
    }
  }

  else if (v57 == 2 || ((v57 ^ v56) & 1) != 0)
  {
    return 0;
  }

  v58 = a1[28];
  v59 = a2[28];
  if (v58 == 2)
  {
    if (v59 != 2)
    {
      return 0;
    }
  }

  else if (v59 == 2 || ((v59 ^ v58) & 1) != 0)
  {
    return 0;
  }

  v60 = a1[29];
  v61 = a2[29];
  if (v60 == 2)
  {
    if (v61 != 2)
    {
      return 0;
    }
  }

  else if (v61 == 2 || ((v61 ^ v60) & 1) != 0)
  {
    return 0;
  }

  v62 = a1[30];
  v63 = a2[30];
  if (v62 == 2)
  {
    if (v63 != 2)
    {
      return 0;
    }
  }

  else if (v63 == 2 || ((v63 ^ v62) & 1) != 0)
  {
    return 0;
  }

  v64 = a1[31];
  v65 = a2[31];
  if (v64 == 2)
  {
    if (v65 != 2)
    {
      return 0;
    }
  }

  else if (v65 == 2 || ((v65 ^ v64) & 1) != 0)
  {
    return 0;
  }

  v66 = a1[32];
  v67 = a2[32];
  if (v66 == 2)
  {
    if (v67 != 2)
    {
      return 0;
    }
  }

  else if (v67 == 2 || ((v67 ^ v66) & 1) != 0)
  {
    return 0;
  }

  v68 = a1[33];
  v69 = a2[33];
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      return 0;
    }
  }

  else if (v69 == 2 || ((v69 ^ v68) & 1) != 0)
  {
    return 0;
  }

  v70 = a1[34];
  v71 = a2[34];
  if (v70 == 2)
  {
    if (v71 != 2)
    {
      return 0;
    }
  }

  else if (v71 == 2 || ((v71 ^ v70) & 1) != 0)
  {
    return 0;
  }

  v72 = *(a1 + 35);
  v73 = *(a2 + 35);
  if (v72 == 3)
  {
    if (v73 == 3)
    {
      return 1;
    }
  }

  else if (v73 != 3 && (sub_100062810(v72, v73) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

BOOL sub_100062FE4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(*a2, *a1), v5), vdupq_n_s64(3uLL)));
  if (v6.i8[4])
  {
    if ((v6.i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6.i8[0])
    {
      return 0;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 32) | ((*(a1 + 36) | (*(a1 + 38) << 16)) << 32);
    v9 = *(a2 + 16);
    v10 = *(a2 + 32) | ((*(a2 + 36) | (*(a2 + 38) << 16)) << 32);
    v20[0] = *a2;
    v20[1] = v9;
    v21 = v10;
    v23 = BYTE6(v10);
    v22 = WORD2(v10);
    v16[0] = v4;
    v16[1] = v7;
    v17 = v8;
    v19 = BYTE6(v8);
    v18 = WORD2(v8);
    if ((sub_1000628F4(v16, v20) & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 40);
  v12 = *(a2 + 40);
  if (v11)
  {
    if (!v12 || (sub_1000061BC(v11, v12) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13)
  {
    return v14 && (sub_1000061BC(v13, v14) & 1) != 0;
  }

  return !v14;
}

__n128 sub_100063114(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100063128(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[39])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100063188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 39) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 39) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1000631EC()
{
  result = qword_1000BB348;
  if (!qword_1000BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB348);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AEAManagedConfigurationRestrictions.Features.CalculatorFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[4])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AEAManagedConfigurationRestrictions.Features.CalculatorFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_100063300()
{
  result = qword_1000BB350;
  if (!qword_1000BB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB350);
  }

  return result;
}

uint64_t sub_100063354(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100063398(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100063404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 16);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_100065520;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000AAD18;
  v16 = _Block_copy(aBlock);

  sub_100008448(a2, a3);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

void sub_1000636C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 24);
  dispatch_group_enter(v18);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v17 = qword_1000BC5B8;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_10006557C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000AAD68;
  v16 = _Block_copy(aBlock);

  sub_100008448(a3, a4);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);

  OS_dispatch_group.wait()();
}

uint64_t sub_1000639D4()
{
  if (qword_1000B64A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC630;

  return v0;
}

id sub_100063A3C()
{
  [*&v0[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_XPCListener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAAssessmentModeService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100063C1C()
{
  sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  sub_100004EE0(&qword_1000B8548, &qword_1000B8540, &qword_100080FD0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100063D14(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v19[1] = qword_1000BC5B8;
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a1;
  aBlock[4] = sub_1000645C0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000AAC00;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  v17 = a1;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v20);
}

void sub_100063FFC(char *a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4)
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C370(v8, qword_1000BC518);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Publisher attempting to connect", v11, 2u);
  }

  if (*&a1[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection])
  {
    sub_1000644EC();
    v12 = swift_allocError();
    a2(0, v12);
  }

  else
  {
    v13 = *&a1[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_xpc];
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a1;
    v15 = qword_1000B6460;

    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = [objc_opt_self() proxyWithEndpoint:a4 queue:qword_1000BC5B8];
    v18 = swift_allocObject();
    v18[2] = sub_100064624;
    v18[3] = v14;
    v18[4] = v13;
    v18[5] = v17;
    v21[4] = sub_10006467C;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_100063398;
    v21[3] = &unk_1000AAC78;
    v19 = _Block_copy(v21);

    swift_unknownObjectRetain();
    v20 = v17;

    [v20 handleEventDidBeginWithCompletion:v19];
    _Block_release(v19);
  }
}

uint64_t sub_1000642E8(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return (a3)(0, a1, a3, a4, a5);
  }

  v7 = *(a5 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection);
  *(a5 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection) = a1;
  v8 = a1;

  *&v8[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_delegate + 8] = &off_1000AAB68;
  swift_unknownObjectWeakAssign();
  sub_1000095CC();
  v9 = [*&v8[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener] endpoint];
  a3();

  sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  sub_100004EE0(&qword_1000BB428, &qword_1000B8540, &qword_100080FD0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Subject<>.send()();
}

unint64_t sub_1000644EC()
{
  result = qword_1000BB418;
  if (!qword_1000BB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB418);
  }

  return result;
}

uint64_t sub_100064540()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064578()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000645CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000645E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064634()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100064688(void *a1, char a2, char *a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v10 = qword_1000BC5B8;
  *v9 = qword_1000BC5B8;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_1000B6420 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v12 = type metadata accessor for Logger();
  sub_10000C370(v12, qword_1000BC518);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67240192;
    *(v15 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "Assessment source did disconnect, gracefully: %{BOOL,public}d", v15, 8u);
  }

  v16 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection];
  if (v16 && (type metadata accessor for AEAClientConnection(), v17 = v16, v18 = a1, v19 = static NSObject.== infix(_:_:)(), v18, v17, (v19 & 1) != 0))
  {
    v20 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource + 40];
    sub_100003F6C(&qword_1000BB430, &unk_1000848C0);
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *&v18[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_delegate + 8] = 0;
    swift_unknownObjectWeakAssign();
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = Publishers.AEACombineLatestMany.init(_:);
    v22[4] = 0;

    v23 = a3;
    sub_100063404(v21, sub_1000656E4, v22);
  }

  else
  {

    sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
    sub_100004EE0(&qword_1000BB428, &qword_1000B8540, &qword_100080FD0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }
}

uint64_t sub_100064A20(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  if (*(a1 + 8) == 1)
  {
    v5 = *a1;
    swift_errorRetain();
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C370(v6, qword_1000BC518);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    sub_100010904(v5, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = sub_100067820(v16, v17);
      v13 = sub_100043D60(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found error while cleaning up from disconnect. Error: %{public}s", v9, 0xCu);
      sub_100003FB4(v10);

      sub_100010904(v5, 1);
    }

    else
    {

      sub_100010904(v5, 1);
    }
  }

  v14 = *(a2 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection);
  *(a2 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection) = 0;

  a3();

  sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  sub_100004EE0(&qword_1000BB428, &qword_1000B8540, &qword_100080FD0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  Subject<>.send()();
}

uint64_t sub_100064C6C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0;
  }

  return a2(v2);
}

uint64_t sub_100064CB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(*v7 + 88);

  sub_100008448(a3, a4);
  v9(sub_1000655D4, v8);
}

uint64_t sub_100064D7C(void *a1, char a2, char *a3, void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = qword_1000B6460;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1000BC5B8;
  *v13 = qword_1000BC5B8;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v16)
  {
    if (qword_1000B6420 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v18 = type metadata accessor for Logger();
  sub_10000C370(v18, qword_1000BC518);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67240192;
    *(v21 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "Assessment source did disconnect, gracefully: %{BOOL,public}d", v21, 8u);
  }

  v22 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection];
  if (v22 && (type metadata accessor for AEAClientConnection(), v23 = v22, v24 = a1, v25 = static NSObject.== infix(_:_:)(), v24, v23, (v25 & 1) != 0))
  {
    v26 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource + 40];
    sub_100003F6C(&qword_1000BB430, &unk_1000848C0);
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *&v24[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_delegate + 8] = 0;
    swift_unknownObjectWeakAssign();
    v28 = swift_allocObject();
    v28[2] = a3;
    v28[3] = sub_100065504;
    v28[4] = v14;

    v29 = a3;

    sub_100063404(v27, sub_100065510, v28);
  }

  else
  {
    a4(0);

    sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
    sub_100004EE0(&qword_1000BB428, &qword_1000B8540, &qword_100080FD0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();
  }
}

char *sub_10006516C(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection] = 0;
  v7 = OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_activityStatusDidChangeSubject;
  sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  swift_allocObject();
  *&v3[v7] = PassthroughSubject.init()();
  *&v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_xpc] = a1;
  sub_100023F48(a2, &v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource]);
  *&v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskQueue] = a3;
  swift_unknownObjectRetain();

  v8 = [a1 makeSourceRegisteringListener];
  *&v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_XPCListener] = v8;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for AEAAssessmentModeService();
  v9 = objc_msgSendSuper2(&v11, "init");
  [*&v9[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_XPCListener] setDelegate:v9];
  sub_100023D58(a2);
  return v9;
}

id sub_100065290(void *a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_xpc) connectionCanRegisterAsAssessmentSource:a1];
  if (v4)
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C370(v5, qword_1000BC518);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Configuring new connection for assessment source…", v8, 2u);
    }

    v9 = [objc_allocWithZone(AEAssessmentStateSourceRegisteringXPCInterfaceFactory) init];
    v10 = [v9 makeInterface];

    [a1 setExportedInterface:v10];
    [a1 setExportedObject:v2];
    v11 = &selRef_resume;
  }

  else
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C370(v12, qword_1000BC518);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Invalid assessment source. Invalidating connection.", v15, 2u);
    }

    v11 = &selRef_invalidate;
  }

  [a1 *v11];
  return v4;
}

uint64_t sub_1000654CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006552C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006558C()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000655D4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = v4;
  dispatch_group_leave(*(v2 + 24));
  if (v3)
  {
    v3(&v5);
  }
}

uint64_t sub_100065628()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10006567C()
{
  result = qword_1000BB438;
  if (!qword_1000BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB438);
  }

  return result;
}

unint64_t sub_1000656F8()
{
  result = qword_1000BB440;
  if (!qword_1000BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB440);
  }

  return result;
}

uint64_t sub_10006574C()
{
  if (*v0)
  {
    if (qword_1000B6478 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC5E0;
  }

  else
  {
    if (qword_1000B6470 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC5D0;
  }

  v2 = *v1;

  return v2;
}

unint64_t sub_10006580C()
{
  result = qword_1000BB448;
  if (!qword_1000BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB448);
  }

  return result;
}

uint64_t sub_100065878()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100065938, 0, 0);
}

uint64_t sub_100065938()
{
  v1 = v0[2];
  v2 = [objc_opt_self() assessmentModeFileURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(*sub_100005A3C((v1 + 24), *(v1 + 48)) + 16);
  URL.path.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 fileExistsAtPath:v4];

  if (v5)
  {
    sub_100005A3C((v1 + 24), *(v1 + 48));
    sub_10001D88C();
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    [*(v0[2] + 64) postSystemNotificationWithName:AEAssessmentStateDidChangeNotificationName];
    (*(v7 + 8))(v6, v8);
  }

  else
  {
    sub_1000656F8();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    (*(v0[4] + 8))(v0[5], v0[3]);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_100065AF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A778;

  return sub_100065878();
}

double sub_100065B80@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 numberForKey:v5];

  if (v6)
  {
    if ([v6 BOOLValue])
    {
      *(a2 + 24) = &type metadata for AEAAssessmentStateDeactivation;
      *(a2 + 32) = &off_1000AB088;
      v7 = swift_allocObject();
      *a2 = v7;
      sub_10000859C(v2 + 24, (v7 + 5));
      v8 = *(v2 + 64);
      swift_unknownObjectRetain();

      v7[2] = 0xD00000000000002CLL;
      v7[3] = 0x800000010008A420;
      v7[4] = 5;
      v7[10] = v8;
      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_100065C98(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100065D88, 0, 0);
}

uint64_t sub_100065D88()
{
  v1 = v0[4];
  sub_100005C1C();
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setNumber:isa forKey:v3];

  v0[2] = 0;
  v4 = [v1 persistWithError:v0 + 2];
  v5 = v0[2];
  if (v4)
  {
    v6 = v0[5];
    v7 = objc_opt_self();
    v8 = v5;
    v9 = [v7 assessmentModeFileURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = *(*sub_100005A3C((v6 + 24), *(v6 + 48)) + 16);
    URL.path.getter();
    v11 = String._bridgeToObjectiveC()();

    LOBYTE(v10) = [v10 fileExistsAtPath:v11];

    v12 = v0[8];
    if ((v10 & 1) == 0)
    {
      sub_100005A3C((v6 + 24), *(v6 + 48));
      sub_1000660E8(v12, 0, 0xC000000000000000);
      v18 = v0[7];
      v17 = v0[8];
      v19 = v0[6];
      v21 = v0[3];
      v22 = *(v0[5] + 64);
      [v22 postSystemNotificationWithName:AEAssessmentStateDidChangeNotificationName];
      v21[3] = &type metadata for AEAAssessmentStateDeactivation;
      v21[4] = &off_1000AB088;
      v23 = swift_allocObject();
      *v21 = v23;
      sub_10000859C(v6 + 24, (v23 + 5));
      v23[2] = 0xD00000000000002CLL;
      v23[3] = 0x800000010008A420;
      v23[4] = 5;
      v23[10] = v22;
      v24 = *(v18 + 8);
      swift_unknownObjectRetain();
      v24(v17, v19);

      v25 = v0[1];
      goto LABEL_7;
    }

    v13 = v0[6];
    v14 = v0[7];
    sub_1000656F8();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    (*(v14 + 8))(v12, v13);
  }

  else
  {
    v16 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v25 = v0[1];
LABEL_7:

  return v25();
}

uint64_t sub_1000660E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100003F6C(&qword_1000BB450, &qword_100084B08);
  v8 = __chkstk_darwin(v7 - 8);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = v42 - v10;
  v45 = type metadata accessor for URL();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URLResourceValues();
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = __chkstk_darwin(v12);
  v48 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v51 = v42 - v16;
  __chkstk_darwin(v15);
  v55 = v42 - v17;
  v18 = type metadata accessor for CocoaError.Code();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10001D6DC(a2, a3, a1, 2);
  if (v3)
  {
    swift_errorRetain();
    static CocoaError.fileWriteFileExists.getter();
    sub_10001DF10();
    v23 = static _ErrorCodeProtocol.~= infix(_:_:)();

    result = (*(v19 + 8))(v21, v18);
    if (v23)
    {

      sub_100003F6C(&qword_1000B9398, &unk_100084B10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000807D0;
      *(inited + 32) = NSURLContentModificationDateKey;
      v25 = NSURLContentModificationDateKey;
      sub_100030788(inited);
      swift_setDeallocating();
      sub_1000667D0(inited + 32);
      v26 = v55;
      v27 = a1;
      URL.resourceValues(forKeys:)();

      v28 = v44;
      v29 = v43;
      v30 = v45;
      (*(v44 + 16))(v43, v27, v45);
      v31 = v49;
      v42[0] = *(v49 + 16);
      v42[1] = v49 + 16;
      v32 = v50;
      (v42[0])(v51, v26, v50);
      v33 = type metadata accessor for AEAConcreteFileSystemPrimitives.ConcreteURLResourceValues(0);
      v34 = swift_allocObject();
      (*(v28 + 32))(v34 + OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingURL, v29, v30);
      (*(v31 + 32))(v34 + OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues, v51, v32);
      v53 = v33;
      v54 = &off_1000A78F8;
      v52[0] = v34;
      v35 = *(v31 + 8);
      v36 = v32;
      v35(v55, v32);
      v37 = v47;
      Date.init()();
      v38 = type metadata accessor for Date();
      (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
      sub_10001A19C(v52, v53);
      sub_10006682C(v37, v46);
      swift_beginAccess();
      URLResourceValues.contentModificationDate.setter();
      swift_endAccess();
      sub_10006689C(v37);
      v39 = *sub_100005A3C(v52, v53);
      v40 = OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues;
      swift_beginAccess();
      v41 = v48;
      (v42[0])(v48, v39 + v40, v36);
      swift_beginAccess();
      URL.setResourceValues(_:)();
      v35(v41, v36);
      swift_endAccess();
      return sub_100003FB4(v52);
    }
  }

  return result;
}

uint64_t sub_1000666E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_100065C98(a1, a2);
}

uint64_t sub_100066788()
{

  sub_100003FB4((v0 + 40));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000667D0(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006682C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BB450, &qword_100084B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006689C(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BB450, &qword_100084B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006692C()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_10006767C(v2);
}

uint64_t sub_1000669C0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "shouldRestoreStageManagerMode";
  }

  else
  {
    v2 = "com.apple.Health";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "shouldRestoreStageManagerMode";
  }

  else
  {
    v4 = "com.apple.Health";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_100066A64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100066ADC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100066B40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100066BB4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A61B0, *a1);

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

void sub_100066C14(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "shouldRestoreStageManagerMode";
  }

  else
  {
    v2 = "com.apple.Health";
  }

  *a1 = 0xD00000000000001DLL;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_100066C4C@<X0>(uint64_t *a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v24 = 0;
  v6 = sub_1000674C0();
  v7 = sub_10000DA80(&v24, ObjectType, &type metadata for AEAMultitaskingModeActivation.ScratchpadKey, v6);
  if (v7 == 2 || (v7 & 1) == 0)
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else
  {
    v8 = sub_100072DF4(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v8 + 2);
    v10 = *(v8 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v22 = v9 + 1;
      v19 = v8;
      v20 = *(v8 + 2);
      v21 = sub_100072DF4((v10 > 1), v9 + 1, 1, v19);
      v9 = v20;
      v11 = v22;
      v8 = v21;
    }

    *(v8 + 2) = v11;
    v8[v9 + 32] = 0;
  }

  v23 = 1;
  v12 = sub_10000DA80(&v23, ObjectType, &type metadata for AEAMultitaskingModeActivation.ScratchpadKey, v6);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100072DF4(0, *(v8 + 2) + 1, 1, v8);
    }

    v14 = *(v8 + 2);
    v13 = *(v8 + 3);
    if (v14 >= v13 >> 1)
    {
      v8 = sub_100072DF4((v13 > 1), v14 + 1, 1, v8);
    }

    *(v8 + 2) = v14 + 1;
    v8[v14 + 32] = 1;
  }

  if (*(v8 + 2))
  {
    v15 = swift_allocObject();
    *(v15 + 16) = 0xD00000000000002ELL;
    *(v15 + 24) = 0x800000010008A490;
    *(v15 + 32) = 5;
    *(v15 + 40) = v8;
    *(v15 + 48) = *(v3 + 24);
    result = swift_unknownObjectRetain();
    v17 = &off_1000AB2C0;
    v18 = &type metadata for AEAMultitaskingModeDeactivation;
  }

  else
  {

    v15 = 0;
    v18 = 0;
    v17 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v15;
  a2[3] = v18;
  a2[4] = v17;
  return result;
}

uint64_t sub_100066E60(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;

  return _swift_task_switch(sub_100066EF4, 0, 0);
}

uint64_t sub_100066EF4()
{
  if (qword_1000B6540 != -1)
  {
    swift_once();
  }

  v1 = qword_1000BC758;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    v4 = sub_100072DF4(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100072DF4((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v4[v6 + 32] = 0;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v1 BOOLForKey:v7];

  if (v8)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100072DF4(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    v11 = v10 + 1;
    if (v10 >= v9 >> 1)
    {
      v4 = sub_100072DF4((v9 > 1), v10 + 1, 1, v4);
    }

    *(v4 + 2) = v11;
    v4[v10 + 32] = 1;
  }

  else
  {
    v11 = *(v4 + 2);
    if (!v11)
    {
      v29 = *(v0 + 24);

      *(v29 + 32) = 0;
      *v29 = 0u;
      *(v29 + 16) = 0u;
      goto LABEL_25;
    }
  }

  ObjectType = swift_getObjectType();
  v13 = v4 + 32;
  v14 = 32;
  v15 = sub_1000674C0();
  do
  {
    *(v0 + 16) = v4[v14];
    sub_10000D958(1, v0 + 16, ObjectType, &type metadata for AEAMultitaskingModeActivation.ScratchpadKey, v15);
    ++v14;
    --v11;
  }

  while (v11);
  v16 = *(v0 + 32);
  *(v0 + 16) = 0;
  v17 = [v16 persistWithError:v0 + 16];
  v18 = *(v0 + 16);
  if ((v17 & 1) == 0)
  {
    v23 = v18;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v24 = *(v0 + 8);
    goto LABEL_26;
  }

  v19 = *(v4 + 2);
  v20 = v18;

  for (; v19; --v19)
  {
    v22.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v21 = String._bridgeToObjectiveC()();
    [v1 setValue:v22.super.super.isa forKey:v21];

    ++v13;
  }

  v25 = *(v0 + 40);
  v26 = *(v0 + 24);

  v27 = swift_allocObject();
  v28 = *(v25 + 24);
  v26[3] = &type metadata for AEAMultitaskingModeDeactivation;
  v26[4] = &off_1000AB2C0;
  *v26 = v27;
  *(v27 + 16) = 0xD00000000000002ELL;
  *(v27 + 24) = 0x800000010008A490;
  *(v27 + 32) = 5;
  *(v27 + 40) = v4;
  *(v27 + 48) = v28;
  swift_unknownObjectRetain();
LABEL_25:
  v24 = *(v0 + 8);
LABEL_26:

  return v24();
}

uint64_t sub_100067310(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 56) = v7;
  *v7 = v3;
  v7[1] = sub_1000673CC;

  return sub_100066E60(a1, a2);
}

uint64_t sub_1000673CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1000674C0()
{
  result = qword_1000BB458;
  if (!qword_1000BB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB458);
  }

  return result;
}

uint64_t sub_100067514()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

__n128 sub_10006755C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100067570(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000675B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100067628()
{
  result = qword_1000BB460;
  if (!qword_1000BB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB460);
  }

  return result;
}

uint64_t sub_10006769C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      if (*v3)
      {
        if (qword_1000B6540 != -1)
        {
          swift_once();
        }
      }

      else if (qword_1000B6540 != -1)
      {
        swift_once();
      }

      v4 = qword_1000BC758;
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v6 = String._bridgeToObjectiveC()();
      [v4 setValue:isa forKey:v6];

      ++v3;
      --v2;
    }

    while (v2);
  }

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_100067820(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v3 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  v9 = [v8 ae_verboseDescription];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t sub_1000679A0()
{
  if (qword_1000B6480 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC5F0;

  return v0;
}

uint64_t sub_100067A08()
{
  if (*(v0 + 64) == 1)
  {
    *(v0 + 64) = 0;
    if (*(v0 + 72))
    {

      AnyCancellable.cancel()();
    }

    *(v0 + 72) = 0;

    sub_10006842C();
  }

  sub_100003FB4((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_100067AC4()
{
  if ((*(v0 + 64) & 1) == 0)
  {
    *(v0 + 64) = 1;
    swift_allocObject();
    swift_weakInit();

    sub_100003F6C(&qword_1000B93B8, &qword_100082038);
    sub_100067C9C();
    v1 = v0;
    v2 = Publisher<>.sink(receiveValue:)();

    *(v1 + 72) = v2;
  }
}

unint64_t sub_100067BA8()
{
  result = qword_1000BB570;
  if (!qword_1000BB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB570);
  }

  return result;
}

uint64_t sub_100067BFC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067C34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10006865C(v2);
  }

  return result;
}

unint64_t sub_100067C9C()
{
  result = qword_1000B93D0;
  if (!qword_1000B93D0)
  {
    sub_100004B50(&qword_1000B93B8, &qword_100082038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B93D0);
  }

  return result;
}

uint64_t sub_100067D00()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A778;

  return sub_100068520(v2);
}

uint64_t sub_100067D94(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = type metadata accessor for AgentActor();
  v2[15] = swift_initStaticObject();
  v3 = swift_task_alloc();
  v2[16] = v3;
  *v3 = v2;
  v3[1] = sub_100067E88;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x6C6C416573756170, 0xEA00000000002928, sub_10006A640, 0, &type metadata for () + 8);
}

uint64_t sub_100067E88()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100068280;
  }

  else
  {
    v2 = sub_100067F9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100067F9C()
{
  sub_10001CFA8();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100068018, v1, v0);
}

uint64_t sub_100068018()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_10000859C(v1 + 24, (v0 + 2));
  v3 = *(v1 + 64);
  v4 = v0[5];
  v5 = sub_10001A19C((v0 + 2), v4);
  v6 = *(v4 - 8);
  v7 = swift_task_alloc();
  (*(v6 + 16))(v7, v5, v4);
  v8 = *v7;
  v9 = type metadata accessor for AEAConcreteMediaPrimitives();
  v0[10] = v9;
  v0[11] = &off_1000AB7B0;
  v0[7] = v8;
  type metadata accessor for AEARestrictMediaAssertion();
  v10 = swift_allocObject();
  v11 = sub_10001A19C((v0 + 7), v9);
  v12 = *(v9 - 8);
  v13 = swift_task_alloc();
  (*(v12 + 16))(v13, v11, v9);
  v14 = *v13;
  *(v10 + 40) = v9;
  *(v10 + 48) = &off_1000AB7B0;
  *(v10 + 56) = v3;
  *(v10 + 16) = v14;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;

  sub_100003FB4(v0 + 7);

  sub_100003FB4(v0 + 2);

  sub_100067AC4();
  v2[3] = &type metadata for AEARestrictMediaDeactivation;
  v2[4] = &off_1000AB520;
  v15 = swift_allocObject();
  *v2 = v15;
  v15[2] = 0xD000000000000022;
  v15[3] = 0x800000010008A540;
  v15[4] = 4;
  v15[5] = v10;
  v16 = v0[1];

  return v16();
}

uint64_t sub_100068280()
{
  sub_10001CFA8();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000682FC, v1, v0);
}

uint64_t sub_1000682FC()
{
  sub_100067BA8();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100068394(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_100067D94(a1);
}

uint64_t sub_10006842C()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC518);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Restoring media commands to all processes", v3, 2u);
  }

  sub_10006A884(_swiftEmptyArrayStorage);
}

uint64_t sub_100068520(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_10001CFA8();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000685B8, v3, v2);
}

uint64_t sub_1000685B8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 64) == 1)
  {
    *(v1 + 64) = 0;
    if (*(v1 + 72))
    {

      AnyCancellable.cancel()();
    }

    *(v1 + 72) = 0;

    sub_10006842C();
  }

  v2 = *(v0 + 8);

  return v2();
}

void sub_10006865C(uint64_t a1)
{
  if (qword_1000B6420 != -1)
  {
LABEL_22:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v29[0] = v6;
    *v5 = 136446210;
    sub_10002C1E4();
    v7 = Set.description.getter();
    v9 = sub_100043D60(v7, v8, v29);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Restricting media commands to participants: %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v10 = _swiftEmptyArrayStorage;
  v32 = _swiftEmptyArrayStorage;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (!v13)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_7:
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_100030BD0(*(a1 + 48) + 56 * (v16 | (v15 << 6)), v29);
      v17 = v30;
      v18 = v31;
      sub_100005A3C(v29, v30);
      v19 = (*(v18 + 32))(v17, v18);
      sub_100030C2C(v29);
      if (v19)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_9;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = v32;
  }

  while (v13);
  while (1)
  {
LABEL_9:
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v20 >= v14)
    {
      break;
    }

    v13 = *(a1 + 56 + 8 * v20);
    ++v15;
    if (v13)
    {
      v15 = v20;
      goto LABEL_7;
    }
  }

  sub_10006A884(v10);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29[0] = v24;
    *v23 = 136446210;
    sub_100068A34();
    v25 = Array.description.getter();
    v27 = v26;

    v28 = sub_100043D60(v25, v27, v29);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "Successfully restricted media commands to participants with audit tokens: %{public}s", v23, 0xCu);
    sub_100003FB4(v24);
  }

  else
  {
  }
}

unint64_t sub_100068A34()
{
  result = qword_1000B87B8;
  if (!qword_1000B87B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B87B8);
  }

  return result;
}

unint64_t sub_100068A94()
{
  result = qword_1000BB578;
  if (!qword_1000BB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB578);
  }

  return result;
}

uint64_t sub_100068AF8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100068B48(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_100068B88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C370(v6, qword_1000BC518);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Beginning task for verifying agent read permission before proceeding", v9, 2u);
  }

  v10 = v3[16];
  v11 = v3[17];
  v3[16] = a1;
  v3[17] = a2;

  sub_10000858C(v10, v11);
  sub_10006979C();
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v12 = qword_1000BC5B8;
  v13 = swift_allocObject();
  result = swift_weakInit();
  if (kMobileKeyBagLockStatusNotifyToken)
  {

    String.init(cString:)();
    v15 = String._bridgeToObjectiveC()();

    v27 = sub_100069EC4;
    v28 = v13;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100063354;
    v26 = &unk_1000AB5B8;
    v16 = _Block_copy(&v23);
    v17 = objc_opt_self();
    v18 = [v17 observationWithNotificationName:v15 queue:v12 notificationHandler:v16];

    _Block_release(v16);

    v3[14] = v18;
    swift_unknownObjectRelease();
    v19 = swift_allocObject();
    swift_weakInit();

    v20 = String._bridgeToObjectiveC()();
    v27 = sub_100069EA0;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100063354;
    v26 = &unk_1000AB5E0;
    v21 = _Block_copy(&v23);
    v22 = [v17 observationWithNotificationName:v20 queue:v12 notificationHandler:v21];

    _Block_release(v21);

    v3[15] = v22;
    swift_unknownObjectRelease();
    sub_100005A3C(v3 + 2, v3[5]);
    result = sub_100068F8C();
    if (result)
    {
      return sub_100069AE4();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100068F18(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100005A3C((result + 16), *(result + 40));
    if (sub_100068F8C())
    {
      sub_100069AE4();
    }
  }

  return result;
}

uint64_t sub_100068F8C()
{
  v0 = type metadata accessor for CocoaError.Code();
  v38[4] = *(v0 - 8);
  __chkstk_darwin(v0);
  v38[3] = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v38 - v8;
  __chkstk_darwin(v7);
  v11 = v38 - v10;
  v12 = [objc_opt_self() assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_10001DA3C(v11);
  v39 = *(v3 + 8);
  v39(v11, v2);
  if (*(v13 + 2))
  {
    v14 = *(v3 + 16);
    v14(v9, &v13[(*(v3 + 80) + 32) & ~*(v3 + 80)], v2);
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = sub_10000C370(v15, qword_1000BC518);
    v14(v6, v9, v2);

    v38[2] = v16;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v38[1] = v0;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v38[0] = v9;
      v21 = v20;
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 134349314;
      v23 = *(v13 + 2);

      *(v21 + 4) = v23;

      *(v21 + 12) = 2082;
      sub_100069DF0();
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v39(v6, v2);
      v27 = sub_100043D60(v24, v26, &v40);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "Found %{public}ld scratchpad(s). Using this scratchpad to check read permission: %{public}s", v21, 0x16u);
      sub_100003FB4(v22);

      v9 = v38[0];
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v39(v6, v2);
    }

    v32 = Data.init(contentsOf:options:)();
    sub_100005A80(v32, v33);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Agent has read permission and needs recovery", v36, 2u);
    }

    v39(v9, v2);
  }

  else
  {

    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C370(v28, qword_1000BC518);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "No policy store or no scratchpads --> recovery not needed", v31, 2u);
    }
  }

  return 1;
}

uint64_t sub_10006979C()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    [v1 cancel];
  }

  v2 = *(v0 + 96);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v3 = qword_1000BC5B8;
  v4 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_100069E80;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100063354;
  v8[3] = &unk_1000AB590;
  v5 = _Block_copy(v8);

  v6 = [v2 scheduledTimerWithDuration:v3 queue:v5 handler:60.0];
  _Block_release(v5);
  *(v0 + 104) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000698E8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100069940();
  }

  return result;
}

uint64_t sub_100069940()
{
  v1 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Permission polling timer did fire", v5, 2u);
  }

  sub_100005A3C((v1 + 16), *(v1 + 40));
  if (sub_100068F8C())
  {

    return sub_100069AE4();
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Agent still does not have read permission. Restarting timer…", v9, 2u);
    }

    return sub_10006979C();
  }
}

uint64_t sub_100069AE4()
{
  v1 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Agent has read permission. Proceeding…", v5, 2u);
  }

  v6 = v1[13];
  if (v6)
  {
    [v6 cancel];
  }

  v1[13] = 0;
  swift_unknownObjectRelease();
  v7 = v1[14];
  if (v7)
  {
    [v7 invalidate];
  }

  v1[14] = 0;
  swift_unknownObjectRelease();
  v8 = v1[15];
  if (v8)
  {
    [v8 invalidate];
  }

  v1[15] = 0;
  result = swift_unknownObjectRelease();
  v10 = v1[16];
  if (v10)
  {
    v11 = v1[17];
    v1[16] = 0;
    v1[17] = 0;
    v10(0, 0);

    return sub_10000858C(v10, v11);
  }

  return result;
}

uint64_t sub_100069C68()
{
  sub_100003FB4(v0 + 2);
  sub_100003FB4(v0 + 7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10000858C(v0[16], v0[17]);

  return swift_deallocClassInstance();
}

uint64_t sub_100069CF4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_100068B88(sub_100069DB0, v4);
}

uint64_t sub_100069D78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100069DB0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

unint64_t sub_100069DF0()
{
  result = qword_1000B9390;
  if (!qword_1000B9390)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B9390);
  }

  return result;
}

uint64_t sub_100069E48()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100069E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100069ED0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100069F1C()
{
  sub_100005A3C((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  type metadata accessor for AEAConcretePasteboardPrimitives();
  sub_10000C804();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100069FBC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;

  return _swift_task_switch(sub_10006A050, 0, 0);
}

uint64_t sub_10006A050()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_100005A3C((v2 + 24), *(v2 + 48));
  type metadata accessor for AEAConcretePasteboardPrimitives();
  sub_10000C804();
  swift_getObjectType();
  sub_10000D8C0(1);
  v0[2] = 0;
  v3 = [v1 persistWithError:v0 + 2];
  v4 = v0[2];
  if (v3)
  {
    v5 = v0[3];
    v5[3] = &type metadata for AEAPasteboardDeactivation;
    v5[4] = &off_1000AB790;
    v6 = swift_allocObject();
    *v5 = v6;
    sub_10000859C(v2 + 24, (v6 + 5));
    v6[2] = 0xD00000000000002ALL;
    v6[3] = 0x800000010008A670;
    v6[4] = 5;
    v11 = v0[1];
    v7 = v4;
    v8 = v11;
  }

  else
  {
    v9 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_10006A238@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for AEAPasteboardDeactivation;
  a1[4] = &off_1000AB790;
  v3 = swift_allocObject();
  *a1 = v3;
  result = sub_10000859C(v1 + 24, (v3 + 5));
  v3[2] = 0xD00000000000002ALL;
  v3[3] = 0x800000010008A670;
  v3[4] = 5;
  return result;
}

uint64_t sub_10006A2C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_100069FBC(a1, a2);
}

uint64_t sub_10006A368()
{

  sub_100003FB4((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10006A3A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10006A3F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006A458()
{
  sub_100003F6C(&qword_1000B98B0, &unk_100085130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  result = kMRMediaRemoteOptionAssistantSetQueueTrueCompletion;
  if (kMRMediaRemoteOptionAssistantSetQueueTrueCompletion)
  {
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v2;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = 1;
    v3 = sub_100021EC0(inited);
    swift_setDeallocating();
    result = sub_10006AD10(inited + 32);
    qword_1000BB6F0 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10006A50C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_10006A5E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAConcreteMediaPrimitives.MediaRemoteAuditToken();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10006A640(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BB7D8, &qword_100085128);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  if (qword_1000B64E0 != -1)
  {
    swift_once();
  }

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_10006AC8C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006A50C;
  aBlock[3] = &unk_1000AB7F0;
  v9 = _Block_copy(aBlock);

  MRMediaRemoteSendCommandWithReply();
  _Block_release(v9);
}

void *sub_10006A884(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    *&v22[0] = _swiftEmptyArrayStorage;
    v4 = v22;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v5 = objc_opt_self();
    v6 = 0;
    v7 = v2 - 1;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = specialized _ArrayBuffer._getElementSlowPath(_:)(); ; i = *(v1 + 8 * v6 + 32))
    {
      v9 = i;
      [v5 underlyingAuditTokenFromAuditToken:i];
      v10 = type metadata accessor for AEAConcreteMediaPrimitives.MediaRemoteAuditToken();
      v11 = objc_allocWithZone(v10);
      v12 = &v11[OBJC_IVAR____TtCC15assessmentagent26AEAConcreteMediaPrimitivesP33_620CDB64FB7B028F5CC03EEF5D4C490C21MediaRemoteAuditToken_realToken];
      v13 = v26;
      *v12 = v25;
      *(v12 + 1) = v13;
      v24.receiver = v11;
      v24.super_class = v10;
      objc_msgSendSuper2(&v24, "init");

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v7 == v6)
      {
        break;
      }

      ++v6;
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    v3 = *&v22[0];
  }

  if (v3 >> 62)
  {
    sub_100003F6C(&qword_1000BB7D0, &qword_100085120);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  sub_100003F6C(&qword_1000BB7D0, &qword_100085120);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = MRMediaRemoteRestrictCommandClients();

  v4 = _swiftEmptyArrayStorage;
  if (!v15)
  {
    return v4;
  }

  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v1 >> 62))
  {
    v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
LABEL_29:

    return v4;
  }

LABEL_17:
  v23 = v4;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = objc_opt_self();
    v19 = 0;
    if ((v1 & 0xC000000000000001) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    while (1)
    {
      [v20 realToken];
      v22[0] = v25;
      v22[1] = v26;
      v21 = [v18 auditTokenWithUnderlyingAuditToken:v22];
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v16 - 1 == v19)
      {
        break;
      }

      ++v19;
      if ((v1 & 0xC000000000000001) != 0)
      {
        goto LABEL_19;
      }

LABEL_20:
      v20 = *(v1 + 8 * v19 + 32);
      swift_unknownObjectRetain();
    }

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006ABF8()
{
  v1 = sub_100003F6C(&qword_1000BB7D8, &qword_100085128);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006ACF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006AD10(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B8858, &qword_100081570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10006AD78()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v2 = *(v0 + 376);
  }

  else
  {
    v3 = sub_10006ADD4(v0);
    v4 = *(v0 + 376);
    *(v0 + 376) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_10006ADD4(uint64_t a1)
{
  v2 = [objc_allocWithZone(AEOSGestalt) init];
  if ([v2 isInternalOS] && !objc_msgSend(*(a1 + 368), "isBeingTested"))
  {
    v4 = *(a1 + 360);
    v5 = *(a1 + 208);
    if (qword_1000B6460 != -1)
    {
      swift_once();
    }

    v3 = [objc_opt_self() preferencesWithPreferencePrimitives:v4 systemNotificationPrimitives:v5 queue:qword_1000BC5B8];
  }

  else
  {
    v3 = [objc_opt_self() defaultPreferences];
  }

  v6 = v3;

  return v6;
}

uint64_t sub_10006AED0()
{
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 24));
  sub_100003FB4((v0 + 64));
  sub_100003FB4((v0 + 104));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 168));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 224));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 280));
  sub_100003FB4((v0 + 320));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_100003FB4((v0 + 384));
  sub_100003FB4((v0 + 424));
  sub_100003FB4((v0 + 464));
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 512));
  sub_100003FB4((v0 + 552));
  sub_100003FB4((v0 + 592));
  sub_100003FB4((v0 + 632));
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 688));
  return v0;
}

uint64_t sub_10006AFC8()
{
  sub_10006AED0();

  return swift_deallocClassInstance();
}