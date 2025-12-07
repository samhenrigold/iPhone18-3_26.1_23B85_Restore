uint64_t sub_100002BE4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ObserversTable.init()()
{
  sub_100002BE4(&qword_100169058, &unk_10010C060);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = &_swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100002C74(uint64_t *a1)
{
  if (sub_1001061A4(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_100002DD8(uint64_t *a1)
{
  if (sub_1001061A4(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

BOOL sub_100003038(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100003068@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100003094@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100003180()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000031BC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003210(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100003284(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000032FC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000337C@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000033C0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_1000033EC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100003460(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000034B4(uint64_t a1)
{
  v2 = sub_100003C7C(&qword_1001691A0, type metadata accessor for CKError, &unk_10010C5F4);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003520(uint64_t a1)
{
  v2 = sub_100003C7C(&qword_1001691A0, type metadata accessor for CKError, &unk_10010C5F4);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000358C(void *a1, uint64_t a2)
{
  v4 = sub_100003C7C(&qword_1001691A0, type metadata accessor for CKError, &unk_10010C5F4);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100003640(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C7C(&qword_1001691A0, type metadata accessor for CKError, &unk_10010C5F4);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000036BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_10000371C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000374C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10000C1E8();

  *a2 = v3;
  return result;
}

uint64_t sub_10000378C(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100003814(uint64_t a1)
{
  v2 = sub_100003C7C(&qword_1001691A8, type metadata accessor for CKError, &unk_10010C748);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003880(uint64_t a1)
{
  v2 = sub_100003C7C(&qword_1001691A8, type metadata accessor for CKError, &unk_10010C748);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000038F0(uint64_t a1)
{
  v2 = sub_100003C7C(&qword_1001691A0, type metadata accessor for CKError, &unk_10010C5F4);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000395C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003C7C(&qword_1001691A0, type metadata accessor for CKError, &unk_10010C5F4);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_1000039E0@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003A28(uint64_t a1)
{
  v2 = sub_100003C7C(&qword_1001691F0, type metadata accessor for LaunchOptionsKey, &unk_10010C78C);
  v3 = sub_100003C7C(&qword_1001691F8, type metadata accessor for LaunchOptionsKey, &unk_10010C3F8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003AE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100003B18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003B38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100003C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000403C()
{
  result = qword_1001691D0;
  if (!qword_1001691D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001691D0);
  }

  return result;
}

void sub_100004190(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100004218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PageMetrics();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10000433C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PageID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for PageMetrics();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TetsuoDiscoverFeedPage(uint64_t a1)
{
  result = qword_100169338;
  if (!qword_100169338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004494(uint64_t a1)
{
  type metadata accessor for PageID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PageMetrics();
    if (v2 <= 0x3F)
    {
      sub_100004538(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100004538(uint64_t a1)
{
  if (!qword_100169348)
  {
    sub_10000459C(&unk_100169350, &qword_10010C898);
    v1 = type metadata accessor for DiscardOnError();
    if (!v2)
    {
      atomic_store(v1, &qword_100169348);
    }
  }
}

uint64_t sub_10000459C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_100004640()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000046B4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000046F8()
{
  v1 = 25705;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x7365766C656873;
  }

  if (*v0)
  {
    v1 = 0x7274654D65676170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000476C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100005788(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000047AC(uint64_t a1)
{
  v2 = sub_100005290();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000047E8(uint64_t a1)
{
  v2 = sub_100005290();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100004824(void *a1)
{
  v3 = v1;
  v5 = sub_100002BE4(&qword_1001693E0, &qword_10010C9B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000524C(a1, a1[3]);
  sub_100005290();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  type metadata accessor for PageID();
  sub_1000053F0(&qword_1001693E8, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for TetsuoDiscoverFeedPage(0);
    v14 = 1;
    type metadata accessor for PageMetrics();
    sub_1000053F0(&qword_1001693F0, &type metadata accessor for PageMetrics, &protocol conformance descriptor for PageMetrics);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_100002BE4(&qword_1001693C8, &qword_10010C9B0);
    sub_100005438(&qword_1001693F8, &qword_100169400, &protocol conformance descriptor for _CodeByKind_Many<A>, &protocol conformance descriptor for <A> DiscardOnError<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100004AE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v28 = type metadata accessor for PageMetrics();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageID();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100002BE4(&qword_1001693A8, &qword_10010C9A8);
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v25 - v7;
  v9 = type metadata accessor for TetsuoDiscoverFeedPage(0);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000524C(a1, a1[3]);
  sub_100005290();
  v31 = v8;
  v12 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_1000052E4(a1);
  }

  v13 = v4;
  v33 = v9;
  v15 = v27;
  v14 = v28;
  v38 = 0;
  sub_1000053F0(&qword_1001693B8, &type metadata accessor for PageID, &protocol conformance descriptor for PageID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = *(v15 + 32);
  v17 = v11;
  v18 = v30;
  v30 = v5;
  v16(v11, v18);
  v37 = 1;
  sub_1000053F0(&qword_1001693C0, &type metadata accessor for PageMetrics, &protocol conformance descriptor for PageMetrics);
  v19 = v13;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v33;
  (*(v26 + 32))(v17 + *(v33 + 20), v19, v14);
  v36 = 2;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = (v17 + *(v20 + 24));
  *v22 = v21;
  v22[1] = v23;
  sub_100002BE4(&qword_1001693C8, &qword_10010C9B0);
  v35 = 3;
  sub_100005438(&qword_1001693D0, &qword_1001693D8, &protocol conformance descriptor for _CodeByKind_Many<A>, &protocol conformance descriptor for <A> DiscardOnError<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 8))(v31, v32);
  *(v17 + *(v20 + 28)) = v34;
  sub_100005330(v17, v25);
  sub_1000052E4(a1);
  return sub_100005394(v17);
}

uint64_t sub_100005098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for PageMetrics();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10000510C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PageID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void *sub_10000524C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005290()
{
  result = qword_1001693B0;
  if (!qword_1001693B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001693B0);
  }

  return result;
}

uint64_t sub_1000052E4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100005330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoDiscoverFeedPage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005394(uint64_t a1)
{
  v2 = type metadata accessor for TetsuoDiscoverFeedPage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000053F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005438(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(&qword_1001693C8, &qword_10010C9B0);
    sub_1000054C0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000054C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(&unk_100169350, &qword_10010C898);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TetsuoDiscoverFeedPage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TetsuoDiscoverFeedPage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100005684()
{
  result = qword_100169408;
  if (!qword_100169408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169408);
  }

  return result;
}

unint64_t sub_1000056DC()
{
  result = qword_100169410;
  if (!qword_100169410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169410);
  }

  return result;
}

unint64_t sub_100005734()
{
  result = qword_100169418;
  if (!qword_100169418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169418);
  }

  return result;
}

uint64_t sub_100005788(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365766C656873 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

__n128 sub_1000058E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000058F8(uint64_t a1, int a2)
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

uint64_t sub_100005940(uint64_t result, int a2, int a3)
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

unint64_t FeatureEligibilityState.description.getter(char a1)
{
  _StringGuts.grow(_:)(56);
  v2._countAndFlagsBits = 0xD000000000000034;
  v2._object = 0x800000010011CAE0;
  String.append(_:)(v2);
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 41;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  return 0xD000000000000018;
}

uint64_t FeatureEligibilityObserverManager.__allocating_init()()
{
  v0 = swift_allocObject();
  FeatureEligibilityObserverManager.init()();
  return v0;
}

void *FeatureEligibilityObserverManager.init()()
{
  v1 = v0;
  v19[0] = *v0;
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_100002BE4(&qword_100169058, &unk_10010C060);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = &_swiftEmptyDictionarySingleton;
  *(v0 + 40) = v7;
  v19[1] = sub_100006148();

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100006194();
  sub_100002BE4(&qword_100169440, &qword_10010CB50);
  sub_1000061EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v20);
  *(v0 + 32) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 16) = sub_1000062F8() & 1;
  sub_100005EE8();
  if (qword_100168E58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100182030);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = sub_100006B44(v12, v13, &v21);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = FeatureEligibilityState.description.getter(*(v1 + 16));
    v17 = sub_100006B44(v15, v16, &v21);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s initial eligibilty state: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return v1;
}

void sub_100005EE8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100168E58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182030);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Begin observing airplay receiver background discovery eligibility state changes", v6, 0xCu);
    sub_1000052E4(v7);
  }

  v11 = *(v1 + 4);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v2;
  v15[4] = sub_1000077C0;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100009BD4;
  v15[3] = &unk_10015A7D8;
  v14 = _Block_copy(v15);

  swift_beginAccess();
  notify_register_dispatch("com.apple.os-eligibility-domain.change.samarium", v1 + 6, v11, v14);
  swift_endAccess();
  _Block_release(v14);
}

unint64_t sub_100006148()
{
  result = qword_100169430;
  if (!qword_100169430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100169430);
  }

  return result;
}

unint64_t sub_100006194()
{
  result = qword_100169438;
  if (!qword_100169438)
  {
    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169438);
  }

  return result;
}

unint64_t sub_1000061EC()
{
  result = qword_100169448;
  if (!qword_100169448)
  {
    sub_10000459C(&qword_100169440, &qword_10010CB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169448);
  }

  return result;
}

uint64_t FeatureEligibilityObserverManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_1000072B4(a1, v2, ObjectType, a2);
}

void FeatureEligibilityObserverManager.removeObserver(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_100007078(a1, v2, ObjectType, a2);
}

uint64_t sub_1000062F8()
{
  v19 = *v0;
  v1 = type metadata accessor for OSEligibilityDomain();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSEligibilityResult();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSEligibilityAnswer();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  (*(v2 + 104))(v4, enum case for OSEligibilityDomain.samarium(_:), v1);
  static OSEligibilityResult.result(for:)();
  (*(v2 + 8))(v4, v1);
  OSEligibilityResult.answer.getter();
  (*(v20 + 8))(v7, v5);
  v15 = *(v9 + 104);
  v15(v12, enum case for OSEligibilityAnswer.eligible(_:), v8);
  LOBYTE(v2) = static OSEligibilityAnswer.== infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v12, v8);
  if (v2)
  {
    v16(v14, v8);
    v17 = 1;
  }

  else
  {
    v15(v12, enum case for OSEligibilityAnswer.notYetAvailable(_:), v8);
    v17 = static OSEligibilityAnswer.== infix(_:_:)();
    v16(v12, v8);
    v16(v14, v8);
  }

  return v17 & 1;
}

uint64_t FeatureEligibilityObserverManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100006840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100168E58 != -1)
  {
LABEL_19:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182030);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Received airplay receiver background discovery eligibility state change notification.", v6, 0xCu);
    sub_1000052E4(v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    v14 = sub_1000062F8();
    *(v12 + 16) = v14 & 1;
    if (v13 == (v14 & 1))
    {
    }

    v15 = *(v12 + 40);
    os_unfair_lock_lock((v15 + 24));
    sub_10000887C((v15 + 16), &v23);
    os_unfair_lock_unlock((v15 + 24));
    v16 = v23;
    if (v23 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (v17 >= 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= 1)
      {
LABEL_9:
        for (i = 0; v17 != i; ++i)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_19;
            }

            v19 = *(v16 + 8 * i + 32);
            swift_unknownObjectRetain();
          }

          swift_unknownObjectRetain();
          swift_getObjectType();
          v20 = swift_conformsToProtocol2();
          if (v20)
          {
            if (v19)
            {
              v21 = v20;
              ObjectType = swift_getObjectType();
              (*(v21 + 8))(v12, *(v12 + 16), ObjectType, v21);
            }
          }

          swift_unknownObjectRelease_n();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100006B0C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100006B44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006C10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000076F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000052E4(v11);
  return v7;
}

unint64_t sub_100006C10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100006D1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100006D1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100006D68(a1, a2);
  sub_100006E98(&off_100159580);
  return v3;
}

void *sub_100006D68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10008F6F4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10008F6F4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100006E98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100006F84(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100006F84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002BE4(&qword_100169580, qword_10010CDC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100007078(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (qword_100168E58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182030);
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_unknownObjectRetain();
    sub_100002BE4(&qword_10016F310, &qword_10010CDB8);
    v12 = String.init<A>(describing:)();
    v14 = sub_100006B44(v12, v13, v17);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Removing observer: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = a2[5];
  __chkstk_darwin(v16);
  os_unfair_lock_lock((v15 + 24));
  sub_1000076B8((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
}

uint64_t sub_1000072B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (qword_100168E58 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006B0C(v7, qword_100182030);
  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, v20);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    swift_unknownObjectRetain();
    sub_100002BE4(&qword_10016F310, &qword_10010CDB8);
    v14 = String.init<A>(describing:)();
    v16 = sub_100006B44(v14, v15, v20);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Adding observer: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v17 = a2[5];
  __chkstk_darwin(v18);
  os_unfair_lock_lock(v17 + 6);
  sub_1000076D4(&v17[4]);
  os_unfair_lock_unlock(v17 + 6);
  return (*(a4 + 8))(a2, a2[2], a3, a4);
}

unint64_t sub_100007528()
{
  result = qword_100169450;
  if (!qword_100169450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169450);
  }

  return result;
}

unint64_t sub_100007580()
{
  result = qword_100169458;
  if (!qword_100169458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169458);
  }

  return result;
}

unint64_t sub_1000075D8()
{
  result = qword_100169460;
  if (!qword_100169460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169460);
  }

  return result;
}

unint64_t sub_100007630()
{
  result = qword_100169468;
  if (!qword_100169468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169468);
  }

  return result;
}

uint64_t sub_1000076F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007750()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007788()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000077C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000077E0(uint64_t a1)
{
  v2 = sub_100002BE4(&unk_100169C20, &unk_10010D6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ObserversTable.add(_:)(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 6);
  sub_100007AB8();
  os_unfair_lock_unlock(a2 + 6);
}

void ObserversTable.remove(_:)(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 6);
  sub_1000076B8(&a2[4]);
  os_unfair_lock_unlock(a2 + 6);
}

AppleVisionProApp::ObserversTable::Iterator __swiftcall ObserversTable.makeIterator()()
{
  v1 = v0;
  os_unfair_lock_lock(v0 + 6);
  sub_10000887C(&v1[4], &v5);
  os_unfair_lock_unlock(v1 + 6);
  v2 = v5;
  v3 = 0;
  result.currentIndex = v3;
  result.observers._rawValue = v2;
  return result;
}

uint64_t ObserversTable.Iterator.next()()
{
  v2 = *v0;
  v1 = v0[1];
  if (*v0 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v1 < result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v1 >= result)
  {
    return 0;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (v1 < 0)
  {
    __break(1u);
  }

  else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = swift_unknownObjectRetain();
LABEL_7:
    v0[1] = v1 + 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t ObserversTable.observerCount.getter(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v2 = *(*(a1 + 16) + 16);
  os_unfair_lock_unlock((a1 + 24));
  return v2;
}

BOOL ObserversTable.hasObservers.getter(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v2 = *(*(a1 + 16) + 16);
  os_unfair_lock_unlock((a1 + 24));
  return v2 != 0;
}

uint64_t sub_100007A6C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  v4[8] = 0;
  return sub_10000C1F0(v4, a2);
}

uint64_t sub_100007AB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectWeakInit();
  v3[8] = 0;
  return sub_10000C1F0(v3, v1);
}

uint64_t sub_100007B0C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_100068914(a2);
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10004E708();
      v8 = v12;
    }

    sub_100008A5C(*(v8 + 56) + 8 * v6, &v10);
    sub_10000FC00(v6, v8);
    *a1 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = (v5 & 1) == 0;
  return sub_100009908(&v10, &qword_1001695B0, &qword_10010CF50);
}

Swift::Void __swiftcall ObserversTable.removeAll()()
{
  v1 = v0;
  os_unfair_lock_lock(v0 + 6);

  *&v1[4]._os_unfair_lock_opaque = &_swiftEmptyDictionarySingleton;

  os_unfair_lock_unlock(v1 + 6);
}

void ObserversTable.enumerate(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 24));
  v4 = *(a3 + 16);
  v21 = (a3 + 16);

  v22 = a3;
  os_unfair_lock_unlock((a3 + 24));
  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v11 = v5;
LABEL_15:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = (v11 << 9) | (8 * v14);
      v16 = *(*(v4 + 48) + v15);
      sub_100008A24(*(v4 + 56) + v15, v24);
      v25 = v16;
      sub_100008A5C(v24, &v26);
LABEL_16:
      sub_100008A94(&v25, &v27);
      v17 = v27;
      if (!v27)
      {

        if (*(v10 + 2))
        {
          __chkstk_darwin(v20);
          os_unfair_lock_lock(v22 + 6);
          sub_100008B04(v21);
          os_unfair_lock_unlock(v22 + 6);
        }

        return;
      }

      sub_100008A5C(&v28, &v25);
      if (!swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

      a1();
      swift_unknownObjectRelease();
      sub_100008CF4(&v25);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100008BF0(0, *(v10 + 2) + 1, 1, v10);
    }

    v19 = *(v10 + 2);
    v18 = *(v10 + 3);
    if (v19 >= v18 >> 1)
    {
      v10 = sub_100008BF0((v18 > 1), v19 + 1, 1, v10);
    }

    sub_100008CF4(&v25);
    *(v10 + 2) = v19 + 1;
    *&v10[8 * v19 + 32] = v17;
  }

  while (v8);
LABEL_7:
  if (v9 <= v5 + 1)
  {
    v12 = v5 + 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v8 = 0;
      v25 = 0;
      v26 = 0;
      v5 = v13;
      goto LABEL_16;
    }

    v8 = *(v4 + 64 + 8 * v11);
    ++v5;
    if (v8)
    {
      v5 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t ObserversTable.enumerate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return _swift_task_switch(sub_100007EC4, 0, 0);
}

void sub_100007EC4()
{
  v1 = *(v0 + 80);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;

  os_unfair_lock_unlock((v1 + 24));
  v3 = 0;
  v4 = *(v2 + 32);
  *(v0 + 144) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 64);
  v8 = _swiftEmptyArrayStorage;
  *(v0 + 96) = _swiftEmptyArrayStorage;
  if (v7)
  {
    while (1)
    {
      v9 = *(v0 + 88);
LABEL_14:
      v14 = (v7 - 1) & v7;
      v15 = (v3 << 9) | (8 * __clz(__rbit64(v7)));
      v16 = *(*(v9 + 48) + v15);
      sub_100008A24(*(v9 + 56) + v15, v0 + 48);
      *(v0 + 32) = v16;
      sub_100008A5C(v0 + 48, v0 + 40);
      v12 = v3;
LABEL_15:
      *(v0 + 104) = v14;
      *(v0 + 112) = v12;
      sub_100008A94(v0 + 32, v0 + 16);
      v17 = *(v0 + 16);
      if (!v17)
      {
        break;
      }

      sub_100008A5C(v0 + 24, v0 + 56);
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v0 + 120) = Strong;
      if (Strong)
      {
        v25 = (*(v0 + 64) + **(v0 + 64));
        v22 = Strong;
        v23 = swift_task_alloc();
        *(v0 + 128) = v23;
        *v23 = v0;
        v23[1] = sub_100008228;

        v25(v22);
        return;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100008BF0(0, *(v8 + 2) + 1, 1, v8);
      }

      v20 = *(v8 + 2);
      v19 = *(v8 + 3);
      if (v20 >= v19 >> 1)
      {
        v8 = sub_100008BF0((v19 > 1), v20 + 1, 1, v8);
      }

      sub_100008CF4(v0 + 56);
      *(v8 + 2) = v20 + 1;
      *&v8[8 * v20 + 32] = v17;
      v7 = *(v0 + 104);
      v3 = *(v0 + 112);
      *(v0 + 96) = v8;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    if (*(v8 + 2))
    {
      v21 = *(v0 + 80);
      *(swift_task_alloc() + 16) = v8;
      os_unfair_lock_lock((v21 + 24));
      sub_100009BBC((v21 + 16));
      os_unfair_lock_unlock((v21 + 24));
    }

    v24 = *(v0 + 8);

    v24();
  }

  else
  {
LABEL_6:
    v10 = ((1 << *(v0 + 144)) + 63) >> 6;
    if (v10 <= (v3 + 1))
    {
      v11 = v3 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 144)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v14 = 0;
        *(v0 + 32) = 0;
        *(v0 + 40) = 0;
        goto LABEL_15;
      }

      v9 = *(v0 + 88);
      v7 = *(v9 + 8 * v13 + 64);
      ++v3;
      if (v7)
      {
        v3 = v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100008228()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100008668;
  }

  else
  {
    v2 = sub_10000833C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10000833C()
{
  swift_unknownObjectRelease();
  sub_100008CF4(v0 + 56);
  v1 = *(v0 + 136);
  for (i = *(v0 + 96); ; *&i[8 * v16 + 32] = v13)
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 112);
    *(v0 + 96) = i;
    if (!v3)
    {
      v6 = ((1 << *(v0 + 144)) + 63) >> 6;
      if (v6 <= (v4 + 1))
      {
        v7 = v4 + 1;
      }

      else
      {
        v7 = ((1 << *(v0 + 144)) + 63) >> 6;
      }

      v8 = v7 - 1;
      while (1)
      {
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v9 >= v6)
        {
          v10 = 0;
          *(v0 + 32) = 0;
          *(v0 + 40) = 0;
          goto LABEL_13;
        }

        v5 = *(v0 + 88);
        v3 = *(v5 + 8 * v9 + 64);
        ++v4;
        if (v3)
        {
          v4 = v9;
          goto LABEL_12;
        }
      }

      __break(1u);
      return;
    }

    v5 = *(v0 + 88);
LABEL_12:
    v10 = (v3 - 1) & v3;
    v11 = (v4 << 9) | (8 * __clz(__rbit64(v3)));
    v12 = *(*(v5 + 48) + v11);
    sub_100008A24(*(v5 + 56) + v11, v0 + 48);
    *(v0 + 32) = v12;
    sub_100008A5C(v0 + 48, v0 + 40);
    v8 = v4;
LABEL_13:
    *(v0 + 104) = v10;
    *(v0 + 112) = v8;
    sub_100008A94(v0 + 32, v0 + 16);
    v13 = *(v0 + 16);
    if (!v13)
    {
      break;
    }

    sub_100008A5C(v0 + 24, v0 + 56);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 120) = Strong;
    if (Strong)
    {
      v21 = (*(v0 + 64) + **(v0 + 64));
      v18 = Strong;
      v19 = swift_task_alloc();
      *(v0 + 128) = v19;
      *v19 = v0;
      v19[1] = sub_100008228;

      v21(v18);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_100008BF0(0, *(i + 2) + 1, 1, i);
    }

    v16 = *(i + 2);
    v15 = *(i + 3);
    if (v16 >= v15 >> 1)
    {
      i = sub_100008BF0((v15 > 1), v16 + 1, 1, i);
    }

    sub_100008CF4(v0 + 56);
    *(i + 2) = v16 + 1;
  }

  if (*(i + 2))
  {
    v17 = *(v0 + 80);
    *(swift_task_alloc() + 16) = i;
    os_unfair_lock_lock((v17 + 24));
    sub_100009BBC((v17 + 16));
    os_unfair_lock_unlock((v17 + 24));
    if (v1)
    {
      return;
    }
  }

  v20 = *(v0 + 8);

  v20();
}

uint64_t sub_100008668()
{
  v1 = v0[12];
  swift_unknownObjectRelease();

  sub_100008CF4((v0 + 7));
  if (*(v1 + 16))
  {
    v2 = v0[12];
    v3 = v0[10];
    *(swift_task_alloc() + 16) = v2;
    os_unfair_lock_lock((v3 + 24));
    sub_100009BBC((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  v4 = v0[1];

  return v4();
}

uint64_t *sub_100008758(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = (a2 + 32);
    do
    {
      v5 = sub_100068914(*v4);
      v7 = v6;
      if (v6)
      {
        v8 = v5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = *v3;
        v13 = *v3;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_10004E708();
          v10 = v13;
        }

        sub_100008A5C(*(v10 + 56) + 8 * v8, &v11);
        sub_10000FC00(v8, v10);
        *v3 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = (v7 & 1) == 0;
      result = sub_100009908(&v11, &qword_1001695B0, &qword_10010CF50);
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100008854@<X0>(uint64_t *a1@<X8>)
{
  result = ObserversTable.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_10000887C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = _swiftEmptyArrayStorage;
  v20 = _swiftEmptyArrayStorage;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (v9 << 9) | (8 * v10);
      v12 = *(*(v2 + 48) + v11);
      sub_100008A24(*(v2 + 56) + v11, &v19);
      v18 = v12;
      sub_100009898(&v18, v16);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_100009908(&v18, &qword_1001695B8, &qword_10010CF58);
      result = sub_100008CF4(&v17);
      if (Strong)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v3 = v20;
  }

  while (v6);
LABEL_6:
  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v14 >= v7)
    {

      *a2 = v3;
      return result;
    }

    v6 = *(v2 + 64 + 8 * v14);
    ++v9;
    if (v6)
    {
      v9 = v14;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100008A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100169588, &qword_10010CDD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008B20@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 24));
  sub_10000887C((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 24));
  v4 = v6;

  *a1 = v4;
  a1[1] = 0;
  return result;
}

void *sub_100008B8C()
{
  v1 = sub_100009378(*v0);

  return v1;
}

char *sub_100008BF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002BE4(&qword_1001695A8, &qword_10010CF48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_100008D28()
{
  result = qword_100169590;
  if (!qword_100169590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169590);
  }

  return result;
}

__n128 sub_100008D8C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100008D98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100008DE0(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008E2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008E4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

char *sub_100008E84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002BE4(&qword_1001695C0, &qword_10010CF60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100008F88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002BE4(&qword_1001695A0, &qword_10010CF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100009094(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100002BE4(&qword_1001695D0, &unk_10010CF70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000091A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  sub_100002BE4(&qword_100169598, &unk_10010CF28);
  v10 = *(type metadata accessor for JSStack.Prerequisite() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for JSStack.Prerequisite() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100009378(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  sub_10000887C((a1 + 16), &v29);
  os_unfair_lock_unlock((a1 + 24));
  v2 = 0;
  v3 = 0;
  v4 = v29;
  v5 = v29 & 0xFFFFFFFFFFFFFF8;
  v6 = _swiftEmptyArrayStorage;
  v7 = &_swiftEmptyArrayStorage[4];
  v8 = v29 & 0xC000000000000001;
  v9 = v29 >> 62;
  v27 = v29 >> 62;
  v28 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 >> 62)
  {
    goto LABEL_4;
  }

LABEL_2:
  result = *(v5 + 16);
  if (v3 < result)
  {
    while (!v8)
    {
      if (v3 >= *(v5 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return result;
      }

      v11 = *(v4 + 8 * v3 + 32);
      result = swift_unknownObjectRetain();
      if (!v2)
      {
        goto LABEL_8;
      }

LABEL_20:
      v23 = __OFSUB__(v2--, 1);
      if (v23)
      {
        goto LABEL_30;
      }

      *v7++ = v11;
      ++v3;
      if (!v9)
      {
        goto LABEL_2;
      }

LABEL_4:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v3 >= result)
      {
        goto LABEL_25;
      }
    }

    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v11 = result;
    if (v2)
    {
      goto LABEL_20;
    }

LABEL_8:
    v12 = v6[3];
    if (((v12 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_31;
    }

    v13 = v8;
    v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    sub_100002BE4(&qword_10016F290, &qword_10010CF40);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v19 = v18 >> 3;
    v16[2] = v15;
    v16[3] = (2 * (v18 >> 3)) | 1;
    v20 = (v16 + 4);
    v21 = v6[3] >> 1;
    if (v6[2])
    {
      v22 = v6 + 4;
      if (v16 != v6 || v20 >= v22 + 8 * v21)
      {
        memmove(v16 + 4, v22, 8 * v21);
      }

      v6[2] = 0;
    }

    v7 = (v20 + 8 * v21);
    v2 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

    v6 = v16;
    v8 = v13;
    v9 = v27;
    v5 = v28;
    goto LABEL_20;
  }

LABEL_25:

  v24 = v6[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v23 = __OFSUB__(v25, v2);
    v26 = v25 - v2;
    if (v23)
    {
      goto LABEL_32;
    }

    v6[2] = v26;
  }

  return v6;
}

void *sub_100009584(void *result)
{
  v1 = result[2];
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = result + 4;
    while (1)
    {
      v7 = *&v6[2 * v3];
      v26 = v7;
      if (v4)
      {
        v8 = v7;
        result = *(&v26 + 1);
        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        sub_100002BE4(&qword_1001695C8, &qword_10010CF68);
        v13 = swift_allocObject();
        v14 = (j__malloc_size(v13) - 32) / 24;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = v13 + 4;
        v16 = v2[3] >> 1;
        v5 = &v13[3 * v16 + 4];
        v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[3 * v16 + 4])
          {
            memmove(v15, v2 + 4, 24 * v16);
          }

          v19 = v26;
          v20 = *(&v26 + 1);
          v2[2] = 0;
        }

        else
        {
          v21 = v26;
          v22 = *(&v26 + 1);
        }

        v2 = v13;
        v9 = __OFSUB__(v17, 1);
        v4 = v17 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v26;
      v5 += 3;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v23 = v2[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v9 = __OFSUB__(v24, v4);
    v25 = v24 - v4;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v25;
  }

  return v2;
}

uint64_t sub_100009760(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 24));
  sub_10000887C((a4 + 16), &v11);
  os_unfair_lock_unlock((a4 + 24));
  v8 = v11;

  if (!a2)
  {
    a3 = 0;
    goto LABEL_19;
  }

  if (!a3)
  {
LABEL_19:
    *a1 = v8;
    a1[1] = a3;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_22;
  }

  v10 = 0;
  while (1)
  {
    if (v8 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (v10 >= result)
      {
LABEL_18:
        a3 = v10;
        goto LABEL_19;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 >= result)
      {
        goto LABEL_18;
      }
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_12;
    }

    if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    result = swift_unknownObjectRetain();
LABEL_12:
    *(a2 + 8 * v10) = result;
    if (a3 - 1 == v10)
    {
      goto LABEL_19;
    }

    if (__OFADD__(++v10, 1))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_100009898(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_1001695B8, &qword_10010CF58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009908(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002BE4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100009968(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_100009A64(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100009BD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100009C40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000B29C(a1);

  *a2 = v3;
  return result;
}

uint64_t LockoutState.description.getter(char a1)
{
  _StringGuts.grow(_:)(20);

  v14._countAndFlagsBits = 0xD000000000000010;
  v14._object = 0x800000010011CC60;
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 8236;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = v14._countAndFlagsBits;
  object = v14._object;
  strcpy(&v14, "LockoutState(");
  v6._object = object;
  String.append(_:)(v6);

  countAndFlagsBits = v14._countAndFlagsBits;
  _StringGuts.grow(_:)(23);

  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x800000010011CC80;
  if ((a1 & 2) != 0)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if ((a1 & 2) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  String.append(_:)(v14);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);

  return countAndFlagsBits;
}

uint64_t LockoutObserverManager.__allocating_init()()
{
  v0 = swift_allocObject();
  LockoutObserverManager.init()();
  return v0;
}

uint64_t *LockoutObserverManager.init()()
{
  v1 = v0;
  v16 = *v0;
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v0[2] = 0;
  v0[3] = 0;
  sub_100002BE4(&qword_100169058, &unk_10010C060);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = &_swiftEmptyDictionarySingleton;
  v0[5] = v7;
  v14 = sub_100006148();

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100006194();
  sub_100002BE4(&qword_100169440, &qword_10010CB50);
  sub_1000061EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v15);
  v0[4] = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10000B2D4(&off_1001595A8);
  sub_10000B3D0(&unk_1001595C8);
  v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = sub_10000AAD8(v8.super.isa, v16);
  if (v9 > 7u)
  {
    v10 = 1;
  }

  else
  {
    v10 = qword_10010D260[v9];
  }

  v11 = SBSGetScreenLockStatus();

  v12 = v10 | 2;
  if (!v11)
  {
    v12 = v10;
  }

  v1[2] = v12;
  sub_10000A190();
  sub_10000A424();
  return v1;
}

void sub_10000A190()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100168E78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182090);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Begin observing Key Bag lockout state changes", v6, 0xCu);
    sub_1000052E4(v7);
  }

  if (qword_100168E10 != -1)
  {
    swift_once();
  }

  v11 = qword_1001695E8;
  v12 = *(v1 + 4);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v2;
  v16[4] = sub_10000C038;
  v16[5] = v14;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100009BD4;
  v16[3] = &unk_10015A9F0;
  v15 = _Block_copy(v16);

  swift_beginAccess();
  notify_register_dispatch(v11, v1 + 6, v12, v15);
  swift_endAccess();
  _Block_release(v15);
}

void sub_10000A424()
{
  v1 = v0;
  v2 = *v0;
  if (qword_100168E78 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182090);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Begin observing Device Lock State changes", v6, 0xCu);
    sub_1000052E4(v7);
  }

  v11 = *(v1 + 4);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v2;
  v15[4] = sub_10000BFFC;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100009BD4;
  v15[3] = &unk_10015A9A0;
  v14 = _Block_copy(v15);

  swift_beginAccess();
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", v1 + 7, v11, v14);
  swift_endAccess();
  _Block_release(v14);
}

uint64_t LockoutObserverManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_10000B028(a1, v2, ObjectType, a2);
}

void LockoutObserverManager.removeObserver(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_10000ADEC(a1, v2, ObjectType, a2);
}

void sub_10000A724()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  sub_10000B2D4(&off_1001595E0);
  sub_10000B3D0(&unk_100159600);
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = sub_10000AAD8(v4.super.isa, v2);
  if (v5 > 7u)
  {
    v6 = 1;
  }

  else
  {
    v6 = qword_10010D260[v5];
  }

  v7 = SBSGetScreenLockStatus();

  v8 = v6 | 2;
  if (!v7)
  {
    v8 = v6;
  }

  v1[2] = v8;
  if (v8 != v3)
  {
    if (qword_100168E78 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v9 = type metadata accessor for Logger();
      sub_100006B0C(v9, qword_100182090);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v12 = 136315394;
        v13 = _typeName(_:qualified:)();
        v15 = sub_100006B44(v13, v14, &v27);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2082;
        v16 = LockoutState.description.getter(v1[2]);
        v18 = sub_100006B44(v16, v17, &v27);

        *(v12 + 14) = v18;
        _os_log_impl(&_mh_execute_header, v10, v11, "%s %{public}s", v12, 0x16u);
        swift_arrayDestroy();
      }

      v19 = v1[5];
      os_unfair_lock_lock((v19 + 24));
      sub_10000887C((v19 + 16), &v27);
      os_unfair_lock_unlock((v19 + 24));
      v20 = v27;
      if (v27 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
        if (v21 < 1)
        {
LABEL_24:

          return;
        }
      }

      else
      {
        v21 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21 < 1)
        {
          goto LABEL_24;
        }
      }

      v22 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_18;
        }

        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v23 = *(v20 + 8 * v22 + 32);
        swift_unknownObjectRetain();
LABEL_18:
        swift_unknownObjectRetain();
        swift_getObjectType();
        v24 = swift_conformsToProtocol2();
        if (v24 && v23)
        {
          v25 = v24;
          ObjectType = swift_getObjectType();
          (*(v25 + 8))(v1, v1[2], ObjectType, v25);
        }

        ++v22;
        swift_unknownObjectRelease_n();
        if (v21 == v22)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      swift_once();
    }
  }
}

uint64_t sub_10000AAD8(uint64_t a1, uint64_t a2)
{
  v2 = MKBGetDeviceLockState();
  v3 = v2;
  result = sub_10000B5CC(v2);
  if (result == 8)
  {
    if (qword_100168E78 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100006B0C(v5, qword_100182090);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315394;
      v10 = _typeName(_:qualified:)();
      v12 = sub_100006B44(v10, v11, &v13);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1026;
      *(v8 + 14) = v3;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Unexpected lock state: %{public}d!", v8, 0x12u);
      sub_1000052E4(v9);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10000AC68(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if (qword_100168E78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182090);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, a4, v8, 0xCu);
    sub_1000052E4(v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000A724();
  }

  return result;
}

void sub_10000ADEC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (qword_100168E78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100182090);
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_unknownObjectRetain();
    sub_100002BE4(&unk_10016F2F0, &unk_10010D220);
    v12 = String.init<A>(describing:)();
    v14 = sub_100006B44(v12, v13, v17);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Removing observer: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = a2[5];
  __chkstk_darwin(v16);
  os_unfair_lock_lock((v15 + 24));
  sub_1000076B8((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
}

uint64_t sub_10000B028(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (qword_100168E78 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006B0C(v7, qword_100182090);
  swift_unknownObjectRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, v20);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    swift_unknownObjectRetain();
    sub_100002BE4(&unk_10016F2F0, &unk_10010D220);
    v14 = String.init<A>(describing:)();
    v16 = sub_100006B44(v14, v15, v20);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Adding observer: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v17 = a2[5];
  __chkstk_darwin(v18);
  os_unfair_lock_lock(v17 + 6);
  sub_1000076D4(&v17[4]);
  os_unfair_lock_unlock(v17 + 6);
  return (*(a4 + 8))(a2, a2[2], a3, a4);
}

uint64_t sub_10000B29C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10000B2D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002BE4(&qword_100169788, &qword_1001119F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10006889C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_10000B3D0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001695F0, &qword_10010CF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000B43C()
{
  result = qword_1001695F8;
  if (!qword_1001695F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001695F8);
  }

  return result;
}

unint64_t sub_10000B494()
{
  result = qword_100169600;
  if (!qword_100169600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169600);
  }

  return result;
}

unint64_t sub_10000B4EC()
{
  result = qword_100169608;
  if (!qword_100169608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169608);
  }

  return result;
}

unint64_t sub_10000B544()
{
  result = qword_100169610;
  if (!qword_100169610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169610);
  }

  return result;
}

uint64_t sub_10000B5CC(uint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

unint64_t sub_10000B5DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002BE4(&qword_100169768, &qword_10010D200);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10006889C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10000B6F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002BE4(&qword_100169758, &unk_10010D1F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10006889C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10000B7F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002BE4(&qword_100169770, &qword_10010D208);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C178(v4, &v13, &qword_100169778, &qword_10010D210);
      v5 = v13;
      v6 = v14;
      result = sub_10006889C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000BF7C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10000B924(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002BE4(&qword_100169780, &qword_10010D218);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10006889C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_10000BA38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002BE4(&qword_100169750, &qword_10010D1E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C178(v4, v13, &unk_1001714D0, &qword_10010D1E8);
      result = sub_100068958(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000BF7C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10000BB74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002BE4(&qword_100169760, &unk_1001119E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10006889C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10000BC78(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_1001697A8, &qword_10010D248);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002BE4(&qword_1001697B0, &unk_10010D250);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000C178(v9, v5, &qword_1001697A8, &qword_10010D248);
      result = sub_10006899C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for JoeColorType();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000BE60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002BE4(&qword_100169798, &qword_10010D238);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_100068A34(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

_OWORD *sub_10000BF7C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000BF8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BFC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000C070(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100002BE4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_10006889C(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_10000C178(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002BE4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C1F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_100009908(a1, &qword_1001695B0, &qword_10010CF50);
    v5 = sub_100068914(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10004E708();
        v10 = v13;
      }

      sub_100008A5C(*(v10 + 56) + 8 * v8, &v15);
      sub_10000FC00(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_100009908(&v15, &qword_1001695B0, &qword_10010CF50);
  }

  else
  {
    sub_100008A5C(a1, &v15);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_10004DDD8(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_10000C300(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 == 2)
  {
    v6 = sub_10006889C(a2, a3);
    v8 = v7;

    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10004E884();
        v11 = v15;
      }

      result = sub_10000FD90(v6, v11);
      *v4 = v11;
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_10004DEF8(a1 & 1, a2, a3, v14);

    *v4 = v16;
  }

  return result;
}

uint64_t sub_10000C3EC()
{
  swift_getKeyPath();
  sub_10000F888();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10000C460@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000F888();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
}

uint64_t sub_10000C4DC(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000F888();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 24) = a1;
}

uint64_t sub_10000C634()
{
  swift_getKeyPath();
  sub_10000F888();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_10000C6BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000F888();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_10000C74C(uint64_t a1)
{
  swift_beginAccess();

  sub_10008C200(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000F888();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10000C864(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

void *sub_10000C8CC()
{
  v1 = v0;
  v2 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  sub_10000FF98();
  if (qword_100168F28 != -1)
  {
    swift_once();
  }

  v0[2] = CKContainer.init(identifier:bundleIdentifierOverride:environment:)();
  v0[3] = 0;
  v0[4] = sub_10000B2D4(_swiftEmptyArrayStorage);
  ObservationRegistrar.init()();
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100181FA0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s initializing Spatial Gallery feed state provider", v8, 0xCu);
    sub_1000052E4(v9);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  sub_1000B8C00(0, 0, v4, &unk_10010D3A8, v14);

  return v1;
}

uint64_t sub_10000CBE8()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_10000CC80;

  return sub_100045D18(v1);
}

uint64_t sub_10000CC80(uint64_t a1)
{
  v3 = *v2;
  v3[4] = a1;
  v3[5] = v1;

  if (v1)
  {
    v4 = v3[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10000CDB4, 0, 0);
  }
}

uint64_t sub_10000CDB4()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CE48, v2, v1);
}

uint64_t sub_10000CE48()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  sub_10000CF18(v2, v3);
  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_10000CF00, 0, 0);
  }
}

uint64_t sub_10000CF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialGalleryFavorite(0) - 8;
  result = __chkstk_darwin(v4);
  v31 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  if (!v8)
  {
    return result;
  }

  v9 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v29 = *(v6 + 72);
  v30 = OBJC_IVAR____TtC17AppleVisionProApp26DiscoveryFeedStateProvider___observationRegistrar;
  while (1)
  {
    v32 = v8;
    v11 = v31;
    sub_10000FB10(v9, v31);
    v13 = *v11;
    v12 = v11[1];

    sub_10000FB74(v11);
    swift_getKeyPath();
    v33 = a2;
    sub_10000F888();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = a2;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a2 + 32);
    v15 = v34;
    *(a2 + 32) = 0x8000000000000000;
    v17 = sub_10006889C(v13, v12);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v15[3] >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v16)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10004E884();
        if (v21)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_10004CCC8(v20, isUniquelyReferenced_nonNull_native);
      v22 = sub_10006889C(v13, v12);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
      if (v21)
      {
LABEL_3:

        v10 = v34;
        *(v34[7] + v17) = 1;
        goto LABEL_4;
      }
    }

    v10 = v34;
    v34[(v17 >> 6) + 8] |= 1 << v17;
    v24 = (v10[6] + 16 * v17);
    *v24 = v13;
    v24[1] = v12;
    *(v10[7] + v17) = 1;
    v25 = v10[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_18;
    }

    v10[2] = v27;
LABEL_4:
    *(a2 + 32) = v10;
    swift_endAccess();
    v33 = a2;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v9 += v29;
    v8 = v32 - 1;
    if (v32 == 1)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10000D220(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  v49 = v2;
  sub_10000F888();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v6 = 0;
  v7 = *(v2 + 32);
  v10 = *(v7 + 64);
  v9 = v7 + 64;
  v8 = v10;
  v47 = *(v49 + 32);
  v11 = 1 << *(v47 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v15 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_34;
        }

        if (v15 >= v14)
        {
          break;
        }

        v13 = *(v9 + 8 * v15);
        ++v6;
        if (v13)
        {
          v6 = v15;
          goto LABEL_9;
        }
      }

      if (qword_100168E28 == -1)
      {
        goto LABEL_16;
      }

LABEL_34:
      swift_once();
LABEL_16:
      v20 = type metadata accessor for Logger();
      sub_100006B0C(v20, qword_100181FA0);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v23 = 136315394;
        v24 = _typeName(_:qualified:)();
        v26 = sub_100006B44(v24, v25, &v48);

        *(v23 + 4) = v26;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_100006B44(a1, a2, &v48);
        _os_log_impl(&_mh_execute_header, v21, v22, "%s Spatial Gallery favorite state false for card %s", v23, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }

LABEL_9:
    v16 = (*(v47 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v13)))));
    v18 = *v16;
    v17 = v16[1];
    if (*v16 == a1 && v17 == a2)
    {
      break;
    }

    v13 &= v13 - 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_21;
    }
  }

  v18 = a1;
LABEL_21:
  swift_getKeyPath();
  v48 = v3;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v3 + 32);
  if (!*(v28 + 16) || (, v29 = sub_10006889C(v18, v17), v31 = v30, , (v31 & 1) == 0))
  {

    if (qword_100168E28 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100006B0C(v40, qword_100181FA0);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v43 = 136315394;
      v44 = _typeName(_:qualified:)();
      v46 = sub_100006B44(v44, v45, &v48);

      *(v43 + 4) = v46;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_100006B44(a1, a2, &v48);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s Spatial Gallery favorite state false for card %s", v43, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  v32 = *(*(v28 + 56) + v29);

  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100006B0C(v33, qword_100181FA0);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v36 = 136315650;
    v37 = _typeName(_:qualified:)();
    v39 = sub_100006B44(v37, v38, &v48);

    *(v36 + 4) = v39;
    *(v36 + 12) = 1024;
    *(v36 + 14) = v32;
    *(v36 + 18) = 2080;
    *(v36 + 20) = sub_100006B44(a1, a2, &v48);
    _os_log_impl(&_mh_execute_header, v34, v35, "%s Spatial Gallery favorite state %{BOOL}d for card %s", v36, 0x1Cu);
    swift_arrayDestroy();
  }

  return v32;
}

uint64_t sub_10000D854(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  swift_getKeyPath();
  v19 = v3;
  sub_10000F888();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v3[3] && (, Task.cancel()(), , v3[3]))
  {
    KeyPath = swift_getKeyPath();
    v18 = a1;
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v3;
    *(&v17 - 1) = 0;
    v19 = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    a1 = v18;
  }

  else
  {
    v3[3] = 0;
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3 & 1;
  *(v14 + 56) = v4;
  *(v14 + 64) = v8;

  v15 = sub_1000EE5F8(0, 0, v11, &unk_10010D360, v14);
  return sub_10000C4DC(v15);
}

uint64_t sub_10000DAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 240) = a6;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 144) = type metadata accessor for SpatialGalleryFavorite(0);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10000DBA4, 0, 0);
}

uint64_t sub_10000DBA4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 240);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  static Date.now.getter();
  *v1 = v4;
  v1[1] = v3;

  static Task<>.checkCancellation()();
  *(v0 + 184) = 0;
  type metadata accessor for MainActor();
  if (v2 == 1)
  {
    *(v0 + 192) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_10000DFB4;
  }

  else
  {
    *(v0 + 216) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_10000E820;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10000DFB4()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];

  swift_getKeyPath();
  v0[11] = v2;
  sub_10000F888();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[12] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 32);
  *(v2 + 32) = 0x8000000000000000;
  sub_10004DEF8(1, v3, v1, isUniquelyReferenced_nonNull_native);
  *(v2 + 32) = v6;
  swift_endAccess();
  v0[13] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return _swift_task_switch(sub_10000E140, 0, 0);
}

uint64_t sub_10000E140(uint64_t a1)
{
  v33 = v1;
  v2 = *(v1 + 184);
  static Task<>.checkCancellation()();
  if (v2)
  {
    if (qword_100168E28 != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 176);
    v4 = *(v1 + 152);
    v5 = type metadata accessor for Logger();
    sub_100006B0C(v5, qword_100181FA0);
    sub_10000FB10(v3, v4);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 176);
    v10 = *(v1 + 152);
    if (v8)
    {
      v30 = *(v1 + 240);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v11 = 136315906;
      v13 = _typeName(_:qualified:)();
      v31 = v9;
      v15 = sub_100006B44(v13, v14, v32);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      if (v30)
      {
        v16 = 6579297;
      }

      else
      {
        v16 = 0x65766F6D6572;
      }

      if (v30)
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0xE600000000000000;
      }

      v18 = sub_100006B44(v16, v17, v32);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2080;
      v19 = sub_10003DCDC();
      v21 = v20;
      sub_10000FB74(v10);
      v22 = sub_100006B44(v19, v21, v32);

      *(v11 + 24) = v22;
      *(v11 + 32) = 2112;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 34) = v23;
      *v12 = v23;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s failed to %s Spatial Gallery favorite: %s; error: %@", v11, 0x2Au);
      sub_100009908(v12, &unk_100169C20, &unk_10010D6B0);

      swift_arrayDestroy();

      v24 = v31;
    }

    else
    {

      sub_10000FB74(v10);
      v24 = v9;
    }

    sub_10000FB74(v24);

    v29 = *(v1 + 8);

    return v29();
  }

  else
  {
    v25 = *(*(v1 + 128) + 16);
    v26 = swift_task_alloc();
    *(v1 + 200) = v26;
    *v26 = v1;
    v26[1] = sub_10000E4E0;
    v27 = *(v1 + 176);

    return sub_10004666C(v27, v25);
  }
}

uint64_t sub_10000E4E0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10000F078;
  }

  else
  {
    v2 = sub_10000E5F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000E5F4()
{
  v20 = v0;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181FA0);
  sub_10000FB10(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  v8 = v0[22];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_10003DCDC();
    v15 = v14;
    sub_10000FB74(v7);
    v16 = sub_100006B44(v13, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s successfully added Spatial Gallery favorite: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000FB74(v7);
  }

  sub_10000FB74(v8);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000E820()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];

  swift_getKeyPath();
  v0[8] = v2;
  sub_10000F888();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[9] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10000C300(2, v3, v1);
  swift_endAccess();
  v0[10] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return _swift_task_switch(sub_10000E990, 0, 0);
}

uint64_t sub_10000E990(uint64_t a1)
{
  v33 = v1;
  v2 = *(v1 + 184);
  static Task<>.checkCancellation()();
  if (v2)
  {
    if (qword_100168E28 != -1)
    {
      swift_once();
    }

    v3 = *(v1 + 176);
    v4 = *(v1 + 152);
    v5 = type metadata accessor for Logger();
    sub_100006B0C(v5, qword_100181FA0);
    sub_10000FB10(v3, v4);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 176);
    v10 = *(v1 + 152);
    if (v8)
    {
      v30 = *(v1 + 240);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v11 = 136315906;
      v13 = _typeName(_:qualified:)();
      v31 = v9;
      v15 = sub_100006B44(v13, v14, v32);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      if (v30)
      {
        v16 = 6579297;
      }

      else
      {
        v16 = 0x65766F6D6572;
      }

      if (v30)
      {
        v17 = 0xE300000000000000;
      }

      else
      {
        v17 = 0xE600000000000000;
      }

      v18 = sub_100006B44(v16, v17, v32);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2080;
      v19 = sub_10003DCDC();
      v21 = v20;
      sub_10000FB74(v10);
      v22 = sub_100006B44(v19, v21, v32);

      *(v11 + 24) = v22;
      *(v11 + 32) = 2112;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 34) = v23;
      *v12 = v23;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s failed to %s Spatial Gallery favorite: %s; error: %@", v11, 0x2Au);
      sub_100009908(v12, &unk_100169C20, &unk_10010D6B0);

      swift_arrayDestroy();

      v24 = v31;
    }

    else
    {

      sub_10000FB74(v10);
      v24 = v9;
    }

    sub_10000FB74(v24);

    v29 = *(v1 + 8);

    return v29();
  }

  else
  {
    v25 = *(*(v1 + 128) + 16);
    v26 = swift_task_alloc();
    *(v1 + 224) = v26;
    *v26 = v1;
    v26[1] = sub_10000ED30;
    v27 = *(v1 + 176);

    return sub_100046B80(v27, v25);
  }
}

