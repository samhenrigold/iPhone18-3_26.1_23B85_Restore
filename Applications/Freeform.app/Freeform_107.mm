unint64_t sub_100D8A3C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO7LineEndO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D8A3F0@<X0>(uint64_t *a1@<X8>)
{
  result = TSContentLanguage.Models.LineEnd.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO7LineEndO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877050, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D8A51C()
{
  result = qword_101A1F628;
  if (!qword_101A1F628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.LineEnd, &type metadata for TSContentLanguage.Models.LineEnd, v0, v1);
    atomic_store(result, &qword_101A1F628);
  }

  return result;
}

unint64_t sub_100D8A570(uint64_t a1)
{
  *(a1 + 8) = sub_100D8A5A0();
  result = sub_100D8A5F4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D8A5A0()
{
  result = qword_101A1F630;
  if (!qword_101A1F630)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.LineEnd, &type metadata for TSContentLanguage.Models.LineEnd, v0, v1);
    atomic_store(result, &qword_101A1F630);
  }

  return result;
}

unint64_t sub_100D8A5F4()
{
  result = qword_101A1F638;
  if (!qword_101A1F638)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.LineEnd, &type metadata for TSContentLanguage.Models.LineEnd, v0, v1);
    atomic_store(result, &qword_101A1F638);
  }

  return result;
}

unint64_t sub_100D8A648(uint64_t a1)
{
  result = sub_100B10D1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D8A670(void *a1)
{
  a1[2] = sub_100B2BACC();
  a1[3] = sub_100B2BBC8();
  result = sub_100D8A51C();
  a1[4] = result;
  return result;
}

void sub_100D8A798(void *a1, void *a2)
{
  v3 = v2;
  v62 = _swiftEmptyArrayStorage;
  if ([a1 type] == 7)
  {
    v6 = [a1 visualRangesArray];
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v6;
    sub_100006370(0, &qword_101A04270, NSValue_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_5:
        if (v9 < 1)
        {
          __break(1u);
          goto LABEL_38;
        }

        v52 = a2;
        v53 = v2;
        a2 = 0;
        while (1)
        {
          v10 = (v8 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v8 + 8 * a2 + 32);
          v11 = v10;
          v12 = [v10 rangeValue];
          v14 = v13;
          v15 = type metadata accessor for CRLTextRange();
          v16 = objc_allocWithZone(v15);
          v17 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:v12 caretAffinity:0];
          v18 = v14 >= NSNotFound.getter() ? 0 : v14;
          v19 = *&v17[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
          v3 = v19 + v18;
          if (__OFADD__(v19, v18))
          {
            break;
          }

          if (v3 < v19)
          {
            goto LABEL_22;
          }

          v20 = *&v17[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
          v21 = objc_allocWithZone(v15);
          v22 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
          *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
          *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
          v23 = &v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          *v23 = v19;
          *(v23 + 1) = v3;
          *&v21[v22] = v20;
          v54.receiver = v21;
          v54.super_class = v15;
          objc_msgSendSuper2(&v54, "init");

          swift_getObjectType();
          swift_deallocPartialClassInstance();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          a2 = a2 + 1;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          if (v9 == a2)
          {
            v9 = v62;

            a2 = v52;
            v3 = v53;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    v9 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v24 = [a1 range];
  v26 = v25;
  v27 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v9 = sub_10078CDF0(v24, v26);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_23:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v9 = v62;
LABEL_26:
  if ([a2 tag] == 11)
  {
    if (qword_1019F1570 != -1)
    {
      swift_once();
    }

    v28 = &v55;
    v57 = sub_1005B981C(&unk_101A001E0, " y#");
    v56 = v9;

    sub_100D8AFE4(v3, v9, &v58);
    goto LABEL_33;
  }

  if ([a2 tag] == 10)
  {
    if (qword_1019F1570 == -1)
    {
LABEL_32:
      v28 = &v59;
      v61 = sub_1005B981C(&unk_101A001E0, " y#");
      v60 = v9;

      sub_100D8B22C(v3, v9, &v58);
LABEL_33:
      sub_100005070(v28 + 4);

      return;
    }

LABEL_38:
    swift_once();
    goto LABEL_32;
  }

  v29 = objc_opt_self();
  v30 = [v29 _atomicIncrementAssertCount];
  v58 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v58, "Unknown knob tag.", 17, 2u);
  StaticString.description.getter("knobCenter(for:knob:)", 21, 2);
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPKnobPositioning_i.swift", 88, 2);
  v32 = String._bridgeToObjectiveC()();

  v33 = [v32 lastPathComponent];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v37 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v30;
  v39 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v39;
  v40 = sub_1005CF04C();
  *(inited + 104) = v40;
  *(inited + 72) = v31;
  *(inited + 136) = &type metadata for String;
  v41 = sub_1000053B0();
  *(inited + 112) = v34;
  *(inited + 120) = v36;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v41;
  *(inited + 152) = 43;
  v42 = v58;
  *(inited + 216) = v39;
  *(inited + 224) = v40;
  *(inited + 192) = v42;
  v43 = v31;
  v44 = v42;
  v45 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v46, "Unknown knob tag.", 17, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v47 = swift_allocObject();
  v47[2] = 8;
  v47[3] = 0;
  v47[4] = 0;
  v47[5] = 0;
  v48 = __VaListBuilder.va_list()();
  StaticString.description.getter("knobCenter(for:knob:)", 21, 2);
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPKnobPositioning_i.swift", 88, 2);
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unknown knob tag.", 17, 2);
  v51 = String._bridgeToObjectiveC()();

  [v29 handleFailureInFunction:v49 file:v50 lineNumber:43 isFatal:0 format:v51 args:v48];
}

double sub_100D8AFE4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, CGFloat *a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_layout);
  if (qword_1019F1570 != -1)
  {
LABEL_18:
    swift_once();
  }

  v22[3] = sub_1005B981C(&unk_101A001E0, " y#");
  v22[0] = a2;

  sub_1007A22B0(v6, a2, &v21);
  sub_100005070(v22);
  v6 = v21;
  if (!(v21 >> 62))
  {
    v7 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_20:

    MaxY = 0.0;
    MaxX = 0.0;
    goto LABEL_21;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_4:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *&v6[8 * v8 + 32];
    }

    a2 = v9;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v9 containsStart])
    {
      break;
    }

    ++v8;
    if (v10 == v7)
    {
      goto LABEL_20;
    }
  }

  v11 = [a2 writingDirection];
  [a2 rect];
  if (v11 == 1)
  {
    MaxX = CGRectGetMaxX(*&v12);
    [a2 rect];
    MaxY = CGRectGetMaxY(v23);

    v18 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius);
    v19 = -0.5;
    goto LABEL_22;
  }

  MaxX = CGRectGetMinX(*&v12);
  [a2 rect];
  MaxY = CGRectGetMinY(v24);

LABEL_21:
  v18 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius);
  v19 = 0.5;
LABEL_22:
  result = MaxY + v18 * v19;
  *a3 = MaxX;
  a3[1] = result;
  return result;
}

double sub_100D8B22C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, CGFloat *a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_layout);
  if (qword_1019F1570 != -1)
  {
LABEL_18:
    swift_once();
  }

  v22[3] = sub_1005B981C(&unk_101A001E0, " y#");
  v22[0] = a2;

  sub_1007A22B0(v6, a2, &v21);
  sub_100005070(v22);
  v6 = v21;
  if (!(v21 >> 62))
  {
    v7 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_20:

    MinY = 0.0;
    MinX = 0.0;
    goto LABEL_21;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_4:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *&v6[8 * v8 + 32];
    }

    a2 = v9;
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v9 containsEnd])
    {
      break;
    }

    ++v8;
    if (v10 == v7)
    {
      goto LABEL_20;
    }
  }

  v11 = [a2 writingDirection];
  [a2 rect];
  if (v11 == 1)
  {
    MinX = CGRectGetMinX(*&v12);
    [a2 rect];
    MinY = CGRectGetMinY(v23);

    v18 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius);
    v19 = 0.5;
    goto LABEL_22;
  }

  MinX = CGRectGetMaxX(*&v12);
  [a2 rect];
  MinY = CGRectGetMaxY(v24);

LABEL_21:
  v18 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLWPKnobPositioning_i_knobRadius);
  v19 = -0.5;
LABEL_22:
  result = MinY + v18 * v19;
  *a3 = MinX;
  a3[1] = result;
  return result;
}

double sub_100D8B474(void *a1, uint64_t a2, uint64_t a3, void (*a4)(double *__return_ptr, void *, uint64_t))
{
  type metadata accessor for CRLTextRange();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = qword_1019F1570;
  v8 = a1;
  if (v7 != -1)
  {
    swift_once();
  }

  v12[3] = sub_1005B981C(&unk_101A001E0, " y#");
  v12[0] = v6;

  a4(&v11, v8, v6);
  sub_100005070(v12);
  v9 = v11;

  return v9;
}

id sub_100D8B590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPKnobPositioning_i();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100D8B5F8(void *a1)
{
  result = [a1 isRange];
  if (result)
  {
    return ![a1 type] || objc_msgSend(a1, "type") == 4 || objc_msgSend(a1, "type") == 7;
  }

  return result;
}

void sub_100D8B66C(uint64_t a1, uint64_t a2, char a3)
{
  v14 = a2;
  v4 = sub_1005B981C(&qword_101A003E8, &qword_101481A70);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005B981C(&qword_101A1F7C8, &qword_1014B1F88);
  v7 = sub_1005B981C(&qword_101A14650, &unk_10149EAD0);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  CodingUserInfoKey.init(rawValue:)();
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = v9 + v8;
    v13 = v12 + *(v7 + 48);
    (*(v11 + 32))(v12, v6, v10);
    *(v13 + 24) = &type metadata for Bool;
    *v13 = a3 & 1;
    sub_100BD5C14(v9);
    swift_setDeallocating();
    sub_10000CAAC(v12, &qword_101A14650, &unk_10149EAD0);
    swift_deallocClassInstance();
    dispatch thunk of JSONDecoder.userInfo.setter();
    sub_100B3E8EC();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  }
}

uint64_t sub_100D8BBE8(void *a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v3 = [a1 description];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v12 = 0xD00000000000002ELL;
    v7 = v4;
    v8 = v6;
LABEL_6:
    String.append(_:)(*&v7);

    return v12;
  }

  if (a3 != 1)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = a1;
    v8 = a2;
    goto LABEL_6;
  }

  v12 = 0xD00000000000002FLL;
  String.append(_:)(*&a1);
  return v12;
}

uint64_t sub_100D8BD10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 24);
  if (*(v4 + 16) && (v5 = sub_10000BE7C(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 16 * v5;
    v8 = *v7;
    sub_100024E98(*v7, *(v7 + 8));
  }

  else
  {
    sub_10098EABC(&_mh_execute_header, "getDataForIndirectResource(_:)", 30, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController+ContentLanguage.swift", 106, 2, 157);
    v9 = *(v3 + 16);
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 dataForPasteboardType:v10];

    if (v11)
    {
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_100D8BE1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100D8BE80()
{
  v8[3] = &type metadata for CRLFeatureFlags;
  v8[4] = sub_100004D60();
  LOBYTE(v8[0]) = 8;
  v1 = isFeatureEnabled(_:)();
  sub_100005070(v8);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = [v0 pasteboardTypes];
  if (v2)
  {
    v3 = v2;
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1007AC158(v4);
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  return 1;
}

id sub_100D8BF78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100D8C08C(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_100D8BFAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100D8BBE8(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100D8BFDC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

id sub_100D8C08C(uint64_t a1, unint64_t a2)
{
  v4._object = 0x8000000101567710;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  if (String.hasPrefix(_:)(v4))
  {
    v5 = String.count.getter();
    sub_100D8BFDC(v5, a1, a2);

    v6 = static String._fromSubstring(_:)();
    v8 = v7;

    v9 = type metadata accessor for TSCLVersion();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
    *&v10[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
    v12 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
    *&v10[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
    v13 = sub_100763420(v6, v8);
    v15 = v14;
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      *&v10[v11] = v13;
      *&v10[v12] = v15;
      v26.receiver = v10;
      v26.super_class = v9;
      return objc_msgSendSuper2(&v26, "init");
    }

    swift_deallocPartialClassInstance();
  }

  else
  {
    v18._countAndFlagsBits = 0xD00000000000002FLL;
    v18._object = 0x800000010156F0D0;
    if (String.hasPrefix(_:)(v18))
    {
      v19 = String.count.getter();
      sub_100D8BFDC(v19, a1, a2);

      v20 = static String._fromSubstring(_:)();

      return v20;
    }

    v22._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String.hasPrefix(_:)(v22);

    if (v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = String.count.getter();

      sub_100D8BFDC(v24, a1, a2);

      v25 = static String._fromSubstring(_:)();

      return v25;
    }
  }

  return 0;
}

uint64_t sub_100D8C33C(unint64_t a1)
{
  _s25PasteboardResourceHandlerCMa();
  swift_allocObject();
  _s16ResourceExporterCMa();
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = &off_1018A4368;
  swift_unknownObjectWeakAssign();

  v3 = sub_1008147E0(v2, a1);
  _s25CanvasObjectArrayExporterCMa();
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  _s20CanvasObjectExporterCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(inited + 24) = v5;

  sub_10080C94C(a1);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100B3E940();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v6;
}

uint64_t sub_100D8C6C0(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v12 = type metadata accessor for URL();
  v61 = *(v12 - 8);
  __chkstk_darwin(v12);
  v59 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v58 = &v53 - v15;
  __chkstk_darwin(v16);
  v60 = &v53 - v17;
  v18 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v53 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10000CAAC(v20, &qword_1019F6990, &qword_10146D2F0);
    goto LABEL_16;
  }

  v55 = v11;
  v56 = a1;
  v57 = a2;
  v54 = v22;
  (*(v22 + 32))(v24, v20, v21);
  v25 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v25 + 16));
  v26 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v27 = *&a3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  v53 = v21;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v30 = a3;
    v31 = sub_10001F1A0(v30);

    v32 = *&a3[v26];
    *&a3[v26] = v31;
    v28 = v31;

    v27 = 0;
  }

  v33 = *(v25 + 16);
  v34 = v27;
  os_unfair_lock_unlock(v33);
  v35 = v24;
  sub_10108CAF4(v24, 0, 3, 0, 0, v8);
  v36 = v61;
  v37 = *(v61 + 48);
  v38 = v37(v8, 1, v12);
  a1 = v56;
  if (v38 == 1)
  {
    sub_10000CAAC(v8, &unk_1019F33C0, &unk_101468A60);
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v47 = sub_10108C934();

    v44 = v55;
    v43 = v60;
    if ((v47 & 1) == 0)
    {
      v46 = v54;
      v42 = v61;
      (*(v61 + 8))(v59, v12);
      v45 = 1;
      goto LABEL_13;
    }

    v42 = v61;
    (*(v61 + 32))(v55, v59, v12);
    v45 = 0;
  }

  else
  {

    v39 = *(v36 + 32);
    v40 = v58;
    v39(v58, v8, v12);
    v41 = v55;
    v39(v55, v40, v12);
    v43 = v60;
    v42 = v61;
    v44 = v41;
    v45 = 0;
  }

  v46 = v54;
LABEL_13:
  (*(v42 + 56))(v44, v45, 1, v12);
  if (v37(v44, 1, v12) != 1)
  {
    (*(v42 + 32))(v43, v44, v12);
    v51 = Data.init(contentsOf:options:)();
    (*(v42 + 8))(v43, v12);
    (*(v46 + 8))(v35, v53);
    return v51;
  }

  (*(v46 + 8))(v35, v53);
  sub_10000CAAC(v44, &unk_1019F33C0, &unk_101468A60);
  a2 = v57;
LABEL_16:
  if (qword_1019F22A8 != -1)
  {
    swift_once();
  }

  v48 = static OS_os_log.pasteboard;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v50 = static os_log_type_t.error.getter();
  sub_100005404(v48, &_mh_execute_header, v50, "Failed to create resourceData for assetUUID: %@", 47, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  return 0;
}

void *sub_100D8CD90(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < 0)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    swift_once();
    v21 = static OS_os_log.pasteboard;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v23 = _convertErrorToNSError(_:)();
    *(inited + 56) = sub_100015D4C();
    *(inited + 64) = sub_100D8D894();
    *(inited + 32) = v23;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v24, "Failed to initialize drawables Array model with error: %@", 57, 2, inited);
    sub_10002640C(v98, v99);

    swift_setDeallocating();
    sub_100005070((inited + 32));
    (*(v6 + 1))(v9, v100);
    return 0;
  }

  IndexSet.init(integer:)();
  v10 = [a1 pasteboardTypes];
  if (!v10 || (v103 = a3, v11 = v10, v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v11, sub_1007AC158(v12), v14 = v13, , !v14) || (v15 = String._bridgeToObjectiveC()(), , IndexSet._bridgeToObjectiveC()(v16), v18 = v17, v19 = [a1 dataForPasteboardType:v15 inItemSet:v17], v15, v18, !v19))
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v100 = v6;
  v6 = &type metadata for Any;
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v20 + 16))
  {
    (*(v7 + 8))(v9, v100);

    return 0;
  }

  sub_100064288(v20 + 32, v107);

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v7 + 8))(v9, v100);
    return 0;
  }

  v98 = v105;
  v99 = v106;
  sub_100D8B66C(v105, v106, 0);
  v97 = v26;
  v96 = v7;
  v27 = [a1 pasteboardTypesForItemSet:0];
  if (v27)
  {
    v28 = v27;
    sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = 0;
      v102 = (v29 + 32);
      v32 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v31 >= *(v29 + 16))
        {
          goto LABEL_68;
        }

        v33 = *(&v102->isa + v31);
        v34 = *(v33 + 16);
        v6 = *(v32 + 2);
        v35 = &v6[v34];
        if (__OFADD__(v6, v34))
        {
          goto LABEL_69;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v35 <= *(v32 + 3) >> 1)
        {
          if (!*(v33 + 16))
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v6 <= v35)
          {
            v37 = &v6[v34];
          }

          else
          {
            v37 = v6;
          }

          v32 = sub_100024CBC(isUniquelyReferenced_nonNull_native, v37, 1, v32);
          if (!*(v33 + 16))
          {
LABEL_15:

            if (v34)
            {
              goto LABEL_70;
            }

            goto LABEL_16;
          }
        }

        if ((*(v32 + 3) >> 1) - *(v32 + 2) < v34)
        {
          goto LABEL_71;
        }

        swift_arrayInitWithCopy();

        if (v34)
        {
          v38 = *(v32 + 2);
          v39 = __OFADD__(v38, v34);
          v40 = v38 + v34;
          if (v39)
          {
            goto LABEL_72;
          }

          *(v32 + 2) = v40;
        }

LABEL_16:
        if (v30 == ++v31)
        {
          goto LABEL_33;
        }
      }
    }

    v32 = _swiftEmptyArrayStorage;
LABEL_33:
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  v41 = *(v32 + 2);
  if (v41)
  {
    v42 = 0;
    v102 = @"com.apple.apps.content-language.resource-";
    v43 = v32 + 40;
    v101 = v41;
    v94 = v41 - 1;
    v44 = _swiftEmptyDictionarySingleton;
    v95 = v32 + 40;
LABEL_36:
    v6 = &v43[16 * v42];
    v45 = v42;
    while (1)
    {
      if (v45 >= *(v32 + 2))
      {
        goto LABEL_67;
      }

      v46 = *(v6 - 1);
      v47 = *v6;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51._countAndFlagsBits = v48;
      v51._object = v50;
      LOBYTE(v48) = String.hasPrefix(_:)(v51);

      if (v48)
      {
        v52 = String._bridgeToObjectiveC()();
        v53 = [a1 dataForPasteboardType:v52];

        if (v53)
        {
          v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v61 = v60;

          v93 = swift_isUniquelyReferenced_nonNull_native();
          v107[0] = v44;
          v63 = sub_10000BE7C(v46, v47);
          v64 = v44[2];
          v65 = (v62 & 1) == 0;
          v66 = v64 + v65;
          if (__OFADD__(v64, v65))
          {
            goto LABEL_74;
          }

          if (v44[3] < v66)
          {
            v92 = v62;
            sub_100A96378(v66, v93);
            v67 = sub_10000BE7C(v46, v47);
            if ((v92 & 1) != (v68 & 1))
            {
              goto LABEL_76;
            }

            v63 = v67;
            v44 = v107[0];
            if ((v92 & 1) == 0)
            {
              goto LABEL_55;
            }

LABEL_52:
            v69 = (v44[7] + 16 * v63);
            v70 = *v69;
            v71 = v69[1];
            *v69 = v59;
            v69[1] = v61;
            sub_10002640C(v70, v71);
            goto LABEL_53;
          }

          if (v93)
          {
            v44 = v107[0];
            if (v62)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v92 = v62;
            sub_100AABD40();
            v44 = v107[0];
            if (v92)
            {
              goto LABEL_52;
            }
          }

LABEL_55:
          v44[(v63 >> 6) + 8] |= 1 << v63;
          v72 = (v44[6] + 16 * v63);
          *v72 = v46;
          v72[1] = v47;
          v73 = (v44[7] + 16 * v63);
          *v73 = v59;
          v73[1] = v61;
          v74 = v44[2];
          v39 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v39)
          {
            goto LABEL_75;
          }

          v44[2] = v75;
          goto LABEL_57;
        }

        v54 = sub_10000BE7C(v46, v47);
        if (v55)
        {
          v56 = v54;
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v107[0] = v44;
          if (!v57)
          {
            sub_100AABD40();
            v44 = v107[0];
          }

          sub_10002640C(*(v44[7] + 16 * v56), *(v44[7] + 16 * v56 + 8));
          sub_100BD1158(v56, v44, v58);
LABEL_53:

LABEL_57:
          v42 = v45 + 1;
          v43 = v95;
          if (v94 != v45)
          {
            goto LABEL_36;
          }

          goto LABEL_60;
        }
      }

      ++v45;

      v6 += 16;
      if (v101 == v45)
      {
        goto LABEL_60;
      }
    }
  }

  v44 = _swiftEmptyDictionarySingleton;
LABEL_60:

  _s32PasteboardIndirectResourceGetterCMa();
  v76 = swift_allocObject();
  *(v76 + 16) = a1;
  *(v76 + 24) = v44;
  v77 = *&v103[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  _s16ResourceImporterCMa();
  v78 = swift_allocObject();
  v78[2] = v77;
  v78[3] = v76;
  v78[4] = &off_1018A4358;
  v79 = v97;
  v80 = *(v97 + 16);
  type metadata accessor for CRLContentLanguageBoardItemProvider.SharedContext();
  swift_allocObject();
  v81 = a1;
  v82 = v77;

  v83 = sub_100D5D15C(v80);
  v84 = *(v79 + 16);
  if (v84)
  {
    v102 = v76;
    v108 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v84 > *(v79 + 16))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    else
    {
      v85 = v79 + 32;
      v86 = v103;
      do
      {
        sub_10000630C(v85, v107);
        type metadata accessor for CRLCLImport.Context();
        v87 = swift_allocObject();
        v87[4] = 0;
        v87[5] = 0;
        v87[2] = v78;
        v87[3] = _swiftEmptyArrayStorage;
        sub_10000630C(v107, &v105);
        v88 = type metadata accessor for CRLContentLanguageBoardItemProvider();
        v89 = objc_allocWithZone(v88);
        swift_unknownObjectWeakInit();
        *&v89[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_progress] = 0;
        *&v89[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItem] = 0;
        *&v89[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_error] = 0;
        v89[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_producesValidGeometry] = 1;
        sub_10000630C(&v105, &v89[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_jsonModel]);
        *&v89[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItemFactory] = v86;
        *&v89[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_importContext] = v87;
        *&v89[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_sharedContext] = v83;
        v104.receiver = v89;
        v104.super_class = v88;

        v90 = v86;
        objc_msgSendSuper2(&v104, "init");
        sub_100005070(&v105);
        sub_100005070(v107);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v85 += 40;
        --v84;
      }

      while (v84);

      sub_10002640C(v98, v99);

      (*(v96 + 8))(v9, v100);
      return v108;
    }
  }

  else
  {
    sub_10002640C(v98, v99);

    (*(v96 + 8))(v9, v100);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_100D8D894()
{
  result = qword_1019F8300;
  if (!qword_1019F8300)
  {
    v3 = sub_100015D4C();
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_1019F8300);
  }

  return result;
}

