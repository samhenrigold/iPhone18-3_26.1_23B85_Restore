unint64_t sub_100EA9D20()
{
  result = qword_1016BDEA0;
  if (!qword_1016BDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDEA0);
  }

  return result;
}

uint64_t sub_100EA9D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v93 = a8;
  v106 = a4;
  v90 = a3;
  v95 = a2;
  v91 = a1;
  v92 = a9;
  v16 = 0;
  v103 = type metadata accessor for HashAlgorithm();
  v17 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v88[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v20 = __chkstk_darwin(v19 - 8);
  v94 = &v88[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v96 = &v88[-v22];
  v23 = type metadata accessor for TimeBasedKey(0);
  v104 = *(v23 - 8);
  v105 = v23;
  __chkstk_darwin(v23);
  v25 = &v88[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = a6 >> 1;
  v27 = _swiftEmptyDictionarySingleton;
  v89 = a7;
  if (v26 != a5)
  {
    v100 = enum case for HashAlgorithm.sha256(_:);
    v98 = (v17 + 8);
    v99 = (v17 + 104);
    v97 = a7 & 1;
    if (a5 <= v26)
    {
      v32 = v26;
    }

    else
    {
      v32 = a5;
    }

    v101 = v32;
    while (1)
    {
      LODWORD(v34) = v101;
      if (v101 == a5)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        if (v34 == 1)
        {
          LODWORD(v34) = HIDWORD(v11) - v11;
          if (!__OFSUB__(HIDWORD(v11), v11))
          {
            v87 = v34;
            goto LABEL_58;
          }

          __break(1u);
        }

        if (v34 != 2)
        {
          v87 = BYTE6(isUniquelyReferenced_nonNull_native);
          goto LABEL_58;
        }

        v75 = *(v11 + 16);
        v74 = *(v11 + 24);
        v87 = v74 - v75;
        if (!__OFSUB__(v74, v75))
        {
          goto LABEL_58;
        }

        __break(1u);
LABEL_52:
        v76 = v16;
        v77 = static os_log_type_t.error.getter();
        if (qword_101694BE0 != -1)
        {
          swift_once();
        }

        v78 = qword_10177BA00;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_101385D80;
        v109[0] = v76;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v80 = String.init<A>(describing:)();
        v82 = v81;
        *(v79 + 56) = &type metadata for String;
        *(v79 + 64) = sub_100008C00();
        *(v79 + 32) = v80;
        *(v79 + 40) = v82;
        os_log(_:dso:log:_:_:)(v77, &_mh_execute_header, v78, "Error deriving advertisementKey: %@", 35, 2, v79);

        sub_1001BAF88();
        v83 = swift_allocError();
        *v84 = 0;
        swift_willThrow();

        goto LABEL_55;
      }

      sub_100EB19AC(v106 + *(v104 + 72) * a5, v25, type metadata accessor for TimeBasedKey);
      v35 = sub_100A7A194(*&v25[*(v105 + 24) + 16], *&v25[*(v105 + 24) + 24], 0, 0);
      if (v16)
      {
        goto LABEL_52;
      }

      v11 = sub_100A7829C(v35, 0, 2);
      isUniquelyReferenced_nonNull_native = v36;
      CCECCryptorRelease();
      v34 = isUniquelyReferenced_nonNull_native >> 62;
      v107 = 0;
      if ((isUniquelyReferenced_nonNull_native >> 62) > 1)
      {
        if (v34 != 2)
        {
          goto LABEL_57;
        }

        v40 = *(v11 + 16);
        v39 = *(v11 + 24);
        v41 = __OFSUB__(v39, v40);
        v38 = v39 - v40;
        if (v41)
        {
          goto LABEL_42;
        }

        v37 = v27;
      }

      else if (v34)
      {
        LODWORD(v38) = HIDWORD(v11) - v11;
        if (__OFSUB__(HIDWORD(v11), v11))
        {
          goto LABEL_43;
        }

        v37 = v27;
        v38 = v38;
      }

      else
      {
        v37 = v27;
        v38 = BYTE6(isUniquelyReferenced_nonNull_native);
      }

      if (v38 != 28)
      {
        goto LABEL_44;
      }

      v16 = a5;
      v42 = v25;
      v44 = v102;
      v43 = v103;
      (*v99)(v102, v100, v103);
      v45 = Data.hash(algorithm:)();
      v47 = v46;
      sub_100016590(v11, isUniquelyReferenced_nonNull_native);
      (*v98)(v44, v43);
      v25 = v42;
      v48 = *v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109[0] = v37;
      v49 = sub_100772794(v45, v47);
      v51 = v37[2];
      v52 = (v50 & 1) == 0;
      v41 = __OFADD__(v51, v52);
      v34 = v51 + v52;
      if (v41)
      {
        goto LABEL_40;
      }

      v11 = v50;
      if (v37[3] < v34)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      isUniquelyReferenced_nonNull_native = v49;
      sub_101009FCC();
      v49 = isUniquelyReferenced_nonNull_native;
      v27 = v109[0];
      if (v11)
      {
LABEL_9:
        v33 = v27[7] + 16 * v49;
        *v33 = v48;
        *(v33 + 8) = v97;
        sub_100016590(v45, v47);
        goto LABEL_10;
      }

LABEL_28:
      v27[(v49 >> 6) + 8] |= 1 << v49;
      v54 = (v27[6] + 16 * v49);
      *v54 = v45;
      v54[1] = v47;
      v55 = v27[7] + 16 * v49;
      *v55 = v48;
      *(v55 + 8) = v97;
      v56 = v27[2];
      v41 = __OFADD__(v56, 1);
      v34 = v56 + 1;
      if (v41)
      {
        goto LABEL_41;
      }

      v27[2] = v34;
LABEL_10:
      a5 = v16 + 1;
      sub_100EB07F8(v25);
      v16 = v107;
      if (v26 == a5)
      {
        goto LABEL_2;
      }
    }

    sub_100FF02C8(v34, isUniquelyReferenced_nonNull_native);
    v49 = sub_100772794(v45, v47);
    if ((v11 & 1) != (v53 & 1))
    {
      while (1)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
LABEL_57:
        v87 = 0;
LABEL_58:
        sub_100018350();
        v83 = swift_allocError();
        *v86 = 28;
        *(v86 + 8) = v87;
        *(v86 + 16) = 0;
        swift_willThrow();
        sub_100016590(v11, isUniquelyReferenced_nonNull_native);
LABEL_55:
        v109[0] = 0;
        v109[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(35);
        v85._object = 0x800000010134CB30;
        v85._countAndFlagsBits = 0xD000000000000021;
        String.append(_:)(v85);
        v108 = v83;
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        _print_unlocked<A, B>(_:_:)();
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

LABEL_27:
    v27 = v109[0];
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_2:
  v109[0] = _swiftEmptyDictionarySingleton;
  sub_100E9D064(a11, v109);

  v28 = v89;
  if (v89)
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v30 = v95;
    if ((v29 & 1) == 0)
    {
      v31 = type metadata accessor for DateInterval();
      (*(*(v31 - 8) + 56))(v96, 1, 1, v31);
LABEL_34:
      swift_unknownObjectRelease();

      goto LABEL_36;
    }
  }

  else
  {

    v30 = v95;
  }

  v57 = type metadata accessor for DateInterval();
  v58 = *(v57 - 8);
  v59 = v28;
  v60 = v96;
  (*(v58 + 16))(v96, v30, v57);
  v61 = *(v58 + 56);
  v61(v60, 0, 1, v57);
  if (v59)
  {
    goto LABEL_34;
  }

  v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if ((v62 & 1) == 0)
  {
    (*(v58 + 8))(v30, v57);
    v73 = v94;
    v61(v94, 1, 1, v57);
    v65 = v73;
    goto LABEL_37;
  }

LABEL_36:
  v63 = type metadata accessor for DateInterval();
  v64 = *(v63 - 8);
  v65 = v94;
  (*(v64 + 32))(v94, v30, v63);
  (*(v64 + 56))(v65, 0, 1, v63);
LABEL_37:
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v67 = v92;
  sub_100EB0738(v96, v92 + RequestBeacon[5]);
  sub_100EB0738(v65, v67 + RequestBeacon[6]);
  v68 = v109[0];
  v69 = type metadata accessor for UUID();
  result = (*(*(v69 - 8) + 32))(v67, v91, v69);
  *(v67 + RequestBeacon[7]) = v27;
  v71 = v67 + RequestBeacon[8];
  v72 = BYTE1(v93);
  *v71 = v93;
  *(v71 + 1) = v72 & 1;
  *(v71 + 8) = a10;
  *(v67 + RequestBeacon[9]) = v68;
  return result;
}

unint64_t sub_100EAA7E8()
{
  v3 = 0x7261646E6F636553;
  v4 = *(v0 + *(type metadata accessor for FetchRequestBeacon(0) + 28));
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  v9 = ~v8;
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v10 = v7 & *(v4 + 64);
  v11 = (63 - v8) >> 6;
  swift_bridgeObjectRetain_n();

  v13 = 0;
  do
  {
    if (!v10)
    {
      v14 = v13;
      do
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v15 >= v11)
        {
          if (v11 <= v13 + 1)
          {
            v18 = v13 + 1;
          }

          else
          {
            v18 = v11;
          }

          v51 = v4;
          v52 = v4 + 64;
          v53 = v9;
          v54 = v18 - 1;
          v55 = 0;
          v56 = sub_100EB07F0;
          v57 = v5;
          v58 = sub_100046580;
          v59 = 0;
          v19 = &v51;
LABEL_17:
          sub_10000B3A8(v19, &qword_1016BDEB8, &qword_1013ED100);

          return 0;
        }

        v10 = *(v6 + 8 * v15);
        ++v14;
      }

      while (!v10);
      v13 = v15;
    }

    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = *(v4 + 56) + ((v13 << 10) | (16 * v16));
    v1 = *v17;
    if ((*(v17 + 8) & 1) == 0)
    {

      break;
    }

    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v2 & 1) == 0);
  while (v10)
  {
LABEL_26:
    v22 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v23 = *(v4 + 56) + ((v13 << 10) | (16 * v22));
    v24 = *v23;
    if (*(v23 + 8))
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_30;
      }
    }

    else
    {

LABEL_30:
      if (v24 < v1)
      {
        v1 = v24;
      }
    }
  }

  v20 = v13;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v21 >= v11)
    {
      break;
    }

    v10 = *(v6 + 8 * v21);
    ++v20;
    if (v10)
    {
      v13 = v21;
      goto LABEL_26;
    }
  }

  if (v11 <= v13 + 1)
  {
    v26 = v13 + 1;
  }

  else
  {
    v26 = v11;
  }

  v51 = v4;
  v52 = v4 + 64;
  v53 = v9;
  v54 = v26 - 1;
  v55 = 0;
  v56 = sub_100EB07F0;
  v57 = v5;
  v58 = sub_100046580;
  v59 = 0;
  sub_10000B3A8(&v51, &qword_1016BDEB8, &qword_1013ED100);
  v27 = -1;
  v28 = -1 << *(v4 + 32);
  v41 = ~v28;
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v10 = v27 & *(v4 + 64);
  v13 = (63 - v28) >> 6;

  v11 = 0;
  while (v10)
  {
LABEL_45:
    v31 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v32 = *(v4 + 56) + ((v11 << 10) | (16 * v31));
    v2 = *v32;
    if (*(v32 + 8) == 1)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        continue;
      }
    }

    while (v10)
    {
LABEL_61:
      v37 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v38 = *(v4 + 56) + ((v11 << 10) | (16 * v37));
      v3 = *v38;
      if (*(v38 + 8) == 1)
      {
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v39 & 1) == 0)
        {
          continue;
        }
      }

LABEL_53:
      if (v2 <= v3)
      {
        v2 = v3;
      }
    }

    v35 = v11;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_71;
      }

      if (v36 >= v13)
      {
        if (v13 <= v11 + 1)
        {
          v40 = v11 + 1;
        }

        else
        {
          v40 = v13;
        }

        v42 = v4;
        v43 = v4 + 64;
        v44 = v41;
        v45 = v40 - 1;
        v46 = 0;
        v47 = sub_100EB07F0;
        v48 = v5;
        v49 = sub_100046580;
        v50 = 0;
        sub_10000B3A8(&v42, &qword_1016BDEB8, &qword_1013ED100);

        if (v2 < v1)
        {
          goto LABEL_72;
        }

        return v1;
      }

      v10 = *(v6 + 8 * v36);
      ++v35;
      if (v10)
      {
        v11 = v36;
        goto LABEL_61;
      }
    }
  }

  v29 = v11;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v13)
    {
      if (v13 <= v11 + 1)
      {
        v34 = v11 + 1;
      }

      else
      {
        v34 = v13;
      }

      v42 = v4;
      v43 = v4 + 64;
      v44 = v41;
      v45 = v34 - 1;
      v46 = 0;
      v47 = sub_100EB07F0;
      v48 = v5;
      v49 = sub_100046580;
      v50 = 0;
      v19 = &v42;
      goto LABEL_17;
    }

    v10 = *(v6 + 8 * v30);
    ++v29;
    if (v10)
    {
      v11 = v30;
      goto LABEL_45;
    }
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_100EAAD78(char a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(57);
  v5._countAndFlagsBits = 0xD000000000000022;
  v5._object = 0x8000000101372B20;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v6._object = 0x8000000101372B50;
  v6._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v6);
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    a2 = 0x74657320746F6ELL;
    v7 = 0xE700000000000000;
  }

  v8._countAndFlagsBits = a2;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 93;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0;
}

