void *sub_1000AA84C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10003BBE8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1000AA894(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_10000C818(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_10000A864(v2);
}

uint64_t sub_1000AA8E0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10000C818(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  swift_errorRetain();
  return v5;
}

uint64_t sub_1000AA92C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      v4 = sub_10007B9A4(&qword_10026AF18, &qword_1001E86B8);
      sub_1000AE384(v4, v5, v6, v4, v7, v8, v9, v10, v3, v14);
      return v15;
    }
  }

  else if (*(a2 + 16))
  {
    v12 = sub_1000AACE4(a1);
    if (v13)
    {
      sub_10000A864(v12);
    }
  }

  return 0;
}

uint64_t sub_1000AA9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_100012A94(), (v3 & 1) != 0))
  {
  }

  else
  {
    sub_1000060DC();
  }

  return sub_100005B9C();
}

uint64_t sub_1000AAA44(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_1000AAD28(a1), (v3 & 1) != 0))
  {
    sub_100061E4C(v2);
  }

  else
  {
    sub_1000060DC();
  }

  return sub_100005B9C();
}

uint64_t sub_1000AAA84(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BadgingNotifier();
  v5 = swift_allocObject();
  sub_1000AD7E8(a1, a2, v5, v2);
}

id sub_1000AAAF0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithPayload:isa];

  return v2;
}

unint64_t sub_1000AABA0(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_1000AADC8(v1, v2);
}

unint64_t sub_1000AABE8()
{
  sub_100003D8C();
  sub_10003D2F8();
  String.hash(into:)();

  sub_100009DBC();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100009DBC();

  return sub_1000AAE28(v0, v1, v2, v3);
}

unint64_t sub_1000AACE4(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000AB2EC(a1, v4);
}

unint64_t sub_1000AAD64(Swift::UInt a1)
{
  sub_10003D2F8();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1000AB3C4(a1, v2);
}

unint64_t sub_1000AADC8(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1000AAE28(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v21 = ~v5;
    do
    {
      v9 = *(v4 + 48) + 24 * v6;
      if (*v9)
      {
        if (*v9 == 1)
        {
          v10 = 0xE400000000000000;
          v11 = 1936748641;
        }

        else
        {
          v10 = 0xE700000000000000;
          v11 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v10 = 0xE700000000000000;
        v11 = 0x7373656E746966;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v12 = 1936748641;
        }

        else
        {
          v12 = 0x6E776F6E6B6E75;
        }

        if (a1 == 1)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE700000000000000;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        v12 = 0x7373656E746966;
      }

      v15 = *(v9 + 8);
      v14 = *(v9 + 16);
      if (v11 == v12 && v10 == v13)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {

          goto LABEL_28;
        }
      }

      if (v15 == a2 && v14 == a3)
      {

        return v6;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        return v6;
      }

LABEL_28:
      v6 = (v6 + 1) & v21;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000AB020(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000073;
      v8 = 0x79654B6863746162;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x79654B6568636163;
          break;
        case 2:
          v7 = 0xE700000000000000;
          v8 = 0x64657461657263;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x73657269707865;
          break;
        case 4:
          v7 = 0xE800000000000000;
          v8 = 0x617461646174656DLL;
          break;
        case 5:
          v7 = 0xE400000000000000;
          v8 = 1752457584;
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = 0x6574617473;
          break;
        case 7:
          v8 = 0x6E6564496B736174;
          v7 = 0xEE00726569666974;
          break;
        case 8:
          v7 = 0xE700000000000000;
          v8 = 0x6E6F6973726576;
          break;
        default:
          break;
      }

      v9 = 0x79654B6863746162;
      v10 = 0xE900000000000073;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          v9 = 0x79654B6568636163;
          break;
        case 2:
          v10 = 0xE700000000000000;
          v9 = 0x64657461657263;
          break;
        case 3:
          v10 = 0xE700000000000000;
          v9 = 0x73657269707865;
          break;
        case 4:
          v10 = 0xE800000000000000;
          v9 = 0x617461646174656DLL;
          break;
        case 5:
          v10 = 0xE400000000000000;
          v9 = 1752457584;
          break;
        case 6:
          v10 = 0xE500000000000000;
          v9 = 0x6574617473;
          break;
        case 7:
          v9 = 0x6E6564496B736174;
          v10 = 0xEE00726569666974;
          break;
        case 8:
          v10 = 0xE700000000000000;
          v9 = 0x6E6F6973726576;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1000AB2EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000AB3C4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1000AB4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100048F78();
  v12 = v11;
  v13 = sub_100012A94();
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000AB58();
    v18 = *(v17 + 24);
    sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18);

    sub_100002C4C((*(a10 + 56) + 32 * v15), v12);
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  else
  {
    *v12 = 0u;
    v12[1] = 0u;
  }

  sub_100003F14();
}

void sub_1000AB5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100048F78();
  v13 = v12;
  sub_10000C818(v14);
  if (v15)
  {
    v16 = sub_100017D08();
    sub_10000AB58();
    v18 = *(v17 + 24);
    sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v16, v18);
    sub_10000E1E8(*(a10 + 48) + 40 * v11);
    sub_100002C4C((*(a10 + 56) + 32 * v11), v13);
    sub_10000A144();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  else
  {
    *v13 = 0u;
    v13[1] = 0u;
  }

  sub_100003F14();
}

uint64_t sub_1000AB6A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_100012A94();
  v5 = v4;
  if (v4)
  {
    v6 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v8 = *(*v1 + 24);
    sub_10007B9A4(&qword_10026AE98, &qword_1001E8648);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

    sub_100040DAC(*(v9 + 56) + 8 * v6, a1);
    sub_10007B9A4(&qword_10026AE90, &qword_1001E8640);
    result = _NativeDictionary._delete(at:)();
    *v1 = v9;
  }

  else
  {
    *a1 = 0;
  }

  *(a1 + 8) = (v5 & 1) == 0;
  return result;
}

void sub_1000AB7AC()
{
  sub_10001CB6C();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v6 = sub_10003BBE8(v5);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(*v1 + 24);
    sub_10007B9A4(&qword_10026AFA8, &qword_1001E8730);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
    sub_1000115E8();
    v12 = (v11 + 56 * v8);
    v13 = v12[1];
    v20 = *v12;
    v14 = v12[2];
    v15 = *(v12 + 24);
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    sub_10004F46C();
    _NativeDictionary._delete(at:)();
    v19 = v20;
    *v1 = v4;
  }

  else
  {
    v19 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  *v3 = v19;
  v3[1] = v13;
  v3[2] = v14;
  v3[3] = v15;
  v3[4] = v16;
  v3[5] = v17;
  v3[6] = v18;
  sub_100006778();
}

uint64_t sub_1000AB8EC()
{
  sub_10001CB6C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_100012A94();
  if (v12)
  {
    v13 = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v0;
    v15 = *(*v0 + 24);
    sub_10007B9A4(v8, v6);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v15);

    v16 = *(v24 + 56);
    v4(0);
    sub_100002DDC();
    sub_1000AE26C(v16 + *(v17 + 72) * v13, v10, v2);
    _NativeDictionary._delete(at:)();
    *v0 = v24;
  }

  else
  {
    v4(0);
    sub_10000E6B0();
  }

  sub_100006778();

  return sub_10000A7C0(v18, v19, v20, v21);
}

void sub_1000ABA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100016794();
  v16 = v15;
  v17 = v10;
  v18 = *v10;
  if ((*v10 & 0xC000000000000001) == 0)
  {
    v28 = v13;
    v29 = v12;
    v30 = sub_1000AACE4(v11);
    if ((v31 & 1) == 0)
    {
LABEL_11:
      sub_100012F1C();
      return;
    }

    v32 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000AB58();
    v35 = *(v34 + 24);
    sub_10007B9A4(v29, v28);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v35);
    v24 = a10;

    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    v16(0);
    sub_1000AE204();
    sub_1000048BC();
    _NativeDictionary._delete(at:)();
LABEL_10:
    *v17 = v24;
    goto LABEL_11;
  }

  v19 = v14;
  if (v18 < 0)
  {
    v20 = *v10;
  }

  else
  {
    v20 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = v11;
  v22 = __CocoaDictionary.lookup(_:)();

  if (!v22)
  {
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  v23 = __CocoaDictionary.count.getter();
  v24 = v19(v20, v23);

  v25 = sub_1000AACE4(v21);
  v27 = v26;

  if (v27)
  {

    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    v16(0);
    sub_1000AE204();
    _NativeDictionary._delete(at:)();

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1000ABF90()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100012A94();
  sub_100006AF8();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_10007B9A4(&qword_10026AF80, &qword_1001E8710);
  if (sub_100008FAC())
  {
    sub_100012A94();
    sub_10000A978();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    v17 = (*(v16 + 56) + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    sub_100005F14();
  }

  else
  {
    sub_1000AD2D4(v12, v4, v2, v8, v6, v16);
    sub_100005F14();
  }
}

void sub_1000AC0A8()
{
  sub_100008738();
  sub_100005068(v2, v3, v4);
  sub_100006AF8();
  if (v5)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10000A5E0();
  sub_10007B9A4(&qword_100269800, &qword_1001E62A8);
  v6 = sub_1000082EC();
  v8 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7);
  if (v8)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v8, v9, v10, v11, *v0);
    sub_100003B6C();
  }

  else
  {
    v15 = sub_100007988();
    sub_1000112BC(v15, v16, v17, v18, v19);
    sub_100003B6C();
  }
}

void sub_1000AC178(uint64_t a1, uint64_t a2)
{
  v5 = sub_100015B98(a1, a2);
  sub_10000C818(v5);
  sub_100006AF8();
  if (v8)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
  v11 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    sub_10000C818(v4);
    sub_100007450();
    if (!v14)
    {
      goto LABEL_12;
    }

    v9 = v13;
  }

  v15 = *v3;
  if (v10)
  {
    sub_100002C00((*(v15 + 56) + 32 * v9));
    v16 = sub_100005B9C();

    sub_100002C4C(v16, v17);
  }

  else
  {
    sub_10000DF68(v4, v18);
    sub_1000AD320(v9, v18, v2, v15);
  }
}

uint64_t sub_1000AC288(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10004C144(a2, sub_100046278, sub_10004C204);
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
  sub_10007B9A4(&unk_10026AF60, &qword_1001E86F8);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_10004C144(a2, sub_100046278, sub_10004C204);
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
    v19 = (v18[7] + 40 * v14);
    sub_100002C00(v19);

    return sub_10003B104(a1, v19);
  }

  else
  {

    return sub_1000AD388(v14, a2, a1, v18);
  }
}

uint64_t sub_1000AC40C()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1000AABE8();
  sub_100006AF8();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  sub_10007B9A4(&unk_10026AFC0, &unk_1001E8740);
  if (sub_100008FAC())
  {
    sub_1000AABE8();
    sub_10000A978();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  v16 = *v0;
  if (v13)
  {
    *(v16[7] + 8 * v12) = v8;
    sub_100005F14();
  }

  else
  {
    sub_1000AD3F4(v12, v6, v4, v2, v8, v16);
    sub_100005F14();
  }
}

void sub_1000AC528()
{
  sub_100008738();
  sub_100005068(v4, v5, v6);
  sub_100006AF8();
  if (v7)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10000A5E0();
  sub_10007B9A4(&qword_10026AE68, &qword_1001E8618);
  v8 = sub_1000082EC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    sub_1000119F0();
    sub_100007450();
    if (!v11)
    {
      goto LABEL_12;
    }

    v3 = v10;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    sub_100003B6C();
  }

  else
  {
    v12 = sub_100007988();
    sub_1000112BC(v12, v13, v14, v15, v16);
    sub_100003B6C();
  }
}

uint64_t sub_1000AC5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100008738();
  v11 = v10;
  sub_1000048A0(v10, v12, v13);
  sub_100006AF8();
  if (v15)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v14;
  sub_10007B9A4(&unk_10026AE80, &unk_1001E8630);
  v17 = sub_1000082EC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18))
  {
    sub_10000821C();
    sub_100012A94();
    sub_10000A978();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v16)
  {
    type metadata accessor for Date();
    sub_100002DDC();
    sub_100003B6C();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }

  else
  {
    sub_100009DBC();
    sub_1000AD444(v29, v30, v31, v11, v32);
    sub_100003B6C();
  }
}

void sub_1000AC71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100008738();
  sub_10000C334();
  sub_10000BDF4();
  sub_10004C144(v10, v12, sub_1000AB020);
  sub_100006AF8();
  if (v15)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v13;
  v17 = v14;
  sub_10007B9A4(&qword_10026AFB0, &qword_1001E8738);
  v18 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v18, v19))
  {
    sub_10000BDF4();
    sub_10004C144(v10, v20, sub_1000AB020);
    sub_100007460();
    if (!v22)
    {
      goto LABEL_14;
    }

    v16 = v21;
  }

  if (v17)
  {
    sub_100002C00((*(*v11 + 56) + 32 * v16));
    sub_100005B9C();
    sub_100003B6C();

    sub_100002C4C(v23, v24);
  }

  else
  {
    sub_100003B6C();

    sub_1000AD4F4(v26, v27, v28, v29);
  }
}

unint64_t sub_1000AC840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100008738();
  sub_10000C334();
  sub_10003BBE8(v13);
  sub_100006AF8();
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v14;
  v18 = v15;
  sub_10007B9A4(&qword_10026AFA8, &qword_1001E8730);
  v19 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v19, v20))
  {
    sub_10003BBE8(v11);
    sub_100007450();
    if (!v22)
    {
      goto LABEL_14;
    }

    v17 = v21;
  }

  if (v18)
  {
    v23 = *(*v12 + 56) + 56 * v17;
    v24 = *(v10 + 16);
    *v23 = *v10;
    *(v23 + 16) = v24;
    *(v23 + 32) = *(v10 + 32);
    *(v23 + 48) = *(v10 + 48);

    sub_100003B6C();
  }

  else
  {
    sub_100003B6C();

    return sub_1000AD548(v27, v28, v29, v30);
  }
}

uint64_t sub_1000AC95C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100012A94();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_10007B9A4(&qword_10026AFA0, &qword_1001E8728);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100012A94();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = *(v20 + 56);
    v22 = type metadata accessor for ScheduleInfo(0);
    return sub_1000AE2C8(a1, v21 + *(*(v22 - 8) + 72) * v16, type metadata accessor for ScheduleInfo);
  }

  else
  {
    sub_1000AD644(v16, a2, a3, a1, v20, type metadata accessor for ScheduleInfo, type metadata accessor for ScheduleInfo);
  }
}

id sub_1000ACB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100048F78();
  v14 = sub_100007F20(v12, v13);
  sub_100049F1C(v14);
  sub_100006AF8();
  if (v17)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for AMSBagKey(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v15;
  v19 = v16;
  sub_10007B9A4(&qword_10026AF00, &qword_1001E86A8);
  if (sub_10000B1B4())
  {
    sub_100049F1C(a10);
    sub_100007460();
    if (!v21)
    {
      goto LABEL_14;
    }

    v18 = v20;
  }

  if (v19)
  {
    *(*(*v11 + 56) + 8 * v18) = v10;
    sub_100003F14();

    return swift_unknownObjectRelease();
  }

  else
  {
    v24 = sub_100017F28();
    sub_1000AD5A8(v24, v25, v26, v27);
    sub_100003F14();

    return v28;
  }
}

void sub_1000ACC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100048F78();
  v14 = sub_100007F20(v12, v13);
  sub_100049F1C(v14);
  sub_100006AF8();
  if (v17)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for Name(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v16;
  sub_10007B9A4(&qword_10026AEF0, &qword_1001E8698);
  if (sub_10000B1B4())
  {
    sub_100049F1C(a10);
    sub_100007460();
    if (!v21)
    {
      goto LABEL_12;
    }

    v18 = v20;
  }

  if (v19)
  {
    sub_100050008(v10, *(*v11 + 56) + 40 * v18, &qword_10026AEF8, &qword_1001E86A0);
    sub_100003F14();
  }

  else
  {
    v22 = sub_100017F28();
    sub_1000AD5EC(v22, v23, v24, v25);
    sub_100003F14();

    v28 = v26;
  }
}

uint64_t sub_1000ACD04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100012A94();
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v11;
  v17 = v12;
  sub_10007B9A4(&qword_10026AF48, &unk_1001E86E0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100012A94();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = *(v20 + 56);
    updated = type metadata accessor for MercuryCacheUpdateData.DataKind(0);
    return sub_1000AE2C8(a1, v21 + *(*(updated - 8) + 72) * v16, type metadata accessor for MercuryCacheUpdateData.DataKind);
  }

  else
  {
    sub_1000AD644(v16, a2, a3, a1, v20, type metadata accessor for MercuryCacheUpdateData.DataKind, type metadata accessor for MercuryCacheUpdateData.DataKind);
  }
}

id sub_1000ACEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100016794();
  v13 = v12;
  v15 = v14;
  v18 = sub_100007F20(v16, v17);
  sub_1000AACE4(v18);
  sub_100006AF8();
  if (v21)
  {
    __break(1u);
LABEL_14:
    sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v22 = v19;
  v23 = v20;
  sub_10007B9A4(v15, v13);
  if (sub_10000B1B4())
  {
    sub_1000AACE4(a10);
    sub_100007460();
    if (!v25)
    {
      goto LABEL_14;
    }

    v22 = v24;
  }

  if (v23)
  {
    *(*(*v11 + 56) + 8 * v22) = v10;
    sub_100012F1C();
  }

  else
  {
    v28 = sub_100017F28();
    sub_1000AD6C8(v28, v29, v30, v31);
    sub_100012F1C();

    return v32;
  }
}

void sub_1000ACFA4()
{
  sub_100008738();
  v5 = sub_100015B98(v3, v4);
  sub_1000AAD64(v5);
  sub_100006AF8();
  if (v8)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for AMSSubscriptionEntitlementsMediaType(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  sub_10007B9A4(&qword_10026AEE8, &qword_1001E8690);
  v11 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    sub_1000AAD64(v2);
    sub_100007460();
    if (!v14)
    {
      goto LABEL_14;
    }

    v9 = v13;
  }

  if (v10)
  {
    *(*(*v1 + 56) + 8 * v9) = v0;
    sub_100003B6C();
  }

  else
  {
    sub_100003B6C();

    sub_1000AD5A8(v17, v18, v19, v20);
  }
}

void sub_1000AD0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100008738();
  sub_10000C334();
  sub_10003BBE8(v13);
  sub_100006AF8();
  if (v16)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v17 = v14;
  v18 = v15;
  sub_10007B9A4(&qword_10026AEB0, &qword_1001E8660);
  v19 = sub_100012BBC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v19, v20))
  {
    sub_10003BBE8(v11);
    sub_100007460();
    if (!v22)
    {
      goto LABEL_14;
    }

    v17 = v21;
  }

  if (v18)
  {
    *(*(*v12 + 56) + 8 * v17) = v10;
    sub_100003B6C();
  }

  else
  {
    sub_100003B6C();

    sub_1000AD70C(v25, v26, v27, v28);
  }
}

void sub_1000AD1C0()
{
  sub_10001CB6C();
  v29 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *v0;
  v6(v11);
  sub_100006AF8();
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16;
  v20 = v17;
  sub_10007B9A4(v5, v3);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v10 & 1, v15))
  {
    goto LABEL_5;
  }

  v21 = v7(v12);
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v19 = v21;
LABEL_5:
  if (v20)
  {
    v23 = (*(*v8 + 56) + 16 * v19);
    *v23 = v14;
    v23[1] = v29;
    sub_100006778();
  }

  else
  {
    sub_100009DBC();
    sub_1000AD7A4(v25, v26, v27, v29, v28);
    sub_100006778();
  }
}

uint64_t sub_1000AD2D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_100019BA4(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void sub_1000AD320(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100019BA4(a1, a4 + 8 * (a1 >> 6));
  v7 = *(v6 + 48) + 40 * v5;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 32) = *(v8 + 32);
  sub_100002C4C(v10, (*(v6 + 56) + 32 * v5));
  sub_10000DD0C();
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v11;
  }
}