void sub_100D8D8EC(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_100D8D900(a1, a2, a3);
  }
}

void sub_100D8D900(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_100D8D944(uint64_t a1)
{
  v44[1] = a1;
  v2 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  __chkstk_darwin(v2 - 8);
  v46 = v44 - v3;
  v4 = type metadata accessor for UTType();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v45 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v6 - 8);
  v8 = v44 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  __chkstk_darwin(v9);
  v49 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v12 - 8);
  v14 = v44 - v13;
  v15 = type metadata accessor for CRLAssetData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v1;
  type metadata accessor for CRLUSDZItem(0);
  sub_100802624(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = &unk_101A1B880;
    v20 = &unk_10147AB00;
LABEL_3:
    sub_10000CAAC(v14, v19, v20);
    return 0;
  }

  sub_1006008F0(v14, v18);
  v21 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v22 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v23 = *(v22 + 16);
  v24 = v21;
  os_unfair_lock_lock(v23);
  v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v26 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v26)
  {
    v27 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v28 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v29 = v24;
    v30 = sub_10001F1A0(v29);

    v31 = *&v24[v25];
    *&v24[v25] = v30;
    v27 = v30;

    v26 = 0;
  }

  v32 = *(v22 + 16);
  v33 = v26;
  os_unfair_lock_unlock(v32);
  sub_10108CAF4(v18, 0, 3, 0, 0, v8);

  v35 = v50;
  v34 = v51;
  if ((*(v51 + 48))(v8, 1, v50) == 1)
  {
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    sub_10000CAAC(v8, &unk_1019F33C0, &unk_101468A60);
    return 0;
  }

  v36 = v49;
  (*(v34 + 32))(v49, v8, v35);
  v14 = v46;
  v37 = sub_1007AC4D0(0, v46);
  v39 = v47;
  v38 = v48;
  if ((*(v47 + 48))(v14, 1, v48, v37) == 1)
  {
    (*(v34 + 8))(v36, v35);
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    v19 = &unk_1019F8DB0;
    v20 = &unk_101471FC0;
    goto LABEL_3;
  }

  v40 = v45;
  (*(v39 + 32))(v45, v14, v38);
  if (static UTType.== infix(_:_:)())
  {
    v41 = v36;
    v42 = Data.init(contentsOf:options:)();
    (*(v39 + 8))(v40, v38);
    (*(v34 + 8))(v41, v35);
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    return v42;
  }

  (*(v39 + 8))(v40, v38);
  (*(v34 + 8))(v36, v35);
  sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
  return 0;
}

uint64_t sub_100D8E064(uint64_t a1)
{
  v44[1] = a1;
  v2 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  __chkstk_darwin(v2 - 8);
  v46 = v44 - v3;
  v4 = type metadata accessor for UTType();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v45 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v6 - 8);
  v8 = v44 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v50 = v9;
  v51 = v10;
  __chkstk_darwin(v9);
  v49 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v12 - 8);
  v14 = v44 - v13;
  v15 = type metadata accessor for CRLAssetData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v1;
  type metadata accessor for CRLFileItem(0);
  sub_100BEFB3C(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = &unk_101A1B880;
    v20 = &unk_10147AB00;
LABEL_3:
    sub_10000CAAC(v14, v19, v20);
    return 0;
  }

  sub_1006008F0(v14, v18);
  v21 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v22 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v23 = *(v22 + 16);
  v24 = v21;
  os_unfair_lock_lock(v23);
  v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v26 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v26)
  {
    v27 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v28 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v29 = v24;
    v30 = sub_10001F1A0(v29);

    v31 = *&v24[v25];
    *&v24[v25] = v30;
    v27 = v30;

    v26 = 0;
  }

  v32 = *(v22 + 16);
  v33 = v26;
  os_unfair_lock_unlock(v32);
  sub_10108CAF4(v18, 0, 3, 0, 0, v8);

  v35 = v50;
  v34 = v51;
  if ((*(v51 + 48))(v8, 1, v50) == 1)
  {
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    sub_10000CAAC(v8, &unk_1019F33C0, &unk_101468A60);
    return 0;
  }

  v36 = v49;
  (*(v34 + 32))(v49, v8, v35);
  v14 = v46;
  v37 = sub_1007AC4D0(0, v46);
  v39 = v47;
  v38 = v48;
  if ((*(v47 + 48))(v14, 1, v48, v37) == 1)
  {
    (*(v34 + 8))(v36, v35);
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    v19 = &unk_1019F8DB0;
    v20 = &unk_101471FC0;
    goto LABEL_3;
  }

  v40 = v45;
  (*(v39 + 32))(v45, v14, v38);
  if (static UTType.== infix(_:_:)())
  {
    v41 = v36;
    v42 = Data.init(contentsOf:options:)();
    (*(v39 + 8))(v40, v38);
    (*(v34 + 8))(v41, v35);
    sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
    return v42;
  }

  (*(v39 + 8))(v40, v38);
  (*(v34 + 8))(v36, v35);
  sub_100D9D0BC(v18, type metadata accessor for CRLAssetData);
  return 0;
}

uint64_t sub_100D8E784(uint64_t a1)
{
  v43[1] = a1;
  v2 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  __chkstk_darwin(v2 - 8);
  v4 = v43 - v3;
  v5 = type metadata accessor for UTType();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v44 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v7 - 8);
  v9 = v43 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v13 - 8);
  v15 = v43 - v14;
  v16 = type metadata accessor for CRLAssetData(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1;
  type metadata accessor for CRLMovieItem(0);
  sub_100D9CEE0(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000CAAC(v15, &unk_101A1B880, &unk_10147AB00);
  }

  else
  {
    sub_1006008F0(v15, v19);
    v20 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v21 = *&v20[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    v22 = *(v21 + 16);
    v23 = v20;
    os_unfair_lock_lock(v22);
    v24 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v25 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v25)
    {
      v26 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v27 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v28 = v23;
      v29 = sub_10001F1A0(v28);

      v30 = *&v23[v24];
      *&v23[v24] = v29;
      v26 = v29;

      v25 = 0;
    }

    v31 = *(v21 + 16);
    v32 = v25;
    os_unfair_lock_unlock(v31);
    sub_10108CAF4(v19, 0, 3, 0, 0, v9);

    v33 = v11;
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_100D9D0BC(v19, type metadata accessor for CRLAssetData);
      sub_10000CAAC(v9, &unk_1019F33C0, &unk_101468A60);
    }

    else
    {
      v34 = *(v11 + 32);
      v35 = v45;
      v34(v45, v9, v10);
      v36 = sub_1007AC4D0(0, v4);
      v38 = v46;
      v37 = v47;
      if ((*(v46 + 48))(v4, 1, v47, v36) == 1)
      {
        (*(v33 + 8))(v35, v10);
        sub_100D9D0BC(v19, type metadata accessor for CRLAssetData);
        sub_10000CAAC(v4, &unk_1019F8DB0, &unk_101471FC0);
      }

      else
      {
        v39 = v44;
        (*(v38 + 32))(v44, v4, v37);
        if (static UTType.== infix(_:_:)())
        {
          v40 = v33;
          v41 = Data.init(contentsOf:options:)();
          (*(v38 + 8))(v39, v37);
          (*(v40 + 8))(v35, v10);
          sub_100D9D0BC(v19, type metadata accessor for CRLAssetData);
          return v41;
        }

        (*(v38 + 8))(v39, v37);
        (*(v33 + 8))(v35, v10);
        sub_100D9D0BC(v19, type metadata accessor for CRLAssetData);
      }
    }
  }

  return 0;
}

void sub_100D8EE78(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  if ((sub_1011255D0() & 1) == 0)
  {
    sub_100D9D0BC(a1, type metadata accessor for CRLAssetData);
    return;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680, qword_10147AB10);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  sub_10061A030(a1, v12);
  sub_100601130(v12, v9, type metadata accessor for CRLMovieItemAssetData);
  swift_beginAccess();
  sub_100601130(v9, v6, type metadata accessor for CRLMovieItemAssetData);
  CRRegister.wrappedValue.setter();
  sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemAssetData);
  swift_endAccess();

  sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*((swift_isaMask & *Strong) + 0x388))();

    sub_100D9D0BC(a1, type metadata accessor for CRLAssetData);
    if (v15)
    {
      return;
    }
  }

  else
  {
    sub_100D9D0BC(a1, type metadata accessor for CRLAssetData);
  }

  v16 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData) = 0;

  v17 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData) = 0;

  *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial) = 2;
}

void sub_100D8F180(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  __chkstk_darwin(v10);
  v12 = &v17 - v11;
  if ((sub_1011255D0() & 1) == 0)
  {
    sub_10000CAAC(a1, &unk_101A1B880, &unk_10147AB00);
    return;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680, qword_10147AB10);
  CRRegister.wrappedValue.getter();
  swift_endAccess();
  sub_10061A094(a1, &v12[*(v4 + 20)]);
  sub_100601130(v12, v9, type metadata accessor for CRLMovieItemAssetData);
  swift_beginAccess();
  sub_100601130(v9, v6, type metadata accessor for CRLMovieItemAssetData);
  CRRegister.wrappedValue.setter();
  sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemAssetData);
  swift_endAccess();

  sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*((swift_isaMask & *Strong) + 0x388))();

    sub_10000CAAC(a1, &unk_101A1B880, &unk_10147AB00);
    if (v15)
    {
      return;
    }
  }

  else
  {
    sub_10000CAAC(a1, &unk_101A1B880, &unk_10147AB00);
  }

  v16 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData) = 0;
}