Swift::Int sub_100EAAE8C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B32160(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 2))
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1000BC4D4(&qword_1016B3AD0, &qword_1013D4878);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_100EAF8AC(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100EAAFFC()
{
  v0 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  sub_100044B3C(v0, qword_1016BDE88);
  v1 = sub_1000076D4(v0, qword_1016BDE88);
  *v1 = sub_100281AE0;
  v1[1] = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_100EAB098(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6974737561687865;
  }

  else
  {
    v3 = 0x6F4C74736574616CLL;
  }

  if (v2)
  {
    v4 = 0xEE006E6F69746163;
  }

  else
  {
    v4 = 0xEA00000000006576;
  }

  if (*a2)
  {
    v5 = 0x6974737561687865;
  }

  else
  {
    v5 = 0x6F4C74736574616CLL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006576;
  }

  else
  {
    v6 = 0xEE006E6F69746163;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100EAB150()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EAB1E4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100EAB264(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EAB2F4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AEA0, *a1);

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

void sub_100EAB354(uint64_t *a1@<X8>)
{
  v2 = 0x6F4C74736574616CLL;
  if (*v1)
  {
    v2 = 0x6974737561687865;
  }

  v3 = 0xEE006E6F69746163;
  if (*v1)
  {
    v3 = 0xEA00000000006576;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100EAB3F4(__int16 a1, uint64_t a2)
{
  _StringGuts.grow(_:)(52);
  v2._object = 0x8000000101372B00;
  v2._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x203A65646F6D202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._countAndFlagsBits = 0x203A65676170202CLL;
  v5._object = 0xE800000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 23854;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_100EAB53C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = BYTE1(a2);
  v6 = sub_1000BC4D4(&qword_1016BE0C8, &qword_1013ED888);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_100EB23DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v14 = v4 & 1;
    v13 = 1;
    sub_100EB2430();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100EAB6E8()
{
  v1 = 1701080941;
  if (*v0 != 1)
  {
    v1 = 1701273968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72617069746C756DLL;
  }
}

uint64_t sub_100EAB740@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100EB2BB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100EAB768(uint64_t a1)
{
  v2 = sub_100EB23DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAB7A4(uint64_t a1)
{
  v2 = sub_100EB23DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EAB7E0(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100EAB53C(a1, v2 | *v1, *(v1 + 1));
}

uint64_t sub_100EAB814()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_100EAB3F4(v1 | *v0, *(v0 + 1));
}

Swift::Int sub_100EAB840()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EAB934(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100EABA14(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100EABB04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2248(*a1);
  *a2 = result;
  return result;
}

void sub_100EABB34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x7461447472617473;
  v5 = 0xE300000000000000;
  v6 = 7562345;
  v7 = 0xEC00000073644979;
  v8 = 0x7261646E6F636573;
  if (v2 != 3)
  {
    v8 = 0x6F43686372616573;
    v7 = 0xED0000747865746ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65746144646E65;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100EABBE4()
{
  v1 = *v0;
  v2 = 0x7461447472617473;
  v3 = 7562345;
  v4 = 0x7261646E6F636573;
  if (v1 != 3)
  {
    v4 = 0x6F43686372616573;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65746144646E65;
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

unint64_t sub_100EABC90@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2248(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100EABCB8(uint64_t a1)
{
  v2 = sub_100EB2388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EABCF4(uint64_t a1)
{
  v2 = sub_100EB2388();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100EABD30(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v160 = a2;
  v3 = type metadata accessor for Date();
  v158 = *(v3 - 8);
  v159 = v3;
  __chkstk_darwin(v3);
  v157 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v6 = __chkstk_darwin(v5 - 8);
  v156 = &v152 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v155 = &v152 - v8;
  v9 = type metadata accessor for DateInterval();
  v161 = *(v9 - 8);
  v162 = v9;
  v10 = __chkstk_darwin(v9);
  v154 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v153 = &v152 - v12;
  v169 = 0xD000000000000014;
  v170 = 0x8000000101372A40;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v165 = a1;
  v13 = *(a1 + RequestBeacon[7]);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  countAndFlagsBits = _swiftEmptyArrayStorage;
  v171 = v13;
  while (v17)
  {
LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = *(v13 + 56) + ((v19 << 10) | (16 * v22));
    v24 = *v23;
    v25 = *(v23 + 8);
    if ((v25 & 1) == 0)
    {

      goto LABEL_13;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v168._countAndFlagsBits = countAndFlagsBits;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101125788(0, countAndFlagsBits[2] + 1, 1);
        countAndFlagsBits = v168._countAndFlagsBits;
      }

      v29 = countAndFlagsBits[2];
      v28 = countAndFlagsBits[3];
      if (v29 >= v28 >> 1)
      {
        sub_101125788((v28 > 1), v29 + 1, 1);
        countAndFlagsBits = v168._countAndFlagsBits;
      }

      countAndFlagsBits[2] = v29 + 1;
      v30 = &countAndFlagsBits[2 * v29];
      v30[4] = v24;
      *(v30 + 40) = v25;
      v13 = v171;
    }
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v19;
    if (v17)
    {
      v19 = v21;
      goto LABEL_9;
    }
  }

  v31 = countAndFlagsBits[2];
  if (!v31)
  {
    goto LABEL_46;
  }

  v32 = countAndFlagsBits[4];
  v33 = *(countAndFlagsBits + 40);
  v34 = v31 - 1;
  if (v34)
  {
    v35 = countAndFlagsBits + 7;
    do
    {
      v36 = *(v35 - 1);
      v38 = *v35;
      v35 += 16;
      v37 = v38;
      if (v36 < v32)
      {
        v32 = v36;
        v33 = v37;
      }

      --v34;
    }

    while (v34);
  }

  v39 = 1 << *(v13 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v13 + 64);
  v42 = (v39 + 63) >> 6;

  v43 = 0;
  v44 = _swiftEmptyArrayStorage;
  while (v41)
  {
    v13 = v171;
LABEL_34:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v47 = *(v13 + 56) + ((v43 << 10) | (16 * v46));
    v163 = *v47;
    v48 = *(v47 + 8);
    if (v48)
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v49 & 1) == 0)
      {
        continue;
      }
    }

    else
    {
    }

    v50 = swift_isUniquelyReferenced_nonNull_native();
    v168._countAndFlagsBits = v44;
    if ((v50 & 1) == 0)
    {
      sub_101125788(0, v44[2] + 1, 1);
      v44 = v168._countAndFlagsBits;
    }

    v52 = v44[2];
    v51 = v44[3];
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v152 = v52 + 1;
      sub_101125788((v51 > 1), v52 + 1, 1);
      v53 = v152;
      v44 = v168._countAndFlagsBits;
    }

    v44[2] = v53;
    v54 = &v44[2 * v52];
    v54[4] = v163;
    *(v54 + 40) = v48;
  }

  v13 = v171;
  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      goto LABEL_118;
    }

    if (v45 >= v42)
    {
      break;
    }

    v41 = *(v14 + 8 * v45);
    ++v43;
    if (v41)
    {
      v43 = v45;
      goto LABEL_34;
    }
  }

  v55 = v44[2];
  if (!v55)
  {
LABEL_46:

    goto LABEL_54;
  }

  v56 = v44[4];
  v57 = *(v44 + 40);
  v58 = v55 - 1;
  if (v58)
  {
    v59 = v44 + 7;
    do
    {
      v60 = *(v59 - 1);
      v61 = v56 >= v60;
      v63 = *v59;
      v59 += 16;
      v62 = v63;
      if (v56 <= v60)
      {
        v56 = v60;
      }

      if (!v61)
      {
        v57 = v62;
      }

      --v58;
    }

    while (v58);
  }

  v168._countAndFlagsBits = 0;
  v168._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v64._countAndFlagsBits = 0xD000000000000013;
  v64._object = 0x8000000101372A60;
  String.append(_:)(v64);
  v166 = v32;
  v167 = v33 & 1;
  sub_1000BC4D4(&qword_1016BDEB0, &qword_1013ED0F8);
  _print_unlocked<A, B>(_:_:)();
  v65._countAndFlagsBits = 45;
  v65._object = 0xE100000000000000;
  String.append(_:)(v65);
  v166 = v56;
  v167 = v57 & 1;
  _print_unlocked<A, B>(_:_:)();
  v66._countAndFlagsBits = 8236;
  v66._object = 0xE200000000000000;
  String.append(_:)(v66);
  String.append(_:)(v168);

LABEL_54:
  v67 = 1 << *(v13 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(v13 + 64);
  v70 = (v67 + 63) >> 6;

  v71 = 0;
  v72 = _swiftEmptyArrayStorage;
  while (v69)
  {
LABEL_62:
    v74 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v75 = *(v13 + 56) + ((v71 << 10) | (16 * v74));
    v76 = *v75;
    v77 = *(v75 + 8);
    if (v77 == 1)
    {
    }

    else
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v78 & 1) == 0)
      {
        continue;
      }
    }

    v79 = swift_isUniquelyReferenced_nonNull_native();
    v168._countAndFlagsBits = v72;
    if ((v79 & 1) == 0)
    {
      sub_101125788(0, v72[2] + 1, 1);
      v72 = v168._countAndFlagsBits;
    }

    v81 = v72[2];
    v80 = v72[3];
    if (v81 >= v80 >> 1)
    {
      sub_101125788((v80 > 1), v81 + 1, 1);
      v72 = v168._countAndFlagsBits;
    }

    v72[2] = v81 + 1;
    v82 = &v72[2 * v81];
    v82[4] = v76;
    *(v82 + 40) = v77;
    v13 = v171;
  }

  while (1)
  {
    v73 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      goto LABEL_117;
    }

    if (v73 >= v70)
    {
      break;
    }

    v69 = *(v14 + 8 * v73);
    ++v71;
    if (v69)
    {
      v71 = v73;
      goto LABEL_62;
    }
  }

  v83 = v72[2];
  if (!v83)
  {
LABEL_105:

LABEL_106:
    v119 = v159;
    v120 = v162;
    v121 = v155;
    sub_1000D2A70(v165 + RequestBeacon[5], v155, &qword_1016BDEA8, &qword_1013ED0F0);
    v122 = v161;
    v123 = *(v161 + 48);
    if (v123(v121, 1, v120) == 1)
    {
      sub_10000B3A8(v121, &qword_1016BDEA8, &qword_1013ED0F0);
    }

    else
    {
      v124 = v153;
      (*(v122 + 32))(v153, v121, v120);
      v168._countAndFlagsBits = 0;
      v168._object = 0xE000000000000000;
      _StringGuts.grow(_:)(30);

      v168._countAndFlagsBits = 0xD000000000000015;
      v168._object = 0x8000000101372AE0;
      v125 = v157;
      DateInterval.start.getter();
      sub_100EB07A8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v163 = v123;
      v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v126);

      v127 = *(v158 + 8);
      v127(v125, v119);
      v128._countAndFlagsBits = 2108704;
      v128._object = 0xE300000000000000;
      String.append(_:)(v128);
      DateInterval.end.getter();
      v129._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v129);

      v127(v125, v119);
      v120 = v162;
      v130._countAndFlagsBits = 8236;
      v130._object = 0xE200000000000000;
      String.append(_:)(v130);
      String.append(_:)(v168);
      v122 = v161;
      v123 = v163;

      (*(v122 + 8))(v124, v120);
    }

    v131 = v156;
    sub_1000D2A70(v165 + RequestBeacon[6], v156, &qword_1016BDEA8, &qword_1013ED0F0);
    if (v123(v131, 1, v120) == 1)
    {
      sub_10000B3A8(v131, &qword_1016BDEA8, &qword_1013ED0F0);
    }

    else
    {
      v132 = v154;
      (*(v122 + 32))(v154, v131, v120);
      v168._countAndFlagsBits = 0;
      v168._object = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v168._countAndFlagsBits = 0xD000000000000017;
      v168._object = 0x8000000101372AC0;
      v133 = v157;
      DateInterval.start.getter();
      sub_100EB07A8(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v134._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v134);

      v135 = *(v158 + 8);
      v135(v133, v119);
      v136._countAndFlagsBits = 2108704;
      v136._object = 0xE300000000000000;
      String.append(_:)(v136);
      DateInterval.end.getter();
      v137._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v137);

      v135(v133, v119);
      v138._countAndFlagsBits = 8236;
      v138._object = 0xE200000000000000;
      String.append(_:)(v138);
      String.append(_:)(v168);

      v139 = v132;
      v13 = v171;
      (*(v122 + 8))(v139, v120);
    }

    v168._countAndFlagsBits = 0x203A736469;
    v168._object = 0xE500000000000000;
    v166 = *(v13 + 16);
    v140._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v140);

    v141._countAndFlagsBits = 8236;
    v141._object = 0xE200000000000000;
    String.append(_:)(v141);
    String.append(_:)(v168);

    v168._countAndFlagsBits = 0;
    v168._object = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v168._countAndFlagsBits = 0x6F43686372616573;
    v168._object = 0xEF203A747865746ELL;
    v142 = RequestBeacon;
    v143 = v165;
    v144 = (v165 + RequestBeacon[8]);
    v145 = *v144;
    v146 = *(v144 + 1);
    if (v144[1])
    {
      v147 = 256;
    }

    else
    {
      v147 = 0;
    }

    v148._countAndFlagsBits = sub_100EAB3F4(v147 | v145, v146);
    String.append(_:)(v148);

    String.append(_:)(v168);

    v168._countAndFlagsBits = 0;
    v168._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v168._countAndFlagsBits = 0xD000000000000010;
    v168._object = 0x8000000101372AA0;
    v166 = *(*(v143 + v142[9]) + 16);
    v149._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v149);

    String.append(_:)(v168);

    v150 = v170;
    v151 = v160;
    *v160 = v169;
    v151[1] = v150;
    return;
  }

  v84 = v72[4];
  v85 = *(v72 + 40);
  v86 = v83 - 1;
  if (v86)
  {
    v87 = v72 + 7;
    do
    {
      v88 = *(v87 - 1);
      v90 = *v87;
      v87 += 16;
      v89 = v90;
      if (v88 < v84)
      {
        v84 = v88;
        v85 = v89;
      }

      --v86;
    }

    while (v86);
  }

  v91 = 1 << *(v13 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & *(v13 + 64);
  v94 = (v91 + 63) >> 6;

  v95 = 0;
  v96 = _swiftEmptyArrayStorage;
  while (v93)
  {
    v13 = v171;
LABEL_87:
    v98 = __clz(__rbit64(v93));
    v93 &= v93 - 1;
    v99 = *(v13 + 56) + ((v95 << 10) | (16 * v98));
    v163 = *v99;
    v100 = *(v99 + 8);
    if (v100 == 1)
    {
    }

    else
    {
      v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v101 & 1) == 0)
      {
        continue;
      }
    }

    v102 = swift_isUniquelyReferenced_nonNull_native();
    v168._countAndFlagsBits = v96;
    if ((v102 & 1) == 0)
    {
      sub_101125788(0, v96[2] + 1, 1);
      v96 = v168._countAndFlagsBits;
    }

    v104 = v96[2];
    v103 = v96[3];
    v105 = v104 + 1;
    if (v104 >= v103 >> 1)
    {
      v152 = v104 + 1;
      sub_101125788((v103 > 1), v104 + 1, 1);
      v105 = v152;
      v96 = v168._countAndFlagsBits;
    }

    v96[2] = v105;
    v106 = &v96[2 * v104];
    v106[4] = v163;
    *(v106 + 40) = v100;
  }

  v13 = v171;
  while (1)
  {
    v97 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      break;
    }

    if (v97 >= v94)
    {

      v107 = v96[2];
      if (!v107)
      {
        goto LABEL_105;
      }

      v108 = v96[4];
      v109 = *(v96 + 40);
      v110 = v107 - 1;
      if (v110)
      {
        v111 = v96 + 7;
        do
        {
          v112 = *(v111 - 1);
          v113 = v108 >= v112;
          v115 = *v111;
          v111 += 16;
          v114 = v115;
          if (v108 <= v112)
          {
            v108 = v112;
          }

          if (!v113)
          {
            v109 = v114;
          }

          --v110;
        }

        while (v110);
      }

      v168._countAndFlagsBits = 0;
      v168._object = 0xE000000000000000;
      _StringGuts.grow(_:)(28);
      v116._object = 0x8000000101372A80;
      v116._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v116);
      v166 = v84;
      v167 = v85 & 1;
      sub_1000BC4D4(&qword_1016BDEB0, &qword_1013ED0F8);
      _print_unlocked<A, B>(_:_:)();
      v117._countAndFlagsBits = 45;
      v117._object = 0xE100000000000000;
      String.append(_:)(v117);
      v166 = v108;
      v167 = v109 & 1;
      _print_unlocked<A, B>(_:_:)();
      v118._countAndFlagsBits = 8236;
      v118._object = 0xE200000000000000;
      String.append(_:)(v118);
      String.append(_:)(v168);

      goto LABEL_106;
    }

    v93 = *(v14 + 8 * v97);
    ++v95;
    if (v93)
    {
      v95 = v97;
      goto LABEL_87;
    }
  }

LABEL_119:
  __break(1u);
}

uint64_t sub_100EACD58(void *a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = __chkstk_darwin(v4 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v9 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v37 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000BC4D4(&qword_1016BE0B8, &qword_1013ED880);
  v36 = *(v39 - 8);
  __chkstk_darwin(v39);
  v16 = &v33 - v15;
  sub_1000035D0(a1, a1[3]);
  sub_100EB2388();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v18 = *(RequestBeacon + 24);
  v19 = (v2 + *(RequestBeacon + 20));
  v35 = v2;
  sub_100EAD2FC(v19, (v2 + v18), v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v20 = v38;
    sub_10000B3A8(v11, &qword_1016BDEA8, &qword_1013ED0F0);
    goto LABEL_3;
  }

  (*(v13 + 32))(v37, v11, v12);
  DateInterval.start.getter();
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 0, 1, v25);
  LOBYTE(v41) = 0;
  sub_100EB07A8(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v27 = v38;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v28 = v8;
  if (v27)
  {
LABEL_9:
    sub_10000B3A8(v28, &unk_101696900, &unk_10138B1E0);
    (*(v13 + 8))(v37, v12);
    return (*(v36 + 8))(v16, v39);
  }

  sub_10000B3A8(v8, &unk_101696900, &unk_10138B1E0);
  v29 = v26;
  v30 = v34;
  v38 = 0;
  DateInterval.end.getter();
  v29(v30, 0, 1, v25);
  LOBYTE(v41) = 1;
  v31 = v38;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v31)
  {
    v28 = v30;
    goto LABEL_9;
  }

  v20 = 0;
  sub_10000B3A8(v30, &unk_101696900, &unk_10138B1E0);
  (*(v13 + 8))(v37, v12);
LABEL_3:
  v21 = v39;
  v22 = sub_100EA96D4();
  v24 = v23;
  if (!v22[2])
  {

    if (!v24[2])
    {
LABEL_12:
      (*(v36 + 8))(v16, v21);
    }

LABEL_11:
    v41 = v24;
    v40 = 3;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    goto LABEL_12;
  }

  v41 = v22;
  v40 = 2;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_1001E8254();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v20)
  {

    if (!v24[2])
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (*(v36 + 8))(v16, v21);
}

uint64_t sub_100EAD2FC@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a3;
  v5 = type metadata accessor for Date();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = __chkstk_darwin(v5);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v69 = &v59 - v9;
  v10 = __chkstk_darwin(v8);
  v67 = &v59 - v11;
  v12 = __chkstk_darwin(v10);
  v66 = &v59 - v13;
  v14 = __chkstk_darwin(v12);
  v68 = &v59 - v15;
  v16 = __chkstk_darwin(v14);
  v63 = &v59 - v17;
  v18 = __chkstk_darwin(v16);
  v62 = &v59 - v19;
  __chkstk_darwin(v18);
  v74 = &v59 - v20;
  v21 = type metadata accessor for DateInterval();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v73 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v75 = &v59 - v25;
  v26 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v27 = __chkstk_darwin(v26 - 8);
  v65 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v31 = &v59 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v59 - v33;
  __chkstk_darwin(v32);
  v36 = &v59 - v35;
  v64 = *(v22 + 56);
  v64(&v59 - v35, 1, 1, v21);
  v37 = *(v22 + 48);
  if (v37(a1, 1, v21) == 1)
  {
    sub_10000B3A8(v36, &qword_1016BDEA8, &qword_1013ED0F0);
    return sub_1000D2A70(a2, v76, &qword_1016BDEA8, &qword_1013ED0F0);
  }

  else if (v37(a2, 1, v21) == 1)
  {
    sub_10000B3A8(v36, &qword_1016BDEA8, &qword_1013ED0F0);
    return sub_1000D2A70(a1, v76, &qword_1016BDEA8, &qword_1013ED0F0);
  }

  else
  {
    sub_1000D2A70(a1, v34, &qword_1016BDEA8, &qword_1013ED0F0);
    if (v37(v34, 1, v21) == 1)
    {
      sub_10000B3A8(v34, &qword_1016BDEA8, &qword_1013ED0F0);
    }

    else
    {
      v39 = v34;
      v40 = *(v22 + 32);
      v40(v75, v39, v21);
      sub_1000D2A70(a2, v31, &qword_1016BDEA8, &qword_1013ED0F0);
      if (v37(v31, 1, v21) == 1)
      {
        (*(v22 + 8))(v75, v21);
        sub_10000B3A8(v31, &qword_1016BDEA8, &qword_1013ED0F0);
      }

      else
      {
        v40(v73, v31, v21);
        v41 = v62;
        DateInterval.start.getter();
        v42 = v63;
        DateInterval.start.getter();
        v59 = sub_100EB07A8(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v43 = v72;
        v44 = dispatch thunk of static Comparable.< infix(_:_:)();
        v45 = v71;
        v46 = *(v71 + 8);
        v60 = v46;
        v61 = v71 + 8;
        v47 = (v44 & 1) == 0;
        if (v44)
        {
          v48 = v41;
        }

        else
        {
          v48 = v42;
        }

        if (v47)
        {
          v42 = v41;
        }

        v46(v48, v43);
        v63 = *(v45 + 32);
        (v63)(v74, v42, v43);
        v49 = v66;
        DateInterval.end.getter();
        v50 = v67;
        DateInterval.end.getter();
        v51 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v52 = (v51 & 1) == 0;
        if (v51)
        {
          v53 = v49;
        }

        else
        {
          v53 = v50;
        }

        if (!v52)
        {
          v49 = v50;
        }

        v60(v53, v43);
        v54 = v68;
        (v63)(v68, v49, v43);
        v55 = *(v45 + 16);
        v55(v69, v74, v43);
        v55(v70, v54, v43);
        v56 = v65;
        DateInterval.init(start:end:)();
        v57 = v60;
        v60(v54, v43);
        v57(v74, v43);
        v58 = *(v22 + 8);
        v58(v73, v21);
        v58(v75, v21);
        sub_10000B3A8(v36, &qword_1016BDEA8, &qword_1013ED0F0);
        v64(v56, 0, 1, v21);
        sub_100EB0738(v56, v36);
      }
    }

    return sub_100EB0738(v36, v76);
  }
}