uint64_t sub_1000AD388(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_10003B104(a3, a4[7] + 40 * a1);
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

unint64_t sub_1000AD3F4(unint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_1000AD444(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

void sub_1000AD4F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100019BA4(a1, a4 + 8 * (a1 >> 6));
  *(*(v6 + 48) + v5) = v7;
  sub_100002C4C(v8, (*(v6 + 56) + 32 * v5));
  sub_10000DD0C();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

unint64_t sub_1000AD548(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 56 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = *(a3 + 48);
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

unint64_t sub_1000AD5A8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1000AD5EC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 40 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
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

void sub_1000AD644(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void))
{
  sub_10000B768(a1, a2, a3, a4, a5);
  v12 = *(v11 + 56);
  v14 = v13(0);
  sub_1000AE26C(a4, v12 + *(*(v14 - 8) + 72) * a1, a7);
  sub_10000DD0C();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }
}

uint64_t sub_1000AD6C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_100019BA4(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

unint64_t sub_1000AD70C(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1000AD750(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_100019BA4(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 24 * result;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

void sub_1000AD7A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_100019BA4(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_100007178(v6, v13);
  }
}

uint64_t sub_1000AD7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = type metadata accessor for BadgingNotifier();
  v32 = &off_100247E20;
  v30[0] = a3;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  *&v25[0] = 0x6369706F74;
  *(&v25[0] + 1) = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v26, a1, &v28);
  sub_10000E1E8(&v26);
  if (v29)
  {
    if (swift_dynamicCast())
    {
      v8 = v25[0];
      strcpy(v25, "badgeID");
      *(&v25[0] + 1) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v26, a1, &v28);
      sub_10000E1E8(&v26);
      if (v29)
      {
        if (swift_dynamicCast())
        {
          v23 = *(&v25[0] + 1);
          v24 = *&v25[0];
          *&v28 = 0x64656C62616E65;
          *(&v28 + 1) = 0xE700000000000000;
          AnyHashable.init<A>(_:)();
          sub_10000E0C8(&v26, a1, &v28);
          sub_10000E1E8(&v26);
          if (v29)
          {
            if (swift_dynamicCast())
            {
              v9 = v25[0];
LABEL_20:
              sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
              v13 = swift_allocObject();
              *(v13 + 16) = xmmword_1001E5F70;
              v26 = 0x64496567646162;
              v27 = 0xE700000000000000;
              AnyHashable.init<A>(_:)();
              *(v13 + 96) = &type metadata for String;
              *(v13 + 72) = v24;
              *(v13 + 80) = v23;
              v26 = 0x64656C62616E65;
              v27 = 0xE700000000000000;
              AnyHashable.init<A>(_:)();
              *(v13 + 168) = &type metadata for Bool;
              *(v13 + 144) = v9;
              v14 = Dictionary.init(dictionaryLiteral:)();
              *&v25[0] = 0xD000000000000012;
              *(&v25[0] + 1) = 0x80000001001F5200;
              AnyHashable.init<A>(_:)();
              sub_10000E0C8(&v26, a1, &v28);
              sub_10000E1E8(&v26);
              if (v29)
              {
                v15 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
                if (swift_dynamicCast())
                {
                  *&v28 = 0xD000000000000012;
                  *(&v28 + 1) = 0x80000001001F5200;
                  AnyHashable.init<A>(_:)();
                  v29 = v15;
                  *&v28 = *&v25[0];
                  sub_100002C4C(&v28, v25);
                  swift_isUniquelyReferenced_nonNull_native();
                  sub_1000AC178(v25, &v26);
                  sub_10000E1E8(&v26);
                }
              }

              else
              {
                sub_10000A00C(&v28, &qword_10026D350, &qword_1001E6050);
              }

              strcpy(v25, "metricsEvent");
              BYTE13(v25[0]) = 0;
              HIWORD(v25[0]) = -5120;
              AnyHashable.init<A>(_:)();
              sub_10000E0C8(&v26, a1, &v28);
              sub_10000E1E8(&v26);
              if (v29)
              {
                v16 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
                if (swift_dynamicCast())
                {
                  v17 = *&v25[0];
                  *&v28 = 0x7363697274656DLL;
                  *(&v28 + 1) = 0xE700000000000000;
                  AnyHashable.init<A>(_:)();
                  v29 = v16;
                  *&v28 = v17;
                  sub_100002C4C(&v28, v25);
                  swift_isUniquelyReferenced_nonNull_native();
                  sub_1000AC178(v25, &v26);
                  sub_10000E1E8(&v26);
                }
              }

              else
              {
                sub_10000A00C(&v28, &qword_10026D350, &qword_1001E6050);
              }

              v18 = swift_allocObject();
              *(v18 + 16) = xmmword_1001E5F60;
              v26 = 49;
              v27 = 0xE100000000000000;
              AnyHashable.init<A>(_:)();
              *(v18 + 96) = &type metadata for Int;
              *(v18 + 72) = 35;
              v26 = 50;
              v27 = 0xE100000000000000;
              AnyHashable.init<A>(_:)();
              *(v18 + 168) = &type metadata for String;
              *(v18 + 144) = v8;
              v26 = 7565409;
              v27 = 0xE300000000000000;
              AnyHashable.init<A>(_:)();
              *(v18 + 240) = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
              *(v18 + 216) = v14;
              Dictionary.init(dictionaryLiteral:)();
              sub_100002BC0(0, &qword_10026AE58, AMSPushPayload_ptr);
              v19 = sub_1000AAAF0();
              sub_100003CA8(v30, v31);
              v20 = sub_1000AE3A4(v19);
              sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
              type metadata accessor for LogInterpolation();
              v21 = swift_allocObject();
              *(v21 + 16) = xmmword_1001E5F70;
              type metadata accessor for BadgingAction();
              static LogInterpolation.prefix<A>(_:_:)();

              if (v20)
              {
                LogInterpolation.init(stringLiteral:)();
                if (qword_1002686B0 != -1)
                {
                  swift_once();
                }

                v22 = static os_log_type_t.default.getter();
              }

              else
              {
                LogInterpolation.init(stringLiteral:)();
                if (qword_1002686B0 != -1)
                {
                  swift_once();
                }

                v22 = static os_log_type_t.error.getter();
              }

              sub_1000036B0(v22, v21);

              return sub_100002C00(v30);
            }
          }

          else
          {
            sub_10000A00C(&v28, &qword_10026D350, &qword_1001E6050);
          }

          v9 = 1;
          goto LABEL_20;
        }
      }

      else
      {

        sub_10000A00C(&v28, &qword_10026D350, &qword_1001E6050);
      }
    }
  }

  else
  {
    sub_10000A00C(&v28, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1001E5F70;
  type metadata accessor for BadgingAction();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v11 = static os_log_type_t.error.getter();
  sub_1000036B0(v11, v10);

  return sub_100002C00(v30);
}

unint64_t sub_1000AE204()
{
  result = qword_10026AF20;
  if (!qword_10026AF20)
  {
    sub_100002BC0(255, &qword_10026AF10, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AF20);
  }

  return result;
}

uint64_t sub_1000AE26C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  v4 = sub_100005B9C();
  v5(v4);
  return a2;
}

uint64_t sub_1000AE2C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  v4 = sub_100005B9C();
  v5(v4);
  return a2;
}

unint64_t sub_1000AE324()
{
  result = qword_10026AFB8;
  if (!qword_10026AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AFB8);
  }

  return result;
}

uint64_t sub_1000AE384(void x0_0, void x1_0, void x2_0, uint64_t a1, void a5, void a6, void a7, void a8, uint64_t a3, char a4)
{

  return swift_dynamicCast();
}

BOOL sub_1000AE3A4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000AE7E4(a1);
  v7 = v6;
  if (v6)
  {
    v18 = 0x80000001001F52A0;
    String.append(_:)(*&v5);

    v8 = [a1 payload];
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000AE68C(0xD000000000000029, 0x80000001001F52A0, v9);

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001E5F70;
    v19 = type metadata accessor for BadgingNotifier();
    v17 = v2;

    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v17);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x80000001001F52D0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    v19 = &type metadata for String;
    v17 = 0xD000000000000029;
    v18 = 0x80000001001F52A0;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v17);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v15 = static os_log_type_t.default.getter();
    sub_1000036B0(v15, v10);
  }

  return v7 != 0;
}

void sub_1000AE68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = String._bridgeToObjectiveC()();
  sub_1000AE748(v5, 0, a3, 1, v4);
}

void sub_1000AE748(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [a5 postNotificationName:a1 object:a2 userInfo:isa deliverImmediately:a4 & 1];
}

uint64_t sub_1000AE7E4(void *a1)
{
  v1 = [a1 clientIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000AE848(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Date();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v40 = 7955819;
  v41 = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_100006B0C();
  sub_10000E1E8(&v42);
  if (v47)
  {
    sub_10000799C();
    if (swift_dynamicCast())
    {
      v36 = v40;
      v37 = v41;
      v40 = 0x7265746C6966;
      v41 = 0xE600000000000000;
      AnyHashable.init<A>(_:)();
      sub_100006B0C();
      sub_10000E1E8(&v42);
      if (v47)
      {
        sub_10007B9A4(&qword_10026A790, &qword_1001ED5B0);
        sub_10000799C();
        v35 = v8;
        if (swift_dynamicCast())
        {
          v9 = v40;
          v40 = 1635017060;
          v41 = 0xE400000000000000;
          AnyHashable.init<A>(_:)();
          sub_100006B0C();
          sub_10000E1E8(&v42);
          if (v47)
          {
            sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
            sub_10000799C();
            if (swift_dynamicCast())
            {
              v34 = v9;

              v46[0] = 0x6E6F697461727564;
              v46[1] = 0xE800000000000000;
              AnyHashable.init<A>(_:)();
              sub_100006B0C();
              sub_10000E1E8(&v42);
              if (v47)
              {
                sub_10000799C();
                if (swift_dynamicCast())
                {
                  v10 = *&v40;
                  goto LABEL_25;
                }
              }

              else
              {
                sub_100002C5C(v46);
              }

              v10 = 3600.0;
LABEL_25:
              v44 = &type metadata for AMSFlags;
              v45 = sub_10000D884();
              LOBYTE(v42) = 0;
              v20 = isFeatureEnabled(_:)();
              sub_100002C00(&v42);
              if (v20)
              {

                v21 = [objc_opt_self() sharedInstance];
                Date.init(timeIntervalSinceNow:)();
                isa = Dictionary._bridgeToObjectiveC()().super.isa;

                v23 = Dictionary._bridgeToObjectiveC()().super.isa;

                v24 = Date._bridgeToObjectiveC()().super.isa;
                [v21 cacheResponse:isa filter:v23 expiration:v24];

                (*(v38 + 8))(v5, v3);
              }

              else
              {
                v25 = [objc_opt_self() loadFromDisk];
                v26 = Dictionary._bridgeToObjectiveC()().super.isa;

                sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1001E5F60;
                v42 = 0x6E6F697461727564;
                v43 = 0xE800000000000000;
                sub_10000BE0C();
                v28 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
                *(inited + 96) = sub_1000AF20C();
                *(inited + 72) = v28;
                v42 = 0x7265746C6966;
                v43 = 0xE600000000000000;
                sub_10000BE0C();
                v29 = v34;
                *(inited + 168) = v35;
                *(inited + 144) = v29;
                v42 = 7955819;
                v43 = 0xE300000000000000;
                sub_10000BE0C();
                *(inited + 240) = &type metadata for String;
                v30 = v37;
                *(inited + 216) = v36;
                *(inited + 224) = v30;
                Dictionary.init(dictionaryLiteral:)();
                v31 = Dictionary._bridgeToObjectiveC()().super.isa;

                v32 = String._bridgeToObjectiveC()();

                [v25 addCachedResponseData:v26 cacheInfo:v31 appIdentifier:v32];

                [v25 saveToDisk];
              }

              return;
            }
          }

          else
          {

            sub_100002C5C(v46);
          }

          sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
          v17 = type metadata accessor for LogInterpolation();
          sub_100002CFC(v17);
          v12 = sub_100002FE4();
          *(v12 + 16) = xmmword_1001E5F70;
          v18 = type metadata accessor for CacheDataAction();
          sub_10000B794(v18);

          LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
          sub_1000082FC("Skipping cached data for key: ");
          v44 = &type metadata for String;
          v42 = v36;
          v43 = v37;
          LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
          sub_100002C5C(&v42);
          v15 = 0x6164206F6E28202ELL;
          v16 = 0xEB00000000296174;
          goto LABEL_19;
        }
      }

      else
      {
        sub_100002C5C(v46);
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v13 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v13);
      v12 = sub_100002FE4();
      *(v12 + 16) = xmmword_1001E5F70;
      v14 = type metadata accessor for CacheDataAction();
      sub_10000B794(v14);

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_1000082FC("Skipping cached data for key: ");
      v44 = &type metadata for String;
      v42 = v36;
      v43 = v37;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100002C5C(&v42);
      v15 = 0x6966206F6E28202ELL;
      v16 = 0xED0000297265746CLL;
LABEL_19:
      LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v15);
      LogInterpolation.init(stringInterpolation:)();
      goto LABEL_20;
    }
  }

  else
  {
    sub_100002C5C(v46);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F70;
  type metadata accessor for CacheDataAction();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
LABEL_20:
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v19 = static os_log_type_t.error.getter();
  sub_1000036B0(v19, v12);
}

unint64_t sub_1000AF20C()
{
  result = qword_10026AF10;
  if (!qword_10026AF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026AF10);
  }

  return result;
}

id sub_1000AF250()
{
  result = [objc_allocWithZone(NSLock) init];
  qword_10026B1E8 = result;
  return result;
}

id sub_1000AF284(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  if (qword_100268620 != -1)
  {
    swift_once();
  }

  v48 = qword_10026B1E8;
  [qword_10026B1E8 lock];
  if (byte_10026B1E0)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v15);
    sub_100006B28();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F70;
    type metadata accessor for CarrierOfferRegistrationAction();
    static LogInterpolation.prefix<A>(_:_:)();

    sub_100004B44();
    v52 = &type metadata for String;
    aBlock = 0xD000000000000018;
    v50 = v17;
LABEL_17:
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v34 = static os_log_type_t.default.getter();
    sub_1000036B0(v34, v16);

    return [v48 unlock];
  }

  v46 = v12;
  v47 = v1;
  v18 = [objc_opt_self() ams_sharedAccountStore];
  v19 = [v18 ams_activeiTunesAccount];

  if (!v19)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v31 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v31);
    sub_100006B28();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F70;
    v32 = type metadata accessor for CarrierOfferRegistrationAction();
    sub_10000BE28(v32);

    sub_100004B44();
    v52 = &type metadata for String;
    aBlock = 0xD000000000000022;
    v50 = v33;
    goto LABEL_17;
  }

  sub_100004B44();
  *&v55 = -2.31584178e77;
  v56 = v20;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&aBlock, a1, &v57);
  sub_10000E1E8(&aBlock);
  if (v58)
  {
    if (swift_dynamicCast())
    {
      v21 = *&v55;
      v22 = [objc_opt_self() lastCarrierOfferRegistrationDate];
      if (v22)
      {
        v23 = v22;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v4 + 32))(v9, v7, v3);
        Date.timeIntervalSinceNow.getter();
        v25 = v24;
        (*(v4 + 8))(v9, v3);
        if (v21 > -v25)
        {
          sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
          v26 = type metadata accessor for LogInterpolation();
          sub_100002CFC(v26);
          sub_100006B28();
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1001E5F70;
          v28 = type metadata accessor for CarrierOfferRegistrationAction();
          sub_10000BE28(v28);

          sub_100004B44();
          v52 = &type metadata for String;
          aBlock = 0xD000000000000027;
          v50 = v29;
          static LogInterpolation.safe(_:)();
          sub_100002C5C(&aBlock);
          if (qword_1002686B0 != -1)
          {
            sub_100002D44(&qword_1002686B0);
          }

          v30 = static os_log_type_t.default.getter();
          sub_1000036B0(v30, v27);

          return [v48 unlock];
        }
      }
    }
  }

  else
  {
    sub_100002C5C(&v57);
  }

  result = [objc_opt_self() createBagForSubProfile];
  if (result)
  {
    v36 = result;
    v37 = objc_allocWithZone(AMSCarrierOfferRegistrationTask);
    v38 = v19;
    v39 = [v37 initWithAccount:v38 bag:v36];

    v41 = v46;
    v40 = v47;
    if (qword_100268830 != -1)
    {
      swift_once();
    }

    sub_100011C54(0xD00000000000001ELL, 0x80000001001E87F0);
    byte_10026B1E0 = 1;
    v42 = [v39 perform];
    v43 = swift_allocObject();
    v43[2] = v40;
    v43[3] = v41;
    v43[4] = v14;
    v53 = sub_1000B0258;
    v54 = v43;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_100099934;
    v52 = &unk_100247E88;
    v44 = _Block_copy(&aBlock);

    [v42 addFinishBlock:v44];

    _Block_release(v44);
    return [v48 unlock];
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AF9C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v26 = a3;
  v27 = a2;
  v25 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017A08();
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  v17 = swift_allocObject();
  v19 = v25;
  v18 = v26;
  v17[2] = v25;
  v17[3] = v18;
  v20 = v29;
  v17[4] = v28;
  v17[5] = v20;
  v17[6] = v27;
  aBlock[4] = sub_1000B0264;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100247ED8;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v30);
}

uint64_t sub_1000AFD2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v27 = a1;
    v11 = [v27 BOOLValue];
    v12 = 0xD000000000000016;
    if (v11)
    {
      v12 = 0xD000000000000011;
    }

    v26 = v12;
    if (v11)
    {
      v13 = "Action complete - ";
    }

    else
    {
      v13 = "Action already in flight";
    }

    v14 = v13 | 0x8000000000000000;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001E5F60;
    type metadata accessor for CarrierOfferRegistrationAction();
    static LogInterpolation.prefix<A>(_:_:)();
    v32 = &type metadata for String;
    v30 = 0xD000000000000012;
    v31 = 0x80000001001F54C0;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v30);
    v32 = &type metadata for String;
    v30 = v26;
    v31 = v14;
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v30);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v16 = static os_log_type_t.default.getter();
    sub_1000036B0(v16, v15);

    v17 = objc_opt_self();
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
    [v17 setLastCarrierOfferRegistrationDate:isa];
  }

  else if (a5)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001E5F70;
    swift_errorRetain();
    type metadata accessor for CarrierOfferRegistrationAction();
    static LogInterpolation.prefix<A>(_:_:)();
    swift_getErrorValue();
    v20 = v28;
    v21 = v29;
    v32 = v29;
    v22 = sub_100017E64(&v30);
    (*(*(v21 - 1) + 16))(v22, v20, v21);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(&v30);
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v23 = static os_log_type_t.error.getter();
    sub_1000036B0(v23, v19);
  }

  if (qword_100268620 != -1)
  {
    swift_once();
  }

  v24 = qword_10026B1E8;
  [qword_10026B1E8 lock];
  byte_10026B1E0 = 0;
  [v24 unlock];
  if (qword_100268830 != -1)
  {
    swift_once();
  }

  return sub_1001AE448(0xD00000000000001ELL, 0x80000001001E87F0);
}

id sub_1000B02B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CascadeBag();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000B04AC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag) expirationDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return sub_10000A7C0(a1, v5, 1, v6);
}

id sub_1000B054C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_1000B05BC(a3);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_1000B05BC(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag) *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000B061C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] arrayForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100248158;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:0 valuePromise:v22];
  sub_100007470();
}

uint64_t sub_1000B07BC()
{
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000B08E0;
  v1 = swift_continuation_init();
  v0[17] = sub_10007B9A4(&qword_10026B2D0, &qword_1001E8878);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000B0A78;
  v0[13] = &unk_1002480B8;
  v0[14] = v1;
  v2 = sub_10000B7B8();
  [v2 v3];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000B08E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1000B0A0C;
  }

  else
  {
    v2 = sub_1000B09F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B0A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_willThrow();
  v4 = *(v3 + 8);

  return v4();
}

uint64_t *sub_1000B0A78(uint64_t a1, void *a2, void *a3)
{
  result = sub_100003CA8((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1000F115C();
  }

  else if (a2)
  {
    v8 = a2;

    return sub_100049004(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B0B84(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B0C2C;

  return sub_1000B079C();
}

uint64_t sub_1000B0C2C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (v8)[2](v8, 0, v9);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

void sub_1000B0DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] doubleForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100248068;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:2 valuePromise:v22];
  sub_100007470();
}

void sub_1000B0F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] integerForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100248018;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:3 valuePromise:v22];
  sub_100007470();
}

void sub_1000B10CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] URLForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100247F78;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:5 valuePromise:v22];
  sub_100007470();
}

uint64_t sub_1000B12DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000B1388;

  return sub_1000B0B84(v2, v3);
}

