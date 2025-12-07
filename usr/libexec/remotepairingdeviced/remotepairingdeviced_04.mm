void sub_1000695E4()
{
  sub_10000D060();
  sub_100069F2C(v0, v1);
  type metadata accessor for XPCEventPublisher.Token();
  sub_10000CBBC();
  __chkstk_darwin(v2);
  sub_10000CBDC();
  sub_10006A080();
  sub_1000641D8();
  sub_10000CCA4();
  if (v4)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v5 = v3;
  sub_100013414(&qword_10009BE68, &qword_100078B70);
  if (sub_10006A150())
  {
    sub_10006A35C();
    sub_1000641D8();
    sub_10006A220();
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    sub_100069F48();
    sub_1000135A0();
  }

  else
  {
    v8 = sub_10006A06C();
    v9(v8);
    sub_10000D5CC();
    sub_10000D6A4();
    sub_100069D40(v10, v11, v12, v13, v14);
    sub_1000135A0();
  }
}

void sub_10006972C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006A3E4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_10006A1F4(v8, v6);
  sub_10004FEF0(v10, v11);
  sub_10000CCA4();
  if (v14)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v12;
  v16 = v13;
  sub_100013414(&qword_10009BE70, &qword_100078B78);
  v17 = sub_10006A0A8();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v17, v18))
  {
    sub_10004FEF0(v7, v5);
    sub_100069FCC();
    if (!v20)
    {
      goto LABEL_14;
    }

    v15 = v19;
  }

  v21 = *v3;
  if (v16)
  {
    *(v21[7] + 8 * v15) = v9;
    sub_10006A348();
  }

  else
  {
    sub_100069DEC(v15, v7, v5, v9, v21);
    sub_10006A348();
  }
}

void sub_10006983C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10000C518(a2);
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
  sub_100013414(&qword_10009BE28, &qword_100078B58);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_10000C518(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = a1;
  }

  else
  {

    sub_100069B44(v14, a2, a1, v18);
  }
}