unint64_t sub_100EADA48()
{
  v1 = objc_autoreleasePoolPush();
  sub_100EABD30(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_100EADA98(uint64_t a1, char a2)
{
  v2 = *(a1 + 8) == 0;
  if (*(a1 + 8))
  {
    v3 = 0x7261646E6F636553;
  }

  else
  {
    v3 = 0x7972616D697250;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000079;
  }

  if (a2)
  {
    v5 = 0x7261646E6F636553;
  }

  else
  {
    v5 = 0x7972616D697250;
  }

  if (a2)
  {
    v6 = 0xE900000000000079;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_100EADB40(_BYTE *a1, _BYTE *a2)
{
  v2 = "foregroundClient";
  if (*a1 == 1)
  {
    v3 = "foregroundClient";
  }

  else
  {
    v3 = "backgroundClient";
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = "ole";
  }

  if (*a2 != 1)
  {
    v2 = "backgroundClient";
  }

  if (*a2)
  {
    v5 = v2;
  }

  else
  {
    v5 = "ole";
  }

  if ((v4 | 0x8000000000000000) == (v5 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

Swift::Int sub_100EADC00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100EADC8C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100EADD04(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100EADD8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2294(*a1);
  *a2 = result;
  return result;
}

void sub_100EADDBC(void *a1@<X8>)
{
  v2 = "ole";
  v3 = "foregroundClient";
  if (*v1 != 1)
  {
    v3 = "backgroundClient";
  }

  if (*v1)
  {
    v2 = v3;
  }

  *a1 = 0xD000000000000010;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_100EADE58(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_1000BC4D4(&qword_1016BE158, &qword_1013EDE88);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_1000035D0(a1, a1[3]);
  sub_100EB2ABC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_100EB2B10();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100EAE000(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  v16 = a5;
  v9 = sub_1000BC4D4(&qword_1016BE040, &qword_1013ED850);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_1000035D0(a1, a1[3]);
  sub_100EB1F90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v20 = 0;
  sub_1000BC4D4(&qword_1016BE050, &qword_1013ED858);
  sub_100EB1FE4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    LOBYTE(v17) = a3;
    v18 = v15;
    v19 = v16;
    v20 = 1;
    sub_100EB2098();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_100EAE1B8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7461447472617473;
    if (a1 != 2)
    {
      v5 = 0x65746144646E65;
    }

    v6 = 0xD000000000000010;
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 5294388599723750000;
    v2 = 0x76654464656E776FLL;
    if (a1 != 7)
    {
      v2 = 0x6570795479656BLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7261646E6F636573;
    if (a1 != 4)
    {
      v3 = 0x6F43686372616573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100EAE300()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x7963696C6F70;
  }
}

uint64_t sub_100EAE33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7963696C6F70 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101372E50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100EAE41C(uint64_t a1)
{
  v2 = sub_100EB2ABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAE458(uint64_t a1)
{
  v2 = sub_100EB2ABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EAE4C0()
{
  if (*v0)
  {
    return 0x747865746E6F63;
  }

  else
  {
    return 0x686372616573;
  }
}

uint64_t sub_100EAE4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100EAE5D0(uint64_t a1)
{
  v2 = sub_100EB1F90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAE60C(uint64_t a1)
{
  v2 = sub_100EB1F90();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100EAE678()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10076E8F0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_100EAE6C8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10076E8F0(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_100EAE70C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2B64(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100EAE73C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100EAE1B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100EAE784@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100EB2B64(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100EAE7AC(uint64_t a1)
{
  v2 = sub_100EB21F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAE7E8(uint64_t a1)
{
  v2 = sub_100EB21F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100EAE824(void *a1, char *a2, uint64_t *a3)
{
  v95 = a3;
  v102 = a2;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v5 = __chkstk_darwin(v4 - 8);
  v86 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v90 = &v84 - v8;
  v9 = __chkstk_darwin(v7);
  v93 = &v84 - v10;
  __chkstk_darwin(v9);
  v97 = &v84 - v11;
  v12 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  v13 = __chkstk_darwin(v12 - 8);
  v89 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v92 = &v84 - v16;
  __chkstk_darwin(v15);
  v18 = &v84 - v17;
  v19 = type metadata accessor for DateInterval();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v94 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v98 = &v84 - v24;
  __chkstk_darwin(v23);
  v26 = &v84 - v25;
  v27 = sub_1000BC4D4(&qword_1016BE098, &qword_1013ED878);
  v96 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v84 - v28;
  sub_1000035D0(a1, a1[3]);
  sub_100EB21F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = v20;
  RequestBeacon = type metadata accessor for FetchRequestBeacon(0);
  v88 = *(RequestBeacon + 20);
  sub_1000D2A70(&v102[v88], v18, &qword_1016BDEA8, &qword_1013ED0F0);
  v32 = v30 + 48;
  v33 = *(v30 + 48);
  v34 = v33(v18, 1, v19);
  v99 = v27;
  v100 = v29;
  v91 = v33;
  if (v34 == 1)
  {
    sub_10000B3A8(v18, &qword_1016BDEA8, &qword_1013ED0F0);
  }

  else
  {
    v87 = v30 + 48;
    (*(v30 + 32))(v26, v18, v19);
    v35 = v97;
    DateInterval.start.getter();
    v36 = type metadata accessor for Date();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    LOBYTE(v104) = 0;
    sub_100EB07A8(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v37 = v101;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v38 = v37;
    if (v37)
    {
      sub_10000B3A8(v97, &unk_101696900, &unk_10138B1E0);
      (*(v30 + 8))(v26, v19);
      (*(v96 + 8))(v29, v27);
      goto LABEL_39;
    }

    v101 = 0;
    sub_10000B3A8(v97, &unk_101696900, &unk_10138B1E0);
    (*(v30 + 8))(v26, v19);
    v33 = v91;
    v32 = v87;
  }

  v39 = *(RequestBeacon + 24);
  v40 = v102;
  v41 = v92;
  sub_1000D2A70(&v102[v39], v92, &qword_1016BDEA8, &qword_1013ED0F0);
  v42 = v33(v41, 1, v19);
  v43 = v93;
  v85 = RequestBeacon;
  if (v42 == 1)
  {
    sub_10000B3A8(v41, &qword_1016BDEA8, &qword_1013ED0F0);
    v38 = v101;
    v44 = v90;
    v45 = v94;
  }

  else
  {
    v87 = v32;
    (*(v30 + 32))(v98, v41, v19);
    DateInterval.start.getter();
    v46 = type metadata accessor for Date();
    (*(*(v46 - 8) + 56))(v43, 0, 1, v46);
    LOBYTE(v104) = 1;
    sub_100EB07A8(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v47 = v43;
    v49 = v99;
    v48 = v100;
    v50 = v101;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v38 = v50;
    if (v50)
    {
      sub_10000B3A8(v47, &unk_101696900, &unk_10138B1E0);
      (*(v30 + 8))(v98, v19);
      (*(v96 + 8))(v48, v49);
      goto LABEL_39;
    }

    sub_10000B3A8(v47, &unk_101696900, &unk_10138B1E0);
    (*(v30 + 8))(v98, v19);
    v44 = v90;
    v45 = v94;
    v40 = v102;
  }

  v51 = &v40[v39];
  v52 = v89;
  sub_100EAD2FC(&v40[v88], v51, v89);
  if (v91(v52, 1, v19) != 1)
  {
    (*(v30 + 32))(v45, v52, v19);
    v101 = v19;
    DateInterval.start.getter();
    v57 = type metadata accessor for Date();
    v58 = v44;
    v59 = *(*(v57 - 8) + 56);
    v59(v58, 0, 1, v57);
    LOBYTE(v104) = 2;
    sub_100EB07A8(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    if (!v38)
    {
      sub_10000B3A8(v58, &unk_101696900, &unk_10138B1E0);
      v60 = v86;
      DateInterval.end.getter();
      v59(v60, 0, 1, v57);
      LOBYTE(v104) = 3;
      v61 = v99;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      sub_10000B3A8(v60, &unk_101696900, &unk_10138B1E0);
      (*(v30 + 8))(v94, v101);
      v53 = v61;
      goto LABEL_13;
    }

    sub_10000B3A8(v58, &unk_101696900, &unk_10138B1E0);
    (*(v30 + 8))(v94, v101);
    (*(v96 + 8))(v100, v99);
LABEL_39:
    *v95 = v38;
    return;
  }

  sub_10000B3A8(v52, &qword_1016BDEA8, &qword_1013ED0F0);
  v53 = v99;
LABEL_13:
  v54 = sub_100EA96D4();
  v56 = v55;
  if (*(v54 + 2))
  {
    v104 = v54;
    v103 = 6;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v38)
    {
      (*(v96 + 8))(v100, v53);

LABEL_38:

      goto LABEL_39;
    }
  }

  if (*(v56 + 16))
  {
    v104 = v56;
    v103 = 4;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v38)
    {
LABEL_37:
      (*(v96 + 8))(v100, v53);
      goto LABEL_38;
    }
  }

  v98 = *&v40[*(v85 + 36)];
  if (*(v98 + 2))
  {
    v101 = v38;
    v62 = (v98 + 64);
    v63 = 1 << v98[32];
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & *(v98 + 8);
    v66 = (v63 + 63) >> 6;

    v67 = 0;
    v68 = _swiftEmptyArrayStorage;
    v97 = v62;
    if (v65)
    {
      while (1)
      {
        v102 = v68;
LABEL_30:
        v70 = __clz(__rbit64(v65)) | (v67 << 6);
        v71 = (*(v98 + 6) + 16 * v70);
        v72 = *v71;
        v73 = v71[1];
        v74 = (*(v98 + 7) + 32 * v70);
        v75 = *v74;
        v76 = v74[1];
        v77 = v74[2];
        v78 = v74[3];
        sub_100017D5C(*v71, v73);
        sub_100017D5C(v72, v73);
        sub_100017D5C(v75, v76);
        sub_100017D5C(v77, v78);
        sub_100016590(v72, v73);
        sub_100016590(v75, v76);
        sub_100016590(v77, v78);
        v68 = v102;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_100A5B734(0, *(v68 + 2) + 1, 1, v68);
        }

        v80 = *(v68 + 2);
        v79 = *(v68 + 3);
        v53 = v99;
        if (v80 >= v79 >> 1)
        {
          v68 = sub_100A5B734((v79 > 1), v80 + 1, 1, v68);
        }

        v65 &= v65 - 1;
        *(v68 + 2) = v80 + 1;
        v81 = &v68[16 * v80];
        *(v81 + 4) = v72;
        *(v81 + 5) = v73;
        v62 = v97;
        if (!v65)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
LABEL_26:
      v69 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        __break(1u);
        return;
      }

      if (v69 >= v66)
      {
        break;
      }

      v65 = *(v62 + 8 * v69);
      ++v67;
      if (v65)
      {
        v102 = v68;
        v67 = v69;
        goto LABEL_30;
      }
    }

    v104 = v68;
    v103 = 7;
    sub_1000BC4D4(&qword_101699EB8, &qword_101398AA0);
    sub_1002DE008();
    v82 = v101;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38 = v82;
    if (v82)
    {
      goto LABEL_37;
    }
  }

  LOBYTE(v104) = 8;
  v83 = v100;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v96 + 8))(v83, v53);
  if (v38)
  {
    goto LABEL_39;
  }
}

void sub_100EAF4C8(void *a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_100EAE824(a1, v1, &v4);
  objc_autoreleasePoolPop(v3);
}

uint64_t sub_100EAF534(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v15 = a4;
  v16 = a5;
  v9 = sub_1000BC4D4(&qword_1016BE070, &qword_1013ED860);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_1000035D0(a1, a1[3]);
  sub_100EB20EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v20 = 0;
  sub_1000BC4D4(&qword_1016BE080, &unk_1013ED868);
  sub_100EB2140();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    LOBYTE(v17) = a3;
    v18 = v15;
    v19 = v16;
    v20 = 1;
    sub_100EB2098();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100EAF6EC()
{
  if (*v0)
  {
    return 0x6F43746E65696C63;
  }

  else
  {
    return 0x6863746566;
  }
}

uint64_t sub_100EAF730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6863746566 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100EAF810(uint64_t a1)
{
  v2 = sub_100EB20EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EAF84C(uint64_t a1)
{
  v2 = sub_100EB20EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100EAF8AC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100B31E68(v7);
      v7 = result;
    }

    v84 = v7 + 2;
    v85 = v7[2];
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v7[2 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_100EAFE68((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v37 = v7[2];
    v36 = v7[3];
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_100A5B430((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v38;
    v39 = v7 + 4;
    v40 = &v7[2 * v37 + 4];
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = v7[4];
          v43 = v7[5];
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v7[2 * v38];
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v39[2 * v41];
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v7[2 * v38];
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v39[2 * v41];
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
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

        v79 = &v39[2 * v41 - 2];
        v80 = *v79;
        v81 = &v39[2 * v41];
        v82 = v81[1];
        sub_100EAFE68((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > v7[2])
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = v7[2];
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove(&v39[2 * v41], v81 + 2, 16 * (v83 - 1 - v41));
        v7[2] = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v39[2 * v38];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v7[2 * v38];
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v39[2 * v41];
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
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
  return result;
}

uint64_t sub_100EAFE68(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 2) < *(v4 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

double sub_100EB00A4@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

uint64_t sub_100EB00EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = v7;
  sub_100017D5C(v3, v2);
  sub_100017D5C(v4, v5);

  return sub_100017D5C(v6, v7);
}

uint64_t sub_100EB0154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  *a2 = *a1;
  v4 = *(a1 + 8);
  *(a2 + 8) = v4;
  *(a2 + 24) = v3;
  return sub_100017D5C(v2, v4);
}

uint64_t sub_100EB0178(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v10;
  v40 = v6;
  while (1)
  {
    v13 = v9;
    v14 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v13)));
    v17 = *(a1 + 56) + v16;
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    v44 = *(*(a1 + 48) + v16);
    v45 = v18;
    v46 = v17;
    sub_100017D5C(v44, *(&v44 + 1));
    a2(&v47, &v44);
    sub_100016590(v44, *(&v44 + 1));
    v19 = v50;
    if (v50 == 2)
    {
LABEL_22:
      sub_1000128F8(a1);
    }

    v21 = v47;
    v20 = v48;
    v43 = v49;
    v22 = *v51;
    v24 = sub_100772794(v47, v48);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_24;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a4 & 1) == 0)
      {
        sub_101009FCC();
      }
    }

    else
    {
      sub_100FF02C8(v27, a4 & 1);
      v29 = sub_100772794(v21, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_26;
      }

      v24 = v29;
    }

    v31 = (v13 - 1) & v13;
    v32 = *v51;
    if (v28)
    {
      sub_100016590(v21, v20);
      v12 = v32[7] + 16 * v24;
      *v12 = v43;
      *(v12 + 8) = v19 & 1;
    }

    else
    {
      v32[(v24 >> 6) + 8] |= 1 << v24;
      v33 = (v32[6] + 16 * v24);
      *v33 = v21;
      v33[1] = v20;
      v34 = v32[7] + 16 * v24;
      *v34 = v43;
      *(v34 + 8) = v19 & 1;
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_25;
      }

      v32[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v10 = v39;
    v6 = v40;
    v9 = v31;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_22;
    }

    v13 = *(v6 + 8 * v14);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100EB042C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v55 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  for (i = 0; ; i = v16)
  {
    v16 = i;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v8)) | (v16 << 6);
    v19 = (*(a1 + 56) + 32 * v18);
    v20 = *(*(a1 + 48) + 16 * v18);
    v45 = v19[1];
    v49 = *v19;
    v43 = v49;
    v50 = v45;
    v48 = v20;
    sub_100017D5C(v20, *(&v20 + 1));
    sub_100017D5C(v43, *(&v43 + 1));
    sub_100017D5C(v45, *(&v45 + 1));
    a2(&v51, &v48);
    v21 = v49;
    v22 = v50;
    sub_100016590(v48, *(&v48 + 1));
    sub_100016590(v21, *(&v21 + 1));
    sub_100016590(v22, *(&v22 + 1));
    v23 = v52;
    if (v52 >> 60 == 15)
    {
LABEL_22:
      sub_1000128F8(a1);
    }

    v24 = v51;
    v44 = v53;
    v46 = v54;
    v25 = *v55;
    v27 = sub_100772794(v51, v52);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_24;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_101009E2C();
      }
    }

    else
    {
      sub_100FEFFD8(v30, a4 & 1);
      v32 = sub_100772794(v24, v23);
      if ((v22 & 1) != (v33 & 1))
      {
        goto LABEL_26;
      }

      v27 = v32;
    }

    v8 &= v8 - 1;
    v34 = *v55;
    if (v31)
    {
      sub_100016590(v24, v23);
      v11 = (v34[7] + 32 * v27);
      v12 = *v11;
      v13 = v11[1];
      v15 = v11[2];
      v14 = v11[3];
      *v11 = v44;
      *(v11 + 1) = v46;
      sub_100016590(v12, v13);
      sub_100016590(v15, v14);
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v24;
      v35[1] = v23;
      v36 = (v34[7] + 32 * v27);
      *v36 = v44;
      v36[1] = v46;
      v37 = v34[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_25;
      }

      v34[2] = v39;
    }

    a4 = 1;
  }

  v17 = i;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v8 = *(v5 + 8 * v16);
    ++v17;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100EB0738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016BDEA8, &qword_1013ED0F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EB07A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100EB07F8(uint64_t a1)
{
  v2 = type metadata accessor for TimeBasedKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100EB0854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[0] = a3;
  v20[1] = a4;
  RequestBeacon_OwnedDevice = type metadata accessor for FetchRequestBeacon_OwnedDevice(0);
  v6 = *(RequestBeacon_OwnedDevice - 8);
  __chkstk_darwin(RequestBeacon_OwnedDevice - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FetchRequestBeacon(0) - 8;
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v15 = *(v10 + 72);
  v16 = _swiftEmptyArrayStorage;
  do
  {
    sub_100EB19AC(v14, v12, type metadata accessor for FetchRequestBeacon);
    sub_100EB1A14(v12, v8, type metadata accessor for FetchRequestBeacon);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100A5D4F0(0, v16[2] + 1, 1, v16);
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100A5D4F0((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    sub_100EB1A14(v8, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, type metadata accessor for FetchRequestBeacon_OwnedDevice);
    v14 += v15;
    --v13;
  }

  while (v13);
  return v16;
}

uint64_t sub_100EB0AA0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 377) = a5;
  *(v6 + 168) = a4;
  *(v6 + 176) = a6;
  *(v6 + 376) = a2;
  *(v6 + 152) = a1;
  *(v6 + 160) = a3;
  v7 = type metadata accessor for HashAlgorithm();
  *(v6 + 184) = v7;
  *(v6 + 192) = *(v7 - 8);
  *(v6 + 200) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v6 + 208) = v8;
  *(v6 + 216) = *(v8 - 8);
  *(v6 + 224) = swift_task_alloc();
  v9 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v6 + 232) = v9;
  *(v6 + 240) = *(v9 - 8);
  *(v6 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_100EB0C24, 0, 0);
}

void sub_100EB0C24()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v0 + 256) = JSONEncoder.init()();
  if (qword_101694F50 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = sub_1000076D4(v3, qword_1016BDE88);
  (*(v2 + 16))(v1, v4, v3);
  dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v7 = *(v0 + 376);

  v9 = sub_100EB0854(v8, v7, v6, v5);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  *(v0 + 88) = v9;
  *(v0 + 96) = v11;
  *(v0 + 104) = v13;
  *(v0 + 112) = v15;
  sub_100EB1938();
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;

  *(v0 + 264) = 0;
  *(v0 + 272) = v18;
  *(v0 + 280) = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v20 = [objc_opt_self() currentDevice];
  if (!v20)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = v20;
  v22 = [v20 serverFriendlyDescription];

  if (!v22)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v24 = *(v0 + 216);
  v23 = *(v0 + 224);
  v25 = *(v0 + 208);

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v26, v28, 0xD000000000000011, 0x800000010134EA40, v29);
  Date.init()();
  v30 = Date.epoch.getter();
  (*(v24 + 8))(v23, v25);
  *(v0 + 136) = v30;
  v31 = dispatch thunk of CustomStringConvertible.description.getter();
  v33 = v32;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v31, v33, 0xD000000000000015, 0x800000010134EA60, v34);
  *(v0 + 144) = 1;
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  v37 = v36;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v35, v37, 0xD000000000000013, 0x800000010134EA80, v38);
  v40 = sub_1008D9A78(v39);
  v42 = v41;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v40, v42, 0x6567412D72657355, 0xEA0000000000746ELL, v43);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(52, 0xE100000000000000, 0x762D747065636341, 0xEE006E6F69737265, v44);
  *(v0 + 288) = _swiftEmptyDictionarySingleton;
  v45 = swift_task_alloc();
  *(v0 + 296) = v45;
  *v45 = v0;
  v45[1] = sub_100EB11BC;

  sub_100EA4F7C();
}

uint64_t sub_100EB11BC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = a2;

  return _swift_task_switch(sub_100EB12BC, 0, 0);
}

uint64_t sub_100EB12BC()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[24];
  v6 = v0[25];
  v0[15] = v2;
  v17 = v5;
  v18 = v0[23];
  v19 = v6;
  v0[16] = v1;
  v0[5] = &type metadata for Data;
  v0[6] = &protocol witness table for Data;
  v0[2] = v4;
  v0[3] = v3;
  v7 = sub_1000035D0(v0 + 2, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_100017D5C(v2, v1);
  sub_100017D5C(v4, v3);
  sub_100017DB0(v8, v9, (v0 + 15));
  sub_100016590(v2, v1);
  sub_100007BAC(v0 + 2);
  v10 = v0[16];
  v0[40] = v0[15];
  v0[41] = v10;
  (*(v17 + 104))(v19, enum case for HashAlgorithm.sha256(_:), v18);
  v11 = Data.hash(algorithm:)();
  v13 = v12;
  v0[42] = v11;
  v0[43] = v12;
  (*(v17 + 8))(v19, v18);
  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  v14[1] = sub_100EB148C;
  v15 = v0[22];

  return sub_100EA8C64(v11, v13, v15);
}

uint64_t sub_100EB148C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = sub_100EB16C8;
  }

  else
  {
    v6 = v4[42];
    v7 = v4[43];
    v4[46] = a1;
    sub_100016590(v6, v7);
    v5 = sub_100EB15BC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100EB15BC()
{
  v12 = v0;
  v1 = v0[46];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, &v11);

  sub_100016590(v3, v2);

  v6 = v11;

  v7 = v0[1];
  v9 = v0[34];
  v8 = v0[35];

  return v7(v6, v8, v9);
}

uint64_t sub_100EB16C8()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_100016590(v0[42], v0[43]);
  sub_100016590(v1, v2);
  if (qword_101695010 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C348);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to generate fetch request attestation header: %{public}@.", v6, 0xCu);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v9 = v0[36];

  v10 = v0[1];
  v12 = v0[34];
  v11 = v0[35];

  return v10(v9, v11, v12);
}

unint64_t sub_100EB18E4()
{
  result = qword_1016BDEC0;
  if (!qword_1016BDEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDEC0);
  }

  return result;
}

unint64_t sub_100EB1938()
{
  result = qword_1016BDEC8;
  if (!qword_1016BDEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDEC8);
  }

  return result;
}

uint64_t sub_100EB19AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100EB1A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100EB1A7C()
{
  result = qword_1016BDED0;
  if (!qword_1016BDED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BDED0);
  }

  return result;
}

uint64_t sub_100EB1B4C(uint64_t a1)
{
  result = type metadata accessor for FetchRequestBeacon(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100EB1C40(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100EB1D2C(319);
    if (v2 <= 0x3F)
    {
      sub_100EB1D84(319, &qword_1016BDFE0, &qword_1016BDEB0, &qword_1013ED0F8);
      if (v3 <= 0x3F)
      {
        sub_100EB1D84(319, &unk_1016BDFE8, &qword_10169C9B0, &qword_10139FC00);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100EB1D2C(uint64_t a1)
{
  if (!qword_1016BDFD8)
  {
    type metadata accessor for DateInterval();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BDFD8);
    }
  }
}

void sub_100EB1D84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000BC580(a3, a4);
    sub_10049EBF8();
    v5 = type metadata accessor for Dictionary();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FetchRequestBeacon.SearchContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FetchRequestBeacon.SearchContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100EB1E8C()
{
  result = qword_1016BE028;
  if (!qword_1016BE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE028);
  }

  return result;
}

unint64_t sub_100EB1EE4()
{
  result = qword_1016BE030;
  if (!qword_1016BE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE030);
  }

  return result;
}

unint64_t sub_100EB1F3C()
{
  result = qword_1016BE038;
  if (!qword_1016BE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE038);
  }

  return result;
}

unint64_t sub_100EB1F90()
{
  result = qword_1016BE048;
  if (!qword_1016BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE048);
  }

  return result;
}

unint64_t sub_100EB1FE4()
{
  result = qword_1016BE058;
  if (!qword_1016BE058)
  {
    sub_1000BC580(&qword_1016BE050, &qword_1013ED858);
    sub_100EB07A8(&qword_1016BE060, type metadata accessor for FetchRequestBeacon, &unk_1013ED50C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE058);
  }

  return result;
}

unint64_t sub_100EB2098()
{
  result = qword_1016BE068;
  if (!qword_1016BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE068);
  }

  return result;
}

unint64_t sub_100EB20EC()
{
  result = qword_1016BE078;
  if (!qword_1016BE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE078);
  }

  return result;
}

unint64_t sub_100EB2140()
{
  result = qword_1016BE088;
  if (!qword_1016BE088)
  {
    sub_1000BC580(&qword_1016BE080, &unk_1013ED868);
    sub_100EB07A8(&qword_1016BE090, type metadata accessor for FetchRequestBeacon_OwnedDevice, &unk_1013ED73C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE088);
  }

  return result;
}

unint64_t sub_100EB21F4()
{
  result = qword_1016BE0A0;
  if (!qword_1016BE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0A0);
  }

  return result;
}

unint64_t sub_100EB2248(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160AE08, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100EB2294(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160B0F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100EB22E0()
{
  result = qword_1016BE0A8;
  if (!qword_1016BE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0A8);
  }

  return result;
}

unint64_t sub_100EB2334()
{
  result = qword_1016BE0B0;
  if (!qword_1016BE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0B0);
  }

  return result;
}

unint64_t sub_100EB2388()
{
  result = qword_1016BE0C0;
  if (!qword_1016BE0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0C0);
  }

  return result;
}

unint64_t sub_100EB23DC()
{
  result = qword_1016BE0D0;
  if (!qword_1016BE0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0D0);
  }

  return result;
}

unint64_t sub_100EB2430()
{
  result = qword_1016BE0D8;
  if (!qword_1016BE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0D8);
  }

  return result;
}

uint64_t sub_100EB24D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100EB2530(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100EB2598()
{
  result = qword_1016BE0E0;
  if (!qword_1016BE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0E0);
  }

  return result;
}

unint64_t sub_100EB25F0()
{
  result = qword_1016BE0E8;
  if (!qword_1016BE0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0E8);
  }

  return result;
}

unint64_t sub_100EB2648()
{
  result = qword_1016BE0F0;
  if (!qword_1016BE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0F0);
  }

  return result;
}

unint64_t sub_100EB26A0()
{
  result = qword_1016BE0F8;
  if (!qword_1016BE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE0F8);
  }

  return result;
}

unint64_t sub_100EB26F8()
{
  result = qword_1016BE100;
  if (!qword_1016BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE100);
  }

  return result;
}