uint64_t sub_1000B1388()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000B14D4@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_1000C49F8(a2);

  sub_1000AA73C(0, v4, &v155);
  v13 = &type metadata for Any;
  if (v157)
  {
    sub_1000050B0(v5, v6, v7, v8, v9, v10, v11, v12, v130, v135, v139, v143, v147);
    if (swift_dynamicCast())
    {
      v14 = v147;
      v15 = v151;
      v160 = &type metadata for String;
      if (v151)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_100002C5C(&v155);
  }

  v160 = &type metadata for String;
LABEL_7:
  v14 = 0;
  v15 = 0xE000000000000000;
LABEL_8:
  *&v158 = v14;
  *(&v158 + 1) = v15;
  v16 = sub_1000B21E8(&v158);
  if (v2)
  {

    return sub_100002C5C(&v158);
  }

  v19 = v16;
  v20 = v17;
  sub_100002C5C(&v158);
  *&v158 = v19;
  *(&v158 + 1) = v20;
  sub_10001ECE0();
  sub_10000B7C4();
  v131 = v21;
  v22 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v23 = *(v22 + 16);
  if (v23)
  {
    v135 = v4;
    v139 = 0;
    v143 = a1;
    *&v158 = _swiftEmptyArrayStorage;
    sub_100027C2C(0, v23, 0);
    v24 = v158;
    v25 = v22 + 56;
    do
    {
      v26 = *(v25 - 16);

      static String._fromSubstring(_:)();
      sub_10000300C();

      *&v158 = v24;
      v28 = v24[2];
      v27 = v24[3];
      if (v28 >= v27 >> 1)
      {
        sub_100027C2C((v27 > 1), v28 + 1, 1);
        v24 = v158;
      }

      v24[2] = v28 + 1;
      v29 = &v24[2 * v28];
      v29[4] = v26;
      v29[5] = &type metadata for Any;
      v25 += 32;
      --v23;
    }

    while (v23);

    a1 = v143;
    v4 = v135;
    v13 = &type metadata for Any;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  *a1 = v24;
  sub_1000AA73C(4, v4, &v155);
  if (v157)
  {
    sub_1000050B0(v30, v31, v32, v33, v34, v35, v36, v37, v131, v135, v139, v143, v147);
    if (swift_dynamicCast())
    {
      v38 = v147;
      v39 = v151;
      v160 = &type metadata for String;
      if (v151)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    sub_100002C5C(&v155);
  }

  v160 = &type metadata for String;
LABEL_23:
  v38 = 0;
  v39 = 0xE000000000000000;
LABEL_24:
  *&v158 = v38;
  *(&v158 + 1) = v39;
  v40 = sub_1000B21E8(&v158);
  v42 = v41;
  sub_100002C5C(&v158);
  *&v158 = v40;
  *(&v158 + 1) = v42;
  sub_10000B7C4();
  v43 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

  v44 = *(v43 + 16);
  if (v44)
  {
    v135 = v4;
    v139 = 0;
    v143 = a1;
    *&v158 = _swiftEmptyArrayStorage;
    sub_100027C2C(0, v44, 0);
    v45 = v158;
    v131 = v43;
    v46 = v43 + 56;
    do
    {

      v43 = static String._fromSubstring(_:)();
      v48 = v47;

      *&v158 = v45;
      v50 = v45[2];
      v49 = v45[3];
      v13 = (v50 + 1);
      if (v50 >= v49 >> 1)
      {
        sub_100027C2C((v49 > 1), v50 + 1, 1);
        v45 = v158;
      }

      v45[2] = v13;
      v51 = &v45[2 * v50];
      v51[4] = v43;
      v51[5] = v48;
      v46 += 32;
      --v44;
    }

    while (v44);

    a1 = v143;
  }

  else
  {

    v45 = _swiftEmptyArrayStorage;
  }

  a1[1] = v45;
  sub_1000AA73C(1, v4, &v158);
  sub_1000B21E8(&v158);
  sub_10000300C();
  sub_100002C5C(&v158);
  a1[2] = v43;
  a1[3] = v13;
  sub_1000AA73C(6, v4, &v155);
  if (v157)
  {
    sub_1000050B0(v52, v53, v54, &type metadata for Int, v55, v56, v57, v58, v131, v135, v139, v143, v147);
    if (sub_100006330())
    {
      v59 = v147;
      goto LABEL_36;
    }
  }

  else
  {
    sub_100002C5C(&v155);
  }

  v59 = -1;
LABEL_36:
  v60 = sub_1000B1FC8(v59);
  if (v60 == 4)
  {
    v61 = 0;
    v158 = 0uLL;
    v159 = 0;
  }

  else
  {
    LOBYTE(v158) = v60;
    v61 = &type metadata for ContentInfo.State;
  }

  v160 = v61;
  v62 = sub_1000B22B8(&v158);
  sub_100002C5C(&v158);
  v63 = type metadata accessor for ContentInfo(0);
  *(a1 + v63[10]) = v62;
  sub_1000AA73C(7, v4, &v155);
  if (v157)
  {
    sub_1000050B0(v64, v65, v66, &type metadata for String, v67, v68, v69, v70, v131, v135, v139, v143, v147);
    if (sub_100006330())
    {
      v71 = v147;
      v72 = v151;
      goto LABEL_44;
    }
  }

  else
  {
    sub_100002C5C(&v155);
  }

  v71 = 0;
  v72 = 0xE000000000000000;
LABEL_44:
  *&v155 = v71;
  *(&v155 + 1) = v72;
  v73 = String.init<A>(_:)();
  v160 = &type metadata for String;
  *&v158 = v73;
  *(&v158 + 1) = v74;
  sub_1000B21E8(&v158);
  sub_10000300C();
  sub_100002C5C(&v158);
  v75 = (a1 + v63[11]);
  *v75 = &type metadata for String;
  v75[1] = v4;
  sub_1000AA73C(8, v4, &v158);
  v84 = sub_1000079A8(v76, v77, v78, v79, v80, v81, v82, v83, v131, v135, v139, v143, v147, v151, v155, *(&v155 + 1), v156, v157, v158);
  sub_1000B21E8(v84);
  sub_10000300C();
  sub_100002C5C(&v158);
  v85 = (a1 + v63[12]);
  *v85 = &type metadata for String;
  v85[1] = 0;
  sub_1000AA73C(5, 0, &v158);
  v94 = sub_1000079A8(v86, v87, v88, v89, v90, v91, v92, v93, v132, v136, v140, v144, v148, v152, v155, *(&v155 + 1), v156, v157, v158);
  sub_1000B2388(v94);
  sub_10000300C();
  v145 = a1;
  v95 = (a1 + v63[9]);
  sub_100002C5C(&v158);
  *v95 = &type metadata for String;
  v95[1] = 0;
  sub_1000AA73C(2, 0, &v155);
  if (v157)
  {
    sub_1000050B0(v96, v97, v98, &type metadata for Double, v99, v100, v101, v102, v133, v137, v141, v145, v149);
    v103 = sub_100006330();
    if (v103)
    {
      v111 = v149;
      goto LABEL_49;
    }
  }

  else
  {
    v103 = sub_100002C5C(&v155);
  }

  v111 = 0;
LABEL_49:
  v160 = &type metadata for Double;
  v112 = sub_1000079A8(v103, v104, v105, v106, v107, v108, v109, v110, v133, v137, v141, v145, v149, v153, v155, *(&v155 + 1), v156, v157, v111);
  sub_1000B246C(v112);
  sub_100002C5C(&v158);
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_1000AA73C(3, v4, &v155);

  if (!v157)
  {
    v120 = sub_100002C5C(&v155);
    goto LABEL_53;
  }

  sub_1000050B0(v113, v114, v115, &type metadata for Double, v116, v117, v118, v119, v134, v138, v142, v146, v150);
  v120 = sub_100006330();
  if (!v120)
  {
LABEL_53:
    v128 = 0;
    goto LABEL_54;
  }

  v128 = v150;
LABEL_54:
  v160 = &type metadata for Double;
  v129 = sub_1000079A8(v120, v121, v122, v123, v124, v125, v126, v127, v134, v138, v142, v146, v150, v154, v155, *(&v155 + 1), v156, v157, v128);
  sub_1000B246C(v129);
  sub_100002C5C(&v158);
  return Date.init(timeIntervalSinceReferenceDate:)();
}

uint64_t sub_1000B1DA8()
{
  v1 = v0;
  sub_1000AE324();
  v105 = Dictionary.init(dictionaryLiteral:)();

  sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  sub_1000A0698();
  v2 = sub_10000BE60();

  v11 = sub_100006B64(v3, v4, v5, v6, v7, v8, v9, v10, v92, v2);
  sub_1000AA20C(v11, 0);
  v101 = *(v1 + 16);

  v20 = sub_100006B64(v12, v13, v14, v15, v16, v17, v18, v19, v93, v101);
  sub_1000AA20C(v20, 1);
  v21 = type metadata accessor for ContentInfo(0);
  v22 = Date.timeIntervalSinceReferenceDate.getter();
  v31 = sub_100006B64(v22, v23, v24, v25, v26, v27, v28, v29, v94, v30);
  sub_1000AA20C(v31, 2);
  v32 = Date.timeIntervalSinceReferenceDate.getter();
  v41 = sub_100006B64(v32, v33, v34, v35, v36, v37, v38, v39, v95, v40);
  sub_1000AA20C(v41, 3);

  v42 = sub_10000BE60();

  v51 = sub_100006B64(v43, v44, v45, v46, v47, v48, v49, v50, v96, v42);
  sub_1000AA20C(v51, 4);
  v60 = sub_100006B64(v52, v53, v54, v55, v56, v57, v58, v59, v97, *(v1 + *(v21 + 40)));
  sub_1000AA20C(v60, 6);
  v61 = sub_1000057B8();
  v69 = sub_100006B64(v61, v62, v63, v64, v65, v66, v67, v68, v98, v102);
  sub_1000AA20C(v69, 7);
  v70 = sub_1000057B8();
  v78 = sub_100006B64(v70, v71, v72, v73, v74, v75, v76, v77, v99, v103);
  sub_1000AA20C(v78, 8);
  v79 = (v1 + *(v21 + 36));
  if (v79[1])
  {
    v80 = *v79;
  }

  else
  {
    LOBYTE(v80) = 0;
  }

  v104 = v80;

  v89 = sub_100006B64(v81, v82, v83, v84, v85, v86, v87, v88, v100, v104);
  sub_1000AA20C(v89, 5);
  v90 = sub_1000C4D58(v105);

  return v90;
}

unint64_t sub_1000B1FC8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000B1FD8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244748, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B2024(char a1)
{
  result = 0x79654B6863746162;
  switch(a1)
  {
    case 1:
      result = 0x79654B6568636163;
      break;
    case 2:
      result = 0x64657461657263;
      break;
    case 3:
      result = 0x73657269707865;
      break;
    case 4:
      result = 0x617461646174656DLL;
      break;
    case 5:
      result = 1752457584;
      break;
    case 6:
      result = 0x6574617473;
      break;
    case 7:
      result = 0x6E6564496B736174;
      break;
    case 8:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B213C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B1FC8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000B218C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B1FD8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B21BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B2024(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B21E8(uint64_t a1)
{
  sub_100003C38(a1, v6);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  if (swift_dynamicCast())
  {
    return v5;
  }

  sub_1000B2B34();
  swift_allocError();
  v4 = v3;
  sub_100003C38(a1, v3);
  *(v4 + 56) = sub_10007B9A4(&qword_10026B300, &qword_1001E88A8);
  *(v4 + 32) = &type metadata for String;
  return swift_willThrow();
}

uint64_t sub_1000B22B8(uint64_t a1)
{
  sub_100003C38(a1, v6);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  if (swift_dynamicCast())
  {
    return v5;
  }

  sub_1000B2B34();
  swift_allocError();
  v4 = v3;
  sub_100003C38(a1, v3);
  *(v4 + 56) = sub_10007B9A4(&qword_10026B2F8, &qword_1001E88A0);
  *(v4 + 32) = &type metadata for ContentInfo.State;
  return swift_willThrow();
}

uint64_t sub_1000B2388(uint64_t a1)
{
  sub_100003C38(a1, v7);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  v2 = sub_10007B9A4(&unk_10026CD20, &unk_1001E7CC0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  sub_1000B2B34();
  swift_allocError();
  v5 = v4;
  sub_100003C38(a1, v4);
  *(v5 + 56) = sub_10007B9A4(&qword_10026B2F0, &qword_1001E8898);
  *(v5 + 32) = v2;
  return swift_willThrow();
}

uint64_t sub_1000B246C(uint64_t a1)
{
  sub_100003C38(a1, v5);
  sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_1000B2B34();
    swift_allocError();
    v4 = v3;
    sub_100003C38(a1, v3);
    *(v4 + 56) = sub_10007B9A4(&qword_10026B2E8, &qword_1001E8890);
    *(v4 + 32) = &type metadata for Double;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000B253C(uint64_t a1)
{
  v54 = type metadata accessor for Date();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ContentInfo(0);
  sub_100002CC4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v12 = Dictionary.init(dictionaryLiteral:)();
    v13 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v49 = *(v7 + 72);
    v51 = (v3 + 8);
    v50 = xmmword_1001E8880;
    while (1)
    {
      v55 = v13;
      v56 = v11;
      sub_1000B2AD0(v13, v10);
      sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
      inited = swift_initStackObject();
      *(inited + 16) = v50;
      *(inited + 32) = 0x64657461657263;
      *(inited + 40) = 0xE700000000000000;
      v15 = v52;
      Date.timeIntervalSince1970.getter();
      *(inited + 48) = v16 * 1000.0;
      *(inited + 72) = &type metadata for Double;
      *(inited + 80) = 0x617461646174656DLL;
      *(inited + 88) = 0xE800000000000000;
      v17 = v10[1];
      v18 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
      *(inited + 96) = v17;
      *(inited + 120) = v18;
      *(inited + 128) = 0x73657269707865;
      *(inited + 136) = 0xE700000000000000;

      Date.timeIntervalSince1970.getter();
      *(inited + 144) = v19 * 1000.0;
      *(inited + 168) = &type metadata for Double;
      *(inited + 176) = 0x64657269707865;
      *(inited + 184) = 0xE700000000000000;
      v20 = v53;
      Date.init()();
      LOBYTE(v17) = static Date.< infix(_:_:)();
      (*v51)(v20, v54);
      *(inited + 192) = v17 & 1;
      *(inited + 216) = &type metadata for Bool;
      *(inited + 224) = 1752457584;
      *(inited + 232) = 0xE400000000000000;
      v21 = (v10 + v15[9]);
      v23 = *v21;
      v22 = v21[1];
      v24 = sub_10007B9A4(&unk_10026CD20, &unk_1001E7CC0);
      *(inited + 240) = v23;
      *(inited + 248) = v22;
      *(inited + 264) = v24;
      *(inited + 272) = 0x6574617473;
      *(inited + 280) = 0xE500000000000000;
      *(inited + 288) = *(v10 + v15[10]);
      *(inited + 312) = &type metadata for Int;
      *(inited + 320) = 0x6E6F6973726576;
      *(inited + 328) = 0xE700000000000000;
      v25 = (v10 + v15[12]);
      v26 = v25[1];
      *(inited + 336) = *v25;
      *(inited + 344) = v26;
      *(inited + 360) = &type metadata for String;
      *(inited + 368) = 0x79654B6863746162;
      v27 = *v10;
      *(inited + 376) = 0xE900000000000073;
      *(inited + 384) = v27;
      *(inited + 408) = v18;
      *(inited + 416) = 0x79654B6568636163;
      v29 = v10[2];
      v28 = v10[3];
      *(inited + 456) = &type metadata for String;
      *(inited + 424) = 0xE800000000000000;
      *(inited + 432) = v29;
      *(inited + 440) = v28;

      v30 = Dictionary.init(dictionaryLiteral:)();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v12;
      v32 = sub_100012A94();
      v34 = v12[2];
      v35 = (v33 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        break;
      }

      v37 = v32;
      v38 = v33;
      sub_10007B9A4(&qword_10026B2D8, &unk_1001EEA60);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v36))
      {
        v39 = sub_100012A94();
        if ((v38 & 1) != (v40 & 1))
        {
          goto LABEL_17;
        }

        v37 = v39;
      }

      v12 = v57;
      if (v38)
      {
        *(v57[7] + 8 * v37) = v30;
      }

      else
      {
        v57[(v37 >> 6) + 8] |= 1 << v37;
        v41 = (v12[6] + 16 * v37);
        *v41 = v29;
        v41[1] = v28;
        *(v12[7] + 8 * v37) = v30;
        v42 = v12[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_16;
        }

        v12[2] = v44;
      }

      sub_1000A0914(v10);
      v13 = v55 + v49;
      v11 = v56 - 1;
      if (v56 == 1)
      {
        sub_1000E375C();
        v46 = v45;

        return v46;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ContentInfo(uint64_t a1)
{
  result = qword_10026B360;
  if (!qword_10026B360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B2AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B2B34()
{
  result = qword_10026B2E0;
  if (!qword_10026B2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B2E0);
  }

  return result;
}

uint64_t sub_1000B2B88(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B2BA0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1000B2BE0(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ContentInfo.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContentInfo.ExportKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContentInfo.ExportKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void sub_1000B2EA8(uint64_t a1)
{
  sub_1000B2F98(319, &qword_10026B370, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1000B2F98(319, &qword_10026B378, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000B2F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000B2FF0()
{
  result = qword_10026B3C8;
  if (!qword_10026B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B3C8);
  }

  return result;
}

unint64_t sub_1000B3048()
{
  result = qword_10026B3D0;
  if (!qword_10026B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B3D0);
  }

  return result;
}

void sub_1000B30C4()
{
  sub_100003D74();
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v0 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v0);
  sub_1000056F8();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001E5F70;
  v2 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = type metadata accessor for ContentManager();
  sub_10000AB04();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v4 = static os_log_type_t.default.getter();
  sub_1000036B0(v4, v1);

  v5 = 0;
  do
  {
    v6 = *(&off_100244588 + v5++ + 32);
    *(sub_100004BC8(v3) + 16) = v6;
    sub_1000BA35C();
    sub_1000BB69C();
  }

  while (v5 != 4);
  sub_100005F14();
}

void sub_1000B3264()
{
  sub_100003D74();
  v1 = v0;
  v158 = v2;
  v4 = v3;
  v154 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v140 = *v0;
  v165 = type metadata accessor for Date();
  sub_100002CC4();
  v151 = v12;
  __chkstk_darwin(v13);
  sub_100002DEC();
  v164 = v15 - v14;
  v16 = sub_100003D1C();
  v17 = type metadata accessor for ContentInfo(v16);
  sub_100002CC4();
  v171 = v18;
  __chkstk_darwin(v19);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v20);
  sub_10000714C();
  v162 = v21;
  sub_100003F08();
  __chkstk_darwin(v22);
  sub_10000AB64();
  __chkstk_darwin(v23);
  sub_10000E6C4();
  v169 = v24;
  v25 = sub_100003D1C();
  v150 = type metadata accessor for JSContent.CacheRequest(v25);
  sub_100002CC4();
  v152 = v26;
  __chkstk_darwin(v27);
  sub_100005C2C();
  v176 = v28;
  sub_100003F08();
  __chkstk_darwin(v29);
  v31 = (&v138 - v30);
  v32 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  v33 = sub_100002CFC(v32);
  v167 = v34;
  __chkstk_darwin(v33);
  sub_100005C2C();
  sub_100019BBC();
  __chkstk_darwin(v35);
  sub_10000714C();
  v161 = v36;
  sub_100003F08();
  __chkstk_darwin(v37);
  sub_10000714C();
  v166 = v38;
  sub_100003F08();
  v40 = __chkstk_darwin(v39);
  v42 = &v138 - v41;
  __chkstk_darwin(v40);
  sub_10000E6C4();
  v170 = v43;
  if (qword_1002686D8 != -1)
  {
LABEL_64:
    sub_100006B70();
    swift_once();
  }

  v155 = v7;
  v175 = v17;
  v159 = v4;
  v157 = v0;
  v168 = v11;
  v153 = qword_100287838;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v44 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v44);
  sub_10000DE0C();
  v47 = v45 & ~v46;
  v160 = v48;
  v146 = 5 * v48;
  sub_1000BF72C(v178);
  v149 = v11;
  v49 = swift_allocObject();
  v144 = xmmword_1001E61C0;
  *(v49 + 16) = xmmword_1001E61C0;
  v148 = v47;
  v143 = type metadata accessor for ContentManager();
  v179 = v143;
  v177 = v1;

  v50 = AMSLogKey();
  if (v50)
  {
    v51 = v50;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v177);
  v52 = v160;
  LogInterpolation.init(stringLiteral:)();
  v179 = &type metadata for String;
  v177 = v168;
  v178[0] = v9;

  static LogInterpolation.safe(_:)();
  v53 = sub_100008F28();
  sub_10000A00C(v53, v54, &qword_1001E6050);
  v142 = 3 * v52;
  LogInterpolation.init(stringLiteral:)();
  v11 = (v49 + v47 + 4 * v52);
  LODWORD(v52) = v154;
  LOBYTE(v177) = v154;
  v55 = v154;
  sub_100006794();
  v178[0] = v56;
  v178[1] = v158;
  v179 = v57;

  static LogInterpolation.safe(_:)();
  v58 = sub_100008F28();
  sub_10000A00C(v58, v59, &qword_1001E6050);
  v60 = static os_log_type_t.info.getter();
  sub_1000036B0(v60, v49);

  v61 = v52;
  if (v55 == 4)
  {
    v61 = *(v1 + 16);
  }

  HIDWORD(v139) = v61;
  v172 = v9;
  sub_100008FCC();
  v62 = v11[2];
  v4 = _swiftEmptyArrayStorage;
  v174 = v1;
  v17 = v167;
  if (v62)
  {
    v177 = _swiftEmptyArrayStorage;
    sub_10009B800(0, v62, 0);
    v4 = v177;
    sub_10000A988();
    v11 = (v11 + v63);
    v173 = *(v64 + 72);
    v65 = v62;
    do
    {
      sub_1000BF470(v11, v31);
      v66 = sub_1000B7DD0(*v31, v31[1], v31[2], v31[3], 4);
      if (*(v66 + 16))
      {
        sub_100004864();
        sub_10000B7DC();
        sub_1000BF470(v66 + v67, v42);
        v68 = 0;
      }

      else
      {
        v68 = 1;
      }

      sub_10000A7C0(v42, v68, 1, v175);
      sub_1000BF4C8();
      v177 = v4;
      v70 = v4[2];
      v69 = v4[3];
      if (v70 >= v69 >> 1)
      {
        sub_100005C40(v69);
        sub_1000BF720();
        sub_10009B800(v72, v73, v74);
        v4 = v177;
      }

      v4[2] = v70 + 1;
      sub_100004864();
      sub_1000BF51C(v42, v4 + v71 + *(v17 + 72) * v70, &qword_10026A050, &unk_1001EA2B0);
      v11 = (v11 + v173);
      --v65;
    }

    while (v65);
  }

  v1 = 0;
  v141 = 2 * v160;
  v173 = 4 * v160;
  v9 = v4[2];
  v0 = (v151 + 8);
  v7 = v175;
  v31 = v169;
  while (v9 != v1)
  {
    if (v1 >= v4[2])
    {
      __break(1u);
      goto LABEL_64;
    }

    sub_100004864();
    v76 = v170;
    sub_1000BF568(v4 + v75 + *(v17 + 72) * v1, v170, &qword_10026A050, &unk_1001EA2B0);
    v77 = v76;
    v78 = v166;
    sub_1000BF568(v77, v166, &qword_10026A050, &unk_1001EA2B0);
    sub_1000067A0(v78, 1, v7);
    if (v79)
    {
      sub_1000BF704();
      sub_10000A00C(v170, &qword_10026A050, &unk_1001EA2B0);
      sub_10000A00C(v78, &qword_10026A050, &unk_1001EA2B0);
LABEL_27:
      v88 = v168;
      v89 = v159;
      if (v62)
      {
        v90 = *(v150 + 28);
        v175 = *(v150 + 24);
        v91 = v176 + v90;
        v92 = v154;
        sub_10000A988();
        v94 = v155 + v93;
        v96 = *(v95 + 72);
        do
        {
          sub_1000BF470(v94, v176);
          if (v91[2])
          {
            v97 = 0x10000;
          }

          else
          {
            v97 = 0;
          }

          if (v91[1])
          {
            v98 = 256;
          }

          else
          {
            v98 = 0;
          }

          sub_1000B48D0(v88, v172, *v176, v176[1], v176[2], v176[3], v176 + v175, v98 | *v91 | v97, v92, v89, v1, v137, v138, v139, v140, v141, v142, v143, v144, *(&v144 + 1), v145, v146, v147);
          sub_1000BF4C8();
          v94 += v96;
          --v62;
        }

        while (v62);
      }

      goto LABEL_62;
    }

    sub_1000A0850(v78, v31);
    if (!*(v31 + *(v7 + 36) + 8) || *(v31 + *(v7 + 40)) != 2 || (v80 = v7, v81 = v164, Date.init()(), v82 = static Date.< infix(_:_:)(), v83 = v81, v31 = v169, (*v0)(v83, v165), (v82 & 1) != 0))
    {
      sub_1000BF704();
      sub_10000A00C(v170, &qword_10026A050, &unk_1001EA2B0);
      sub_1000050BC();
      sub_1000BF4C8();
      goto LABEL_27;
    }

    v84 = [objc_opt_self() defaultManager];
    v11 = String._bridgeToObjectiveC()();
    v42 = [v84 fileExistsAtPath:v11];

    sub_10000A00C(v170, &qword_10026A050, &unk_1001EA2B0);
    sub_1000050BC();
    sub_1000BF4C8();
    ++v1;
    v7 = v80;
    v17 = v167;
    if ((v42 & 1) == 0)
    {
      sub_1000BF704();
      goto LABEL_27;
    }
  }

  v85 = swift_allocObject();
  *(v85 + 16) = v144;
  sub_10001D724(&v174);
  v177 = v174;

  v86 = AMSLogKey();
  if (v86)
  {
    v87 = v86;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v99 = v156;
  v100 = v158;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v177);
  LogInterpolation.init(stringLiteral:)();
  v179 = &type metadata for String;
  v177 = v168;
  v178[0] = v172;

  static LogInterpolation.safe(_:)();
  v101 = sub_100008F28();
  sub_10000A00C(v101, v102, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v179 = sub_10007B9A4(&qword_10026B518, &unk_1001E8B10);
  v177 = v4;

  static LogInterpolation.safe(_:)();
  v103 = sub_100008F28();
  sub_10000A00C(v103, v104, &qword_1001E6050);
  v105 = static os_log_type_t.info.getter();
  sub_1000036B0(v105, v85);

  if (v100)
  {
    sub_1000B40E4();
  }

  if (v9)
  {
    sub_10000A988();
    v107 = v4 + v106;
    v109 = *(v108 + 72);
    v110 = _swiftEmptyArrayStorage;
    v111 = v175;
    do
    {
      v112 = v161;
      sub_1000BF568(v107, v161, &qword_10026A050, &unk_1001EA2B0);
      sub_1000BF51C(v112, v99, &qword_10026A050, &unk_1001EA2B0);
      sub_1000067A0(v99, 1, v111);
      if (v79)
      {
        sub_10000A00C(v99, &qword_10026A050, &unk_1001EA2B0);
      }

      else
      {
        sub_1000A0850(v99, v162);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100003030();
          sub_1000D5678();
          v110 = v118;
        }

        v115 = v110[2];
        v114 = v110[3];
        if (v115 >= v114 >> 1)
        {
          sub_100005C40(v114);
          sub_1000BF720();
          sub_1000D5678();
          v110 = v119;
        }

        v110[2] = v115 + 1;
        sub_10000A988();
        sub_1000A0850(v162, v110 + v116 + *(v117 + 72) * v115);
        v111 = v175;
        v99 = v156;
      }

      v107 += v109;
      --v9;
    }

    while (v9);
  }

  else
  {

    v110 = _swiftEmptyArrayStorage;
  }

  v120 = v110[2];
  v121 = v172;
  v122 = v157;
  v123 = v163;
  if (v120)
  {
    sub_10000A988();
    v125 = v110 + v124;
    v127 = *(v126 + 72);
    do
    {
      sub_100003018();
      sub_1000BF470(v125, v123);
      v128 = sub_1000BF470(v123, v122);
      v129 = *v122;
      v177 = v168;
      v178[0] = v121;
      __chkstk_darwin(v128);
      sub_10000BE84();
      *(v130 - 16) = &v177;
      if (!sub_10013D5B0(sub_1000BF6B8, v131, v129))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_10000DE9C();
          v129 = v135;
        }

        v133 = *(v129 + 16);
        v132 = *(v129 + 24);
        if (v133 >= v132 >> 1)
        {
          sub_100005C40(v132);
          sub_10000B1D4();
          sub_10000DE9C();
          v129 = v136;
        }

        *(v129 + 16) = v133 + 1;
        v134 = v129 + 16 * v133;
        v121 = v172;
        *(v134 + 32) = v168;
        *(v134 + 40) = v121;
        v122 = v157;
        *v157 = v129;
        sub_1000B8A2C(v122);
      }

      sub_100003018();
      v123 = v163;
      sub_1000BF4C8();
      sub_1000BF4C8();
      v125 += v127;
      --v120;
    }

    while (v120);
  }

LABEL_62:
  sub_100005F14();
}

void sub_1000B40E4()
{
  sub_100003D74();
  v52 = v0;
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v7);
  sub_100022228();
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();
    sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E5F60;
    *(inited + 32) = 0x656372756F73;
    *(inited + 40) = 0xE600000000000000;
    v10 = sub_10001CB88(inited);
    *(v10 + 72) = &type metadata for String;
    *(v10 + 80) = v11;
    sub_10005EEB0();
    v12[11] = 0xE900000000000065;
    v12[12] = v13;
    v12[13] = v14;
    v12[15] = &type metadata for String;
    v12[16] = 0x696669746E656469;
    v12[21] = &type metadata for String;
    v12[17] = 0xEA00000000007265;
    v12[18] = v52;
    v12[19] = v4;

    Dictionary.init(dictionaryLiteral:)();
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1001E6580;
    *(v15 + 32) = 1701080931;
    *(v15 + 40) = 0xE400000000000000;
    *(v15 + 48) = [v8 code];
    *(v15 + 72) = &type metadata for Int;
    *(v15 + 80) = 0x6E69616D6F64;
    *(v15 + 88) = 0xE600000000000000;
    v16 = [v8 domain];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v15 + 96) = v17;
    *(v15 + 104) = v19;
    *(v15 + 120) = &type metadata for String;
    *(v15 + 128) = 0x656C746974;
    *(v15 + 136) = 0xE500000000000000;
    v20 = sub_1000BF330(v8, &selRef_ams_title);
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    *(v15 + 144) = v22;
    *(v15 + 152) = v23;
    *(v15 + 168) = &type metadata for String;
    *(v15 + 176) = 0x6567617373656DLL;
    *(v15 + 184) = 0xE700000000000000;
    v24 = sub_1000BF330(v8, &selRef_ams_message);
    *(v15 + 216) = &type metadata for String;
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    *(v15 + 192) = v26;
    *(v15 + 200) = v27;
    v28 = Dictionary.init(dictionaryLiteral:)();
    v55 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v54 = v28;
    sub_100002C4C(&v54, v53);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v29 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v29);
    sub_1000056F8();
    v30 = sub_10000A92C();
    *(v30 + 16) = xmmword_1001E5F70;
    v31 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_10005EEB0();
    v33._countAndFlagsBits = v32 + 40;
    v33._object = (v34 | 0x8000000000000000);
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
    v55 = &type metadata for String;
    *&v54 = v52;
    *(&v54 + 1) = v4;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v54, &qword_10026D350, &qword_1001E6050);
    sub_1000BF6E0();
    sub_100023FE8();
    switch(&type metadata for Any & 0xFF)
    {
      case 1uLL:
        sub_1000167AC();
        break;
      case 2uLL:
        sub_100061E6C();
        break;
      case 3uLL:
        sub_100018094();
        break;
      default:
        break;
    }

    v55 = &type metadata for String;
    *&v54 = v36;
    *(&v54 + 1) = v35;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v54, &qword_10026D350, &qword_1001E6050);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v50 = static os_log_type_t.error.getter();
    sub_1000036B0(v50, v30);
  }

  else
  {
    sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_1001E6580;
    *(v37 + 32) = 0x656372756F73;
    *(v37 + 40) = 0xE600000000000000;
    v38 = sub_10001CB88(v37);
    *(v38 + 72) = &type metadata for String;
    *(v38 + 80) = 0x707954746E657665;
    sub_10005EEB0();
    *(v40 + 88) = 0xE900000000000065;
    *(v40 + 96) = v39 + 7;
    *(v40 + 104) = v41;
    *(v40 + 120) = &type metadata for String;
    *(v40 + 128) = 0x696669746E656469;
    *(v40 + 136) = 0xEA00000000007265;
    *(v40 + 144) = v52;
    *(v40 + 152) = v4;
    *(v40 + 168) = &type metadata for String;
    *(v40 + 176) = 0x6E65746E6F437369;
    *(v40 + 184) = 0xEF64656863614374;
    *(v40 + 216) = &type metadata for Bool;
    *(v40 + 192) = 1;

    Dictionary.init(dictionaryLiteral:)();
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v42 = sub_10000620C();
    sub_100002CFC(v42);
    sub_1000056F8();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1001E5F70;
    v44 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_10005EEB0();
    v46._countAndFlagsBits = v45 + 42;
    v46._object = (v47 | 0x8000000000000000);
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v46);
    v55 = &type metadata for String;
    *&v54 = v52;
    *(&v54 + 1) = v4;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v54, &qword_10026D350, &qword_1001E6050);
    sub_1000BF6E0();
    sub_100023FE8();
    switch(v4)
    {
      case 1:
        sub_1000167AC();
        break;
      case 2:
        sub_100061E6C();
        break;
      case 3:
        sub_100018094();
        break;
      default:
        break;
    }

    v55 = &type metadata for String;
    *&v54 = v49;
    *(&v54 + 1) = v48;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v54, &qword_10026D350, &qword_1001E6050);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v51 = static os_log_type_t.default.getter();
    sub_1000036B0(v51, v43);
  }

  sub_1000BCAC0();

  sub_100005F14();
}