_OWORD *sub_100069968(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_100069FF4(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  result = sub_10000E8A4(v11, (*(v7 + 56) + 32 * v6));
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

_OWORD *sub_1000699C4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000E8A4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_100069A40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_100069B00(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
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

unint64_t sub_100069B44(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

_OWORD *sub_100069B88(unint64_t a1, int a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  result = sub_10000E8A4(a3, (a4[7] + 32 * a1));
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

uint64_t sub_100069BF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100069FF4(a1, a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  type metadata accessor for UUID();
  sub_10000CC04();
  result = (*(v10 + 32))(v9 + *(v10 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t sub_100069C90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for XPCEventPublisher.Token();
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

uint64_t sub_100069D40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100069FF4(a1, a5 + 8 * (a1 >> 6));
  v11 = *(v10 + 48);
  v12(0);
  sub_10000CC04();
  result = (*(v13 + 32))(v11 + *(v13 + 72) * a1, a2);
  v15 = (*(a5 + 56) + 16 * a1);
  *v15 = a3;
  v15[1] = a4;
  v16 = *(a5 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v18;
  }

  return result;
}

unint64_t sub_100069DEC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100069EDC()
{
  sub_10000ECF4(v2, v3);
  sub_10000ECF4(v2, v3);
  sub_10000ECF4(v1, v0);

  return sub_10000ECF4(v1, v0);
}

uint64_t sub_100069F48()
{
  v4 = (*(v0 + 56) + 16 * v2);
  result = v4[1];
  v6 = *(v3 - 88);
  *v4 = v1;
  v4[1] = v6;
  return result;
}

BOOL sub_100069F94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

uint64_t sub_10006A03C()
{
}

uint64_t sub_10006A0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = 0;
  *v11 = a11;
  return result;
}

uint64_t sub_10006A0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_10006A0EC(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void sub_10006A110(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_10006A130(uint64_t a3, ...)
{

  return swift_dynamicCast();
}

BOOL sub_10006A150()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_10006A170()
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

void sub_10006A190(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

unint64_t sub_10006A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10004FEF0(a2, a3);
}

uint64_t sub_10006A230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000223E8(v4, a2, 1, a4);

  return String.init<A>(describing:)();
}

uint64_t sub_10006A2C8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_10006A2E0(void *a1)
{
  *(v1 - 112) = a1;

  return [a1 publicKey];
}

uint64_t sub_10006A2FC()
{
  *v0 = *(*(v1 + 48) + 8 * v2);
}

double sub_10006A374()
{

  return result;
}

uint64_t sub_10006A394()
{
}

uint64_t sub_10006A3CC()
{
}

uint64_t sub_10006A420(uint64_t a1)
{
  v2 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  sub_10005775C(a1, &v11 - v3);
  v5 = type metadata accessor for Date();
  v6 = sub_100022484(v4, 1, v5);
  if (v6 == 1)
  {
    sub_100030708(v4, &unk_10009A8C0, &unk_100077D50);
    v7 = 0;
  }

  else
  {
    Date.timeIntervalSince1970.getter();
    v9 = v8;
    (*(*(v5 - 8) + 8))(v4, v5);
    v7 = v9;
  }

  sub_10006AA24(v7, v6 == 1);
  return sub_100030708(a1, &unk_10009A8C0, &unk_100077D50);
}

uint64_t sub_10006A564@<X0>(uint64_t a1@<X8>)
{
  sub_10006A744();
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    Date.init(timeIntervalSince1970:)();
    v3 = 0;
  }

  v4 = type metadata accessor for Date();

  return sub_1000223E8(a1, v3, 1, v4);
}

double sub_10006A5CC()
{
  v0 = 2592000.0;
  if (os_variant_allows_internal_security_policies())
  {
    v1 = static Defaults.pairingRecordExpiryInterval.getter();
    if ((v2 & 1) == 0)
    {
      v3 = v1;
      v0 = *&v1;
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(qword_10009CED0, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = v3;
        sub_10000D334(&_mh_execute_header, v6, v7, "Using custom pairing record expiry interval based on default: %f");
      }
    }
  }

  return v0;
}

double sub_10006A688()
{
  v0 = 86400.0;
  if (os_variant_allows_internal_security_policies())
  {
    UsedUpdate = static Defaults.pairingRecordLastUsedUpdateInterval.getter();
    if ((v2 & 1) == 0)
    {
      v3 = UsedUpdate;
      v0 = *&UsedUpdate;
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(qword_10009CED0, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = v3;
        sub_10000D334(&_mh_execute_header, v6, v7, "Using custom pairing record last used update interval based on default: %f");
      }
    }
  }

  return v0;
}

uint64_t sub_10006A744()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  v12 = sub_10003DD44(v1);
  if (!v12)
  {
    v22 = 0u;
    v23 = 0u;
    goto LABEL_6;
  }

  v13 = v12;
  v20[1] = 0xD000000000000016;
  v20[2] = 0x8000000100081930;
  AnyHashable.init<A>(_:)();
  sub_10004C5C0(v13, &v22);

  sub_10002269C(v21);
  if (!*(&v23 + 1))
  {
LABEL_6:
    sub_100030708(&v22, &qword_100099A00, &qword_100077540);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    return v21[0];
  }

LABEL_7:
  v15 = [v1 dateModified];
  if (v15)
  {
    v16 = v15;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  sub_1000223E8(v9, v17, 1, v2);
  sub_10006ABEC(v9, v11);
  if (sub_100022484(v11, 1, v2))
  {
    sub_100030708(v11, &unk_10009A8C0, &unk_100077D50);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_100030708(v11, &unk_10009A8C0, &unk_100077D50);
    Date.timeIntervalSince1970.getter();
    v19 = v18;
    (*(v3 + 8))(v5, v2);
    return v19;
  }
}

void sub_10006AA24(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_10003DD44(v2);
  if (!v6)
  {
    v6 = Dictionary.init(dictionaryLiteral:)();
  }

  v7 = v6;
  *&v14 = 0xD000000000000016;
  *(&v14 + 1) = 0x8000000100081930;
  AnyHashable.init<A>(_:)();
  if (a2)
  {
    v8 = sub_100063FD8();
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v13[0] = v7;
      v12 = v7[3];
      sub_100013414(&qword_10009BE88, &unk_100078B90);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
      sub_10002269C(v7[6] + 40 * v10);
      sub_10000E8A4((v7[7] + 32 * v10), &v14);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    sub_10002269C(v16);
    sub_100030708(&v14, &qword_100099A00, &qword_100077540);
  }

  else
  {
    *(&v15 + 1) = &type metadata for Double;
    *&v14 = a1;
    sub_10000E8A4(&v14, v13);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100068C84(v13, v16);
    sub_10002269C(v16);
  }

  sub_10006AC5C(v7, v3);
}

uint64_t sub_10006ABEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100013414(&unk_10009A8C0, &unk_100077D50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10006AC5C(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setInfo:isa];
}

uint64_t sub_10006ACDC()
{
  if (qword_100098EC0 != -1)
  {
    swift_once();
  }

  [qword_10009BF58 lock];
  v0 = byte_10009BF50;
  if (byte_10009BF50 == 2)
  {
    dlopen("/usr/lib/liblockdown.dylib", 2);
    sub_100013414(&qword_10009BF60, qword_100078BF0);
    v0 = Optional.isNil.getter() ^ 1;
    byte_10009BF50 = v0 & 1;
    if ((v0 & 1) == 0)
    {
      v1 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, qword_10009CED0, "liblockdown.dylib is not present. remotepairingdeviced will not call into liblockdown API.", 90, 2, _swiftEmptyArrayStorage);
    }
  }

  [qword_10009BF58 unlock];
  return v0 & 1;
}

id sub_10006ADE0()
{
  result = [objc_allocWithZone(NSLock) init];
  qword_10009BF58 = result;
  return result;
}

uint64_t sub_10006AE14(uint64_t a1, uint64_t a2)
{
  v11[3] = &type metadata for Data;
  v11[4] = &protocol witness table for Data;
  v11[0] = a1;
  v11[1] = a2;
  v2 = sub_10001355C(v11, &type metadata for Data);
  v3 = *v2;
  v4 = v2[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v7 = v3 >> 32;
      if (v3 >> 32 < v3)
      {
        __break(1u);
      }

      v6 = v3;
      goto LABEL_8;
    case 2uLL:
      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
LABEL_8:
      sub_1000728B0(v6, v7, &v10);
      goto LABEL_9;
    case 3uLL:
      memset(v9, 0, 14);
      v5 = v9;
      goto LABEL_5;
    default:
      v9[0] = *v2;
      LOWORD(v9[1]) = v4;
      BYTE2(v9[1]) = BYTE2(v4);
      BYTE3(v9[1]) = BYTE3(v4);
      BYTE4(v9[1]) = BYTE4(v4);
      BYTE5(v9[1]) = BYTE5(v4);
      v5 = v9 + BYTE6(v4);
LABEL_5:
      sub_10007270C(v9, v5, &v10);
LABEL_9:
      sub_10000CADC(v11);
      return sub_10000D4B0();
  }
}

uint64_t sub_10006AF94(uint64_t a1)
{
  v7 = sub_100013414(&qword_10009C0F0, &qword_100078DB0);
  v8 = sub_100035F9C(&qword_10009C0F8, &qword_10009C0F0, &qword_100078DB0, &protocol conformance descriptor for <A> [A]);
  v6[0] = a1;
  v2 = sub_10001355C(v6, v7);
  sub_10007270C(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_10000CADC(v6);
  return v3;
}

uint64_t sub_10006B064(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v4 = v5;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_9:
      result = sub_100072944(result, v4);
      break;
    case 3uLL:
      result = 0;
      v2 = 0;
      goto LABEL_5;
    default:
      v2 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100072784(result, v2);
      break;
  }

  return result;
}

uint64_t sub_10006B0F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v4 = v6;
      goto LABEL_6;
    case 2uLL:
      v3 = *(a1 + 24);
      a1 = *(a1 + 16);
      v4 = v3;
LABEL_6:
      result = sub_100072A68(a1, v4);
      break;
    default:
      result = Data._Representation.append(contentsOf:)();
      break;
  }

  return result;
}

uint64_t sub_10006B244()
{
  sub_100013414(&qword_100099A10, &unk_100077560);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

double sub_10006B2C0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  swift_beginAccess();
  v4 = *(v3 + 120);
  *a2 = *(v3 + 112);
  a2[1] = v4;

  return result;
}

uint64_t sub_10006B324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  swift_beginAccess();
  sub_100072690(a1 + v4, v17);
  v5 = v19;
  if (!v19)
  {
    sub_1000726C8(v17);
LABEL_7:
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_8;
  }

  v6 = sub_10001355C(v18, v19);
  v7 = *(v5 - 8);
  __chkstk_darwin(v6);
  sub_10000CBDC();
  v10 = v9 - v8;
  (*(v7 + 16))(v9 - v8);
  sub_1000726C8(v17);
  dispatch thunk of AnyTunnelEndpoint.localTunnelInterface.getter();
  (*(v7 + 8))(v10, v5);
  if (!v21)
  {
    sub_100022560(v20, &qword_10009C138, &qword_100078DF8);
    goto LABEL_7;
  }

  sub_10001355C(v20, v21);
  dispatch thunk of TunnelInterface.address.getter();
  sub_10000CADC(v20);
  if (!*(&v23 + 1))
  {
LABEL_8:
    sub_100022560(&v22, &qword_10009C130, &qword_100078DF0);
    type metadata accessor for IPv6Address();
    sub_1000731F4();
    return sub_1000223E8(v12, v13, v14, v15);
  }

  sub_100010E18(&v22, v25);
  sub_100013414(&qword_10009C100, &qword_100078DB8);
  v11 = type metadata accessor for IPv6Address();
  swift_dynamicCast();
  v12 = a2;
  v13 = 0;
  v14 = 1;
  v15 = v11;
  return sub_1000223E8(v12, v13, v14, v15);
}

void sub_10006B578()
{
  sub_10000D060();
  v1 = v0;
  v42 = v2;
  v44 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v45 = v14;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_10000CC04();
  __chkstk_darwin(v15);
  sub_10000CCB8();
  sub_10002F608();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000CBBC();
  v38 = v17;
  v39 = v16;
  __chkstk_darwin(v16);
  sub_10000CCB8();
  v40 = v18;
  sub_10002F608();
  v19 = type metadata accessor for DispatchQoS();
  v20 = sub_10000D368(v19);
  __chkstk_darwin(v20);
  sub_10000CCB8();
  v21 = (v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state);
  bzero((v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state), 0xA0uLL);
  if (v9)
  {
    sub_10000CCD8();
    v22 = swift_allocObject();
    v22[2] = v11;
    v22[3] = v9;
    v22[4] = v7;
    sub_100073288(v22, v46);
    v24 = v21[16];
    v23 = v21[17];
    v21[16] = sub_1000730A0;
    v21[17] = v22;
    sub_100010E30(v9, v7);
    v25 = v11;
    sub_10000FAC8(v24, v23);
  }

  v41 = v9;
  sub_10000CCD8();
  v26 = swift_allocObject();
  v26[2] = v11;
  v26[3] = v5;
  v26[4] = v44;
  sub_100073288(v26, &v47);
  v27 = v21[18];
  v28 = v21[19];
  v21[18] = sub_10007304C;
  v21[19] = v26;
  v29 = v11;

  sub_10000FAC8(v27, v28);
  *(v1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_initiator) = v13;
  v30 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_identifier;
  v31 = type metadata accessor for UUID();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v1 + v30, v45, v31);
  v33 = v42;
  if (v42)
  {
    v34 = v13;

    sub_10000FAC8(v41, v7);
  }

  else
  {
    sub_100035DCC();
    v43 = v13;
    static DispatchQoS.userInteractive.getter();
    (*(v38 + 104))(v40, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v39);
    v46[3] = _swiftEmptyArrayStorage;
    sub_100073058(&qword_100099DB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_100013414(&qword_10009A960, &unk_100077B40);
    sub_10000EEE4();
    sub_100035F9C(v35, v36, &unk_100077B40, v37);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v33 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

    sub_10000FAC8(v41, v7);
  }

  (*(v32 + 8))(v45, v31);
  *(v1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue) = v33;
  sub_1000135A0();
}

uint64_t sub_10006B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v24 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v21 = *(v9 - 8);
  v22 = v9;
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v20 - v14;
  sub_10003DE84(a1, &v20 - v14, &qword_10009A908, &qword_100078DC0);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  *(v17 + 24) = a4;
  sub_10003DED0(v15, v17 + v16, &qword_10009A908, &qword_100078DC0);
  aBlock[4] = sub_10003DF1C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_100091D70;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100073058(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v8, v6);
  (*(v21 + 8))(v11, v22);
}

uint64_t sub_10006BD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  aBlock[4] = sub_10001AA18;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100050100;
  aBlock[3] = &unk_100091DC0;
  v15 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_100073058(&unk_10009A8E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_100035F9C(&qword_10009A8F0, &unk_100099840, &unk_100077350, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v18);
}

void sub_10006BFF4()
{
  sub_10000D060();
  v44 = v2;
  v42 = v3;
  v43 = v4;
  v6 = v5;
  v41 = v7;
  v9 = v8;
  v11 = v10;
  v48 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v50 = v12;
  __chkstk_darwin(v13);
  sub_10000CCB8();
  v46 = v14;
  sub_10002F608();
  v49 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v47 = v15;
  __chkstk_darwin(v16);
  sub_10000CBDC();
  sub_10001ADE0();
  v17 = sub_100013414(&qword_10009C128, &unk_100078DE0);
  v18 = sub_10000CD78(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  v24 = &v41 - v23;
  v45 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  sub_10003DE84(v6, &v41 - v23, &qword_10009C128, &unk_100078DE0);
  v25 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v26 = v25 + v22;
  v27 = swift_allocObject();
  *(v27 + 16) = v0;
  *(v27 + 24) = v11;
  *(v27 + 32) = v9;
  v28 = v9;
  v29 = v41;
  *(v27 + 40) = v41;
  sub_10003DED0(v24, v27 + v25, &qword_10009C128, &unk_100078DE0);
  v30 = (v27 + v26);
  v31 = v43;
  *v30 = v42;
  v30[1] = v31;
  *(v27 + ((v26 + 9) & 0xFFFFFFFFFFFFFFF8)) = v44;
  v52[4] = sub_100072F90;
  v52[5] = v27;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v52[2] = v32;
  v52[3] = &unk_100091CD0;
  v33 = _Block_copy(v52);

  sub_10000E228(v28, v29);

  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_1000730E0();
  sub_100073058(v34, v35, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_10000EEE4();
  sub_100035F9C(v36, v37, &unk_100077350, v38);
  v39 = v46;
  v40 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v50 + 8))(v39, v40);
  (*(v47 + 8))(v1, v49);

  sub_1000135A0();
}

uint64_t sub_10006C368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ZeroConnectionCancellationPolicy();
  sub_10000CBBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000CBDC();
  sub_10001ADE0();
  *v3 = 0x4024000000000000;
  (*(v6 + 104))(v3, enum case for ZeroConnectionCancellationPolicy.deferred(_:), v4);
  sub_10006F424();
  return (*(v6 + 8))(v3, v4);
}