unint64_t sub_100EB2750()
{
  result = qword_1016BE108;
  if (!qword_1016BE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE108);
  }

  return result;
}

unint64_t sub_100EB27A8()
{
  result = qword_1016BE110;
  if (!qword_1016BE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE110);
  }

  return result;
}

unint64_t sub_100EB2800()
{
  result = qword_1016BE118;
  if (!qword_1016BE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE118);
  }

  return result;
}

unint64_t sub_100EB2858()
{
  result = qword_1016BE120;
  if (!qword_1016BE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE120);
  }

  return result;
}

unint64_t sub_100EB28B0()
{
  result = qword_1016BE128;
  if (!qword_1016BE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE128);
  }

  return result;
}

unint64_t sub_100EB2908()
{
  result = qword_1016BE130;
  if (!qword_1016BE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE130);
  }

  return result;
}

unint64_t sub_100EB2960()
{
  result = qword_1016BE138;
  if (!qword_1016BE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE138);
  }

  return result;
}

unint64_t sub_100EB29B8()
{
  result = qword_1016BE140;
  if (!qword_1016BE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE140);
  }

  return result;
}

unint64_t sub_100EB2A10()
{
  result = qword_1016BE148;
  if (!qword_1016BE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE148);
  }

  return result;
}

unint64_t sub_100EB2A68()
{
  result = qword_1016BE150;
  if (!qword_1016BE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE150);
  }

  return result;
}

unint64_t sub_100EB2ABC()
{
  result = qword_1016BE160;
  if (!qword_1016BE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE160);
  }

  return result;
}

unint64_t sub_100EB2B10()
{
  result = qword_1016BE168;
  if (!qword_1016BE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE168);
  }

  return result;
}

unint64_t sub_100EB2B64(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C768, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100EB2BB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72617069746C756DLL && a2 == 0xEE00746E756F4374;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_100EB2CE4()
{
  result = qword_1016BE170;
  if (!qword_1016BE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE170);
  }

  return result;
}

unint64_t sub_100EB2D3C()
{
  result = qword_1016BE178;
  if (!qword_1016BE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE178);
  }

  return result;
}

unint64_t sub_100EB2D94()
{
  result = qword_1016BE180;
  if (!qword_1016BE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE180);
  }

  return result;
}

uint64_t sub_100EB2DF8()
{
  strcpy(v3, ".secondary/(");
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return v3[0];
}

unint64_t sub_100EB2E98()
{
  result = qword_1016BE188;
  if (!qword_1016BE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE188);
  }

  return result;
}

unint64_t sub_100EB2EEC()
{
  result = qword_1016BE190;
  if (!qword_1016BE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE190);
  }

  return result;
}

unint64_t sub_100EB2F40(void *a1)
{
  a1[1] = sub_100EB2FA0();
  a1[2] = sub_100EB2FF4();
  a1[3] = sub_100EB3048();
  a1[4] = sub_100EB309C();
  a1[5] = sub_100EB30F0();
  a1[6] = sub_100EB3144();
  a1[7] = sub_100EB3198();
  result = sub_100EB31EC();
  a1[8] = result;
  return result;
}

unint64_t sub_100EB2FA0()
{
  result = qword_1016BE198;
  if (!qword_1016BE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE198);
  }

  return result;
}

unint64_t sub_100EB2FF4()
{
  result = qword_1016BE1A0;
  if (!qword_1016BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1A0);
  }

  return result;
}

unint64_t sub_100EB3048()
{
  result = qword_1016BE1A8;
  if (!qword_1016BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1A8);
  }

  return result;
}

unint64_t sub_100EB309C()
{
  result = qword_1016BE1B0;
  if (!qword_1016BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1B0);
  }

  return result;
}

unint64_t sub_100EB30F0()
{
  result = qword_1016BE1B8;
  if (!qword_1016BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1B8);
  }

  return result;
}

unint64_t sub_100EB3144()
{
  result = qword_1016BE1C0;
  if (!qword_1016BE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1C0);
  }

  return result;
}

unint64_t sub_100EB3198()
{
  result = qword_1016BE1C8;
  if (!qword_1016BE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1C8);
  }

  return result;
}

unint64_t sub_100EB31EC()
{
  result = qword_1016BE1D0;
  if (!qword_1016BE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE1D0);
  }

  return result;
}