void sub_1000B48D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100003D74();
  a19 = v25;
  a20 = v26;
  v182 = v27;
  v192 = v28;
  v193 = v29;
  v197 = v30;
  v198 = v31;
  v195 = v32;
  v196 = v33;
  v202 = v34;
  v35 = type metadata accessor for Date();
  sub_100002CC4();
  v184 = v36;
  __chkstk_darwin(v37);
  sub_100005C2C();
  sub_100019BBC();
  __chkstk_darwin(v38);
  sub_10000E6C4();
  v190 = v39;
  v40 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  sub_100003D10(v40);
  sub_100004E78();
  __chkstk_darwin(v41);
  v43 = sub_10000A854(&v175 - v42);
  v44 = type metadata accessor for ContentInfo(v43);
  sub_100002DDC();
  __chkstk_darwin(v45);
  sub_100005C2C();
  v189 = v46;
  sub_100003F08();
  __chkstk_darwin(v47);
  sub_10000714C();
  sub_100019BBC();
  __chkstk_darwin(v48);
  sub_10000E6C4();
  sub_10000A854(v49);
  v50 = type metadata accessor for LogInterpolation.StringInterpolation();
  v51 = sub_100003D10(v50);
  __chkstk_darwin(v51);
  sub_100002DEC();
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  v201 = qword_100287838;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v52 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v52);
  sub_10000DE0C();
  v55 = v53 & ~v54;
  v200 = v56;
  v57 = v55 + 2 * v56;
  sub_1000BF72C(&a17);
  v179 = v23;
  v58 = swift_allocObject();
  v177 = xmmword_1001E5F70;
  *(v58 + 16) = xmmword_1001E5F70;
  v187 = v55;
  v186 = type metadata accessor for ContentManager();
  v206 = v186;
  v203 = v24;
  v199 = v24;

  v59 = AMSLogKey();
  if (v59)
  {
    v60 = v59;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v188 = a23;
  v176 = a22;
  sub_100004E34();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v203);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v61._countAndFlagsBits = 0xD000000000000029;
  v61._object = 0x80000001001F5CF0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v61);
  v194 = v44;
  v191 = v35;
  v178 = v57;
  if (v202)
  {
    v62 = &type metadata for String;
    v63 = v192;
    v64 = v202;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v205 = 0;
  }

  v181 = a21;
  v203 = v63;
  v204 = v64;
  v206 = v62;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000048BC();
  sub_10000A00C(v65, v66, v67);
  v68._countAndFlagsBits = 0x3A79656B090A202CLL;
  v68._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v68);
  v206 = &type metadata for String;
  v69 = v195;
  v70 = v196;
  v203 = v195;
  v204 = v196;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000048BC();
  sub_10000A00C(v71, v72, v73);
  v74._countAndFlagsBits = 0x73726576090A202CLL;
  v74._object = 0xED0000203A6E6F69;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
  v206 = &type metadata for String;
  v76 = v197;
  v75 = v198;
  v203 = v197;
  v204 = v198;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_1000048BC();
  sub_10000A00C(v77, v78, v79);
  v80._countAndFlagsBits = 0x3A6C7275090A202CLL;
  v80._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
  v206 = type metadata accessor for URL();
  sub_100017E64(&v203);
  sub_1000047A4();
  (*(v81 + 16))();
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_1000048BC();
  sub_10000A00C(v82, v83, v84);
  v85._countAndFlagsBits = 10506;
  v85._object = 0xE200000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v85);
  LogInterpolation.init(stringInterpolation:)();
  v86 = static os_log_type_t.default.getter();
  sub_10005E244(v86);

  v87 = v199;
  v88 = sub_1000B7DD0(v69, v70, v76, v75, 4);
  v89 = v185;
  sub_10018A29C(v88, v185);

  v90 = v194;
  v91 = (&UniversalLinksService + 40);
  if (sub_100009F34(v89, 1, v194) != 1)
  {
    v95 = v180;
    sub_1000A0850(v89, v180);
    sub_100006794();
    v96 = v179;
    *(swift_allocObject() + 16) = xmmword_1001E5F60;
    sub_10001D724(&a18);
    v203 = v87;

    v97 = AMSLogKey();
    v94 = v191;
    if (v97)
    {
      v98 = v97;
      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v99 = 0;
    }

    sub_10005ADC4();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v203);
    sub_10003AE88();
    LogInterpolation.init(stringLiteral:)();
    v206 = v90;
    sub_100017E64(&v203);
    sub_10000B7DC();
    sub_1000BF470(v95, v100);
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v203, &qword_10026D350, &qword_1001E6050);
    v101 = static os_log_type_t.info.getter();
    sub_10005E244(v101);

    v88 = *(v95 + *(v90 + 36) + 8);
    p_base_prots = &UniversalLinksService.base_prots;
    if (v88 && *(v95 + *(v90 + 40)) == 2 && (v103 = [objc_opt_self() defaultManager], v88 = String._bridgeToObjectiveC()(), v104 = objc_msgSend(v103, "fileExistsAtPath:", v88), v103, p_base_prots = (&UniversalLinksService + 40), v88, v104))
    {
      sub_100006794();
      v105 = sub_100017EC4();
      sub_100012F34(v105);
      sub_10001D724(v106);
      v107 = v199;
      sub_10005E268();
      v108 = AMSLogKey();
      if (v108)
      {
LABEL_17:
        v99 = v108;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    else
    {
      v107 = v199;
      if (p_base_prots[249] != -1)
      {
        sub_100017F38(&qword_1002687C8);
      }

      v109 = sub_10017B038(v95);
      sub_100006794();
      v110 = sub_100017EC4();
      sub_100012F34(v110);
      if ((v109 & 1) == 0)
      {
        sub_10001D724(v111);
        sub_10005E268();
        v112 = AMSLogKey();
        if (v112)
        {
          v113 = v112;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v203);
        sub_10003AE88();
        LogInterpolation.init(stringLiteral:)();
        v114 = static os_log_type_t.info.getter();
        sub_10005E244(v114);

        if (v202)
        {
          v88 = *v95;
          v203 = v192;
          v204 = v202;
          __chkstk_darwin(v115);
          sub_10000BE84();
          *(v116 - 16) = &v203;
          if (!sub_10013D5B0(sub_1000BF6B8, v117, v88))
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100003030();
              sub_10000DE9C();
              v88 = v173;
            }

            v119 = v88[2];
            v118 = v88[3];
            v120 = v202;
            if (v119 >= v118 >> 1)
            {
              sub_100005C40(v118);
              sub_10000B1D4();
              sub_10000DE9C();
              v120 = v202;
              v88 = v174;
            }

            v88[2] = v119 + 1;
            v121 = &v88[2 * v119];
            v121[4] = v192;
            v121[5] = v120;
            *v95 = v88;
          }

          v203 = v88;

          sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
          sub_1000A0698();
          v92 = BidirectionalCollection<>.joined(separator:)();
          v93 = v122;

          sub_1000050BC();
          sub_1000BF4C8();
        }

        else
        {
          sub_1000050BC();
          sub_1000BF4C8();
          v92 = 0;
          v93 = 0;
        }

        sub_100008FCC();
        v91 = &UniversalLinksService.base_prots;
        goto LABEL_36;
      }

      sub_10001D724(v111);
      sub_10005E268();
      v108 = AMSLogKey();
      if (v108)
      {
        goto LABEL_17;
      }
    }

    sub_10000A150();

    sub_100002C00(&v203);
    sub_10003AE88();
    LogInterpolation.init(stringLiteral:)();
    v168 = static os_log_type_t.info.getter();
    sub_10005E244(v168);

    sub_1000B57C4(v95, v192, v202, v96, v176, v99, v107);
    goto LABEL_71;
  }

  sub_10000A00C(v89, &qword_10026A050, &unk_1001EA2B0);
  v92 = 0;
  v93 = 0;
  v94 = v191;
  sub_100008FCC();