uint64_t sub_10000ED30()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10000F388;
  }

  else
  {
    v2 = sub_10000EE44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000EE44()
{
  v20 = v0;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[20];
  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181FA0);
  sub_10000FB10(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[22];
  v8 = v0[20];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v19);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = sub_10003DCDC();
    v15 = v14;
    sub_10000FB74(v8);
    v16 = sub_100006B44(v13, v15, &v19);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s successfully removed Spatial Gallery favorite: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000FB74(v8);
  }

  sub_10000FB74(v7);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10000F078()
{
  v28 = v0;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181FA0);
  sub_10000FB10(v1, v2);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  if (v6)
  {
    v25 = *(v0 + 240);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v9 = 136315906;
    v11 = _typeName(_:qualified:)();
    v26 = v7;
    v13 = sub_100006B44(v11, v12, &v27);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    if (v25)
    {
      v14 = 6579297;
    }

    else
    {
      v14 = 0x65766F6D6572;
    }

    if (v25)
    {
      v15 = 0xE300000000000000;
    }

    else
    {
      v15 = 0xE600000000000000;
    }

    v16 = sub_100006B44(v14, v15, &v27);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v17 = sub_10003DCDC();
    v19 = v18;
    sub_10000FB74(v8);
    v20 = sub_100006B44(v17, v19, &v27);

    *(v9 + 24) = v20;
    *(v9 + 32) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v21;
    *v10 = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s failed to %s Spatial Gallery favorite: %s; error: %@", v9, 0x2Au);
    sub_100009908(v10, &unk_100169C20, &unk_10010D6B0);

    swift_arrayDestroy();

    v22 = v26;
  }

  else
  {

    sub_10000FB74(v8);
    v22 = v7;
  }

  sub_10000FB74(v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10000F388()
{
  v28 = v0;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181FA0);
  sub_10000FB10(v1, v2);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  if (v6)
  {
    v25 = *(v0 + 240);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v9 = 136315906;
    v11 = _typeName(_:qualified:)();
    v26 = v7;
    v13 = sub_100006B44(v11, v12, &v27);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    if (v25)
    {
      v14 = 6579297;
    }

    else
    {
      v14 = 0x65766F6D6572;
    }

    if (v25)
    {
      v15 = 0xE300000000000000;
    }

    else
    {
      v15 = 0xE600000000000000;
    }

    v16 = sub_100006B44(v14, v15, &v27);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2080;
    v17 = sub_10003DCDC();
    v19 = v18;
    sub_10000FB74(v8);
    v20 = sub_100006B44(v17, v19, &v27);

    *(v9 + 24) = v20;
    *(v9 + 32) = 2112;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 34) = v21;
    *v10 = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s failed to %s Spatial Gallery favorite: %s; error: %@", v9, 0x2Au);
    sub_100009908(v10, &unk_100169C20, &unk_10010D6B0);

    swift_arrayDestroy();

    v22 = v26;
  }

  else
  {

    sub_10000FB74(v8);
    v22 = v7;
  }

  sub_10000FB74(v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10000F698()
{

  v1 = OBJC_IVAR____TtC17AppleVisionProApp26DiscoveryFeedStateProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DiscoveryFeedStateProvider(uint64_t a1)
{
  result = qword_1001697E8;
  if (!qword_1001697E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F7A0(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_10000F888()
{
  result = qword_100169930;
  if (!qword_100169930)
  {
    type metadata accessor for DiscoveryFeedStateProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169930);
  }

  return result;
}

uint64_t sub_10000F8E0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000F928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000FA04;

  return sub_10000DAE4(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_10000FA04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000FB10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialGalleryFavorite(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FB74(uint64_t a1)
{
  v2 = type metadata accessor for SpatialGalleryFavorite(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000FC00(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 8 * v3;
      if (v3 < v6 || result >= v15 + 8 * v6 + 8)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000FD90(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + v3);
        v16 = (v14 + v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000FF5C()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

unint64_t sub_10000FF98()
{
  result = qword_100169938;
  if (!qword_100169938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100169938);
  }

  return result;
}

uint64_t sub_10000FFE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010024(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000FA04;

  return sub_10000CBC8(a1, v4, v5, v6);
}

uint64_t sub_1000100F0()
{
  result = static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  qword_100169940 = result;
  *algn_100169948 = v1;
  return result;
}

uint64_t *sub_100010158(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100010244()
{
  v0 = type metadata accessor for Logger();
  sub_100010158(v0, qword_100182018);
  sub_100006B0C(v0, qword_100182018);
  if (qword_100168E18 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100010300()
{
  v0 = type metadata accessor for Logger();
  sub_100010158(v0, qword_100182030);
  sub_100006B0C(v0, qword_100182030);
  if (qword_100168E18 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100010494()
{
  v0 = type metadata accessor for Logger();
  sub_100010158(v0, qword_1001820F0);
  sub_100006B0C(v0, qword_1001820F0);
  if (qword_100168E18 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100010550()
{
  v0 = type metadata accessor for Logger();
  sub_100010158(v0, qword_100182108);
  sub_100006B0C(v0, qword_100182108);
  if (qword_100168E18 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100010674(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100010158(v5, a2);
  sub_100006B0C(v5, a2);
  if (qword_100168E18 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100010740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000107C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeviceInfoView(uint64_t a1)
{
  result = qword_1001699A8;
  if (!qword_1001699A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001087C(uint64_t a1)
{
  result = type metadata accessor for Device();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100010904(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (!has_internal_ui || (result = sub_1000109DC(v2), !v5))
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v6._countAndFlagsBits = Device.osVersion.getter();
        String.append(_:)(v6);

        return 0x534F6E6F69736976;
      }

      else
      {
        return Device.serialNumber.getter();
      }
    }

    else
    {
      result = Device.productName.getter();
      if (!v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000109DC(char a1)
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (!has_internal_ui)
  {
    return 0;
  }

  v3 = [objc_opt_self() standardUserDefaults];
  if (a1)
  {
    if (a1 == 1)
    {
      static UserDefaultUtilities.SharedConstants.myDeviceOSVersionOverride.getter();
    }

    else
    {
      static UserDefaultUtilities.SharedConstants.myDeviceSerialNumberOverride.getter();
    }

    v4 = String._bridgeToObjectiveC()();

    v5 = [v3 stringForKey:v4];
  }

  else
  {
    static UserDefaultUtilities.SharedConstants.myDeviceModelOverride.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v3 stringForKey:v4];
  }

  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t sub_100010B3C(char a1)
{
  v2 = [objc_opt_self() mainBundle];
  if (a1)
  {
    v11 = 0xE000000000000000;
    if (a1 == 1)
    {
      v3 = 0x4E4F4953524556;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xE700000000000000;
    }

    else
    {
      v3 = 0x4E5F4C4149524553;
      v6 = 0xED00005245424D55;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
    }
  }

  else
  {
    v11 = 0xE000000000000000;
    v3 = 0x4C45444F4DLL;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v6 = 0xE500000000000000;
  }

  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v4, v2, v7, *(&v11 - 1))._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100010C9C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v40 = type metadata accessor for AutomationSemantics();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_1001699E0, &qword_10010D428);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - v9;
  v11 = sub_100002BE4(&qword_1001699E8, &qword_10010D430);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v35 = sub_100002BE4(&qword_1001699F0, &qword_10010D438);
  __chkstk_darwin(v35);
  v16 = &v35 - v15;
  v41 = v2;
  sub_100002BE4(&qword_1001699F8, &qword_10010D440);
  sub_100012374();
  List<>.init(content:)();
  v17 = sub_100012C48(&qword_100169A28, &qword_1001699E0, &qword_10010D428, &protocol conformance descriptor for List<A, B>);
  View.listHasStackBehavior()();
  (*(v8 + 8))(v10, v7);
  InsetGroupedListStyle.init()();
  *&v43[0] = v7;
  *(&v43[0] + 1) = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v36;
  View.listStyle<A>(_:)();
  (*(v4 + 8))(v6, v18);
  (*(v12 + 8))(v14, v11);
  LOBYTE(v18) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = &v16[*(sub_100002BE4(&qword_100169A30, &qword_10010D458) + 36)];
  *v27 = v18;
  *(v27 + 1) = v20;
  *(v27 + 2) = v22;
  *(v27 + 3) = v24;
  *(v27 + 4) = v26;
  v27[40] = 0;
  LOBYTE(v18) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v28 = &v16[*(v35 + 36)];
  *v28 = v18;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  memset(v43, 0, 32);
  memset(v42, 0, sizeof(v42));
  v33 = v37;
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_100009908(v42, &qword_100169A38, &qword_10010D460);
  sub_100009908(v43, &qword_100169A38, &qword_10010D460);
  sub_1000124C8();
  View.automationSemantics(_:)();
  (*(v38 + 8))(v33, v40);
  return sub_100009908(v16, &qword_1001699F0, &qword_10010D438);
}

uint64_t sub_1000111B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for DeviceInfoView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v15 = a1;
  v20 = sub_1000114E0(sub_1000126AC, v14, &off_100159640);
  sub_10001298C(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceInfoView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100012798(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_100002BE4(&qword_100169A50, &qword_10010D468);
  sub_100002BE4(&qword_100169A58, &qword_10010D470);
  sub_100012C48(&qword_100169A60, &qword_100169A50, &qword_10010D468, &protocol conformance descriptor for [A]);
  v8 = sub_10000459C(&qword_100169A08, &qword_10010D448);
  v9 = sub_10000459C(&qword_100169A10, &qword_10010D450);
  v10 = sub_100012C48(&qword_100169A18, &qword_100169A08, &qword_10010D448, &protocol conformance descriptor for HStack<A>);
  v11 = sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  swift_getOpaqueTypeConformance2();
  sub_10001287C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10001145C(unsigned __int8 *a1, uint64_t a2)
{
  if (sub_100010904(a2, *a1))
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 == 0xE000000000000000;
  }

  if (v3)
  {

    v5 = 0;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v4 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1000114E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_100047A10(0, v8[2] + 1, 1);
          v8 = v15;
        }

        v10 = v8[2];
        v9 = v8[3];
        if (v10 >= v9 >> 1)
        {
          result = sub_100047A10((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        v8[2] = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_100011638(unsigned __int8 *a1, void (*a2)(char *, uint64_t))
{
  v4 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = sub_100002BE4(&qword_100169A08, &qword_10010D448);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  LODWORD(a1) = *a1;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_100002BE4(&qword_100169A70, &qword_10010D478);
  sub_10001188C(a1, a2, &v9[*(v10 + 44)]);
  v11 = enum case for DynamicTypeSize.accessibility2(_:);
  v12 = type metadata accessor for DynamicTypeSize();
  (*(*(v12 - 8) + 104))(v6, v11, v12);
  sub_1000128D0();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100012C48(&qword_100169A18, &qword_100169A08, &qword_10010D448, &protocol conformance descriptor for HStack<A>);
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v6, &qword_100169A10, &qword_10010D450);
    return sub_100009908(v9, &qword_100169A08, &qword_10010D448);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001188C@<X0>(int a1@<W0>, void (*a2)(char *, uint64_t)@<X1>, char *a3@<X8>)
{
  v105 = a2;
  v101 = a3;
  v86 = a1;
  v100 = type metadata accessor for EnabledTextSelectability();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = (&v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100002BE4(&qword_100169A80, &qword_10010D480);
  __chkstk_darwin(v6 - 8);
  v83 = &v80 - v7;
  v85 = type metadata accessor for Font.TextStyle();
  v82 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100002BE4(&qword_100169A88, &qword_10010D488);
  v96 = *(v97 - 8);
  v9 = __chkstk_darwin(v97);
  v95 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v80 - v11;
  v102 = type metadata accessor for AutomationSemantics();
  v12 = *(v102 - 8);
  v13 = __chkstk_darwin(v102);
  v87 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v80 - v15;
  v94 = sub_100002BE4(&qword_100169A90, &unk_10010D490);
  v91 = *(v94 - 8);
  v17 = __chkstk_darwin(v94);
  v106 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v88 = &v80 - v20;
  __chkstk_darwin(v19);
  v22 = &v80 - v21;
  LODWORD(v104) = a1;
  v110 = sub_100010B3C(a1);
  v111 = v23;
  sub_100012928();
  v24 = Text.init<A>(_:)();
  v26 = v25;
  v110 = v24;
  v111 = v25;
  v28 = v27 & 1;
  v112 = v27 & 1;
  v113 = v29;
  sub_1000FDA28(a1 + 5);
  memset(v109, 0, sizeof(v109));
  memset(v108, 0, sizeof(v108));
  static AutomationSemantics.productPage(elementName:id:parentId:)();

  sub_100009908(v108, &qword_100169A38, &qword_10010D460);
  sub_100009908(v109, &qword_100169A38, &qword_10010D460);
  v103 = v22;
  View.automationSemantics(_:)();
  v30 = *(v12 + 8);
  v89 = v12 + 8;
  v84 = v30;
  v30(v16, v102);
  sub_10001297C(v24, v26, v28);

  v110 = sub_100010904(v105, v104);
  v111 = v31;
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  if (v86 == 2)
  {
    v37 = v82;
    v38 = v81;
    (*(v82 + 104))(v81, enum case for Font.TextStyle.body(_:), v85);
    v39 = enum case for Font.Design.monospaced(_:);
    v40 = type metadata accessor for Font.Design();
    v41 = *(v40 - 8);
    v42 = v83;
    (*(v41 + 104))(v83, v39, v40);
    (*(v41 + 56))(v42, 0, 1, v40);
    static Font.system(_:design:weight:)();
    sub_100009908(v42, &qword_100169A80, &qword_10010D480);
    (*(v37 + 8))(v38, v85);
  }

  else
  {
    static Font.body.getter();
  }

  v43 = Text.font(_:)();
  v45 = v44;
  v47 = v46;

  sub_10001297C(v32, v34, v36 & 1);

  LODWORD(v110) = static HierarchicalShapeStyle.secondary.getter();
  v48 = Text.foregroundStyle<A>(_:)();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_10001297C(v43, v45, v47 & 1);

  v110 = v48;
  v111 = v50;
  v55 = v52 & 1;
  v112 = v52 & 1;
  v113 = v54;
  v56 = sub_100010904(v105, v104);
  v57 = v92;
  *v92 = v56;
  *(v57 + 8) = v58;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v59 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10010D3B0;
  sub_10001298C(v57, v60 + v59, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  v61 = v87;
  sub_1000FCC48(132, v60, v87);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000129F4(v57);
  v62 = v88;
  View.automationSemantics(_:)();
  v84(v61, v102);
  sub_10001297C(v48, v50, v55);

  v63 = v98;
  EnabledTextSelectability.init()();
  v110 = &type metadata for Text;
  v111 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v64 = v107;
  v65 = v94;
  v66 = v100;
  View.textSelection<A>(_:)();
  (*(v99 + 8))(v63, v66);
  v67 = v91;
  v105 = *(v91 + 8);
  v105(v62, v65);
  v68 = *(v67 + 16);
  v69 = v106;
  v68(v106, v103, v65);
  v70 = v96;
  v104 = *(v96 + 16);
  v71 = v95;
  v72 = v64;
  v73 = v97;
  v104(v95, v72, v97);
  v74 = v101;
  v68(v101, v69, v65);
  v75 = sub_100002BE4(&qword_100169AA8, &qword_10010D4A0);
  v76 = &v74[*(v75 + 48)];
  *v76 = 0;
  v76[8] = 1;
  v104(&v74[*(v75 + 64)], v71, v73);
  v77 = *(v70 + 8);
  v77(v107, v73);
  v78 = v105;
  v105(v103, v65);
  v77(v71, v73);
  return (v78)(v106, v65);
}

unint64_t sub_100012374()
{
  result = qword_100169A00;
  if (!qword_100169A00)
  {
    sub_10000459C(&qword_1001699F8, &qword_10010D440);
    sub_10000459C(&qword_100169A08, &qword_10010D448);
    sub_10000459C(&qword_100169A10, &qword_10010D450);
    sub_100012C48(&qword_100169A18, &qword_100169A08, &qword_10010D448, &protocol conformance descriptor for HStack<A>);
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169A00);
  }

  return result;
}

unint64_t sub_1000124C8()
{
  result = qword_100169A40;
  if (!qword_100169A40)
  {
    sub_10000459C(&qword_1001699F0, &qword_10010D438);
    sub_100012554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169A40);
  }

  return result;
}

unint64_t sub_100012554()
{
  result = qword_100169A48;
  if (!qword_100169A48)
  {
    sub_10000459C(&qword_100169A30, &qword_10010D458);
    sub_10000459C(&qword_1001699E8, &qword_10010D430);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_1001699E0, &qword_10010D428);
    sub_100012C48(&qword_100169A28, &qword_1001699E0, &qword_10010D428, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169A48);
  }

  return result;
}

uint64_t sub_1000126CC()
{
  v1 = *(type metadata accessor for DeviceInfoView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Device();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100012798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceInfoView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000127FC(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for DeviceInfoView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_100011638(a1, v4);
}

unint64_t sub_10001287C()
{
  result = qword_100169A68;
  if (!qword_100169A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169A68);
  }

  return result;
}

unint64_t sub_1000128D0()
{
  result = qword_100169A78;
  if (!qword_100169A78)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169A78);
  }

  return result;
}

unint64_t sub_100012928()
{
  result = qword_100169A98;
  if (!qword_100169A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169A98);
  }

  return result;
}

uint64_t sub_10001297C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001298C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000129F4(uint64_t a1)
{
  v2 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DeviceInfoCell(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceInfoCell(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100012BA0()
{
  sub_10000459C(&qword_1001699F0, &qword_10010D438);
  sub_1000124C8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100012C48(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100012C94()
{
  result = qword_100169AB8;
  if (!qword_100169AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169AB8);
  }

  return result;
}

unint64_t sub_100012CEC()
{
  result = qword_100169AC0;
  if (!qword_100169AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169AC0);
  }

  return result;
}

void sub_100012D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v21 = a4;
  v5 = sub_100002BE4(&qword_100169AC8, &qword_10010D590);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_100002BE4(&qword_100169AD0, &qword_10010D598);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - v10;
  swift_getKeyPath();
  type metadata accessor for AttributeScopes.UIKitAttributes();
  sub_10001310C();
  AttributedString.Runs.Run.subscript.getter();

  swift_getKeyPath();
  sub_100013180();
  ScopedAttributeContainer.subscript.getter();

  (*(v9 + 8))(v11, v8);
  v12 = v23[0];
  if (v23[0])
  {
    v13 = [v23[0] fontDescriptor];

    v14 = [v13 symbolicTraits];
    if (a2)
    {

      if (v14)
      {
        AttributedString.Runs.Run.range.getter();
        v15 = Font.italic()();
        sub_1000131D4();
        v16 = AttributedString.subscript.modify();
        v24 = v15;
        sub_100013238();
        AttributedSubstring.subscript.setter();
        v16(v23, 0);
        sub_10001328C(v7);
      }

      if ((v14 & 2) != 0)
      {
        AttributedString.Runs.Run.range.getter();
        v17 = Font.bold()();
        sub_1000131D4();
        v18 = AttributedString.subscript.modify();
        v24 = v17;
        sub_100013238();
        AttributedSubstring.subscript.setter();
        v18(v23, 0);
        sub_10001328C(v7);
        AttributedString.Runs.Run.range.getter();
        v19 = AttributedString.subscript.modify();
        v24 = v21;
        sub_1000132F4();

        AttributedSubstring.subscript.setter();
        v19(v23, 0);

        sub_10001328C(v7);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1000130DC@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.uiKit.getter();
  result = type metadata accessor for AttributeScopes.UIKitAttributes();
  *a1 = result;
  return result;
}

unint64_t sub_10001310C()
{
  result = qword_100169AD8;
  if (!qword_100169AD8)
  {
    type metadata accessor for AttributeScopes.UIKitAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169AD8);
  }

  return result;
}

unint64_t sub_100013180()
{
  result = qword_100169AE0;
  if (!qword_100169AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169AE0);
  }

  return result;
}

unint64_t sub_1000131D4()
{
  result = qword_100169AE8;
  if (!qword_100169AE8)
  {
    sub_10000459C(&qword_100169AC8, &qword_10010D590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169AE8);
  }

  return result;
}

unint64_t sub_100013238()
{
  result = qword_100169AF0;
  if (!qword_100169AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169AF0);
  }

  return result;
}

uint64_t sub_10001328C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100169AC8, &qword_10010D590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000132F4()
{
  result = qword_100169AF8;
  if (!qword_100169AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169AF8);
  }

  return result;
}

void sub_100013348(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100015140();
    sub_10001518C(&qword_100171520, sub_100015140, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100015140(), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_23:
        sub_1000151D4(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_23;
    }

LABEL_18:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_8;
    }

    v15 = [v14 keyWindow];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_1000135E4(void *a1, void *a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pipViewController] = a2;
  v7 = objc_allocWithZone(PGPictureInPictureProxy);
  v8 = a2;
  result = [v7 initWithControlsStyle:4 viewController:v8];
  if (result)
  {
    *&v3[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy] = result;
    *&v3[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_sourceView] = a1;
    *&v3[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_model] = a3;
    v19.receiver = v3;
    v19.super_class = type metadata accessor for MirroringPIPCoordinator();
    v10 = a1;

    v11 = objc_msgSendSuper2(&v19, "init");
    v12 = OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy;
    v13 = *&v11[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy];
    v14 = v11;
    [v13 setDelegate:v14];
    v15 = *&v11[v12];
    v18[4] = sub_1000137A0;
    v18[5] = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1000137B8;
    v18[3] = &unk_10015AB20;
    v16 = _Block_copy(v18);
    v17 = v15;

    [v17 updatePlaybackStateUsingBlock:v16];
    _Block_release(v16);

    sub_10001380C();

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000137A0(id result)
{
  if (result)
  {
    return [result setContentType:5];
  }

  return result;
}

uint64_t sub_1000137B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_10001380C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [objc_opt_self() isPictureInPictureSupported];
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100181F88);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v13);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1026;
    *(v6 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Updating picture and picture with intent to start when application enters background: %{BOOL,public}d", v6, 0x12u);
    sub_1000052E4(v7);
  }

  v11 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy);

  return [v11 setPictureInPictureShouldStartWhenEnteringBackground:v2];
}

id sub_1000139E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MirroringPIPCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100013DC4(void *a1, void (*a2)(uint64_t))
{
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    if (!a1)
    {
      goto LABEL_13;
    }

    v12 = [v5 clientSessionIdentifier];
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      _print_unlocked<A, B>(_:_:)();

      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v15 = 0xE300000000000000;
      v14 = 7104878;
    }

    v16 = sub_100006B44(v14, v15, &v17);

    *(v8 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Transitioning from pip to full screen for session: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (a2)
  {
    a2(1);
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1000140EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014104(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100014114()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100014154()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_model);
  swift_getKeyPath();
  v33 = v1;
  sub_10001518C(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong keyWindow];

    return v4;
  }

  result = [*(v0 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_sourceView) window];
  if (!result)
  {
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 connectedScenes];

    sub_100015140();
    sub_10001518C(&qword_100171520, sub_100015140, &protocol conformance descriptor for NSObject);
    v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100013348(v8);
    v10 = v9;

    if (v10 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v10 + 32);
LABEL_9:
        v12 = v11;

        if (qword_100168E20 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_100006B0C(v13, qword_100181F88);
        v14 = v12;
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();
        v17 = v14;

        if (os_log_type_enabled(v15, v16))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v33 = v20;
          *v18 = 136315394;
          v21 = _typeName(_:qualified:)();
          v23 = sub_100006B44(v21, v22, &v33);

          *(v18 + 4) = v23;
          *(v18 + 12) = 2114;
          *(v18 + 14) = v17;
          *v19 = v17;
          v24 = v17;
          _os_log_impl(&_mh_execute_header, v15, v16, "%s Source view is yet attached to a window, returning the first window of the application: %{public}@", v18, 0x16u);
          sub_1000077E0(v19);

          sub_1000052E4(v20);

          return v24;
        }

        else
        {

          return v14;
        }
      }

      __break(1u);
      goto LABEL_21;
    }

    if (qword_100168E20 == -1)
    {
LABEL_16:
      v25 = type metadata accessor for Logger();
      sub_100006B0C(v25, qword_100181F88);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v33 = v29;
        *v28 = 136315138;
        v30 = _typeName(_:qualified:)();
        v32 = sub_100006B44(v30, v31, &v33);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s There are no windows associated with the application, returning an empty window.", v28, 0xCu);
        sub_1000052E4(v29);
      }

      return [objc_allocWithZone(UIWindow) initWithContentRect:{0.0, 0.0, 0.0, 0.0}];
    }

LABEL_21:
    swift_once();
    goto LABEL_16;
  }

  return result;
}

double sub_10001463C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_sourceView;
  [*(v0 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_sourceView) frame];
  if (CGRectIsEmpty(v21) || (v3 = [*(v0 + v2) superview]) == 0)
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_100181F88);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20 = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = sub_100006B44(v11, v12, &v20);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s The source view does not yet have a frame or superview set, returning the main screen bounds for picture-in-picture", v9, 0xCu);
      sub_1000052E4(v10);
    }

    v14 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_model);
    swift_getKeyPath();
    v20 = v14;
    sub_10001518C(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v16 = Strong, v17 = [Strong keyWindow], v16, v17))
    {
      [v17 bounds];
    }

    else
    {
      v17 = [objc_opt_self() mainScreen];
      [v17 bounds];
    }

    v5 = v18;
  }

  else
  {
    v4 = v3;
    [*(v1 + v2) frame];
    *&v5 = UIAccessibilityConvertFrameToScreenCoordinates(v22, v4);
  }

  return v5;
}

uint64_t sub_100014920(void *a1, char *a2, uint64_t (*a3)(uint64_t))
{
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006B0C(v6, qword_100181F88);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v8, v9))
  {

LABEL_10:
    return a3(1);
  }

  format = a2;
  v10 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  *v10 = 136315394;
  v11 = _typeName(_:qualified:)();
  v13 = sub_100006B44(v11, v12, &v21);

  *(v10 + 4) = v13;
  *(v10 + 12) = 2082;
  if (a1)
  {

    v15 = [v7 clientSessionIdentifier];
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      _print_unlocked<A, B>(_:_:)();

      v17 = 0;
      v18 = 0xE000000000000000;
    }

    else
    {
      v18 = 0xE300000000000000;
      v17 = 7104878;
    }

    v19 = sub_100006B44(v17, v18, &v21);

    *(v10 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, format, v10, 0x16u);
    swift_arrayDestroy();

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100014B74()
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100181F88);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "MirroringPIPCoordinator: setting up picture in picture stop and in transition to full screen view mirroring.", v3, 2u);
  }

  return sub_10002EFE4(2);
}

void sub_100014C64(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v15);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    if (a1)
    {
      v11 = 0x7373696D736944;
    }

    else
    {
      v11 = 0x65726F74736552;
    }

    v12 = sub_100006B44(v11, 0xE700000000000000, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s willStopPictureInPicture, preparing full screen view mirroring for reason (%{public}s)", v7, 0x16u);
    swift_arrayDestroy();
  }

  v13 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_model);
  if (!a1)
  {
    sub_100030DB8(0);
    return;
  }

  swift_getKeyPath();
  v15 = v13;
  sub_10001518C(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v13 + 17) && *(v13 + 17) == 1)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  swift_getKeyPath();
  v15 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000A36D0(0x65746E4920504950, 0xEF64657470757272);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100014FB0(uint64_t a1)
{
  result = swift_getObjectType();
  if (!a1)
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100006B0C(v3, qword_100181F88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      v8 = _typeName(_:qualified:)();
      v10 = sub_100006B44(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s Finished transition from pip to full screen view mirorring", v6, 0xCu);
      sub_1000052E4(v7);
    }

    return sub_10002EFE4(0);
  }

  return result;
}

unint64_t sub_100015140()
{
  result = qword_100169C10;
  if (!qword_100169C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100169C10);
  }

  return result;
}

uint64_t sub_10001518C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MirroringPIPViewController(uint64_t a1)
{
  result = qword_100169C38;
  if (!qword_100169C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000152AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MirroringPIPViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10001535C(uint64_t a1)
{
  swift_weakInit();
  sub_1000154B0();

  AnyView.init<A>(_:)();
  v1 = UIHostingController.init(rootView:)();
  swift_weakAssign();
  v2 = v1;
  result = [v2 view];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    [v2 preferredContentSize];
    v7 = v6;
    v9 = v8;

    if (v7 == 0.0 && v9 == 0.0)
    {
      [v2 setPreferredContentSize:{370.0, 210.0}];
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000154B0()
{
  result = qword_100169C88;
  if (!qword_100169C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169C88);
  }

  return result;
}

void sub_100015504()
{
  swift_getObjectType();
  swift_weakInit();
  _StringGuts.grow(_:)(34);
  _typeName(_:qualified:)();

  v0._object = 0x800000010011D0F0;
  v0._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Int sub_1000155E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000156AC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10001575C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001581C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100015924(*a1);
  *a2 = result;
  return result;
}

void sub_10001584C(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x7265766F63736964;
  v4 = 0x6E696D6165727473;
  v5 = 0xE300000000000000;
  if (*v1 == 2)
  {
    v5 = 0xE900000000000067;
  }

  else
  {
    v4 = 6710895;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000010011C610;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_1000158D0()
{
  result = qword_100169C90;
  if (!qword_100169C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169C90);
  }

  return result;
}

unint64_t sub_100015924(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100159668, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100015970()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForInfoDictionaryKey:v1];

  if (v2)
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
    sub_100002BE4(&qword_100169C98, &qword_100115D60);
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_100015CE4(v11);
  }

  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182048);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unable to load the JET Config from the Bundle.", v7, 2u);
  }

  return sub_10000B5DC(_swiftEmptyArrayStorage);
}

uint64_t sub_100015BAC(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = sub_100015970();
  if (*(v6 + 16) && (v7 = sub_10006889C(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7);

    return v9;
  }

  else
  {

    if (qword_100168E60 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006B0C(v11, qword_100182048);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, a3, v14, 2u);
    }

    return 0;
  }
}

uint64_t sub_100015CE4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100169A38, &qword_10010D460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015D4C(void *a1)
{
  v2 = v1;
  v4 = sub_100002BE4(&qword_100169D50, &qword_10010DA70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  sub_10000524C(a1, a1[3]);
  sub_1000190A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = *(v2 + 16);
  v10[0] = *v2;
  v10[1] = v8;
  v10[2] = *(v2 + 32);
  v11 = *(v2 + 48);
  sub_1000190F4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100015EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
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

uint64_t sub_100015F7C(uint64_t a1)
{
  v2 = sub_1000190A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100015FB8(uint64_t a1)
{
  v2 = sub_1000190A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100015FF4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100017D90(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_10001605C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (!*(v0 + 48))
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 40);
    v9 = 7104878;
    _StringGuts.grow(_:)(59);
    v10._object = 0x800000010011D200;
    v10._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v2;
    v11._object = v1;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 0x746974627573202CLL;
    v12._object = 0xEC000000203A656CLL;
    String.append(_:)(v12);
    if (v7)
    {
      _print_unlocked<A, B>(_:_:)();
      v13 = 0;
      v14 = 0xE000000000000000;
    }

    else
    {
      v14 = 0xE300000000000000;
      v13 = 7104878;
    }

    v19 = v14;
    String.append(_:)(*&v13);

    v20._countAndFlagsBits = 0x203A79646F62202CLL;
    v20._object = 0xE800000000000000;
    String.append(_:)(v20);
    if (v8)
    {
      _print_unlocked<A, B>(_:_:)();
      v9 = 0;
      v21 = 0xE000000000000000;
    }

    else
    {
      v21 = 0xE300000000000000;
    }

    v5 = v9;
    v6 = v21;
    goto LABEL_12;
  }

  if (*(v0 + 48) == 1)
  {
    _StringGuts.grow(_:)(56);
    v4._countAndFlagsBits = 0xD000000000000035;
    v4._object = 0x800000010011D1C0;
    String.append(_:)(v4);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_12:
    String.append(_:)(*&v5);

    goto LABEL_13;
  }

  _StringGuts.grow(_:)(78);
  v15._countAndFlagsBits = 0xD00000000000003DLL;
  v15._object = 0x800000010011D180;
  String.append(_:)(v15);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0x614E656E6F7A202CLL;
  v17._object = 0xEC000000203A656DLL;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v1;
  v18._object = v3;
  String.append(_:)(v18);
LABEL_13:
  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 0;
}

__n128 sub_100016340(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001637C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000163C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100016428(void *a1)
{
  v2 = v1;
  v4 = sub_100002BE4(&qword_100169D30, &qword_10010DA50);
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v7 = sub_100002BE4(&qword_100169D38, &qword_10010DA58);
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v28 = sub_100002BE4(&qword_100169D40, &qword_10010DA60);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v26 - v10;
  v12 = sub_100002BE4(&qword_100169D48, &qword_10010DA68);
  v32 = *(v12 - 8);
  v33 = v12;
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  sub_10000524C(a1, a1[3]);
  sub_100018F50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *(v2 + 16);
  if (*(v2 + 48))
  {
    if (*(v2 + 48) == 1)
    {
      v38 = 1;
      sub_100018FF8();
      v16 = v33;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v27 + 8))(v9, v7);
      return (*(v32 + 8))(v14, v16);
    }

    else
    {
      v41 = 2;
      sub_100018FA4();
      v23 = v33;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = 0;
      v25 = v30;
      v24 = v31;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v24)
      {
        v39 = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v29 + 8))(v6, v25);
      return (*(v32 + 8))(v14, v23);
    }
  }

  else
  {
    v18 = v26;
    v29 = *(v2 + 24);
    v30 = v15;
    v19 = *(v2 + 40);
    v37 = 0;
    sub_10001904C();
    v20 = v33;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v36 = 0;
    v21 = v28;
    v22 = v31;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v22)
    {
      v31 = v19;
      v35 = 1;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v34 = 2;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    }

    (*(v18 + 8))(v11, v21);
    return (*(v32 + 8))(v14, v20);
  }
}

uint64_t sub_10001690C()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 2036625250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_10001695C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100019C7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100016984(uint64_t a1)
{
  v2 = sub_10001904C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000169C0(uint64_t a1)
{
  v2 = sub_10001904C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100016A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000010011D280 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100016AAC(uint64_t a1)
{
  v2 = sub_100018FF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100016AE8(uint64_t a1)
{
  v2 = sub_100018FF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100016B3C()
{
  if (*v0)
  {
    return 0x656D614E656E6F7ALL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_100016B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000010011D280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100016C64(uint64_t a1)
{
  v2 = sub_100018FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100016CA0(uint64_t a1)
{
  v2 = sub_100018FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100016CE4()
{
  v1 = 0x756F72676B636162;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472656C61;
  }
}

uint64_t sub_100016D44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000185C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100016D78(uint64_t a1)
{
  v2 = sub_100018F50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100016DB4(uint64_t a1)
{
  v2 = sub_100018F50();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100016DF0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000186E4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_100016E68(void *a1)
{
  v3 = sub_100002BE4(&qword_100169E70, &qword_10010E5B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000524C(a1, a1[3]);
  sub_100019FDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100017018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7565409 && a2 == 0xE300000000000000)
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

uint64_t sub_1000170A0(uint64_t a1)
{
  v2 = sub_1000183C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000170DC(uint64_t a1)
{
  v2 = sub_1000183C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100017164@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100159770, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000171BC(uint64_t a1)
{
  v2 = sub_10001841C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000171F8(uint64_t a1)
{
  v2 = sub_10001841C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100017234(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x7472656C61;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0x800000010011C640;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x7472656C61;
  }

  if (*a2)
  {
    v6 = 0x800000010011C640;
  }

  else
  {
    v6 = 0xE500000000000000;
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

Swift::Int sub_1000172DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100017360(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000173D0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100017450@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001596E8, *a1);

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

void sub_1000174B0(unint64_t *a1@<X8>)
{
  v2 = 0x800000010011C640;
  v3 = 0x7472656C61;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1000174F0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x7472656C61;
  }
}

uint64_t sub_10001752C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001596E8, v3);

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

uint64_t sub_10001759C(uint64_t a1)
{
  v2 = sub_100018470();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000175D8(uint64_t a1)
{
  v2 = sub_100018470();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100017614(uint64_t a1)
{
  v2 = sub_100019FDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100017650(uint64_t a1)
{
  v2 = sub_100019FDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10001768C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100019D90(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_10001776C@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001597E0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000177C4(uint64_t a1)
{
  v2 = sub_10001A288();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100017800(uint64_t a1)
{
  v2 = sub_10001A288();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10001784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000178BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100017914@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_100017988@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100159850, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000179E0(uint64_t a1)
{
  v2 = sub_10001A2DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100017A1C(uint64_t a1)
{
  v2 = sub_10001A2DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100017A58()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100017A9C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100017AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E656E6F7ALL && a2 == 0xE800000000000000)
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

uint64_t sub_100017B7C(uint64_t a1)
{
  v2 = sub_10001A330();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100017BB8(uint64_t a1)
{
  v2 = sub_10001A330();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100017BF4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10001A030(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_100017C20(void *a1)
{
  v2 = sub_100002BE4(&qword_100169E60, &qword_10010E5A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000524C(a1, a1[3]);
  sub_10001A330();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100017D5C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100017D90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v36 = a2;
  v3 = sub_100002BE4(&qword_100169CA0, &qword_10010DA10);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - v4;
  v6 = sub_100002BE4(&qword_100169CA8, &qword_10010DA18);
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = sub_100002BE4(&qword_100169CB0, &qword_10010DA20);
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  sub_10000524C(a1, a1[3]);
  sub_1000183C8();
  v12 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_1000052E4(a1);
  }

  v41 = v5;
  sub_10000524C(a1, a1[3]);
  sub_10001841C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v35 = v8;
  sub_100018470();
  v13 = v9;
  v14 = v11;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v48 = 0;
  sub_1000184C4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v39;
  if (!v43)
  {
    sub_100018518();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v37;
    if (v43)
    {
      v31 = v43;
      v34 = v42;
      LOBYTE(v42) = 1;
      v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if ((v26 & 1) == 0)
      {
        v32 = v25;
        v33 = 0;
        (*(v24 + 8))(v41, v38);
        (*(v15 + 8))(v35, v6);
        (*(v40 + 8))(v11, v13);
        v20 = 0;
        v18 = 0;
        v17 = 0;
        v21 = 2;
        v19 = v31;
        goto LABEL_6;
      }
    }

    LOBYTE(v42) = 1;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v40;
    if ((v29 & 1) == 0)
    {
      v32 = v27;
      v33 = 0;
      (*(v24 + 8))(v41, v38);
      (*(v15 + 8))(v35, v6);
      (*(v28 + 8))(v11, v13);
      v34 = 0;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      v17 = 0;
      v21 = 1;
      goto LABEL_6;
    }

    sub_10001856C();
    swift_allocError();
    swift_willThrow();
    (*(v24 + 8))(v41, v38);
    (*(v15 + 8))(v35, v6);
    (*(v28 + 8))(v11, v13);
    return sub_1000052E4(a1);
  }

  v33 = 0;
  v34 = v43;
  v18 = v46;
  v17 = v47;
  v19 = v44;
  v20 = v45;
  v32 = v42;
  (*(v37 + 8))(v41, v38);
  (*(v15 + 8))(v35, v6);
  (*(v40 + 8))(v14, v13);
  v21 = 0;
LABEL_6:
  result = sub_1000052E4(a1);
  v22 = v36;
  v23 = v34;
  *v36 = v32;
  v22[1] = v23;
  v22[2] = v19;
  v22[3] = v20;
  v22[4] = v18;
  v22[5] = v17;
  *(v22 + 48) = v21;
  return result;
}

unint64_t sub_1000183C8()
{
  result = qword_100169CB8;
  if (!qword_100169CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CB8);
  }

  return result;
}