uint64_t sub_100EB3244()
{
  v1 = 0x657470656363612ELL;
  if (*v0 != 1)
  {
    v1 = 0x656E696C6365642ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t type metadata accessor for LocalFindablePreferences(uint64_t a1)
{
  result = qword_1016BE230;
  if (!qword_1016BE230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100EB332C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10015D6D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100EB33B8()
{
  _StringGuts.grow(_:)(42);

  type metadata accessor for UUID();
  sub_1002FFBAC();
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._object = 0x8000000101372E70;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  v3 = type metadata accessor for LocalFindablePreferences(0);
  if (*(v0 + *(v3 + 20)))
  {
    if (*(v0 + *(v3 + 20)) == 1)
    {
      v4 = 0x657470656363612ELL;
    }

    else
    {
      v4 = 0x656E696C6365642ELL;
    }

    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x6E776F6E6B6E752ELL;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = 0x8000000101372E90;
  String.append(_:)(v7);
  sub_10002E98C(*(v0 + *(v3 + 24)), *(v0 + *(v3 + 24) + 8));
  sub_1000BC4D4(&qword_101698358, &unk_10138F780);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 15913;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  return 60;
}

unint64_t sub_100EB3570()
{
  result = qword_1016BE270;
  if (!qword_1016BE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE270);
  }

  return result;
}

BOOL sub_100EB35C4(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LocalFindablePreferences(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_10002E98C(v7, v6);
      sub_10002E98C(v10, v9);
      sub_100006654(v7, v6);
      return 1;
    }

    goto LABEL_7;
  }

  if (v9 >> 60 == 15)
  {
LABEL_7:
    sub_10002E98C(v7, v6);
    sub_10002E98C(v10, v9);
    sub_100006654(v7, v6);
    sub_100006654(v10, v9);
    return 0;
  }

  sub_10002E98C(v7, v6);
  sub_10002E98C(v10, v9);
  v12 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v6, v10, v9);
  sub_100006654(v10, v9);
  sub_100006654(v7, v6);
  return v12;
}

id sub_100EB3708(char a1, uint64_t a2, void *a3)
{
  if (a1 == 1)
  {
    v3._countAndFlagsBits = 980182388;
    v3._object = 0xE400000000000000;
    String.deletingPrefix(_:)(v3);
    v4 = &selRef_handleWithPhoneNumber_;
LABEL_5:
    v6 = String._bridgeToObjectiveC()();

    v7 = [objc_opt_self() *v4];

    return v7;
  }

  if (!a1)
  {
    v5._countAndFlagsBits = 0x3A6F746C69616DLL;
    v5._object = 0xE700000000000000;
    String.deletingPrefix(_:)(v5);
    v4 = &selRef_handleWithEmailAddress_;
    goto LABEL_5;
  }

  _StringGuts.grow(_:)(21);

  v11._countAndFlagsBits = a2;
  v11._object = a3;
  String.append(_:)(v11);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100EB3858()
{
  v1 = v0;
  v2 = [v0 type];
  if (v2 != 1)
  {
    if (v2)
    {
      v5 = static os_log_type_t.error.getter();
      sub_10039722C();
      v6 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Unknown MessagingDestination case!", 34, 2, _swiftEmptyArrayStorage);

      v7 = [v1 destination];
      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      v1 = IDSCopyIDForEmailAddress();

      if (v1)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    v3 = [v0 destination];
    if (!v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = String._bridgeToObjectiveC()();
    }

    v1 = IDSCopyIDForEmailAddress();

    if (v1)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v4 = [v1 destination];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  v1 = IDSCopyIDForPhoneNumber();

  if (v1)
  {
LABEL_14:
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_100EB3A04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
    v7 = [a3 stringForKey:v6];

    if (v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = HIBYTE(v10) & 0xF;
      v12 = v8 & 0xFFFFFFFFFFFFLL;
      if ((v10 & 0x2000000000000000) != 0)
      {
        v13 = HIBYTE(v10) & 0xF;
      }

      else
      {
        v13 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v40 = 0;
          sub_1010DDF3C(v8, v10, 10);
          goto LABEL_65;
        }

        if ((v10 & 0x2000000000000000) != 0)
        {
          v39[0] = v8;
          v39[1] = v10 & 0xFFFFFFFFFFFFFFLL;
          if (v8 == 43)
          {
            if (v11)
            {
              if (--v11)
              {
                v28 = 0;
                v29 = v39 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    break;
                  }

                  v31 = 10 * v28;
                  if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                  {
                    break;
                  }

                  v28 = v31 + v30;
                  if (__OFADD__(v31, v30))
                  {
                    break;
                  }

                  ++v29;
                  if (!--v11)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

            goto LABEL_73;
          }

          if (v8 != 45)
          {
            if (v11)
            {
              v35 = 0;
              v36 = v39;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                v38 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  break;
                }

                v35 = v38 + v37;
                if (__OFADD__(v38, v37))
                {
                  break;
                }

                ++v36;
                if (!--v11)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v11)
          {
            if (--v11)
            {
              v20 = 0;
              v21 = v39 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  break;
                }

                v23 = 10 * v20;
                if ((v20 * 10) >> 64 != (10 * v20) >> 63)
                {
                  break;
                }

                v20 = v23 - v22;
                if (__OFSUB__(v23, v22))
                {
                  break;
                }

                ++v21;
                if (!--v11)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v8 & 0x1000000000000000) != 0)
          {
            v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v14 = _StringObject.sharedUTF8.getter();
          }

          v15 = *v14;
          if (v15 == 43)
          {
            if (v12 >= 1)
            {
              v11 = v12 - 1;
              if (v12 != 1)
              {
                v24 = 0;
                if (v14)
                {
                  v25 = v14 + 1;
                  while (1)
                  {
                    v26 = *v25 - 48;
                    if (v26 > 9)
                    {
                      goto LABEL_63;
                    }

                    v27 = 10 * v24;
                    if ((v24 * 10) >> 64 != (10 * v24) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v24 = v27 + v26;
                    if (__OFADD__(v27, v26))
                    {
                      goto LABEL_63;
                    }

                    ++v25;
                    if (!--v11)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_72;
          }

          if (v15 != 45)
          {
            if (v12)
            {
              v32 = 0;
              if (v14)
              {
                while (1)
                {
                  v33 = *v14 - 48;
                  if (v33 > 9)
                  {
                    goto LABEL_63;
                  }

                  v34 = 10 * v32;
                  if ((v32 * 10) >> 64 != (10 * v32) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v32 = v34 + v33;
                  if (__OFADD__(v34, v33))
                  {
                    goto LABEL_63;
                  }

                  ++v14;
                  if (!--v12)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            LOBYTE(v11) = 1;
            goto LABEL_64;
          }

          if (v12 >= 1)
          {
            v11 = v12 - 1;
            if (v12 != 1)
            {
              v16 = 0;
              if (v14)
              {
                v17 = v14 + 1;
                while (1)
                {
                  v18 = *v17 - 48;
                  if (v18 > 9)
                  {
                    goto LABEL_63;
                  }

                  v19 = 10 * v16;
                  if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v16 = v19 - v18;
                  if (__OFSUB__(v19, v18))
                  {
                    goto LABEL_63;
                  }

                  ++v17;
                  if (!--v11)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v11) = 0;
LABEL_64:
              v40 = v11;
LABEL_65:

              return;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        return;
      }
    }
  }
}

id sub_100EB3DA0()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_10177C218 = result;
  return result;
}

void sub_100EB3DDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 isInternalBuild];

  if (v7)
  {
    sub_100EB3F84(a1, v15);
    v8 = v16;
    if (v16)
    {
      v9 = sub_1000035D0(v15, v16);
      v10 = *(v8 - 8);
      __chkstk_darwin(v9);
      v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v12);
      v13 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v10 + 8))(v12, v8);
      sub_100007BAC(v15);
    }

    else
    {
      v13 = 0;
    }

    v14 = String._bridgeToObjectiveC()();
    [a4 setValue:v13 forKey:v14];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100EB3F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016A0B10, &qword_10139BF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100EB400C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F666E49766461 && a2 == 0xE700000000000000)
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

uint64_t sub_100EB4094(uint64_t a1)
{
  v2 = sub_100EB5814();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100EB40D0(uint64_t a1)
{
  v2 = sub_100EB5814();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100EB410C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100EB569C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result);
  }

  return result;
}

uint64_t sub_100EB4140(void *a1, uint64_t a2)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  if (a2 != 3)
  {
    LOBYTE(v7) = 1;
    sub_10015049C(v5, v6);
    sub_1000198E8();
    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    if (!v2)
    {
      v7 = a2;
      v8 = BYTE2(a2) & 1;
      v9 = BYTE3(a2);
      v10 = BYTE4(a2);
      sub_10015049C(v5, v6);
      sub_100EB5524();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
    }
  }

  return sub_100007BAC(v5);
}

uint64_t sub_100EB4260@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100EB49C8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result);
  }

  return result;
}

void sub_100EB42B8(uint64_t a1)
{
  v4 = v1;
  v53 = type metadata accessor for Data.Iterator();
  __chkstk_darwin(v53);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = *(a1 + 16);
  if (!v57)
  {
LABEL_52:

    return;
  }

  v8 = 0;
  v55 = a1 + 32;
  v51 = (v6 + 8);
  v50 = _swiftEmptyArrayStorage;
  v54 = a1;
  while (v8 < *(a1 + 16))
  {
    v9 = (v55 + 16 * v8);
    v3 = *v9;
    v2 = v9[1];
    v10 = v2 >> 62;
    if ((v2 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_18;
      }

      v13 = *(v3 + 16);
      v12 = *(v3 + 24);
      v11 = v12 - v13;
      if (__OFSUB__(v12, v13))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (!v10)
      {
        v11 = BYTE6(v2);
        if (!BYTE6(v2))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_57;
      }

      v11 = HIDWORD(v3) - v3;
    }

    sub_100017D5C(v3, v2);
    sub_100017D5C(v3, v2);
    if (!v11)
    {
LABEL_18:
      sub_100016590(v3, v2);
      v14 = _swiftEmptyArrayStorage;
      goto LABEL_21;
    }

LABEL_16:
    if (v11 < 1)
    {
      v14 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_1000BC4D4(&qword_101699368, &unk_1013B34B0);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v11;
      v14[3] = 2 * v15 - 64;
    }

    v16 = v52;
    v17 = Data._copyContents(initializing:)();
    sub_100016590(v3, v2);
    (*v51)(v16, v53);
    if (v17 != v11)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

LABEL_21:
    v61 = v14;
    v62 = 0;
    sub_10112C0E8(&v68);
    v18 = v69;
    if (v69)
    {
      v19 = v71;
      v20 = v70;
      while (1)
      {
        if (v68 != 1)
        {
          do
          {
            sub_100EB5404(&v68);
            sub_10112C0E8(&v68);
            v18 = v69;
            if (!v69)
            {
              goto LABEL_3;
            }
          }

          while (v68 != 1);
          v20 = v70;
          v19 = v71;
        }

        v58 = v19;
        v21 = sub_1000BC4D4(&qword_10169CB00, &qword_101399648);
        v66 = v21;
        v67 = sub_100EB546C();
        v22 = swift_allocObject();
        v63 = v22;
        *(v22 + 16) = v18;
        *(v22 + 24) = v20;
        *(v22 + 32) = v58;
        v23 = sub_1000035D0(&v63, v21);
        v24 = v23[2];
        v25 = v23[3] >> 1;
        v26 = v25 - v24;
        if (__OFSUB__(v25, v24))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (!v26)
        {
          break;
        }

        v27 = v23[1];
        if (v26 > 14)
        {
          type metadata accessor for __DataStorage();
          swift_allocObject();
          swift_unknownObjectRetain();
          v28 = __DataStorage.init(bytes:length:)();
          v29 = v28;
          if (v26 >= 0x7FFFFFFF)
          {
            type metadata accessor for Data.RangeReference();
            v30 = swift_allocObject();
            *(v30 + 16) = 0;
            *(v30 + 24) = v26;
            v31 = v29 | 0x8000000000000000;
          }

          else
          {
            v30 = v26 << 32;
            v31 = v28 | 0x4000000000000000;
          }

          sub_100007BAC(&v63);
          goto LABEL_39;
        }

        *&v58 = v4;
        memset(__dst, 0, sizeof(__dst));
        v60 = v25 - v24;
        memcpy(__dst, (v27 + v24), v25 - v24);
        v30 = *__dst;
        v32 = *&__dst[8] | (*&__dst[12] << 32);
        v33 = v60;
        v34 = v56 & 0xF00000000000000 | (v60 << 48) | v32;
        swift_unknownObjectRetain();
        sub_100007BAC(&v63);
        v56 = v34;
        if ((v33 - 5) < 0xFFFFFFFC)
        {
          goto LABEL_36;
        }

        if (v33 == 2)
        {
          v37 = 0;
          v39 = 0;
          v38 = &v63;
          v35 = 1;
          v36 = 2;
        }

        else
        {
          if (v33 != 3)
          {
LABEL_36:
            v31 = v34;
            goto LABEL_39;
          }

          v35 = 0;
          v36 = v30 & 1;
          v37 = v30 & 0xFE;
          v38 = __dst;
          v39 = 1;
        }

        if (v39 >= v33)
        {
          goto LABEL_59;
        }

        __dst[0] = BYTE1(v30);
        LOBYTE(v63) = v30;
        v40 = v39 + 1;
        if (v40 >= v33)
        {
          goto LABEL_60;
        }

        v49 = v35;
        v48 = v37;
        HIDWORD(v47) = *v38;
        v63 = v30;
        v64 = v32;
        v65 = WORD2(v32);
        v41 = *(&v63 | v40);
        sub_100016590(v30, v34);
        v42 = v50;
        if (*(v50 + 2))
        {
          goto LABEL_55;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_100A5C4F8(0, 1, 1, v42);
        }

        v4 = v58;
        v50 = v42;
        v44 = *(v42 + 2);
        v43 = *(v42 + 3);
        if (v44 >= v43 >> 1)
        {
          v50 = sub_100A5C4F8((v43 > 1), v44 + 1, 1, v50);
        }

        sub_100EB5404(&v68);
        v45 = v50;
        *(v50 + 2) = v44 + 1;
        v46 = &v45[5 * v44];
        v46[32] = v36;
        v46[33] = v48;
        v46[34] = v49;
        v46[35] = BYTE4(v47);
        v46[36] = v41;
LABEL_40:
        sub_10112C0E8(&v68);
        v18 = v69;
        v20 = v70;
        v19 = v71;
        if (!v69)
        {
          goto LABEL_3;
        }
      }

      swift_unknownObjectRetain();
      sub_100007BAC(&v63);
      v30 = 0;
      v31 = 0xC000000000000000;
LABEL_39:
      sub_10030AF5C();
      swift_allocError();
      swift_willThrow();
      v4 = 0;
      sub_100016590(v30, v31);

      sub_100EB5404(&v68);
      goto LABEL_40;
    }

LABEL_3:
    ++v8;

    sub_100016590(v3, v2);
    a1 = v54;
    if (v8 == v57)
    {
      goto LABEL_52;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:

  sub_100EB54D0();
  swift_allocError();
  swift_willThrow();
  sub_100016590(v3, v2);
  sub_100EB5404(&v68);
}

uint64_t sub_100EB49C8(void *a1)
{
  v2 = v1;
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_1000035D0(v77, v78);
  v3 = _swiftEmptyArrayStorage;
  if (dispatch thunk of BinaryDecodingContaining.isAtEnd.getter())
  {
LABEL_2:
    sub_100EB42B8(v3);
    if (v2)
    {
      goto LABEL_80;
    }

    v5 = v4;
    sub_100007BAC(v77);
    sub_100007BAC(a1);
    return v5 & 0xFFFFFFFFFFLL;
  }

  while (1)
  {
    sub_10015049C(v77, v78);
    v7 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    if (v2)
    {
      break;
    }

    v9 = v8;
    v10 = v3;
    v69 = v7;
    sub_10015049C(v77, v78);
    v11 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v13 = v12;
    *&v72 = v11;
    *(&v72 + 1) = v12;
    sub_1000E0A3C();
    DataProtocol.intValue.getter();
    sub_10015049C(v77, v78);
    v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
    v68 = v15;
    *&__dst = v69;
    *(&__dst + 1) = v9;
    v73 = &type metadata for Data;
    v74 = &protocol witness table for Data;
    *&v72 = v11;
    *(&v72 + 1) = v13;
    v70 = v13;
    v16 = v9;
    v17 = sub_1000035D0(&v72, &type metadata for Data);
    v18 = *v17;
    v19 = v17[1];
    v20 = v19 >> 62;
    v66 = v11;
    v67 = v9;
    v21 = v11;
    if ((v19 >> 62) > 1)
    {
      v3 = v10;
      if (v20 == 2)
      {
        v22 = v21;
        v23 = *(v18 + 16);
        v24 = *(v18 + 24);
        sub_100017D5C(v69, v9);
        sub_100017D5C(v22, v70);
        if (__DataStorage._bytes.getter() && __OFSUB__(v23, __DataStorage._offset.getter()))
        {
          goto LABEL_87;
        }

        if (__OFSUB__(v24, v23))
        {
          goto LABEL_82;
        }

LABEL_17:
        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
        v16 = v9;
        goto LABEL_20;
      }

      *(&v76 + 6) = 0;
      *&v76 = 0;
      sub_100017D5C(v69, v9);
      sub_100017D5C(v21, v70);
    }

    else
    {
      v3 = v10;
      if (v20)
      {
        v25 = v18;
        if (v18 >> 32 < v18)
        {
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
          __break(1u);
        }

        sub_100017D5C(v69, v9);
        sub_100017D5C(v66, v70);
        if (__DataStorage._bytes.getter() && __OFSUB__(v25, __DataStorage._offset.getter()))
        {
          goto LABEL_89;
        }

        goto LABEL_17;
      }

      *&v76 = *v17;
      WORD4(v76) = v19;
      BYTE10(v76) = BYTE2(v19);
      BYTE11(v76) = BYTE3(v19);
      BYTE12(v76) = BYTE4(v19);
      BYTE13(v76) = BYTE5(v19);
      sub_100017D5C(v69, v9);
      sub_100017D5C(v21, v70);
    }

    Data._Representation.append(contentsOf:)();
LABEL_20:
    sub_100007BAC(&v72);
    v26 = __dst;
    v76 = __dst;
    v73 = &type metadata for Data;
    v74 = &protocol witness table for Data;
    *&v72 = v14;
    *(&v72 + 1) = v68;
    v27 = sub_1000035D0(&v72, &type metadata for Data);
    v28 = *v27;
    v29 = v27[1];
    v30 = v29 >> 62;
    if ((v29 >> 62) > 1)
    {
      if (v30 == 2)
      {
        v32 = v3;
        v33 = *(v28 + 16);
        v34 = *(v28 + 24);
        sub_100017D5C(v26, *(&v26 + 1));
        v31 = v14;
        sub_100017D5C(v14, v68);
        if (__DataStorage._bytes.getter() && __OFSUB__(v33, __DataStorage._offset.getter()))
        {
          goto LABEL_88;
        }

        if (__OFSUB__(v34, v33))
        {
          goto LABEL_84;
        }

LABEL_32:
        __DataStorage._length.getter();
        Data._Representation.append(contentsOf:)();
        sub_100016590(v26, *(&v26 + 1));
        v3 = v32;
        v16 = v67;
        goto LABEL_35;
      }

      memset(__src, 0, 14);
      v31 = v14;
      sub_100017D5C(v14, v68);
    }

    else
    {
      if (v30)
      {
        v32 = v3;
        v35 = v28;
        if (v28 >> 32 < v28)
        {
          goto LABEL_83;
        }

        sub_100017D5C(v26, *(&v26 + 1));
        v31 = v14;
        sub_100017D5C(v14, v68);
        if (__DataStorage._bytes.getter() && __OFSUB__(v35, __DataStorage._offset.getter()))
        {
          goto LABEL_91;
        }

        goto LABEL_32;
      }

      __src[0] = *v27;
      LOWORD(__src[1]) = v29;
      BYTE2(__src[1]) = BYTE2(v29);
      BYTE3(__src[1]) = BYTE3(v29);
      BYTE4(__src[1]) = BYTE4(v29);
      BYTE5(__src[1]) = BYTE5(v29);
      v31 = v14;
      sub_100017D5C(v14, v68);
    }

    Data._Representation.append(contentsOf:)();
LABEL_35:
    sub_100007BAC(&v72);
    v73 = &type metadata for Data;
    v74 = &protocol witness table for Data;
    v72 = v76;
    v36 = sub_1000035D0(&v72, &type metadata for Data);
    v37 = *v36;
    v38 = v36[1];
    v39 = v38 >> 62;
    v40 = v70;
    if ((v38 >> 62) <= 1)
    {
      if (!v39)
      {
        __src[0] = *v36;
        LOWORD(__src[1]) = v38;
        BYTE2(__src[1]) = BYTE2(v38);
        BYTE3(__src[1]) = BYTE3(v38);
        BYTE4(__src[1]) = BYTE4(v38);
        BYTE5(__src[1]) = BYTE5(v38);
        if (BYTE6(v38))
        {
          if (BYTE6(v38) <= 0xEuLL)
          {
            *(&__dst + 6) = 0;
            *&__dst = 0;
            BYTE14(__dst) = BYTE6(v38);
            memcpy(&__dst, __src, BYTE6(v38));
            v37 = __dst;
            v38 = v64 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
            v64 = v38;
          }

          else
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v37 = BYTE6(v38) << 32;
            v38 = __DataStorage.init(bytes:length:)() | 0x4000000000000000;
          }
        }

        else
        {
          v37 = 0;
          v38 = 0xC000000000000000;
        }

        goto LABEL_73;
      }

      v49 = (v37 >> 32) - v37;
      if (v37 >> 32 < v37)
      {
        goto LABEL_85;
      }

      v50 = __DataStorage._bytes.getter();
      if (v50)
      {
        v51 = v50;
        v52 = __DataStorage._offset.getter();
        if (__OFSUB__(v37, v52))
        {
          goto LABEL_92;
        }

        v53 = (v37 - v52 + v51);
      }

      else
      {
        v53 = 0;
      }

      v56 = __DataStorage._length.getter();
      v37 = 0;
      if (v56 >= v49)
      {
        v55 = v49;
      }

      else
      {
        v55 = v56;
      }

      v38 = 0xC000000000000000;
      v16 = v67;
      if (!v53 || !v55)
      {
        goto LABEL_72;
      }

      if (v55 < 15)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v55;
        memcpy(&__dst, v53, v55);
        v37 = __dst;
        v38 = v62 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v62 = v38;
        goto LABEL_72;
      }

      goto LABEL_66;
    }

    if (v39 == 2)
    {
      v41 = *(v37 + 16);
      v42 = *(v37 + 24);
      v43 = __DataStorage._bytes.getter();
      if (v43)
      {
        v44 = v43;
        v45 = __DataStorage._offset.getter();
        if (__OFSUB__(v41, v45))
        {
          goto LABEL_90;
        }

        v46 = (v41 - v45 + v44);
        v47 = __OFSUB__(v42, v41);
        v48 = v42 - v41;
        if (v47)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v46 = 0;
        v47 = __OFSUB__(v42, v41);
        v48 = v42 - v41;
        if (v47)
        {
          goto LABEL_86;
        }
      }

      v54 = __DataStorage._length.getter();
      v37 = 0;
      if (v54 >= v48)
      {
        v55 = v48;
      }

      else
      {
        v55 = v54;
      }

      v38 = 0xC000000000000000;
      if (!v46)
      {
        v16 = v67;
        goto LABEL_72;
      }

      v16 = v67;
      if (!v55)
      {
LABEL_72:
        v40 = v70;
        goto LABEL_73;
      }

      if (v55 < 15)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v55;
        memcpy(&__dst, v46, v55);
        v37 = __dst;
        v38 = v63 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v63 = v38;
        goto LABEL_72;
      }

LABEL_66:
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v57 = __DataStorage.init(bytes:length:)();
      v58 = v57;
      if (v55 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v37 = swift_allocObject();
        *(v37 + 16) = 0;
        *(v37 + 24) = v55;
        v38 = v58 | 0x8000000000000000;
      }

      else
      {
        v37 = v55 << 32;
        v38 = v57 | 0x4000000000000000;
      }

      goto LABEL_72;
    }

LABEL_73:
    sub_100007BAC(&v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100A5B734(0, *(v3 + 2) + 1, 1, v3);
    }

    v60 = *(v3 + 2);
    v59 = *(v3 + 3);
    if (v60 >= v59 >> 1)
    {
      v3 = sub_100A5B734((v59 > 1), v60 + 1, 1, v3);
    }

    sub_100016590(v31, v68);
    sub_100016590(v66, v40);
    sub_100016590(v69, v16);
    *(v3 + 2) = v60 + 1;
    v61 = &v3[16 * v60];
    *(v61 + 4) = v37;
    *(v61 + 5) = v38;
    sub_1000035D0(v77, v78);
    v2 = 0;
    if (dispatch thunk of BinaryDecodingContaining.isAtEnd.getter())
    {
      goto LABEL_2;
    }
  }

LABEL_80:
  sub_100007BAC(v77);
  return sub_100007BAC(a1);
}

uint64_t sub_100EB5404(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016BE278, &qword_1013EE3D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100EB546C()
{
  result = qword_10169CB08;
  if (!qword_10169CB08)
  {
    sub_1000BC580(&qword_10169CB00, &qword_101399648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169CB08);
  }

  return result;
}

unint64_t sub_100EB54D0()
{
  result = qword_1016BE280;
  if (!qword_1016BE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE280);
  }

  return result;
}

unint64_t sub_100EB5524()
{
  result = qword_1016BE288;
  if (!qword_1016BE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TLVPackets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[5])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  if (*a1 >= 2u && (v4 = (v3 & 0xFE) + 2147483646, (v4 & 0x7FFFFFFE) != 0))
  {
    return (v4 & 0x7FFFFFFE | v3 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TLVPackets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100EB5648()
{
  result = qword_1016BE290;
  if (!qword_1016BE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE290);
  }

  return result;
}

unint64_t sub_100EB569C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016BE298, &qword_1013EE4F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_100EB5814();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_100B9CE70();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9[2] | (v10 << 32);
    sub_100007BAC(a1);
  }

  return v7;
}

unint64_t sub_100EB5814()
{
  result = qword_1016BE2A0;
  if (!qword_1016BE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE2A0);
  }

  return result;
}

unint64_t sub_100EB587C()
{
  result = qword_1016BE2A8;
  if (!qword_1016BE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE2A8);
  }

  return result;
}

unint64_t sub_100EB58D4()
{
  result = qword_1016BE2B0;
  if (!qword_1016BE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE2B0);
  }

  return result;
}

unint64_t sub_100EB592C()
{
  result = qword_1016BE2B8;
  if (!qword_1016BE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BE2B8);
  }

  return result;
}

void sub_100EB5980(uint64_t a1, uint64_t *a2)
{
  v59 = a2;
  v3 = type metadata accessor for SafeLocation(0);
  v52 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v45 - v6;
  v7 = &qword_1016BE3D0;
  v8 = &qword_1013EE770;
  v9 = sub_1000BC4D4(&qword_1016BE3D0, &qword_1013EE770);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for LocationOfInterestProvider.RemappingOperation(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v48 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = &v45 - v16;
  v62 = type metadata accessor for UUID();
  __chkstk_darwin(v62);
  v61 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v56 = (v13 + 56);
  v57 = v17 + 16;
  v58 = v17;
  v47 = v13;
  v54 = (v13 + 48);
  v55 = (v17 + 8);
  v60 = a1;

  v24 = 0;
  v53 = _swiftEmptyArrayStorage;
  v49 = v11;
LABEL_4:
  v25 = v24;
  v26 = v61;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
    v24 = v25;
LABEL_9:
    (*(v58 + 16))(v26, *(v60 + 48) + *(v58 + 72) * (__clz(__rbit64(v22)) | (v24 << 6)), v62);
    v27 = v26;
    v28 = *v59;
    if (*(*v59 + 16) && (v29 = sub_1000210EC(v27), (v30 & 1) != 0))
    {
      v31 = v12;
      v32 = v8;
      v33 = v7;
      v34 = v51;
      sub_100EC03A4(*(v28 + 56) + *(v52 + 72) * v29, v51, type metadata accessor for SafeLocation);
      v35 = v34;
      v36 = v50;
      sub_100EBFFE0(v35, v50, type metadata accessor for SafeLocation);
      v37 = v36;
      v7 = v33;
      v8 = v32;
      v12 = v31;
      v11 = v49;
      sub_100EBFFE0(v37, v49, type metadata accessor for SafeLocation);
      swift_storeEnumTagMultiPayload();
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v22 &= v22 - 1;
    (*v56)(v11, v38, 1, v12);
    v26 = v61;
    (*v55)(v61, v62);
    if ((*v54)(v11, 1, v12) != 1)
    {
      v45 = type metadata accessor for LocationOfInterestProvider.RemappingOperation;
      v39 = v46;
      sub_100EBFFE0(v11, v46, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      sub_100EBFFE0(v39, v48, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_100A5ED40(0, v53[2] + 1, 1, v53);
      }

      v41 = v53[2];
      v40 = v53[3];
      v42 = (v41 + 1);
      if (v41 >= v40 >> 1)
      {
        v45 = (v41 + 1);
        v44 = sub_100A5ED40((v40 > 1), v41 + 1, 1, v53);
        v42 = v45;
        v53 = v44;
      }

      v43 = v53;
      v53[2] = v42;
      sub_100EBFFE0(v48, v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      goto LABEL_4;
    }

    sub_10000B3A8(v11, v7, v8);
    v25 = v24;
  }

  while (v22);
LABEL_6:
  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return;
    }

    v22 = *(v19 + 8 * v24);
    ++v25;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_100EB5EE0()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SafeLocation(0);
  v7 = *(v1 + v6[8]);
  v8 = *(v1 + v6[9]);
  v9 = *(v1 + v6[10]);
  Date.init()();
  v10 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = [v10 initWithCoordinate:isa altitude:v7 horizontalAccuracy:v8 verticalAccuracy:0.0 course:v9 courseAccuracy:v9 speed:-1.0 speedAccuracy:-1.0 timestamp:{-1.0, 0xBFF0000000000000}];

  (*(v3 + 8))(v5, v2);
  [v12 setReferenceFrame:*(v1 + v6[11])];
  [v12 coordinate];
  v14 = v13;
  v16 = v15;

  UUID.uuidString.getter();
  v17 = objc_allocWithZone(CLCircularRegion);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 initWithCenter:v18 radius:v14 identifier:{v16, v9}];

  return v19;
}

uint64_t sub_100EB60E0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10000B3A8(v11, &unk_1016A0B10, &qword_10139BF40);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100EB626C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  v17 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100EC0098(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v3 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = v16;
  *(v3 + 72) = v15;
  *(v3 + 80) = _swiftEmptyArrayStorage;
  v11 = *(v10 + 16);
  *(v3 + 24) = *v10;
  *(v3 + 40) = v11;
  v12 = v17;
  *(v3 + 56) = *(v10 + 32);
  *(v3 + 64) = v12;
  return v3;
}

uint64_t sub_100EB6514()
{
  v0 = sub_1000BC4D4(&qword_1016BE5C0, &qword_1013EE8B8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - v2;
  v4 = sub_1000BC4D4(&qword_1016BE5C8, &qword_1013EE8C0);
  v5 = *(v4 - 8);
  v22 = v4;
  v23 = v5;
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v8 = sub_1000BC4D4(&qword_1016BE5D0, &qword_1013EE8C8);
  v9 = *(v8 - 8);
  v24 = v8;
  v25 = v9;
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  v12 = sub_1000BC4D4(&qword_1016BE5D8, &unk_1013EE8D0);
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  v28 = AnyCurrentValuePublisher.publisher.getter();
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  v21 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  sub_1000041A4(&qword_1016BE5E0, &qword_1016BE5C0, &qword_1013EE8B8, &protocol conformance descriptor for Publishers.Filter<A>);
  sub_100EC0684();
  Publisher<>.removeDuplicates()();
  (*(v1 + 8))(v3, v0);
  sub_1000041A4(&qword_1016BE5F0, &qword_1016BE5C8, &qword_1013EE8C0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_100EC00E0();
  v16 = v22;
  Publisher<>.setFailureType<A>(to:)();
  (*(v23 + 8))(v7, v16);

  static Subscribers.Demand.unlimited.getter();
  sub_1000BC4D4(&qword_1016BE438, &qword_1013EE7F0);
  sub_1000BC4D4(&qword_1016BE5F8, &unk_1013EE8E0);
  sub_1000041A4(&qword_1016BE600, &qword_1016BE5D0, &qword_1013EE8C8, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
  sub_1000041A4(&qword_1016BE608, &qword_1016BE5F8, &unk_1013EE8E0, v21);
  v17 = v24;
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  (*(v25 + 8))(v11, v17);
  sub_1000041A4(&qword_1016BE610, &qword_1016BE5D8, &unk_1013EE8D0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v18 = v26;
  Publisher.sink(receiveCompletion:receiveValue:)();
  (*(v27 + 8))(v15, v18);
  swift_beginAccess();
  sub_1000BC4D4(&qword_101697BB0, &qword_1013C1790);
  sub_1000041A4(&qword_101697BB8, &qword_101697BB0, &qword_1013C1790, &protocol conformance descriptor for [A]);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();
}

uint64_t sub_100EB6AE0()
{
  type metadata accessor for Transaction();
  sub_1000BC4D4(&qword_1016BE5F8, &unk_1013EE8E0);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100EB6B70@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000BC4D4(&qword_1016BE618, &unk_1013EE8F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v9[3] = sub_100EB8244(1);

  sub_1000BC4D4(&qword_1016BE5F8, &unk_1013EE8E0);
  sub_1000041A4(&qword_1016BE608, &qword_1016BE5F8, &unk_1013EE8E0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  sub_1000041A4(&qword_1016BE620, &qword_1016BE618, &unk_1013EE8F0, &protocol conformance descriptor for Publishers.HandleEvents<A>);
  v7 = Publisher.eraseToAnyPublisher()();
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  return result;
}

void sub_100EB6D60()
{
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B780);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Updated safe locations due to me device change.", v2, 2u);
  }
}

uint64_t sub_100EB6E48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{

  sub_100012908(a4, a5);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  *(v10 + 48) = a1;

  sub_100012908(a4, a5);
  v11 = qword_101694FA8;

  if (v11 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v14 == 1)
  {
    sub_100EB70E8(a2, a3 & 1, a4, a5, a1);
  }

  else
  {
    v12 = type metadata accessor for Transaction();
    __chkstk_darwin(v12);
    static Transaction.named<A>(_:with:)();
  }

  sub_1000BB27C(a4, a5);
}

uint64_t sub_100EB70E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v23 = a3;
  v5 = a2;
  v7 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1000BC4D4(&qword_1016BE628, &unk_1013EE900);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_100EB8244(v5);
  v26 = *(a1 + 16);
  v15 = v26;
  v27 = v14;
  v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = v15;
  sub_1000BC4D4(&qword_1016BE5F8, &unk_1013EE8E0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_1016BE608, &qword_1016BE5F8, &unk_1013EE8E0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1004682F0();
  Publisher.subscribe<A>(on:options:)();
  sub_10000B3A8(v9, &unk_1016B0FE0, &unk_101391980);

  v18 = swift_allocObject();
  v19 = v23;
  v20 = v24;
  v18[2] = v23;
  v18[3] = v20;
  v18[4] = v25;
  sub_100012908(v19, v20);
  sub_1000041A4(&qword_1016BE630, &qword_1016BE628, &unk_1013EE900, &protocol conformance descriptor for Publishers.SubscribeOn<A, B>);

  Publisher.oneshot(_:)();

  return (*(v11 + 8))(v13, v10);
}

void sub_100EB73CC(unsigned __int8 **a1, void (*a2)(uint64_t, void))
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    if (a2)
    {
      v3 = *(a1 + 8);
      sub_100EC0310(*a1, v3);
      a2(v2, v3 | 0x100u);
      sub_100EC071C(v2, v3, 1);
    }

LABEL_20:
    Transaction.capture()();
    return;
  }

  v5 = *(v2 + 2);
  if (v5)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_101123BB8(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v7 = v2 + 48;
    do
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      sub_100EC0380(v8, v9, *v7);
      _StringGuts.grow(_:)(51);
      v35 = 0;
      v36 = 0xE000000000000000;
      v11._object = 0x8000000101373030;
      v11._countAndFlagsBits = 0xD000000000000031;
      String.append(_:)(v11);
      v33[0] = v8;
      v33[1] = v9;
      v34 = v10;
      sub_100EC0380(v8, v9, v10);
      v12._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v12);

      sub_100EC032C(v8, v9, v10);
      v37 = v6;
      v14 = v6[2];
      v13 = v6[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        sub_101123BB8((v13 > 1), v14 + 1, 1);
        v6 = v37;
      }

      v7 += 24;
      v6[2] = v15;
      v16 = &v6[2 * v14];
      v16[4] = 0;
      v16[5] = 0xE000000000000000;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
    v15 = _swiftEmptyArrayStorage[2];
    if (!v15)
    {
LABEL_18:

      if (a2)
      {
        a2(0, 0);
      }

      goto LABEL_20;
    }
  }

  v17 = 0;
  v18 = v6 + 5;
  p_weak_ivar_lyt = &BeaconKeyManager.weak_ivar_lyt;
  while (v17 < v6[2])
  {
    v20 = *(v18 - 1);
    v21 = *v18;
    v22 = p_weak_ivar_lyt[366];

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177B780);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = v15;
      v27 = p_weak_ivar_lyt;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v20;
      v31 = v29;
      v33[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000136BC(v30, v21, v33);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s", v28, 0xCu);
      sub_100007BAC(v31);

      p_weak_ivar_lyt = v27;
      v15 = v26;
    }

    ++v17;
    v18 += 2;
    if (v15 == v17)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_100EB7744(uint64_t (*a1)(void **), uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  if ((v9 - 1) > 1)
  {

    v24 = _swiftEmptyArrayStorage;
    v25 = 0;
    return a1(&v24);
  }

  else
  {
    sub_1000D2A70(a4 + 24, &v21, &qword_1016BE5A8, &qword_1013EE8A8);
    if (v22)
    {
      sub_10000A748(&v21, &v24);
    }

    else
    {
      v12 = objc_allocWithZone(RTRoutineManager);

      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 initWithRestorationIdentifier:v13];

      v26 = sub_100008BB8(0, &qword_1016BE5B0, RTRoutineManager_ptr);
      v27 = &off_101658BA8;
      v24 = v14;
      if (v22)
      {
        sub_10000B3A8(&v21, &qword_1016BE5A8, &qword_1013EE8A8);
      }
    }

    v15 = v26;
    v16 = v27;
    sub_1000035D0(&v24, v26);
    if (v9 == 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = -1;
    }

    type metadata accessor for RTLocationOfInterestType(0);
    v22 = v18;
    v23 = &off_101658B90;
    *&v21 = v17;
    sub_10001F280(&v24, v20);
    v19 = swift_allocObject();
    sub_10000A748(v20, (v19 + 2));
    v19[7] = sub_100EC0630;
    v19[8] = v10;
    v19[9] = a5;
    (v16[1])(&v21, sub_100EC0674, v19, v15, v16);

    sub_100007BAC(&v21);
    return sub_100007BAC(&v24);
  }
}

uint64_t sub_100EB7998(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v9 = type metadata accessor for SafeLocation(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_10177B780);

  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v40 = a4;
    v17 = v16;
    v38 = swift_slowAlloc();
    v42[0] = v38;
    *v17 = 136315394;
    v41[0] = a1;

    sub_1000BC4D4(&qword_1016BE5B8, &qword_1013EE8B0);
    v18 = String.init<A>(describing:)();
    v39 = a5;
    v20 = sub_1000136BC(v18, v19, v42);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v41[0] = a2;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000136BC(v21, v22, v42);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "Received locations of interest: %s error: %s", v17, 0x16u);
    swift_arrayDestroy();

    a4 = v40;
  }

  if (a2)
  {
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = sub_1000136BC(v28, v29, v42);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to fetch locations of interest due to error: %s", v26, 0xCu);
      sub_100007BAC(v27);
    }

    swift_errorRetain();
    a4(a2, 256);
  }

  else
  {
    if (a1)
    {
      v32 = *(a1 + 16);
      v33 = _swiftEmptyArrayStorage;
      if (v32)
      {
        v43 = _swiftEmptyArrayStorage;
        sub_10112483C(0, v32, 0);
        v33 = v43;
        v34 = a1 + 32;
        do
        {
          sub_10001F280(v34, v42);
          sub_10001F280(v42, v41);
          sub_100EB7E64(v41, v12, 80.0);
          sub_100007BAC(v42);
          v43 = v33;
          v36 = v33[2];
          v35 = v33[3];
          if (v36 >= v35 >> 1)
          {
            sub_10112483C((v35 > 1), v36 + 1, 1);
            v33 = v43;
          }

          v33[2] = v36 + 1;
          sub_100EBFFE0(v12, v33 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v36, type metadata accessor for SafeLocation);
          v34 += 40;
          --v32;
        }

        while (v32);
      }
    }

    else
    {
      v33 = _swiftEmptyArrayStorage;
    }

    a4(v33, 0);
  }
}

uint64_t sub_100EB7E64@<X0>(void *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v48 = type metadata accessor for UUID();
  v6 = *(v48 - 8);
  v7 = __chkstk_darwin(v48);
  v47 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v44[-v9];
  v11 = a1[3];
  v12 = a1[4];
  sub_1000035D0(a1, v11);
  (*(v12 + 8))(v11, v12);
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  v13 = a1[3];
  v14 = a1[4];
  sub_1000035D0(a1, v13);
  (*(v14 + 32))(v50, v13, v14);
  v15 = sub_100EBEDA0(v50, a3);
  v16 = a1[3];
  v17 = a1[4];
  sub_1000035D0(a1, v16);
  v18 = (*(v17 + 16))(v16, v17);
  v20 = v19;
  v22 = a1[3];
  v21 = a1[4];
  sub_1000035D0(a1, v22);
  (*(v21 + 24))(v50, v22, v21);
  v23 = *sub_1000035D0(v50, v50[3]) + 1;
  if (v23 >= 5)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0x504030200uLL >> (8 * v23);
  }

  v45 = v24;
  v25 = 0xE000000000000000;
  if (v20)
  {
    v25 = v20;
  }

  v46 = v25;
  if (v20)
  {
    v26 = v18;
  }

  else
  {
    v26 = 0;
  }

  v27 = a1[3];
  v28 = a1[4];
  sub_1000035D0(a1, v27);
  (*(v28 + 24))(v49, v27, v28);
  if (*sub_1000035D0(v49, v49[3]))
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

  sub_100007BAC(v49);
  v31 = v47;
  v30 = v48;
  (*(v6 + 16))(v47, v10, v48);
  [v15 coordinate];
  v33 = v32;
  [v15 coordinate];
  v35 = v34;
  [v15 horizontalAccuracy];
  v37 = v36;
  v38 = [v15 referenceFrame];

  if (v38 == 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2 * (v38 == 2);
  }

  (*(v6 + 8))(v10, v30);
  *a2 = xmmword_10138C660;
  v40 = type metadata accessor for SafeLocation(0);
  (*(v6 + 32))(&a2[v40[5]], v31, v30);
  a2[v40[6]] = v45;
  v41 = &a2[v40[7]];
  v42 = v46;
  *v41 = v26;
  *(v41 + 1) = v42;
  *&a2[v40[8]] = v33;
  *&a2[v40[9]] = v35;
  *&a2[v40[10]] = v37;
  a2[v40[11]] = v39;
  a2[v40[12]] = v29;
  *&a2[v40[13]] = _swiftEmptyArrayStorage;
  sub_100007BAC(v50);
  return sub_100007BAC(a1);
}