LABEL_36:
  v123 = (&v91[249]->count + 1) == 0;
  v124 = v184;
  if (!v123)
  {
    sub_100017F38(&qword_1002687C8);
  }

  sub_10017AAF4();
  v200 = v125;
  v201 = v126;
  v128 = v127;
  if (!v93)
  {
    v93 = v202;

    v92 = v192;
  }

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v124 + 8))(v88, v94);
  v129 = &v189[*(v90 + 36)];
  *v129 = 0;
  *(v129 + 1) = 0;
  if (v93)
  {
    v203 = v92;
    v204 = v93;
    sub_10001ECE0();
    v193 = v128;

    v130 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

    v131 = *(v130 + 16);
    if (v131)
    {
      v203 = _swiftEmptyArrayStorage;
      sub_100027C2C(0, v131, 0);
      v132 = v203;
      v133 = v130 + 56;
      do
      {

        v134 = static String._fromSubstring(_:)();
        v136 = v135;

        v203 = v132;
        v138 = v132[2];
        v137 = v132[3];
        if (v138 >= v137 >> 1)
        {
          v140 = sub_100005C40(v137);
          sub_100027C2C(v140, v138 + 1, 1);
          v132 = v203;
        }

        v132[2] = v138 + 1;
        v139 = &v132[2 * v138];
        v139[4] = v134;
        v139[5] = v136;
        v133 += 32;
        --v131;
      }

      while (v131);

      v124 = v184;
    }

    else
    {

      v132 = _swiftEmptyArrayStorage;
    }

    v128 = v193;
    v141 = v191;
  }

  else
  {
    v141 = v94;

    v132 = _swiftEmptyArrayStorage;
  }

  v142 = v189;
  *v189 = v132;
  v143 = v196;
  *(v142 + 2) = v195;
  *(v142 + 3) = v143;
  v144 = v194;

  Date.init()();
  (*(v124 + 32))(&v142[v144[8]], v190, v141);
  *(v142 + 1) = _swiftEmptyArrayStorage;
  v142[v144[10]] = 1;
  v145 = &v142[v144[11]];
  *v145 = v200;
  *(v145 + 1) = v128;
  v146 = &v142[v144[12]];
  v147 = v198;
  *v146 = v197;
  *(v146 + 1) = v147;
  v148 = v183;
  sub_1000A0850(v142, v183);
  v149 = v188;
  if (v188 == 1)
  {
  }

  else
  {
    v150 = 0xE900000000000073;
    v151 = 0x636974796C616E61;
    switch(v181)
    {
      case 1:
        v150 = 0xE800000000000000;
        v151 = 0x6C616E7265746E69;
        goto LABEL_57;
      case 2:
        v150 = 0xE800000000000000;
        v151 = 0x7379656E72756F6ALL;
        goto LABEL_57;
      case 3:
        v150 = 0xEF736E6F69746164;
        v151 = 0x6E656D6D6F636572;
        goto LABEL_57;
      case 4:

        goto LABEL_62;
      default:
LABEL_57:
        v152 = *(v148 + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100003030();
          sub_10000DE9C();
          v152 = v169;
        }

        v154 = *(v152 + 16);
        v153 = *(v152 + 24);
        v155 = v154 + 1;
        if (v154 >= v153 >> 1)
        {
          sub_100005C40(v153);
          sub_10000B1D4();
          sub_10000DE9C();
          v152 = v170;
        }

        *(v152 + 16) = v155;
        v156 = v152 + 16 * v154;
        *(v156 + 32) = v151;
        *(v156 + 40) = v150;

        v158 = sub_100062640(v157);
        sub_10018BED8(v158);
        sub_100005F2C();

        *(v148 + 8) = v155;
LABEL_62:
        if (v202 && v149)
        {
          v159 = sub_1000B5C50(v176, v149, v192, v202);
          v161 = v160;
          v162 = *(v148 + 8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100003030();
            sub_10000DE9C();
            v162 = v171;
          }

          v164 = *(v162 + 16);
          v163 = *(v162 + 24);
          if (v164 >= v163 >> 1)
          {
            sub_100005C40(v163);
            sub_10000B1D4();
            sub_10000DE9C();
            v162 = v172;
          }

          *(v162 + 16) = v164 + 1;
          v165 = v162 + 16 * v164;
          *(v165 + 32) = v159;
          *(v165 + 40) = v161;

          v167 = sub_100062640(v166);
          sub_10018BED8(v167);
          sub_100005F2C();

          *(v148 + 8) = v159;
        }

        break;
    }
  }

  sub_1000B8A2C(v148);

LABEL_71:
  sub_1000050BC();
  sub_1000BF4C8();
  sub_100005F14();
}

uint64_t sub_1000B57C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a4;
  v52 = a7;
  v50 = a5;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = type metadata accessor for ContentInfo(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000BF470(a1, v21);
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v12 + 8))(v15, v11);
  v22 = (*(v12 + 40))(v21 + *(v19 + 40), v17, v11);
  if (a3)
  {
    v23 = *v21;
    v53[0] = a2;
    v53[1] = a3;
    __chkstk_darwin(v22);
    *(&v50 - 2) = v53;
    if (!sub_10013D5B0(sub_1000BF6B8, (&v50 - 4), v23))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DE9C();
        v23 = v46;
      }

      v24 = *(v23 + 16);
      if (v24 >= *(v23 + 24) >> 1)
      {
        sub_10000DE9C();
        v23 = v47;
      }

      *(v23 + 16) = v24 + 1;
      v25 = v23 + 16 * v24;
      *(v25 + 32) = a2;
      *(v25 + 40) = a3;
      *v21 = v23;
    }

    if (a6)
    {
      if (a6 == 1)
      {
        goto LABEL_25;
      }

      v26 = sub_1000B5C50(v50, a6, a2, a3);
      v28 = v27;
      v29 = v21[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DE9C();
        v29 = v48;
      }

      v30 = *(v29 + 16);
      if (v30 >= *(v29 + 24) >> 1)
      {
        sub_10000DE9C();
        v29 = v49;
      }

      *(v29 + 16) = v30 + 1;
      v31 = v29 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;

      v33 = sub_100062640(v32);
      v34 = sub_10018BED8(v33);

      v21[1] = v34;
    }
  }

  else if (a6 == 1)
  {
    goto LABEL_25;
  }

  v35 = 0xE900000000000073;
  v36 = 0x636974796C616E61;
  switch(v51)
  {
    case 1:
      v35 = 0xE800000000000000;
      v36 = 0x6C616E7265746E69;
      goto LABEL_20;
    case 2:
      v35 = 0xE800000000000000;
      v36 = 0x7379656E72756F6ALL;
      goto LABEL_20;
    case 3:
      v35 = 0xEF736E6F69746164;
      v36 = 0x6E656D6D6F636572;
      goto LABEL_20;
    case 4:
      break;
    default:
LABEL_20:
      v37 = v21[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DE9C();
        v37 = v44;
      }

      v38 = *(v37 + 16);
      if (v38 >= *(v37 + 24) >> 1)
      {
        sub_10000DE9C();
        v37 = v45;
      }

      *(v37 + 16) = v38 + 1;
      v39 = v37 + 16 * v38;
      *(v39 + 32) = v36;
      *(v39 + 40) = v35;

      v41 = sub_100062640(v40);
      v42 = sub_10018BED8(v41);

      v21[1] = v42;
      break;
  }

LABEL_25:
  sub_1000B8A2C(v21);
  return sub_1000BF4C8();
}

uint64_t sub_1000B5C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4._countAndFlagsBits = sub_1000BF6D4();
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_100003B80();
  String.append(_:)(v5);
  return a3;
}

void sub_1000B5CBC()
{
  sub_100003D74();
  v60 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for ContentInfo(0);
  sub_100002DDC();
  __chkstk_darwin(v8);
  sub_100002DEC();
  v11 = v10 - v9;
  v12 = sub_10007B9A4(&qword_10026B4F8, &qword_1001E8AF8);
  sub_100003D10(v12);
  sub_100004E78();
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = sub_10007B9A4(&qword_10026B500, &unk_1001E8B00);
  sub_100002DDC();
  __chkstk_darwin(v17);
  sub_1000056E8();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v59 = type metadata accessor for ContentManager();
  sub_1000B62EC();
  sub_1000067A0(v15, 1, v16);
  if (v24)
  {
    sub_10000A00C(v15, &qword_10026B4F8, &qword_1001E8AF8);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v25 = sub_10000620C();
    sub_100002CFC(v25);
    sub_1000056F8();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1001E5F60;
    v27 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v67 = &type metadata for String;
    v65 = v6;
    v66 = v4;

    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v65, &qword_10026D350, &qword_1001E6050);
    v28 = static os_log_type_t.error.getter();
    sub_1000036B0(v28, v26);
  }

  else
  {
    v56 = v2;
    v57 = v11;
    v58 = v7;
    sub_1000BF51C(v15, v23, &qword_10026B500, &unk_1001E8B00);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    v55 = qword_100287838;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v29 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v29);
    sub_1000056F8();
    v54 = sub_100003F28();
    *(v54 + 16) = xmmword_1001E61C0;
    v30 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000048BC();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    sub_1000BF568(v23, v20, &qword_10026B500, &unk_1001E8B00);
    v31 = v20 + *(v16 + 48);
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);

    sub_100003018();
    v53 = v34;
    sub_1000BF4C8();
    v67 = &type metadata for String;
    v65 = v33;
    v66 = v32;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v65, &qword_10026D350, &qword_1001E6050);
    sub_1000BF568(v23, v20, &qword_10026B500, &unk_1001E8B00);
    v35 = (v20 + *(v16 + 48) + *(v58 + 48));
    v37 = *v35;
    v36 = v35[1];

    sub_100003B80();
    sub_1000BF4C8();
    v67 = &type metadata for String;
    v65 = v37;
    v66 = v36;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v65, &qword_10026D350, &qword_1001E6050);
    v38 = v56;
    swift_getErrorValue();
    v67 = v62;
    sub_100017E64(&v65);
    sub_1000047A4();
    (*(v39 + 16))();
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v65, &qword_10026D350, &qword_1001E6050);
    v40 = static os_log_type_t.error.getter();
    sub_1000036B0(v40, v54);

    v41 = *(v16 + 48);
    v42 = *v23;
    sub_1000B6534(*v23, &v23[v41], v38);
    *(sub_100004BC8(v59) + 16) = v42;
    sub_1000BF568(v23, v20, &qword_10026B500, &unk_1001E8B00);
    v43 = v57;
    sub_1000A0850(v20 + *(v16 + 48), v57);
    *(v43 + *(v58 + 40)) = 3;
    sub_1000B8A2C(v43);
    sub_1000BD540(&v23[v41], 0, v44, v45, v46, v47, v48, v49, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);

    sub_1000BF4C8();
    sub_10000DE30();
    sub_10000A00C(v50, v51, v52);
  }

  sub_100005F14();
}

void sub_1000B62EC()
{
  sub_100003D74();
  v28 = v0;
  v26 = v1;
  v27 = v2;
  v24 = v3;
  v4 = sub_10007B9A4(&qword_10026A050, &unk_1001EA2B0);
  sub_100003D10(v4);
  sub_100004E78();
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for ContentInfo(0);
  sub_100002DDC();
  __chkstk_darwin(v9);
  sub_100002DEC();
  v23 = v11 - v10;
  sub_100003D1C();
  v12 = 0;
  v25 = type metadata accessor for AppDatabase();
  while (1)
  {
    v13 = *(&off_100244588 + v12 + 32);
    sub_10001D804(v13, 0);
    sub_1000A0DA4();

    sub_10009F208(v26, v27, v28, v7);

    sub_1000067A0(v7, 1, v8);
    if (!v14)
    {
      break;
    }

    ++v12;
    sub_10000A00C(v7, &qword_10026A050, &unk_1001EA2B0);
    if (v12 == 4)
    {
      v18 = sub_10007B9A4(&qword_10026B500, &unk_1001E8B00);
      v19 = v24;
      v20 = 1;
      v21 = 1;
      goto LABEL_7;
    }
  }

  v15 = v23;
  sub_1000A0850(v7, v23);
  v16 = *(sub_10007B9A4(&qword_10026B500, &unk_1001E8B00) + 48);
  v17 = v24;
  *v24 = v13;
  sub_1000A0850(v15, &v17[v16]);
  sub_10000B1D4();
LABEL_7:
  sub_10000A7C0(v19, v20, v21, v18);
  sub_100005F14();
}

uint64_t sub_1000B6534(unsigned int a1, uint64_t a2, uint64_t a3)
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 16) = xmmword_1001E6580;
  *(inited + 32) = 0x656372756F73;
  *(inited + 40) = 0xE600000000000000;
  strcpy((inited + 48), "amsengagementd");
  *(inited + 63) = -18;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x707954746E657665;
  v7 = 0x80000001001F56B0;
  if (a3)
  {
    v7 = 0xED000064656C6961;
  }

  v8 = 0x46746E65746E6F43;
  if (!a3)
  {
    v8 = 0xD000000000000010;
  }

  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = v8;
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x79654B6568636163;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = v9;
  *(inited + 152) = v10;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x6E6F6973726576;
  *(inited + 184) = 0xE700000000000000;
  v11 = (a2 + *(type metadata accessor for ContentInfo(0) + 48));
  v12 = *v11;
  v13 = v11[1];
  v6[27] = &type metadata for String;
  v6[24] = v12;
  v6[25] = v13;

  Dictionary.init(dictionaryLiteral:)();
  if (a3)
  {
    v14 = _convertErrorToNSError(_:)();
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1001E6580;
    *(v15 + 32) = 1701080931;
    *(v15 + 40) = 0xE400000000000000;
    *(v15 + 48) = [v14 code];
    *(v15 + 72) = &type metadata for Int;
    *(v15 + 80) = 0x6E69616D6F64;
    *(v15 + 88) = 0xE600000000000000;
    v16 = [v14 domain];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v15 + 96) = v17;
    *(v15 + 104) = v19;
    *(v15 + 120) = &type metadata for String;
    *(v15 + 128) = 0x656C746974;
    *(v15 + 136) = 0xE500000000000000;
    v20 = sub_1000BF330(v14, &selRef_ams_title);
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    *(v15 + 144) = v22;
    *(v15 + 152) = v23;
    *(v15 + 168) = &type metadata for String;
    *(v15 + 176) = 0x6567617373656DLL;
    *(v15 + 184) = 0xE700000000000000;
    v24 = sub_1000BF330(v14, &selRef_ams_message);
    *(v15 + 216) = &type metadata for String;
    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    *(v15 + 192) = v26;
    *(v15 + 200) = v27;
    v28 = Dictionary.init(dictionaryLiteral:)();
    v38 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v37 = v28;
    sub_100002C4C(&v37, &v36);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000DFC4();
    if (qword_1002686D8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1001E5F70;
    v30 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v31 = static os_log_type_t.error.getter();
    sub_1000036B0(v31, v29);
  }

  else
  {
    if (qword_1002686D8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1001E5F70;
    v33 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v34 = static os_log_type_t.default.getter();
    sub_1000036B0(v34, v32);
  }

  sub_1000BCAC0();
}