void sub_100D8F61C(double a1)
{
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v34[-v8];
  __chkstk_darwin(v10);
  v12 = &v34[-v11];
  if (sub_1011255D0())
  {
    v13 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v14 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v14 != &off_1019F58C8)
    {
      __break(1u);
      goto LABEL_10;
    }

    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    v15 = *&v12[*(v4 + 32)];
    swift_endAccess();

    sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
    if (v15 < a1)
    {
      v12 = objc_opt_self();
      LODWORD(v1) = [v12 _atomicIncrementAssertCount];
      v35 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v35, "Attempting to set startTime after endTime will only lead to misery.", 67, 2u);
      StaticString.description.getter("startTime", 9, 2);
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
      v16 = String._bridgeToObjectiveC()();

      v17 = [v16 lastPathComponent];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v18;

      if (qword_1019F20A0 == -1)
      {
LABEL_5:
        v19 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v1;
        v21 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v21;
        v22 = sub_1005CF04C();
        *(inited + 104) = v22;
        *(inited + 72) = v9;
        *(inited + 136) = &type metadata for String;
        v23 = sub_1000053B0();
        *(inited + 112) = v2;
        *(inited + 120) = v14;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v23;
        *(inited + 152) = 55;
        v24 = v35;
        *(inited + 216) = v21;
        *(inited + 224) = v22;
        *(inited + 192) = v24;
        v25 = v9;
        v26 = v24;
        v27 = static os_log_type_t.error.getter();
        sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v19, &_mh_execute_header, v28, "Attempting to set startTime after endTime will only lead to misery.", 67, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v29 = swift_allocObject();
        v29[2] = 8;
        v29[3] = 0;
        v29[4] = 0;
        v29[5] = 0;
        v30 = __VaListBuilder.va_list()();
        StaticString.description.getter("startTime", 9, 2);
        v31 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Attempting to set startTime after endTime will only lead to misery.", 67, 2);
        v33 = String._bridgeToObjectiveC()();

        [v12 handleFailureInFunction:v31 file:v32 lineNumber:55 isFatal:0 format:v33 args:v30];

        return;
      }

LABEL_10:
      swift_once();
      goto LABEL_5;
    }

    if (**(v1 + v13) == &off_1019F58C8)
    {
      swift_beginAccess();

      CRRegister.wrappedValue.getter();
      swift_endAccess();
      *&v12[*(v4 + 28)] = a1;
      sub_100601130(v12, v9, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v9, v6, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100D8FDFC(double a1)
{
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v34[-v8];
  __chkstk_darwin(v10);
  v12 = &v34[-v11];
  if (sub_1011255D0())
  {
    v13 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v14 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v14 != &off_1019F58C8)
    {
      __break(1u);
      goto LABEL_10;
    }

    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    v15 = *&v12[*(v4 + 28)];
    swift_endAccess();

    sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
    if (v15 > a1)
    {
      v12 = objc_opt_self();
      LODWORD(v1) = [v12 _atomicIncrementAssertCount];
      v35 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v35, "Attempting to set startTime after endTime will only lead to misery.", 67, 2u);
      StaticString.description.getter("endTime", 7, 2);
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
      v16 = String._bridgeToObjectiveC()();

      v17 = [v16 lastPathComponent];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v18;

      if (qword_1019F20A0 == -1)
      {
LABEL_5:
        v19 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v1;
        v21 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(inited + 96) = v21;
        v22 = sub_1005CF04C();
        *(inited + 104) = v22;
        *(inited + 72) = v9;
        *(inited + 136) = &type metadata for String;
        v23 = sub_1000053B0();
        *(inited + 112) = v2;
        *(inited + 120) = v14;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v23;
        *(inited + 152) = 67;
        v24 = v35;
        *(inited + 216) = v21;
        *(inited + 224) = v22;
        *(inited + 192) = v24;
        v25 = v9;
        v26 = v24;
        v27 = static os_log_type_t.error.getter();
        sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v28 = static os_log_type_t.error.getter();
        sub_100005404(v19, &_mh_execute_header, v28, "Attempting to set startTime after endTime will only lead to misery.", 67, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v29 = swift_allocObject();
        v29[2] = 8;
        v29[3] = 0;
        v29[4] = 0;
        v29[5] = 0;
        v30 = __VaListBuilder.va_list()();
        StaticString.description.getter("endTime", 7, 2);
        v31 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
        v32 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Attempting to set startTime after endTime will only lead to misery.", 67, 2);
        v33 = String._bridgeToObjectiveC()();

        [v12 handleFailureInFunction:v31 file:v32 lineNumber:67 isFatal:0 format:v33 args:v30];

        return;
      }

LABEL_10:
      swift_once();
      goto LABEL_5;
    }

    if (**(v1 + v13) == &off_1019F58C8)
    {
      swift_beginAccess();

      CRRegister.wrappedValue.getter();
      swift_endAccess();
      *&v12[*(v4 + 32)] = a1;
      sub_100601130(v12, v9, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v9, v6, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      sub_100D9D0BC(v12, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100D905D0(char a1)
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  result = sub_1011255D0();
  if (result)
  {
    if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680, qword_10147AB10);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v11[*(v3 + 36)] = a1 & 1;
      sub_100601130(v11, v8, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v8, v5, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v8, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100D90940()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D90AD4(char a1)
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  result = sub_1011255D0();
  if (result)
  {
    if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680, qword_10147AB10);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v11[*(v3 + 48)] = a1 & 1;
      sub_100601130(v11, v8, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v8, v5, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v8, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100D90D20()
{
  v1 = OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial;
  LODWORD(v2) = *(v0 + OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial);
  if (v2 == 2)
  {
    v3 = v0;
    v4 = sub_100D91F80();
    v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v5);
    v7 = (*(v6 + 64))(v5, v6);

    if (v7)
    {
      LOBYTE(v2) = *(v3 + v1);
    }

    else
    {
      v8 = sub_100D91F80();
      v9 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
      v10 = *(v8 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
      sub_100020E58((v8 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v9);
      v11 = (*(v10 + 56))(_swiftEmptyDictionarySingleton, v9, v10);

      v2 = [objc_opt_self() videoAssetIsSpatial:v11];
      *(v3 + v1) = v2;
    }
  }

  return v2 & 1;
}

uint64_t sub_100D91088(double a1)
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  __chkstk_darwin(v9);
  v11 = &v13 - v10;
  result = sub_1011255D0();
  if (result)
  {
    if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680, qword_10147AB10);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      *&v11[*(v3 + 24)] = a1;
      sub_100601130(v11, v8, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v8, v5, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v8, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100D91544(float a1)
{
  if (sub_1011255D0())
  {
    v3 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();
      type metadata accessor for CRLMovieItemCRDTData(0);

      sub_1005B981C(&qword_1019F4B60, &unk_10146DB70);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      if (v4 == a1)
      {
        return;
      }

      if (**(v1 + v3) == &off_1019F58C8)
      {

        sub_1005FE170(a1);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_100D91854(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  result = sub_1011255D0();
  if (result)
  {
    if (**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680, qword_10147AB10);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v15 = &v13[*(v5 + 40)];

      *v15 = a1;
      *(v15 + 1) = a2;
      sub_100601130(v13, v10, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v10, v7, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v10, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v13, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

void sub_100D91C5C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_100D91CE4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  result = sub_1011255D0();
  if (result)
  {
    if (**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680, qword_10147AB10);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v15 = &v13[*(v5 + 44)];

      *v15 = a1;
      *(v15 + 1) = a2;
      sub_100601130(v13, v10, type metadata accessor for CRLMovieItemAssetData);
      swift_beginAccess();
      sub_100601130(v10, v7, type metadata accessor for CRLMovieItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100D9D0BC(v10, type metadata accessor for CRLMovieItemAssetData);
      swift_endAccess();

      return sub_100D9D0BC(v13, type metadata accessor for CRLMovieItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

_UNKNOWN ****sub_100D91F80()
{
  v1 = v0;
  v2 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CRLAssetData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v19 = OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData;
  v20 = *&v1[OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData];
  if (!v20)
  {
    if (**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680, qword_10147AB10);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100601130(v4, v7, type metadata accessor for CRLAssetData);
      sub_100D9D0BC(v4, type metadata accessor for CRLMovieItemAssetData);
      v69 = v1;
      v29 = [v1 store];
      v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v30 + 16));
      v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v32 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v32)
      {
        v33 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v68 = type metadata accessor for CRLAssetManager();
        v52 = objc_allocWithZone(v68);
        swift_unknownObjectWeakInit();
        v53 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v54 = swift_allocObject();
        v67 = v29;
        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v54 + 16) = v55;
        atomic_thread_fence(memory_order_acq_rel);
        *&v52[v53] = v54;
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v56 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v52[v56] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        v57 = v67;
        swift_unknownObjectWeakAssign();
        v70.receiver = v52;
        v70.super_class = v68;
        v58 = objc_msgSendSuper2(&v70, "init");

        v59 = *&v29[v31];
        *&v29[v31] = v58;
        v33 = v58;

        v32 = 0;
      }

      v60 = *(v30 + 16);
      v61 = v32;
      os_unfair_lock_unlock(v60);

      v62 = v69;
      v63 = sub_1011255E0();

      sub_100D9D0BC(v7, type metadata accessor for CRLAssetData);
      v51 = *(v62 + v19);
      *(v62 + v19) = v63;
      v28 = v63;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v65 = v10;
  v66 = v16;
  v67 = v15;
  v68 = v4;
  v19 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v21 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  LODWORD(v10) = sub_100020E58((v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v19);
  v4 = v1;
  v22 = *(v21 + 24);
  v69 = v20;
  v22(v19, v21);
  v20 = *(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v20 != &off_1019F58C8)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680, qword_10147AB10);
  v23 = v68;
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v24 = v65;
  sub_100601130(v23, v65, type metadata accessor for CRLAssetData);
  sub_100D9D0BC(v23, type metadata accessor for CRLMovieItemAssetData);
  v26 = v66;
  v25 = v67;
  (*(v66 + 16))(v13, v24, v67);
  sub_100D9D0BC(v24, type metadata accessor for CRLAssetData);
  LOBYTE(v24) = static UUID.== infix(_:_:)();
  v27 = *(v26 + 8);
  v27(v13, v25);
  v27(v18, v25);
  if ((v24 & 1) == 0)
  {
    v20 = objc_opt_self();
    LODWORD(v10) = [v20 _atomicIncrementAssertCount];
    v71 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v71, "Cached CRLAsset instance has not been updated as expected.", 58, 2u);
    StaticString.description.getter("movieAssetPayload", 17, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v36;

    if (qword_1019F20A0 == -1)
    {
LABEL_9:
      v37 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v10;
      v39 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v39;
      v40 = sub_1005CF04C();
      *(inited + 104) = v40;
      *(inited + 72) = v4;
      *(inited + 136) = &type metadata for String;
      v41 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v41;
      *(inited + 152) = 179;
      v42 = v71;
      *(inited + 216) = v39;
      *(inited + 224) = v40;
      *(inited + 192) = v42;
      v43 = v4;
      v44 = v42;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v46, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter("movieAssetPayload", 17, 2);
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Cached CRLAsset instance has not been updated as expected.", 58, 2);
      v51 = String._bridgeToObjectiveC()();

      [v20 handleFailureInFunction:v49 file:v50 lineNumber:179 isFatal:0 format:v51 args:v48];

      v28 = v69;
LABEL_12:

      return v28;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  return v69;
}

char *sub_100D92904()
{
  v1 = type metadata accessor for UUID();
  v58 = *(v1 - 1);
  __chkstk_darwin(v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CRLAssetData(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v0;
  if (**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_1019F58C8)
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();

  sub_1005B981C(&qword_101A28680, qword_10147AB10);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_10000BE14(&v6[*(v4 + 20)], v9, &unk_101A1B880, &unk_10147AB00);
  sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemAssetData);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000CAAC(v9, &unk_101A1B880, &unk_10147AB00);
    return 0;
  }

  v13 = v60;
  sub_1006008F0(v9, v60);
  v14 = OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData;
  v15 = v59;
  v9 = *&v59[OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData];
  if (v9)
  {
    v16 = *&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v17 = *&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v16);
    v18 = *(v17 + 24);
    v19 = v9;
    v18(v16, v17);
    v20 = static UUID.== infix(_:_:)();
    (*(v58 + 1))(v3, v1);
    if (v20)
    {
LABEL_8:
      sub_100D9D0BC(v13, type metadata accessor for CRLAssetData);
      return v9;
    }

    v59 = objc_opt_self();
    LODWORD(v0) = [v59 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62, "Cached CRLAsset instance has not been updated as expected.", 58, 2u);
    StaticString.description.getter("posterImageAssetPayload", 23, 2);
    v1 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v23;

    if (qword_1019F20A0 == -1)
    {
LABEL_7:
      v24 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v0;
      v26 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v26;
      v27 = sub_1005CF04C();
      *(inited + 104) = v27;
      *(inited + 72) = v1;
      *(inited + 136) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 112) = v10;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v28;
      *(inited + 152) = 196;
      v29 = v62;
      *(inited + 216) = v26;
      *(inited + 224) = v27;
      *(inited + 192) = v29;
      v30 = v1;
      v31 = v29;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v33, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v34 = swift_allocObject();
      v34[2] = 8;
      v34[3] = 0;
      v34[4] = 0;
      v34[5] = 0;
      v35 = __VaListBuilder.va_list()();
      StaticString.description.getter("posterImageAssetPayload", 23, 2);
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Cached CRLAsset instance has not been updated as expected.", 58, 2);
      v38 = String._bridgeToObjectiveC()();

      [v59 handleFailureInFunction:v36 file:v37 lineNumber:196 isFatal:0 format:v38 args:v35];

      v13 = v60;
      goto LABEL_8;
    }

LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  v39 = [v59 store];
  v40 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v40 + 16));
  v41 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v42 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v42)
  {
    v43 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v58 = type metadata accessor for CRLAssetManager();
    v44 = objc_allocWithZone(v58);
    swift_unknownObjectWeakInit();
    v45 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v46 = swift_allocObject();
    v47 = v39;
    v48 = swift_slowAlloc();
    *v48 = 0;
    *(v46 + 16) = v48;
    atomic_thread_fence(memory_order_acq_rel);
    *&v44[v45] = v46;
    *&v44[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v49 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v44[v49] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v44[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    v15 = v59;
    swift_unknownObjectWeakAssign();
    v61.receiver = v44;
    v61.super_class = v58;
    v50 = objc_msgSendSuper2(&v61, "init");

    v51 = *&v39[v41];
    *&v39[v41] = v50;
    v43 = v50;

    v42 = 0;
  }

  v52 = *(v40 + 16);
  v53 = v42;
  os_unfair_lock_unlock(v52);

  v54 = v60;
  v9 = sub_1011255E0();

  sub_100D9D0BC(v54, type metadata accessor for CRLAssetData);
  v55 = *&v15[v14];
  *&v15[v14] = v9;
  v56 = v9;

  return v9;
}

double sub_100D9327C()
{
  v0 = sub_100D92904();
  if (!v0)
  {
    return 0.0;
  }

  v1 = v0;
  v2 = [objc_opt_self() sharedPool];
  v3 = [v2 providerForAsset:v1 shouldValidate:1];

  [v3 naturalSize];
  v5 = v4;

  return v5;
}

void sub_100D93348()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100D93574(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

void sub_100D935E4()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100D937E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = type metadata accessor for CRLBoardItemParentAffinity(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A226A0, &unk_10146E610);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v15 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v26 = &v45 - v25;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    v46 = v19;
    v47 = a2;
    v48 = v24;
    v49 = v23;
    v50 = v22;
    v51 = v4;

    v27 = sub_1005FC2E0(1);
    v54 = a4;
    v28 = v27;

    v29 = *(*v28 + 736);
    v52 = v6;
    v30 = v28 + v29;
    swift_beginAccess();
    sub_10000BE14(v30, v14, &unk_101A226A0, &unk_10146E610);

    v31 = v11;
    v32 = sub_1005B981C(&qword_101A01F08, &unk_101498A50);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v14, &unk_101A226A0, &unk_10146E610);
    sub_10000BE14(v31, v26, &qword_1019F6990, &qword_10146D2F0);
    v33 = v31;
    v34 = v28;
    sub_100D9D0BC(v33, type metadata accessor for CRLBoardItemParentAffinity);
    v35 = v52;
    sub_1005FDDBC(v54);
    if (v35)
    {

      sub_10000CAAC(v26, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v45 = v32;
      v52 = 0;
      v54 = v12;
      v36 = v46;
      sub_10000BE14(v47, v46, &qword_1019F6990, &qword_10146D2F0);
      v37 = type metadata accessor for UUID();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v36, 1, v37) == 1)
      {
        v40 = v49;
        sub_10000BE14(v26, v49, &qword_1019F6990, &qword_10146D2F0);
        if (v39(v36, 1, v37) != 1)
        {
          sub_10000CAAC(v36, &qword_1019F6990, &qword_10146D2F0);
        }
      }

      else
      {
        v40 = v49;
        (*(v38 + 32))(v49, v36, v37);
        (*(v38 + 56))(v40, 0, 1, v37);
      }

      v41 = v50;
      sub_10000BE14(v40, v50, &qword_1019F6990, &qword_10146D2F0);
      swift_beginAccess();
      v42 = v48;
      sub_10000BE14(v41, v48, &qword_1019F6990, &qword_10146D2F0);
      v43 = CRRegister.wrappedValue.modify();
      sub_10002C638(v42, v44, &qword_1019F6990, &qword_10146D2F0);
      v43(v53, 0);
      sub_10000CAAC(v41, &qword_1019F6990, &qword_10146D2F0);
      swift_endAccess();

      sub_10000CAAC(v40, &qword_1019F6990, &qword_10146D2F0);
      sub_1011224E8(*(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store), v34);
      sub_10000CAAC(v26, &qword_1019F6990, &qword_10146D2F0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100D93D5C(void *a1)
{
  v2 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3 - 8];
  v5 = type metadata accessor for CRLAssetData(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v14[-v10 - 8];
  if ((sub_1011255D0() & 1) != 0 && a1)
  {
    sub_10000630C(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v14);
    v12 = a1;
    sub_1005B981C(&qword_1019FF208, &qword_10148C780);
    type metadata accessor for CRLAssetBackedAssetStorage(0);
    if (swift_dynamicCast())
    {
      sub_100601130(v13 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v8, type metadata accessor for CRLAssetData);

      sub_1006008F0(v8, v11);
      sub_100601130(v11, v4, type metadata accessor for CRLAssetData);
      (*(v6 + 56))(v4, 0, 1, v5);
      sub_100D8F180(v4);

      sub_100D9D0BC(v11, type metadata accessor for CRLAssetData);
    }

    else
    {
      (*(v6 + 56))(v4, 1, 1, v5);
      sub_100D8F180(v4);
    }
  }
}

void sub_100D94028(void *a1, void (*a2)(void, void, void, void, __n128), int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, double a10, double a11)
{
  v133 = a8;
  v134 = a6;
  v135 = a7;
  v136 = a5;
  v132 = a4;
  v131 = a3;
  v130 = a2;
  v16 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v16);
  v128 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v129 = &v112 - v19;
  __chkstk_darwin(v20);
  v22 = &v112 - v21;
  v23 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v23 - 8);
  v125 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v127 = &v112 - v26;
  __chkstk_darwin(v27);
  v29 = (&v112 - v28);
  __chkstk_darwin(v30);
  v126 = &v112 - v31;
  __chkstk_darwin(v32);
  v34 = &v112 - v33;
  v139 = type metadata accessor for CRLAssetData(0);
  v35 = *(v139 - 8);
  __chkstk_darwin(v139);
  v124 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v138 = &v112 - v38;
  __chkstk_darwin(v39);
  v123 = (&v112 - v40);
  __chkstk_darwin(v41);
  v43 = &v112 - v42;
  __chkstk_darwin(v44);
  v140 = &v112 - v45;
  v137 = v11;
  if (sub_1011255D0())
  {
    v122 = v16;
    if (qword_1019F2878 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for UUID();
    v47 = sub_1005EB3DC(v46, qword_101AD8F08);
    v48 = *(v46 - 8);
    v49 = v140;
    v120 = *(v48 + 16);
    v121 = v47;
    v119 = v48 + 16;
    v120(v140);
    v50 = v139;
    v51 = (v49 + *(v139 + 20));
    *v51 = 0;
    v51[1] = 0xE000000000000000;
    *(v49 + v50[6]) = _swiftEmptyDictionarySingleton;
    if (!a1)
    {
      goto LABEL_13;
    }

    v115 = v46;
    sub_10000630C(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v142);
    v114 = a1;
    sub_1005B981C(&qword_1019FF208, &qword_10148C780);
    type metadata accessor for CRLAssetBackedAssetStorage(0);
    if (!swift_dynamicCast())
    {
      v113 = v43;
      v116 = v29;
      v117 = v35;
      v118 = v22;
      (*(v35 + 56))(v126, 1, 1, v139);
      v112 = objc_opt_self();
      LODWORD(v29) = [v112 _atomicIncrementAssertCount];
      v142[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v142, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("setAssetMedia(movieData:posterImageData:posterTime:startTime:endTime:isAudioOnly:title:creator:isLooping:)", 106, 2);
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
      v54 = String._bridgeToObjectiveC()();

      v55 = [v54 lastPathComponent];

      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_8;
    }

    v52 = v126;
    sub_100601130(v141 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v126, type metadata accessor for CRLAssetData);

    v50 = v139;
    (*(v35 + 56))(v52, 0, 1, v139);
    v53 = v140;
    while (1)
    {
      sub_10003DFF8(v52, v34, &unk_101A1B880, &unk_10147AB00);
      if ((*(v35 + 48))(v34, 1, v50) == 1)
      {

        sub_10000CAAC(v34, &unk_101A1B880, &unk_10147AB00);
      }

      else
      {
        sub_100D9D0BC(v53, type metadata accessor for CRLAssetData);
        sub_1006008F0(v34, v43);
        sub_100601130(v43, v53, type metadata accessor for CRLAssetData);
        v74 = v123;
        sub_100601130(v43, v123, type metadata accessor for CRLAssetData);
        sub_100D8EE78(v74);
        v50 = v139;

        sub_100D9D0BC(v43, type metadata accessor for CRLAssetData);
      }

      v46 = v115;
LABEL_13:
      v34 = v138;
      (v120)(v138, v121, v46);
      v75 = &v34[v50[5]];
      *v75 = 0;
      *(v75 + 1) = 0xE000000000000000;
      *&v34[v50[6]] = _swiftEmptyDictionarySingleton;
      v76 = v50;
      v77 = v130;
      if (v130)
      {
        sub_10000630C(v130 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v142);
        v50 = v77;
        sub_1005B981C(&qword_1019FF208, &qword_10148C780);
        type metadata accessor for CRLAssetBackedAssetStorage(0);
        if (swift_dynamicCast())
        {
          v78 = v127;
          sub_100601130(v141 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v127, type metadata accessor for CRLAssetData);

          v76 = v139;
          v130 = *(v35 + 56);
          v130(v78, 0, 1, v139);
        }

        else
        {
          v123 = v50;
          v116 = v29;
          v117 = v35;
          v118 = v22;
          v130 = *(v35 + 56);
          v130(v127, 1, 1, v139);
          v79 = objc_opt_self();
          LODWORD(v126) = [v79 _atomicIncrementAssertCount];
          v142[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v142, "invalid nil found when unwrapping value", 39, 2u);
          StaticString.description.getter("setAssetMedia(movieData:posterImageData:posterTime:startTime:endTime:isAudioOnly:title:creator:isLooping:)", 106, 2);
          v80 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
          v81 = String._bridgeToObjectiveC()();

          v82 = [v81 lastPathComponent];

          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v86 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v126;
          v88 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v88;
          v89 = sub_1005CF04C();
          *(inited + 104) = v89;
          *(inited + 72) = v80;
          *(inited + 136) = &type metadata for String;
          v90 = sub_1000053B0();
          *(inited + 112) = v83;
          *(inited + 120) = v85;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v90;
          *(inited + 152) = 265;
          v91 = v142[0];
          *(inited + 216) = v88;
          *(inited + 224) = v89;
          *(inited + 192) = v91;
          v92 = v80;
          v93 = v91;
          v94 = static os_log_type_t.error.getter();
          sub_100005404(v86, &_mh_execute_header, v94, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v95 = static os_log_type_t.error.getter();
          sub_100005404(v86, &_mh_execute_header, v95, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v96 = swift_allocObject();
          v96[2] = 8;
          v96[3] = 0;
          v96[4] = 0;
          v96[5] = 0;
          v97 = __VaListBuilder.va_list()();
          StaticString.description.getter("setAssetMedia(movieData:posterImageData:posterTime:startTime:endTime:isAudioOnly:title:creator:isLooping:)", 106, 2);
          v98 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
          v99 = String._bridgeToObjectiveC()();

          StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
          v100 = String._bridgeToObjectiveC()();

          [v79 handleFailureInFunction:v98 file:v99 lineNumber:265 isFatal:0 format:v100 args:v97];

          v34 = v138;
          v76 = v139;
          v35 = v117;
          v22 = v118;
          v29 = v116;
          v78 = v127;
          v50 = v123;
        }

        sub_10003DFF8(v78, v29, &unk_101A1B880, &unk_10147AB00);
        if ((*(v35 + 48))(v29, 1, v76) == 1)
        {

          sub_10000CAAC(v29, &unk_101A1B880, &unk_10147AB00);
        }

        else
        {
          sub_100D9D0BC(v34, type metadata accessor for CRLAssetData);
          v101 = v29;
          v102 = v124;
          sub_1006008F0(v101, v124);
          sub_100601130(v102, v34, type metadata accessor for CRLAssetData);
          v103 = v125;
          sub_100601130(v102, v125, type metadata accessor for CRLAssetData);
          v130(v103, 0, 1, v76);
          sub_100D8F180(v103);

          sub_100D9D0BC(v102, type metadata accessor for CRLAssetData);
        }
      }

      sub_100601130(v140, v22, type metadata accessor for CRLAssetData);
      v29 = v122;
      v104 = v122[5];
      sub_100601130(v34, &v22[v104], type metadata accessor for CRLAssetData);
      (*(v35 + 56))(&v22[v104], 0, 1, v76);
      *&v22[v29[6]] = a9;
      *&v22[v29[7]] = a10;
      *&v22[v29[8]] = a11;
      v22[v29[9]] = v131 & 1;
      v105 = v133 & 1;
      v106 = &v22[v29[10]];
      v58 = v135;
      v56 = v136;
      *v106 = v132;
      v106[1] = v56;
      v107 = &v22[v29[11]];
      *v107 = v134;
      v107[1] = v58;
      v22[v29[12]] = v105;
      *&v22[v29[13]] = _swiftEmptyDictionarySingleton;
      v108 = v137;
      if (**(v137 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
      {
        break;
      }

      __break(1u);
LABEL_26:
      swift_once();
LABEL_8:
      v59 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_10146CA70;
      *(v60 + 56) = &type metadata for Int32;
      *(v60 + 64) = &protocol witness table for Int32;
      *(v60 + 32) = v29;
      v61 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v60 + 96) = v61;
      v62 = sub_1005CF04C();
      *(v60 + 104) = v62;
      *(v60 + 72) = v50;
      *(v60 + 136) = &type metadata for String;
      v63 = sub_1000053B0();
      *(v60 + 112) = v56;
      *(v60 + 120) = v58;
      *(v60 + 176) = &type metadata for UInt;
      *(v60 + 184) = &protocol witness table for UInt;
      *(v60 + 144) = v63;
      *(v60 + 152) = 259;
      v64 = v142[0];
      *(v60 + 216) = v61;
      *(v60 + 224) = v62;
      *(v60 + 192) = v64;
      v65 = v50;
      v66 = v64;
      v67 = static os_log_type_t.error.getter();
      sub_100005404(v59, &_mh_execute_header, v67, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v60);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v68 = static os_log_type_t.error.getter();
      sub_100005404(v59, &_mh_execute_header, v68, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v69 = swift_allocObject();
      v69[2] = 8;
      v69[3] = 0;
      v69[4] = 0;
      v69[5] = 0;
      v70 = __VaListBuilder.va_list()();
      StaticString.description.getter("setAssetMedia(movieData:posterImageData:posterTime:startTime:endTime:isAudioOnly:title:creator:isLooping:)", 106, 2);
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
      v72 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v73 = String._bridgeToObjectiveC()();

      [v112 handleFailureInFunction:v71 file:v72 lineNumber:259 isFatal:0 format:v73 args:v70];

      v50 = v139;
      v53 = v140;
      v35 = v117;
      v22 = v118;
      v29 = v116;
      v43 = v113;
      v52 = v126;
    }

    v109 = v129;
    sub_100601130(v22, v129, type metadata accessor for CRLMovieItemAssetData);
    swift_beginAccess();
    sub_100601130(v109, v128, type metadata accessor for CRLMovieItemAssetData);

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.setter();
    sub_100D9D0BC(v109, type metadata accessor for CRLMovieItemAssetData);
    swift_endAccess();

    sub_100D9D0BC(v22, type metadata accessor for CRLMovieItemAssetData);
    sub_100D9D0BC(v138, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v140, type metadata accessor for CRLAssetData);
    v110 = *(v108 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData);
    *(v108 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData) = 0;

    v111 = *(v108 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData);
    *(v108 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData) = 0;

    *(v108 + OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial) = 2;
  }
}

char *sub_100D953C8(char *result)
{
  if (**&result[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    v1 = result;
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);
    v2 = v1;

    sub_1005B981C(&qword_1019F4B60, &unk_10146DB70);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100D954D8()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);

    sub_1005B981C(&qword_1019F4B60, &unk_10146DB70);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_100D958D8(void *a1)
{
  sub_100B4100C(a1);
  type metadata accessor for CRLMovieItem(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    if (**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();
      type metadata accessor for CRLMovieItemCRDTData(0);
      v7 = a1;

      sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
      CRRegister.wrappedValue.getter();
      v6 = LODWORD(v8);
      swift_endAccess();

      if (sub_1011255D0())
      {
        if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
        {
LABEL_13:
          __break(1u);
          return;
        }

        if (v9)
        {
          v6 = 1065353216;
        }

        swift_beginAccess();
        v8 = *&v6;

        CRRegister.wrappedValue.setter();
        swift_endAccess();
      }

      if (**(v4 + v5) == &off_1019F58C8)
      {
        swift_beginAccess();

        sub_1005B981C(&qword_1019F4B60, &unk_10146DB70);
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        sub_100D91544(v8);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

char *sub_100D95C20()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100D92904();
  if (result)
  {
    v5 = *&result[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v6 = *&result[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    v7 = result;
    sub_100020E58(&result[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v5);
    LOBYTE(v5) = (*(v6 + 64))(v5, v6);

    return (v5 & 1);
  }

  else if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    v8 = v3[*(v1 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    return ((v8 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100D95E44()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100D96090()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    v4 = v3[*(v1 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    if (v4 == 1)
    {
      v5 = &unk_101A1F870;
      v6 = off_10182F708;
    }

    else
    {
      v5 = &unk_101A1F868;
      v6 = off_10182F8D0;
    }

    sub_100006370(0, v5, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_100D96258()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    v4 = v3[*(v1 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
    if (v4 == 1)
    {
      v5 = &unk_101A1F860;
      v6 = off_10182F710;
    }

    else
    {
      v5 = &unk_101A1F858;
      v6 = off_10182F8D8;
    }

    sub_100006370(0, v5, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_100D96404()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {

    v1 = sub_1005FC2E0(0);

    sub_1011224E8(*(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store), v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D964B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v55 - v8;
  v10 = sub_1005B981C(&qword_101A1F820, &qword_1014B20A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  type metadata accessor for CRLMovieItem(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    swift_unknownObjectRetain();
    v15 = sub_1011F0C64();
    v16 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v16 == &off_1019F58C8)
    {
      v55 = v4;
      v56 = v15;
      v57 = a1;
      v17 = qword_101AD5F20;
      swift_beginAccess();
      sub_100601130(v16 + v17, v9, type metadata accessor for CRLMovieItemCRDTData);
      v18 = *(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v18 == &off_1019F58C8)
      {
        v19 = qword_101AD5F20;
        swift_beginAccess();
        sub_100601130(v18 + v19, v6, type metadata accessor for CRLMovieItemCRDTData);
        sub_100D9D074(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData, "AW<");
        CRStruct_4.actionUndoingDifference(from:)();
        sub_100D9D0BC(v6, type metadata accessor for CRLMovieItemCRDTData);
        sub_100D9D0BC(v9, type metadata accessor for CRLMovieItemCRDTData);
        v20 = sub_1005B981C(&qword_101A1F828, &qword_1014B20A8);
        if ((*(*(v20 - 1) + 48))(v12, 1, v20) == 1)
        {
          sub_10000CAAC(v12, &qword_101A1F820, &qword_1014B20A0);
          v58 = 0uLL;
          v59 = 0;
          v60 = 1;
        }

        else
        {
          v21 = v20[12];
          v22 = v20[16];
          v23 = v20[20];
          v60 = v20;
          v24 = sub_10002C58C(&v58);
          v25 = v20[12];
          v26 = v20[16];
          v27 = v20[20];
          sub_10003DFF8(v12, v24, &qword_101A1F840, &qword_1014B20C0);
          sub_10003DFF8(&v12[v21], v24 + v25, &qword_101A13F60, &qword_1014B73E0);
          sub_10003DFF8(&v12[v22], v24 + v26, &qword_101A1F848, &qword_1014B20C8);
          sub_10003DFF8(&v12[v23], v24 + v27, &qword_101A1F850, &unk_1014B20D0);
        }

        v28 = v56;
        swift_beginAccess();
        sub_100BC1DF4(&v58, 4);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v30 = objc_opt_self();
  v31 = [v30 _atomicIncrementAssertCount];
  v58.n128_u64[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v58, "Tried to generate undo from mismatched type", 43, 2u);
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
  v33 = String._bridgeToObjectiveC()();

  v34 = [v33 lastPathComponent];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v38 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v31;
  v40 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v40;
  v41 = sub_1005CF04C();
  *(inited + 104) = v41;
  *(inited + 72) = v32;
  *(inited + 136) = &type metadata for String;
  v42 = sub_1000053B0();
  *(inited + 112) = v35;
  *(inited + 120) = v37;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v42;
  *(inited + 152) = 381;
  v43 = v58.n128_u64[0];
  *(inited + 216) = v40;
  *(inited + 224) = v41;
  *(inited + 192) = v43;
  v44 = v32;
  v45 = v43;
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v47 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v47, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v48 = swift_allocObject();
  v48[2] = 8;
  v48[3] = 0;
  v48[4] = 0;
  v48[5] = 0;
  v49 = __VaListBuilder.va_list()();
  StaticString.description.getter("createUndoingMutations(fromSnapshot:)", 37, 2);
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to generate undo from mismatched type", 43, 2);
  v52 = String._bridgeToObjectiveC()();

  [v30 handleFailureInFunction:v50 file:v51 lineNumber:381 isFatal:1 format:v52 args:v49];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v53, v54);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100D96C3C(uint64_t a1)
{
  v2 = v1;
  v105 = sub_1005B981C(&qword_101A1F830, &qword_1014B20B0);
  v103 = *(v105 - 1);
  __chkstk_darwin(v105);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = &v97 - v7;
  __chkstk_darwin(v8);
  v99 = &v97 - v9;
  __chkstk_darwin(v10);
  v100 = &v97 - v11;
  __chkstk_darwin(v12);
  v107 = &v97 - v13;
  v102 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v102);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v97 - v17;
  v19 = sub_1005B981C(&qword_101A1F838, &qword_1014B20B8);
  __chkstk_darwin(v19 - 8);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v106 = &v97 - v23;
  type metadata accessor for CRLMovieItem(0);
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v26 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v27 = &off_1019F58C8;
    if (*v26 == &off_1019F58C8)
    {
      v28 = v24;
      v98 = v5;
      v104 = a1;
      v29 = qword_101AD5F20;
      swift_beginAccess();
      sub_100601130(v26 + v29, v18, type metadata accessor for CRLMovieItemCRDTData);
      v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v26 = *(v28 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v26 == &off_1019F58C8)
      {
        v30 = qword_101AD5F20;
        swift_beginAccess();
        sub_100601130(v26 + v30, v15, type metadata accessor for CRLMovieItemCRDTData);
        sub_100D9D074(&qword_1019F5E78, type metadata accessor for CRLMovieItemCRDTData, byte_10146E2B0);
        swift_unknownObjectRetain();
        v31 = v106;
        CRType.observableDifference(from:)();
        sub_100D9D0BC(v15, type metadata accessor for CRLMovieItemCRDTData);
        sub_100D9D0BC(v18, type metadata accessor for CRLMovieItemCRDTData);
        sub_10000BE14(v31, v21, &qword_101A1F838, &qword_1014B20B8);
        v26 = v105;
        if ((*(v103 + 48))(v21, 1, v105) == 1)
        {
          sub_10000CAAC(v21, &qword_101A1F838, &qword_1014B20B8);
          v27 = _swiftEmptyArrayStorage;
          if (!_swiftEmptyArrayStorage[2])
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        v32 = v21;
        v33 = v107;
        sub_10003DFF8(v32, v107, &qword_101A1F830, &qword_1014B20B0);
        v34 = v100;
        sub_10000BE14(v33, v100, &qword_101A1F830, &qword_1014B20B0);
        v35 = v26[12];
        v36 = v26[16];
        v37 = v26[20];
        v18 = type metadata accessor for CRValueObservableDifference();
        v38 = *(v18 - 1);
        v102 = *(v38 + 48);
        v103 = v38 + 48;
        if (v102(v34, 1, v18) == 1)
        {
          sub_10000CAAC(v34 + v37, &qword_101A01F00, &unk_101492AB0);
          sub_10000CAAC(v34 + v36, &qword_101A01F00, &unk_101492AB0);
          sub_10000CAAC(v34 + v35, &qword_101A01F00, &unk_101492AB0);
          sub_10000CAAC(v34, &qword_101A01F00, &unk_101492AB0);
          v27 = _swiftEmptyArrayStorage;
          v39 = v107;
          v40 = v99;
          goto LABEL_11;
        }

        sub_10000CAAC(v34, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v34 + v37, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v34 + v36, &qword_101A01F00, &unk_101492AB0);
        sub_10000CAAC(v34 + v35, &qword_101A01F00, &unk_101492AB0);
        v27 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v15 = *(v27 + 2);
        v25 = *(v27 + 3);
        v21 = (v15 + 1);
        if (v15 < v25 >> 1)
        {
LABEL_10:
          v39 = v107;
          v40 = v99;
          *(v27 + 2) = v21;
          v41 = &v27[16 * v15];
          *(v41 + 4) = 0x737465737361;
          *(v41 + 5) = 0xE600000000000000;
LABEL_11:
          sub_10000BE14(v39, v40, &qword_101A1F830, &qword_1014B20B0);
          v42 = v26[12];
          v43 = v26[16];
          v44 = v26[20];
          if (v102(v40 + v42, 1, v18) == 1)
          {
            sub_10000CAAC(v40 + v44, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v40 + v43, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v40 + v42, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v40, &qword_101A01F00, &unk_101492AB0);
            v45 = v102;
            v46 = v107;
          }

          else
          {
            sub_10000CAAC(v40 + v42, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v40 + v44, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v40 + v43, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v40, &qword_101A01F00, &unk_101492AB0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_100024CBC(0, *(v27 + 2) + 1, 1, v27);
            }

            v45 = v102;
            v46 = v107;
            v48 = *(v27 + 2);
            v47 = *(v27 + 3);
            if (v48 >= v47 >> 1)
            {
              v70 = v107;
              v27 = sub_100024CBC((v47 > 1), v48 + 1, 1, v27);
              v46 = v70;
            }

            *(v27 + 2) = v48 + 1;
            v49 = &v27[16 * v48];
            *(v49 + 4) = 0x656B6F727473;
            *(v49 + 5) = 0xE600000000000000;
          }

          v50 = v101;
          sub_10000BE14(v46, v101, &qword_101A1F830, &qword_1014B20B0);
          v51 = v26[12];
          v52 = v26[16];
          v53 = v26[20];
          if (v45(v50 + v52, 1, v18) == 1)
          {
            sub_10000CAAC(v50 + v53, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v50 + v52, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v50 + v51, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v50, &qword_101A01F00, &unk_101492AB0);
            v31 = v106;
            v54 = v107;
            v55 = v98;
          }

          else
          {
            sub_10000CAAC(v50 + v52, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v50 + v53, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v50 + v51, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v50, &qword_101A01F00, &unk_101492AB0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_100024CBC(0, *(v27 + 2) + 1, 1, v27);
            }

            v31 = v106;
            v54 = v107;
            v55 = v98;
            v57 = *(v27 + 2);
            v56 = *(v27 + 3);
            if (v57 >= v56 >> 1)
            {
              v27 = sub_100024CBC((v56 > 1), v57 + 1, 1, v27);
            }

            *(v27 + 2) = v57 + 1;
            v58 = &v27[16 * v57];
            *(v58 + 4) = 0x656D756C6F76;
            *(v58 + 5) = 0xE600000000000000;
          }

          sub_10000BE14(v54, v55, &qword_101A1F830, &qword_1014B20B0);
          v59 = v105[12];
          v60 = v54;
          v61 = v105[16];
          v62 = v105[20];
          if (v45(v55 + v62, 1, v18) == 1)
          {
            sub_10000CAAC(v60, &qword_101A1F830, &qword_1014B20B0);
            sub_10000CAAC(v55 + v62, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v55 + v61, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v55 + v59, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v55, &qword_101A01F00, &unk_101492AB0);
            if (!*(v27 + 2))
            {
LABEL_33:
              sub_10000CAAC(v31, &qword_101A1F838, &qword_1014B20B8);

              swift_unknownObjectRelease();
              return _swiftEmptyDictionarySingleton;
            }
          }

          else
          {
            sub_10000CAAC(v55 + v62, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v55 + v61, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v55 + v59, &qword_101A01F00, &unk_101492AB0);
            sub_10000CAAC(v55, &qword_101A01F00, &unk_101492AB0);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_100024CBC(0, *(v27 + 2) + 1, 1, v27);
            }

            v65 = v107;
            v67 = *(v27 + 2);
            v66 = *(v27 + 3);
            if (v67 >= v66 >> 1)
            {
              v71 = v107;
              v27 = sub_100024CBC((v66 > 1), v67 + 1, 1, v27);
              v65 = v71;
            }

            sub_10000CAAC(v65, &qword_101A1F830, &qword_1014B20B0);
            *(v27 + 2) = v67 + 1;
            v68 = &v27[16 * v67];
            *(v68 + 4) = 0x617461446B73616DLL;
            *(v68 + 5) = 0xE800000000000000;
            if (!*(v27 + 2))
            {
              goto LABEL_33;
            }
          }

LABEL_27:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = _swiftEmptyDictionarySingleton;
          sub_100A9B080(v27, 4, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();
          v64 = v108;
          sub_10000CAAC(v31, &qword_101A1F838, &qword_1014B20B8);
          return v64;
        }

LABEL_37:
        v27 = sub_100024CBC((v25 > 1), v21, 1, v27);
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  v72 = objc_opt_self();
  v73 = [v72 _atomicIncrementAssertCount];
  v109 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v109, "Tried to create observable deltas from mismatched type", 54, 2u);
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v74 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
  v75 = String._bridgeToObjectiveC()();

  v76 = [v75 lastPathComponent];

  v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v79 = v78;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v80 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v73;
  v82 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v82;
  v83 = sub_1005CF04C();
  *(inited + 104) = v83;
  *(inited + 72) = v74;
  *(inited + 136) = &type metadata for String;
  v84 = sub_1000053B0();
  *(inited + 112) = v77;
  *(inited + 120) = v79;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v84;
  *(inited + 152) = 393;
  v85 = v109;
  *(inited + 216) = v82;
  *(inited + 224) = v83;
  *(inited + 192) = v85;
  v86 = v74;
  v87 = v85;
  v88 = static os_log_type_t.error.getter();
  sub_100005404(v80, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v89 = static os_log_type_t.error.getter();
  sub_100005404(v80, &_mh_execute_header, v89, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v90 = swift_allocObject();
  v90[2] = 8;
  v90[3] = 0;
  v90[4] = 0;
  v90[5] = 0;
  v91 = __VaListBuilder.va_list()();
  StaticString.description.getter("createSpecificDataObservableDeltas(fromSnapshot:)", 49, 2);
  v92 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
  v93 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to create observable deltas from mismatched type", 54, 2);
  v94 = String._bridgeToObjectiveC()();

  [v72 handleFailureInFunction:v92 file:v93 lineNumber:393 isFatal:1 format:v94 args:v91];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v95, v96);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100D97ADC(uint64_t a1, char *a2)
{
  v42 = a2;
  v4 = type metadata accessor for CRLMovieItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A1F820, &qword_1014B20A0);
  __chkstk_darwin(v7 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v40 - v11;
  v13 = sub_1005B981C(&qword_101A1F828, &qword_1014B20A8);
  v41 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v40 - v14;
  v16 = v89;
  sub_1009B611C(a1);
  if (!v16)
  {
    v40[1] = v4;
    v17 = v2;
    v42 = v6;
    v89 = 0;
    v18 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v19 = *(a1 + v18);
    v20 = v41;
    if (*(v19 + 16))
    {

      v21 = sub_1007C8124(4);
      if (v22)
      {
        sub_10000BE14(*(v19 + 56) + 32 * v21, v60, &unk_1019F4D00, &unk_10146E7F0);

        v61[0] = v60[0];
        v61[1] = v60[1];
        if (*(&v60[1] + 1))
        {
          v23 = swift_dynamicCast();
          v24 = *(v20 + 56);
          v24(v12, v23 ^ 1u, 1, v13);
          if ((*(v20 + 48))(v12, 1, v13) != 1)
          {
            v25 = v13;
            sub_10003DFF8(v12, v15, &qword_101A1F828, &qword_1014B20A8);
            v40[0] = v17;
            v41 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
            v26 = *(v17 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
            if (*v26 == &off_1019F58C8)
            {
              v27 = qword_101AD5F20;
              swift_beginAccess();
              sub_100601130(v26 + v27, v42, type metadata accessor for CRLMovieItemCRDTData);
              if (*v26 == &off_1019F58C8)
              {
                sub_10000BE14(v15, v9, &qword_101A1F828, &qword_1014B20A8);
                v24(v9, 0, 1, v25);
                swift_beginAccess();
                sub_100D9D074(&qword_1019F5EE8, type metadata accessor for CRLMovieItemCRDTData, "AW<");

                CRStruct_4.apply(_:)();
                swift_endAccess();

                sub_10000CAAC(v9, &qword_101A1F820, &qword_1014B20A0);
                sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
                CRRegister.wrappedValue.getter();
                if (**(v40[0] + v41) == &off_1019F58C8)
                {
                  swift_beginAccess();

                  CRRegister.wrappedValue.getter();
                  swift_endAccess();

                  v61[12] = v74;
                  v61[13] = v75;
                  v61[8] = v70;
                  v61[9] = v71;
                  v61[11] = v73;
                  v61[10] = v72;
                  v61[4] = v66;
                  v61[5] = v67;
                  v61[7] = v69;
                  v61[6] = v68;
                  v61[0] = v62;
                  v61[1] = v63;
                  v61[2] = v64;
                  v61[3] = v65;
                  *(&v61[26] + 8) = v77[12];
                  *(&v61[27] + 8) = v77[13];
                  *(&v61[22] + 8) = v77[8];
                  *(&v61[23] + 8) = v77[9];
                  *(&v61[24] + 8) = v77[10];
                  *(&v61[25] + 8) = v77[11];
                  *(&v61[18] + 8) = v77[4];
                  *(&v61[19] + 8) = v77[5];
                  *(&v61[20] + 8) = v77[6];
                  *(&v61[21] + 8) = v77[7];
                  *(&v61[16] + 8) = v77[2];
                  *(&v61[17] + 8) = v77[3];
                  *(&v61[14] + 8) = v77[0];
                  *(&v61[15] + 8) = v77[1];
                  v79[12] = v74;
                  v79[13] = v75;
                  v79[8] = v70;
                  v79[9] = v71;
                  v79[11] = v73;
                  v79[10] = v72;
                  v79[4] = v66;
                  v79[5] = v67;
                  v79[7] = v69;
                  v79[6] = v68;
                  v79[0] = v62;
                  v79[1] = v63;
                  *&v61[14] = v76;
                  *(&v61[28] + 1) = v78;
                  v80 = v76;
                  v79[3] = v65;
                  v79[2] = v64;
                  if (sub_1000C0FB4(v79) == 1)
                  {
                    v60[12] = *(&v61[26] + 8);
                    v60[13] = *(&v61[27] + 8);
                    *&v60[14] = *(&v61[28] + 1);
                    v60[8] = *(&v61[22] + 8);
                    v60[9] = *(&v61[23] + 8);
                    v60[10] = *(&v61[24] + 8);
                    v60[11] = *(&v61[25] + 8);
                    v60[4] = *(&v61[18] + 8);
                    v60[5] = *(&v61[19] + 8);
                    v60[6] = *(&v61[20] + 8);
                    v60[7] = *(&v61[21] + 8);
                    v60[0] = *(&v61[14] + 8);
                    v60[1] = *(&v61[15] + 8);
                    v60[2] = *(&v61[16] + 8);
                    v60[3] = *(&v61[17] + 8);
                    v12 = v15;
                    if (sub_1000C0FB4(v60) == 1)
                    {
                      v57 = v61[12];
                      v58 = v61[13];
                      v59 = *&v61[14];
                      v53 = v61[8];
                      v54 = v61[9];
                      v55 = v61[10];
                      v56 = v61[11];
                      v49 = v61[4];
                      v50 = v61[5];
                      v51 = v61[6];
                      v52 = v61[7];
                      v45 = v61[0];
                      v46 = v61[1];
                      v47 = v61[2];
                      v48 = v61[3];
                      sub_10000CAAC(&v45, &unk_101A106C0, &unk_1014907B0);
LABEL_25:
                      v30 = v42;
                      goto LABEL_28;
                    }
                  }

                  else
                  {
                    v60[12] = *(&v61[26] + 8);
                    v60[13] = *(&v61[27] + 8);
                    *&v60[14] = *(&v61[28] + 1);
                    v60[8] = *(&v61[22] + 8);
                    v60[9] = *(&v61[23] + 8);
                    v60[10] = *(&v61[24] + 8);
                    v60[11] = *(&v61[25] + 8);
                    v60[4] = *(&v61[18] + 8);
                    v60[5] = *(&v61[19] + 8);
                    v60[6] = *(&v61[20] + 8);
                    v60[7] = *(&v61[21] + 8);
                    v60[0] = *(&v61[14] + 8);
                    v60[1] = *(&v61[15] + 8);
                    v60[2] = *(&v61[16] + 8);
                    v60[3] = *(&v61[17] + 8);
                    v12 = v15;
                    if (sub_1000C0FB4(v60) != 1)
                    {
                      v43[12] = *(&v61[26] + 8);
                      v43[13] = *(&v61[27] + 8);
                      v43[8] = *(&v61[22] + 8);
                      v43[9] = *(&v61[23] + 8);
                      v43[10] = *(&v61[24] + 8);
                      v43[11] = *(&v61[25] + 8);
                      v43[4] = *(&v61[18] + 8);
                      v43[5] = *(&v61[19] + 8);
                      v43[6] = *(&v61[20] + 8);
                      v43[7] = *(&v61[21] + 8);
                      v43[0] = *(&v61[14] + 8);
                      v43[1] = *(&v61[15] + 8);
                      v43[2] = *(&v61[16] + 8);
                      v43[3] = *(&v61[17] + 8);
                      v87[12] = *(&v61[26] + 8);
                      v87[13] = *(&v61[27] + 8);
                      v87[8] = *(&v61[22] + 8);
                      v87[9] = *(&v61[23] + 8);
                      v87[11] = *(&v61[25] + 8);
                      v87[10] = *(&v61[24] + 8);
                      v87[4] = *(&v61[18] + 8);
                      v87[5] = *(&v61[19] + 8);
                      v87[7] = *(&v61[21] + 8);
                      v87[6] = *(&v61[20] + 8);
                      v87[0] = *(&v61[14] + 8);
                      v87[1] = *(&v61[15] + 8);
                      v44 = *(&v61[28] + 1);
                      v88 = *(&v61[28] + 1);
                      v87[3] = *(&v61[17] + 8);
                      v87[2] = *(&v61[16] + 8);
                      v85[12] = v61[12];
                      v85[13] = v61[13];
                      v86 = *&v61[14];
                      v85[8] = v61[8];
                      v85[9] = v61[9];
                      v85[11] = v61[11];
                      v85[10] = v61[10];
                      v85[4] = v61[4];
                      v85[5] = v61[5];
                      v85[7] = v61[7];
                      v85[6] = v61[6];
                      v85[0] = v61[0];
                      v85[1] = v61[1];
                      v85[3] = v61[3];
                      v85[2] = v61[2];
                      sub_10000BE14(&v62, &v45, &unk_101A106C0, &unk_1014907B0);
                      sub_10000BE14(v77, &v45, &unk_101A106C0, &unk_1014907B0);
                      v39 = sub_100B93EBC(v85, v87);
                      sub_10000CAAC(v77, &unk_101A106C0, &unk_1014907B0);
                      sub_10000CAAC(&v62, &unk_101A106C0, &unk_1014907B0);
                      sub_10000CAAC(v43, &unk_101A106C0, &unk_1014907B0);
                      v57 = v61[12];
                      v58 = v61[13];
                      v59 = *&v61[14];
                      v53 = v61[8];
                      v54 = v61[9];
                      v55 = v61[10];
                      v56 = v61[11];
                      v49 = v61[4];
                      v50 = v61[5];
                      v51 = v61[6];
                      v52 = v61[7];
                      v45 = v61[0];
                      v46 = v61[1];
                      v47 = v61[2];
                      v48 = v61[3];
                      sub_10000CAAC(&v45, &unk_101A106C0, &unk_1014907B0);
                      v30 = v42;
                      if (v39)
                      {
                        goto LABEL_28;
                      }

LABEL_20:
                      v31 = v40[0];
                      if (**(v40[0] + v41) == &off_1019F58C8)
                      {
                        swift_beginAccess();

                        CRRegister.wrappedValue.getter();
                        swift_endAccess();

                        v61[12] = v60[12];
                        v61[13] = v60[13];
                        *&v61[14] = *&v60[14];
                        v61[8] = v60[8];
                        v61[9] = v60[9];
                        v61[11] = v60[11];
                        v61[10] = v60[10];
                        v61[4] = v60[4];
                        v61[5] = v60[5];
                        v61[7] = v60[7];
                        v61[6] = v60[6];
                        v61[0] = v60[0];
                        v61[1] = v60[1];
                        v61[2] = v60[2];
                        v61[3] = v60[3];
                        if (sub_1000C0FB4(v61) != 1)
                        {
                          v81[12] = v61[12];
                          v81[13] = v61[13];
                          v82 = *&v61[14];
                          v81[8] = v61[8];
                          v81[9] = v61[9];
                          v81[11] = v61[11];
                          v81[10] = v61[10];
                          v81[4] = v61[4];
                          v81[5] = v61[5];
                          v81[7] = v61[7];
                          v81[6] = v61[6];
                          v81[0] = v61[0];
                          v81[1] = v61[1];
                          v81[3] = v61[3];
                          v81[2] = v61[2];
                          v38 = sub_100B946C8(v81, 0);
                          sub_10000CAAC(v60, &unk_101A106C0, &unk_1014907B0);
                          sub_100D654FC(v38);
                          goto LABEL_28;
                        }

                        if ((sub_1011255D0() & 1) == 0)
                        {
LABEL_28:
                          sub_100D9D0BC(v30, type metadata accessor for CRLMovieItemCRDTData);
                          v28 = &qword_101A1F828;
                          v29 = &qword_1014B20A8;
                          goto LABEL_16;
                        }

                        v32 = *(v31 + v41);
                        v33 = swift_conformsToProtocol2();
                        if (v33)
                        {
                          v34 = v33;
                          sub_1005D0BD8(&v45);
                          v83[12] = v57;
                          v83[13] = v58;
                          v84 = v59;
                          v83[8] = v53;
                          v83[9] = v54;
                          v83[11] = v56;
                          v83[10] = v55;
                          v83[4] = v49;
                          v83[5] = v50;
                          v83[7] = v52;
                          v83[6] = v51;
                          v83[0] = v45;
                          v83[1] = v46;
                          v83[3] = v48;
                          v83[2] = v47;
                          v35 = *v32;
                          *&v43[0] = v32;
                          v36 = *(v34 + 16);

                          v36(v83, v35, v34);

                          v37 = *(v31 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
                          *(v31 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke) = 0;

                          goto LABEL_25;
                        }

LABEL_33:
                        __break(1u);
                        return;
                      }

LABEL_32:
                      __break(1u);
                      goto LABEL_33;
                    }
                  }

                  v30 = v42;
                  memcpy(v60, v61, sizeof(v60));
                  sub_10000CAAC(v60, &qword_1019F5EE0, &unk_1014B73B0);
                  goto LABEL_20;
                }

LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_31;
          }

LABEL_15:
          v28 = &qword_101A1F820;
          v29 = &qword_1014B20A0;
LABEL_16:
          sub_10000CAAC(v12, v28, v29);
          return;
        }

        sub_10000CAAC(v61, &unk_1019F4D00, &unk_10146E7F0);
      }

      else
      {
      }
    }

    (*(v20 + 56))(v12, 1, 1, v13);
    goto LABEL_15;
  }
}

void sub_100D987EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v210 = a4;
  v215 = a1;
  v199 = sub_1005B981C(&unk_101A01EC0, &qword_10146E560);
  __chkstk_darwin(v199);
  v202 = &v186 - v8;
  v9 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v9 - 8);
  v192 = &v186 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v204 = &v186 - v12;
  __chkstk_darwin(v13);
  v205 = &v186 - v14;
  v15 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v15);
  v191 = &v186 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v197 = &v186 - v18;
  __chkstk_darwin(v19);
  v198 = &v186 - v20;
  __chkstk_darwin(v21);
  v214 = &v186 - v22;
  v209 = type metadata accessor for CRLAssetData(0);
  v23 = *(v209 - 8);
  __chkstk_darwin(v209);
  v190 = &v186 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v200 = &v186 - v26;
  __chkstk_darwin(v27);
  v201 = &v186 - v28;
  if (a3 == 4)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      v159 = v210;
      swift_getObjectType();
      v160 = v215;

      sub_1009BE298(v160, a2, a3, v159, v5);
      return;
    }
  }

  v211 = v15;
  v31 = v214;
  v30 = v215;
  v217 = *(a2 + 16);
  if (!v217)
  {
    return;
  }

  v32 = 0;
  v218 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v195 = OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData;
  v196 = OBJC_IVAR____TtC8Freeform12CRLMovieItem__movieAssetAsData;
  v216 = a2 + 32;
  v193 = (v23 + 48);
  v194 = OBJC_IVAR____TtC8Freeform12CRLMovieItem_spatial;
  v188 = xmmword_10146C6B0;
  v189 = xmmword_10146CA70;
  v207 = v5;
  while (1)
  {
    v33 = (v216 + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    v36 = *v33 == 0x656B6F727473 && v34 == 0xE600000000000000;
    if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v45 = v35 == 0x737465737361 && v34 == 0xE600000000000000;
    if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v91 = v35 == 0x656D756C6F76 && v34 == 0xE600000000000000;
      if (v91 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (**(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
        {
          goto LABEL_131;
        }

        swift_beginAccess();
        type metadata accessor for CRLMovieItemCRDTData(0);

        sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
        CRRegister.wrappedValue.getter();
        v92 = v220[0].n128_f32[0];
        v93 = v220[0].n128_u8[4];
        swift_endAccess();

        if (v93)
        {
          v94 = 1.0;
        }

        else
        {
          v94 = v92;
        }

        *(&v222 + 1) = &type metadata for Float;
        *&v221 = v94;
        sub_10000BE14(&v221, v220, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(v220, 48);
        goto LABEL_114;
      }

      if (v35 == 0x617461446B73616DLL && v34 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (**(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
        {
          goto LABEL_134;
        }

        swift_beginAccess();
        type metadata accessor for CRLMovieItemCRDTData(0);

        sub_1005B981C(&qword_1019F4B60, &unk_10146DB70);
        CRRegister.wrappedValue.getter();
        v111 = v220[0].n128_u32[0];
        swift_endAccess();

        *(&v222 + 1) = &type metadata for Float;
        LODWORD(v221) = v111;
        sub_10000BE14(&v221, v220, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(v220, 49);
        goto LABEL_114;
      }

      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v112 = swift_allocObject();
      *(v112 + 16) = v188;
      *(v112 + 56) = &type metadata for String;
      v113 = sub_1000053B0();
      *(v112 + 32) = v35;
      v212 = v112 + 32;
      v208 = v113;
      *(v112 + 64) = v113;
      *(v112 + 40) = v34;
      v114 = objc_opt_self();

      v186 = v114;
      LODWORD(v213) = [v114 _atomicIncrementAssertCount];
      *&v221 = [objc_allocWithZone(NSString) init];
      v206 = v112;
      StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
      v187 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
      v115 = String._bridgeToObjectiveC()();

      v116 = [v115 lastPathComponent];

      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v120 = static OS_os_log.crlAssert;
      v121 = swift_allocObject();
      *(v121 + 16) = v189;
      *(v121 + 56) = &type metadata for Int32;
      *(v121 + 64) = &protocol witness table for Int32;
      *(v121 + 32) = v213;
      v122 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v121 + 96) = v122;
      v123 = sub_1005CF04C();
      v124 = v187;
      *(v121 + 72) = v187;
      v125 = v208;
      *(v121 + 136) = &type metadata for String;
      *(v121 + 144) = v125;
      *(v121 + 104) = v123;
      *(v121 + 112) = v117;
      *(v121 + 120) = v119;
      *(v121 + 176) = &type metadata for UInt;
      *(v121 + 152) = 466;
      v126 = v221;
      *(v121 + 216) = v122;
      *(v121 + 224) = v123;
      *(v121 + 184) = &protocol witness table for UInt;
      *(v121 + 192) = v126;
      v127 = v124;
      v128 = v126;
      v129 = static os_log_type_t.error.getter();
      sub_100005404(v120, &_mh_execute_header, v129, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v121);
      swift_setDeallocating();
      v187 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v130 = static os_log_type_t.error.getter();
      v131 = v120;
      v132 = v206;

      type metadata accessor for __VaListBuilder();
      v133 = swift_allocObject();
      v133[2] = 8;
      v133[3] = 0;
      v134 = v133 + 3;
      v133[4] = 0;
      v133[5] = 0;
      v213 = v133;
      v208 = *(v132 + 16);
      if (!v208)
      {
LABEL_109:
        v206 = __VaListBuilder.va_list()();
        StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
        v151 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
        v152 = String._bridgeToObjectiveC()();

        v153 = String._bridgeToObjectiveC()();

        [v186 handleFailureInFunction:v151 file:v152 lineNumber:466 isFatal:0 format:v153 args:v206];

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v30 = v215;
        v5 = v207;
        goto LABEL_7;
      }

      v135 = 0;
      while (2)
      {
        v136 = v132;
        sub_100020E58((v212 + 40 * v135), *(v212 + 40 * v135 + 24));
        v137 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v138 = *v134;
        v139 = *(v137 + 16);
        v70 = __OFADD__(*v134, v139);
        v140 = *v134 + v139;
        if (v70)
        {
          goto LABEL_130;
        }

        v141 = v137;
        v142 = v213;
        v143 = *(v213 + 32);
        if (v143 >= v140)
        {
LABEL_102:
          v145 = *(v142 + 40);
        }

        else
        {
          if (v143 + 0x4000000000000000 < 0)
          {
            goto LABEL_132;
          }

          v144 = *(v213 + 40);
          if (2 * v143 > v140)
          {
            v140 = 2 * v143;
          }

          *(v213 + 32) = v140;
          if ((v140 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_133;
          }

          v145 = swift_slowAlloc();
          *(v213 + 40) = v145;
          if (v144)
          {
            if (v145 != v144 || v145 >= &v144[8 * v138])
            {
              memmove(v145, v144, 8 * v138);
            }

            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v142 = v213;
            goto LABEL_102;
          }
        }

        if (!v145)
        {
          goto LABEL_136;
        }

        v132 = v136;
        v147 = *(v141 + 16);
        v31 = v214;
        if (v147)
        {
          v148 = (v141 + 32);
          v149 = *v134;
          while (1)
          {
            v150 = *v148++;
            *&v145[8 * v149] = v150;
            v149 = *v134 + 1;
            if (__OFADD__(*v134, 1))
            {
              break;
            }

            *v134 = v149;
            if (!--v147)
            {
              goto LABEL_87;
            }
          }

          __break(1u);
          goto LABEL_121;
        }

LABEL_87:

        if (++v135 == v208)
        {
          goto LABEL_109;
        }

        continue;
      }
    }

    type metadata accessor for CRLMovieItem(0);
    v46 = swift_dynamicCastClass();
    if (!v46)
    {
      goto LABEL_138;
    }

    v47 = v46;
    v48 = *(v5 + v196);
    *(v5 + v196) = 0;
    swift_unknownObjectRetain();

    v49 = *(v5 + v195);
    *(v5 + v195) = 0;

    *(v5 + v194) = 2;
    v212 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    if (**(v47 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
    {
      goto LABEL_123;
    }

    swift_beginAccess();

    v50 = sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v51 = v5;
    v52 = v201;
    sub_100601130(v31, v201, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v31, type metadata accessor for CRLMovieItemAssetData);
    v213 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    if (**(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
    {
      goto LABEL_124;
    }

    swift_beginAccess();

    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v53 = v200;
    sub_100601130(v31, v200, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v31, type metadata accessor for CRLMovieItemAssetData);
    if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v54 = *(v209 + 20), v55 = *(v52 + v54), v56 = *(v52 + v54 + 8), v57 = (v53 + v54), v55 != *v57) || v56 != v57[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100D9D0BC(v53, type metadata accessor for CRLAssetData);
      sub_100D9D0BC(v52, type metadata accessor for CRLAssetData);
LABEL_42:
      *(&v222 + 1) = &type metadata for Bool;
      LOBYTE(v221) = 1;
      sub_10000BE14(&v221, v220, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      sub_100BC1F00(v220, 19);
      swift_endAccess();
      sub_10000CAAC(&v221, &unk_1019F4D00, &unk_10146E7F0);
      goto LABEL_43;
    }

    sub_100B3216C(*(v52 + *(v209 + 24)), *(v53 + *(v209 + 24)));
    v59 = v58;
    sub_100D9D0BC(v53, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v52, type metadata accessor for CRLAssetData);
    if ((v59 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_43:
    v75 = v207;
    if (**(v47 + v212) != &off_1019F58C8)
    {
      goto LABEL_125;
    }

    v206 = v47;
    v203 = v32;
    swift_beginAccess();

    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v76 = v211;
    v77 = v205;
    sub_10000BE14(v31 + *(v211 + 20), v205, &unk_101A1B880, &unk_10147AB00);
    sub_100D9D0BC(v31, type metadata accessor for CRLMovieItemAssetData);
    if (**(v75 + v213) != &off_1019F58C8)
    {
      goto LABEL_126;
    }

    swift_beginAccess();

    v208 = v50;
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v78 = v31 + *(v76 + 20);
    v79 = v204;
    sub_10000BE14(v78, v204, &unk_101A1B880, &unk_10147AB00);
    sub_100D9D0BC(v31, type metadata accessor for CRLMovieItemAssetData);
    v80 = *(v199 + 48);
    v81 = v202;
    sub_10000BE14(v77, v202, &unk_101A1B880, &unk_10147AB00);
    sub_10000BE14(v79, v81 + v80, &unk_101A1B880, &unk_10147AB00);
    v82 = *v193;
    v83 = v209;
    if ((*v193)(v81, 1, v209) != 1)
    {
      v87 = v192;
      sub_10000BE14(v81, v192, &unk_101A1B880, &unk_10147AB00);
      if (v82(v81 + v80, 1, v83) == 1)
      {
        sub_10000CAAC(v204, &unk_101A1B880, &unk_10147AB00);
        sub_10000CAAC(v205, &unk_101A1B880, &unk_10147AB00);
        sub_100D9D0BC(v87, type metadata accessor for CRLAssetData);
        v85 = v206;
        v5 = v207;
LABEL_50:
        v88 = v81;
        v89 = &unk_101A01EC0;
        v90 = &qword_10146E560;
LABEL_68:
        sub_10000CAAC(v88, v89, v90);
        v86 = v211;
      }

      else
      {
        v95 = v81 + v80;
        v96 = v190;
        sub_1006008F0(v95, v190);
        v97 = static UUID.== infix(_:_:)();
        v85 = v206;
        v5 = v207;
        if ((v97 & 1) == 0 || ((v98 = *(v209 + 20), v99 = *(v87 + v98), v100 = *(v87 + v98 + 8), v101 = (v96 + v98), v99 != *v101) || v100 != v101[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          sub_10000CAAC(v204, &unk_101A1B880, &unk_10147AB00);
          sub_10000CAAC(v205, &unk_101A1B880, &unk_10147AB00);
          sub_100D9D0BC(v96, type metadata accessor for CRLAssetData);
          sub_100D9D0BC(v87, type metadata accessor for CRLAssetData);
          v88 = v202;
          v89 = &unk_101A1B880;
          v90 = &unk_10147AB00;
          goto LABEL_68;
        }

        sub_100B3216C(*(v87 + *(v209 + 24)), *(v96 + *(v209 + 24)));
        v102 = v96;
        v104 = v103;
        sub_10000CAAC(v204, &unk_101A1B880, &unk_10147AB00);
        sub_10000CAAC(v205, &unk_101A1B880, &unk_10147AB00);
        sub_100D9D0BC(v102, type metadata accessor for CRLAssetData);
        sub_100D9D0BC(v87, type metadata accessor for CRLAssetData);
        v85 = v206;
        sub_10000CAAC(v202, &unk_101A1B880, &unk_10147AB00);
        v86 = v211;
        if (v104)
        {
          goto LABEL_70;
        }
      }

      *(&v222 + 1) = &type metadata for Bool;
      LOBYTE(v221) = 1;
      sub_10000BE14(&v221, v220, &unk_1019F4D00, &unk_10146E7F0);
      swift_beginAccess();
      sub_100BC1F00(v220, 44);
      swift_endAccess();
      sub_10000CAAC(&v221, &unk_1019F4D00, &unk_10146E7F0);
      goto LABEL_70;
    }

    sub_10000CAAC(v79, &unk_101A1B880, &unk_10147AB00);
    sub_10000CAAC(v77, &unk_101A1B880, &unk_10147AB00);
    v84 = v82(v81 + v80, 1, v83);
    v85 = v206;
    v5 = v207;
    if (v84 != 1)
    {
      goto LABEL_50;
    }

    sub_10000CAAC(v81, &unk_101A1B880, &unk_10147AB00);
    v86 = v211;
LABEL_70:
    if (**(v85 + v212) != &off_1019F58C8)
    {
      goto LABEL_127;
    }

    swift_beginAccess();

    v105 = v198;
    CRRegister.wrappedValue.getter();
    v106 = *(v105 + *(v86 + 48));
    swift_endAccess();

    sub_100D9D0BC(v105, type metadata accessor for CRLMovieItemAssetData);
    if (**(v5 + v213) != &off_1019F58C8)
    {
      goto LABEL_128;
    }

    swift_beginAccess();

    v107 = v197;
    CRRegister.wrappedValue.getter();
    v108 = *(v107 + *(v86 + 48));
    swift_endAccess();

    sub_100D9D0BC(v107, type metadata accessor for CRLMovieItemAssetData);
    if (v108 == 2)
    {
      v31 = v214;
      v30 = v215;
      if (v106)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v31 = v214;
      v30 = v215;
      if ((v108 ^ v106))
      {
LABEL_76:
        v32 = v203;
        if (**(v5 + v213) != &off_1019F58C8)
        {
          goto LABEL_129;
        }

        swift_beginAccess();

        v109 = v191;
        CRRegister.wrappedValue.getter();
        v110 = *(v109 + *(v211 + 48));
        swift_endAccess();

        sub_100D9D0BC(v109, type metadata accessor for CRLMovieItemAssetData);
        *(&v222 + 1) = &type metadata for Bool;
        LOBYTE(v221) = v110 & 1;
        sub_10000BE14(&v221, v220, &unk_1019F4D00, &unk_10146E7F0);
        swift_beginAccess();
        sub_100BC1F00(v220, 56);
        swift_endAccess();
        swift_unknownObjectRelease();
        goto LABEL_115;
      }
    }

    swift_unknownObjectRelease();
    v32 = v203;
LABEL_7:
    if (++v32 == v217)
    {
      return;
    }
  }

  v37 = OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke;
  v38 = *(v5 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
  if (v38)
  {
    v39 = *(v5 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
LABEL_33:
    *(&v222 + 1) = sub_100006370(0, &qword_101A0C7F0, off_10182F998);
    *&v221 = v39;
    v62 = v38;
    goto LABEL_34;
  }

  v40 = *(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v41 = *v40;
  v42 = swift_conformsToProtocol2();
  if (!v42)
  {
    goto LABEL_135;
  }

  v43 = v42;
  *&v221 = v40;
  v44 = *(v42 + 8);

  v44(v223, v41, v43);
  v237 = v223[12];
  v238 = v223[13];
  v239 = v224;
  v233 = v223[8];
  v234 = v223[9];
  v235 = v223[10];
  v236 = v223[11];
  v229 = v223[4];
  v230 = v223[5];
  v231 = v223[6];
  v232 = v223[7];
  v225 = v223[0];
  v226 = v223[1];
  v227 = v223[2];
  v228 = v223[3];
  if (sub_1000C0FB4(&v225) != 1)
  {
    v240[12] = v237;
    v240[13] = v238;
    v241 = v239;
    v240[8] = v233;
    v240[9] = v234;
    v240[11] = v236;
    v240[10] = v235;
    v240[4] = v229;
    v240[5] = v230;
    v240[6] = v231;
    v240[7] = v232;
    v240[0] = v225;
    v240[1] = v226;
    v240[2] = v227;
    v240[3] = v228;

    v60 = sub_100B946C8(v240, 0);
    sub_10000CAAC(v223, &unk_101A106C0, &unk_1014907B0);
    v61 = *(v5 + v37);
    *(v5 + v37) = v60;
    v39 = v60;

    v38 = 0;
    v31 = v214;
    v30 = v215;
    goto LABEL_33;
  }

  v221 = 0u;
  v222 = 0u;
  v31 = v214;
  v30 = v215;
LABEL_34:
  v63 = v218;
  swift_beginAccess();
  sub_10000BE14(&v221, v220, &unk_1019F4D00, &unk_10146E7F0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = *(v30 + v63);
  v219 = v65;
  v66 = sub_1007CF108();
  v68 = v65[2];
  v69 = (v67 & 1) == 0;
  v70 = __OFADD__(v68, v69);
  v71 = v68 + v69;
  if (!v70)
  {
    v72 = v67;
    if (v65[3] >= v71)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v154 = v66;
        sub_100AA3EA4();
        v66 = v154;
        v74 = v219;
        if (v72)
        {
          goto LABEL_40;
        }

        goto LABEL_111;
      }
    }

    else
    {
      sub_100A890C0(v71, isUniquelyReferenced_nonNull_native);
      v66 = sub_1007CF108();
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_137;
      }
    }

    v74 = v219;
    if (v72)
    {
LABEL_40:
      sub_10002C638(v220, v74[7] + 32 * v66, &unk_1019F4D00, &unk_10146E7F0);
LABEL_113:
      *(v30 + v218) = v74;
LABEL_114:
      swift_endAccess();
LABEL_115:
      sub_10000CAAC(&v221, &unk_1019F4D00, &unk_10146E7F0);
      goto LABEL_7;
    }

LABEL_111:
    v74[(v66 >> 6) + 8] |= 1 << v66;
    *(v74[6] + 8 * v66) = 16;
    v155 = v74[7] + 32 * v66;
    v156 = v220[1];
    *v155 = v220[0];
    *(v155 + 16) = v156;
    v157 = v74[2];
    v70 = __OFADD__(v157, 1);
    v158 = v157 + 1;
    if (v70)
    {
      goto LABEL_122;
    }

    v74[2] = v158;
    goto LABEL_113;
  }

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
  type metadata accessor for CRLChangeProperty(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_138:
  v161 = objc_opt_self();

  v162 = [v161 _atomicIncrementAssertCount];
  *&v221 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v221, "Snapshot should be a movie item.", 32, 2u);
  StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
  v163 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
  v164 = String._bridgeToObjectiveC()();

  v165 = [v164 lastPathComponent];

  v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v168 = v167;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v169 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v170 = swift_allocObject();
  *(v170 + 16) = v189;
  *(v170 + 56) = &type metadata for Int32;
  *(v170 + 64) = &protocol witness table for Int32;
  *(v170 + 32) = v162;
  v171 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v170 + 96) = v171;
  v172 = sub_1005CF04C();
  *(v170 + 104) = v172;
  *(v170 + 72) = v163;
  *(v170 + 136) = &type metadata for String;
  v173 = sub_1000053B0();
  *(v170 + 112) = v166;
  *(v170 + 120) = v168;
  *(v170 + 176) = &type metadata for UInt;
  *(v170 + 144) = v173;
  *(v170 + 152) = 446;
  v174 = v221;
  *(v170 + 216) = v171;
  *(v170 + 224) = v172;
  *(v170 + 184) = &protocol witness table for UInt;
  *(v170 + 192) = v174;
  v175 = v163;
  v176 = v174;
  v177 = static os_log_type_t.error.getter();
  sub_100005404(v169, &_mh_execute_header, v177, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v170);

  v178 = static os_log_type_t.error.getter();
  sub_100005404(v169, &_mh_execute_header, v178, "Snapshot should be a movie item.", 32, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Snapshot should be a movie item.");
  type metadata accessor for __VaListBuilder();
  v179 = swift_allocObject();
  v179[2] = 8;
  v179[3] = 0;
  v179[4] = 0;
  v179[5] = 0;
  v180 = __VaListBuilder.va_list()();
  StaticString.description.getter("populatePropertyMap(_:observedDifferenceLabels:withPropertyKey:snapshot:)", 73, 2);
  v181 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
  v182 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Snapshot should be a movie item.", 32, 2);
  v183 = String._bridgeToObjectiveC()();

  [v161 handleFailureInFunction:v181 file:v182 lineNumber:446 isFatal:1 format:v183 args:v180];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v184, v185);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

CGContext *sub_100D9AA04()
{
  v1 = v0;
  v2 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v4 = v2(v3);

  [v4 size];
  v6 = v5;
  v8 = v7;

  if (v6 <= 0.0 || v8 <= 0.0)
  {
    v21 = objc_opt_self();
    v22 = [v21 _atomicIncrementAssertCount];
    v45 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v45, "Movie's original size should be nonzero.", 40, 2u);
    StaticString.description.getter("generateEmptyPosterImage()", 26, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v22;
    v31 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v31;
    v32 = sub_1005CF04C();
    *(inited + 104) = v32;
    *(inited + 72) = v23;
    *(inited + 136) = &type metadata for String;
    v33 = sub_1000053B0();
    *(inited + 112) = v26;
    *(inited + 120) = v28;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v33;
    *(inited + 152) = 512;
    v34 = v45;
    *(inited + 216) = v31;
    *(inited + 224) = v32;
    *(inited + 192) = v34;
    v35 = v23;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v38, "Movie's original size should be nonzero.", 40, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v39 = swift_allocObject();
    v39[2] = 8;
    v39[3] = 0;
    v39[4] = 0;
    v39[5] = 0;
    v40 = __VaListBuilder.va_list()();
    StaticString.description.getter("generateEmptyPosterImage()", 26, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Movie's original size should be nonzero.", 40, 2);
    v43 = String._bridgeToObjectiveC()();

    [v21 handleFailureInFunction:v41 file:v42 lineNumber:512 isFatal:0 format:v43 args:v40];
  }

  else
  {
    result = sub_10050DF80(3, v6, v8);
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 CGColor];

    CGContextSetFillColorWithColor(v10, v12);
    v46.origin.x = sub_10011ECB4();
    CGContextFillRect(v10, v46);
    Image = CGBitmapContextCreateImage(v10);
    if (Image)
    {
      v14 = Image;
      v15 = sub_1005357BC(Image);
      v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));
      v20 = v1;
      sub_100024E98(v16, v18);
      v44 = sub_100CF051C(v16, v18, 0x6D49726574736F70, 0xEF676E702E656761, v20);
      sub_10002640C(v16, v18);

      return v44;
    }
  }

  return 0;
}

id sub_100D9AFEC()
{
  v0 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100D91F80();
  v8 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v9 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v8);
  (*(v9 + 16))(v8, v9);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 crl_pathUTI];

  if (v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UTType.init(_:)();
    if ((*(v4 + 48))(v2, 1, v3) != 1)
    {
      (*(v4 + 32))(v6, v2, v3);
      v12 = objc_opt_self();
      UTType.identifier.getter();
      v13 = String._bridgeToObjectiveC()();

      v14 = [v12 canInitWithDataType:v13];

      (*(v4 + 8))(v6, v3);
      return v14;
    }
  }

  else
  {

    (*(v4 + 56))(v2, 1, 1, v3);
  }

  sub_10000CAAC(v2, &unk_1019F8DB0, &unk_101471FC0);
  return 0;
}

void sub_100D9B278()
{
  v1 = v0;
  v2 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100D91F80();
  v6 = [objc_allocWithZone(CRLAnimatedGIFController) initWithData:v5 delegate:0];

  if (**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    v7 = *&v4[*(v2 + 24)];
    swift_endAccess();

    sub_100D9D0BC(v4, type metadata accessor for CRLMovieItemAssetData);
    v8 = [v6 imageForTime:v7];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1005357BC(v8);
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));
      v15 = v1;
      sub_100024E98(v11, v13);
      sub_100CF051C(v11, v13, 0x6D49726574736F70, 0xEF676E702E656761, v15);

      sub_10002640C(v11, v13);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100D9B52C()
{
  v1 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_100D9AFEC())
  {

    sub_100D9B278();
  }

  else
  {
    v4 = sub_100D91F80();
    v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v5);
    v7 = (*(v6 + 56))(_swiftEmptyDictionarySingleton, v5, v6);

    sub_100D905D0([v7 crl_containsTracksWithVisualCharacteristics]);
    if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
    {
      swift_beginAccess();

      sub_1005B981C(&qword_101A28680, qword_10147AB10);
      CRRegister.wrappedValue.getter();
      v8 = *&v3[*(v1 + 24)];
      swift_endAccess();

      sub_100D9D0BC(v3, type metadata accessor for CRLMovieItemAssetData);
      sub_100D9B7A4(v7, v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_100D9B7A4(uint64_t a1, Float64 a2)
{
  v6 = v2;
  v9 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v9);
  v11 = v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(CRLMoviePosterImageGenerator) initWithAsset:a1];
  if (**(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_1019F58C8)
  {
    goto LABEL_47;
  }

  v3 = v12;
  v76 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  swift_beginAccess();

  v74 = sub_1005B981C(&qword_101A28680, qword_10147AB10);
  CRRegister.wrappedValue.getter();
  v13 = v11[*(v9 + 36)];
  swift_endAccess();

  sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
  v75 = v9;
  if (v13)
  {
    v79.start.value = 0;
    v14 = [v3 copyAssetCoverArtMetadataWithError:&v79];
    value = v79.start.value;
    if (v14)
    {
      v16 = v14;
LABEL_7:
      v23 = value;
      v24 = v16;
      v25 = sub_1005357BC(v24);

      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper(0));
      v30 = v6;
      sub_100024E98(v26, v28);
      v31 = sub_100CF051C(v26, v28, 0x6D49726574736F70, 0xEF676E702E656761, v30);

      sub_10002640C(v26, v28);
LABEL_42:

      return v31;
    }

    v32 = v79.start.value;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v73 = v6;
    CMTimeMakeWithSeconds(&v79.start, a2, 90000);
    v17 = v79.start.value;
    v18 = v3;
    epoch = v79.start.epoch;
    v20 = *&v79.start.timescale;
    v4 = &kCMTimeZero;
    v5 = kCMTimeZero.value;
    v21 = kCMTimeZero.epoch;
    [a1 duration];
    v77.epoch = v79.start.epoch;
    v78[0] = kCMTimeZero.value;
    v78[1] = *&kCMTimeZero.timescale;
    v78[2] = v21;
    v77.value = v79.start.value;
    *&v77.timescale = *&v79.start.timescale;
    CMTimeRangeMake(&v79, v78, &v77);
    v78[0] = v17;
    v78[1] = v20;
    v78[2] = epoch;
    v3 = v18;
    CMTimeClampToRange(&v77, v78, &v79);
    v78[0] = 0;
    v79.start = v77;
    v22 = [v18 copyCGImageAtTime:&v79 error:v78];
    value = v78[0];
    if (v22)
    {
      v16 = v22;
      v6 = v73;
      goto LABEL_7;
    }

    v33 = v78[0];
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v6 = v73;
  }

  type metadata accessor for Code(0);
  v79.start.value = -11832;
  swift_errorRetain();
  sub_100D9D074(&qword_1019F3BA8, type metadata accessor for Code, "т<");
  v2 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v2)
  {

    a1 = *&v6[v76];
    if (*a1 != &off_1019F58C8)
    {
      goto LABEL_48;
    }

    swift_beginAccess();

    CRRegister.wrappedValue.getter();
    v34 = v11[*(v75 + 36)];
    swift_endAccess();

    sub_100D9D0BC(v11, type metadata accessor for CRLMovieItemAssetData);
    if (v34)
    {

      return 0;
    }

    v31 = sub_100D9AA04();
    goto LABEL_42;
  }

  v71[0] = 0;
  v74 = v3;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v73 = v9;
  v9 = inited;
  swift_getErrorValue();
  v36 = Error.localizedDescription.getter();
  v38 = v37;
  v3 = &type metadata for String;
  *(v9 + 56) = &type metadata for String;
  v39 = sub_1000053B0();
  *(v9 + 32) = v36;
  v75 = v39;
  v76 = v9 + 32;
  *(v9 + 64) = v39;
  *(v9 + 40) = v38;
  v72 = objc_opt_self();
  LODWORD(a1) = [v72 _atomicIncrementAssertCount];
  v79.start.value = [objc_allocWithZone(NSString) init];
  sub_100604538(v9, &v79, "unexpected error occurred trying to generate poster image: %@", 61, 2u);
  StaticString.description.getter("makePosterImageData(avAsset:posterTime:)", 40, 2);
  v5 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
  v40 = String._bridgeToObjectiveC()();

  v41 = [v40 lastPathComponent];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v42;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_49;
  }

LABEL_15:
  v43 = static OS_os_log.crlAssert;
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_10146CA70;
  *(v44 + 56) = &type metadata for Int32;
  *(v44 + 64) = &protocol witness table for Int32;
  *(v44 + 32) = a1;
  v45 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v44 + 96) = v45;
  v46 = sub_1005CF04C();
  *(v44 + 72) = v5;
  v47 = v75;
  *(v44 + 136) = v3;
  *(v44 + 144) = v47;
  *(v44 + 104) = v46;
  *(v44 + 112) = v4;
  *(v44 + 120) = v2;
  *(v44 + 176) = &type metadata for UInt;
  *(v44 + 184) = &protocol witness table for UInt;
  *(v44 + 152) = 578;
  v48 = v79.start.value;
  *(v44 + 216) = v45;
  *(v44 + 224) = v46;
  *(v44 + 192) = v48;
  v49 = v5;
  v50 = v48;
  v51 = static os_log_type_t.error.getter();
  sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v44);
  swift_setDeallocating();
  v71[1] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v52 = static os_log_type_t.error.getter();
  sub_100005404(v43, &_mh_execute_header, v52, "unexpected error occurred trying to generate poster image: %@", 61, 2, v9);

  type metadata accessor for __VaListBuilder();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v53 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v75 = v9;
  v4 = *(v9 + 16);
  if (v4)
  {
    v3 = 0;
    v9 = 40;
    while (1)
    {
      v2 = sub_100020E58((v76 + 40 * v3), *(v76 + 40 * v3 + 24));
      v54 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      a1 = *v53;
      v55 = *(v54 + 16);
      v56 = __OFADD__(*v53, v55);
      v57 = *v53 + v55;
      if (v56)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        swift_once();
        goto LABEL_15;
      }

      v58 = v54;
      v2 = v5[4];
      if (v2 >= v57)
      {
        goto LABEL_32;
      }

      if (v2 + 0x4000000000000000 < 0)
      {
        goto LABEL_45;
      }

      v59 = v5[5];
      if (2 * v2 > v57)
      {
        v57 = 2 * v2;
      }

      v5[4] = v57;
      if ((v57 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_46;
      }

      v60 = swift_slowAlloc();
      v5[5] = v60;
      if (v59)
      {
        break;
      }

LABEL_33:
      if (!v60)
      {
        __break(1u);
      }

      v62 = *(v58 + 16);
      if (v62)
      {
        v63 = (v58 + 32);
        v64 = *v53;
        while (1)
        {
          v65 = *v63++;
          *&v60[8 * v64] = v65;
          v64 = *v53 + 1;
          if (__OFADD__(*v53, 1))
          {
            break;
          }

          *v53 = v64;
          if (!--v62)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_17:

      v3 = (v3 + 1);
      if (v3 == v4)
      {
        goto LABEL_39;
      }
    }

    if (v60 != v59 || v60 >= &v59[8 * a1])
    {
      memmove(v60, v59, 8 * a1);
    }

    v2 = v5;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_32:
    v60 = v5[5];
    goto LABEL_33;
  }

LABEL_39:
  v66 = __VaListBuilder.va_list()();
  StaticString.description.getter("makePosterImageData(avAsset:posterTime:)", 40, 2);
  v67 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLMovieItem.swift", 83, 2);
  v68 = String._bridgeToObjectiveC()();

  StaticString.description.getter("unexpected error occurred trying to generate poster image: %@", 61, 2);
  v69 = String._bridgeToObjectiveC()();

  [v72 handleFailureInFunction:v67 file:v68 lineNumber:578 isFatal:0 format:v69 args:v66];

  swift_setDeallocating();
  swift_arrayDestroy();

  return 0;
}

void *sub_100D9C288()
{
  v1 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v1 - 8);
  v47 = &v43 - v2;
  v3 = type metadata accessor for URL();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for CRLAssetData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_1019F8DB0, &unk_101471FC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v0;
  type metadata accessor for CRLMovieItem(0);
  sub_100D9CEE0(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v19 = &unk_101A1B880;
    v20 = &unk_10147AB00;
    v21 = v7;
LABEL_8:
    sub_10000CAAC(v21, v19, v20);
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_10;
  }

  sub_1006008F0(v7, v11);
  v22 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v23 = *&v22[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v24 = *(v23 + 16);
  v25 = v22;
  os_unfair_lock_lock(v24);
  v26 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v27 = *&v25[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v27)
  {
    v28 = *&v25[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v29 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v30 = v25;
    v31 = sub_10001F1A0(v30);

    v32 = *&v25[v26];
    *&v25[v26] = v31;
    v28 = v31;

    v27 = 0;
  }

  v33 = *(v23 + 16);
  v34 = v27;
  os_unfair_lock_unlock(v33);
  v35 = v47;
  sub_10108CAF4(v11, 0, 3, 0, 0, v47);

  v37 = v45;
  v36 = v46;
  if ((*(v45 + 48))(v35, 1, v46) == 1)
  {
    sub_100D9D0BC(v11, type metadata accessor for CRLAssetData);
    v19 = &unk_1019F33C0;
    v20 = &unk_101468A60;
    v21 = v35;
    goto LABEL_8;
  }

  v38 = v44;
  (*(v37 + 32))(v44, v35, v36);
  v39 = sub_1007AC4D0(0, v14);
  (*(v37 + 8))(v38, v36, v39);
  sub_100D9D0BC(v11, type metadata accessor for CRLAssetData);
LABEL_10:
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CAAC(v14, &unk_1019F8DB0, &unk_101471FC0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10146C6B0;
    *(v41 + 32) = UTType.identifier.getter();
    *(v41 + 40) = v42;
    (*(v16 + 8))(v18, v15);
    return v41;
  }
}

void sub_100D9CAA4(uint64_t *a1@<X8>)
{
  v3 = v1;
  v4 = sub_100D652D4();
  if (v4)
  {
    sub_100B965E4(v4, &v14);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v14, v5);
    __src[12] = v26;
    __src[13] = v27;
    *&__src[14] = v28;
    __src[8] = v22;
    __src[9] = v23;
    __src[10] = v24;
    __src[11] = v25;
    __src[4] = v18;
    __src[5] = v19;
    __src[6] = v20;
    __src[7] = v21;
    __src[0] = v14;
    __src[1] = v15;
    __src[2] = v16;
    __src[3] = v17;
  }

  else
  {
    sub_1005D0BD8(__src);
  }

  v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v7 = *(**&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);
  v8 = v3;

  v10 = v7(v9);

  if (v10)
  {
    sub_100A72CD4(v10, &v14);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v14, v11);
  }

  else
  {
    sub_1005D0C00(&v14);
  }

  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v19;
  *(&__src[20] + 8) = v20;
  *(&__src[21] + 8) = v21;
  *(&__src[16] + 8) = v16;
  *(&__src[17] + 8) = v17;
  *(&__src[14] + 8) = v14;
  *(&__src[15] + 8) = v15;
  if (**&v3[v6] == &off_1019F58C8)
  {
    swift_beginAccess();
    type metadata accessor for CRLMovieItemCRDTData(0);

    sub_1005B981C(&qword_1019F4B60, &unk_10146DB70);
    CRRegister.wrappedValue.getter();
    v12 = v29;
    swift_endAccess();

    a1[3] = &type metadata for CRLMoviePresetData;
    a1[4] = sub_100B6D470();
    v13 = swift_allocObject();
    *a1 = v13;
    memcpy((v13 + 16), __src, 0x168uLL);
    *(v13 + 376) = v12;
    *(v13 + 384) = _swiftEmptyDictionarySingleton;
    *(v13 + 392) = _swiftEmptyDictionarySingleton;
  }

  else
  {
    __break(1u);
  }
}

void sub_100D9CD70()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLMovieItem__posterImageAssetAsData);
}

id sub_100D9CDB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMovieItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLMovieItem(uint64_t a1)
{
  result = qword_101A1F810;
  if (!qword_101A1F810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D9CEE0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLMovieItemAssetData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(*v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_1019F58C8)
  {
    swift_beginAccess();

    sub_1005B981C(&qword_101A28680, qword_10147AB10);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100601130(v5, a1, type metadata accessor for CRLAssetData);
    sub_100D9D0BC(v5, type metadata accessor for CRLMovieItemAssetData);
    v6 = type metadata accessor for CRLAssetData(0);
    (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D9D074(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100D9D0BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D9D134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x73616C43657A6973;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x73746E65746E6F63;
    v4 = 0xED0000656C616353;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1835365481;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x73616C43657A6973;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x73746E65746E6F63;
    v8 = 0xED0000656C616353;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1835365481;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100D9D250()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D9D2FC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100D9D394(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D9D43C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D9D6E0(*a1);
  *a2 = result;
  return result;
}

void sub_100D9D46C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x73616C43657A6973;
  if (v2 != 1)
  {
    v5 = 0x73746E65746E6F63;
    v4 = 0xED0000656C616353;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1835365481;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100D9D4D4()
{
  v1 = 0x73616C43657A6973;
  if (*v0 != 1)
  {
    v1 = 0x73746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1835365481;
  }
}

unint64_t sub_100D9D538@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D9D6E0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D9D560(uint64_t a1)
{
  v2 = sub_1006CDE34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D9D59C(uint64_t a1)
{
  v2 = sub_1006CDE34();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100D9D5DC()
{
  result = qword_101A1F880;
  if (!qword_101A1F880)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for CRLPreviewImageCachingLookupKeyCodingKeys, v0, v1);
    atomic_store(result, &qword_101A1F880);
  }

  return result;
}

unint64_t sub_100D9D634()
{
  result = qword_101A1F888;
  if (!qword_101A1F888)
  {
    result = swift_getWitnessTable(asc_1014B21DC, &type metadata for CRLPreviewImageCachingLookupKeyCodingKeys, v0, v1);
    atomic_store(result, &qword_101A1F888);
  }

  return result;
}

unint64_t sub_100D9D68C()
{
  result = qword_101A1F890;
  if (!qword_101A1F890)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for CRLPreviewImageCachingLookupKeyCodingKeys, v0, v1);
    atomic_store(result, &qword_101A1F890);
  }

  return result;
}

unint64_t sub_100D9D6E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101877178, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

BOOL sub_100D9D72C()
{
  v0 = sub_100051290();
  v1 = [v0 presentedViewController];

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = [v2 topViewController];

    if (v3)
    {
      type metadata accessor for CRLiOSBoardViewController(0);
      v4 = swift_dynamicCastClass() != 0;
      v1 = v3;
LABEL_7:

      return v4;
    }
  }

  return 0;
}

void *sub_100D9D7EC(void *a1)
{
  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !a1)
  {
    v3 = [a1 childViewControllers];
    sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (!v5)
      {

        return 0;
      }

      if (__OFSUB__(v5--, 1))
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_12;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        v5 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v7 = *(v4 + 32 + 8 * v5);
LABEL_12:
        v8 = v7;
        a1 = sub_100D9D7EC(v7);

        if (a1)
        {

          return a1;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = a1;
  return a1;
}

void sub_100D9D94C()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_100051290();
  v5 = [v4 presentedViewController];

  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v6 topViewController];

  if (v7)
  {
    type metadata accessor for CRLiOSBoardViewController(0);
    v8 = swift_dynamicCastClass();
    v5 = v7;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_5:
  }

LABEL_6:
  v8 = *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController];
LABEL_7:
  v9 = sub_100D9D7EC(v8);
  v11 = v10;

  if (v9)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = v9;
    v14 = v0;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v13;
    v16[5] = v11;
    v16[6] = v14;
    sub_10064191C(0, 0, v3, &unk_1014B24A0, v16);
  }
}

uint64_t sub_100D9DB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_100D9DBD8, v8, v7);
}

void sub_100D9DBD8()
{
  v1 = v0[4];
  ObjectType = swift_getObjectType();
  v0[2] = v1;
  v0[10] = ObjectType;
  sub_10005013C();
  v0[11] = v3;
  if (v3)
  {
    v4 = v3;
    v7 = (*(v0[5] + 8) + **(v0[5] + 8));
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_100D9DD34;
    v6 = v0[5];

    v7(v4, &off_1018B0AB8, ObjectType, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D9DD34()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_100D9DE74, v4, v3);
}

uint64_t sub_100D9DE74()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];

  v0[3] = v3;
  (*(v2 + 16))(v1, v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100D9DF08(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v4;
  v2[19] = v3;

  return _swift_task_switch(sub_100D9DFA0, v4, v3);
}

uint64_t sub_100D9DFA0()
{
  v1 = sub_100051290();
  v2 = [v1 presentedViewController];

  if (!v2)
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 topViewController];

  if (v4)
  {
    type metadata accessor for CRLiOSBoardViewController(0);
    v5 = swift_dynamicCastClass();
    v2 = v4;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_5:
  }

LABEL_6:
  v5 = *(v0[16] + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController);
LABEL_7:
  v0[20] = v5;
  v6 = v5;
  v7 = sub_100051290();
  v8 = [v7 presentedViewController];

  v9 = v6;
  if (!v8)
  {
    goto LABEL_26;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_25:

    v9 = v6;
    goto LABEL_26;
  }

  v11 = [v10 topViewController];

  v9 = v6;
  if (!v11)
  {
    goto LABEL_26;
  }

  type metadata accessor for CRLiOSBoardViewController(0);
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    v8 = v11;
    goto LABEL_25;
  }

  v13 = v12;

  if (v6 != v13)
  {
    goto LABEL_27;
  }

  v14 = v0[16];
  v15 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController;
  v16 = [*(v14 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController) presentedViewController];
  if (!v16)
  {
    goto LABEL_27;
  }

  v9 = v16;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17)
  {
LABEL_26:

    goto LABEL_27;
  }

  v18 = [v17 topViewController];

  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    v9 = v18;
    goto LABEL_26;
  }

  v20 = *(v19 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController);

  if (v20)
  {
    v21 = [*(v14 + v15) presentedViewController];
    if (!v21)
    {
      goto LABEL_36;
    }

    v22 = v21;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = [v23 topViewController];
      v0[21] = v24;

      if (v24)
      {
        v22 = v24;
        if (swift_dynamicCastClass())
        {
          v25 = swift_task_alloc();
          v0[22] = v25;
          *v25 = v0;
          v25[1] = sub_100D9E480;

          return sub_100664A0C();
        }

        goto LABEL_35;
      }

LABEL_36:
      v29 = swift_task_alloc();
      v0[26] = v29;
      *v29 = v0;
      v29[1] = sub_100D9E7D4;
      v30 = v0[15];

      return sub_100D1C8E8(v30, 1);
    }

LABEL_35:

    goto LABEL_36;
  }

LABEL_27:
  v27 = [v6 presentedViewController];
  v0[23] = v27;
  if (!v27)
  {
    goto LABEL_36;
  }

  v22 = v27;
  sub_100006370(0, &qword_101A1F8E8, UIAlertController_ptr);
  if (([v22 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
  {
    sub_100006370(0, &unk_101A15AF8, UIActivityViewController_ptr);
    if (([v22 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
    {
      sub_100006370(0, &qword_101A1F8F0, off_10182FA50);
      if (([v22 isKindOfClass:swift_getObjCClassFromMetadata()] & 1) == 0)
      {
        sub_100006370(0, &qword_101A1F8F8, _SWCollaborationDetailViewController_ptr);
        if (![v22 isKindOfClass:swift_getObjCClassFromMetadata()])
        {
          goto LABEL_35;
        }
      }
    }
  }

  v28 = swift_task_alloc();
  v0[24] = v28;
  *v28 = v0;
  v28[1] = sub_100D9E5F4;

  return sub_100D1CCA4(1);
}

uint64_t sub_100D9E480()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 208) = v4;
  *v4 = v3;
  v4[1] = sub_100D9E7D4;
  v5 = *(v1 + 120);

  return sub_100D1C8E8(v5, 1);
}

uint64_t sub_100D9E5F4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100D9E97C;
  }

  else
  {
    v5 = sub_100D9E730;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D9E730()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_100D9E7D4;
  v2 = *(v0 + 120);

  return sub_100D1C8E8(v2, 1);
}

uint64_t sub_100D9E7D4()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100D9EAF8;
  }

  else
  {
    v5 = sub_100D9E910;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100D9E910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D9E97C()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to present view controller: %@", 50, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100D9EAF8()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Caught error trying to present view controller: %@", 50, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = *(v0 + 8);

  return v8();
}

id sub_100D9EC6C()
{
  v1 = sub_100051290();
  v2 = [v1 presentedViewController];

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (!v3)
    {
LABEL_5:

      goto LABEL_6;
    }

    v4 = [v3 topViewController];

    if (v4)
    {
      type metadata accessor for CRLiOSBoardViewController(0);
      result = swift_dynamicCastClass();
      v2 = v4;
      if (result)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

LABEL_6:
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController);

  return v6;
}

uint64_t sub_100D9ED40(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100D9EDD8, v3, v2);
}

uint64_t sub_100D9EDD8()
{
  v1 = *(v0 + 16);

  [v1 removeFromSuperview];
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D9EE48(uint64_t a1, char a2)
{
  *(v3 + 336) = a2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  type metadata accessor for CRLBoardCRDTData(0);
  *(v3 + 160) = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  *(v3 + 184) = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  *(v3 + 192) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 200) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 208) = v6;
  *(v3 + 216) = v5;

  return _swift_task_switch(sub_100D9EF98, v6, v5);
}

uint64_t sub_100D9EF98()
{
  v1 = sub_100051290();
  v2 = [v1 presentedViewController];
  *(v0 + 224) = v2;

  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    *(v0 + 232) = v3;
    if (v3)
    {
      v4 = [*(*(v0 + 152) + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController) presentedViewController];
      if (v4)
      {
        v5 = v4;
        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (!v6)
        {
LABEL_14:

          goto LABEL_15;
        }

        v7 = [v6 topViewController];
        *(v0 + 240) = v7;

        if (v7)
        {
          type metadata accessor for CRLiOSBoardViewController(0);
          v8 = swift_dynamicCastClass();
          v5 = v7;
          if (v8)
          {
            v56 = v8;
            if (qword_1019F2220 != -1)
            {
              swift_once();
            }

            v9 = *(v0 + 184);
            v10 = *(v0 + 192);
            v11 = *(v0 + 176);
            v54 = *(v0 + 168);
            v12 = *(v0 + 160);
            v13 = *(v0 + 144);
            v55 = static OS_os_log.sceneManagement;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            v15 = *(*(v13 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
            v16 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
            v17 = *&v15[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
            v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
            swift_beginAccess();
            sub_10004FD94(v17 + v18, v12, type metadata accessor for CRLBoardCRDTData);
            v19 = v15;
            sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
            CRRegister.wrappedValue.getter();
            sub_10003D63C(v12, type metadata accessor for CRLBoardCRDTData);
            v20 = (*&v15[v16] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
            v21 = *v20;
            v22 = v20[1];

            sub_10084BD4C(v9, v21, v22, v10);

            (*(v11 + 16))(v9, v10, v54);
            sub_10003D63C(v10, type metadata accessor for CRLBoardIdentifier);
            v23 = UUID.uuidString.getter();
            v25 = v24;
            (*(v11 + 8))(v9, v54);
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v23;
            *(inited + 40) = v25;
            v26 = static os_log_type_t.default.getter();
            sub_100005404(v55, &_mh_execute_header, v26, "Tearing down the outgoing board view controller for identifier %{public}@", 73, 2, inited);
            swift_setDeallocating();
            sub_100005070((inited + 32));
            v27 = swift_task_alloc();
            *(v0 + 248) = v27;
            *v27 = v0;
            v27[1] = sub_100D9F6FC;

            return sub_100C0C7FC(v56);
          }

          goto LABEL_14;
        }
      }

LABEL_15:
      v35 = [objc_allocWithZone(UIViewController) initWithNibName:0 bundle:0];
      *(v0 + 256) = v35;
      v36 = [v35 navigationItem];
      *(v0 + 88) = 0u;
      *(v0 + 104) = 0u;
      v37 = String._bridgeToObjectiveC()();
      v38 = *(v0 + 112);
      if (v38)
      {
        v39 = sub_100020E58((v0 + 88), *(v0 + 112));
        v40 = *(v38 - 8);
        v41 = swift_task_alloc();
        (*(v40 + 16))(v41, v39, v38);
        v42 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v40 + 8))(v41, v38);

        sub_100005070((v0 + 88));
      }

      else
      {
        v42 = 0;
      }

      v44 = *(v0 + 144);
      v43 = *(v0 + 152);
      v45 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v37 style:0 target:v42 action:0];
      swift_unknownObjectRelease();

      [v36 setBackBarButtonItem:v45];
      v46 = objc_allocWithZone(UINavigationController);
      v47 = v44;
      v48 = [v46 initWithRootViewController:v47];
      *(v0 + 264) = v48;
      v49 = v48;
      [v49 setModalPresentationStyle:4];
      [v49 setTransitioningDelegate:*(v43 + OBJC_IVAR____TtC8Freeform19CRLiOSSceneDelegate_boardViewControllerTransitioningDelegate)];
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10146CE00;
      *(v50 + 32) = v35;
      *(v50 + 40) = v47;
      *(v0 + 280) = sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v51 = v35;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v49 setViewControllers:isa];

      v53 = swift_task_alloc();
      *(v0 + 288) = v53;
      *v53 = v0;
      v53[1] = sub_100D9FB44;
      v33 = *(v0 + 336);
      v34 = v49;
      goto LABEL_19;
    }
  }

  v29 = *(v0 + 152);
  v30 = [objc_allocWithZone(UINavigationController) initWithRootViewController:*(v0 + 144)];
  *(v0 + 304) = v30;
  [v30 setModalPresentationStyle:4];
  [v30 setTransitioningDelegate:*(v29 + OBJC_IVAR____TtC8Freeform19CRLiOSSceneDelegate_boardViewControllerTransitioningDelegate)];
  v31 = *(v29 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___splitViewController);
  *(v0 + 312) = v31;
  v31;
  v32 = swift_task_alloc();
  *(v0 + 320) = v32;
  *v32 = v0;
  v32[1] = sub_100D9FE20;
  v33 = *(v0 + 336);
  v34 = v30;
LABEL_19:

  return sub_100D1C8E8(v34, v33);
}

uint64_t sub_100D9F6FC()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_100D9F81C, v3, v2);
}

uint64_t sub_100D9F81C()
{
  v1 = [objc_allocWithZone(UIViewController) initWithNibName:0 bundle:0];
  *(v0 + 256) = v1;
  v2 = [v1 navigationItem];
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  v3 = String._bridgeToObjectiveC()();
  v4 = *(v0 + 112);
  if (v4)
  {
    v5 = sub_100020E58((v0 + 88), *(v0 + 112));
    v6 = *(v4 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v4);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v7, v4);

    sub_100005070((v0 + 88));
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v3 style:0 target:v8 action:0];
  swift_unknownObjectRelease();

  [v2 setBackBarButtonItem:v11];
  v12 = objc_allocWithZone(UINavigationController);
  v13 = v10;
  v14 = [v12 initWithRootViewController:v13];
  *(v0 + 264) = v14;
  v15 = v14;
  [v15 setModalPresentationStyle:4];
  [v15 setTransitioningDelegate:*(v9 + OBJC_IVAR____TtC8Freeform19CRLiOSSceneDelegate_boardViewControllerTransitioningDelegate)];
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10146CE00;
  *(v16 + 32) = v1;
  *(v16 + 40) = v13;
  *(v0 + 280) = sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
  v17 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setViewControllers:isa];

  v19 = swift_task_alloc();
  *(v0 + 288) = v19;
  *v19 = v0;
  v19[1] = sub_100D9FB44;
  v20 = *(v0 + 336);

  return sub_100D1C8E8(v15, v20);
}

uint64_t sub_100D9FB44()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100DA0054;
  }

  else
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100D9FC60;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_100D9FC60()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v4 = v0[18];
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101465920;
  *(v5 + 32) = v2;
  v6 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setViewControllers:isa];

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101465920;
  *(v8 + 32) = v4;
  v9 = v4;
  v10 = Array._bridgeToObjectiveC()().super.isa;

  [v3 setViewControllers:v10];

  v11 = [v1 view];
  if (v11)
  {
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[28];

    [v11 setHidden:1];

    [v12 dismissViewControllerAnimated:0 completion:0];

    v15 = v0[1];

    v15();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D9FE20()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100DA00F0;
  }

  else
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_100D9FF3C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100D9FF3C()
{

  v1 = sub_100C0B3C0();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController;
    if ((*(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController) & 1) == 0)
    {
      sub_100070F30();
      sub_100F5E980(1, 3);

      v4 = *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver];
      if (v4)
      {
        if (*(v4 + 16))
        {

          sub_100F5E980(1, 3);
        }
      }
    }

    v2[v3] = 1;
  }

  else
  {
    v2 = *(v0 + 304);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100DA0054()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[28];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DA00F0()
{
  v1 = v0[38];
  v2 = v0[39];

  v3 = v0[1];

  return v3();
}

void *sub_100DA0184()
{
  [objc_opt_self() crl_phoneUI];
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 systemImageNamed:v0];

  if (v2)
  {
  }

  else
  {
    v3 = String._bridgeToObjectiveC()();

    v2 = [v1 _systemImageNamed:v3];

    if (!v2)
    {
LABEL_14:
      v60 = objc_opt_self();
      v61 = [v60 _atomicIncrementAssertCount];
      v219[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v219, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("whatsNewBullets", 15, 2);
      v62 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
      v63 = String._bridgeToObjectiveC()();

      v64 = [v63 lastPathComponent];

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v68 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v61;
      v70 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v70;
      v71 = sub_1005CF04C();
      *(inited + 104) = v71;
      *(inited + 72) = v62;
      *(inited + 136) = &type metadata for String;
      v72 = sub_1000053B0();
      *(inited + 112) = v65;
      *(inited + 120) = v67;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v72;
      *(inited + 152) = 195;
      v73 = v219[0];
      *(inited + 216) = v70;
      *(inited + 224) = v71;
      *(inited + 192) = v73;
      v74 = v62;
      v75 = v73;
      v76 = static os_log_type_t.error.getter();
      sub_100005404(v68, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v77 = static os_log_type_t.error.getter();
      v78 = _swiftEmptyArrayStorage;
      sub_100005404(v68, &_mh_execute_header, v77, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v79 = swift_allocObject();
      v79[2] = 8;
      v79[3] = 0;
      v79[4] = 0;
      v79[5] = 0;
      v80 = __VaListBuilder.va_list()();
      StaticString.description.getter("whatsNewBullets", 15, 2);
      v81 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
      v82 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v83 = String._bridgeToObjectiveC()();

      [v60 handleFailureInFunction:v81 file:v82 lineNumber:195 isFatal:0 format:v83 args:v80];

      goto LABEL_20;
    }
  }

  v217 = objc_opt_self();
  v4 = [v217 systemCyanColor];
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101465920;
  *(v5 + 32) = v4;
  sub_100006370(0, &qword_101A11110, UIColor_ptr);
  v6 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 configurationWithPaletteColors:isa];

  v10 = [v8 configurationPreferringMonochrome];
  v11 = [v9 configurationByApplyingConfiguration:v10];

  v12 = v11;
  v13 = [v8 configurationWithScale:2];
  v14 = [v12 configurationByApplyingConfiguration:v13];

  v15 = [v2 imageWithConfiguration:v14];
  if (!v15)
  {
    goto LABEL_14;
  }

  v215 = v15;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v1 systemImageNamed:v16];

  if (!v17 && (v18 = String._bridgeToObjectiveC()(), v17 = [v1 _systemImageNamed:v18], v18, !v17) || (v19 = objc_msgSend(v217, "systemCyanColor"), v20 = swift_allocObject(), *(v20 + 16) = xmmword_101465920, *(v20 + 32) = v19, v21 = v19, v22 = Array._bridgeToObjectiveC()().super.isa, , v23 = objc_msgSend(v8, "configurationWithPaletteColors:", v22), v22, v24 = objc_msgSend(v8, "configurationPreferringMonochrome"), v25 = objc_msgSend(v23, "configurationByApplyingConfiguration:", v24), v23, v24, v26 = v25, v27 = objc_msgSend(v8, "configurationWithScale:", 2), v28 = objc_msgSend(v26, "configurationByApplyingConfiguration:", v27), v27, v26, v29 = objc_msgSend(v17, "imageWithConfiguration:", v28), v17, v28, v21, v26, !v29))
  {
    v84 = objc_opt_self();
    v85 = [v84 _atomicIncrementAssertCount];
    v219[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v219, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("whatsNewBullets", 15, 2);
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
    v87 = String._bridgeToObjectiveC()();

    v88 = [v87 lastPathComponent];

    v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v90;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v92 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_10146CA70;
    *(v93 + 56) = &type metadata for Int32;
    *(v93 + 64) = &protocol witness table for Int32;
    *(v93 + 32) = v85;
    v94 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v93 + 96) = v94;
    v95 = sub_1005CF04C();
    *(v93 + 104) = v95;
    *(v93 + 72) = v86;
    *(v93 + 136) = &type metadata for String;
    v96 = sub_1000053B0();
    *(v93 + 112) = v89;
    *(v93 + 120) = v91;
    *(v93 + 176) = &type metadata for UInt;
    *(v93 + 184) = &protocol witness table for UInt;
    *(v93 + 144) = v96;
    *(v93 + 152) = 196;
    v97 = v219[0];
    *(v93 + 216) = v94;
    *(v93 + 224) = v95;
    *(v93 + 192) = v97;
    v98 = v86;
    v99 = v97;
    v100 = static os_log_type_t.error.getter();
    sub_100005404(v92, &_mh_execute_header, v100, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v93);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v101 = static os_log_type_t.error.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_100005404(v92, &_mh_execute_header, v101, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v102 = swift_allocObject();
    v102[2] = 8;
    v102[3] = 0;
    v102[4] = 0;
    v102[5] = 0;
    v103 = __VaListBuilder.va_list()();
    StaticString.description.getter("whatsNewBullets", 15, 2);
    v104 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v83 = String._bridgeToObjectiveC()();

    [v84 handleFailureInFunction:v104 file:v82 lineNumber:196 isFatal:0 format:v83 args:v103];

LABEL_20:

    return v78;
  }

  v212 = v29;
  v30 = String._bridgeToObjectiveC()();
  v31 = [v1 systemImageNamed:v30];

  if ((v31 || (v32 = String._bridgeToObjectiveC()(), v31 = [v1 _systemImageNamed:v32], v32, v31)) && (v33 = objc_msgSend(v217, "systemCyanColor"), v34 = swift_allocObject(), *(v34 + 16) = xmmword_101465920, *(v34 + 32) = v33, v35 = v33, v36 = Array._bridgeToObjectiveC()().super.isa, , v37 = objc_msgSend(v8, "configurationWithPaletteColors:", v36), v36, v38 = objc_msgSend(v8, "configurationPreferringMonochrome"), v39 = objc_msgSend(v37, "configurationByApplyingConfiguration:", v38), v37, v38, v40 = v39, v41 = objc_msgSend(v8, "configurationWithScale:", 2), v42 = objc_msgSend(v40, "configurationByApplyingConfiguration:", v41), v41, v40, v43 = objc_msgSend(v31, "imageWithConfiguration:", v42), v31, v42, v35, v40, v43))
  {
    v211 = v43;
    v44 = String._bridgeToObjectiveC()();
    v45 = [v1 imageNamed:v44];

    if (v45)
    {
      v46 = [v217 systemCyanColor];
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_101465920;
      *(v47 + 32) = v46;
      v48 = v46;
      v49 = Array._bridgeToObjectiveC()().super.isa;

      v50 = [v8 configurationWithPaletteColors:v49];

      v51 = [v8 configurationPreferringMonochrome];
      v52 = [v50 configurationByApplyingConfiguration:v51];

      v53 = v52;
      v54 = [v8 configurationWithScale:2];
      v55 = [v53 configurationByApplyingConfiguration:v54];

      v56 = [v45 imageWithConfiguration:v55];
      if (v56)
      {
        v218 = v56;
        sub_100DA5C84();
        v57 = [objc_opt_self() mainBundle];
        v58 = String._bridgeToObjectiveC()();
        v59 = String._bridgeToObjectiveC()();
        v149 = [v57 localizedStringForKey:v58 value:v59 table:0];

        v213 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v216 = v150;

        v151 = [objc_opt_self() mainBundle];
        v152 = String._bridgeToObjectiveC()();
        v153 = String._bridgeToObjectiveC()();
        v154 = [v151 localizedStringForKey:v152 value:v153 table:0];

        v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v209 = v156;
        v210 = v155;

        v157 = objc_opt_self();
        v158 = [v157 mainBundle];
        v159 = String._bridgeToObjectiveC()();
        v160 = String._bridgeToObjectiveC()();
        v161 = [v158 localizedStringForKey:v159 value:v160 table:0];

        v204 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v208 = v162;

        v163 = [v157 mainBundle];
        v164 = String._bridgeToObjectiveC()();
        v165 = String._bridgeToObjectiveC()();
        v166 = [v163 localizedStringForKey:v164 value:v165 table:0];

        v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v207 = v167;

        v168 = [v157 mainBundle];
        v169 = String._bridgeToObjectiveC()();
        v170 = String._bridgeToObjectiveC()();
        v171 = [v168 localizedStringForKey:v169 value:v170 table:0];

        v172 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v205 = v173;
        v206 = v172;

        v174 = [v157 mainBundle];
        v175 = String._bridgeToObjectiveC()();
        v176 = String._bridgeToObjectiveC()();
        v177 = [v174 localizedStringForKey:v175 value:v176 table:0];

        v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v179;

        v181 = [v157 mainBundle];
        v182 = String._bridgeToObjectiveC()();
        v183 = String._bridgeToObjectiveC()();
        v184 = [v181 localizedStringForKey:v182 value:v183 table:0];

        v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v186 = v185;

        v187 = [v157 mainBundle];
        v188 = String._bridgeToObjectiveC()();
        v189 = String._bridgeToObjectiveC()();
        v190 = [v187 localizedStringForKey:v188 value:v189 table:0];

        v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v193 = v192;

        sub_1005B981C(&qword_101A11D10, &qword_1014B2490);
        v78 = swift_allocObject();
        *(v78 + 1) = xmmword_10146C4D0;
        v78[4] = v213;
        v78[5] = v216;
        v78[6] = v206;
        v78[7] = v205;
        v78[8] = v215;
        v78[9] = v210;
        v78[10] = v209;
        v78[11] = v178;
        v78[12] = v180;
        v78[13] = v212;
        v78[14] = v214;
        v78[15] = v207;
        v78[16] = v191;
        v78[17] = v193;
        v78[18] = v218;
        v220 = &type metadata for CRLFeatureFlags;
        v221 = sub_100004D60();
        LOBYTE(v219[0]) = 14;
        v194 = v215;
        v195 = v212;
        v196 = v218;
        LOBYTE(v180) = isFeatureEnabled(_:)();
        sub_100005070(v219);
        if ((v180 & 1) == 0 || (v197 = [type metadata accessor for ImagePlaygroundViewController() available], (v197 & 1) == 0))
        {

          goto LABEL_34;
        }

        v198 = v78[2];
        if (v198 < 2)
        {
          __break(1u);
        }

        else
        {
          v199 = v78[3];
          v197 = v211;
          if (v198 < v199 >> 1)
          {
LABEL_32:
            v219[0] = v204;
            v219[1] = v208;
            v219[2] = v203;
            v220 = v186;
            v221 = v197;
            sub_1006770DC(2uLL, 2, 1, v219);
LABEL_34:

            return v78;
          }
        }

        v201 = v198 + 1;
        v202 = v197;
        v78 = sub_100B38A80(1, v201, 1, v78);
        v197 = v202;
        goto LABEL_32;
      }
    }

    v128 = objc_opt_self();
    v129 = [v128 _atomicIncrementAssertCount];
    v219[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v219, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("whatsNewBullets", 15, 2);
    v130 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
    v131 = String._bridgeToObjectiveC()();

    v132 = [v131 lastPathComponent];

    v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v135 = v134;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v136 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v137 = swift_allocObject();
    *(v137 + 16) = xmmword_10146CA70;
    *(v137 + 56) = &type metadata for Int32;
    *(v137 + 64) = &protocol witness table for Int32;
    *(v137 + 32) = v129;
    v138 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v137 + 96) = v138;
    v139 = sub_1005CF04C();
    *(v137 + 104) = v139;
    *(v137 + 72) = v130;
    *(v137 + 136) = &type metadata for String;
    v140 = sub_1000053B0();
    *(v137 + 112) = v133;
    *(v137 + 120) = v135;
    *(v137 + 176) = &type metadata for UInt;
    *(v137 + 184) = &protocol witness table for UInt;
    *(v137 + 144) = v140;
    *(v137 + 152) = 198;
    v141 = v219[0];
    *(v137 + 216) = v138;
    *(v137 + 224) = v139;
    *(v137 + 192) = v141;
    v142 = v130;
    v143 = v141;
    v144 = static os_log_type_t.error.getter();
    sub_100005404(v136, &_mh_execute_header, v144, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v137);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v145 = static os_log_type_t.error.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_100005404(v136, &_mh_execute_header, v145, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v146 = swift_allocObject();
    v146[2] = 8;
    v146[3] = 0;
    v146[4] = 0;
    v146[5] = 0;
    v147 = __VaListBuilder.va_list()();
    StaticString.description.getter("whatsNewBullets", 15, 2);
    v148 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
    v126 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v127 = String._bridgeToObjectiveC()();

    [v128 handleFailureInFunction:v148 file:v126 lineNumber:198 isFatal:0 format:v127 args:v147];
  }

  else
  {
    v105 = objc_opt_self();
    v106 = [v105 _atomicIncrementAssertCount];
    v219[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v219, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("whatsNewBullets", 15, 2);
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
    v108 = String._bridgeToObjectiveC()();

    v109 = [v108 lastPathComponent];

    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v113 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v114 = swift_initStackObject();
    *(v114 + 16) = xmmword_10146CA70;
    *(v114 + 56) = &type metadata for Int32;
    *(v114 + 64) = &protocol witness table for Int32;
    *(v114 + 32) = v106;
    v115 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v114 + 96) = v115;
    v116 = sub_1005CF04C();
    *(v114 + 104) = v116;
    *(v114 + 72) = v107;
    *(v114 + 136) = &type metadata for String;
    v117 = sub_1000053B0();
    *(v114 + 112) = v110;
    *(v114 + 120) = v112;
    *(v114 + 176) = &type metadata for UInt;
    *(v114 + 184) = &protocol witness table for UInt;
    *(v114 + 144) = v117;
    *(v114 + 152) = 197;
    v118 = v219[0];
    *(v114 + 216) = v115;
    *(v114 + 224) = v116;
    *(v114 + 192) = v118;
    v119 = v107;
    v120 = v118;
    v121 = static os_log_type_t.error.getter();
    sub_100005404(v113, &_mh_execute_header, v121, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v114);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v122 = static os_log_type_t.error.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_100005404(v113, &_mh_execute_header, v122, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v123 = swift_allocObject();
    v123[2] = 8;
    v123[3] = 0;
    v123[4] = 0;
    v123[5] = 0;
    v124 = __VaListBuilder.va_list()();
    StaticString.description.getter("whatsNewBullets", 15, 2);
    v125 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
    v126 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v127 = String._bridgeToObjectiveC()();

    [v105 handleFailureInFunction:v125 file:v126 lineNumber:197 isFatal:0 format:v127 args:v124];
  }

  return v78;
}

id sub_100DA1E34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSSceneDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100DA1EC0()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100051290();
  v12 = [v11 presentedViewController];

  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 topViewController];

      if (v14)
      {
        type metadata accessor for CRLiOSBoardViewController(0);
        v15 = swift_dynamicCastClass();
        if (v15)
        {
          v16 = *(*(v15 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
          v51 = v10;
          v17 = v16;

          v18 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
          v19 = *&v17[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
          v20 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          sub_10004FD94(v19 + v20, v4, type metadata accessor for CRLBoardCRDTData);
          sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
          CRRegister.wrappedValue.getter();
          sub_10003D63C(v4, type metadata accessor for CRLBoardCRDTData);
          v21 = (*&v17[v18] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
          v22 = *v21;
          v23 = v21[1];

          sub_10084BD4C(v7, v22, v23, v51);
          v24 = *&v17[v18];
          v25 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          sub_10004FD94(v24 + v25, v4, type metadata accessor for CRLBoardCRDTData);
          sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
          CRRegister.wrappedValue.getter();
          sub_10003D63C(v4, type metadata accessor for CRLBoardCRDTData);
          v26 = aBlock;
          v27 = v54;
          v28 = *(*&v17[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16);
          if (v28)
          {
            v29 = v28;
            [v29 copy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
            if (swift_dynamicCast())
            {
              v30 = v52;
            }

            else
            {
              v30 = 0;
            }
          }

          else
          {
            v30 = 0;
          }

          sub_10005013C();
          if (v31)
          {
            v32 = v31;
            v33 = type metadata accessor for CRLBoardShareItemProviderHelper();
            v34 = v51;
            v35 = sub_100D193E4(v30, v32, v51, v26, v27, 0, 0xF000000000000000);

            v36 = sub_100DA5778(v34, v26, v27, v1, v33);
            sub_1005B981C(&qword_101A1F8E0, &qword_1014B2488);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146BDE0;
            *(inited + 32) = UIActivityItemsConfigurationMetadataKeyTitle;
            *(inited + 40) = v26;
            *(inited + 48) = v27;
            *(inited + 64) = &type metadata for String;
            *(inited + 72) = UIActivityItemsConfigurationMetadataKeyLinkPresentationMetadata;
            *(inited + 104) = sub_100006370(0, &unk_101A23D30, LPLinkMetadata_ptr);
            *(inited + 80) = v36;
            v38 = UIActivityItemsConfigurationMetadataKeyTitle;
            v39 = UIActivityItemsConfigurationMetadataKeyLinkPresentationMetadata;
            v40 = v36;
            v41 = sub_100BD93EC(inited);
            swift_setDeallocating();
            sub_1005B981C(&qword_101A14648, &unk_10149EAC0);
            swift_arrayDestroy();
            v42 = swift_allocObject();
            *(v42 + 16) = xmmword_101465920;
            *(v42 + 32) = v35;
            v43 = objc_allocWithZone(UIActivityItemsConfiguration);
            sub_100006370(0, &unk_101A23D20, NSItemProvider_ptr);
            v44 = v35;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v46 = [v43 initWithItemProviders:isa];

            v47 = swift_allocObject();
            *(v47 + 16) = v41;
            v57 = sub_100DA6220;
            v58 = v47;
            aBlock = _NSConcreteStackBlock;
            v54 = *"";
            v55 = sub_100DA25D4;
            v56 = &unk_1018A4680;
            v48 = _Block_copy(&aBlock);

            [v46 setMetadataProvider:v48];
            _Block_release(v48);
            type metadata accessor for UIActivityItemsConfigurationInteraction(0);
            v49 = Array._bridgeToObjectiveC()().super.isa;
            [v46 setSupportedInteractions:v49];

            sub_10003D63C(v34, type metadata accessor for CRLBoardIdentifier);
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }
  }
}

double sub_100DA2570@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_10006E4C8(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_100064288(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_100DA25D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v13);

  v5 = v14;
  if (v14)
  {
    v6 = sub_100020E58(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100005070(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_100DA272C(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  type metadata accessor for CRLBoardCRDTData(0);
  v2[45] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[49] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[50] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[51] = v5;
  v2[52] = v4;

  return _swift_task_switch(sub_100DA2878, v5, v4);
}

uint64_t sub_100DA2878()
{
  v74 = v0;
  v1 = [*(v0 + 344) navigationController];
  *(v0 + 424) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 topViewController];
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 344);
      sub_100006370(0, &qword_101A10AB0, UIViewController_ptr);
      v6 = v5;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        if (qword_1019F2220 != -1)
        {
          swift_once();
        }

        v8 = *(v0 + 384);
        v9 = *(v0 + 392);
        v10 = *(v0 + 376);
        v70 = *(v0 + 368);
        v11 = *(v0 + 360);
        v12 = *(v0 + 344);
        v71 = static OS_os_log.sceneManagement;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v14 = *(*(v12 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
        v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
        v16 = *&v14[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
        v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        swift_beginAccess();
        sub_10004FD94(v16 + v17, v11, type metadata accessor for CRLBoardCRDTData);
        v18 = v14;
        sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
        CRRegister.wrappedValue.getter();
        sub_10003D63C(v11, type metadata accessor for CRLBoardCRDTData);
        v19 = (*&v14[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
        v20 = *v19;
        v21 = v19[1];

        sub_10084BD4C(v8, v20, v21, v9);

        (*(v10 + 16))(v8, v9, v70);
        sub_10003D63C(v9, type metadata accessor for CRLBoardIdentifier);
        v22 = UUID.uuidString.getter();
        v24 = v23;
        (*(v10 + 8))(v8, v70);
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v22;
        *(inited + 40) = v24;
        v25 = static os_log_type_t.default.getter();
        sub_100005404(v71, &_mh_execute_header, v25, "Tearing down the board view controller due to close for identifier %{public}@", 77, 2, inited);
        swift_setDeallocating();
        sub_100005070((inited + 32));
        v26 = sub_100C0B3C0();
        if (v26)
        {
          v27 = v26;
          sub_100F39588(0);
          v27[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isPresentingBoardNavigationController] = 0;
        }

        v28 = [*(*(v0 + 344) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) textInputResponder];
        if (v28)
        {
          v29 = *&v28[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
          v30 = v28;
          swift_unknownObjectRetain();

          if (v29)
          {
            [v29 setResignFirstResponderWhenKeyboardHides:1];
            swift_unknownObjectRelease();
          }
        }

        v31 = *(*(v0 + 352) + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window);
        if (v31)
        {
          v32 = [v31 windowScene];
          if (v32)
          {
            v33 = v32;
            if (sub_100FE54D8())
            {
              sub_100FE56D0(v33);
            }
          }
        }

        *(v0 + 432) = sub_100051290();
        v34 = swift_task_alloc();
        *(v0 + 440) = v34;
        *v34 = v0;
        v34[1] = sub_100DA3148;

        return sub_100D1CCA4(1);
      }
    }
  }

  else
  {
    v36 = objc_opt_self();
    v37 = [v36 _atomicIncrementAssertCount];
    v72 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v72, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("closeBoard(_:)", 14, 2);
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_10146CA70;
    *(v45 + 56) = &type metadata for Int32;
    *(v45 + 64) = &protocol witness table for Int32;
    *(v45 + 32) = v37;
    v46 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v45 + 96) = v46;
    v47 = sub_1005CF04C();
    *(v45 + 104) = v47;
    *(v45 + 72) = v38;
    *(v45 + 136) = &type metadata for String;
    v48 = sub_1000053B0();
    *(v45 + 112) = v41;
    *(v45 + 120) = v43;
    *(v45 + 176) = &type metadata for UInt;
    *(v45 + 184) = &protocol witness table for UInt;
    *(v45 + 144) = v48;
    *(v45 + 152) = 270;
    v49 = v72;
    *(v45 + 216) = v46;
    *(v45 + 224) = v47;
    *(v45 + 192) = v49;
    v50 = v38;
    v51 = v49;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v45);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter("closeBoard(_:)", 14, 2);
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/App/CRLiOSSceneDelegate.swift", 87, 2);
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v58 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v56 file:v57 lineNumber:270 isFatal:0 format:v58 args:v55];
  }

  v59 = *(v0 + 344);
  v72 = 0;
  v73 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v60._object = 0x80000001015A17E0;
  v60._countAndFlagsBits = 0xD000000000000041;
  String.append(_:)(v60);
  v61 = [v59 description];
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v65._countAndFlagsBits = v62;
  v65._object = v64;
  String.append(_:)(v65);

  v66 = v72;
  v67 = v73;
  sub_100DA610C();
  swift_allocError();
  *v68 = v66;
  v68[1] = v67;
  swift_willThrow();

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_100DA3148()
{
  v2 = *v1;
  *(v2 + 448) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);
    v4 = *(v2 + 416);

    return _swift_task_switch(sub_100DA3474, v3, v4);
  }

  else
  {

    v5 = swift_task_alloc();
    *(v2 + 456) = v5;
    *v5 = v2;
    v5[1] = sub_100DA32BC;
    v6 = *(v2 + 344);

    return sub_100C0C7FC(v6);
  }
}

uint64_t sub_100DA32BC()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_100DA33DC, v3, v2);
}

uint64_t sub_100DA33DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100DA3474()
{
  v1 = v0[53];
  v2 = v0[54];

  v3 = v0[1];

  return v3();
}

void sub_100DA3508(void *a1)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v22 - v5;
  v7 = OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window;
  v8 = *&v1[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
  if (v8 && [v8 isUserInteractionEnabled])
  {
    v9 = *&v1[v7];
    if (!v9 || (v10 = [v9 rootViewController]) == 0 || (v11 = v10, v12 = objc_msgSend(v10, "crl_windowWrapper"), v11, !v12) || (v13 = objc_msgSend(v12, "newWrapperBeginningIgnoringUserInteractionSafely"), v12, !v13))
    {
      if (qword_1019F20A8 != -1)
      {
        swift_once();
      }

      v14 = static OS_os_log.crlError;
      v15 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v15, "Could not create token for ignoring user interaction; view hierarchy may not be set up yet", 90, 2, _swiftEmptyArrayStorage);
      v13 = 0;
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    type metadata accessor for MainActor();
    v17 = v13;
    v18 = v1;
    v19 = a1;
    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v18;
    v21[5] = v19;
    v21[6] = v13;
    sub_10064191C(0, 0, v6, &unk_1014B2410, v21);
  }
}

uint64_t sub_100DA374C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a4;
  v6[16] = a6;
  v6[17] = type metadata accessor for MainActor();
  v6[18] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[19] = v8;
  *v8 = v6;
  v8[1] = sub_100DA380C;

  return sub_100DA272C(a5);
}

uint64_t sub_100DA380C()
{
  *(*v1 + 160) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100DA3A6C;
  }

  else
  {
    v4 = sub_100DA3968;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100DA3968()
{

  [*(v0 + 128) endIgnoringUserInteractionSafely];
  if ([objc_opt_self() isOSFeatureEnabled:12])
  {
    v1 = [objc_opt_self() defaultCenter];
    if (qword_1019F1F18 != -1)
    {
      swift_once();
    }

    [v1 postNotificationName:qword_101AD7910 object:*(v0 + 120)];
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100DA3A6C()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Caught error trying to close board view controller: %@", 54, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  [*(v0 + 128) endIgnoringUserInteractionSafely];
  if ([objc_opt_self() isOSFeatureEnabled:12])
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_1019F1F18 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_101AD7910 object:*(v0 + 120)];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100DA3C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v5[26] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[30] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[31] = v8;
  v5[32] = v7;

  return _swift_task_switch(sub_100DA3DA8, v8, v7);
}

uint64_t sub_100DA3DA8()
{
  v1 = v0[24];
  v2 = [objc_allocWithZone(type metadata accessor for CRLQAImportFileDocumentPickerDelegate(0)) init];
  v0[33] = v2;
  sub_1005B981C(&qword_101A054A0, &unk_101471D20);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_10146C6B0;
  static UTType.data.getter();
  v3 = objc_allocWithZone(UIDocumentPickerViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initForOpeningContentTypes:isa asCopy:1];
  v0[34] = v5;

  [v5 setAllowsMultipleSelection:0];
  [v5 setDelegate:v2];
  [v1 presentViewController:v5 animated:1 completion:0];
  v6 = swift_task_alloc();
  v0[35] = v6;
  *v6 = v0;
  v6[1] = sub_100DA3F9C;
  v7 = v0[26];

  return sub_1006C3FC4(v7);
}

uint64_t sub_100DA3F9C()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_100DA40BC, v3, v2);
}

uint64_t sub_100DA40BC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[33];
    v4 = v0[34];

    sub_100686028(v3);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v2 + 32))(v0[29], v3, v1);
    v8 = swift_task_alloc();
    v0[36] = v8;
    *v8 = v0;
    v8[1] = sub_100DA420C;
    v9 = v0[29];

    return sub_100DA46A8(v9);
  }
}

uint64_t sub_100DA420C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_100DA43F4;
  }

  else
  {
    v5 = sub_100DA4348;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100DA4348()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[28];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100DA43F4()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v18 = v0[34];
  v19 = v0[33];
  v1 = v0[28];
  v20 = v0[27];
  v16 = v0[24];
  v17 = v0[29];
  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v4 = URL.path.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 64) = v7;
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v10, "Error loading board from %@: %@", 31, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_getErrorValue();
  Error.localizedDescription.getter();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  [v16 presentViewController:v13 animated:1 completion:0];
  sub_1011047E4(v13);

  (*(v1 + 8))(v17, v20);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100DA46A8(uint64_t a1)
{
  v2[28] = a1;
  v2[29] = v1;
  type metadata accessor for CRLBoardIdentifier(0);
  v2[30] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v2[31] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v2[32] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[39] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[40] = v6;
  v2[41] = v5;

  return _swift_task_switch(sub_100DA487C, v6, v5);
}

void sub_100DA487C()
{
  sub_10005013C();
  if (v1)
  {
    v2 = v1;
    v3 = *&v1[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store];
    *(v0 + 336) = v3;
    v4 = v3;

    v29 = v4;
    v5 = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
    *(v0 + 344) = v5;
    v6 = qword_1019F2098;
    v28 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 296);
    v8 = *(v0 + 304);
    v9 = *(v0 + 288);
    v10 = *(v0 + 224);
    v11 = static OS_os_log.crlDefault;
    *(v0 + 352) = static OS_os_log.crlDefault;
    *(v0 + 360) = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v13 = URL.absoluteString.getter();
    v15 = v14;
    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(v0 + 368) = v16;
    *(inited + 64) = v16;
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v17, "QA Import file %{public}@", 25, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v18 = *(v7 + 16);
    v18(v8, v10, v9);
    if (qword_1019F2778 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 288);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = (*(v0 + 456) & 1) == 0;
    Assistant = type metadata accessor for CRLBoardFileReadAssistant(0);
    v24 = objc_allocWithZone(Assistant);
    *&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_readAssistant] = 0;
    v18(&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_url], v19, v21);
    *&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_store] = v29;
    *&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_context] = v28;
    *&v24[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_options] = v22;
    *(v0 + 208) = v24;
    *(v0 + 216) = Assistant;
    v25 = v29;
    v26 = v28;
    *(v0 + 376) = objc_msgSendSuper2((v0 + 208), "init");
    (*(v20 + 8))(v19, v21);
    v27 = swift_task_alloc();
    *(v0 + 384) = v27;
    *v27 = v0;
    v27[1] = sub_100DA4BC4;

    sub_100713020();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100DA4BC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 392) = a1;
  *(v4 + 400) = v1;

  v5 = *(v3 + 328);
  v6 = *(v3 + 320);
  if (v1)
  {
    v7 = sub_100DA54A0;
  }

  else
  {
    v7 = sub_100DA4D08;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100DA4D08()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[44];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[32];
  v7 = v0[33];
  v23 = v0[29];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v9 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v0[51] = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v10 + v11, v6, type metadata accessor for CRLBoardCRDTData);
  v0[52] = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D63C(v6, type metadata accessor for CRLBoardCRDTData);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v5 + 8))(v4, v7);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v2;
  *(inited + 32) = v12;
  *(inited + 40) = v14;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v15, "QA Import read board from file %{public}@, attempting to save.", 62, 2, inited);
  swift_setDeallocating();
  result = sub_100005070((inited + 32));
  v17 = *(v23 + OBJC_IVAR____TtC8Freeform16CRLSceneDelegate____lazy_storage___boardLibrary);
  v0[53] = v17;
  if (v17)
  {
    v18 = v0[31];
    v19 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    (*(*(v19 - 8) + 56))(v18, 1, 5, v19);
    v17;
    v20 = swift_task_alloc();
    v0[54] = v20;
    *v20 = v0;
    v20[1] = sub_100DA4F7C;
    v21 = v0[49];
    v22 = v0[31];

    return sub_1010B2B24(v21, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100DA4F7C()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *(*v1 + 248);
  *(*v1 + 440) = v0;

  sub_10003D63C(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100C33594(v3);
  v5 = *(v2 + 328);
  v6 = *(v2 + 320);
  if (v0)
  {
    v7 = sub_100DA555C;
  }

  else
  {
    v7 = sub_100DA510C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100DA510C()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[30];
  v6 = *(v2 + v1);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v6 + v7, v4, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D63C(v4, type metadata accessor for CRLBoardCRDTData);
  v8 = (*(v2 + v1) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v9 = *v8;
  v10 = v8[1];

  sub_10084BD4C(v3, v9, v10, v5);
  v11 = swift_task_alloc();
  v0[56] = v11;
  *v11 = v0;
  v11[1] = sub_100DA5270;
  v12 = v0[30];

  return sub_100C1E55C(v12);
}

uint64_t sub_100DA5270()
{
  v1 = *v0;
  v2 = *(*v0 + 240);

  sub_10003D63C(v2, type metadata accessor for CRLBoardIdentifier);
  v3 = *(v1 + 328);
  v4 = *(v1 + 320);

  return _swift_task_switch(sub_100DA53C8, v4, v3);
}

uint64_t sub_100DA53C8()
{
  v1 = *(v0 + 376);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100DA54A0()
{
  v1 = v0[47];
  v3 = v0[42];
  v2 = v0[43];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100DA555C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 336);

  v4 = *(v0 + 8);

  return v4();
}

id sub_100DA5778(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v55 = a5;
  v52 = a4;
  v53 = a3;
  v47 = a1;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for UTType();
  v49 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(LPLinkMetadata) init];
  v51 = v13;
  v14 = String._bridgeToObjectiveC()();
  [v13 setTitle:v14];

  v54 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  v15 = *(v10 + 8);
  v48 = v10 + 8;
  v50 = v15;
  v15(v12, v9);
  v16 = String._bridgeToObjectiveC()();

  v46 = type metadata accessor for CRLBoardIdentifier;
  v17 = a1;
  v18 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v18;
  sub_10004FD94(v17, v18, type metadata accessor for CRLBoardIdentifier);
  v19 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = v20;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = v21;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_1005EB270(v18, v23 + v19);
  v24 = (v23 + v20);
  v26 = v52;
  v25 = v53;
  *v24 = a2;
  v24[1] = v25;
  v27 = (v23 + v21);
  *v27 = v26;
  v27[1] = &off_10189AB78;
  *(v23 + v22) = v55;
  v60 = sub_100DA6228;
  v61 = v23;
  aBlock = _NSConcreteStackBlock;
  v57 = *"";
  v43 = &v58;
  v58 = sub_100648E30;
  v59 = &unk_1018A46D0;
  v28 = _Block_copy(&aBlock);

  v29 = v26;

  v30 = v54;
  [v54 registerDataRepresentationForTypeIdentifier:v16 visibility:0 loadHandler:v28];
  _Block_release(v28);

  v31 = v51;
  [v51 setImageProvider:v30];
  v32 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  v50(v12, v49);
  v33 = String._bridgeToObjectiveC()();

  v34 = v42;
  sub_10004FD94(v47, v42, v46);
  v35 = swift_allocObject();
  sub_1005EB270(v34, v35 + v19);
  v36 = (v35 + v44);
  *v36 = a2;
  v36[1] = v53;
  v37 = (v35 + v45);
  *v37 = v29;
  v37[1] = &off_10189AB78;
  *(v35 + v22) = v55;
  v60 = sub_100DA6240;
  v61 = v35;
  aBlock = _NSConcreteStackBlock;
  v57 = *"";
  v58 = sub_100648E30;
  v59 = &unk_1018A4720;
  v38 = _Block_copy(&aBlock);

  v39 = v29;

  [v32 registerDataRepresentationForTypeIdentifier:v33 visibility:0 loadHandler:v38];
  _Block_release(v38);

  [v31 setIconProvider:v32];
  return v31;
}

id sub_100DA5C84()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() crl_padUI];
  if (result)
  {
    if (CHGetPersonalizedSynthesisSupportState() < 1)
    {
      return 0;
    }

    else
    {
      static Locale.current.getter();
      isa = Locale._bridgeToObjectiveC()().super.isa;
      (*(v1 + 8))(v3, v0);
      v6 = CHGetPersonalizedSynthesisSupportStateForLocale();

      return (v6 > 0);
    }
  }

  return result;
}

double sub_100DA5D94()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *&result = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v13 - v3;
  v5 = *&v0[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
  if (v5 && [v5 isUserInteractionEnabled] && (sub_100C0BA2C() & 1) == 0)
  {
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(5);
    sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 sendEventInDomain:v7 lazily:1 eventPayload:isa];

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v0;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    sub_100641F30(0, 0, v4, &unk_1014B2400, v12);
  }

  return result;
}

uint64_t sub_100DA5F90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D4C8;

  return sub_100C1FB50(a1);
}

uint64_t sub_100DA6044(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100DA374C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100DA610C()
{
  result = qword_101A1F8D8;
  if (!qword_101A1F8D8)
  {
    result = swift_getWitnessTable("]&9", &type metadata for CRLiOSSceneDelegateError, v0, v1);
    atomic_store(result, &qword_101A1F8D8);
  }

  return result;
}

uint64_t sub_100DA6160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_100DA3C7C(a1, v4, v5, v7, v6);
}

uint64_t sub_100DA6258(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v3 + v8);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v3 + v9);
  v14 = *(v3 + v9 + 8);
  v15 = *(v3 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, a2, v3 + v7, v11, v12, v13, v14, v15);
}

uint64_t sub_100DA6338(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100D9DB3C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_100DA6428()
{
  if (*v0)
  {
    return 0xD00000000000003ELL;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_100DA6468()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

double sub_100DA64E0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_dynamicCastObjCProtocolConditional();
  if (v8)
  {
    v10 = v8;
    type metadata accessor for CRLBoardItem(0);
    swift_unknownObjectRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v12 = [v10 canHandleInsertionOfBoardItems:isa insertionContext:a4];

    if (v12)
    {
      swift_beginAccess();
      *(a5 + 16) = v10;
      swift_unknownObjectRelease();
      *a2 = 1;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100DA65CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100DA6640()
{
  result = qword_101A1FB50[0];
  if (!qword_101A1FB50[0])
  {
    result = swift_getWitnessTable(byte_1014B2634, &type metadata for CRLBoardItemInsertingError, v0, v1);
    atomic_store(result, qword_101A1FB50);
  }

  return result;
}

uint64_t sub_100DA6694(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100DA677C(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = v3;
  v43 = a3;
  v7 = *((swift_isaMask & *v3) + 0xD0);
  v42 = *(v7 - 8);
  __chkstk_darwin(a1);
  v9 = &v42 - v8;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = [a1 getBoardItemForUUID:isa];

  if (v11)
  {
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      sub_1012E0400(v13, &off_10188FE10);

      if (v4)
      {
      }

      else
      {
        (*(v42 + 16))(v9, &v5[*((swift_isaMask & *v5) + 0xE0)], v7);
        v44 = v13;
        v15 = v14;
        swift_setAtReferenceWritableKeyPath();

        v16 = v15;
        sub_1012CF6CC(v13, &off_10188FE10, v43);
      }

      return;
    }
  }

  v17 = objc_opt_self();
  v18 = [v17 _atomicIncrementAssertCount];
  v44 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v44, "Unable to retrieve board item", 29, 2u);
  StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
  v19 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetValue.swift", 90, 2);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v20 lastPathComponent];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v25 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v18;
  v27 = sub_1005CF000();
  *(inited + 96) = v27;
  v28 = sub_1005CF04C();
  *(inited + 104) = v28;
  *(inited + 72) = v19;
  *(inited + 136) = &type metadata for String;
  v29 = sub_1000053B0();
  *(inited + 112) = v22;
  *(inited + 120) = v24;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v29;
  *(inited + 152) = 30;
  v30 = v44;
  *(inited + 216) = v27;
  *(inited + 224) = v28;
  *(inited + 192) = v30;
  v31 = v19;
  v32 = v30;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v34 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v34, "Unable to retrieve board item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item");
  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v35[4] = 0;
  v35[5] = 0;
  v36 = __VaListBuilder.va_list()();
  StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandSetValue.swift", 90, 2);
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unable to retrieve board item", 29, 2);
  v39 = String._bridgeToObjectiveC()();

  [v17 handleFailureInFunction:v37 file:v38 lineNumber:30 isFatal:1 format:v39 args:v36];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v40, v41);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100DA6D88()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0xD8);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  (*(*(*((v2 & v1) + 0xD0) - 8) + 8))(&v0[*((swift_isaMask & *v0) + 0xE0)]);
}

id sub_100DA6EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CRLCommandSetValue(0, *((swift_isaMask & *v4) + 0xC8), *((swift_isaMask & *v4) + 0xD0), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100DA6F34(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *a1) + 0xD8);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  (*(*(*((v3 & v2) + 0xD0) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0xE0)]);
}

void sub_100DA7104(uint64_t a1)
{
  sub_100DC590C(319, &qword_101A1FC48, &type metadata for UInt32, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &qword_101A1FC50, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100DA725C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100DA7308(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DA7408(uint64_t a1@<X8>)
{
  sub_100DC7478();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_100DA744C(uint64_t a2@<X8>)
{
  sub_100DC7478();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_100DA7484(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DC4F74();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t sub_100DA74D0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}