uint64_t sub_100EB8244(int a1)
{
  LODWORD(v129) = a1;
  v127 = *v1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v2 - 8);
  v111 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v107 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v6 - 8);
  v115 = &v100 - v7;
  v106 = sub_1000BC4D4(&qword_1016BE3F0, &qword_1013EE7A0);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v104 = &v100 - v8;
  v112 = sub_1000BC4D4(&qword_1016BE3F8, &qword_1013EE7A8);
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v108 = &v100 - v9;
  v114 = sub_1000BC4D4(&qword_1016BE400, &qword_1013EE7B0);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v109 = &v100 - v10;
  v11 = sub_1000BC4D4(&qword_1016BE408, &qword_1013EE7B8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v116 = &v100 - v13;
  v14 = sub_1000BC4D4(&qword_1016BE410, &qword_1013EE7C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v117 = &v100 - v16;
  v126 = sub_1000BC4D4(&qword_1016BE418, &qword_1013EE7C8);
  v128 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v100 - v17;
  v124 = sub_1000BC4D4(&qword_1016BE420, &qword_1013EE7D0);
  v119 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v100 - v18;
  v122 = sub_1000BC4D4(&qword_1016BE428, &qword_1013EE7D8);
  v118 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v100 - v19;
  v131 = sub_1000BC4D4(&qword_1016BE430, &unk_1013EE7E0);
  v20 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v100 - v21;
  v22 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v100 - v23;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v120 = &v100 - v30;
  My = type metadata accessor for Feature.FindMy();
  v136 = My;
  v137 = sub_100EC0098(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v32 = sub_1000280DC(&v134);
  (*(*(My - 8) + 104))(v32, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(&v134);
  if ((My & 1) == 0)
  {
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v134 = 0x7365547265646E75;
    v135 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v133 != 1)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000076D4(v37, qword_10177B780);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Ignoring LOI update as FF is disabled.", v40, 2u);
      }

      type metadata accessor for SPSeparationMonitoringError(0);
      v134 = 1;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100EC0098(&qword_101696490, type metadata accessor for SPSeparationMonitoringError, &unk_10138AAF8);
      _BridgedStoredNSError.init(_:userInfo:)();
      v134 = v133;
      LOBYTE(v135) = 1;
      goto LABEL_19;
    }
  }

  AnyCurrentValuePublisher.value.getter();
  if (v134 != 1)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000076D4(v33, qword_10177B780);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "This is not a me device, Safe Locations can't be refreshed.", v36, 2u);
    }

    v134 = 0;
    LOBYTE(v135) = 2;
LABEL_19:
    sub_1000BC4D4(&qword_1016BE438, &qword_1013EE7F0);
    sub_100EC00E0();
    v41 = v130;
    Fail.init(error:)();
    sub_1000041A4(&qword_1016BE448, &qword_1016BE430, &unk_1013EE7E0, &protocol conformance descriptor for Fail<A, B>);
    v42 = v131;
    v43 = Publisher.eraseToAnyPublisher()();
    (*(v20 + 8))(v41, v42);
    return v43;
  }

  v103 = v12;
  if (v129)
  {
LABEL_26:
    v101 = v15;
    v102 = v14;
    v59 = sub_100EE8F6C();
    v60 = *(v59 + 2);
    v100 = v11;
    if (v60)
    {
      v134 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      ++v119;
      v120 = (v128 + 8);
      ++v118;
      v61 = 32;
      v62 = v132;
      v130 = v59;
      do
      {
        v128 = v61;
        v129 = v60;
        v63 = v130[v61];
        v64 = swift_allocObject();
        *(v64 + 16) = v63;
        LODWORD(v131) = v63;
        v65 = v127;
        *(v64 + 24) = v62;
        *(v64 + 32) = v65;
        sub_1000BC4D4(&qword_1016BE450, &qword_1013EE7F8);
        swift_allocObject();

        v133 = Future.init(_:)();
        v66 = swift_allocObject();
        *(v66 + 16) = v63;
        *(v66 + 24) = v132;

        static Subscribers.Demand.unlimited.getter();
        sub_1000BC4D4(&qword_1016BE458, &qword_1013EE800);
        sub_1000041A4(&qword_1016BE460, &qword_1016BE450, &qword_1013EE7F8, &protocol conformance descriptor for Future<A, B>);
        sub_1000041A4(&qword_1016BE468, &qword_1016BE458, &qword_1013EE800, &protocol conformance descriptor for AnyPublisher<A, B>);
        v67 = v125;
        Publisher.flatMap<A>(maxPublishers:_:)();

        v62 = v132;

        v68 = swift_allocObject();
        *(v68 + 16) = v131;
        *(v68 + 24) = v62;

        static Subscribers.Demand.unlimited.getter();
        sub_1000BC4D4(&qword_1016BE470, &qword_1013EE808);
        sub_1000041A4(&qword_1016BE478, &qword_1016BE418, &qword_1013EE7C8, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
        sub_1000041A4(&qword_1016BE480, &qword_1016BE470, &qword_1013EE808, &protocol conformance descriptor for AnyPublisher<A, B>);
        v69 = v123;
        v70 = v126;
        Publisher.flatMap<A, B>(maxPublishers:_:)();

        (*v120)(v67, v70);
        *(swift_allocObject() + 16) = v131;
        sub_1000BC4D4(&qword_1016BE488, &qword_1013EE810);
        sub_1000041A4(&qword_1016BE490, &qword_1016BE420, &qword_1013EE7D0, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
        sub_1000041A4(&qword_1016BE498, &qword_1016BE488, &qword_1013EE810, &protocol conformance descriptor for AnyPublisher<A, B>);
        v71 = v121;
        v72 = v124;
        Publisher.catch<A>(_:)();

        (*v119)(v69, v72);
        sub_1000041A4(&qword_1016BE4A0, &qword_1016BE428, &qword_1013EE7D8, &protocol conformance descriptor for Publishers.Catch<A, B>);
        v73 = v122;
        v74 = Publisher.eraseToAnyPublisher()();
        (*v118)(v71, v73);
        v133 = v74;
        Publisher.eraseToAnyPublisher()();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v75 = v129;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v61 = v128 + 1;
        v60 = (v75 - 1);
      }

      while (v60);

      v76 = v134;
    }

    else
    {

      v76 = _swiftEmptyArrayStorage;
      v62 = v132;
    }

    v77 = v127;
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_1000076D4(v78, qword_10177B780);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Will update all LOI backed safe locations.", v81, 2u);
    }

    v82 = dispatch_group_create();
    v134 = v76;
    sub_1000BC4D4(&qword_1016BE488, &qword_1013EE810);
    sub_1000BC4D4(&qword_1016BE4A8, &qword_1013EE818);
    sub_1000041A4(&qword_1016BE498, &qword_1016BE488, &qword_1013EE810, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000041A4(&qword_1016BE4B0, &qword_1016BE4A8, &qword_1013EE818, &protocol conformance descriptor for [A]);
    v83 = v104;
    Publishers.MergeMany.init<A>(_:)();
    sub_1000041A4(&qword_1016BE4B8, &qword_1016BE3F0, &qword_1013EE7A0, &protocol conformance descriptor for Publishers.MergeMany<A>);
    v84 = v108;
    v85 = v106;
    Publisher.collect()();
    (*(v105 + 8))(v83, v85);
    v134 = v62[2];
    v86 = v134;
    static DispatchQoS.background.getter();
    static DispatchWorkItemFlags.barrier.getter();
    v87 = v82;
    v88 = v115;
    OS_dispatch_queue.SchedulerOptions.init(qos:flags:group:)();
    v89 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v89 - 8) + 56))(v88, 0, 1, v89);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&qword_1016BE4C0, &qword_1016BE3F8, &qword_1013EE7A8, &protocol conformance descriptor for Publishers.Collect<A>);
    sub_1004682F0();
    v90 = v109;
    v91 = v112;
    Publisher.subscribe<A>(on:options:)();
    sub_10000B3A8(v88, &unk_1016B0FE0, &unk_101391980);

    (*(v110 + 8))(v84, v91);
    sub_1000041A4(&qword_1016BE4C8, &qword_1016BE400, &qword_1013EE7B0, &protocol conformance descriptor for Publishers.SubscribeOn<A, B>);
    sub_100EC00E0();
    v92 = v116;
    v93 = v114;
    Publisher<>.setFailureType<A>(to:)();
    (*(v113 + 8))(v90, v93);
    *(swift_allocObject() + 16) = v77;
    sub_1000041A4(&qword_1016BE4D0, &qword_1016BE408, &qword_1013EE7B8, &protocol conformance descriptor for Publishers.SetFailureType<A, B>);
    v94 = v100;
    v95 = v117;
    Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

    (*(v103 + 8))(v92, v94);
    sub_1000041A4(&qword_1016BE4D8, &qword_1016BE410, &qword_1013EE7C0, &protocol conformance descriptor for Publishers.HandleEvents<A>);
    v96 = v102;
    v43 = Publisher.eraseToAnyPublisher()();

    (*(v101 + 8))(v95, v96);
    return v43;
  }

  sub_100EB60E0(v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_10000B3A8(v24, &unk_101696900, &unk_10138B1E0);
    goto LABEL_26;
  }

  v44 = v120;
  (*(v26 + 32))(v120, v24, v25);
  Date.timeIntervalSinceNow.getter();
  if (v45 >= 86400.0)
  {
    (*(v26 + 8))(v44, v25);
    goto LABEL_26;
  }

  if (qword_101694B70 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000076D4(v46, qword_10177B780);
  v47 = v120;
  v48 = v25;
  (*(v26 + 16))(v29, v120, v25);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v129 = v51;
    v132 = swift_slowAlloc();
    v134 = v132;
    *v51 = 136315138;
    sub_100EC0098(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v48;
    v55 = v54;
    v56 = *(v26 + 8);
    v56(v29, v53);
    v57 = sub_1000136BC(v52, v55, &v134);
    v48 = v53;

    v58 = v129;
    *(v129 + 1) = v57;
    _os_log_impl(&_mh_execute_header, v49, v50, "Ignoring LOI update as last refresh date is too fresh lastUpdateDate: %s", v58, 0xCu);
    sub_100007BAC(v132);

    v47 = v120;
  }

  else
  {

    v56 = *(v26 + 8);
    v56(v29, v48);
  }

  v134 = 1;
  LOBYTE(v135) = 2;
  sub_1000BC4D4(&qword_1016BE438, &qword_1013EE7F0);
  sub_100EC00E0();
  v98 = v130;
  Fail.init(error:)();
  sub_1000041A4(&qword_1016BE448, &qword_1016BE430, &unk_1013EE7E0, &protocol conformance descriptor for Fail<A, B>);
  v99 = v131;
  v43 = Publisher.eraseToAnyPublisher()();
  (*(v20 + 8))(v98, v99);
  v56(v47, v48);
  return v43;
}

uint64_t sub_100EB9A78()
{
  v0 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  Date.init()();
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return sub_100EC0168(v2);
}

uint64_t sub_100EB9B34@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v142 = a3;
  LODWORD(v144) = a2;
  v122 = sub_1000BC4D4(&qword_1016BE528, &qword_1013EE860);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v119 - v6;
  v157 = sub_1000BC4D4(&qword_1016BE530, &qword_1013EE868);
  v125 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v119 - v7;
  v155 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v124 = *(v155 - 8);
  __chkstk_darwin(v155);
  v154 = &v119 - v8;
  v9 = type metadata accessor for LocationOfInterestProvider.RemappingOperation(0);
  v123 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v152 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v151 = &v119 - v13;
  v153 = v14;
  __chkstk_darwin(v12);
  v159 = &v119 - v15;
  v132 = sub_1000BC4D4(&qword_1016BE538, &qword_1013EE870);
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v126 = &v119 - v16;
  v17 = sub_1000BC4D4(&qword_1016BE540, &qword_1013EE878);
  v130 = *(v17 - 1);
  __chkstk_darwin(v17);
  v127 = &v119 - v18;
  v19 = sub_1000BC4D4(&qword_1016BE548, &qword_1013EE880);
  v131 = *(v19 - 8);
  __chkstk_darwin(v19);
  v128 = &v119 - v20;
  v158 = type metadata accessor for SafeLocation(0);
  v162 = *(v158 - 8);
  v21 = __chkstk_darwin(v158);
  v163 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v145 = &v119 - v24;
  v25 = __chkstk_darwin(v23);
  v148 = &v119 - v26;
  v150 = v27;
  __chkstk_darwin(v25);
  v146 = (&v119 - v28);
  v29 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v29 - 8);
  v161 = &v119 - v30;
  v139 = type metadata accessor for DirectorySequence();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for URL();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v143 = &v119 - v38;
  v136 = *a1;
  if (qword_101694B70 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v39 = type metadata accessor for Logger();
    v140 = sub_1000076D4(v39, qword_10177B780);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v160 = v9;
    v135 = a4;
    v134 = v19;
    v133 = v17;
    v137 = v37;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v165 = v44;
      *v43 = 136315138;
      LOBYTE(v164) = v144;
      v45 = String.init<A>(describing:)();
      v47 = sub_1000136BC(v45, v46, &v165);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Updating smart safe locations of type: %s", v43, 0xCu);
      sub_100007BAC(v44);
    }

    v149 = *(v142 + 64);
    v48 = *(v149 + 168);
    if (qword_101694F88 != -1)
    {
      swift_once();
    }

    v49 = sub_1000076D4(v33, qword_10177C268);
    (*(v34 + 16))(v143, v49, v33);
    v164 = _swiftEmptyArrayStorage;
    v165 = _swiftEmptyArrayStorage;
    v50 = [objc_opt_self() defaultManager];
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v51 = v161;
    DirectorySequence.next()();
    v52 = v51;
    v141 = v34;
    v147 = *(v34 + 48);
    v53 = v147(v51, 1, v33);
    v34 = v137;
    if (v53 != 1)
    {
      v54 = *(v141 + 32);
      v55 = (v141 + 8);
      do
      {
        v54(v34, v52, v33);
        v56 = objc_autoreleasePoolPush();
        sub_1006005CC(v34, v48, &v165, &v164);
        objc_autoreleasePoolPop(v56);
        (*v55)(v34, v33);
        DirectorySequence.next()();
        v52 = v161;
      }

      while (v147(v161, 1, v33) != 1);
    }

    (*(v138 + 8))(v32, v139);
    v57 = static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v58 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_10138BBE0;
    a4 = v165;
    v60 = v165[2];
    *(v59 + 56) = &type metadata for Int;
    *(v59 + 64) = &protocol witness table for Int;
    *(v59 + 32) = v60;
    sub_100EC0098(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

    v61 = v143;
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    *(v59 + 96) = &type metadata for String;
    *(v59 + 104) = sub_100008C00();
    *(v59 + 72) = v62;
    *(v59 + 80) = v64;
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v58, "Found %i records at %@", 22, 2, v59);

    (*(v141 + 8))(v61, v33);

    v65 = a4[2];
    v17 = _swiftEmptyArrayStorage;
    if (!v65)
    {
      break;
    }

    v19 = 0;
    v37 = _swiftEmptyArrayStorage;
    v66 = v144;
    v9 = v146;
    while (v19 < a4[2])
    {
      v34 = (*(v162 + 80) + 32) & ~*(v162 + 80);
      v32 = *(v162 + 72);
      sub_100EC03A4(a4 + v34 + v32 * v19, v9, type metadata accessor for SafeLocation);
      v67 = *(v9 + *(v158 + 24));
      if (v67 == v66 || v67 == 1)
      {
        sub_100EBFFE0(v9, v148, type metadata accessor for SafeLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v165 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112483C(0, v37[2] + 1, 1);
          v66 = v144;
          v37 = v165;
        }

        v71 = v37[2];
        v70 = v37[3];
        v33 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          sub_10112483C((v70 > 1), v71 + 1, 1);
          v66 = v144;
          v37 = v165;
        }

        v37[2] = v33;
        sub_100EBFFE0(v148, v37 + v34 + v71 * v32, type metadata accessor for SafeLocation);
        v9 = v146;
      }

      else
      {
        sub_100EC040C(v9, type metadata accessor for SafeLocation);
      }

      if (v65 == ++v19)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  v37 = _swiftEmptyArrayStorage;