void sub_1000B6B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100003D74();
  a19 = v21;
  a20 = v22;
  v171 = v20;
  v165 = v23;
  v161 = v24;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for LogInterpolation.StringInterpolation();
  v30 = sub_100003D10(v29);
  __chkstk_darwin(v30);
  sub_100002DEC();
  v33 = v32 - v31;
  v34 = type metadata accessor for ContentInfo(0);
  sub_100002DDC();
  __chkstk_darwin(v35);
  sub_100002DEC();
  v38 = v37 - v36;
  v39 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v40 = sub_100003D10(v39);
  __chkstk_darwin(v40);
  sub_100005C2C();
  v164 = v41;
  sub_100003F08();
  __chkstk_darwin(v42);
  sub_10000E6C4();
  v166 = v43;
  sub_100003D1C();
  v169 = type metadata accessor for URL();
  sub_100002CC4();
  v45 = v44;
  __chkstk_darwin(v46);
  sub_100002DEC();
  v49 = v48 - v47;
  v50 = sub_10007B9A4(&qword_10026B4F8, &qword_1001E8AF8);
  sub_100003D10(v50);
  sub_100004E78();
  __chkstk_darwin(v51);
  v53 = &v150 - v52;
  v54 = sub_10007B9A4(&qword_10026B500, &unk_1001E8B00);
  sub_100002DDC();
  __chkstk_darwin(v55);
  sub_100005C2C();
  sub_100019BBC();
  __chkstk_darwin(v56);
  sub_10000714C();
  sub_100019BBC();
  __chkstk_darwin(v57);
  sub_10000714C();
  v168 = v58;
  sub_100003F08();
  __chkstk_darwin(v59);
  v61 = &v150 - v60;
  v172 = type metadata accessor for ContentManager();
  v167 = v28;
  sub_1000B62EC();
  v170 = v54;
  sub_1000067A0(v53, 1, v54);
  if (!v62)
  {
    v160 = v34;
    v159 = v49;
    v162 = v45;
    v150 = v38;
    v152 = v33;
    sub_1000BF51C(v53, v61, &qword_10026B500, &unk_1001E8B00);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    v167 = qword_100287838;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v67 = sub_10000620C();
    sub_100002CFC(v67);
    v69 = *(v68 + 72);
    sub_10000DE0C();
    v72 = v70 & ~v71;
    sub_1000BF72C(&a10);
    v154 = v61;
    v156 = swift_allocObject();
    *(v156 + 16) = xmmword_1001E6580;
    v155 = v72;
    v73 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v74 = v168;
    sub_1000BF568(v61, v168, &qword_10026B500, &unk_1001E8B00);
    v75 = v170;
    v76 = v74 + *(v170 + 48);
    v78 = *(v76 + 16);
    v77 = *(v76 + 24);

    sub_10000A5EC();
    sub_1000BF4C8();
    v176 = &type metadata for String;
    v174 = v78;
    v175 = v77;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v174, &qword_10026D350, &qword_1001E6050);
    v163 = v69;
    sub_1000BF568(v61, v74, &qword_10026B500, &unk_1001E8B00);
    v79 = v74 + *(v75 + 48);
    sub_100006794();
    v81 = v79 + *(v80 + 48);
    v83 = *v81;
    v82 = *(v81 + 8);

    sub_1000BF4C8();
    v176 = &type metadata for String;
    v174 = v83;
    v175 = v82;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v174, &qword_10026D350, &qword_1001E6050);
    static os_log_type_t.default.getter();
    sub_100008FCC();
    sub_10001C04C(v84);

    v85 = v61;
    v86 = *v61;
    v156 = sub_100004BC8(v172);
    *(v156 + 16) = v86;
    v87 = v164;
    sub_1000BF568(v165, v164, &unk_10026FEE0, &unk_1001E67C0);
    v88 = v169;
    sub_1000067A0(v87, 1, v169);
    if (v62)
    {
      sub_10000A00C(v87, &unk_10026FEE0, &unk_1001E67C0);
      v89 = 0;
      v91 = 0xE000000000000000;
    }

    else
    {
      v89 = URL.pathExtension.getter();
      v91 = v90;
      v92 = sub_100003B80();
      v93(v92);
    }

    v94 = v166;
    v95 = 2 * v163;
    v96 = *(v170 + 48);
    sub_1000B79F4(v85 + v96, v86, v89, v91, v166);

    sub_1000067A0(v94, 1, v88);
    if (v62)
    {
      v97 = sub_10000A00C(v94, &unk_10026FEE0, &unk_1001E67C0);
      *(sub_100003D9C(v97, v155 + v95) + 16) = xmmword_1001E5F70;
      v98 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000DE30();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.init(stringLiteral:)();
      v99 = static os_log_type_t.error.getter();
      sub_10001C04C(v99);

      v100 = v85;
    }

    else
    {
      v166 = v95;
      v151 = v85;
      (*(v162 + 32))(v159, v94, v88);
      v101 = objc_opt_self();
      v102 = [v101 defaultManager];
      URL.path.getter();
      v103 = String._bridgeToObjectiveC()();

      v174 = 0;
      v104 = [v102 removeItemAtPath:v103 error:&v174];

      if (v104)
      {
        v105 = v174;
      }

      else
      {
        v106 = v174;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v107 = [v101 defaultManager];
      URL._bridgeToObjectiveC()(&a18);
      v109 = v108;
      v110 = v159;
      URL._bridgeToObjectiveC()(&a16);
      v112 = v111;
      v174 = 0;
      v113 = [v107 moveItemAtURL:v109 toURL:v111 error:&v174];

      v114 = v174;
      if (v113)
      {
        v115 = v168;
        sub_1000BF568(v151, v168, &qword_10026B500, &unk_1001E8B00);
        v116 = v150;
        sub_1000A0850(v115 + *(v170 + 48), v150);
        v117 = v114;
        v118 = URL.path.getter();
        v120 = v119;
        v121 = v160;
        v122 = (v116 + *(v160 + 36));

        *v122 = v118;
        v122[1] = v120;
        *(v116 + *(v121 + 40)) = 2;
        sub_100008FCC();
        sub_1000BCA54();
        sub_10009FA1C(v116);

        sub_1000B6534(v86, v116, 0);
        sub_1000BCA54();
        v129 = v151;
        sub_1000BF568(v151, v157, &qword_10026B500, &unk_1001E8B00);
        v130 = v170;

        sub_1000BF4C8();
        v131 = v158;
        sub_1000BF568(v129, v158, &qword_10026B500, &unk_1001E8B00);
        v132 = v131 + *(v130 + 48);
        sub_100006794();
        v134 = *(v132 + *(v133 + 48) + 8);

        sub_1000BF4C8();
        sub_10005ADC4();
        sub_10009F650(v135, v136, v137, v134);

        v138 = v151;
        sub_1000BD540(v151 + v96, 1, v139, v140, v141, v142, v143, v144, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
        *(sub_100003D9C(v145, v155 + v166) + 16) = xmmword_1001E5F70;
        v146 = AMSSetLogKeyIfNeeded();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000DE30();
        static LogInterpolation.prefix<A>(_:_:)();

        LogInterpolation.init(stringLiteral:)();
        v147 = static os_log_type_t.default.getter();
        sub_10001C04C(v147);

        v148 = sub_100004BB4();
        v149(v148, v169);
        sub_10000A00C(v138, &qword_10026B500, &unk_1001E8B00);
        sub_1000050BC();
        sub_1000BF4C8();
        goto LABEL_21;
      }

      v123 = v174;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      v124 = (*(v162 + 8))(v110, v169);
      *(sub_100003D9C(v124, v155 + v166) + 16) = xmmword_1001E5F70;
      v125 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000DE30();
      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v126._countAndFlagsBits = 0xD00000000000001DLL;
      v126._object = 0x80000001001F5790;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v126);
      swift_getErrorValue();
      v176 = v173;
      sub_100017E64(&v174);
      sub_1000047A4();
      sub_10005ADC4();
      v127();
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&v174, &qword_10026D350, &qword_1001E6050);
      sub_100003B48();
      LogInterpolation.init(stringInterpolation:)();
      v128 = static os_log_type_t.error.getter();
      sub_10001C04C(v128);

      v100 = v151;
    }

    sub_10000A00C(v100, &qword_10026B500, &unk_1001E8B00);
    goto LABEL_21;
  }

  sub_10000A00C(v53, &qword_10026B4F8, &qword_1001E8AF8);
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v63 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v63);
  sub_1000056F8();
  v64 = sub_100003F28();
  sub_1000BF738(v64, xmmword_1001E5F60);
  v65 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v176 = &type metadata for String;
  v174 = v167;
  v175 = v26;

  sub_100061E04();
  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v174, &qword_10026D350, &qword_1001E6050);
  v66 = static os_log_type_t.error.getter();
  sub_1000036B0(v66, v64);

LABEL_21:
  sub_100005F14();
}

uint64_t sub_1000B79F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v6 = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_1000BCD00(a1);
  if (v16)
  {
    sub_1000BAEB0(v6);
    URL.appendingPathComponent(_:)();

    v17 = *(v10 + 8);
    v17(v13, v9);
    if (URL.pathExtension.getter() == a3 && v18 == v23)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        URL.appendingPathExtension(_:)();
        v17(v15, v9);
        return sub_10000A7C0(a5, 0, 1, v9);
      }
    }

    (*(v10 + 32))(a5, v15, v9);
    return sub_10000A7C0(a5, 0, 1, v9);
  }

  return sub_10000A7C0(a5, 1, 1, v9);
}

uint64_t sub_1000B7FA8(uint64_t a1, uint64_t a2)
{
  sub_1000BCA54();
  v4 = sub_10009E544(a1, a2);

  return v4;
}

uint64_t sub_1000B822C(uint64_t a1)
{
  sub_1000BCA54();
  v2 = sub_10009ECF4(a1);

  return v2;
}

void sub_1000B84AC()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ContentInfo(0);
  sub_100002DDC();
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = (v9 - v8);
  v11 = *v1;
  v35[0] = v5;
  v35[1] = v3;
  v34[2] = v35;
  if (!sub_10013D5B0(sub_1000BF450, v34, v11))
  {
LABEL_28:
    sub_100005F14();
    return;
  }

  sub_10000B7DC();
  sub_1000BF470(v1, v10);
  v12 = *v10;
  swift_bridgeObjectRetain_n();
  v13 = sub_1000BEA88(v12, v5, v3);
  if (v14)
  {
    v15 = *(v12 + 16);
LABEL_22:

    v28 = *(v12 + 16);
    if (v28 >= v15)
    {
      sub_1001130A0(v15, v28);
      if (*(*v10 + 16) || *(v10 + *(v6 + 40)) != 3)
      {
        sub_1000B8730(v5, v3, v1);
        v30 = v29;

        v10[1] = v30;
        sub_1000B8A2C(v10);
      }

      else
      {
        sub_1000B8874(v10[2], v10[3], *(v10 + *(v6 + 48)), *(v10 + *(v6 + 48) + 8));
      }

      sub_1000050BC();
      sub_1000BF4C8();
      goto LABEL_28;
    }

    goto LABEL_32;
  }

  v15 = v13;
  v32 = v6;
  v16 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    v31 = v1;
    v33 = v10;
    for (i = 16 * v13; ; i += 16)
    {
      v18 = *(v12 + 16);
      if (v16 == v18)
      {
        v1 = v31;
        v6 = v32;
        v10 = v33;
        goto LABEL_22;
      }

      if (v16 >= v18)
      {
        break;
      }

      v19 = *(v12 + i + 48);
      v20 = *(v12 + i + 56);
      v21 = v19 == v5 && v20 == v3;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        if (v16 != v15)
        {
          if (v15 >= v18)
          {
            goto LABEL_30;
          }

          v22 = (v12 + 32 + 16 * v15);
          v24 = *v22;
          v23 = v22[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001D1A2C();
            v12 = v27;
          }

          v25 = v12 + 16 * v15;
          *(v25 + 32) = v19;
          *(v25 + 40) = v20;

          if (v16 >= *(v12 + 16))
          {
            goto LABEL_31;
          }

          v26 = v12 + i;
          *(v26 + 48) = v24;
          *(v26 + 56) = v23;

          *v33 = v12;
        }

        ++v15;
      }

      ++v16;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
}

void sub_1000B8730(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4._countAndFlagsBits = sub_1000BF6D4();
  String.append(_:)(v4);
  v5 = 0;
  v6 = *(a3 + 8);
  v7 = *(v6 + 16);
  v8 = v6 + 40;
LABEL_2:
  for (i = (v8 + 16 * v5); ; i += 2)
  {
    if (v7 == v5)
    {

      return;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    v11 = *(i - 1);
    v10 = *i;

    v12._countAndFlagsBits = sub_100003B80();
    if (!String.hasPrefix(_:)(v12))
    {
      v19 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BF744(_swiftEmptyArrayStorage[2]);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100005C40(v13);
        sub_1000BF720();
        sub_100027C2C(v16, v17, v18);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v11;
      v15[5] = v10;
      v8 = v19;
      goto LABEL_2;
    }

    ++v5;
  }

  __break(1u);
}

void sub_1000B8BD8()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v90 = v4;
  v91 = v5;
  v92 = v6;
  v93 = v7;
  v84[3] = v8;
  v84[2] = v9;
  v86 = *v0;
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = sub_100003D10(v10);
  __chkstk_darwin(v11);
  sub_100002DEC();
  v84[1] = v13 - v12;
  v14 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  sub_100003D10(v14);
  sub_100004E78();
  __chkstk_darwin(v15);
  v17 = v84 - v16;
  v88 = type metadata accessor for URL();
  sub_100002CC4();
  v87 = v18;
  __chkstk_darwin(v19);
  sub_100002DEC();
  sub_10000A854(v21 - v20);
  v22 = type metadata accessor for Date();
  sub_100002CC4();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_100002DEC();
  v28 = v27 - v26;
  v29 = type metadata accessor for ContentInfo(0);
  sub_100002DDC();
  __chkstk_darwin(v30);
  sub_100002DEC();
  v33 = (v32 - v31);
  *&v98 = 7107700;
  *(&v98 + 1) = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v95, v3, &v98);
  v34 = sub_10000E1E8(&v95);
  v89 = v1;
  if (v99)
  {
    if (sub_10005E28C(v34, v35, v36, &type metadata for Int))
    {
      v37 = v94;
      goto LABEL_6;
    }
  }

  else
  {
    sub_10000A00C(&v98, &qword_10026D350, &qword_1001E6050);
  }

  v37 = 30;
LABEL_6:
  static Date.now.getter();
  if ((v37 * 86400) >> 64 != (86400 * v37) >> 63)
  {
    __break(1u);
    goto LABEL_34;
  }

  Date.addingTimeInterval(_:)();
  (*(v24 + 8))(v28, v22);
  v38 = (v33 + v29[9]);
  *v38 = 0;
  v38[1] = 0;
  v84[0] = v38;
  v39 = _swiftEmptyArrayStorage;
  *v33 = _swiftEmptyArrayStorage;
  v40 = v93;
  v33[2] = v92;
  v33[3] = v40;

  Date.init()();
  v33[1] = _swiftEmptyArrayStorage;
  *(v33 + v29[10]) = 2;
  v41 = (v33 + v29[11]);
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = (v33 + v29[12]);
  v43 = v91;
  *v42 = v90;
  v42[1] = v43;
  *&v98 = 0x617461646174656DLL;
  *(&v98 + 1) = 0xE800000000000000;

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v95, v3, &v98);
  sub_10000E1E8(&v95);
  if (v99)
  {
    v44 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    if (sub_10005E28C(v44, v45, v46, v44))
    {
      v39 = v94;
    }
  }

  else
  {
    sub_10000A00C(&v98, &qword_10026D350, &qword_1001E6050);
  }

  v47 = v39[2];
  v48 = v39 + 5;
  for (i = _swiftEmptyArrayStorage; v47; i = v57)
  {
    v51 = *(v48 - 1);
    v50 = *v48;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100003030();
      sub_10000DE9C();
      i = v58;
    }

    v53 = i[2];
    v52 = i[3];
    if (v53 >= v52 >> 1)
    {
      sub_100005C40(v52);
      sub_10000DE9C();
      i = v59;
    }

    i[2] = v53 + 1;
    v54 = &i[2 * v53];
    v54[4] = v51;
    v54[5] = v50;

    v56 = sub_100062640(v55);
    v57 = sub_10018BED8(v56);

    v33[1] = v57;
    v48 += 2;
    --v47;
  }

  v37 = v89;
  sub_1000B79F4(v33, *(v89 + 16), 1852797802, 0xE400000000000000, v17);
  v60 = v88;
  sub_1000067A0(v17, 1, v88);
  if (v61)
  {
    sub_10000A00C(v17, &unk_10026FEE0, &unk_1001E67C0);
    if (qword_1002686D8 == -1)
    {
LABEL_20:
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v62 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v62);
      sub_1000056F8();
      v63 = sub_100003F28();
      sub_1000BF738(v63, xmmword_1001E5F70);
      v97 = type metadata accessor for ContentManager();
      v95 = v37;

      if (AMSLogKey())
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1000091B8();
      }

      else
      {
        sub_10001BD8C();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v95);
      LogInterpolation.init(stringLiteral:)();
      v69 = static os_log_type_t.error.getter();
      sub_1000036B0(v69, v63);

      goto LABEL_32;
    }

LABEL_34:
    sub_100006B70();
    swift_once();
    goto LABEL_20;
  }

  sub_100006794();
  (*(v64 + 32))(v85, v17, v60);
  v65 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v66 = String._bridgeToObjectiveC()();

  v95 = 0;
  v67 = [v65 removeItemAtPath:v66 error:&v95];

  v68 = v95;
  if (!v67)
  {
    sub_100005F2C();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  Data.write(to:options:)();
  v70 = URL.path.getter();
  v71 = v84[0];
  *v84[0] = v70;
  *(v71 + 8) = v72;
  sub_1000B8A2C(v33);
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  v91 = qword_100287838;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v73 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v73);
  sub_1000056F8();
  v90 = v74;
  v75 = sub_100003F28();
  *(v75 + 16) = xmmword_1001E5F70;
  v97 = type metadata accessor for ContentManager();
  v95 = v37;

  v76 = AMSLogKey();
  if (v76)
  {
    v77 = v76;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v95);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v78._object = 0x80000001001F5C10;
  v78._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v78);
  v97 = &type metadata for String;
  v95 = v92;
  v96 = v93;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v95, &qword_10026D350, &qword_1001E6050);
  v79._countAndFlagsBits = 544175136;
  v79._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v79);
  v80 = v85;
  v81 = URL.path.getter();
  v97 = &type metadata for String;
  v95 = v81;
  v96 = v82;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v95, &qword_10026D350, &qword_1001E6050);
  sub_100003B48();
  LogInterpolation.init(stringInterpolation:)();
  v83 = static os_log_type_t.default.getter();
  sub_1000036B0(v83, v75);

  (*(v87 + 8))(v80, v60);
LABEL_32:
  sub_1000050BC();
  sub_1000BF4C8();
  sub_100005F14();
}

void sub_1000B97BC()
{
  sub_100003D74();
  v112 = v2;
  v116 = v3;
  v121 = v4;
  v110 = v0;
  v6 = v5;
  v118 = v7;
  v119 = v8;
  v114 = *v0;
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  sub_100002DEC();
  sub_10000A854(v12 - v11);
  v111 = type metadata accessor for URL();
  sub_100002CC4();
  v120 = v13;
  __chkstk_darwin(v14);
  sub_100002DEC();
  v117 = v16 - v15;
  v17 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v18 = sub_100003D10(v17);
  __chkstk_darwin(v18);
  sub_1000056E8();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  sub_10000AB64();
  __chkstk_darwin(v23);
  v25 = &v107 - v24;
  v26 = type metadata accessor for Date();
  sub_100002CC4();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_1000056E8();
  sub_10000C34C();
  __chkstk_darwin(v30);
  v32 = &v107 - v31;
  v33 = type metadata accessor for ContentInfo(0);
  v34 = (v33 - 8);
  __chkstk_darwin(v33);
  sub_1000056E8();
  v37 = v35 - v36;
  __chkstk_darwin(v38);
  sub_100022228();
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (*(v28 + 8))(v0, v26);
  v39 = &v1[v34[11]];
  *v39 = 0;
  v39[1] = 0;
  v108 = v39;
  *v1 = _swiftEmptyArrayStorage;
  v109 = v6;
  v40 = v121;
  *(v1 + 2) = v6;
  *(v1 + 3) = v40;

  Date.init()();
  v41 = v32;
  v42 = v112;
  (*(v28 + 32))(&v1[v34[10]], v41, v26);
  v43 = v110;
  *(v1 + 1) = _swiftEmptyArrayStorage;
  v1[v34[12]] = 2;
  v44 = &v1[v34[13]];
  *v44 = 0;
  *(v44 + 1) = 0xE000000000000000;
  v45 = &v1[v34[14]];
  *v45 = v116;
  *(v45 + 1) = v42;

  URL.init(string:)();
  sub_10000B7DC();
  v46 = v1;
  sub_1000BF470(v1, v37);
  v47 = *(v43 + 16);
  v115 = v25;
  v48 = v25;
  v49 = v111;
  sub_1000BF568(v48, v21, &unk_10026FEE0, &unk_1001E67C0);
  sub_1000067A0(v21, 1, v49);
  if (v71)
  {
    sub_10000A00C(v21, &unk_10026FEE0, &unk_1001E67C0);
    v50 = 0;
    v52 = 0xE000000000000000;
    v54 = v120;
  }

  else
  {
    v50 = URL.pathExtension.getter();
    v52 = v51;
    v53 = v120;
    (*(v120 + 8))(v21, v49);
    v54 = v53;
  }

  v55 = v113;
  sub_1000B79F4(v37, v47, v50, v52, v113);

  sub_1000050BC();
  sub_1000BF4C8();
  sub_1000067A0(v55, 1, v49);
  if (v71)
  {
    sub_10000A00C(v55, &unk_10026FEE0, &unk_1001E67C0);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100002DFC();
    v56 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v56);
    sub_1000056F8();
    v57 = sub_100003F28();
    sub_1000BF738(v57, xmmword_1001E5F70);
    v58 = type metadata accessor for ContentManager();
    sub_10003D310(v58);
    v59 = AMSLogKey();
    if (v59)
    {
      v60 = v59;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100061E04();
    sub_10005ADC4();
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v123);
    LogInterpolation.init(stringLiteral:)();
    v79 = static os_log_type_t.error.getter();
    sub_1000036B0(v79, v57);

    sub_10000A00C(v115, &unk_10026FEE0, &unk_1001E67C0);
    sub_1000050BC();
    goto LABEL_25;
  }

  v61 = *(v54 + 32);
  v62 = v49;
  v61(v117, v55, v49);
  v63 = URL.path.getter();
  v64 = v108;
  *v108 = v63;
  v64[1] = v65;
  v66 = objc_opt_self();
  v67 = [v66 defaultManager];
  URL.path.getter();
  v68 = String._bridgeToObjectiveC()();

  v69 = [v67 fileExistsAtPath:v68];

  if (v69)
  {
    goto LABEL_20;
  }

  v71 = URL.path.getter() == v118 && v70 == v119;
  if (v71)
  {

    goto LABEL_20;
  }

  v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v72)
  {
LABEL_20:
    sub_1000B8A2C(v46);
    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v80 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v80);
    sub_1000056F8();
    v81 = sub_10000A92C();
    *(v81 + 16) = xmmword_1001E5F70;
    v82 = type metadata accessor for ContentManager();
    sub_10003D310(v82);
    v83 = AMSLogKey();
    v84 = v117;
    if (v83)
    {
      v85 = v83;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v123);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v86._countAndFlagsBits = 0xD00000000000001ELL;
    v86._object = 0x80000001001F5BD0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v86);
    v125 = &type metadata for String;
    sub_100006794();
    v123 = v87;
    v124 = v121;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v123, &qword_10026D350, &qword_1001E6050);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v88 = static os_log_type_t.default.getter();
    sub_1000036B0(v88, v81);

    (*(v120 + 8))(v84, v62);
    sub_10000A00C(v115, &unk_10026FEE0, &unk_1001E67C0);
    sub_1000050BC();