void sub_10006C460()
{
  sub_10000D060();
  v1 = v0;
  v3 = v2;
  v4 = sub_100013414(&qword_10009B730, &unk_100078A80);
  sub_10000CBBC();
  v6 = v5;
  sub_10000D8B0();
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = v3 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  swift_beginAccess();
  sub_10003DE84(v10 + 40, &v23, &qword_10009C0A8, &unk_100078D70);
  if (v24)
  {
    sub_100010E18(&v23, v25);
    sub_10001355C(v25, v26);
    dispatch thunk of AnyTunnelEndpoint.serverInjectAdditionalConnection(_:preReadMessages:)();
LABEL_5:
    sub_10000CADC(v25);
    goto LABEL_6;
  }

  sub_100022560(&v23, &qword_10009C0A8, &unk_100078D70);
  v11 = static os_log_type_t.error.getter();
  v12 = qword_10009CED0;
  sub_100022260(v1, v25);
  if (!os_log_type_enabled(v12, v11))
  {
    goto LABEL_5;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *&v23 = v14;
  *v13 = 136446466;
  v15 = UUID.uuidString.getter();
  v17 = sub_10000C600(v15, v16, &v23);

  *(v13 + 4) = v17;
  *(v13 + 12) = 2082;
  sub_10001355C(v25, v26);
  dispatch thunk of TunnelConnection.identifier.getter();
  v18 = Identifier.description.getter();
  v20 = v19;
  (*(v6 + 8))(v9, v4);
  sub_10000CADC(v25);
  v21 = sub_10000C600(v18, v20, &v23);

  *(v13 + 14) = v21;
  _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s: Unable to inject additional out of band connection %{public}s as we do not have an active endpoint", v13, 0x16u);
  swift_arrayDestroy();
  sub_10000D8D4(v14);
  sub_10000D8D4(v13);
LABEL_6:
  sub_1000135A0();
}

void sub_10006C704()
{
  sub_10000D060();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  v19 = type metadata accessor for DispatchQoS();
  sub_10000CBBC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_10000CBDC();
  sub_10001ADE0();
  v20[4] = sub_100072F88;
  v21 = v0;
  sub_10001ACF4();
  sub_10001ACDC(COERCE_DOUBLE(1107296256));
  v20[2] = v12;
  v20[3] = &unk_100091C80;
  v13 = _Block_copy(v20);

  static DispatchQoS.unspecified.getter();
  sub_1000730E0();
  sub_100073058(v14, v15, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100013414(&unk_100099840, &unk_100077350);
  sub_10000EEE4();
  sub_100035F9C(v16, v17, &unk_100077350, v18);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v1, v19);

  sub_1000135A0();
}

void sub_10006C960()
{
  sub_10000D060();
  v173 = v1;
  v189 = v2;
  v190 = v3;
  v5 = v4;
  v188 = v6;
  v187 = *v0;
  v182 = type metadata accessor for DispatchTimeInterval();
  sub_10000CBBC();
  v181 = v7;
  __chkstk_darwin(v8);
  sub_10000CCB8();
  sub_10000D9D8(v9);
  v184 = type metadata accessor for DispatchTime();
  sub_10000CBBC();
  v183 = v10;
  __chkstk_darwin(v11);
  sub_10000D2F8();
  sub_10000D984();
  __chkstk_darwin(v12);
  sub_100061F58();
  sub_10000D9D8(v13);
  v177 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000CC04();
  __chkstk_darwin(v14);
  sub_10000CCB8();
  sub_10000D9D8(v15);
  v186 = type metadata accessor for RemotePairingError();
  sub_10000CBBC();
  v174 = v16;
  __chkstk_darwin(v17);
  sub_10000D2F8();
  sub_10000D984();
  __chkstk_darwin(v18);
  sub_100061F58();
  sub_100073140(v19);
  v191 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  sub_10000CC04();
  sub_10000D8B0();
  __chkstk_darwin(v20);
  sub_10000D9D8(&v169 - v21);
  v22 = type metadata accessor for BonjourService();
  sub_10000CBBC();
  __chkstk_darwin(v23);
  sub_10000CBDC();
  type metadata accessor for NetworkParamsType();
  sub_10000CBBC();
  v193 = v25;
  v194 = v24;
  __chkstk_darwin(v24);
  sub_10000CCB8();
  v198 = v26;
  sub_10002F608();
  type metadata accessor for CertificateUtilities.RawTLSPublicKeyInfo();
  sub_10000CBBC();
  v195 = v28;
  v196 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  sub_100073140(&v169 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __chkstk_darwin(v31);
  v34 = &v169 - v33;
  __chkstk_darwin(v32);
  sub_100061F58();
  v197 = v35;
  v200 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v36 = v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  sub_100073288(v37, &v208);
  v199 = v36;
  sub_10003DE84(v36, &v201, &qword_10009C0A0, &qword_100078D68);
  v38 = v204;
  sub_100022560(&v201, &qword_10009C0A0, &qword_100078D68);
  if (!v38)
  {
    static CertificateUtilities.createTLSRawPublicKey(with:)();
    v39 = *(v195 + 32);
    v172 = v195 + 32;
    v171 = v39;
    v39(v197, v34, v196);
    v40 = v190;
    v41 = Data.count.getter();
    v42 = v41;
    if (v41 == 32)
    {
      v57 = v198;
      *v198 = v5;
      v57[1] = v40;
      (*(v193 + 104))();
      v58 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_identifier;
      v59 = sub_10000D4B0();
      sub_10000E228(v59, v60);
      v190 = v58;
      UUID.uuidString.getter();
      v61 = sub_1000732A4();
      v62(v61);
      BonjourService.rawValue.getter();
      v63 = sub_10007320C();
      v64(v63);
      sub_100073200();
      v65 = String.utf8CString.getter();

      v66 = String.utf8CString.getter();

      bonjour_service = nw_advertise_descriptor_create_bonjour_service((v65 + 32), (v66 + 32), 0);

      if (!bonjour_service)
      {
        v125 = static os_log_type_t.error.getter();
        v126 = os_log_type_enabled(qword_10009CED0, v125);
        v127 = v199;
        if (v126)
        {
          sub_10000D030();
          v128 = sub_100073248();
          v201 = v128;
          *v22 = 136446210;
          v129 = UUID.uuidString.getter();
          v131 = sub_10000C600(v129, v130, &v201);

          *(v22 + 4) = v131;
          sub_10000D624(&_mh_execute_header, v132, v125, "%{public}s: Unable to create network listener service for Tunnel connection");
          sub_10000CADC(v128);
          sub_10000EB64();
          sub_10000D8D4(v22);
        }

        v133 = *(v127 + 128);
        if (v133)
        {
          sub_100073110();
          v135 = sub_100073058(v134, v22, &protocol conformance descriptor for RemotePairingError);

          v136 = v185;
          sub_100073224();
          v137 = sub_10000D5D8(&qword_100099850);
          sub_1000732E4(v137);
          sub_100073264(v136, v138, 0x8000000100081AA0);
          sub_100073160();
          v133(v135);
          v139 = sub_100073200();
          sub_10000FAC8(v139, v140);
          sub_100022560(v135, &qword_10009A908, &qword_100078DC0);
          v141 = *(v127 + 128);
        }

        else
        {
          v141 = 0;
        }

        v166 = *(v127 + 136);
        *(v127 + 128) = 0;
        *(v127 + 136) = 0;
        sub_10000FAC8(v141, v166);
        OS_dispatch_queue.assertOnQueueHierarchy()();
        goto LABEL_29;
      }
    }

    else
    {
      v170 = v41;
      v43 = sub_10000D4B0();
      sub_10000E228(v43, v44);
      v45 = CertificateUtilities.RawTLSPublicKeyInfo.publicKeyDERData.getter();
      v47 = v46;
      v48 = CertificateUtilities.RawTLSPublicKeyInfo.identity.getter();
      v49 = v198;
      *v198 = v5;
      v49[1] = v40;
      v49[2] = v45;
      v49[3] = v47;
      v49[4] = v48;
      (*(v193 + 104))(v49, enum case for NetworkParamsType.quic(_:), v194);
      UUID.uuidString.getter();
      v50 = sub_1000732A4();
      v51(v50);
      BonjourService.rawValue.getter();
      v52 = sub_10007320C();
      v53(v52);
      sub_100073200();
      v54 = String.utf8CString.getter();

      v55 = String.utf8CString.getter();

      bonjour_service = nw_advertise_descriptor_create_bonjour_service((v54 + 32), (v55 + 32), 0);

      if (!bonjour_service)
      {
        v108 = static os_log_type_t.error.getter();
        v109 = os_log_type_enabled(qword_10009CED0, v108);
        v110 = v199;
        if (v109)
        {
          sub_10000D030();
          v111 = sub_100073248();
          v201 = v111;
          *v22 = 136446210;
          v112 = UUID.uuidString.getter();
          v114 = sub_10000C600(v112, v113, &v201);

          *(v22 + 4) = v114;
          sub_10000D624(&_mh_execute_header, v115, v108, "%{public}s: Unable to create network listener service for Tunnel connection");
          sub_10000CADC(v111);
          sub_10000EB64();
          sub_10000D8D4(v22);
        }

        v116 = *(v110 + 128);
        if (v116)
        {
          sub_100073110();
          v118 = sub_100073058(v117, v22, &protocol conformance descriptor for RemotePairingError);

          v119 = v185;
          sub_100073224();
          v120 = sub_10000D5D8(&qword_100099850);
          sub_1000732E4(v120);
          sub_100073264(v119, v121, 0x8000000100081AA0);
          sub_100073160();
          v116(v118);
          v122 = sub_100073200();
          sub_10000FAC8(v122, v123);
          sub_100022560(v118, &qword_10009A908, &qword_100078DC0);
          v124 = *(v110 + 128);
        }

        else
        {
          v124 = 0;
        }

        v162 = v197;
        v163 = *(v110 + 136);
        *(v110 + 128) = 0;
        *(v110 + 136) = 0;
        sub_10000FAC8(v124, v163);
        OS_dispatch_queue.assertOnQueueHierarchy()();
        v164 = sub_1000731E4();
        v165(v164);
        (*(v195 + 8))(v162, v196);
        goto LABEL_30;
      }

      v42 = v170;
    }

    v67 = v189 & 1;
    sub_10006DC70(v198, v188 & 1, v189 & 1);
    v68 = NWParameters.nw.getter();

    v69 = nw_listener_create(v68);
    swift_unknownObjectRelease();
    if (v69)
    {
      v70 = type metadata accessor for NWObjcListener();
      swift_allocObject();
      v71 = sub_1000401A8(v69, v42 != 32);
      v204 = v70;
      v205 = &off_100090338;
      v201 = v71;
      v72 = v199;
      swift_beginAccess();
      swift_unknownObjectRetain();

      sub_100072F3C(&v201, v72, &qword_10009C0A0, &qword_100078D68);
      swift_endAccess();
      v73 = v200;
      OS_dispatch_queue.assertOnQueueHierarchy()();
      v74 = v71[4];
      v192 = bonjour_service;
      nw_listener_set_advertise_descriptor(v74, bonjour_service);
      sub_10000CBD0();
      v75 = swift_allocObject();
      swift_weakInit();
      v76 = swift_allocObject();
      *(v76 + 16) = v75;
      *(v76 + 24) = v67;

      sub_1000401BC(v73, sub_100072C04, v76);

      v77 = v197;

      sub_10000CBD0();
      v78 = swift_allocObject();
      swift_weakInit();
      v79 = v196;
      v80 = v195 + 16;
      v81 = v176;
      (*(v195 + 16))(v176, v77, v196);
      v82 = (*(v80 + 64) + 24) & ~*(v80 + 64);
      v83 = swift_allocObject();
      *(v83 + 16) = v78;
      v171(v83 + v82, v81, v79);

      sub_10004030C(v73, sub_100072C14, v83);

      v84 = static os_log_type_t.default.getter();
      v85 = powerLog.getter();
      if (os_log_type_enabled(v85, v84))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v207[0] = v87;
        *v86 = 136446466;
        v88 = UUID.uuidString.getter();
        v90 = sub_10000C600(v88, v89, v207);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2082;
        if (v173)
        {
          type metadata accessor for PeerConnectionInfo();
          v91 = Array.description.getter();
        }

        else
        {
          v91 = 0;
          v92 = 0;
        }

        v201 = v91;
        v202 = v92;
        sub_100013414(&qword_100099A10, &unk_100077560);
        v143 = String.init<A>(describing:)();
        v145 = sub_10000C600(v143, v144, v207);

        *(v86 + 14) = v145;
        _os_log_impl(&_mh_execute_header, v85, v84, "%{public}s: Starting a tunnel listener due to a request from :%{public}s", v86, 0x16u);
        swift_arrayDestroy();
        sub_10000D8D4(v87);
        sub_10000EB64();
      }

      sub_10000CBD0();
      v146 = swift_allocObject();
      swift_weakInit();
      v205 = sub_100072C84;
      v206 = v146;
      v201 = _NSConcreteStackBlock;
      v202 = 1107296256;
      v203 = sub_100050100;
      v204 = &unk_100091BE0;
      _Block_copy(&v201);
      v207[0] = _swiftEmptyArrayStorage;
      sub_1000730E0();
      sub_100073058(v147, v148, &protocol conformance descriptor for DispatchWorkItemFlags);

      sub_100013414(&unk_100099840, &unk_100077350);
      sub_10000EEE4();
      sub_100035F9C(v149, v150, &unk_100077350, v151);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v152 = DispatchWorkItem.init(flags:block:)();

      *(v199 + 96) = v152;

      OS_dispatch_queue.assertOnQueueHierarchy()();
      v153 = v178;
      static DispatchTime.now()();
      v154 = v179;
      *v179 = 15;
      v155 = v181;
      v156 = v182;
      (*(v181 + 104))(v154, enum case for DispatchTimeInterval.seconds(_:), v182);
      v157 = v180;
      + infix(_:_:)();
      (*(v155 + 8))(v154, v156);
      v158 = *(v183 + 8);
      v159 = v184;
      v158(v153, v184);
      OS_dispatch_queue.asyncAfter(deadline:execute:)();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      v158(v157, v159);
      v160 = sub_1000731E4();
      v161(v160);
      (*(v195 + 8))(v77, v196);
      goto LABEL_30;
    }

    sub_1000730F8();
    sub_100073058(v93, v94, &protocol conformance descriptor for RemotePairingError);
    v95 = v186;
    static Error<>.networkingError.getter();
    v96 = v175;
    Error<>.init(_:_:)();
    v97 = v199;
    v99 = (v199 + 128);
    v98 = *(v199 + 128);
    if (v98)
    {
      sub_1000730F8();
      sub_100073058(v100, v101, &protocol conformance descriptor for RemotePairingError);
      swift_allocError();
      v102 = v174;
      (*(v174 + 16))(v103, v96, v95);
      sub_10000D40C();

      v98(v96);
      v104 = sub_10000D4B0();
      sub_10000FAC8(v104, v105);
      v106 = v96;
      v96 = v175;
      sub_100022560(v106, &qword_10009A908, &qword_100078DC0);
      v107 = *(v97 + 128);
    }

    else
    {
      v107 = 0;
      v102 = v174;
    }

    v142 = *(v97 + 136);
    *v99 = 0;
    v99[1] = 0;
    sub_10000FAC8(v107, v142);
    OS_dispatch_queue.assertOnQueueHierarchy()();
    swift_unknownObjectRelease();
    (*(v102 + 8))(v96, v95);
LABEL_29:
    v167 = sub_1000731E4();
    v168(v167);
    (*(v195 + 8))(v197, v196);
LABEL_30:
    sub_1000135A0();
    return;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10006DC70(uint64_t a1, int a2, int a3)
{
  v52 = a2;
  v53 = a3;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NetworkParamsType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 != enum case for NetworkParamsType.quic(_:))
  {
    if (v12 == enum case for NetworkParamsType.tcp(_:))
    {
      (*(v9 + 96))(v11, v8);
      v26 = *v11;
      v27 = v11[1];
      v28 = static os_log_type_t.default.getter();
      v51 = qword_10009CED0;
      os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10009CED0, "Creating a tunnel connection based on TCP", 41, 2, _swiftEmptyArrayStorage);
      v29 = sub_10006B064(v26, v27);
      static String.Encoding.utf8.getter();
      v30 = String.data(using:allowLossyConversion:)();
      v32 = v31;
      (*(v5 + 8))(v7, v4);
      if (v32 >> 60 != 15)
      {
        v33 = sub_10006B064(v30, v32);
        sub_10000ECF4(v30, v32);
        type metadata accessor for NWProtocolTLS.Options();
        swift_allocObject();
        NWProtocolTLS.Options.init()();
        v34 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
        sec_protocol_options_add_pre_shared_key(v34, v29, v33);
        swift_unknownObjectRelease();
        v35 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
        sec_protocol_options_set_min_tls_protocol_version(v35, tls_protocol_version_TLSv12);
        swift_unknownObjectRelease();
        type metadata accessor for NWProtocolTCP.Options();
        swift_allocObject();
        NWProtocolTCP.Options.init()();
        dispatch thunk of NWProtocolTCP.Options.connectionTimeout.setter();
        dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
        dispatch thunk of NWProtocolTCP.Options.keepaliveCount.setter();
        dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
        dispatch thunk of NWProtocolTCP.Options.keepaliveInterval.setter();
        type metadata accessor for NWParameters();
        v25 = NWParameters.__allocating_init(tls:tcp:)();

        sub_10000DF50(v26, v27);
        goto LABEL_6;
      }

      __break(1u);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v9 + 96))(v11, v8);
  v13 = *v11;
  v14 = v11[1];
  v15 = v11[2];
  v16 = v11[3];
  v50 = v11[4];
  v17 = v50;
  v18 = static os_log_type_t.default.getter();
  v51 = qword_10009CED0;
  os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, qword_10009CED0, "Creating a tunnel connection based on QUIC", 42, 2, _swiftEmptyArrayStorage);
  type metadata accessor for NWProtocolQUIC.Options();
  NWProtocolQUIC.Options.__allocating_init(alpn:)();
  dispatch thunk of NWProtocolQUIC.Options.maxDatagramFrameSize.setter();
  dispatch thunk of NWProtocolQUIC.Options.initialPacketSize.setter();
  dispatch thunk of NWProtocolQUIC.Options.initialMaxStreamsUnidirectional.setter();
  dispatch thunk of NWProtocolQUIC.Options.initialMaxStreamsBidirectional.setter();
  v19 = dispatch thunk of NWProtocolQUIC.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_local_identity(v19, v17);
  swift_unknownObjectRelease();
  dispatch thunk of NWProtocolQUIC.Options.securityProtocolOptions.getter();
  sub_100013414(&qword_10009C120, &qword_100078DD8);
  v20 = swift_allocObject();
  v49 = xmmword_100077360;
  *(v20 + 16) = xmmword_100077360;
  *(v20 + 32) = v15;
  *(v20 + 40) = v16;
  sub_10000E228(v15, v16);
  isa = Array._bridgeToObjectiveC()().super.isa;

  sec_protocol_options_set_server_raw_public_key_certificates();
  swift_unknownObjectRelease();

  dispatch thunk of NWProtocolQUIC.Options.securityProtocolOptions.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v49;
  *(v22 + 32) = v13;
  *(v22 + 40) = v14;
  sub_10000E228(v13, v14);
  v23 = Array._bridgeToObjectiveC()().super.isa;

  sec_protocol_options_set_client_raw_public_key_certificates();
  swift_unknownObjectRelease();

  v24 = dispatch thunk of NWProtocolQUIC.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_peer_authentication_required(v24, 1);
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();
  v25 = NWParameters.__allocating_init(quic:)();
  sub_10000DF50(v15, v16);
  sub_10000DF50(v13, v14);
  swift_unknownObjectRelease();
LABEL_6:
  if (v52)
  {
    v36 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, v51, "Creating peer-to-peer tunnel listener", 37, 2, _swiftEmptyArrayStorage);
    v37 = NWParameters.nw.getter();
    nw_parameters_set_include_peer_to_peer(v37, 1);
    swift_unknownObjectRelease();
  }

  sub_100013414(&qword_10009C118, &qword_100078DD0);
  v38 = type metadata accessor for NWInterface.InterfaceType();
  v39 = *(v38 - 8);
  v40 = *(v39 + 72);
  v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100077360;
  v43 = enum case for NWInterface.InterfaceType.cellular(_:);
  v44 = *(v39 + 104);
  v44(v42 + v41, enum case for NWInterface.InterfaceType.cellular(_:), v38);
  NWParameters.prohibitedInterfaceTypes.setter();
  NWParameters.nw.getter();
  nw_parameters_set_no_wake_from_sleep();
  swift_unknownObjectRelease();
  if (v53)
  {
    v45 = NWParameters.nw.getter();
    nw_parameters_set_local_only(v45, 1);
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100077390;
    v47 = v46 + v41;
    v44(v46 + v41, v43, v38);
    v44(v47 + v40, enum case for NWInterface.InterfaceType.loopback(_:), v38);
    NWParameters.prohibitedInterfaceTypes.setter();
  }

  return v25;
}