LABEL_24:

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v165 = v75;
    *v74 = 136315138;
    v76 = Array.description.getter();
    v78 = sub_1000136BC(v76, v77, &v165);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v72, v73, "Existing safe locations: %s", v74, 0xCu);
    sub_100007BAC(v75);
  }

  v79 = v159;
  sub_100EBC3B8(v144, v37, v136);
  v81 = v80;

  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  v144 = v81;

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v165 = v85;
    *v84 = 136315138;
    v86 = Array.description.getter();
    v88 = sub_1000136BC(v86, v87, &v165);

    *(v84 + 4) = v88;
    _os_log_impl(&_mh_execute_header, v82, v83, "Received mapping response: %s", v84, 0xCu);
    sub_100007BAC(v85);
  }

  v89 = *(v144 + 16);
  if (v89)
  {
    v165 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v90 = *(v123 + 80);
    v91 = v144 + ((v90 + 32) & ~v90);
    v158 = v124 + 8;
    v92 = *(v123 + 72);
    v161 = v90;
    v147 = ((v90 + 16) & ~v90);
    v148 = v92;
    v146 = (v125 + 8);
    v93 = v145;
    do
    {
      sub_100EC03A4(v91, v79, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      v105 = v151;
      sub_100EC03A4(v79, v151, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_100EBFFE0(v105, v93, type metadata accessor for SafeLocation);
      sub_100EC03A4(v93, v163, type metadata accessor for SafeLocation);
      v107 = (*(v162 + 80) + 24) & ~*(v162 + 80);
      if (EnumCaseMultiPayload)
      {
        v108 = swift_allocObject();
        *(v108 + 16) = v149;
        sub_100EBFFE0(v163, v108 + v107, type metadata accessor for SafeLocation);
      }

      else
      {
        v94 = v107 + v150;
        v95 = swift_allocObject();
        *(v95 + 16) = v149;
        sub_100EBFFE0(v163, v95 + v107, type metadata accessor for SafeLocation);
        *(v95 + v94) = 1;
        v93 = v145;
      }

      sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
      sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850, &protocol conformance descriptor for Future<A, B>);
      v96 = v154;
      Deferred.init(createPublisher:)();
      sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98, &protocol conformance descriptor for Deferred<A>);
      v97 = v155;
      v98 = Publisher.eraseToAnyPublisher()();
      (*v158)(v96, v97);
      sub_100EC040C(v93, type metadata accessor for SafeLocation);
      v164 = v98;
      v99 = v152;
      sub_100EC03A4(v79, v152, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      v100 = v147;
      v101 = swift_allocObject();
      sub_100EBFFE0(v99, v100 + v101, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
      sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0, &protocol conformance descriptor for AnyPublisher<A, B>);
      v102 = v156;
      Publisher.map<A>(_:)();

      sub_1000041A4(&qword_1016BE550, &qword_1016BE530, &qword_1013EE868, &protocol conformance descriptor for Publishers.Map<A, B>);
      v103 = v157;
      Publisher.eraseToAnyPublisher()();

      v104 = v102;
      v79 = v159;
      (*v146)(v104, v103);
      sub_100EC040C(v79, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v91 += v148;
      --v89;
    }

    while (v89);

    sub_1000BC4D4(&qword_1016BE558, &qword_1013EE888);
    sub_1000BC4D4(&qword_1016BE560, &qword_1013EE890);
    sub_1000041A4(&qword_1016BE568, &qword_1016BE558, &qword_1013EE888, &unk_1013C4AC8);
    sub_1000041A4(&qword_1016BE570, &qword_1016BE560, &qword_1013EE890, &protocol conformance descriptor for [A]);
    v109 = v126;
    Publishers.MergeMany.init<A>(_:)();
    sub_1000041A4(&qword_1016BE578, &qword_1016BE538, &qword_1013EE870, &protocol conformance descriptor for Publishers.MergeMany<A>);
    v110 = v127;
    v111 = v132;
    Publisher.compactMap<A>(_:)();
    (*(v129 + 8))(v109, v111);
    sub_1000041A4(&qword_1016BE580, &qword_1016BE540, &qword_1013EE878, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v112 = v128;
    v113 = v133;
    Publisher.collect()();
    (*(v130 + 8))(v110, v113);
    sub_1000041A4(&qword_1016BE588, &qword_1016BE548, &qword_1013EE880, &protocol conformance descriptor for Publishers.Collect<A>);
    v114 = v134;
    v115 = Publisher.eraseToAnyPublisher()();
    result = (*(v131 + 8))(v112, v114);
  }

  else
  {

    v165 = _swiftEmptyArrayStorage;
    sub_1000BC4D4(&qword_1016BE590, &qword_1013EE898);
    v117 = v120;
    Just.init(_:)();
    sub_1000041A4(&qword_1016BE598, &qword_1016BE528, &qword_1013EE860, &protocol conformance descriptor for Just<A>);
    v118 = v122;
    v115 = Publisher.eraseToAnyPublisher()();
    result = (*(v121 + 8))(v117, v118);
  }

  *v135 = v115;
  return result;
}

uint64_t sub_100EBB25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016BE5A0, &qword_1013EE8A0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_1000D2A70(a1, &v10 - v5, &qword_1016BE5A0, &qword_1013EE8A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000B3A8(v6, &qword_1016BE5A0, &qword_1013EE8A0);
    v7 = 1;
  }

  else
  {
    sub_100EBFFE0(v6, a2, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
    v7 = 0;
  }

  v8 = type metadata accessor for LocationOfInterestProvider.RemappingOperation(0);
  return (*(*(v8 - 8) + 56))(a2, v7, 1, v8);
}

uint64_t sub_100EBB39C@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v50 = a3;
  v62 = a4;
  v6 = sub_1000BC4D4(&qword_1016BE4E0, &qword_1013EE820);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v49 - v8;
  v10 = sub_1000BC4D4(&qword_1016BE4F8, &unk_1013EE830);
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v49 - v11;
  v13 = sub_1000BC4D4(&qword_1016B16B8, &qword_1013D0A98);
  v53 = *(v13 - 8);
  v54 = v13;
  __chkstk_darwin(v13);
  v52 = v49 - v14;
  v15 = sub_1000BC4D4(&qword_1016BE500, &qword_1013EE840);
  v57 = *(v15 - 8);
  v58 = v15;
  __chkstk_darwin(v15);
  v55 = v49 - v16;
  v17 = sub_1000BC4D4(&qword_1016BE508, &qword_1013EE848);
  v59 = *(v17 - 8);
  v60 = v17;
  __chkstk_darwin(v17);
  v56 = v49 - v18;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v61 = a2;

  if ((sub_100EBBC78(v24) & 1) != 0 && a2 == 2)
  {
    v25 = *(v50 + 64);
    v26 = sub_1009EC650();
    v27 = v26[2];
    if (v27)
    {
      v50 = v25;
      v51 = v23;
      v67 = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v27, 0);
      v28 = v67;
      v49[1] = v26;
      v29 = (v26 + 4);
      do
      {
        sub_10001F280(v29, v63);
        v31 = v65;
        v30 = v66;
        sub_1000035D0(v63, v65);
        (*(*(*(v30 + 8) + 8) + 32))(v31);
        sub_100007BAC(v63);
        v67 = v28;
        v33 = v28[2];
        v32 = v28[3];
        if (v33 >= v32 >> 1)
        {
          sub_101123D4C((v32 > 1), v33 + 1, 1);
          v28 = v67;
        }

        v28[2] = v33 + 1;
        (*(v20 + 32))(v28 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v33, v22, v19);
        v29 += 40;
        --v27;
      }

      while (v27);

      v25 = v50;
      v23 = v51;
    }

    else
    {

      v28 = _swiftEmptyArrayStorage;
    }

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1000076D4(v36, qword_10177B780);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "New Safe Location triggered auto-enrollment.", v39, 2u);
    }

    v40 = swift_allocObject();
    *(v40 + 16) = v25;
    *(v40 + 24) = v28;

    sub_1000BC4D4(&unk_1016B16A0, &unk_1013EE850);
    sub_1000041A4(&qword_1016B16D0, &unk_1016B16A0, &unk_1013EE850, &protocol conformance descriptor for Future<A, B>);
    v41 = v52;
    Deferred.init(createPublisher:)();
    sub_1000041A4(&qword_1016B16D8, &qword_1016B16B8, &qword_1013D0A98, &protocol conformance descriptor for Deferred<A>);
    v42 = v54;
    v43 = Publisher.eraseToAnyPublisher()();
    (*(v53 + 8))(v41, v42);
    v63[0] = v43;
    v44 = swift_allocObject();
    *(v44 + 16) = v61;
    *(v44 + 24) = v23;
    *(v44 + 32) = 0;

    sub_1000BC4D4(&qword_1016B16E0, &qword_1013D0AB0);
    sub_1000041A4(&qword_1016B16E8, &qword_1016B16E0, &qword_1013D0AB0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v45 = v55;
    Publisher.map<A>(_:)();

    sub_1000041A4(&qword_1016BE518, &qword_1016BE500, &qword_1013EE840, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_100EC00E0();
    v46 = v56;
    v47 = v58;
    Publisher.mapError<A>(_:)();
    (*(v57 + 8))(v45, v47);
    sub_1000041A4(&qword_1016BE520, &qword_1016BE508, &qword_1013EE848, &protocol conformance descriptor for Publishers.MapError<A, B>);
    v48 = v60;
    v34 = Publisher.eraseToAnyPublisher()();

    result = (*(v59 + 8))(v46, v48);
  }

  else
  {
    v63[0] = v61;
    v63[1] = v23;
    v64 = 0;

    Just.init(_:)();
    sub_100EC00E0();
    Just.setFailureType<A>(to:)();
    (*(v7 + 8))(v9, v6);
    sub_1000041A4(&qword_1016BE510, &qword_1016BE4F8, &unk_1013EE830, &protocol conformance descriptor for Result<A, B>.Publisher);
    v34 = Publisher.eraseToAnyPublisher()();

    result = (*(v51 + 8))(v12, v10);
  }

  *v62 = v34;
  return result;
}