LABEL_25:
    sub_1000BF4C8();
    goto LABEL_26;
  }

  v73 = [v66 defaultManager];
  v74 = String._bridgeToObjectiveC()();
  v75 = v117;
  URL.path.getter();
  v76 = String._bridgeToObjectiveC()();

  v123 = 0;
  v77 = [v73 moveItemAtPath:v74 toPath:v76 error:&v123];

  if (v77)
  {
    v78 = v123;
    goto LABEL_20;
  }

  v89 = v123;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v120 + 8))(v75, v62);
  sub_10000A00C(v115, &unk_10026FEE0, &unk_1001E67C0);
  sub_1000050BC();
  sub_1000BF4C8();
  if (qword_1002686D8 != -1)
  {
    sub_100006B70();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v90 = sub_10000620C();
  sub_100002CFC(v90);
  sub_1000056F8();
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_1001E61C0;
  v92 = type metadata accessor for ContentManager();
  sub_10003D310(v92);
  v93 = AMSLogKey();
  if (v93)
  {
    v94 = v93;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100004E34();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v123);
  LogInterpolation.init(stringLiteral:)();
  v125 = &type metadata for String;
  sub_100006794();
  v123 = v95;
  v124 = v121;

  static LogInterpolation.safe(_:)();
  sub_1000048BC();
  sub_10000A00C(v96, v97, v98);
  v125 = &type metadata for String;
  v123 = v116;
  v124 = v42;

  static LogInterpolation.safe(_:)();
  sub_1000048BC();
  sub_10000A00C(v99, v100, v101);
  swift_getErrorValue();
  v125 = v122;
  sub_100017E64(&v123);
  sub_1000047A4();
  sub_10000AB04();
  v102();
  static LogInterpolation.safe(_:)();
  sub_1000048BC();
  sub_10000A00C(v103, v104, v105);
  v106 = static os_log_type_t.error.getter();
  sub_1000036B0(v106, v91);

LABEL_26:
  sub_100005F14();
}

void sub_1000BA35C()
{
  sub_100003D74();
  v1 = v0;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100002DEC();
  sub_100003D1C();
  v55 = type metadata accessor for URL();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100005C2C();
  v54 = v7;
  sub_100003F08();
  __chkstk_darwin(v8);
  sub_10000E6C4();
  v53 = v9;
  v52 = *(v0 + 16);
  v10 = sub_1000BAA4C(v52);
  v11 = v10[2];
  if (v11)
  {
    v51 = (v5 + 8);
    v12 = v10 + 5;
    v50 = v0;
    while (1)
    {

      sub_1000BAEB0(v52);
      URL.appendingPathComponent(_:)();

      v13 = *v51;
      (*v51)(v54, v55);
      v14 = URL.path.getter();
      v16 = v15;
      v13(v53, v55);
      v56 = v14;
      v57 = v16;
      v17 = sub_1000BB410(v14, v16);
      if (!v18)
      {
        break;
      }

      v21 = v17;
      v22 = v18;
      v23 = v19;
      v24 = v20;

      sub_1000B7DD0(v21, v22, v23, v24, 4);
      sub_100005F2C();

      v25 = *(v1 + 16);

      if (!v25)
      {
        if (qword_1002686D8 != -1)
        {
          sub_100006B70();
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        sub_100003EFC();
        v30 = type metadata accessor for LogInterpolation();
        sub_100002CFC(v30);
        sub_100007E58();
        v31 = sub_10000A92C();
        *(v31 + 16) = xmmword_1001E5F70;
        v60 = type metadata accessor for ContentManager();
        sub_10005E268();
        v32 = AMSLogKey();
        if (v32)
        {
          v33 = v32;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v58);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v41._object = 0x80000001001F5AC0;
        v41._countAndFlagsBits = 0xD00000000000002DLL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v41);
        v60 = &type metadata for String;
        v58 = v56;
        v59 = v57;

        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v58, &qword_10026D350, &qword_1001E6050);
        v42._countAndFlagsBits = 0x203A79656B2820;
        v42._object = 0xE700000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v42);
        v60 = &type metadata for String;
        v58 = v21;
        v59 = v22;

        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v58, &qword_10026D350, &qword_1001E6050);
        v43._countAndFlagsBits = 0x6F6973726576202CLL;
        v43._object = 0xEB00000000203A6ELL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v43);

        v60 = &type metadata for String;
        v58 = v23;
        v59 = v24;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v58, &qword_10026D350, &qword_1001E6050);
        sub_100003B48();
        LogInterpolation.init(stringInterpolation:)();
        v44 = static os_log_type_t.error.getter();
        sub_1000036B0(v44, v31);

        sub_1000060C4();
        sub_1000BB11C(v45, v46, v47, v48);
LABEL_16:

        v1 = v50;
        goto LABEL_17;
      }

LABEL_17:
      v12 += 2;
      if (!--v11)
      {

        sub_100005F14();
        return;
      }
    }

    if (qword_1002686D8 != -1)
    {
      sub_100006B70();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v26 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v26);
    sub_1000056F8();
    v27 = sub_10000A92C();
    *(v27 + 16) = xmmword_1001E5F70;
    v60 = type metadata accessor for ContentManager();
    v58 = v1;

    v28 = AMSLogKey();
    if (v28)
    {
      v29 = v28;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v58);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100006794();
    v35._object = (v34 | 0x8000000000000000);
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
    v60 = &type metadata for String;
    v58 = v14;
    v59 = v16;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v58, &qword_10026D350, &qword_1001E6050);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v36 = static os_log_type_t.error.getter();
    sub_1000036B0(v36, v27);

    sub_1000060C4();
    sub_1000BB11C(v37, v38, v39, v40);
    goto LABEL_16;
  }

  sub_100005F14();
}

void *sub_1000BAA4C(uint64_t a1)
{
  v1 = a1;
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  sub_1000BAEB0(v1);
  URL.path.getter();
  (*(v4 + 8))(v6, v3);
  v8 = String._bridgeToObjectiveC()();

  v27[0] = 0;
  v9 = [v7 contentsOfDirectoryAtPath:v8 error:v27];

  v10 = v27[0];
  if (v9)
  {
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v10;
  }

  else
  {
    v13 = v27[0];
    v14 = _convertNSErrorToError(_:)();

    v25[1] = v14;
    swift_willThrow();
    if (qword_1002686D8 != -1)
    {
      swift_once();
    }

    v25[0] = qword_100287838;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001E5F70;
    v16 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._object = 0x80000001001F5B80;
    v17._countAndFlagsBits = 0xD000000000000027;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    v28 = v3;
    sub_100017E64(v27);
    sub_1000BAEB0(v1);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(v27, &qword_10026D350, &qword_1001E6050);
    v18._countAndFlagsBits = 8238;
    v18._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    swift_getErrorValue();
    v19 = v25[2];
    v20 = v26;
    v28 = v26;
    v21 = sub_100017E64(v27);
    (*(*(v20 - 8) + 16))(v21, v19, v20);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(v27, &qword_10026D350, &qword_1001E6050);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    LogInterpolation.init(stringInterpolation:)();
    v23 = static os_log_type_t.error.getter();
    sub_1000036B0(v23, v15);

    return _swiftEmptyArrayStorage;
  }

  return v11;
}

void sub_1000BAEB0(char a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E78C(a1);
  URL.appendingPathComponent(_:)();
  (*(v3 + 8))(v5, v2);
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  URL.path.getter();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 fileExistsAtPath:v8 isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v10 = [v6 defaultManager];
    URL.path.getter();
    v11 = String._bridgeToObjectiveC()();

    v17 = 0;
    v12 = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v17];

    v13 = v17;
    if (v12)
    {

      v14 = v13;
    }

    else
    {
      v16 = v17;
      v15 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1000BB11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  if (qword_1002686D8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F70;
  v9 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ContentManager();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001001F5AF0;
  v10._countAndFlagsBits = 0xD000000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v17[3] = &type metadata for String;
  v17[0] = a1;
  v17[1] = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(v17, &qword_10026D350, &qword_1001E6050);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  LogInterpolation.init(stringInterpolation:)();
  v12 = static os_log_type_t.error.getter();
  sub_1000036B0(v12, v8);

  if (qword_100268670 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v4;
  v13[5] = a3;
  v13[6] = a4;

  sub_100017E54(a3, a4);
  sub_10018AF98(sub_1000BF414, v13);
}

uint64_t sub_1000BB410(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  URL.init(fileURLWithPath:)();
  URL.deletingPathExtension()();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v10 = URL.lastPathComponent.getter();
  v12 = v11;
  v9(v8, v2);
  v21 = v10;
  v22 = v12;
  sub_10001ECE0();
  v13 = StringProtocol.removingPercentEncoding.getter();
  if (v14)
  {
    v15 = v13;
    v16 = v14;

    v10 = v15;
    v12 = v16;
  }

  v21 = 43;
  v22 = 0xE100000000000000;
  __chkstk_darwin(v13);
  *&v20[-16] = &v21;
  v17 = sub_1000BECF4(1, 1, sub_1000BF450, &v20[-32], v10, v12);
  if (v17[2] != 2)
  {

    return 0;
  }

  v18 = static String._fromSubstring(_:)();

  if (v17[2])
  {

    static String._fromSubstring(_:)();

    return v18;
  }

  __break(1u);
  return result;
}

void sub_1000BB69C()
{
  sub_100003D74();
  v3 = v2;
  v4 = type metadata accessor for ContentInfo(0);
  v5 = sub_100002CFC(v4);
  v35 = v6;
  __chkstk_darwin(v5);
  sub_1000056E8();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  sub_100022228();
  sub_100004AA0();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  sub_100004AA0();
  v12 = swift_allocObject();
  *(v12 + 16) = &_swiftEmptySetSingleton;
  v32 = v12 + 16;
  sub_100004AA0();
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  sub_100004AA0();
  v33 = swift_allocObject();
  *(v33 + 16) = _swiftEmptyArrayStorage;
  v14 = v33 + 16;
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;

  sub_1000B7C20(sub_1000BF400, v15);

  v34 = v12;

  sub_1000060C4();
  swift_beginAccess();
  v16 = *(v13 + 16);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v0 + 16);
    v19 = v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v20 = *(v35 + 72);
    do
    {
      sub_100003018();
      sub_1000BF470(v19, v1);
      v21 = type metadata accessor for ContentManager();
      *(sub_100004BC8(v21) + 16) = v18;
      sub_1000060C4();
      sub_1000B8874(v22, v23, v24, v25);

      sub_1000BF4C8();
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  sub_1000060C4();
  swift_beginAccess();
  if (*(*v32 + 16))
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v34;
    *(v26 + 24) = v33;
    sub_1000B7C20(sub_1000BF40C, v26);
  }

  sub_1000060C4();
  swift_beginAccess();
  v27 = *(*v14 + 16);
  if (v27)
  {
    v28 = *(v0 + 16);
    v29 = *v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v30 = *(v35 + 72);
    do
    {
      sub_100003018();
      sub_1000BF470(v29, v9);
      v31 = type metadata accessor for ContentManager();
      *(sub_100004BC8(v31) + 16) = v28;
      sub_1000B8A2C(v9);

      sub_100003B80();
      sub_1000BF4C8();
      v29 += v30;
      --v27;
    }

    while (v27);
  }

  sub_100005F14();
}

uint64_t sub_1000BB9EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v100 = a5;
  v98 = a3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  v13 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v101 = type metadata accessor for ContentInfo(0);
  v14 = *(a1 + v101[10]);
  p_base_prots = &UniversalLinksService.base_prots;
  v16 = &unk_100287000;
  v99 = a4;
  v96 = v9;
  v97 = a2;
  switch(v14)
  {
    case 0:
      v95 = v8;
      if (qword_1002686D8 != -1)
      {
        swift_once();
      }

      v94 = qword_100287838;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1001E5F70;
      v105 = type metadata accessor for ContentManager();
      v102 = a2;

      v18 = AMSLogKey();
      if (v18)
      {
        v19 = v18;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v102);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v43 = 0x80000001001F5A60;
      v42 = 0xD00000000000001ELL;
      goto LABEL_33;
    case 1:
      v32 = v98;
      swift_beginAccess();
      if (*(*(v32 + 16) + 16))
      {

        v16 = &unk_100287000;
        sub_100012A94();
        v34 = v33;

        if (v34)
        {
          v29 = 0;
          v9 = v96;
          goto LABEL_35;
        }
      }

      v95 = v8;
      if (qword_1002686D8 != -1)
      {
        swift_once();
      }

      v94 = *(v16 + 263);
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1001E5F70;
      v105 = type metadata accessor for ContentManager();
      v102 = a2;

      v39 = AMSLogKey();
      if (v39)
      {
        v40 = v39;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v102);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v41 = "le asset without file. (key: ";
      v42 = 0xD000000000000033;
LABEL_32:
      v43 = v41 | 0x8000000000000000;
LABEL_33:
      LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v42);
      v57 = a1[2];
      v56 = a1[3];
      v105 = &type metadata for String;
      v102 = v57;
      v103 = v56;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&v102, &qword_10026D350, &qword_1001E6050);
      v58._countAndFlagsBits = 0x6E6F697372657620;
      v58._object = 0xEA0000000000203ALL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v58);
      v59 = (a1 + v101[12]);
      v61 = *v59;
      v60 = v59[1];
      v105 = &type metadata for String;
      v102 = v61;
      v103 = v60;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&v102, &qword_10026D350, &qword_1001E6050);
      v62._countAndFlagsBits = 41;
      v62._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v62);
      LogInterpolation.init(stringInterpolation:)();
      v63 = static os_log_type_t.error.getter();
      sub_1000036B0(v63, v17);
      v9 = v96;
      a2 = v97;
      v8 = v95;
      goto LABEL_34;
    case 2:
      v20 = v101[9];
      v94 = a1;
      v21 = (a1 + v20);
      v22 = *v21;
      v23 = v21[1];
      if (v23 && (v24 = [objc_opt_self() defaultManager], v95 = v11, v25 = v9, v26 = v24, v27 = String._bridgeToObjectiveC()(), v28 = objc_msgSend(v26, "fileExistsAtPath:", v27), v26, v9 = v25, v11 = v95, v27, p_base_prots = (&UniversalLinksService + 40), v16 = &unk_100287000, (v28 & 1) != 0))
      {
        v29 = 0;
        a2 = v97;
        a1 = v94;
      }

      else
      {
        v91 = v22;
        v35 = v23;
        v95 = v8;
        if (p_base_prots[219] != -1)
        {
          swift_once();
        }

        v93 = *(v16 + 263);
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        v92 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1001E5F70;
        v105 = type metadata accessor for ContentManager();
        v102 = v97;

        v37 = AMSLogKey();
        if (v37)
        {
          v38 = v37;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v102);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v44._countAndFlagsBits = 0xD00000000000002DLL;
        v44._object = 0x80000001001F59F0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
        v45 = v94;
        v47 = v94[2];
        v46 = v94[3];
        v105 = &type metadata for String;
        v102 = v47;
        v103 = v46;

        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v102, &qword_10026D350, &qword_1001E6050);
        v48._countAndFlagsBits = 0x6E6F697372657620;
        v48._object = 0xEA0000000000203ALL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
        v49 = (v45 + v101[12]);
        v51 = *v49;
        v50 = v49[1];
        v105 = &type metadata for String;
        v102 = v51;
        v103 = v50;

        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v102, &qword_10026D350, &qword_1001E6050);
        v52._countAndFlagsBits = 0x203A6874617020;
        v52._object = 0xE700000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v52);
        v8 = v95;
        if (v23)
        {
          v53 = &type metadata for String;
          v9 = v96;
          a2 = v97;
          v35 = v91;
        }

        else
        {
          v53 = 0;
          v104 = 0;
          v9 = v96;
          a2 = v97;
        }

        v102 = v35;
        v103 = v23;
        v105 = v53;

        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v102, &qword_10026D350, &qword_1001E6050);
        v54._countAndFlagsBits = 41;
        v54._object = 0xE100000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v54);
        LogInterpolation.init(stringInterpolation:)();
        v55 = static os_log_type_t.error.getter();
        sub_1000036B0(v55, v36);
        a1 = v94;
LABEL_34:

        v29 = 1;
        v16 = &unk_100287000;
      }

LABEL_35:
      Date.init()();
      v64 = static Date.< infix(_:_:)();
      result = (*(v9 + 8))(v11, v8);
      if (v64)
      {
        if (qword_1002686D8 != -1)
        {
          swift_once();
        }

        v96 = *(v16 + 263);
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        type metadata accessor for LogInterpolation();
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1001E5F70;
        v105 = type metadata accessor for ContentManager();
        v102 = a2;

        v67 = AMSLogKey();
        if (v67)
        {
          v68 = v67;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v102);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v69._object = 0x80000001001F59B0;
        v69._countAndFlagsBits = 0xD00000000000001ELL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v69);
        v71 = a1[2];
        v70 = a1[3];
        v105 = &type metadata for String;
        v102 = v71;
        v103 = v70;

        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v102, &qword_10026D350, &qword_1001E6050);
        v72._countAndFlagsBits = 0x6E6F697372657620;
        v72._object = 0xEA0000000000203ALL;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v72);
        v73 = (a1 + v101[12]);
        v75 = *v73;
        v74 = v73[1];
        v105 = &type metadata for String;
        v102 = v75;
        v103 = v74;

        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A00C(&v102, &qword_10026D350, &qword_1001E6050);
        v76._countAndFlagsBits = 41;
        v76._object = 0xE100000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v76);
        LogInterpolation.init(stringInterpolation:)();
        v77 = static os_log_type_t.error.getter();
        sub_1000036B0(v77, v66);

        swift_beginAccess();
        v78 = sub_1000AE380();
        if (v78)
        {
          v79 = v78;
          swift_endAccess();
          [v79 cancel];
        }

        else
        {
          swift_endAccess();
        }

        swift_beginAccess();
        sub_1000AB680();
        v81 = v80;
        swift_endAccess();
      }

      else if (!v29)
      {
        return result;
      }

      v82 = v99;
      swift_beginAccess();
      v83 = *(v82 + 16);

      v85 = sub_100062640(v84);
      v86 = sub_1001C1D1C(v85, v83);
      swift_beginAccess();
      *(v82 + 16) = v86;

      v87 = v100;
      swift_beginAccess();
      sub_1000EF570();
      v88 = *(*(v87 + 16) + 16);
      sub_1000EF674(v88);
      v89 = *(v87 + 16);
      *(v89 + 16) = v88 + 1;
      sub_1000BF470(a1, v89 + ((*(*(v101 - 1) + 80) + 32) & ~*(*(v101 - 1) + 80)) + *(*(v101 - 1) + 72) * v88);
      *(v87 + 16) = v89;
      return swift_endAccess();
    case 3:
      v95 = v8;
      if (qword_1002686D8 != -1)
      {
        swift_once();
      }

      v94 = qword_100287838;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1001E5F70;
      v105 = type metadata accessor for ContentManager();
      v102 = a2;

      v30 = AMSLogKey();
      if (v30)
      {
        v31 = v30;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v102);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v41 = "Removing expired asset: (key: ";
      v42 = 0xD00000000000001DLL;
      goto LABEL_32;
    default:
      v29 = 0;
      goto LABEL_35;
  }
}

uint64_t sub_1000BC848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ContentInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000BF470(a1, v9);

  sub_100062640(v10);
  swift_beginAccess();
  v11 = *(a2 + 16);
  swift_bridgeObjectRetain_n();
  result = sub_1000BF090(v9, v11);
  v13 = *(*v9 + 16);
  if (v13 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1001130A0(result, v13);

    sub_100062640(v14);
    sub_1001C31D0();
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      swift_beginAccess();
      sub_1000EF570();
      v17 = *(*(a3 + 16) + 16);
      sub_1000EF674(v17);
      v18 = *(a3 + 16);
      *(v18 + 16) = v17 + 1;
      sub_1000BF470(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17);
      *(a3 + 16) = v18;
      swift_endAccess();
    }

    return sub_1000BF4C8();
  }

  return result;
}

void *sub_1000BCA54()
{
  type metadata accessor for AppDatabase();
  result = sub_10001D804(*(v0 + 16), 0);
  if (!v1)
  {
    v3 = sub_1000A0DA4();

    return v3;
  }

  return result;
}

void sub_1000BCAC0()
{
  v0 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001E8AB0;
  v2 = v1;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  *(v2 + 32) = sub_100092378();
  sub_1000F43B4(v2, v0);
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E61B0;
  sub_10005DFA4();
  *(v3 + 32) = v4;
  sub_1000F4334(v3, v0);
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v5 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v7 = [objc_allocWithZone(AMSEngagement) initWithBag:v5];

  v6 = [v7 _enqueue:v0];
}

uint64_t sub_1000BCD00(uint64_t a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (a1 + *(type metadata accessor for ContentInfo(0) + 48));
  v7 = v6[1];
  v14[0] = *v6;
  v14[1] = v7;

  v8._countAndFlagsBits = 43;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);

  v11._countAndFlagsBits = v10;
  v11._object = v9;
  String.append(_:)(v11);

  static CharacterSet.urlHostAllowed.getter();
  sub_10001ECE0();
  v12 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  (*(v3 + 8))(v5, v2);

  return v12;
}