uint64_t sub_10006E380(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (a2)
    {
      type metadata accessor for NWQUICTunnelConnection(0);
      swift_allocObject();
      v8 = swift_unknownObjectRetain();
      v9 = sub_100051658(v8, a4 & 1, 0);
      sub_100072DE0(v9, v7);
    }

    else
    {
      type metadata accessor for NWObjcTunnelConnectionWrapper(0);
      swift_allocObject();
      v10 = swift_unknownObjectRetain();
      v11 = sub_1000502DC(v10, a4 & 1, 0);
      sub_100072C8C(v11, v7);
    }
  }

  return result;
}

uint64_t sub_10006E46C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100013414(&qword_10009A908, &qword_100078DC0);
  __chkstk_darwin(v3);
  v5 = (&v38 - v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v41 = v3;
      v7 = result + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
      swift_beginAccess();
      v8 = *(v7 + 128);
      if (v8)
      {
        v9 = *(v7 + 136);

        CertificateUtilities.RawTLSPublicKeyInfo.publicKeyDERData.getter();
        UUID.uuidString.getter();
        ListenerStartedResponse.init(port:deviceRawPublicKey:serviceName:)();
        swift_storeEnumTagMultiPayload();
        v8(v5);
        sub_10000FAC8(v8, v9);
        sub_100022560(v5, &qword_10009A908, &qword_100078DC0);
        v10 = *(v7 + 128);
      }

      else
      {
        v10 = 0;
      }

      v28 = *(v7 + 136);
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      sub_10000FAC8(v10, v28);
      OS_dispatch_queue.assertOnQueueHierarchy()();
    }

    v11 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    v12 = result + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
    swift_beginAccess();
    v13 = *(v12 + 128);
    if (!v13)
    {
      v29 = static os_log_type_t.error.getter();
      v30 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v29))
      {
        v31 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v31 = 136446466;
        v32 = UUID.uuidString.getter();
        v34 = sub_10000C600(v32, v33, &v43);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2082;
        v42 = v11;
        swift_errorRetain();
        sub_100013414(&unk_10009A930, &unk_100077080);
        v35 = String.init<A>(describing:)();
        v37 = sub_10000C600(v35, v36, &v43);

        *(v31 + 14) = v37;
        _os_log_impl(&_mh_execute_header, v30, v29, "%{public}s: Tunnel listener stopped due to error: %{public}s", v31, 0x16u);
        swift_arrayDestroy();
      }
    }

    v14 = *(v12 + 136);

    v15 = static os_log_type_t.error.getter();
    v16 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v15))
    {
      v17 = swift_slowAlloc();
      v41 = v11;
      v18 = v17;
      v39 = swift_slowAlloc();
      v43 = v39;
      *v18 = 136446466;
      HIDWORD(v38) = v15;
      v19 = UUID.uuidString.getter();
      v21 = sub_10000C600(v19, v20, &v43);
      v40 = v14;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v42 = v41;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v23 = String.init<A>(describing:)();
      v25 = sub_10000C600(v23, v24, &v43);

      *(v18 + 14) = v25;
      v14 = v40;
      _os_log_impl(&_mh_execute_header, v16, BYTE4(v38), "%{public}s: Tunnel listener stopped before it became ready. Publishing error to caller: %{public}s", v18, 0x16u);
      swift_arrayDestroy();

      v11 = v41;
    }

    *v5 = v11;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v13(v5);
    sub_100022560(v5, &qword_10009A908, &qword_100078DC0);
    v26 = *(v12 + 128);
    v27 = *(v12 + 136);
    *(v12 + 128) = 0;
    *(v12 + 136) = 0;
    sub_10000FAC8(v26, v27);
    OS_dispatch_queue.assertOnQueueHierarchy()();

    return sub_10000FAC8(v13, v14);
  }

  return result;
}