uint64_t sub_100EBBC78(uint64_t a1)
{
  v2 = type metadata accessor for LocationOfInterestProvider.RemappingOperation(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      sub_100EC03A4(v10, v8, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      sub_100EBFFE0(v8, v5, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100EC040C(v5, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
      }

      else
      {
        v12 = v5[*(sub_1000BC4D4(&qword_1016BE3E8, &unk_1013EE790) + 48)];
        sub_100EC040C(v5, type metadata accessor for SafeLocation);
        if ((v12 & 1) == 0)
        {
          return 1;
        }
      }

      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

id sub_100EBBE30@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  *(a2 + 8) = 1;
  return v2;
}

uint64_t sub_100EBBE44@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  v17[0] = a3;
  v5 = sub_1000BC4D4(&qword_1016BE4E0, &qword_1013EE820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v9 = sub_1000BC4D4(&qword_1016BE4E8, &qword_1013EE828);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v17[1] = a2;
  v17[2] = v13;
  v18 = v14 | 0x40;
  sub_100EC0310(v13, v14);
  Just.init(_:)();
  Just.setFailureType<A>(to:)();
  (*(v6 + 8))(v8, v5);
  sub_1000041A4(&qword_1016BE4F0, &qword_1016BE4E8, &qword_1013EE828, &protocol conformance descriptor for Result<A, B>.Publisher);
  v15 = Publisher.eraseToAnyPublisher()();
  result = (*(v10 + 8))(v12, v9);
  *v17[0] = v15;
  return result;
}

uint64_t sub_100EBC060()
{
  v1 = v0;
  v2 = type metadata accessor for SafeLocation(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v8 = type metadata accessor for LocationOfInterestProvider.RemappingOperation(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100EC03A4(v1, v10, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100EBFFE0(v10, v5, type metadata accessor for SafeLocation);
      v12 = 0x65766F6D6572;
    }

    else
    {
      sub_100EBFFE0(v10, v5, type metadata accessor for SafeLocation);
      v12 = 0x657461647075;
    }

    v22 = v12 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
    v23 = 0xE700000000000000;
    type metadata accessor for UUID();
    sub_100EC0098(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v19 = v22;
  }

  else
  {
    v13 = v10[*(sub_1000BC4D4(&qword_1016BE3E8, &unk_1013EE790) + 48)];
    sub_100EBFFE0(v10, v7, type metadata accessor for SafeLocation);
    v22 = 0;
    v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v22 = 0x20657461657263;
    v23 = 0xE700000000000000;
    type metadata accessor for UUID();
    sub_100EC0098(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x206465766F6D202CLL;
    v15._object = 0xE800000000000000;
    String.append(_:)(v15);
    if (v13)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v13)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = v17;
    String.append(_:)(*&v16);

    v19 = v22;
    v5 = v7;
  }

  sub_100EC040C(v5, type metadata accessor for SafeLocation);
  return v19;
}

void sub_100EBC3B8(int a1, uint64_t a2, uint64_t a3)
{
  v290 = a1;
  v5 = sub_1000BC4D4(&qword_1016BE3D0, &qword_1013EE770);
  v6 = __chkstk_darwin(v5 - 8);
  v299 = &v288 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v292 = &v288 - v8;
  v303 = type metadata accessor for LocationOfInterestProvider.RemappingOperation(0);
  v293 = *(v303 - 8);
  v9 = __chkstk_darwin(v303);
  v288 = &v288 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v289 = &v288 - v11;
  v321 = sub_1000BC4D4(&qword_1016BE3D8, &qword_1013EE778);
  v12 = __chkstk_darwin(v321);
  v320 = (&v288 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v319 = &v288 - v15;
  v16 = __chkstk_darwin(v14);
  v318 = &v288 - v17;
  __chkstk_darwin(v16);
  v317 = &v288 - v18;
  v334 = type metadata accessor for UUID();
  v333 = *(v334 - 8);
  v19 = __chkstk_darwin(v334);
  v304 = &v288 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v329 = (&v288 - v22);
  v23 = __chkstk_darwin(v21);
  v25 = &v288 - v24;
  v26 = __chkstk_darwin(v23);
  v308 = &v288 - v27;
  __chkstk_darwin(v26);
  v309 = &v288 - v28;
  v313 = sub_1000BC4D4(&qword_1016BE3E0, &unk_1013EE780);
  __chkstk_darwin(v313);
  v316 = &v288 - v29;
  v30 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  v31 = __chkstk_darwin(v30 - 8);
  v298 = &v288 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v328 = &v288 - v34;
  __chkstk_darwin(v33);
  v332 = (&v288 - v35);
  v36 = type metadata accessor for SafeLocation(0);
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v296 = &v288 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v297 = &v288 - v41;
  v42 = __chkstk_darwin(v40);
  v295 = &v288 - v43;
  v44 = __chkstk_darwin(v42);
  v294 = &v288 - v45;
  v46 = __chkstk_darwin(v44);
  v307 = &v288 - v47;
  v48 = __chkstk_darwin(v46);
  v323 = &v288 - v49;
  v50 = __chkstk_darwin(v48);
  v306 = &v288 - v51;
  v52 = __chkstk_darwin(v50);
  v305 = &v288 - v53;
  v54 = __chkstk_darwin(v52);
  v335 = &v288 - v55;
  v56 = __chkstk_darwin(v54);
  v58 = &v288 - v57;
  v59 = __chkstk_darwin(v56);
  v314 = (&v288 - v60);
  __chkstk_darwin(v59);
  v62 = &v288 - v61;
  v331 = sub_10090BC7C(_swiftEmptyArrayStorage);
  v63 = sub_10090BC7C(_swiftEmptyArrayStorage);
  v340 = v63;
  v301 = sub_10090BC7C(_swiftEmptyArrayStorage);
  v339 = v301;
  v65 = *(a3 + 16);
  v302 = a2;
  v336 = v36;
  v327 = v37;
  v322 = v25;
  v312 = v65;
  if (v65)
  {
    v66 = 0;
    v67 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v311 = a3 + v67;
    v326 = *(a2 + 16);
    v315 = a2 + v67;
    v325 = v37 + 56;
    v68 = v37;
    v69 = *(v37 + 72);
    v310 = (v68 + 48);
    *&v64 = 136315138;
    v300 = v64;
    v70 = v314;
    while (1)
    {
      sub_100EC03A4(v311 + v69 * v66, v62, type metadata accessor for SafeLocation);
      swift_beginAccess();
      v76 = v326;
      v324 = v66;
      if (v326)
      {
        v77 = v315;
        while (1)
        {
          sub_100EC03A4(v77, v70, type metadata accessor for SafeLocation);
          if (static UUID.== infix(_:_:)())
          {
            break;
          }

          sub_100EC040C(v70, type metadata accessor for SafeLocation);
          v77 += v69;
          v76 = (v76 - 1);
          if (!v76)
          {
            goto LABEL_10;
          }
        }

        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        sub_1000076D4(v79, qword_10177B780);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v337 = v83;
          *v82 = v300;
          sub_100EC0098(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v84 = dispatch thunk of CustomStringConvertible.description.getter();
          v86 = sub_1000136BC(v84, v85, &v337);

          *(v82 + 4) = v86;
          v36 = v336;
          _os_log_impl(&_mh_execute_header, v80, v81, "Inferred safe location identifier %s matches existing safe location.", v82, 0xCu);
          sub_100007BAC(v83);
        }

        sub_100EBFFE0(v314, v332, type metadata accessor for SafeLocation);
        v78 = 0;
      }

      else
      {
LABEL_10:
        v78 = 1;
      }

      v87 = 1;
      v330 = *v325;
      (v330)(v332, v78, 1, v36);
      v88 = v315;
      v89 = v326;
      if (v326)
      {
        while (1)
        {
          sub_100EC03A4(v88, v58, type metadata accessor for SafeLocation);
          if ((static UUID.== infix(_:_:)() & 1) == 0)
          {
            v90 = v69;
            v91 = v335;
            sub_100EC03A4(v62, v335, type metadata accessor for SafeLocation);
            v92 = sub_100EB5EE0();
            v93 = sub_100EB5EE0();
            v94 = sub_100EE8968(v93);
            [v92 radius];
            v96 = v95;
            [v92 radius];
            v98 = v96 * v97 * 3.14159265;
            [v93 radius];
            v100 = v99;
            [v93 radius];
            v102 = v101;

            v36 = v336;
            v103 = v100 * v102 * 3.14159265 >= v98 ? v98 : v100 * v102 * 3.14159265;
            v104 = v91;
            v69 = v90;
            sub_100EC040C(v104, type metadata accessor for SafeLocation);
            if (v103 > 0.0 && v94 / v103 > 0.5)
            {
              break;
            }
          }

          sub_100EC040C(v58, type metadata accessor for SafeLocation);
          v88 += v69;
          v89 = (v89 - 1);
          if (!v89)
          {
            v87 = 1;
            goto LABEL_31;
          }
        }

        if (qword_101694B70 != -1)
        {
          swift_once();
        }

        v105 = type metadata accessor for Logger();
        sub_1000076D4(v105, qword_10177B780);
        v106 = Logger.logObject.getter();
        v107 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v337 = v109;
          *v108 = v300;
          sub_100EC0098(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v110 = dispatch thunk of CustomStringConvertible.description.getter();
          v112 = sub_1000136BC(v110, v111, &v337);

          *(v108 + 4) = v112;
          v36 = v336;
          _os_log_impl(&_mh_execute_header, v106, v107, "Inferred safe location identifier %s is within the region of existing safe location.", v108, 0xCu);
          sub_100007BAC(v109);
        }

        sub_100EBFFE0(v58, v328, type metadata accessor for SafeLocation);
        v87 = 0;
      }

LABEL_31:
      v113 = v328;
      (v330)(v328, v87, 1, v36);
      v114 = *(v313 + 48);
      v115 = v316;
      sub_1000D2A70(v332, v316, &unk_1016AFA10, &qword_1013CB000);
      sub_1000D2A70(v113, v115 + v114, &unk_1016AFA10, &qword_1013CB000);
      v116 = *v310;
      v117 = (*v310)(v115, 1, v36);
      v118 = v116(v115 + v114, 1, v36);
      if (v117 == 1)
      {
        if (v118 != 1)
        {
          v119 = v323;
          sub_100EBFFE0(v316 + v114, v323, type metadata accessor for SafeLocation);
          v120 = *(v119 + *(v36 + 52));
          swift_beginAccess();
          *&v62[*(v36 + 52)] = v120;

          v121 = *(v36 + 20);
          v122 = v307;
          sub_100EC03A4(v119, v307, type metadata accessor for SafeLocation);
          v123 = v331;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v337 = v123;
          sub_101001A58(v122, v119 + v121, isUniquelyReferenced_nonNull_native);
          v331 = v337;
          v125 = *(v36 + 20);
          sub_100EC03A4(v62, v122, type metadata accessor for SafeLocation);
          v126 = v340;
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v337 = v126;
          sub_101001A58(v122, &v62[v125], v127);
          v330 = v337;
          v340 = v337;
          v128 = *(v36 + 20);
          sub_100EC03A4(v119, v122, type metadata accessor for SafeLocation);
          v129 = v339;
          v130 = swift_isUniquelyReferenced_nonNull_native();
          v337 = v129;
          sub_101001A58(v122, &v62[v128], v130);
          sub_100EC040C(v119, type metadata accessor for SafeLocation);
          sub_10000B3A8(v328, &unk_1016AFA10, &qword_1013CB000);
          sub_10000B3A8(v332, &unk_1016AFA10, &qword_1013CB000);
          sub_100EC040C(v62, type metadata accessor for SafeLocation);
          v301 = v337;
          v339 = v337;
          goto LABEL_5;
        }

        v71 = *(v36 + 20);
        v72 = v323;
        sub_100EC03A4(v62, v323, type metadata accessor for SafeLocation);
        v73 = v340;
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v337 = v73;
        sub_101001A58(v72, &v62[v71], v74);
        sub_10000B3A8(v328, &unk_1016AFA10, &qword_1013CB000);
        sub_10000B3A8(v332, &unk_1016AFA10, &qword_1013CB000);
        v75 = v62;
      }

      else
      {
        if (v118 == 1)
        {
          v131 = v323;
          sub_100EBFFE0(v316, v323, type metadata accessor for SafeLocation);
          v132 = *(v131 + *(v36 + 52));
          swift_beginAccess();
          *&v62[*(v36 + 52)] = v132;

          v133 = *(v36 + 20);
          v134 = v307;
          sub_100EC03A4(v131, v307, type metadata accessor for SafeLocation);
          v135 = v331;
          v136 = swift_isUniquelyReferenced_nonNull_native();
          v337 = v135;
          sub_101001A58(v134, v131 + v133, v136);
          v331 = v337;
          v137 = *(v36 + 20);
          sub_100EC03A4(v62, v134, type metadata accessor for SafeLocation);
          v138 = v340;
          v139 = swift_isUniquelyReferenced_nonNull_native();
          v337 = v138;
          sub_101001A58(v134, &v62[v137], v139);
          v140 = v131;
        }

        else
        {
          v141 = v316;
          v142 = v305;
          sub_100EBFFE0(v316, v305, type metadata accessor for SafeLocation);
          sub_100EBFFE0(v141 + v114, v306, type metadata accessor for SafeLocation);
          v337 = *(v142 + *(v36 + 52));

          sub_100398278(v143);
          v144 = sub_10000954C(v337);

          v145 = *(v144 + 16);
          if (v145)
          {
            v146 = sub_1003A85FC(*(v144 + 16), 0);
            v147 = sub_1003A9D58(&v337, &v146[(*(v333 + 80) + 32) & ~*(v333 + 80)], v145, v144);
            sub_1000128F8(v337);
            if (v147 != v145)
            {
              goto LABEL_162;
            }
          }

          else
          {

            v146 = _swiftEmptyArrayStorage;
          }

          swift_beginAccess();
          *&v62[*(v36 + 52)] = v146;

          v148 = *(v36 + 20);
          v149 = v305;
          v150 = v323;
          sub_100EC03A4(v305, v323, type metadata accessor for SafeLocation);
          v151 = v331;
          v152 = swift_isUniquelyReferenced_nonNull_native();
          v337 = v151;
          sub_101001A58(v150, v149 + v148, v152);
          v153 = v337;
          v154 = *(v36 + 20);
          v155 = v306;
          sub_100EC03A4(v306, v150, type metadata accessor for SafeLocation);
          v156 = swift_isUniquelyReferenced_nonNull_native();
          v337 = v153;
          sub_101001A58(v150, v155 + v154, v156);
          v331 = v337;
          v157 = *(v36 + 20);
          sub_100EC03A4(v62, v150, type metadata accessor for SafeLocation);
          v158 = v340;
          v159 = swift_isUniquelyReferenced_nonNull_native();
          v337 = v158;
          sub_101001A58(v150, &v62[v157], v159);
          sub_100EC040C(v155, type metadata accessor for SafeLocation);
          v140 = v149;
        }

        sub_100EC040C(v140, type metadata accessor for SafeLocation);
        sub_10000B3A8(v328, &unk_1016AFA10, &qword_1013CB000);
        sub_10000B3A8(v332, &unk_1016AFA10, &qword_1013CB000);
        v75 = v62;
      }

      sub_100EC040C(v75, type metadata accessor for SafeLocation);
      v330 = v337;
      v340 = v337;
LABEL_5:
      v66 = v324 + 1;
      v70 = v314;
      if (v324 + 1 == v312)
      {
        goto LABEL_43;
      }
    }
  }

  v330 = v63;
LABEL_43:
  v160 = v330;
  v161 = v330[2];
  v162 = _swiftEmptyArrayStorage;
  if (v161)
  {
    v337 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v161, 0);
    v162 = v337;
    v163 = (v160 + 8);
    v164 = _HashTable.startBucket.getter();
    v165 = 0;
    v166 = *(v160 + 9);
    v335 = v333 + 16;
    v311 = (v160 + 9);
    v312 = v161;
    v314 = v160 + 8;
    v313 = v166;
    v315 = v333 + 32;
    v330 = v160;
    while (1)
    {
      if (v164 < 0 || v164 >= 1 << *(v160 + 32))
      {
        goto LABEL_150;
      }

      if ((*(v163 + 8 * (v164 >> 6)) & (1 << v164)) == 0)
      {
        break;
      }

      if (v166 != *(v160 + 9))
      {
        goto LABEL_152;
      }

      v324 = 1 << v164;
      v325 = v164 >> 6;
      v316 = v165;
      v332 = v162;
      v169 = v321;
      v170 = *(v321 + 48);
      v171 = v160[6];
      v172 = v333;
      v328 = *(v333 + 72);
      v326 = *(v333 + 16);
      v173 = v317;
      (v326)(v317, v171 + v328 * v164, v334);
      sub_100EC03A4(v160[7] + v327[9] * v164, &v173[v170], type metadata accessor for SafeLocation);
      v174 = *(v172 + 32);
      v175 = v318;
      v174(v318, v173, v334);
      sub_100EBFFE0(&v173[v170], v175 + *(v169 + 48), type metadata accessor for SafeLocation);
      v176 = v319;
      sub_1000D2A70(v175, v319, &qword_1016BE3D8, &qword_1013EE778);
      v177 = *(v169 + 48);
      v178 = v320;
      v174(v320, v176, v334);
      v179 = v176 + v177;
      v180 = v309;
      v181 = v178 + v177;
      v182 = v334;
      sub_100EBFFE0(v179, v181, type metadata accessor for SafeLocation);
      (v326)(v180, v178, v182);
      v183 = v178;
      v162 = v332;
      sub_10000B3A8(v183, &qword_1016BE3D8, &qword_1013EE778);
      sub_10000B3A8(v175, &qword_1016BE3D8, &qword_1013EE778);
      v337 = v162;
      v185 = v162[2];
      v184 = v162[3];
      if (v185 >= v184 >> 1)
      {
        sub_101123D4C((v184 > 1), v185 + 1, 1);
        v162 = v337;
      }

      v162[2] = v185 + 1;
      v174(v162 + ((*(v333 + 80) + 32) & ~*(v333 + 80)) + v185 * v328, v180, v182);
      v160 = v330;
      v167 = 1 << *(v330 + 32);
      if (v164 >= v167)
      {
        goto LABEL_153;
      }

      v163 = v314;
      v186 = v314[v325];
      if ((v186 & v324) == 0)
      {
        goto LABEL_154;
      }

      LODWORD(v166) = v313;
      if (v313 != *(v330 + 9))
      {
        goto LABEL_155;
      }

      v187 = v186 & (-2 << (v164 & 0x3F));
      if (v187)
      {
        v167 = __clz(__rbit64(v187)) | v164 & 0x7FFFFFFFFFFFFFC0;
        v168 = v322;
      }

      else
      {
        v188 = v325 << 6;
        v189 = v325 + 1;
        v190 = (v311 + 8 * v325);
        v168 = v322;
        while (v189 < (v167 + 63) >> 6)
        {
          v192 = *v190++;
          v191 = v192;
          v188 += 64;
          ++v189;
          if (v192)
          {
            sub_1000BB408(v164, v313, 0);
            v167 = __clz(__rbit64(v191)) + v188;
            goto LABEL_62;
          }
        }

        sub_1000BB408(v164, v313, 0);
LABEL_62:
        v160 = v330;
      }

      v165 = v316 + 1;
      v164 = v167;
      if (v316 + 1 == v312)
      {
        goto LABEL_64;
      }
    }

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
    goto LABEL_156;
  }

  v182 = v334;
  v168 = v322;
LABEL_64:
  v309 = sub_10000954C(v162);

  v193 = v331;
  v194 = v331[2];
  v195 = _swiftEmptyArrayStorage;
  if (!v194)
  {
LABEL_83:
    v222 = sub_10000954C(v195);

    v223 = v302;
    v224 = *(v302 + 16);
    v225 = _swiftEmptyArrayStorage;
    v226 = v327;
    v325 = v224;
    if (v224)
    {
      v332 = v222;
      v337 = _swiftEmptyArrayStorage;
      sub_101123D4C(0, v224, 0);
      v225 = v337;
      v227 = v223 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
      v335 = v226[9];
      v228 = (v333 + 16);
      do
      {
        v229 = v323;
        sub_100EC03A4(v227, v323, type metadata accessor for SafeLocation);
        (*v228)(v168, v229 + v336[5], v182);
        sub_100EC040C(v229, type metadata accessor for SafeLocation);
        v337 = v225;
        v230 = v168;
        v232 = v225[2];
        v231 = v225[3];
        if (v232 >= v231 >> 1)
        {
          sub_101123D4C((v231 > 1), v232 + 1, 1);
          v225 = v337;
        }

        v225[2] = v232 + 1;
        (*(v333 + 32))(v225 + ((*(v333 + 80) + 32) & ~*(v333 + 80)) + *(v333 + 72) * v232, v230, v182);
        v227 += v335;
        --v224;
        v168 = v230;
      }

      while (v224);
      v224 = v325;
      v222 = v332;
    }

    v233 = sub_10000954C(v225);

    v234 = v309;
    if (v233[2] <= *(v309 + 2) >> 3)
    {
      v337 = v309;

      sub_10087D5B4(v233);
      v235 = v337;
    }

    else
    {

      v235 = sub_100610BC8(v233, v234);
    }

    if (v235[2] <= v234[2] >> 3)
    {
      v337 = v234;
      sub_10087D5B4(v235);
      v236 = v337;
    }

    else
    {
      v236 = sub_100610BC8(v235, v234);
    }

    if (v222[2] <= v233[2] >> 3)
    {
      v337 = v233;

      sub_10087D5B4(v222);

      v324 = v337;
    }

    else
    {

      v324 = sub_100610BC8(v222, v233);
    }

    if (v236[2] <= v233[2] >> 3)
    {
      v337 = v233;
      sub_10087D5B4(v236);
      v237 = v337;
    }

    else
    {
      v237 = sub_100610BC8(v236, v233);
    }

    v238 = v334;
    if (*(v324 + 16) > v237[2] >> 3)
    {
      v239 = sub_100610BC8(v324, v237);
    }

    else
    {
      v337 = v237;
      sub_10087D5B4(v324);
      v239 = v337;
    }

    v240 = v303;
    LODWORD(v321) = v290;
    v241 = v291;

    sub_100EBF6A8(v235, &v340, &v339, v241);
    v319 = v242;

    sub_100EB5980(v236, &v340);
    v318 = v243;

    v244 = v239 + 7;
    v245 = 1 << *(v239 + 32);
    v246 = -1;
    if (v245 < 64)
    {
      v246 = ~(-1 << v245);
    }

    v247 = v246 & v239[7];
    v248 = (v245 + 63) >> 6;
    v249 = v333 + 16;
    v335 = v293 + 56;
    v332 = (v333 + 8);
    v328 = v293 + 48;
    v326 = v239;

    v250 = 0;
    v320 = _swiftEmptyArrayStorage;
    v251 = v292;
    v322 = 0;
    while (1)
    {
      v252 = v250;
      if (!v247)
      {
        break;
      }

LABEL_111:
      (*(v333 + 16))(v329, v326[6] + *(v333 + 72) * (__clz(__rbit64(v247)) | (v250 << 6)), v238);
      if (v224)
      {
        v253 = v249;
        v254 = v302 + ((*(v327 + 80) + 32) & ~*(v327 + 80));
        v255 = v327[9];
        v256 = v297;
        while (1)
        {
          sub_100EC03A4(v254, v256, type metadata accessor for SafeLocation);
          if (static UUID.== infix(_:_:)())
          {
            break;
          }

          sub_100EC040C(v256, type metadata accessor for SafeLocation);
          v254 += v255;
          if (!--v224)
          {
            v257 = 1;
            v240 = v303;
            goto LABEL_118;
          }
        }

        v258 = v295;
        sub_100EBFFE0(v256, v295, type metadata accessor for SafeLocation);
        v259 = v258;
        v260 = v294;
        sub_100EBFFE0(v259, v294, type metadata accessor for SafeLocation);
        sub_100EBFFE0(v260, v251, type metadata accessor for SafeLocation);
        v240 = v303;
        swift_storeEnumTagMultiPayload();
        v257 = 0;
LABEL_118:
        v238 = v334;
        v224 = v325;
        v249 = v253;
      }

      else
      {
        v257 = 1;
      }

      v247 &= v247 - 1;
      (*v335)(v251, v257, 1, v240);
      (*v332)(v329, v238);
      if ((*v328)(v251, 1, v240) == 1)
      {
        sub_10000B3A8(v251, &qword_1016BE3D0, &qword_1013EE770);
      }

      else
      {
        sub_100EBFFE0(v251, v289, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v320 = sub_100A5ED40(0, v320[2] + 1, 1, v320);
        }

        v262 = v320[2];
        v261 = v320[3];
        if (v262 >= v261 >> 1)
        {
          v320 = sub_100A5ED40((v261 > 1), v262 + 1, 1, v320);
        }

        v263 = v320;
        v320[2] = v262 + 1;
        sub_100EBFFE0(v289, v263 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v262, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
        v240 = v303;
        v238 = v334;
      }
    }

    while (1)
    {
      v250 = v252 + 1;
      if (__OFADD__(v252, 1))
      {
        __break(1u);
        goto LABEL_149;
      }

      if (v250 >= v248)
      {
        break;
      }

      v247 = v244[v250];
      ++v252;
      if (v247)
      {
        goto LABEL_111;
      }
    }

    v264 = v324;
    v265 = v324 + 56;
    v266 = 1 << *(v324 + 32);
    v267 = -1;
    if (v266 < 64)
    {
      v267 = ~(-1 << v266);
    }

    v268 = v267 & *(v324 + 56);
    v269 = (v266 + 63) >> 6;
    v329 = (v327 + 6);

    v270 = 0;
    v327 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (!v268)
      {
        while (1)
        {
          v271 = v270 + 1;
          if (__OFADD__(v270, 1))
          {
            break;
          }

          if (v271 >= v269)
          {

            v338 = v319;
            sub_10039B5A4(v318);
            sub_10039B5A4(v320);
            sub_10039B5A4(v327);

            return;
          }

          v268 = *(v265 + 8 * v271);
          ++v270;
          if (v268)
          {
            goto LABEL_134;
          }
        }

LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      v271 = v270;
LABEL_134:
      v272 = v304;
      v273 = (*(v333 + 16))(v304, *(v264 + 48) + *(v333 + 72) * (__clz(__rbit64(v268)) | (v271 << 6)), v334);
      __chkstk_darwin(v273);
      *(&v288 - 2) = v272;
      v274 = v298;
      sub_1012BC8D8(sub_100EC0048, v302, v298);
      v275 = v274;
      v276 = v274;
      v277 = v336;
      if ((*v329)(v276, 1, v336) == 1)
      {
        break;
      }

      v278 = v275;
      v279 = v296;
      sub_100EBFFE0(v278, v296, type metadata accessor for SafeLocation);
      if (*(v279 + v277[6]) != v321)
      {
        sub_100EC040C(v279, type metadata accessor for SafeLocation);
        goto LABEL_139;
      }

      v280 = v323;
      sub_100EC03A4(v279, v323, type metadata accessor for SafeLocation);
      *(v280 + v336[6]) = 1;
      sub_100EC040C(v279, type metadata accessor for SafeLocation);
      v281 = (v280 + v336[7]);

      *v281 = 0;
      v281[1] = 0xE000000000000000;
      v282 = v299;
      sub_100EC03A4(v280, v299, type metadata accessor for SafeLocation);
      v283 = v303;
      swift_storeEnumTagMultiPayload();
      (*v335)(v282, 0, 1, v283);
      v284 = v280;
      v264 = v324;
      sub_100EC040C(v284, type metadata accessor for SafeLocation);
LABEL_140:
      v268 &= v268 - 1;
      (*v332)(v304, v334);
      if ((*v328)(v282, 1, v283) == 1)
      {
        sub_10000B3A8(v282, &qword_1016BE3D0, &qword_1013EE770);
        v270 = v271;
      }

      else
      {
        sub_100EBFFE0(v282, v288, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v327 = sub_100A5ED40(0, v327[2] + 1, 1, v327);
        }

        v286 = v327[2];
        v285 = v327[3];
        if (v286 >= v285 >> 1)
        {
          v327 = sub_100A5ED40((v285 > 1), v286 + 1, 1, v327);
        }

        v287 = v327;
        v327[2] = v286 + 1;
        sub_100EBFFE0(v288, v287 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v286, type metadata accessor for LocationOfInterestProvider.RemappingOperation);
        v270 = v271;
      }
    }

    sub_10000B3A8(v275, &unk_1016AFA10, &qword_1013CB000);
LABEL_139:
    v282 = v299;
    v283 = v303;
    (*v335)(v299, 1, 1, v303);
    goto LABEL_140;
  }

  v337 = _swiftEmptyArrayStorage;
  sub_101123D4C(0, v194, 0);
  v195 = v337;
  v196 = v193 + 8;
  v197 = _HashTable.startBucket.getter();
  v198 = 0;
  v335 = *(v193 + 9);
  v332 = (v333 + 16);
  v313 = v333 + 32;
  v310 = (v193 + 9);
  v311 = v194;
  v312 = (v193 + 8);
  v331 = v193;
  while ((v197 & 0x8000000000000000) == 0 && v197 < 1 << *(v193 + 32))
  {
    if ((v196[v197 >> 6] & (1 << v197)) == 0)
    {
      goto LABEL_157;
    }

    if (v335 != *(v193 + 9))
    {
      goto LABEL_158;
    }

    v315 = 1 << v197;
    v316 = v197 >> 6;
    v314 = v198;
    v328 = v195;
    v201 = v321;
    v202 = *(v321 + 48);
    v203 = v193[6];
    v204 = v333;
    v326 = *(v333 + 72);
    v324 = *(v333 + 16);
    v205 = v317;
    (v324)(v317, v203 + v326 * v197, v182);
    sub_100EC03A4(v193[7] + v327[9] * v197, &v205[v202], type metadata accessor for SafeLocation);
    v206 = *(v204 + 32);
    v207 = v318;
    v206(v318, v205, v182);
    sub_100EBFFE0(&v205[v202], v207 + *(v201 + 48), type metadata accessor for SafeLocation);
    v208 = v319;
    sub_1000D2A70(v207, v319, &qword_1016BE3D8, &qword_1013EE778);
    v209 = *(v201 + 48);
    v210 = v320;
    v325 = v206;
    v206(v320, v208, v182);
    sub_100EBFFE0(v208 + v209, v210 + v209, type metadata accessor for SafeLocation);
    v211 = v308;
    (v324)(v308, v210, v182);
    v212 = v210;
    v195 = v328;
    sub_10000B3A8(v212, &qword_1016BE3D8, &qword_1013EE778);
    sub_10000B3A8(v207, &qword_1016BE3D8, &qword_1013EE778);
    v337 = v195;
    v214 = v195[2];
    v213 = v195[3];
    if (v214 >= v213 >> 1)
    {
      sub_101123D4C((v213 > 1), v214 + 1, 1);
      v195 = v337;
    }

    v195[2] = v214 + 1;
    (v325)(v195 + ((*(v333 + 80) + 32) & ~*(v333 + 80)) + v214 * v326, v211, v182);
    v193 = v331;
    v199 = 1 << *(v331 + 32);
    if (v197 >= v199)
    {
      goto LABEL_159;
    }

    v196 = v312;
    v215 = *(v312 + 8 * v316);
    if ((v215 & v315) == 0)
    {
      goto LABEL_160;
    }

    if (v335 != *(v331 + 9))
    {
      goto LABEL_161;
    }

    v216 = v215 & (-2 << (v197 & 0x3F));
    if (v216)
    {
      v199 = __clz(__rbit64(v216)) | v197 & 0x7FFFFFFFFFFFFFC0;
      v182 = v334;
      v168 = v322;
      v200 = v311;
    }

    else
    {
      v217 = v316 << 6;
      v218 = v316 + 1;
      v219 = &v310[v316];
      v182 = v334;
      v168 = v322;
      v200 = v311;
      while (v218 < (v199 + 63) >> 6)
      {
        v221 = *v219++;
        v220 = v221;
        v217 += 64;
        ++v218;
        if (v221)
        {
          sub_1000BB408(v197, v335, 0);
          v199 = __clz(__rbit64(v220)) + v217;
          goto LABEL_67;
        }
      }

      sub_1000BB408(v197, v335, 0);
    }

LABEL_67:
    v198 = v314 + 1;
    v197 = v199;
    if ((v314 + 1) == v200)
    {
      goto LABEL_83;
    }
  }

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
LABEL_162:
  __break(1u);
}