id sub_1000BCE64(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id), uint64_t a5)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v35 = a1;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    if (qword_1002686D8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001E5F70;
    v14 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for ContentManager();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._object = 0x80000001001F5B40;
    v15._countAndFlagsBits = 0xD000000000000013;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v39 = &type metadata for String;
    v37 = v35;
    v38 = a2;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    LogInterpolation.init(stringInterpolation:)();
    v17 = static os_log_type_t.error.getter();
    sub_1000036B0(v17, v13);

    v18 = [v9 defaultManager];
    v19 = String._bridgeToObjectiveC()();
    v37 = 0;
    v20 = [v18 removeItemAtPath:v19 error:&v37];

    if (v20)
    {
      result = v37;
    }

    else
    {
      v27 = v37;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1001E5F70;
      v29 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v30._countAndFlagsBits = 0xD000000000000018;
      v30._object = 0x80000001001F5B60;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
      v39 = &type metadata for String;
      v37 = v35;
      v38 = a2;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
      v31._countAndFlagsBits = 8238;
      v31._object = 0xE200000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
      swift_getErrorValue();
      v39 = v36;
      v32 = sub_100017E64(&v37);
      (*(*(v36 - 1) + 16))(v32);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
      LogInterpolation.init(stringInterpolation:)();
      v34 = static os_log_type_t.error.getter();
      sub_1000036B0(v34, v28);
    }

    if (!a4)
    {
      return result;
    }

    return a4(result);
  }

  if (qword_1002686D8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1001E5F70;
  v23 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ContentManager();
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0xD00000000000001ALL;
  v24._object = 0x80000001001F5B20;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
  v39 = &type metadata for String;
  v37 = v35;
  v38 = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A00C(&v37, &qword_10026D350, &qword_1001E6050);
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  LogInterpolation.init(stringInterpolation:)();
  v26 = static os_log_type_t.error.getter();
  sub_1000036B0(v26, v22);

  if (a4)
  {
    return a4(result);
  }

  return result;
}

void sub_1000BD540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100003D74();
  a19 = v21;
  a20 = v22;
  v138 = v23;
  v25 = v24;
  v152 = *v20;
  v157 = type metadata accessor for ContentInfo(0);
  sub_100002CC4();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100005C2C();
  v150 = v29;
  sub_100003F08();
  __chkstk_darwin(v30);
  sub_10000714C();
  sub_100019BBC();
  __chkstk_darwin(v31);
  sub_10000714C();
  v146 = v32;
  sub_100003F08();
  __chkstk_darwin(v33);
  sub_10000714C();
  v153 = v34;
  sub_100003F08();
  __chkstk_darwin(v35);
  v37 = v131 - v36;
  v38 = 0;
  v154 = 0;
  v147 = v25;
  v39 = v25[1];
  v40 = *(v39 + 16);
  v41 = v39 + 40;
  v155 = _swiftEmptyArrayStorage;
  v151 = v39 + 40;
LABEL_2:
  v42 = (v41 + 16 * v38);
  while (v40 != v38)
  {
    if (v38 >= *(v39 + 16))
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      sub_100006B70();
      swift_once();
      goto LABEL_68;
    }

    ++v38;
    v43 = v42 + 2;
    v44 = *(v42 - 1);
    v45 = *v42;

    v46._countAndFlagsBits = v44;
    v46._object = v45;
    v47 = _findStringSwitchCase(cases:string:)(&off_100244A00, v46);

    v42 = v43;
    if (v47 < 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100003030();
        sub_1000589D0();
        v155 = v51;
      }

      v49 = v155[2];
      v48 = v155[3];
      if (v49 >= v48 >> 1)
      {
        sub_100005C40(v48);
        sub_1000BF720();
        sub_1000589D0();
        v155 = v52;
      }

      v50 = v155;
      v155[2] = v49 + 1;
      *(v50 + v49 + 32) = v47;
      v41 = v151;
      goto LABEL_2;
    }
  }

  if (v155[2])
  {
    v53 = (v155 + 4);
  }

  else
  {
    v53 = (v20 + 2);
  }

  LODWORD(v151) = *v53;

  v137 = *v147;
  v54 = v154;
  v135 = *(v137 + 16);
  if (!v135)
  {
    goto LABEL_72;
  }

  v55 = 0;
  v136 = v137 + 32;
  v131[0] = "d info for failed batchKey";
  v134 = "plete, returning early";
  v133 = "All tasks for batchKey finished";
  v145 = xmmword_1001E5F60;
  v156 = v20;
  v132 = v37;
  while (2)
  {
    if (v55 >= *(v137 + 16))
    {
      goto LABEL_78;
    }

    v56 = (v136 + 16 * v55);
    v58 = *v56;
    v57 = v56[1];
    v144 = v55 + 1;

    v149 = v58;
    v155 = v57;
    v59 = sub_1000B7FA8(v58, v57);
    __chkstk_darwin(v59);
    sub_10000BE84();
    *(v60 - 16) = v147;
    v63 = sub_1001630FC(sub_1000BF38C, v61, v62);
    v154 = v54;
    v64 = 0;
    v65 = v63[1].n128_u64[0];
    v66 = _swiftEmptyArrayStorage;
    while (v65 != v64)
    {
      if (v64 >= v63[1].n128_u64[0])
      {
        __break(1u);
        goto LABEL_71;
      }

      v67 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v68 = *(v27 + 72);
      sub_10000B7DC();
      sub_1000BF470(v69, v37);
      if (v37[*(v157 + 40)] == 1)
      {
        sub_1000A0850(v37, v146);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v158 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10009B820(0, v66[2] + 1, 1);
          v66 = v158;
        }

        v72 = v66[2];
        v71 = v66[3];
        v73 = v72 + 1;
        if (v72 >= v71 >> 1)
        {
          v74 = sub_100005C40(v71);
          v148 = v75;
          sub_10009B820(v74, v75, 1);
          v73 = v148;
          v66 = v158;
        }

        ++v64;
        v66[2] = v73;
        sub_1000A0850(v146, v66 + v67 + v72 * v68);
      }

      else
      {
        sub_1000050BC();
        sub_1000BF4C8();
        ++v64;
      }
    }

    v76 = v66[2];

    v77 = 0;
    while (v65 != v77)
    {
      if (v77 >= v63[1].n128_u64[0])
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      sub_100004864();
      v79 = v153;
      sub_1000BF470(v63 + v78 + *(v27 + 72) * v77++, v153);
      v80 = *(v79 + *(v157 + 40));
      sub_1000BF4C8();
      if (v80 == 3)
      {
        goto LABEL_42;
      }
    }

    if ((v138 & 1) == 0)
    {
      v142 = v76;
      if (qword_1002686D8 != -1)
      {
        sub_100006B70();
        swift_once();
      }

      v148 = qword_100287838;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100003EFC();
      v81 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v81);
      sub_1000056F8();
      v143 = v82;
      v83 = sub_10000A92C();
      *(v83 + 16) = v145;
      v84 = type metadata accessor for ContentManager();
      sub_10003D310(v84);
      v85 = AMSLogKey();
      if (v85)
      {
        v86 = v85;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v158);
      LogInterpolation.init(stringLiteral:)();
      v160 = &type metadata for String;
      v87 = v83;
      v88 = v149;
      v77 = v155;
      v158 = v149;
      v159 = v155;

      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v158, &qword_10026D350, &qword_1001E6050);
      v89 = static os_log_type_t.error.getter();
      sub_1000036B0(v89, v87);

      sub_1000BE300(v147, v88, v77);
      v91 = v90;
      v92 = 0;
      v93 = *(v90 + 16);
      v94 = (v90 + 40);
      while (v93 != v92)
      {
        if (v92 >= *(v91 + 16))
        {
          goto LABEL_74;
        }

        ++v92;
        v95 = *v94;
        v158 = *(v94 - 1);
        v159 = v95;

        v77 = v154;
        sub_1000BE534(&v158, v156, v149, v155);
        v154 = v77;

        v94 += 2;
      }

      v76 = v142;
    }

LABEL_42:
    if (!v76)
    {
      if (qword_1002686D8 != -1)
      {
        sub_100006B70();
        swift_once();
      }

      v96 = qword_100287838;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v97 = sub_10000620C();
      sub_100002CFC(v97);
      v99 = *(v98 + 72);
      sub_10000DE0C();
      v148 = v101 & ~v100;
      v141 = 3 * v99;
      sub_1000BF72C(&a17);
      v142 = v77;
      v102 = swift_allocObject();
      *(v102 + 16) = v145;
      v140 = type metadata accessor for ContentManager();
      v160 = v140;
      v158 = v156;

      v103 = AMSLogKey();
      if (v103)
      {
        v104 = v103;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_1000BF764();

      sub_100002C00(&v158);
      LogInterpolation.init(stringLiteral:)();
      v160 = &type metadata for String;
      v143 = v99;
      v158 = v149;
      v159 = v155;

      sub_100061E04();
      static LogInterpolation.safe(_:)();
      sub_10000A00C(&v158, &qword_10026D350, &qword_1001E6050);
      v105 = static os_log_type_t.info.getter();
      v139 = v96;
      sub_1000036B0(v105, v102);

      if (v138)
      {
        v106 = 0;
        v107 = v131[1];
        while (v65 != v106)
        {
          if (v106 >= v63[1].n128_u64[0])
          {
            goto LABEL_75;
          }

          sub_100004864();
          sub_10000A5EC();
          sub_1000BF470(v108, v107);
          ++v106;
          v109 = *(v107 + *(v157 + 40));
          sub_1000BF4C8();
          v110 = v109 == 2;
          v111 = v156;
          if (!v110)
          {
            goto LABEL_54;
          }
        }

        v120 = v149;
        sub_1000BE300(v147, v149, v155);
        v122 = v121;
        v123 = 0;
        v124 = *(v121 + 16);
        v125 = (v121 + 40);
        v54 = v154;
        while (v124 != v123)
        {
          if (v123 >= *(v122 + 16))
          {
            goto LABEL_76;
          }

          ++v123;
          v126 = *v125;
          v158 = *(v125 - 1);
          v159 = v126;

          sub_1000BE7D8(&v158, v156, v120, v155);

          v125 += 2;
        }
      }

      else
      {
        v111 = v156;
LABEL_54:
        sub_100006794();
        v112 = swift_allocObject();
        *(v112 + 16) = v145;
        v160 = v140;
        v158 = v111;

        v113 = AMSLogKey();
        if (v113)
        {
          v114 = v113;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_1000BF764();

        sub_100002C00(&v158);
        LogInterpolation.init(stringLiteral:)();
        v160 = &type metadata for String;
        v158 = v149;
        v159 = v155;

        static LogInterpolation.safe(_:)();
        sub_10000A00C(&v158, &qword_10026D350, &qword_1001E6050);
        v115 = static os_log_type_t.info.getter();
        sub_1000036B0(v115, v112);

        if (v65)
        {
          sub_100004864();
          v117 = v63 + v116;
          v118 = *(v27 + 72);
          v119 = v150;
          do
          {
            sub_1000BF470(v117, v119);
            sub_1000B84AC();
            v119 = v150;
            sub_1000BF4C8();
            v117 += v118;
            --v65;
          }

          while (v65);
        }

        sub_1000B84AC();
        v54 = v154;
        v37 = v132;
      }

      v55 = v144;
      if (v144 != v135)
      {
        continue;
      }

      goto LABEL_72;
    }

    break;
  }

  if (qword_1002686D8 != -1)
  {
    goto LABEL_79;
  }

LABEL_68:
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100002DFC();
  v127 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v127);
  sub_1000056F8();
  v63 = sub_100003F28();
  sub_1000BF738(v63, xmmword_1001E5F70);
  v160 = type metadata accessor for ContentManager();
  v158 = v156;

  v128 = AMSLogKey();
  if (v128)
  {
    v129 = v128;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_71:
  sub_100061E04();
  sub_10005ADC4();
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v158);
  LogInterpolation.init(stringLiteral:)();
  v130 = static os_log_type_t.debug.getter();
  sub_1000036B0(v130, v63);

LABEL_72:
  sub_100005F14();
}

uint64_t sub_1000BE260(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = *(type metadata accessor for ContentInfo(0) + 48);
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    if (v6 == *v8 && v7 == v8[1])
    {
      v10 = 0;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

void sub_1000BE300(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4._countAndFlagsBits = sub_1000BF6D4();
  String.append(_:)(v4);
  v5 = 0;
  v6 = *(a1 + 8);
  v7 = *(v6 + 16);
  v8 = v6 + 40;
  v9 = _swiftEmptyArrayStorage;
LABEL_2:
  v10 = (v8 + 16 * v5);
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v12 = *(v10 - 1);
    v11 = *v10;

    v13._countAndFlagsBits = sub_100003B80();
    if (String.hasPrefix(_:)(v13))
    {
      v33 = v8;
      v34 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000BF744(v9[2]);
      }

      v15 = v9[2];
      v14 = v9[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = sub_100005C40(v14);
        v20 = v19;
        sub_100027C2C(v18, v19, 1);
        v16 = v20;
        v9 = v34;
      }

      ++v5;
      v9[2] = v16;
      v17 = &v9[2 * v15];
      v17[4] = v12;
      v17[5] = v11;
      v8 = v33;
      goto LABEL_2;
    }

    v10 += 2;
    ++v5;
  }

  v21 = v9[2];
  if (v21)
  {
    sub_100027C2C(0, v21, 0);
    v22 = v9 + 5;
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      swift_bridgeObjectRetain_n();
      sub_100003B80();
      v25 = String.count.getter();
      sub_10018A408(v25, v23, v24);
      v26 = static String._fromSubstring(_:)();
      v28 = v27;

      v30 = _swiftEmptyArrayStorage[2];
      v29 = _swiftEmptyArrayStorage[3];
      if (v30 >= v29 >> 1)
      {
        v32 = sub_100005C40(v29);
        sub_100027C2C(v32, v30 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v30 + 1;
      v31 = &_swiftEmptyArrayStorage[2 * v30];
      v31[4] = v26;
      v31[5] = v28;
      v22 += 2;
      --v21;
    }

    while (v21);
  }
}

uint64_t sub_1000BE534(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  if (qword_1002686D8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E61C0;
  v16 = type metadata accessor for ContentManager();
  v14 = a2;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v14);
  LogInterpolation.init(stringLiteral:)();
  v16 = &type metadata for String;
  v14 = v6;
  v15 = v7;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v14, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v16 = &type metadata for String;
  v14 = a3;
  v15 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v14, &qword_10026D350, &qword_1001E6050);
  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11, v8);

  sub_1000BF3AC();
  swift_allocError();
  sub_1000B40E4();
}

void sub_1000BE7D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  if (qword_1002686D8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E61C0;
  v15 = type metadata accessor for ContentManager();
  v13 = a2;

  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v13);
  LogInterpolation.init(stringLiteral:)();
  v15 = &type metadata for String;
  v13 = v6;
  v14 = v7;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v13, &qword_10026D350, &qword_1001E6050);
  LogInterpolation.init(stringLiteral:)();
  v15 = &type metadata for String;
  v13 = a3;
  v14 = a4;

  static LogInterpolation.safe(_:)();
  sub_10000A00C(&v13, &qword_10026D350, &qword_1001E6050);
  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11, v8);

  sub_1000B40E4();
}

uint64_t sub_1000BEA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a2 && *v7 == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v9 = v5;
      goto LABEL_11;
    }

    ++v5;
    v7 += 2;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_1000BEB2C(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *(a1 + 16);
  v5 = a1 + 32;

  v6 = 0;
  v18 = a1 + 32;
  while (1)
  {
    if (v6 == v4)
    {

      v16 = 0;
      goto LABEL_15;
    }

    if (*(a2 + 16))
    {
      break;
    }

LABEL_13:
    ++v6;
  }

  v7 = (v5 + 16 * v6);
  v9 = *v7;
  v8 = v7[1];
  Hasher.init(_seed:)();

  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = ~(-1 << *(a2 + 32));
  do
  {
    v12 = v10 & v11;
    if (((*(a2 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {

      v5 = v18;
      goto LABEL_13;
    }

    v13 = (*(a2 + 48) + 16 * v12);
    if (*v13 == v9 && v13[1] == v8)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v10 = v12 + 1;
  }

  while ((v15 & 1) == 0);

  v16 = v6;
LABEL_15:

  return v16;
}

uint64_t sub_1000BECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void *sub_1000BECF4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
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

    sub_1000D54B8();
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
    sub_1000D54B8();
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
      sub_1000D54B8();
      v48 = v28;
    }

    v13 = v48[2];
    v12 = v13 + 1;
    if (v13 >= v48[3] >> 1)
    {
      sub_1000D54B8();
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

      sub_1000D54B8();
      v16 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BF090(uint64_t *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  result = sub_1000BEB2C(v6, a2);
  if (v2)
  {
LABEL_29:

    return v3;
  }

  if (v8)
  {
    v3 = *(v6 + 16);

    return v3;
  }

  v3 = result;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      v10 = *(v6 + 16);
      if (v9 == v10)
      {
        goto LABEL_29;
      }

      if (v9 >= v10)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        break;
      }

      v11 = v6 + 32;
      v12 = (v6 + 32 + 16 * v9);
      if (*(a2 + 16))
      {
        v35 = v6 + 32;
        v36 = v6;
        v14 = *v12;
        v13 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();
        v16 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v18 = (*(a2 + 48) + 16 * v17);
          if (*v18 != v14 || v18[1] != v13)
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v15 = v17 + 1;
            if ((v20 & 1) == 0)
            {
              continue;
            }
          }

          v6 = v36;
          goto LABEL_26;
        }

        v6 = v36;
        v11 = v35;
      }

      if (v3 != v9)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        v21 = *(v6 + 16);
        if (v3 >= v21)
        {
          goto LABEL_35;
        }

        if (v9 >= v21)
        {
          goto LABEL_36;
        }

        v22 = (v11 + 16 * v3);
        v24 = *v22;
        v23 = v22[1];
        v25 = v6;
        v27 = *v12;
        v26 = v12[1];

        v28 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001D1A2C();
          v28 = v34;
        }

        v29 = v28;
        v30 = v28 + 32;
        v31 = (v30 + 16 * v3);
        *v31 = v27;
        v31[1] = v26;
        v6 = v29;

        if (v9 >= *(v6 + 16))
        {
          goto LABEL_37;
        }

        v32 = (v30 + 16 * v9);
        *v32 = v24;
        v32[1] = v23;

        *a1 = v6;
      }

      v33 = __OFADD__(v3++, 1);
      if (v33)
      {
        goto LABEL_33;
      }

LABEL_26:
      v33 = __OFADD__(v9++, 1);
      if (v33)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BF330(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100005B9C();
}

unint64_t sub_1000BF3AC()
{
  result = qword_10026B510;
  if (!qword_10026B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B510);
  }

  return result;
}

uint64_t sub_1000BF470(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003EFC();
  v4(v3);
  sub_100002DDC();
  v5 = sub_100005B9C();
  v6(v5);
  return a2;
}

uint64_t sub_1000BF4C8()
{
  v1 = sub_100002DFC();
  v2(v1);
  sub_100002DDC();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1000BF51C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000050D4(a1, a2, a3, a4);
  sub_100002DDC();
  v5 = sub_100005B9C();
  v6(v5);
  return v4;
}

uint64_t sub_1000BF568(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000050D4(a1, a2, a3, a4);
  sub_100002DDC();
  v5 = sub_100005B9C();
  v6(v5);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for ContentManager.BatchDownloadingError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1000BF664()
{
  result = qword_10026B520;
  if (!qword_10026B520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026B520);
  }

  return result;
}

void sub_1000BF6E0()
{
  v1 = 0x203A707061202CLL;
  v2 = 0xE700000000000000;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t sub_1000BF704()
{
}

char *sub_1000BF744@<X0>(uint64_t a1@<X8>)
{

  return sub_100027C2C(0, a1 + 1, 1);
}

uint64_t sub_1000BF764()
{

  return static LogInterpolation.prefix(_:_:)();
}

unint64_t sub_1000BF7B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244A80, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000BF800(char a1)
{
  result = 1415071060;
  switch(a1)
  {
    case 1:
      result = 0x52454745544E49;
      break;
    case 2:
      result = 1112493122;
      break;
    case 3:
      result = 1279346002;
      break;
    case 4:
      result = 0x205952414D495250;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000BF8A8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF7B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000BF8D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BF800(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000BF904(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000BF944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BF990(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000BF9D0(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MercuryCacheUpdateTask.UpdateError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}