uint64_t sub_10006E948(uint64_t a1)
{
  v1 = type metadata accessor for RemotePairingError();
  __chkstk_darwin(v1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = static os_log_type_t.error.getter();
    v4 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = UUID.uuidString.getter();
      v9 = sub_10000C600(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v4, v3, "%{public}s: Tunnel tunnelListenerTimeout", v5, 0xCu);
      sub_10000CADC(v6);
    }

    static RemotePairingError.tunnelError.getter();
    sub_100073058(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    v10 = swift_allocError();
    sub_100073058(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
    Error<>.init(_:_:)();
    sub_100071E98(v10);
  }

  return result;
}

uint64_t sub_10006EB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ZeroConnectionCancellationPolicy();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for TunnelConnectionState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_beginAccess();
    sub_10003DE84(a3 + 16, &v53, &qword_10009C108, &qword_100078DC8);
    if (!v54)
    {

      sub_100022560(&v53, &qword_10009C108, &qword_100078DC8);
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      swift_beginAccess();
      v25 = a3 + 16;
      return sub_100072F3C(&v55, v25, &qword_10009C108, &qword_100078DC8);
    }

    sub_100010E18(&v53, &v55);
    (*(v10 + 16))(v12, a1, v9);
    v15 = (*(v10 + 88))(v12, v9);
    if (v15 == enum case for TunnelConnectionState.ready(_:))
    {
      v16 = v14 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
      swift_beginAccess();
      sub_10003DE84(v16 + 40, &v51, &qword_10009C0A8, &unk_100078D70);
      if (!v52)
      {
        sub_100022560(&v51, &qword_10009C0A8, &unk_100078D70);
        v36 = static os_log_type_t.default.getter();
        v37 = qword_10009CED0;
        if (os_log_type_enabled(qword_10009CED0, v36))
        {
          v38 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *&v53 = v50;
          *v38 = 136446210;
          v49 = v36;
          v39 = UUID.uuidString.getter();
          v41 = sub_10000C600(v39, v40, &v53);

          *(v38 + 4) = v41;
          _os_log_impl(&_mh_execute_header, v37, v49, "%{public}s: Initial connection completed setup. Proceeding to create tunnel", v38, 0xCu);
          sub_10000CADC(v50);
        }

        (*(v6 + 104))(v8, enum case for ZeroConnectionCancellationPolicy.immediate(_:), v5);
        sub_10006F424();
        (*(v6 + 8))(v8, v5);
        if (*(v16 + 96))
        {

          dispatch thunk of DispatchWorkItem.cancel()();
        }

        *(v16 + 96) = 0;

        OS_dispatch_queue.assertOnQueueHierarchy()();
        sub_10000CADC(&v55);

        goto LABEL_22;
      }

      sub_100010E18(&v51, &v53);
      v17 = static os_log_type_t.default.getter();
      v18 = qword_10009CED0;
      if (os_log_type_enabled(qword_10009CED0, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *&v51 = v20;
        *v19 = 136446210;
        v21 = UUID.uuidString.getter();
        v23 = sub_10000C600(v21, v22, &v51);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s: Additional connection completed setup. Injecting into tunnel", v19, 0xCu);
        sub_10000CADC(v20);
      }

      sub_10001355C(&v53, v54);
      dispatch thunk of AnyTunnelEndpoint.serverInjectAdditionalConnection(_:preReadMessages:)();

      sub_10000CADC(&v55);
      v24 = &v53;
    }

    else
    {
      if (v15 != enum case for TunnelConnectionState.stopped(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v26 = v14 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
      swift_beginAccess();
      sub_10003DE84(v26 + 40, &v53, &qword_10009C0A8, &unk_100078D70);
      v27 = v54;
      sub_100022560(&v53, &qword_10009C0A8, &unk_100078D70);
      v28 = static os_log_type_t.default.getter();
      v29 = qword_10009CED0;
      v30 = os_log_type_enabled(qword_10009CED0, v28);
      if (v27)
      {
        if (v30)
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          *&v53 = v32;
          *v31 = 136446210;
          v33 = UUID.uuidString.getter();
          v35 = sub_10000C600(v33, v34, &v53);

          *(v31 + 4) = v35;
          _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s: Not tearing down tunnel on connection failure since endpoint is up and running and will handle failure", v31, 0xCu);
          sub_10000CADC(v32);
        }
      }

      else
      {
        if (v30)
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *&v53 = v43;
          *v42 = 136446210;
          v44 = UUID.uuidString.getter();
          v46 = sub_10000C600(v44, v45, &v53);

          *(v42 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s: Tearing down tunnel on connection failure since endpoint is nil", v42, 0xCu);
          sub_10000CADC(v43);
        }

        type metadata accessor for RemotePairingError();
        sub_100073058(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
        v47 = swift_allocError();
        sub_100073058(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
        static Error<>.networkingError.getter();
        sub_100071E98(v47);
      }

      v24 = &v55;
    }

    sub_10000CADC(v24);
LABEL_22:
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    swift_beginAccess();
    v25 = a3 + 16;
    return sub_100072F3C(&v55, v25, &qword_10009C108, &qword_100078DC8);
  }

  return result;
}

void sub_10006F424()
{
  sub_10000D060();
  v100 = v1;
  v99 = v2;
  v108 = v3;
  v95 = type metadata accessor for TunnelInterfaceParameters();
  sub_10000CBBC();
  v94 = v4;
  __chkstk_darwin(v5);
  sub_10000CCB8();
  sub_100073140(v6);
  v7 = sub_100013414(&qword_10009C0B0, &unk_100078D80);
  sub_10000D368(v7);
  sub_10000D8B0();
  __chkstk_darwin(v8);
  sub_100073140(&v89 - v9);
  v10 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  v11 = sub_10000D368(v10);
  __chkstk_darwin(v11);
  sub_10000D2F8();
  sub_10000D984();
  __chkstk_darwin(v12);
  sub_1000732B8();
  sub_10000D984();
  __chkstk_darwin(v13);
  sub_100061F58();
  sub_10000D9D8(v14);
  v102 = type metadata accessor for IPv6Address();
  sub_10000CBBC();
  v110 = v15;
  __chkstk_darwin(v16);
  sub_10000D2F8();
  sub_10000D984();
  __chkstk_darwin(v17);
  sub_1000732B8();
  sub_10000D984();
  __chkstk_darwin(v18);
  sub_1000732B8();
  sub_10000D984();
  __chkstk_darwin(v19);
  sub_1000732B8();
  sub_10000D984();
  __chkstk_darwin(v20);
  sub_100061F58();
  v109 = v21;
  sub_10002F608();
  type metadata accessor for ZeroConnectionCancellationPolicy();
  sub_10000CBBC();
  v98 = v22;
  __chkstk_darwin(v23);
  sub_10000CBDC();
  v24 = sub_100013414(&qword_10009C0B8, &qword_100078D90);
  sub_10000D368(v24);
  sub_10000D8B0();
  __chkstk_darwin(v25);
  v26 = *(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  type metadata accessor for SystemXPCConnection();
  v27 = static SystemXPCConnection.connectionToMachService(name:privilegedService:targetQueue:)();
  v29 = v28;
  v30 = v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
  swift_beginAccess();
  *(v30 + 80) = v27;
  *(v30 + 88) = v29;

  OS_dispatch_queue.assertOnQueueHierarchy()();

  v90 = v29;
  dispatch thunk of XPCPeerConnection.setEventHandler(_:)();

  dispatch thunk of XPCConnection.activate()();
  v91 = v27;

  LOBYTE(v27) = static Defaults.tunnelUseSkywalk.getter();
  v107 = v0;
  UUID.uuidString.getter();
  sub_100022260(v108, v114);
  type metadata accessor for TunnelConnectionPriority();
  sub_1000731F4();
  sub_1000223E8(v31, v32, v33, v34);
  v35 = sub_10000D670();
  v36(v35);
  if (v27)
  {
    v37 = sub_100013414(&qword_10009C0D0, &unk_100078DA0);
    swift_allocObject();
    v38 = v26;
    sub_1000732C4();
    v39 = sub_1000731B8();
    sub_100073128();
    v42 = &qword_10009C0D0;
    v43 = &unk_100078DA0;
  }

  else
  {
    v37 = sub_100013414(&qword_10009C0C0, &qword_100078D98);
    swift_allocObject();
    v44 = v26;
    sub_1000732C4();
    v39 = sub_1000731B8();
    sub_100073128();
    v42 = &qword_10009C0C0;
    v43 = &qword_100078D98;
  }

  v45 = sub_100035F9C(v40, v42, v43, v41);
  v115 = v37;
  v116 = v45;
  v114[0] = v39;
  sub_100022260(v114, v113);
  swift_beginAccess();
  sub_100072F3C(v113, v30 + 40, &qword_10009C0A8, &unk_100078D70);
  swift_endAccess();
  OS_dispatch_queue.assertOnQueueHierarchy()();
  sub_100022260(v114, v113);
  v46 = swift_allocObject();
  *(v46 + 16) = v107;
  v100 = v46;
  sub_100010E18(v113, v46 + 24);

  v47 = static Data.randomBytes(ofLength:)();
  v49 = v48;
  v111 = sub_10006AF94(&off_10008EB38);
  v112 = v50;
  sub_10000E228(v111, v50);
  v99 = v47;
  v98 = v49;
  sub_100072AFC(v47, v49);
  v51 = sub_100073200();
  sub_10000DF50(v51, v52);
  v53 = v111;
  v54 = v112;
  *&v113[0] = Data.InlineData.init(count:)();
  DWORD2(v113[0]) = v55;
  BYTE14(v113[0]) = v56;
  WORD6(v113[0]) = v57;
  bzero(v113, v56);
  v58 = *&v113[0];
  v59 = DWORD2(v113[0]) | ((WORD6(v113[0]) | (BYTE14(v113[0]) << 16)) << 32);
  *&v113[0] = v53;
  *(&v113[0] + 1) = v54;
  sub_100072AFC(v58, v59);
  v60 = v113[0];
  v61 = sub_10006AF94(&off_10008EB60);
  v63 = v62;
  v113[0] = v60;
  sub_10000E228(v60, *(&v60 + 1));
  sub_100072AFC(v61, v63);
  sub_10000DF50(v61, v63);
  v64 = type metadata accessor for NWInterface();
  sub_1000731F4();
  sub_1000223E8(v65, v66, v67, v64);
  v68 = v101;
  IPv6Address.init(_:_:)();
  v69 = v102;
  if (sub_100022484(v68, 1, v102) == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v70 = v110[4];
  v70(v109, v68, v69);
  v71 = sub_10006AF94(&off_10008EB88);
  v73 = v72;
  v113[0] = v60;
  sub_10000E228(v60, *(&v60 + 1));
  sub_100072AFC(v71, v73);
  sub_10000DF50(v71, v73);
  sub_1000731F4();
  sub_1000223E8(v74, v75, v76, v64);
  v77 = v97;
  IPv6Address.init(_:_:)();
  if (sub_100022484(v77, 1, v69) == 1)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v70(v106, v77, v69);
  v78 = v96;
  IPv6Address.init(_:)();
  v79 = sub_100022484(v78, 1, v69);
  v80 = v108;
  if (v79 == 1)
  {
    goto LABEL_12;
  }

  v103 = *(&v60 + 1);
  v81 = v105;
  v70(v105, v78, v69);
  v82 = v110[2];
  v82(v104, v109, v69);
  v82(v92, v81, v69);
  sub_10001355C(v80, v80[3]);
  if ((dispatch thunk of TunnelConnection.maxSupportedMTU.getter() & 0x10000) != 0)
  {
    type metadata accessor for VirtualInterface();
    static VirtualInterface.defaultMTU.getter();
  }

  v83 = v93;
  TunnelInterfaceParameters.init(address:netmask:mtu:)();
  sub_10001355C(v114, v115);
  sub_100022260(v114, v113);
  v84 = swift_allocObject();
  v84[2] = v107;
  sub_100010E18(v113, (v84 + 3));
  v85 = v90;
  v84[8] = v91;
  v84[9] = v85;
  v86 = v100;
  v84[10] = sub_100072700;
  v84[11] = v86;

  v87 = v106;
  dispatch thunk of AnyTunnelEndpoint.establishServerTunnel(localParameters:remoteAddress:completion:)();

  sub_10000DF50(v99, v98);

  sub_10000DF50(v60, v103);

  (*(v94 + 8))(v83, v95);
  v88 = v110[1];
  v88(v105, v69);
  v88(v87, v69);
  v88(v109, v69);
  sub_10000CADC(v114);
  sub_1000135A0();
}

uint64_t sub_10006FED4(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v57 = type metadata accessor for XPCDictionary();
  v60 = *(v57 - 8);
  v3 = __chkstk_darwin(v57);
  v56 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v7 = &v54 - v6;
  __chkstk_darwin(v5);
  v59 = &v54 - v8;
  v9 = type metadata accessor for XPCError();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v54 - v14;
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = sub_100013414(&unk_1000994A0, &unk_100077090);
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  sub_10003DE84(a1, &v54 - v19, &unk_1000994A0, &unk_100077090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v17, v20, v9);
    v21 = static os_log_type_t.error.getter();
    v22 = qword_10009CED0;
    v23 = *(v10 + 16);
    v23(v15, v17, v9);
    if (os_log_type_enabled(v22, v21))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v59 = v25;
      *v24 = 136446466;
      v60 = v17;
      v61 = v25;
      LODWORD(v57) = v21;
      v26 = UUID.uuidString.getter();
      v56 = v22;
      v28 = sub_10000C600(v26, v27, &v61);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      v23(v55, v15, v9);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v32 = *(v10 + 8);
      v55 = v23;
      v32(v15, v9);
      v33 = sub_10000C600(v29, v31, &v61);
      v17 = v60;

      *(v24 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v56, v57, "%{public}s: Tunnel recieved error on remoted XPC connection: %{public}s", v24, 0x16u);
      swift_arrayDestroy();

      v34 = v55;
    }

    else
    {
      v32 = *(v10 + 8);
      v34 = v23;
      v32(v15, v9);
    }

    sub_100073058(&qword_10009C0E8, &type metadata accessor for XPCError, &protocol conformance descriptor for XPCError);
    v51 = swift_allocError();
    v34(v52, v17, v9);
    sub_100071E98(v51);

    return (v32)(v17, v9);
  }

  else
  {
    v35 = v59;
    v36 = v60;
    v37 = v57;
    (*(v60 + 4))(v59, v20, v57);
    v38 = static os_log_type_t.error.getter();
    v39 = qword_10009CED0;
    v40 = *(v36 + 2);
    v40(v7, v35, v37);
    if (os_log_type_enabled(v39, v38))
    {
      v41 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v41 = 136446466;
      v42 = UUID.uuidString.getter();
      v44 = sub_10000C600(v42, v43, &v61);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2082;
      v40(v56, v7, v37);
      v45 = String.init<A>(describing:)();
      v47 = v46;
      v48 = *(v60 + 1);
      v48(v7, v37);
      v49 = sub_10000C600(v45, v47, &v61);

      *(v41 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v39, v38, "%{public}s: Unexpected message on XPC connection: %{public}s", v41, 0x16u);
      swift_arrayDestroy();

      return (v48)(v59, v37);
    }

    else
    {
      v53 = *(v60 + 1);
      v53(v7, v37);
      return (v53)(v59, v37);
    }
  }
}

void *sub_100070560(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100013414(&qword_10009BC88, &qword_100078A68);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for IPv6Address();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - v15;
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  if (a1)
  {
    swift_errorRetain();
    v19 = static os_log_type_t.error.getter();
    v20 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v19))
    {
      v21 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v21 = 136446466;
      v22 = UUID.uuidString.getter();
      v24 = sub_10000C600(v22, v23, v60);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2082;
      *&v58 = a1;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v25 = String.init<A>(describing:)();
      v27 = sub_10000C600(v25, v26, v60);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v20, v19, "%{public}s: Tunnel setup error: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    sub_100071E98(a1);
  }

  v55 = a2;
  sub_10001355C(a3, a3[3]);
  result = dispatch thunk of AnyTunnelEndpoint.localTunnelInterface.getter();
  if (!v59)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_100010E18(&v58, v60);
  sub_10001355C(a3, a3[3]);
  dispatch thunk of AnyTunnelEndpoint.remoteAddress.getter();
  result = sub_100022484(v8, 1, v9);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  (*(v10 + 32))(v18, v8, v9);
  v29 = static os_log_type_t.default.getter();
  v30 = qword_10009CED0;
  sub_100022260(v60, &v58);
  sub_100022260(v60, v57);
  v31 = *(v10 + 16);
  v54 = v18;
  v31(v16);
  if (os_log_type_enabled(v30, v29))
  {
    v32 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56 = v53;
    *v32 = 136446978;
    v52 = v30;
    v33 = UUID.uuidString.getter();
    v35 = sub_10000C600(v33, v34, &v56);
    v51 = v29;
    v36 = v35;

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    v50 = v31;
    sub_10001355C(&v58, v59);
    v37 = dispatch thunk of TunnelInterface.interfaceName.getter();
    v39 = v38;
    sub_10000CADC(&v58);
    v40 = sub_10000C600(v37, v39, &v56);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2082;
    sub_10001355C(v57, v57[3]);
    dispatch thunk of TunnelInterface.address.getter();
    sub_100013414(&qword_10009C100, &qword_100078DB8);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    sub_10000CADC(v57);
    v44 = sub_10000C600(v41, v43, &v56);

    *(v32 + 24) = v44;
    *(v32 + 32) = 2082;
    v50(v13, v16, v9);
    v45 = String.init<A>(describing:)();
    v47 = v46;
    v48 = *(v10 + 8);
    v48(v16, v9);
    v49 = sub_10000C600(v45, v47, &v56);

    *(v32 + 34) = v49;
    _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s: Tunnel established: %{public}s, local %{public}s -> remote %{public}s", v32, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v48 = *(v10 + 8);
    v48(v16, v9);
    sub_10000CADC(&v58);
    sub_10000CADC(v57);
  }

  sub_10001355C(a3, a3[3]);

  dispatch thunk of AnyTunnelEndpoint.startPacketTransfer(errorHandler:)();

  v48(v54, v9);
  return sub_10000CADC(v60);
}

void sub_100070BF8(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  v3 = qword_10009CED0;
  if (os_log_type_enabled(qword_10009CED0, v2))
  {
    v4 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v4 = 136446466;
    v5 = UUID.uuidString.getter();
    v7 = sub_10000C600(v5, v6, &v11);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    swift_errorRetain();
    sub_100013414(&unk_10009A930, &unk_100077080);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C600(v8, v9, &v11);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v2, "%{public}s: Tunnel transfer error: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  sub_100071E98(a1);
}

void *sub_100070D70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for XPCDictionary();
  __chkstk_darwin(v13);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v17 = static os_log_type_t.error.getter();
    v18 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v17))
    {
      v19 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      *v19 = 136446466;
      v20 = UUID.uuidString.getter();
      v22 = sub_10000C600(v20, v21, v46);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      *&v44 = a1;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v23 = String.init<A>(describing:)();
      v25 = sub_10000C600(v23, v24, v46);

      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s: Server tunnel setup error: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
    }

    swift_errorRetain();
    sub_100071E98(a1);
  }

  else
  {
    v40 = a6;
    v41 = a7;
    v42 = v14;
    sub_10001355C(a3, a3[3]);
    result = dispatch thunk of AnyTunnelEndpoint.localTunnelInterface.getter();
    if (v45)
    {
      v39[1] = a4;
      sub_100010E18(&v44, v46);
      v27 = static os_log_type_t.default.getter();
      v28 = qword_10009CED0;
      sub_100022260(v46, &v44);
      if (os_log_type_enabled(v28, v27))
      {
        v29 = swift_slowAlloc();
        v39[0] = swift_slowAlloc();
        v43 = v39[0];
        *v29 = 136446466;
        v30 = UUID.uuidString.getter();
        v32 = sub_10000C600(v30, v31, &v43);

        *(v29 + 4) = v32;
        *(v29 + 12) = 2082;
        sub_10001355C(&v44, v45);
        v33 = dispatch thunk of TunnelInterface.interfaceName.getter();
        v35 = v34;
        sub_10000CADC(&v44);
        v36 = sub_10000C600(v33, v35, &v43);

        *(v29 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s: Server tunnel interface created: %{public}s, creating RSD listener...", v29, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10000CADC(&v44);
      }

      XPCDictionary.init()();
      XPCDictionary.subscript.setter();
      sub_10001355C(v46, v46[3]);
      dispatch thunk of TunnelInterface.interfaceName.getter();
      XPCDictionary.subscript.setter();
      sub_100022260(a3, &v44);
      v37 = swift_allocObject();
      v37[2] = a2;
      sub_100010E18(&v44, (v37 + 3));
      v38 = v41;
      v37[8] = v40;
      v37[9] = v38;

      dispatch thunk of XPCConnection.send(message:replyQueue:replyHandler:)();

      (*(v42 + 8))(v16, v13);
      return sub_10000CADC(v46);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_10007125C(NSObject *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v110 = a4;
  v111 = a5;
  v112 = a3;
  v119 = a2;
  v6 = type metadata accessor for XPCDictionary();
  isa = v6[-1].isa;
  v7 = __chkstk_darwin(v6);
  v108 = (&v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v113 = &v107 - v10;
  v11 = __chkstk_darwin(v9);
  v118 = (&v107 - v12);
  __chkstk_darwin(v11);
  v14 = (&v107 - v13);
  v15 = type metadata accessor for XPCError();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v114 = (&v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v17);
  v21 = &v107 - v20;
  __chkstk_darwin(v19);
  v23 = &v107 - v22;
  v24 = sub_100013414(&unk_1000994A0, &unk_100077090);
  v25 = __chkstk_darwin(v24);
  v109 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v115 = (&v107 - v28);
  __chkstk_darwin(v27);
  v30 = &v107 - v29;
  v116 = a1;
  sub_10003DE84(a1, &v107 - v29, &unk_1000994A0, &unk_100077090);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v23, v30, v15);
    v31 = static os_log_type_t.error.getter();
    v32 = qword_10009CED0;
    v33 = *(v16 + 16);
    v33(v21, v23, v15);
    if (os_log_type_enabled(v32, v31))
    {
      v34 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v120 = v118;
      *v34 = 136446466;
      LODWORD(isa) = v31;
      v35 = UUID.uuidString.getter();
      v37 = sub_10000C600(v35, v36, &v120);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v116 = v32;
      v33(v114, v21, v15);
      v38 = String.init<A>(describing:)();
      v39 = v23;
      v40 = v33;
      v42 = v41;
      v43 = v21;
      v44 = *(v16 + 8);
      v44(v43, v15);
      v45 = sub_10000C600(v38, v42, &v120);
      v33 = v40;
      v23 = v39;

      *(v34 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v116, isa, "%{public}s: Server XPC reply error: %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v46 = v44;
    }

    else
    {
      v46 = *(v16 + 8);
      v46(v21, v15);
    }

    sub_100073058(&qword_10009C0E8, &type metadata accessor for XPCError, &protocol conformance descriptor for XPCError);
    v68 = swift_allocError();
    v33(v69, v23, v15);
    sub_100071E98(v68);

    return (v46)(v23, v15);
  }

  v47 = isa;
  v48 = *(isa + 2);
  v48(v14, v30, v6);
  v49 = XPCDictionary.subscript.getter();
  v51 = v6;
  if (v50)
  {
    if (v49 == 19279 && v50 == 0xE200000000000000)
    {
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v53 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v71 = v47;
    v74 = *(v47 + 1);
    v73 = (v47 + 8);
    v72 = v74;
    v74(v14, v51);
    v75 = v118;
    (*(v71 + 4))(v118, v30, v51);
    v76 = static os_log_type_t.debug.getter();
    v77 = qword_10009CED0;
    v78 = v113;
    v48(v113, v75, v51);
    v79 = os_log_type_enabled(v77, v76);
    v115 = v74;
    if (v79)
    {
      v80 = swift_slowAlloc();
      isa = v73;
      v81 = v78;
      v82 = v80;
      v116 = swift_slowAlloc();
      v120 = v116;
      *v82 = 136446466;
      v83 = UUID.uuidString.getter();
      v85 = v77;
      v86 = sub_10000C600(v83, v84, &v120);

      *(v82 + 4) = v86;
      v77 = v85;
      *(v82 + 12) = 2082;
      v48(v108, v81, v51);
      v87 = String.init<A>(describing:)();
      v89 = v88;
      v72(v81, v51);
      v90 = sub_10000C600(v87, v89, &v120);

      *(v82 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v85, v76, "%{public}s: Server XPC reply: %{public}s", v82, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v72(v78, v51);
    }

    v93 = v118;
    result = XPCDictionary.subscript.getter();
    if (v94)
    {
      v95 = result;
      v96 = v94;
      sub_100072BA8();
      result = XPCDictionary.subscript.getter();
      if (v121)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v97 = v120;
      v98 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v98))
      {
        v99 = swift_slowAlloc();
        v116 = v51;
        v100 = v99;
        v120 = swift_slowAlloc();
        *v100 = 136446722;
        v101 = UUID.uuidString.getter();
        v103 = v77;
        v104 = sub_10000C600(v101, v102, &v120);

        *(v100 + 4) = v104;
        *(v100 + 12) = 2082;

        v105 = sub_10000C600(v95, v96, &v120);

        *(v100 + 14) = v105;
        *(v100 + 22) = 2048;
        *(v100 + 24) = v97;
        _os_log_impl(&_mh_execute_header, v103, v98, "%{public}s: Created RSD server device name: %{public}s with listener on port: %lu", v100, 0x20u);
        swift_arrayDestroy();
        v93 = v118;

        v51 = v116;
      }

      v106 = v119 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state;
      swift_beginAccess();
      *(v106 + 112) = v95;
      *(v106 + 120) = v96;

      OS_dispatch_queue.assertOnQueueHierarchy()();
      result = sub_10001355C(v112, v112[3]);
      if (!(v97 >> 16))
      {
        dispatch thunk of AnyTunnelEndpoint.finishEstablishingServerTunnel(serverRSDPort:completion:)();
        return v115(v93, v51);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_10:
  v118 = v14;
  v54 = static os_log_type_t.error.getter();
  v55 = qword_10009CED0;
  v56 = v115;
  sub_10003DE84(v116, v115, &unk_1000994A0, &unk_100077090);
  if (os_log_type_enabled(v55, v54))
  {
    v57 = swift_slowAlloc();
    v116 = v6;
    v58 = v57;
    v114 = swift_slowAlloc();
    v120 = v114;
    *v58 = 136446466;
    v59 = UUID.uuidString.getter();
    v61 = v47;
    v62 = sub_10000C600(v59, v60, &v120);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2082;
    sub_10003DE84(v56, v109, &unk_1000994A0, &unk_100077090);
    v63 = String.init<A>(describing:)();
    v64 = v56;
    v66 = v65;
    v47 = v61;
    sub_100022560(v64, &unk_1000994A0, &unk_100077090);
    v67 = sub_10000C600(v63, v66, &v120);

    *(v58 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v55, v54, "%{public}s: Server XPC result not successful: %{public}s", v58, 0x16u);
    swift_arrayDestroy();

    v51 = v116;
  }

  else
  {
    sub_100022560(v56, &unk_1000994A0, &unk_100077090);
  }

  type metadata accessor for RemotePairingError();
  sub_100073058(&qword_100099850, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
  v91 = swift_allocError();
  sub_100073058(&unk_10009A0D0, &type metadata accessor for RemotePairingError, &protocol conformance descriptor for RemotePairingError);
  static Error<>.dataCorrupted.getter();
  sub_100071E98(v91);

  v92 = *(v47 + 1);
  v92(v118, v51);
  return (v92)(v30, v51);
}

void sub_100071E98(uint64_t a1)
{
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (a1)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    v4 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *&v48 = v6;
      *v5 = 136446466;
      v7 = UUID.uuidString.getter();
      v9 = sub_10000C600(v7, v8, &v48);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2082;
      v42 = a1;
      swift_errorRetain();
      sub_100013414(&unk_10009A930, &unk_100077080);
      v10 = String.init<A>(describing:)();
      v12 = sub_10000C600(v10, v11, &v48);

      *(v5 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v4, v3, "%{public}s: Cancelling tunnel with error: %{public}s", v5, 0x16u);
      swift_arrayDestroy();
      sub_10000D8D4(v6);
      sub_10000EB64();
    }
  }

  else
  {
    v13 = static os_log_type_t.default.getter();
    v14 = qword_10009CED0;
    if (os_log_type_enabled(qword_10009CED0, v13))
    {
      v15 = sub_10000D030();
      v16 = swift_slowAlloc();
      *&v48 = v16;
      *v15 = 136446210;
      v17 = UUID.uuidString.getter();
      v19 = sub_10000C600(v17, v18, &v48);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s: Cancelling tunnel", v15, 0xCu);
      sub_10000CADC(v16);
      sub_10000D8D4(v16);
      sub_10000D8D4(v15);
    }
  }

  v20 = (v1 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state);
  swift_beginAccess();
  sub_100072690(v20, &v48);
  if (*(&v49 + 1))
  {
    sub_100022260(&v48, &v42);
    sub_1000726C8(&v48);
    v21 = sub_10001355C(&v42, v45);
    nw_listener_cancel(*(*v21 + 32));
    v22 = sub_10000CADC(&v42);
  }

  else
  {
    v22 = sub_1000726C8(&v48);
  }

  sub_10007318C(v22, v23, v24, v25, v26, v27, v28, v29, v42, v43, v44, v45, v46, v47[0], v47[1], v47[2], v48, v49, v50);
  sub_100072F3C(&v48, v20, &qword_10009C0A0, &qword_100078D68);
  swift_endAccess();
  OS_dispatch_queue.assertOnQueueHierarchy()();
  v30 = v20[18];
  if (v30)
  {
    v31 = v20[19];

    v30(a1);
    sub_10000FAC8(v30, v31);
    v32 = v20[18];
  }

  else
  {
    v32 = 0;
  }

  v33 = v20[19];
  v20[18] = 0;
  v20[19] = 0;
  sub_10000FAC8(v32, v33);
  OS_dispatch_queue.assertOnQueueHierarchy()();
  sub_100072690(v20, &v48);
  if (v51[3])
  {
    sub_100022260(v51, &v42);
    sub_1000726C8(&v48);
    sub_10001355C(&v42, v45);
    dispatch thunk of AnyTunnelEndpoint.cancel()();
    v34 = sub_10000CADC(&v42);
  }

  else
  {
    v34 = sub_1000726C8(&v48);
  }

  sub_10007318C(v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47[0], v47[1], v47[2], v48, v49, v50);
  sub_100072F3C(&v48, (v20 + 5), &qword_10009C0A8, &unk_100078D70);
  swift_endAccess();
  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (v20[10])
  {

    dispatch thunk of XPCConnection.cancel()();
  }

  v20[10] = 0;
  v20[11] = 0;

  OS_dispatch_queue.assertOnQueueHierarchy()();
  if (v20[13])
  {

    dispatch thunk of WiFiKeepAlive.cancel()();
  }

  v20[13] = 0;

  OS_dispatch_queue.assertOnQueueHierarchy()();
}

uint64_t sub_1000722CC()
{
  v1 = OBJC_IVAR____TtC20remotepairingdeviced6Tunnel_identifier;
  type metadata accessor for UUID();
  sub_10000CC04();
  (*(v2 + 8))(v0 + v1);

  sub_1000726C8(v0 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__state);
  return v0;
}

uint64_t sub_100072354()
{
  sub_1000722CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for Tunnel(uint64_t a1)
{
  result = qword_10009BF98;
  if (!qword_10009BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100072400(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000724B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 160))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_10007250C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000725A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000725F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100072648(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100072660(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10007270C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_100072784(uint64_t a1, unint64_t a2)
{
  v2 = type metadata accessor for DispatchData();
  sub_10000CBBC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000CBDC();
  v8 = v7 - v6;
  DispatchData.init(bytes:)();
  v9 = DispatchData._bridgeToObjectiveC()();
  (*(v4 + 8))(v8, v2);
  return v9;
}

uint64_t sub_1000728B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return sub_10007270C(v7, v13, a3);
}

uint64_t sub_100072944(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchData();
  sub_10000CBBC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000CBDC();
  sub_10001ADE0();
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      DispatchData.init(bytes:)();
      v10 = DispatchData._bridgeToObjectiveC()();
      (*(v7 + 8))(v2, v5);
      return v10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100072A68(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      return Data._Representation.append(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100072AFC(uint64_t a1, unint64_t a2)
{
  v9[3] = &type metadata for Data;
  v9[4] = &protocol witness table for Data;
  v9[0] = a1;
  v9[1] = a2;
  v5 = sub_10001355C(v9, &type metadata for Data);
  v6 = *v5;
  v7 = v5[1];
  sub_10000E228(a1, a2);
  sub_10006B0F0(v6, v7, v2);
  return sub_10000CADC(v9);
}

unint64_t sub_100072BA8()
{
  result = qword_10009C0E0;
  if (!qword_10009C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009C0E0);
  }

  return result;
}

uint64_t sub_100072C14(uint64_t a1)
{
  v3 = type metadata accessor for CertificateUtilities.RawTLSPublicKeyInfo();
  sub_10000D368(v3);
  v4 = *(v1 + 16);

  return sub_10006E46C(a1, v4);
}

uint64_t sub_100072C8C(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for NWObjcTunnelConnectionWrapper(0);
  v9[4] = sub_100073058(&qword_10009B728, type metadata accessor for NWObjcTunnelConnectionWrapper, &unk_100078658);
  v9[0] = a1;
  v4 = *(a2 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);

  OS_dispatch_queue.assertOnQueueHierarchy()();
  v5 = swift_allocObject();
  sub_100022260(v9, v5 + 16);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_100050384(v4, sub_100072F34, v7);

  return sub_10000CADC(v9);
}

uint64_t sub_100072DE0(uint64_t a1, uint64_t a2)
{
  v9[3] = type metadata accessor for NWQUICTunnelConnection(0);
  v9[4] = sub_100073058(&qword_10009C110, type metadata accessor for NWQUICTunnelConnection, &unk_1000785F0);
  v9[0] = a1;
  v4 = *(a2 + OBJC_IVAR____TtC20remotepairingdeviced6Tunnel__tunnelQueue);

  OS_dispatch_queue.assertOnQueueHierarchy()();
  v5 = swift_allocObject();
  sub_100022260(v9, v5 + 16);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  sub_1000527AC(v4, sub_1000730DC, v7);

  return sub_10000CADC(v9);
}

uint64_t sub_100072F3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100040170(a1, a2, a3, a4);
  sub_10000CC04();
  v5 = sub_10000D4B0();
  v6(v5);
  return v4;
}

void sub_100072F90()
{
  v0 = sub_100013414(&qword_10009C128, &unk_100078DE0);
  sub_10000CD78(v0);
  sub_10006C960();
}

uint64_t sub_100073058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007314C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_100073160()
{
  **(v1 - 264) = v0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10007318C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a19)
{

  return swift_beginAccess();
}

uint64_t sub_1000731B8()
{

  return TunnelEndpoint.init(id:connectionObject:workQueue:priority:preReadMessages:zeroConnectionCancellationPolicy:)(v1, v0, v6 - 160, v3, v4, v2, v5);
}

uint64_t sub_100073224()
{

  return static Error<>.networkingError.getter();
}

uint64_t sub_100073248()
{

  return swift_slowAlloc();
}

uint64_t sub_100073264(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return Error<>.init(_:_:)();
}

uint64_t sub_100073288(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

double sub_1000732C4()
{

  return result;
}

uint64_t sub_1000732E4(uint64_t a1)
{

  return swift_allocError();
}

void sub_1000733D8(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unrecognized response '%d' from ManagedConfiguration. Will allow pairing with prompt.", v2, 8u);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t XPCDictionary.subscript.setter()
{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

uint64_t XPCDictionary.subscript.getter()
{
  return XPCDictionary.subscript.getter();
}

{
  return XPCDictionary.subscript.getter();
}

{
  return XPCDictionary.subscript.getter();
}

uint64_t dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)()
{
  return dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();
}

{
  return dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)();
}

uint64_t static _Error.~= infix(_:_:)()
{
  return static _Error.~= infix(_:_:)();
}

{
  return static _Error.~= infix(_:_:)();
}

uint64_t __CocoaSet.member(for:)()
{
  return __CocoaSet.member(for:)();
}

{
  return __CocoaSet.member(for:)();
}