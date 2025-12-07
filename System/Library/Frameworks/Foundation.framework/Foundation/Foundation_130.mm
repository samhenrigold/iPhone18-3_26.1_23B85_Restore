void *StringProtocol.replacingCharacters<A, B>(in:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a2;
  v61 = a5;
  v62 = a8;
  v12 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v49 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v49 - v16;
  v57 = a6;
  v17 = swift_getAssociatedTypeWitness();
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v49 - v18;
  v63 = a4;
  v19 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = 0;
  v71 = 0xE000000000000000;
  v27 = v65;
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v60 = v69;
  v61 = v68;
  (*(v23 + 16))(v26, v27, a3);
  v28 = a7;
  v62 = v12;
  v29 = v64;
  Substring.init<A>(_:)();
  v31 = v30;

  if ((v31 & 0x1000000000000000) != 0)
  {
    goto LABEL_6;
  }

  (*(v19 + 16))(v22, v29, v63);
  Substring.init<A>(_:)();
  v33 = v32;

  if ((v33 & 0x1000000000000000) != 0)
  {
    goto LABEL_6;
  }

  v35 = v54;
  v34 = v55;
  dispatch thunk of StringProtocol.utf8.getter();
  dispatch thunk of Collection.startIndex.getter();
  v66 = v61;
  v67 = v68;
  swift_getAssociatedConformanceWitness();
  v50 = dispatch thunk of Collection.distance(from:to:)();
  v36 = *(v34 + 8);
  v36(v35, v17);
  dispatch thunk of StringProtocol.utf8.getter();
  v68 = v60;
  dispatch thunk of Collection.endIndex.getter();
  v66 = v67;
  v37 = dispatch thunk of Collection.distance(from:to:)();
  v36(v35, v17);
  v38 = v56;
  dispatch thunk of StringProtocol.utf8.getter();
  v39 = v59;
  swift_getAssociatedConformanceWitness();
  v40 = dispatch thunk of Collection.count.getter();
  result = (*(v58 + 8))(v38, v39);
  v42 = v50 + v40;
  if (__OFADD__(v50, v40))
  {
    goto LABEL_10;
  }

  result = (v42 + v37);
  if (!__OFADD__(v42, v37))
  {
    MEMORY[0x1865CAED0](result);
    v28 = a7;
LABEL_6:
    v49 = v28;
    v43 = v61;
    v44 = v61 >> 14;
    result = dispatch thunk of Collection.startIndex.getter();
    if (v44 >= v68 >> 14)
    {
      v69 = v43;
      v45 = v51;
      dispatch thunk of Collection.subscript.getter();
      v46 = v53;
      swift_getAssociatedConformanceWitness();
      String.append<A>(contentsOf:)();
      v47 = *(v52 + 8);
      v47(v45, v46);
      String.append<A>(contentsOf:)();
      result = dispatch thunk of Collection.endIndex.getter();
      v48 = v68;
      if (v68 >> 14 >= v60 >> 14)
      {
        v68 = v60;
        v69 = v48;
        dispatch thunk of Collection.subscript.getter();
        String.append<A>(contentsOf:)();
        v47(v45, v46);
        return v70;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
  return result;
}

id StringProtocol.replacingPercentEscapes(using:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  return StringProtocol.replacingPercentEscapes(using:)(a1, a2, a3, &selRef_stringByReplacingPercentEscapesUsingEncoding_, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

Swift::String_optional __swiftcall StringProtocol.applyingTransform(_:reverse:)(NSStringTransform _, Swift::Bool reverse)
{
  StringProtocol._ephemeralString.getter();
  v4 = String._bridgeToObjectiveCImpl()();

  v5 = [v4 stringByApplyingTransform:_ reverse:reverse];
  swift_unknownObjectRelease();
  if (!v5)
  {
    v14 = 0;
    v13 = 0;
    goto LABEL_25;
  }

  isTaggedPointer = _objc_isTaggedPointer(v5);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
    goto LABEL_29;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v23)
    {
      v24 = v22;
      v25 = v23;
    }

    else
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v24 = v28;
      v25 = v29;
    }

    goto LABEL_22;
  }

  if (TaggedPointerTag == 22)
  {
    v14 = [v8 UTF8String];
    if (v14)
    {
      v14 = String.init(utf8String:)(v14);
      if (v13)
      {
        v20 = v14;
        v21 = v13;

        v14 = v20;
        v13 = v21;
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_29:
    if (__CFStringIsCF())
    {

LABEL_12:
      v14 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_25;
    }

    v15 = v8;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v18 = v16;
      v19 = v17;

      v13 = v19;
      v14 = v18;
      goto LABEL_25;
    }

    if (![v15 length])
    {

      goto LABEL_12;
    }

    v24 = String.init(_cocoaString:)();
    v25 = v26;
LABEL_22:

    v13 = v25;
    v14 = v24;
    goto LABEL_25;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v12 = v11;

  v13 = v12;
  v14 = v10;
LABEL_25:
  result.value._object = v13;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t StringProtocol.enumerateLinguisticTags<A, B>(in:scheme:options:orthography:invoking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v32 = a8;
  v33 = a5;
  v34 = a6;
  v36 = a3;
  v37 = a4;
  v30 = a2;
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v31 = v17;
  dispatch thunk of RangeExpression.relative<A>(to:)();
  StringProtocol._ephemeralString.getter();
  v35 = String._bridgeToObjectiveCImpl()();

  result = StringProtocol._toUTF16Offsets(_:)();
  if (__OFSUB__(v19, result))
  {
    __break(1u);
    goto LABEL_5;
  }

  v28 = a12;
  v29 = result;
  v20 = v32;
  v30 = v19 - result;
  StringProtocol._ephemeralString.getter();
  v21 = String._bridgeToObjectiveCImpl()();

  (*(v15 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v13, a7);
  v22 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a7;
  *(v23 + 3) = v20;
  *(v23 + 4) = v31;
  *(v23 + 5) = a10;
  v24 = v28;
  *(v23 + 6) = a11;
  *(v23 + 7) = v24;
  v25 = v34;
  *(v23 + 8) = v33;
  *(v23 + 9) = v25;
  (*(v15 + 32))(&v23[v22], &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a7);
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #1 in StringProtocol.enumerateLinguisticTags<A, B>(in:scheme:options:orthography:invoking:);
  *(v26 + 24) = v23;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed NSLinguisticTag?, @unowned _NSRange, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSLinguisticTag?, @unowned _NSRange, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  aBlock[3] = &block_descriptor_79;
  v27 = _Block_copy(aBlock);

  [v35 enumerateLinguisticTagsInRange:v29 scheme:v30 options:v21 orthography:v36 usingBlock:{v37, v27}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(v27);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

id closure #1 in StringProtocol.enumerateLinguisticTags<A, B>(in:scheme:options:orthography:invoking:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = 0;
  if (!a1)
  {
LABEL_32:
    __break(1u);
  }

  isTaggedPointer = _objc_isTaggedPointer(a1);
  v20 = a1;
  v21 = v20;
  v38 = a5;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v20);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v25 = v24;

          goto LABEL_21;
        }

        goto LABEL_7;
      }

      result = [v21 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v30 = String.init(utf8String:)(result);
      if (v31)
      {
LABEL_16:
        v23 = v30;
        v25 = v31;

        goto LABEL_21;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v31)
    {
      [v21 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v23 = v40;
      v25 = v41;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_7:
  v43 = 0;
  if (__CFStringIsCF())
  {

LABEL_11:
    v23 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_21;
  }

  v26 = v21;
  v27 = String.init(_nativeStorage:)();
  if (v28)
  {
    v23 = v27;
    v25 = v28;

    goto LABEL_21;
  }

  v43 = [v26 length];
  if (!v43)
  {

    goto LABEL_11;
  }

  v23 = String.init(_cocoaString:)();
  v25 = v32;
LABEL_21:
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (__OFADD__(a2, a3))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = StringProtocol._toUTF16Indices(_:)();
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v35 = v33;
  if (__OFADD__(a4, v38))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v36 = StringProtocol._toUTF16Indices(_:)();
  a7(v23, v25, v34, v35, v36, v37, &v42);

  if (v42)
  {
    *a6 = 1;
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed NSLinguisticTag?, @unowned _NSRange, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a1 + 32);
  v14 = a2;
  v13(a2, a3, a4, a5, a6, a7);
}

id StringProtocol.getBytes<A>(_:maxLength:usedLength:encoding:options:range:remaining:)(char **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = *a4;
  v26 = 0;
  v27 = 0;
  StringProtocol._ephemeralString.getter();
  v22 = String._bridgeToObjectiveCImpl()();

  v13 = *a1;
  if (*(*a1 + 2) < a2)
  {
    a2 = *(*a1 + 2);
  }

  dispatch thunk of RangeExpression.relative<A>(to:)();
  v14 = StringProtocol._toUTF16Offsets(_:)();
  v16 = v15 - v14;
  if (__OFSUB__(v15, v14))
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v17 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2), 0, v13);
  }

  *a1 = v13;

  v18 = [v22 getBytes:v13 + 32 maxLength:a2 usedLength:a3 encoding:v23 options:a5 range:v17 remainingRange:{v16, &v26}];

  swift_unknownObjectRelease();
  if (v26 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (__OFADD__(v26, v27))
  {
    goto LABEL_11;
  }

  *a7 = StringProtocol._toUTF16Indices(_:)();
  a7[1] = v19;
  return v18;
}

unint64_t StringProtocol.getLineStart<A>(_:end:contentsEnd:for:)(unint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = StringProtocol._lineBounds<A>(around:)(a4, a5, a6, a7, a8);
  *a1 = result;
  *a2 = v12;
  *a3 = v13;
  return result;
}

unint64_t StringProtocol.getParagraphStart<A>(_:end:contentsEnd:for:)(unint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = StringProtocol._paragraphBounds<A>(around:)(a4, a5, a6, a7, a8);
  *a1 = result;
  *a2 = v12;
  *a3 = v13;
  return result;
}

char *StringProtocol.linguisticTags<A, B>(in:scheme:options:orthography:tokenRanges:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v41 = a4;
  v43 = a10;
  v44[3] = *MEMORY[0x1E69E9840];
  v42 = a7;
  if (a5)
  {
    v38 = a5;
    v44[0] = 0;
    StringProtocol._ephemeralString.getter();
    v16 = String._bridgeToObjectiveCImpl()();

    v39 = a11;
    v40 = a8;
    dispatch thunk of RangeExpression.relative<A>(to:)();
    v17 = StringProtocol._toUTF16Offsets(_:)();
    v19 = v18 - v17;
    if (!__OFSUB__(v18, v17))
    {
      v20 = v17;
      StringProtocol._ephemeralString.getter();
      v21 = String._bridgeToObjectiveCImpl()();

      v22 = [v16 linguisticTagsInRange:v20 scheme:v19 options:v21 orthography:a3 tokenRanges:{v41, v44}];
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (!v22)
      {
        __break(1u);
        return result;
      }

      a3 = v44[0];
      if (v44[0])
      {
        type metadata accessor for __SwiftDeferredNSArray();
        if (swift_dynamicCastClass())
        {
          v24 = a3;

LABEL_11:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v30 = swift_dynamicCastClass();
          v31 = v30;
          if (!v30)
          {
            swift_unknownObjectRelease();
            [a3 copy];
            v31 = _bridgeCocoaArray<A>(_:)();
            v30 = swift_unknownObjectRelease();
          }

          MEMORY[0x1EEE9AC00](v30);
          v37[2] = a6;
          v37[3] = v42;
          v37[4] = v40;
          v37[5] = a9;
          v37[6] = v43;
          v37[7] = v39;
          v37[8] = v12;
          v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSayyXlG_SnySS5IndexVGs5NeverOTg5(partial apply for closure #2 in StringProtocol.linguisticTags<A, B>(in:scheme:options:orthography:tokenRanges:), v37, v31);

          *v38 = v32;

          goto LABEL_14;
        }

LABEL_10:
        v29 = a3;
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  StringProtocol._ephemeralString.getter();
  v25 = String._bridgeToObjectiveCImpl()();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  v26 = StringProtocol._toUTF16Offsets(_:)();
  a6 = v27 - v26;
  if (__OFSUB__(v27, v26))
  {
    goto LABEL_22;
  }

  v12 = v26;
  StringProtocol._ephemeralString.getter();
  v28 = String._bridgeToObjectiveCImpl()();

  v22 = [v25 linguisticTagsInRange:v12 scheme:a6 options:v28 orthography:a3 tokenRanges:{v41, 0}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v22)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_14:
  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v33 = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    swift_unknownObjectRelease();
    [v22 copy];
    v36 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
    v35 = specialized _arrayForceCast<A, B>(_:)(v36);
  }

  return v35;
}

uint64_t closure #2 in StringProtocol.linguisticTags<A, B>(in:scheme:options:orthography:tokenRanges:)@<X0>(id *a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  result = [*a1 respondsToSelector_];
  if (result)
  {
    result = [v5 rangeValue];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (!__OFADD__(result, v7))
    {
      result = StringProtocol._toUTF16Indices(_:)();
      *a4 = result;
      a4[1] = v8;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t StringProtocol.rangeOfComposedCharacterSequence(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  StringProtocol._ephemeralString.getter();
  v3 = String._bridgeToObjectiveCImpl()();

  v4 = [v3 rangeOfComposedCharacterSequenceAtIndex_];
  v6 = v5;
  result = swift_unknownObjectRelease();
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (__OFADD__(v4, v6))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return StringProtocol._toUTF16Indices(_:)();
}

uint64_t StringProtocol.rangeOfComposedCharacterSequences<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  StringProtocol._ephemeralString.getter();
  v5 = String._bridgeToObjectiveCImpl()();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = StringProtocol._toUTF16Offsets(_:)();
  if (__OFSUB__(v7, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = [v5 rangeOfComposedCharacterSequencesForRange_];
  v10 = v9;
  result = swift_unknownObjectRelease();
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__OFADD__(v8, v10))
  {
    return StringProtocol._toUTF16Indices(_:)();
  }

LABEL_7:
  __break(1u);
  return result;
}

id StringProtocol.addingPercentEscapes(using:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  return StringProtocol.replacingPercentEscapes(using:)(a1, a2, a3, &selRef_stringByAddingPercentEscapesUsingEncoding_, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

id StringProtocol.replacingPercentEscapes(using:)(uint64_t *a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *a1;
  StringProtocol._ephemeralString.getter();
  v9 = String._bridgeToObjectiveCImpl()();

  v10 = [v9 *a4];
  swift_unknownObjectRelease();
  if (!v10)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v10);
  v12 = v10;
  v13 = v12;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v12);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      [v13 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v25 = v26;
    }

LABEL_22:

    return v25;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v15;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v17 = v13;
    v18 = String.init(_nativeStorage:)();
    if (v19)
    {
      v20 = v18;

      return v20;
    }

    if (![v17 length])
    {

      return 0;
    }

    v25 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v13 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v21)
    {
      v22 = result;

      return v22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id StringProtocol.substring(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return StringProtocol.substring(from:)(a1, a2, a3, &selRef_substringFromIndex_, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

id StringProtocol.substring(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return StringProtocol.substring(from:)(a1, a2, a3, &selRef_substringToIndex_, closure #1 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply, closure #1 in closure #2 in static String._unconditionallyBridgeFromObjectiveC(_:)partial apply);
}

id StringProtocol.substring(from:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  StringProtocol._ephemeralString.getter();
  v8 = String._bridgeToObjectiveCImpl()();

  v9 = [v8 *a4];
  swift_unknownObjectRelease();
  if (!v9)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v9);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v23)
    {
      v24 = v22;
    }

    else
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v24 = v25;
    }

LABEL_21:

    return v24;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v14;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v16 = v12;
    v17 = String.init(_nativeStorage:)();
    if (v18)
    {
      v19 = v17;

      return v19;
    }

    if (![v16 length])
    {

      return 0;
    }

    v24 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v12 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v20)
    {
      v21 = result;

      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id StringProtocol.substring(with:)(uint64_t a1, uint64_t a2)
{
  StringProtocol._ephemeralString.getter();
  v2 = String._bridgeToObjectiveCImpl()();

  v3 = StringProtocol._toUTF16Offsets(_:)();
  if (__OFSUB__(v4, v3))
  {
    __break(1u);
  }

  v5 = [v2 substringWithRange_];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v5);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
    goto LABEL_8;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v20 = v21;
    }

LABEL_22:

    return v20;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v10;
    }

LABEL_8:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v12 = v8;
    v13 = String.init(_nativeStorage:)();
    if (v14)
    {
      v15 = v13;

      return v15;
    }

    if (![v12 length])
    {

      return 0;
    }

    v20 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v8 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v16)
    {
      v17 = result;

      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id @nonobjc NSString.init(contentsOf:usedEncoding:)(uint64_t *a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 432))(ObjectType, v4);
  v11[0] = 0;
  v7 = [v2 initWithContentsOfURL:v6 usedEncoding:a2 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    if (v11[0])
    {
      v11[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v9 = _nilObjCError;
    }

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v7;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for closure #1 in StringProtocol.enumerateLines(invoking:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v7 = 0;
  result = v5(a1, a2, &v7);
  if (v7 == 1)
  {
    *a3 = v7;
  }

  return result;
}

Swift::Int_optional __swiftcall NSIndexSetIterator.next()()
{
  if (*(v0 + 8) == 1)
  {
    v1 = [*v0 firstIndex];
    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    *(v0 + 8) = 0;
  }

  else
  {
    v1 = *(v0 + 16);
    if (*(v0 + 24))
    {
      v2 = 1;
      goto LABEL_9;
    }

    v1 = [*v0 indexGreaterThanIndex_];
    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
  }

  if (v1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = 0;
    *(v0 + 16) = 0;
    v2 = 1;
    *(v0 + 24) = 1;
  }

  else
  {
    v2 = 0;
  }

LABEL_9:
  v3 = v1;
  result.value = v3;
  result.is_nil = v2;
  return result;
}

Swift::Int protocol witness for IteratorProtocol.next() in conformance NSIndexSetIterator@<X0>(uint64_t a1@<X8>)
{
  v3 = NSIndexSetIterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

id NSIndexSet.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 1;
  *a1 = v1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return v1;
}

unint64_t lazy protocol witness table accessor for type NSIndexSetIterator and conformance NSIndexSetIterator()
{
  result = lazy protocol witness table cache variable for type NSIndexSetIterator and conformance NSIndexSetIterator;
  if (!lazy protocol witness table cache variable for type NSIndexSetIterator and conformance NSIndexSetIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSIndexSetIterator and conformance NSIndexSetIterator);
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance NSIndexSet(uint64_t a1@<X8>)
{
  v2 = *v1;
  *(a1 + 8) = 1;
  *a1 = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NSIndexSet()
{
  v1 = *v0;
  specialized _copySequenceToContiguousArray<A>(_:)(*v0);
  v3 = v2;

  return v3;
}

uint64_t getEnumTagSinglePayload for NSIndexSetIterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for NSIndexSetIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NSGrammaticalPartOfSpeech.morphunValue()(unint64_t a1)
{
  if (a1 < 0xF)
  {
    return qword_1812E90B8[a1];
  }

  if (a1 == 15)
  {
    return 0x6F4E7265706F7270;
  }

  return 0;
}

uint64_t NSGrammaticalCase.morphunValue()(unint64_t a1)
{
  if (a1 < 0xF)
  {
    return qword_1812E91A8[a1];
  }

  if (a1 == 15)
  {
    return 0x656D757274736E69;
  }

  if (a1 == 16)
  {
    return 0x69746174696D6F63;
  }

  return 0;
}

unint64_t NSMorphology.morphunConstraints()()
{
  v4 = v0;
  v5 = MEMORY[0x1E69E7CC8];
  v299 = MEMORY[0x1E69E7CC8];
  v6 = [v0 grammaticalGender];
  if (v6 > 1)
  {
    if (v6 == 3)
    {
      v7 = 0xE600000000000000;
      v8 = 0x72657475656ELL;
      goto LABEL_11;
    }

    if (v6 == 2)
    {
      v8 = 0x6E696C756373616DLL;
      v7 = 0xE900000000000065;
      goto LABEL_11;
    }

LABEL_8:
    if (v6 != 4)
    {
      goto LABEL_20;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6E6F6D6D6F63;
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_20;
  }

  if (v6 != 1)
  {
    goto LABEL_8;
  }

  v7 = 0xE800000000000000;
  v8 = 0x656E696E696D6566;
LABEL_11:
  v1 = 0x7265646E6567;
  [v0 grammaticalGender];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x7265646E6567, 0xE600000000000000);
  v12 = *(v5 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_121;
  }

  LOBYTE(v2) = v11;
  if (*(v5 + 24) >= v15)
  {
    v3 = MEMORY[0x1E69E7CC8];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_128;
    }

    v5 = MEMORY[0x1E69E7CC8];
    if ((v11 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x7265646E6567, 0xE600000000000000);
    if ((v2 & 1) != (v16 & 1))
    {
LABEL_290:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    if ((v2 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_15:
  v17 = (*(v5 + 56) + 16 * v10);
  *v17 = v8;
  v17[1] = v7;

  while (1)
  {
    v299 = v5;
LABEL_20:
    v18 = [v4 number] - 1;
    if (v18 > 5 || ((0x3Du >> v18) & 1) == 0)
    {
      v8 = v5;
      goto LABEL_32;
    }

    v19 = *&aSingularplural[8 * v18];
    v2 = 0x746E756F63;
    v1 = qword_1812E92C8[v18];
    [v4 number];
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E756F63, 0xE500000000000000);
    v21 = *(v5 + 16);
    v22 = (v20 & 1) == 0;
    v14 = __OFADD__(v21, v22);
    v23 = v21 + v22;
    if (v14)
    {
      __break(1u);
      goto LABEL_230;
    }

    v3 = v20;
    if (*(v5 + 24) >= v23)
    {
      if (v8)
      {
        v8 = v5;
        if ((v20 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v290 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
        v254 = static _DictionaryStorage.copy(original:)();
        v8 = v254;
        if (*(v5 + 16))
        {
          v255 = (v254 + 64);
          v256 = ((1 << *(v8 + 32)) + 63) >> 6;
          if (v8 != v5 || v255 >= v5 + 64 + 8 * v256)
          {
            memmove(v255, (v5 + 64), 8 * v256);
          }

          v257 = 0;
          *(v8 + 16) = *(v5 + 16);
          v258 = 1 << *(v5 + 32);
          v259 = -1;
          if (v258 < 64)
          {
            v259 = ~(-1 << v258);
          }

          v278 = ((v258 + 63) >> 6);
          v260 = v259 & *(v5 + 64);
          if (v260)
          {
            do
            {
              v261 = __clz(__rbit64(v260));
              v298 = (v260 - 1) & v260;
LABEL_277:
              v264 = 16 * (v261 | (v257 << 6));
              v265 = (*(v5 + 48) + v264);
              v267 = *v265;
              v266 = v265[1];
              v268 = (*(v5 + 56) + v264);
              v269 = *v268;
              v270 = v268[1];
              v271 = (*(v8 + 48) + v264);
              *v271 = v267;
              v271[1] = v266;
              v272 = (*(v8 + 56) + v264);
              *v272 = v269;
              v272[1] = v270;

              v260 = v298;
            }

            while (v298);
          }

          v262 = v257;
          while (1)
          {
            v257 = v262 + 1;
            if (__OFADD__(v262, 1))
            {
              goto LABEL_289;
            }

            if (v257 >= v278)
            {
              break;
            }

            v263 = *(v5 + 64 + 8 * v257);
            ++v262;
            if (v263)
            {
              v261 = __clz(__rbit64(v263));
              v298 = (v263 - 1) & v263;
              goto LABEL_277;
            }
          }
        }

        v10 = v290;
        if ((v3 & 1) == 0)
        {
LABEL_30:
          specialized _NativeDictionary._insert(at:key:value:)(v10, 0x746E756F63, 0xE500000000000000, v19, v1, v8);
          goto LABEL_31;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, v8);
      v8 = v5;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x746E756F63, 0xE500000000000000);
      if ((v3 & 1) != (v24 & 1))
      {
        goto LABEL_290;
      }

      if ((v3 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v25 = (*(v8 + 56) + 16 * v10);
    *v25 = v19;
    v25[1] = v1;

LABEL_31:
    v299 = v8;
LABEL_32:
    v26 = NSGrammaticalPartOfSpeech.morphunValue()([v4 partOfSpeech]);
    if (!v27)
    {
      v7 = v8;
      goto LABEL_43;
    }

    v1 = v26;
    v28 = v27;
    [v4 partOfSpeech];
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(7565168, 0xE300000000000000);
    v30 = *(v8 + 16);
    v31 = (v29 & 1) == 0;
    v14 = __OFADD__(v30, v31);
    v32 = v30 + v31;
    if (v14)
    {
      goto LABEL_124;
    }

    LOBYTE(v2) = v29;
    if (*(v8 + 24) >= v32)
    {
      if (v7)
      {
        v7 = v8;
        if ((v29 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v286 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
        v174 = static _DictionaryStorage.copy(original:)();
        v7 = v174;
        if (*(v8 + 16))
        {
          v175 = (v174 + 64);
          v176 = (v8 + 64);
          v177 = ((1 << *(v7 + 32)) + 63) >> 6;
          if (v7 != v8 || v175 >= &v176[8 * v177])
          {
            memmove(v175, v176, 8 * v177);
          }

          v178 = 0;
          *(v7 + 16) = *(v8 + 16);
          v179 = 1 << *(v8 + 32);
          v180 = -1;
          if (v179 < 64)
          {
            v180 = ~(-1 << v179);
          }

          v181 = v180 & *(v8 + 64);
          v182 = (v179 + 63) >> 6;
          if (v181)
          {
            do
            {
              v183 = __clz(__rbit64(v181));
              v295 = (v181 - 1) & v181;
LABEL_208:
              v186 = 16 * (v183 | (v178 << 6));
              v187 = (*(v8 + 48) + v186);
              v189 = *v187;
              v188 = v187[1];
              v190 = (*(v8 + 56) + v186);
              v191 = *v190;
              v3 = v190[1];
              v192 = (*(v7 + 48) + v186);
              *v192 = v189;
              v192[1] = v188;
              v193 = (*(v7 + 56) + v186);
              *v193 = v191;
              v193[1] = v3;

              v181 = v295;
            }

            while (v295);
          }

          v184 = v178;
          while (1)
          {
            v178 = v184 + 1;
            if (__OFADD__(v184, 1))
            {
              goto LABEL_285;
            }

            if (v178 >= v182)
            {
              break;
            }

            v185 = *(v8 + 64 + 8 * v178);
            ++v184;
            if (v185)
            {
              v183 = __clz(__rbit64(v185));
              v295 = (v185 - 1) & v185;
              goto LABEL_208;
            }
          }
        }

        v10 = v286;
        if ((v2 & 1) == 0)
        {
LABEL_41:
          specialized _NativeDictionary._insert(at:key:value:)(v10, 7565168, 0xE300000000000000, v1, v28, v7);
          goto LABEL_42;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, v7);
      v7 = v8;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(7565168, 0xE300000000000000);
      if ((v2 & 1) != (v33 & 1))
      {
        goto LABEL_290;
      }

      if ((v2 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v34 = (*(v7 + 56) + 16 * v10);
    *v34 = v1;
    v34[1] = v28;

LABEL_42:
    v299 = v7;
LABEL_43:
    v35 = NSGrammaticalCase.morphunValue()([v4 grammaticalCase]);
    if (!v36)
    {
      v43 = v7;
      goto LABEL_54;
    }

    v1 = v35;
    v8 = v36;
    [v4 grammaticalCase];
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(1702060387, 0xE400000000000000);
    v39 = *(v7 + 16);
    v40 = (v38 & 1) == 0;
    v14 = __OFADD__(v39, v40);
    v41 = v39 + v40;
    if (v14)
    {
      goto LABEL_125;
    }

    v42 = v38;
    if (*(v7 + 24) >= v41)
    {
      if (v37)
      {
        v43 = v7;
        if ((v38 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v287 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
        v194 = static _DictionaryStorage.copy(original:)();
        v43 = v194;
        if (*(v7 + 16))
        {
          v195 = (v194 + 64);
          v196 = (v7 + 64);
          v197 = ((1 << *(v43 + 32)) + 63) >> 6;
          if (v43 != v7 || v195 >= &v196[8 * v197])
          {
            memmove(v195, v196, 8 * v197);
          }

          v198 = 0;
          *(v43 + 16) = *(v7 + 16);
          v199 = 1 << *(v7 + 32);
          v200 = -1;
          if (v199 < 64)
          {
            v200 = ~(-1 << v199);
          }

          v201 = v200 & *(v7 + 64);
          v202 = (v199 + 63) >> 6;
          if (v201)
          {
            do
            {
              v203 = __clz(__rbit64(v201));
              v296 = (v201 - 1) & v201;
LABEL_223:
              v206 = 16 * (v203 | (v198 << 6));
              v207 = (*(v7 + 48) + v206);
              v209 = *v207;
              v208 = v207[1];
              v210 = (*(v7 + 56) + v206);
              v211 = *v210;
              v3 = v210[1];
              v212 = (*(v43 + 48) + v206);
              *v212 = v209;
              v212[1] = v208;
              v213 = (*(v43 + 56) + v206);
              *v213 = v211;
              v213[1] = v3;

              v201 = v296;
            }

            while (v296);
          }

          v204 = v198;
          while (1)
          {
            v198 = v204 + 1;
            if (__OFADD__(v204, 1))
            {
              goto LABEL_286;
            }

            if (v198 >= v202)
            {
              break;
            }

            v205 = *(v7 + 64 + 8 * v198);
            ++v204;
            if (v205)
            {
              v203 = __clz(__rbit64(v205));
              v296 = (v205 - 1) & v205;
              goto LABEL_223;
            }
          }
        }

        v10 = v287;
        if ((v42 & 1) == 0)
        {
LABEL_52:
          specialized _NativeDictionary._insert(at:key:value:)(v10, 1702060387, 0xE400000000000000, v1, v8, v43);
          goto LABEL_53;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, v37);
      v43 = v7;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(1702060387, 0xE400000000000000);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_290;
      }

      if ((v42 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v45 = (*(v43 + 56) + 16 * v10);
    *v45 = v1;
    v45[1] = v8;

LABEL_53:
    v299 = v43;
LABEL_54:
    v46 = [v4 determination];
    if (v46 == 1)
    {
      v8 = 0xEB00000000746E65;
      v1 = 0x646E657065646E69;
    }

    else
    {
      if (v46 != 2)
      {
        v7 = v43;
        goto LABEL_68;
      }

      v8 = 0xE900000000000074;
      v1 = 0x6E65646E65706564;
    }

    LOBYTE(v2) = 97;
    v3 = 0x6E696D7265746564;
    [v4 determination];
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E696D7265746564, 0xED00006E6F697461);
    v48 = *(v43 + 16);
    v49 = (v47 & 1) == 0;
    v14 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v14)
    {
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v51 = v47;
    if (*(v43 + 24) >= v50)
    {
      if (v7)
      {
        v7 = v43;
        if ((v47 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v274 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
        v111 = static _DictionaryStorage.copy(original:)();
        v7 = v111;
        if (*(v43 + 16))
        {
          v112 = (v111 + 64);
          v113 = (v43 + 64);
          v114 = ((1 << *(v7 + 32)) + 63) >> 6;
          if (v7 != v43 || v112 >= &v113[8 * v114])
          {
            memmove(v112, v113, 8 * v114);
          }

          v115 = 0;
          *(v7 + 16) = *(v43 + 16);
          v116 = 1 << *(v43 + 32);
          v117 = -1;
          if (v116 < 64)
          {
            v117 = ~(-1 << v116);
          }

          v118 = v117 & *(v43 + 64);
          v119 = (v116 + 63) >> 6;
          __srca = v119;
          if (v118)
          {
            do
            {
              v120 = __clz(__rbit64(v118));
              v292 = (v118 - 1) & v118;
LABEL_157:
              v123 = 16 * (v120 | (v115 << 6));
              v124 = (*(v43 + 48) + v123);
              v126 = *v124;
              v125 = v124[1];
              v127 = (*(v43 + 56) + v123);
              v128 = *v127;
              v129 = v127[1];
              v130 = (*(v7 + 48) + v123);
              *v130 = v126;
              v130[1] = v125;
              v131 = (*(v7 + 56) + v123);
              *v131 = v128;
              v131[1] = v129;

              v119 = __srca;
              v118 = v292;
            }

            while (v292);
          }

          v121 = v115;
          while (1)
          {
            v115 = v121 + 1;
            if (__OFADD__(v121, 1))
            {
              break;
            }

            if (v115 >= v119)
            {
              goto LABEL_189;
            }

            v122 = *(v43 + 64 + 8 * v115);
            ++v121;
            if (v122)
            {
              v120 = __clz(__rbit64(v122));
              v292 = (v122 - 1) & v122;
              goto LABEL_157;
            }
          }

LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
          goto LABEL_290;
        }

LABEL_189:

        v10 = v274;
        if ((v51 & 1) == 0)
        {
LABEL_66:
          specialized _NativeDictionary._insert(at:key:value:)(v10, 0x6E696D7265746564, 0xED00006E6F697461, v1, v8, v7);
          goto LABEL_67;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v50, v7);
      v7 = v43;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E696D7265746564, 0xED00006E6F697461);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_290;
      }

      if ((v51 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v53 = (*(v7 + 56) + 16 * v10);
    *v53 = v1;
    v53[1] = v8;

LABEL_67:
    v299 = v7;
LABEL_68:
    v8 = 0x6574696E69666564;
    v54 = [v4 definiteness];
    if (v54 == 2)
    {
      v1 = 0xE800000000000000;
      v2 = 0x6574696E69666564;
LABEL_72:
      v3 = 0xEC0000007373656ELL;
      [v4 definiteness];
      v55 = swift_isUniquelyReferenced_nonNull_native();
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6574696E69666564, 0xEC0000007373656ELL);
      v57 = *(v7 + 16);
      v58 = (v56 & 1) == 0;
      v14 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v14)
      {
        goto LABEL_122;
      }

      v60 = v56;
      if (*(v7 + 24) >= v59)
      {
        if (v55)
        {
          v5 = v7;
          if (v56)
          {
LABEL_76:
            v62 = (*(v5 + 56) + 16 * v10);
            *v62 = v2;
            v62[1] = v1;

LABEL_81:
            v299 = v5;
            goto LABEL_82;
          }
        }

        else
        {
          v275 = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
          v132 = static _DictionaryStorage.copy(original:)();
          v5 = v132;
          if (*(v7 + 16))
          {
            v133 = (v132 + 64);
            v134 = (v7 + 64);
            v135 = ((1 << *(v5 + 32)) + 63) >> 6;
            if (v5 != v7 || v133 >= &v134[8 * v135])
            {
              memmove(v133, v134, 8 * v135);
            }

            v136 = 0;
            *(v5 + 16) = *(v7 + 16);
            v137 = 1 << *(v7 + 32);
            v138 = -1;
            if (v137 < 64)
            {
              v138 = ~(-1 << v137);
            }

            v139 = v138 & *(v7 + 64);
            v140 = (v137 + 63) >> 6;
            __srcb = v140;
            if (v139)
            {
              do
              {
                v141 = __clz(__rbit64(v139));
                v293 = (v139 - 1) & v139;
LABEL_172:
                v144 = 16 * (v141 | (v136 << 6));
                v145 = (*(v7 + 48) + v144);
                v147 = *v145;
                v146 = v145[1];
                v148 = (*(v7 + 56) + v144);
                v149 = *v148;
                v150 = v148[1];
                v151 = (*(v5 + 48) + v144);
                *v151 = v147;
                v151[1] = v146;
                v152 = (*(v5 + 56) + v144);
                *v152 = v149;
                v152[1] = v150;

                v140 = __srcb;
                v139 = v293;
              }

              while (v293);
            }

            v142 = v136;
            while (1)
            {
              v136 = v142 + 1;
              if (__OFADD__(v142, 1))
              {
                goto LABEL_283;
              }

              if (v136 >= v140)
              {
                break;
              }

              v143 = *(v7 + 64 + 8 * v136);
              ++v142;
              if (v143)
              {
                v141 = __clz(__rbit64(v143));
                v293 = (v143 - 1) & v143;
                goto LABEL_172;
              }
            }
          }

          v10 = v275;
          if (v60)
          {
            goto LABEL_76;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v59, v55);
        v5 = v7;
        v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6574696E69666564, 0xEC0000007373656ELL);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_290;
        }

        if (v60)
        {
          goto LABEL_76;
        }
      }

      specialized _NativeDictionary._insert(at:key:value:)(v10, 0x6574696E69666564, 0xEC0000007373656ELL, v2, v1, v5);
      goto LABEL_81;
    }

    if (v54 == 1)
    {
      v2 = 0x696E696665646E69;
      v1 = 0xEA00000000006574;
      goto LABEL_72;
    }

    v5 = v7;
LABEL_82:
    v63 = [v4 grammaticalPerson] - 1;
    if (v63 > 2)
    {
      v7 = v5;
      goto LABEL_93;
    }

    v8 = *&aFirst_5[8 * v63];
    v2 = 0x6E6F73726570;
    v1 = qword_1812E9310[v63];
    [v4 grammaticalPerson];
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F73726570, 0xE600000000000000);
    v65 = *(v5 + 16);
    v66 = (v64 & 1) == 0;
    v14 = __OFADD__(v65, v66);
    v67 = v65 + v66;
    if (v14)
    {
      goto LABEL_126;
    }

    v3 = v64;
    if (*(v5 + 24) < v67)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v67, v7);
      v7 = v5;
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E6F73726570, 0xE600000000000000);
      if ((v3 & 1) != (v68 & 1))
      {
        goto LABEL_290;
      }

      if ((v3 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_87;
    }

    if (v7)
    {
      v7 = v5;
      if ((v64 & 1) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_87;
    }

LABEL_230:
    v276 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v214 = static _DictionaryStorage.copy(original:)();
    v7 = v214;
    if (*(v5 + 16))
    {
      v215 = (v214 + 64);
      __srcc = (v5 + 64);
      v216 = ((1 << *(v7 + 32)) + 63) >> 6;
      if (v7 != v5 || v215 >= &__srcc[8 * v216])
      {
        memmove(v215, __srcc, 8 * v216);
      }

      v217 = 0;
      *(v7 + 16) = *(v5 + 16);
      v218 = 1 << *(v5 + 32);
      v219 = -1;
      if (v218 < 64)
      {
        v219 = ~(-1 << v218);
      }

      v220 = v219 & *(v5 + 64);
      v221 = (v218 + 63) >> 6;
      v288 = v221;
      if (v220)
      {
        do
        {
          v222 = __clz(__rbit64(v220));
          v297 = (v220 - 1) & v220;
LABEL_243:
          v225 = 16 * (v222 | (v217 << 6));
          v226 = (*(v5 + 48) + v225);
          v228 = *v226;
          v227 = v226[1];
          v229 = (*(v5 + 56) + v225);
          v230 = *v229;
          v231 = v229[1];
          v232 = (*(v7 + 48) + v225);
          *v232 = v228;
          v232[1] = v227;
          v233 = (*(v7 + 56) + v225);
          *v233 = v230;
          v233[1] = v231;

          v221 = v288;
          v220 = v297;
        }

        while (v297);
      }

      v223 = v217;
      while (1)
      {
        v217 = v223 + 1;
        if (__OFADD__(v223, 1))
        {
          goto LABEL_287;
        }

        if (v217 >= v221)
        {
          break;
        }

        v224 = *&__srcc[8 * v217];
        ++v223;
        if (v224)
        {
          v222 = __clz(__rbit64(v224));
          v297 = (v224 - 1) & v224;
          goto LABEL_243;
        }
      }
    }

    v10 = v276;
    if ((v3 & 1) == 0)
    {
LABEL_91:
      specialized _NativeDictionary._insert(at:key:value:)(v10, v2, 0xE600000000000000, v8, v1, v7);
      goto LABEL_92;
    }

LABEL_87:
    v69 = (*(v7 + 56) + 16 * v10);
    *v69 = v8;
    v69[1] = v1;

LABEL_92:
    v299 = v7;
LABEL_93:
    v70 = [v4 pronounType] - 1;
    if (v70 > 2)
    {
      v77 = v7;
      goto LABEL_104;
    }

    LOBYTE(v2) = 121;
    v8 = *&aPersonalreflex[8 * v70];
    v3 = 0x546E756F6E6F7270;
    v1 = *&aPersonalreflex[8 * v70 + 24];
    [v4 pronounType];
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x546E756F6E6F7270, 0xEB00000000657079);
    v73 = *(v7 + 16);
    v74 = (v72 & 1) == 0;
    v14 = __OFADD__(v73, v74);
    v75 = v73 + v74;
    if (!v14)
    {
      break;
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __src = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v90 = static _DictionaryStorage.copy(original:)();
    v5 = v90;
    v91 = *(v3 + 16);
    if (v91)
    {
      v92 = (v90 + 64);
      v93 = ((1 << *(v5 + 32)) + 63) >> 6;
      if (v5 != v3 || v92 >= v3 + 8 * v93 + 64)
      {
        memmove(v92, (v3 + 64), 8 * v93);
      }

      v94 = 0;
      *(v5 + 16) = v91;
      v95 = 1 << *(v3 + 32);
      v96 = -1;
      if (v95 < 64)
      {
        v96 = ~(-1 << v95);
      }

      v97 = v96 & *(v3 + 64);
      v98 = (v95 + 63) >> 6;
      v284 = v98;
      if (v97)
      {
        do
        {
          v291 = (v97 - 1) & v97;
          v99 = __clz(__rbit64(v97)) | (v94 << 6);
LABEL_140:
          v102 = 16 * v99;
          v103 = (*(v3 + 48) + 16 * v99);
          v105 = *v103;
          v104 = v103[1];
          v106 = (*(v3 + 56) + v102);
          v107 = *v106;
          v108 = v106[1];
          v109 = (*(v5 + 48) + v102);
          *v109 = v105;
          v109[1] = v104;
          v110 = (*(v5 + 56) + v102);
          *v110 = v107;
          v110[1] = v108;

          v98 = v284;
          v97 = v291;
        }

        while (v291);
      }

      while (1)
      {
        v100 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v100 >= v98)
        {
          goto LABEL_142;
        }

        v101 = *(v3 + 8 * v100 + 64);
        ++v94;
        if (v101)
        {
          v291 = (v101 - 1) & v101;
          v99 = __clz(__rbit64(v101)) | (v100 << 6);
          v94 = v100;
          goto LABEL_140;
        }
      }

      __break(1u);
      goto LABEL_282;
    }

LABEL_142:

    v10 = __src;
    if (v2)
    {
      goto LABEL_15;
    }

LABEL_18:
    specialized _NativeDictionary._insert(at:key:value:)(v10, v1, 0xE600000000000000, v8, v7, v5);
  }

  v76 = v72;
  if (*(v7 + 24) >= v75)
  {
    if (v71)
    {
      v77 = v7;
      if (v72)
      {
        goto LABEL_98;
      }

      goto LABEL_102;
    }

    v273 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v234 = static _DictionaryStorage.copy(original:)();
    v77 = v234;
    if (*(v7 + 16))
    {
      v235 = (v234 + 64);
      v277 = (v7 + 64);
      v236 = ((1 << *(v77 + 32)) + 63) >> 6;
      if (v77 != v7 || v235 >= &v277[8 * v236])
      {
        memmove(v235, v277, 8 * v236);
      }

      v237 = 0;
      *(v77 + 16) = *(v7 + 16);
      v238 = 1 << *(v7 + 32);
      v239 = -1;
      if (v238 < 64)
      {
        v239 = ~(-1 << v238);
      }

      v240 = v239 & *(v7 + 64);
      v241 = (v238 + 63) >> 6;
      __srcd = v241;
      if (v240)
      {
        do
        {
          v242 = __clz(__rbit64(v240));
          v289 = (v240 - 1) & v240;
LABEL_258:
          v245 = 16 * (v242 | (v237 << 6));
          v246 = (*(v7 + 48) + v245);
          v248 = *v246;
          v247 = v246[1];
          v249 = (*(v7 + 56) + v245);
          v250 = *v249;
          v251 = v249[1];
          v252 = (*(v77 + 48) + v245);
          *v252 = v248;
          v252[1] = v247;
          v253 = (*(v77 + 56) + v245);
          *v253 = v250;
          v253[1] = v251;

          v241 = __srcd;
          v240 = v289;
        }

        while (v289);
      }

      v243 = v237;
      while (1)
      {
        v237 = v243 + 1;
        if (__OFADD__(v243, 1))
        {
          goto LABEL_288;
        }

        if (v237 >= v241)
        {
          break;
        }

        v244 = *&v277[8 * v237];
        ++v243;
        if (v244)
        {
          v242 = __clz(__rbit64(v244));
          v289 = (v244 - 1) & v244;
          goto LABEL_258;
        }
      }
    }

    v10 = v273;
    if ((v76 & 1) == 0)
    {
      goto LABEL_102;
    }

LABEL_98:
    v79 = (*(v77 + 56) + 16 * v10);
    *v79 = v8;
    v79[1] = v1;
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v75, v71);
    v77 = v7;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x546E756F6E6F7270, 0xEB00000000657079);
    if ((v76 & 1) != (v78 & 1))
    {
      goto LABEL_290;
    }

    if (v76)
    {
      goto LABEL_98;
    }

LABEL_102:
    specialized _NativeDictionary._insert(at:key:value:)(v10, 0x546E756F6E6F7270, 0xEB00000000657079, v8, v1, v77);
  }

  v299 = v77;
LABEL_104:
  v7 = 0x766973756C636E69;
  v80 = [v4 _clusivity];
  if (v80 != 1)
  {
    if (v80 != 2)
    {
      v86 = v77;
      goto LABEL_117;
    }

    v7 = 0x766973756C637865;
  }

  v8 = 0x7469766973756C63;
  [v4 _clusivity];
  v2 = swift_isUniquelyReferenced_nonNull_native();
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x7469766973756C63, 0xE900000000000079);
  v82 = *(v77 + 16);
  v83 = (v81 & 1) == 0;
  v14 = __OFADD__(v82, v83);
  v84 = v82 + v83;
  if (v14)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v85 = v81;
  if (*(v77 + 24) >= v84)
  {
    if (v2)
    {
      v86 = v77;
      if (v81)
      {
        goto LABEL_111;
      }

      goto LABEL_115;
    }

    v285 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v153 = static _DictionaryStorage.copy(original:)();
    v86 = v153;
    if (*(v77 + 16))
    {
      v154 = (v153 + 64);
      v155 = (v77 + 64);
      v156 = ((1 << *(v86 + 32)) + 63) >> 6;
      if (v86 != v77 || v154 >= &v155[8 * v156])
      {
        memmove(v154, v155, 8 * v156);
      }

      v157 = 0;
      *(v86 + 16) = *(v77 + 16);
      v158 = 1 << *(v77 + 32);
      v159 = -1;
      if (v158 < 64)
      {
        v159 = ~(-1 << v158);
      }

      v160 = v159 & *(v77 + 64);
      v161 = (v158 + 63) >> 6;
      if (v160)
      {
        do
        {
          v162 = __clz(__rbit64(v160));
          v294 = (v160 - 1) & v160;
LABEL_187:
          v165 = 16 * (v162 | (v157 << 6));
          v166 = (*(v77 + 48) + v165);
          v168 = *v166;
          v167 = v166[1];
          v169 = (*(v77 + 56) + v165);
          v170 = *v169;
          v171 = v169[1];
          v172 = (*(v86 + 48) + v165);
          *v172 = v168;
          v172[1] = v167;
          v173 = (*(v86 + 56) + v165);
          *v173 = v170;
          v173[1] = v171;

          v160 = v294;
        }

        while (v294);
      }

      v163 = v157;
      while (1)
      {
        v157 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          goto LABEL_284;
        }

        if (v157 >= v161)
        {
          break;
        }

        v164 = *(v77 + 64 + 8 * v157);
        ++v163;
        if (v164)
        {
          v162 = __clz(__rbit64(v164));
          v294 = (v164 - 1) & v164;
          goto LABEL_187;
        }
      }
    }

    v10 = v285;
    if ((v85 & 1) == 0)
    {
      goto LABEL_115;
    }

LABEL_111:
    v88 = (*(v86 + 56) + 16 * v10);
    *v88 = v7;
    v88[1] = 0xE900000000000065;
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v84, v2);
    v86 = v77;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(0x7469766973756C63, 0xE900000000000079);
    if ((v85 & 1) != (v87 & 1))
    {
      goto LABEL_290;
    }

    if (v85)
    {
      goto LABEL_111;
    }

LABEL_115:
    specialized _NativeDictionary._insert(at:key:value:)(v10, 0x7469766973756C63, 0xE900000000000079, v7, 0xE900000000000065, v86);
  }

  v299 = v86;
LABEL_117:
  if ([v4 _adjectival] == 1)
  {
    [v4 _adjectival];
    specialized Dictionary.subscript.setter(0x7461636964657270, 0xEB00000000657669, 0x76697463656A6461, 0xEA00000000006C61);
    return v299;
  }

  return v86;
}

void *NSMorphologyPronoun.morphunConstraints()()
{
  v1 = v0;
  v2 = [v0 morphology];
  v3 = &selRef__isSimulatingThirdPartyProcess;
  v4 = [v2 _morphunConstraints];

  v5 = MEMORY[0x1E69E7CA0];
  v6 = MEMORY[0x1E69E7CA0] + 8;
  v7 = MEMORY[0x1E69E6158];
  swift_unknownObjectRetain();
  if (v7 != v6)
  {
    v8 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v8)
    {
      goto LABEL_9;
    }

    v54 = [v4 count];
    if (!v54)
    {
      goto LABEL_45;
    }

    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v56 = static _DictionaryStorage.allocate(capacity:)();
    v57 = *(v56 + 48);
    v58 = *(v56 + 56);
    v59 = v56;

    v60 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v57, v58, v4, v55);
    if (v60 < 0 || v55 < v60)
    {
      goto LABEL_120;
    }

    v16 = v59;
    v59[2] = v60;
    if (!v60)
    {
      goto LABEL_71;
    }

    v61 = v60 - 1;
    v62 = v59 + 8;
    while (1)
    {
      if ((*(v62 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v61))
      {
        goto LABEL_36;
      }

      v64 = (v16[6] + 16 * v61);
      v65 = *v64;
      v66 = v64[1];

      v67 = specialized __RawDictionaryStorage.find<A>(_:)(v65, v66);
      v69 = v68;

      if (v69)
      {
        v70 = v16[6];

        outlined destroy of String(v70 + 16 * v61);
        outlined destroy of String(v16[7] + 16 * v61);
        v71 = v16[2];
        v43 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v43)
        {
          goto LABEL_116;
        }

        v16[2] = v72;

        goto LABEL_36;
      }

      *(v62 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
      if (v61 < v67)
      {
        v16 = v59;
        v63 = 16 * v67;
        *(v59[6] + v63) = *(v59[6] + 16 * v61);
        *(v59[7] + v63) = *(v59[7] + 16 * v61);
LABEL_36:
        if (--v61 < 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v16 = v59;
        if (v67 == v61)
        {
          goto LABEL_36;
        }

        v73 = v59[6];
        v74 = (v73 + 16 * v67);
        v75 = (v73 + 16 * v61);
        v76 = *v74;
        v77 = v74[1];
        v78 = v75[1];
        *v74 = *v75;
        v74[1] = v78;
        *v75 = v76;
        v75[1] = v77;
        v79 = v59[7];
        v80 = (v79 + 16 * v67);
        v81 = (v79 + 16 * v61);
        v82 = *v80;
        v83 = v80[1];
        v84 = v81[1];
        *v80 = *v81;
        v80[1] = v84;
        *v81 = v82;
        v81[1] = v83;
        if (v61 < 0)
        {
LABEL_44:

          v3 = &selRef__isSimulatingThirdPartyProcess;
          v7 = MEMORY[0x1E69E6158];
          goto LABEL_10;
        }
      }
    }
  }

  v8 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v8)
  {
LABEL_9:
    v16 = v8;
    goto LABEL_10;
  }

  v9 = [v4 count];
  if (!v9)
  {
LABEL_45:
    v16 = MEMORY[0x1E69E7CC8];
LABEL_10:

    v19 = [v1 dependentMorphology];
    if (!v19)
    {
      return v16;
    }

    v20 = v19;
    v21 = [v19 v3[75]];
    swift_unknownObjectRetain();
    v193 = v16;
    v190 = v20;
    if (v7 == v5 + 8)
    {
      v22 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
      if (!v22)
      {
        v23 = [v21 count];
        if (v23)
        {
          v24 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
          v25 = static _DictionaryStorage.allocate(capacity:)();
          v26 = *(v25 + 48);
          v27 = *(v25 + 56);

          v28 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v26, v27, v21, v24);
          if (v28 < 0 || v24 < v28)
          {
            goto LABEL_121;
          }

          *(v25 + 16) = v28;
          if (v28)
          {
            v29 = v28 - 1;
            v30 = v25 + 64;
            while (1)
            {
              while (1)
              {
                if ((*(v30 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29))
                {
                  goto LABEL_47;
                }

                v89 = (*(v25 + 48) + 16 * v29);
                v90 = *v89;
                v91 = v89[1];

                v92 = specialized __RawDictionaryStorage.find<A>(_:)(v90, v91);
                v94 = v93;

                if ((v94 & 1) == 0)
                {
                  break;
                }

                v95 = *(v25 + 48) + 16 * v29;

                outlined destroy of String(v95);
                __swift_destroy_boxed_opaque_existential_1((*(v25 + 56) + 32 * v29));
                v96 = *(v25 + 16);
                v43 = __OFSUB__(v96, 1);
                v97 = v96 - 1;
                if (v43)
                {
                  goto LABEL_117;
                }

                *(v25 + 16) = v97;

LABEL_47:
                if (--v29 < 0)
                {
                  goto LABEL_70;
                }
              }

              *(v30 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
              if (v29 < v92)
              {
                *(*(v25 + 48) + 16 * v92) = *(*(v25 + 48) + 16 * v29);
                v85 = *(v25 + 56);
                v86 = (v85 + 32 * v92);
                v87 = (v85 + 32 * v29);
                v88 = v87[1];
                *v86 = *v87;
                v86[1] = v88;
                goto LABEL_47;
              }

              if (v92 == v29)
              {
                goto LABEL_47;
              }

              v98 = *(v25 + 48);
              v99 = (v98 + 16 * v92);
              v100 = (v98 + 16 * v29);
              v101 = *v99;
              v102 = v99[1];
              v103 = v100[1];
              *v99 = *v100;
              v99[1] = v103;
              *v100 = v101;
              v100[1] = v102;
              v104 = *(v25 + 56);
              v105 = (v104 + 32 * v92);
              v106 = (v104 + 32 * v29);
              outlined init with take of Any(v105, v194);
              outlined init with take of Any(v106, v105);
              outlined init with take of Any(v194, v106);
              if (v29 < 0)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_72:
        v25 = MEMORY[0x1E69E7CC8];
        goto LABEL_73;
      }

LABEL_19:
      v25 = v22;
LABEL_73:

      v136 = 0;
      v137 = v25 + 64;
      v138 = 1 << *(v25 + 32);
      if (v138 < 64)
      {
        v139 = ~(-1 << v138);
      }

      else
      {
        v139 = -1;
      }

      v140 = v139 & *(v25 + 64);
      v141 = (v138 + 63) >> 6;
      for (i = v25; ; v25 = i)
      {
        if (!v140)
        {
          while (1)
          {
            v144 = v136 + 1;
            if (__OFADD__(v136, 1))
            {
              break;
            }

            if (v144 >= v141)
            {

              return v193;
            }

            v140 = *(v137 + 8 * v144);
            ++v136;
            if (v140)
            {
              goto LABEL_84;
            }
          }

          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        v144 = v136;
LABEL_84:
        v145 = (v144 << 10) | (16 * __clz(__rbit64(v140)));
        v146 = *(v25 + 56);
        v147 = (*(v25 + 48) + v145);
        v148 = *v147;
        v149 = v147[1];
        v150 = (v146 + v145);
        v151 = v150[1];
        v192 = *v150;
        *&v194[0] = 0x6E65646E65706564;
        *(&v194[0] + 1) = 0xEB000000003D7963;

        MEMORY[0x1865CB0E0](v148, v149);
        v152 = v194[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v194[0] = v193;
        v154 = specialized __RawDictionaryStorage.find<A>(_:)(v152, *(&v152 + 1));
        v156 = v193[2];
        v157 = (v155 & 1) == 0;
        v43 = __OFADD__(v156, v157);
        v158 = v156 + v157;
        if (v43)
        {
          goto LABEL_113;
        }

        v159 = v155;
        if (v193[3] >= v158)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v160 = v193;
          }

          else
          {
            v187 = v154;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
            v165 = static _DictionaryStorage.copy(original:)();
            v160 = v165;
            if (v193[2])
            {
              v166 = (v165 + 64);
              v167 = (v193 + 8);
              v168 = ((1 << *(v160 + 32)) + 63) >> 6;
              if (v160 != v193 || v166 >= &v167[8 * v168])
              {
                memmove(v166, v167, 8 * v168);
              }

              v169 = 0;
              *(v160 + 16) = v193[2];
              v170 = 1 << *(v193 + 32);
              if (v170 < 64)
              {
                v171 = ~(-1 << v170);
              }

              else
              {
                v171 = -1;
              }

              v172 = v171 & v193[8];
              v173 = (v170 + 63) >> 6;
              v188 = v173;
              if (v172)
              {
                do
                {
                  v174 = __clz(__rbit64(v172));
                  v189 = (v172 - 1) & v172;
LABEL_107:
                  v177 = 16 * (v174 | (v169 << 6));
                  v178 = (v193[6] + v177);
                  v180 = *v178;
                  v179 = v178[1];
                  v181 = (v193[7] + v177);
                  v182 = *v181;
                  v183 = v181[1];
                  v184 = (*(v160 + 48) + v177);
                  *v184 = v180;
                  v184[1] = v179;
                  v185 = (*(v160 + 56) + v177);
                  *v185 = v182;
                  v185[1] = v183;

                  v173 = v188;
                  v172 = v189;
                }

                while (v189);
              }

              v175 = v169;
              while (1)
              {
                v169 = v175 + 1;
                if (__OFADD__(v175, 1))
                {
                  goto LABEL_123;
                }

                if (v169 >= v173)
                {
                  break;
                }

                v176 = v193[v169 + 8];
                ++v175;
                if (v176)
                {
                  v174 = __clz(__rbit64(v176));
                  v189 = (v176 - 1) & v176;
                  goto LABEL_107;
                }
              }
            }

            v154 = v187;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v158, isUniquelyReferenced_nonNull_native);
          v160 = *&v194[0];
          v154 = specialized __RawDictionaryStorage.find<A>(_:)(v152, *(&v152 + 1));
          if ((v159 & 1) != (v161 & 1))
          {
            goto LABEL_124;
          }
        }

        v140 &= v140 - 1;
        if (v159)
        {
          v142 = v154;

          v143 = (*(v160 + 56) + 16 * v142);
          *v143 = v192;
          v143[1] = v151;
        }

        else
        {
          *(v160 + 8 * (v154 >> 6) + 64) |= 1 << v154;
          *(*(v160 + 48) + 16 * v154) = v152;
          v162 = (*(v160 + 56) + 16 * v154);
          *v162 = v192;
          v162[1] = v151;
          v163 = *(v160 + 16);
          v43 = __OFADD__(v163, 1);
          v164 = v163 + 1;
          if (v43)
          {
            goto LABEL_114;
          }

          *(v160 + 16) = v164;
        }

        v136 = v144;
        v193 = v160;
      }
    }

    v22 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v22)
    {
      goto LABEL_19;
    }

    v107 = [v21 count];
    if (!v107)
    {
      goto LABEL_72;
    }

    v108 = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v25 = static _DictionaryStorage.allocate(capacity:)();
    v109 = *(v25 + 48);
    v110 = *(v25 + 56);

    v111 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v109, v110, v21, v108);
    if (v111 < 0 || v108 < v111)
    {
      goto LABEL_122;
    }

    *(v25 + 16) = v111;
    if (!v111)
    {
LABEL_70:

      goto LABEL_73;
    }

    v112 = v111 - 1;
    v113 = v25 + 64;
    while (1)
    {
      while (1)
      {
        if ((*(v113 + ((v112 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v112))
        {
          goto LABEL_62;
        }

        v115 = (*(v25 + 48) + 16 * v112);
        v116 = *v115;
        v117 = v115[1];

        v118 = specialized __RawDictionaryStorage.find<A>(_:)(v116, v117);
        v120 = v119;

        if ((v120 & 1) == 0)
        {
          break;
        }

        v121 = *(v25 + 48);

        outlined destroy of String(v121 + 16 * v112);
        outlined destroy of String(*(v25 + 56) + 16 * v112);
        v122 = *(v25 + 16);
        v43 = __OFSUB__(v122, 1);
        v123 = v122 - 1;
        if (v43)
        {
          goto LABEL_118;
        }

        *(v25 + 16) = v123;

LABEL_62:
        if (--v112 < 0)
        {
          goto LABEL_70;
        }
      }

      *(v113 + ((v118 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v118;
      if (v112 < v118)
      {
        v114 = 16 * v118;
        *(*(v25 + 48) + v114) = *(*(v25 + 48) + 16 * v112);
        *(*(v25 + 56) + v114) = *(*(v25 + 56) + 16 * v112);
        goto LABEL_62;
      }

      if (v118 == v112)
      {
        goto LABEL_62;
      }

      v124 = *(v25 + 48);
      v125 = (v124 + 16 * v118);
      v126 = (v124 + 16 * v112);
      v127 = *v125;
      v128 = v125[1];
      v129 = v126[1];
      *v125 = *v126;
      v125[1] = v129;
      *v126 = v127;
      v126[1] = v128;
      v130 = *(v25 + 56);
      v131 = (v130 + 16 * v118);
      v132 = (v130 + 16 * v112);
      v133 = *v131;
      v134 = v131[1];
      v135 = v132[1];
      *v131 = *v132;
      v131[1] = v135;
      *v132 = v133;
      v132[1] = v134;
      if (v112 < 0)
      {
        goto LABEL_70;
      }
    }
  }

  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v11 = static _DictionaryStorage.allocate(capacity:)();
  v12 = *(v11 + 48);
  v13 = *(v11 + 56);
  v14 = v11;

  v15 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v12, v13, v4, v10);
  if (v15 < 0 || v10 < v15)
  {
    goto LABEL_119;
  }

  v16 = v14;
  v14[2] = v15;
  if (!v15)
  {
LABEL_71:

    goto LABEL_10;
  }

  v17 = v15 - 1;
  v18 = v14 + 8;
  while (1)
  {
    if ((*(v18 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17))
    {
      goto LABEL_21;
    }

    v35 = (v16[6] + 16 * v17);
    v36 = *v35;
    v37 = v35[1];

    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37);
    v40 = v39;

    if (v40)
    {
      break;
    }

    *(v18 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    if (v17 < v38)
    {
      v16 = v14;
      *(v14[6] + 16 * v38) = *(v14[6] + 16 * v17);
      v31 = v14[7];
      v32 = (v31 + 32 * v17);
      v33 = v32[1];
      v34 = (v31 + 32 * v38);
      *v34 = *v32;
      v34[1] = v33;
LABEL_21:
      if (--v17 < 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v16 = v14;
      if (v38 == v17)
      {
        goto LABEL_21;
      }

      v45 = v14[6];
      v46 = (v45 + 16 * v38);
      v47 = (v45 + 16 * v17);
      v48 = *v46;
      v49 = v46[1];
      v50 = v47[1];
      *v46 = *v47;
      v46[1] = v50;
      *v47 = v48;
      v47[1] = v49;
      v51 = v14[7];
      v52 = (v51 + 32 * v38);
      v53 = (v51 + 32 * v17);
      outlined init with take of Any(v52, v194);
      outlined init with take of Any(v53, v52);
      outlined init with take of Any(v194, v53);
      if (v17 < 0)
      {
        goto LABEL_44;
      }
    }
  }

  v41 = v16[6] + 16 * v17;

  outlined destroy of String(v41);
  __swift_destroy_boxed_opaque_existential_1((v16[7] + 32 * v17));
  v42 = v16[2];
  v43 = __OFSUB__(v42, 1);
  v44 = v42 - 1;
  if (!v43)
  {
    v16[2] = v44;

    goto LABEL_21;
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a3;
  *a6 = result;
  *(a6 + 1) = v6;
  *(a6 + 2) = v7;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5;
  *(a6 + 24) = 0;
  return result;
}

id NSAttributedStringMarkdownParsingOptions.init(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setAllowsExtendedAttributes_];
  [v6 setInterpretedSyntax_];
  [v6 setFailurePolicy_];
  if (v4)
  {
    v7 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v7 = 0;
  }

  [v6 setLanguageCode_];

  [v6 setAppliesSourcePositionAttributes_];

  return v6;
}

uint64_t AttributedString.MarkdownSourcePosition.calculateOffsets<A>(within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  swift_getAssociatedTypeWitness();
  v55 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v51 - v9;
  v11 = swift_checkMetadataState();
  v52 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v4[1];
  v59 = *v4;
  v20 = v4[3];
  v58 = v4[2];
  v57 = v20;
  (*(v21 + 16))(v18, a1, a2, v16);
  if (swift_dynamicCast())
  {
    v22 = String.utf8CString.getter();

    v23 = *(v22 + 16);
    v24 = objc_opt_self();
    v64 = 0u;
    *v65 = 0u;
    *&v65[16] = vdupq_n_s64(1uLL);
    [v24 calculateOffsetsForLine:v59 column:v19 inString:v22 + 32 size:v23 withExistingOffsets:&v64];
    v25 = v61.i64[0];
    if (v61.i64[0] == 0x7FFFFFFFFFFFFFFFLL || (v26 = v61.i64[1], v61.i64[1] == 0x7FFFFFFFFFFFFFFFLL) || (v27 = *v62, *v62 == 0x7FFFFFFFFFFFFFFFLL) || (v28 = *&v62[8], *&v62[8] == 0x7FFFFFFFFFFFFFFFLL) || (v64 = v61, *v65 = *v62, *&v65[8] = *&v62[8], *&v65[24] = v63, [v24 calculateOffsetsForLine:v58 column:v57 inString:v22 + 32 size:v23 withExistingOffsets:&v64], v29.f64[0] = NAN, v29.f64[1] = NAN, v30 = vnegq_f64(v29), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v61, v30), vceqq_s64(*v62, v30)))) & 1) != 0))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 1;
    }

    else
    {
      v35 = 0;
      v32 = v61.i64[1];
      v31 = v61.i64[0];
      v34 = *&v62[8];
      v33 = *v62;
    }

    v37 = v60;
  }

  else
  {
    v51 = v19;
    dispatch thunk of StringProtocol.utf8.getter();
    v38 = dispatch thunk of Collection.count.getter();
    (*(v52 + 8))(v14, v11);
    v66 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38 & ~(v38 >> 63), 0);
    v39 = v66;
    dispatch thunk of StringProtocol.utf8.getter();
    dispatch thunk of Sequence.makeIterator()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    if (v64.i8[1])
    {
      v40 = v59;
      v41 = v51;
    }

    else
    {
      v48 = v64.i8[0];
      v40 = v59;
      v41 = v51;
      do
      {
        v66 = v39;
        v50 = *(v39 + 16);
        v49 = *(v39 + 24);
        if (v50 >= v49 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
          v39 = v66;
        }

        *(v39 + 16) = v50 + 1;
        *(v39 + v50 + 32) = v48;
        dispatch thunk of IteratorProtocol.next()();
        v48 = v64.i8[0];
      }

      while (v64.u8[1] != 1);
    }

    (*(v56 + 8))(v10, AssociatedTypeWitness);
    v66 = v39;
    v43 = *(v39 + 16);
    v42 = *(v39 + 24);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
      v39 = v66;
    }

    *(v39 + 16) = v44;
    *(v39 + 32 + v43) = 0;
    v45 = objc_opt_self();
    v64 = 0u;
    *v65 = 0u;
    *&v65[16] = vdupq_n_s64(1uLL);
    [v45 calculateOffsetsForLine:v40 column:v41 inString:v39 + 32 size:v44 withExistingOffsets:&v64];
    v25 = v61.i64[0];
    if (v61.i64[0] == 0x7FFFFFFFFFFFFFFFLL || (v26 = v61.i64[1], v61.i64[1] == 0x7FFFFFFFFFFFFFFFLL) || (v27 = *v62, *v62 == 0x7FFFFFFFFFFFFFFFLL) || (v28 = *&v62[8], *&v62[8] == 0x7FFFFFFFFFFFFFFFLL) || (v64 = v61, *v65 = *v62, *&v65[8] = *&v62[8], *&v65[24] = v63, [v45 calculateOffsetsForLine:v58 column:v57 inString:v39 + 32 size:v44 withExistingOffsets:&v64], v46.f64[0] = NAN, v46.f64[1] = NAN, v47 = vnegq_f64(v46), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v61, v47), vceqq_s64(*v62, v47)))) & 1) != 0))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v59 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 1;
    }

    else
    {
      v35 = 0;
      v32 = v61.i64[1];
      v59 = v61.i64[0];
      v34 = *&v62[8];
      v33 = *v62;
    }

    v37 = v60;

    v31 = v59;
  }

  *v37 = v25;
  *(v37 + 8) = v26;
  *(v37 + 16) = v27;
  *(v37 + 24) = v28;
  *(v37 + 32) = v31;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  *(v37 + 56) = v34;
  *(v37 + 64) = v35;
  return result;
}

uint64_t AttributedString.init(markdown:options:baseURL:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  if (a3[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  result = _s10Foundation16AttributedStringV09_markdownC09including7options7baseURLACSS_xmAC22MarkdownParsingOptionsVAA0H0VSgtKcAA14AttributeScopeRzlufCAA0L6ScopesO0A10AttributesV_Tt1t4B5(a1, a2, *a3 | (a3[1] << 8) | v7, *(a3 + 1), *(a3 + 2), a3[24], *a4, a4[1], &v9);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

id _s10Foundation44_AttributedStringFromMarkdownCreatorConcrete33_4C994178458EBF836D449F281EBCAF09LLC5scope7optionsADyxGxm_AA0bC0V0E14ParsingOptionsVtcfcAA15AttributeScopesO0A10AttributesV_TtB5(char a1)
{
  v2 = v1;
  v1[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.hasInflectionAttributes] = 0;
  BigString.init()();
  v12 = 0;
  MEMORY[0x1865D26B0](&v12, 8);
  v4 = v12;
  type metadata accessor for AttributedString.Guts();
  v5 = swift_allocObject();
  if (BigString.isEmpty.getter())
  {
    if (one-time initialization token for _nextVersion == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v7 = v14;
  *(v5 + 24) = v13;
  *(v5 + 16) = add_explicit;
  *(v5 + 40) = v7;
  *(v5 + 56) = v15;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v5 + 88) = 0;
  *(v5 + 96) = v4;
  *(v5 + 104) = v8;
  *&v1[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str] = v5;

  if (a1)
  {
    v9 = _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA0B6ScopesO0A10AttributesV_Ttg5();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
  }

  *&v2[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.attributeTable] = v9;
  v11.receiver = v2;
  v11.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation44_AttributedStringFromMarkdownCreatorConcrete33_4C994178458EBF836D449F281EBCAF09LLCyAA15AttributeScopesO0A10AttributesVGMd, &_s10Foundation44_AttributedStringFromMarkdownCreatorConcrete33_4C994178458EBF836D449F281EBCAF09LLCyAA15AttributeScopesO0A10AttributesVGMR);
  return objc_msgSendSuper2(&v11, sel_init);
}

id _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  v5 = *a2;
  v2[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.hasInflectionAttributes] = 0;
  BigString.init()();
  v17 = 0;
  MEMORY[0x1865D26B0](&v17, 8);
  v6 = v17;
  type metadata accessor for AttributedString.Guts();
  v7 = swift_allocObject();
  if (BigString.isEmpty.getter())
  {
    if (one-time initialization token for _nextVersion == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v9 = v19;
  *(v7 + 24) = v18;
  *(v7 + 16) = add_explicit;
  *(v7 + 40) = v9;
  *(v7 + 56) = v20;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v7 + 88) = 0;
  *(v7 + 96) = v6;
  *(v7 + 104) = v10;
  *&v2[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str] = v7;

  v12 = *(v4 + 80);
  v13 = *(v4 + 88);
  if (v5)
  {
    v14 = static AttributeScope.scopeDescription.getter(v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  *&v3[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.attributeTable] = v14;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v12, v13, v11);
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t _AttributedStringFromMarkdownCreatorConcrete.append(_:)(uint64_t a1, unint64_t object)
{
  v5 = direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str;
  v6 = &unk_1EA7B2000;
  v7 = &static AttributedString.Guts._nextVersion;
  v66 = direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str;
  v67 = v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

  v8 = *(v2 + v5);
  v9 = *(v8 + 24);
  v10 = *(v8 + 56);
  v84 = *(v8 + 40);
  v85 = v10;
  v83 = v9;
  v11 = *(v8 + 72);
  v12 = *(v8 + 80);
  v13 = *(v8 + 88);
  v14 = *(v8 + 96);
  type metadata accessor for AttributedString.Guts();
  v15 = swift_allocObject();
  v16 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v83, &v72);
  v17 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v17);
  if (v11)
  {
    v18 = v13 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v19 != v16)
  {
    goto LABEL_30;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    v21 = v84;
    *(v15 + 24) = v83;
    *(v15 + 16) = add_explicit;
    *(v15 + 40) = v21;
    *(v15 + 56) = v85;
    *(v15 + 72) = v11;
    *(v15 + 80) = v12;
    *(v15 + 88) = v13;
    *(v15 + 96) = v14;
    *(v15 + 104) = MEMORY[0x1E69E7CC0];
    v5 = v66;
    v2 = v67;
    *(v67 + v66) = v15;

LABEL_11:
    v22 = *(v2 + v5);
    if (*(v6 + 147) != -1)
    {
LABEL_27:
      swift_once();
    }

    *(v22 + 16) = atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    v11 = *(v2 + v5);
    *&v72 = v11;
    v23 = *(v11 + 40);
    v82[3] = *(v11 + 24);
    v82[4] = v23;
    v82[5] = *(v11 + 56);
    v24 = BigString.startIndex.getter();
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v28 = BigString.endIndex.getter();
    *(&v72 + 1) = v24;
    *&v73 = v13;
    *(&v73 + 1) = v14;
    *&v74 = v15;
    *(&v74 + 1) = v28;
    *&v75 = v29;
    *(&v75 + 1) = v30;
    *&v76 = v31;
    v32 = one-time initialization token for currentIdentity;

    if (v32 != -1)
    {
      swift_once();
    }

    v6 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v33 = *(v6 + 2);
    v12 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    *(v6 + 2) = v12;
    os_unfair_lock_unlock(v6 + 6);
    *(&v76 + 1) = v12;
    BigString.init()();
    *&v70[0] = 0;
    MEMORY[0x1865D26B0](v70, 8);
    v6 = *&v70[0];
    type metadata accessor for AttributedString.Guts();
    v11 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v65 = v12;
  v34 = atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
  v35 = v78;
  *(v11 + 24) = v77;
  *(v11 + 16) = v34;
  *(v11 + 40) = v35;
  *(v11 + 56) = v79;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = v6;
  *(v11 + 104) = MEMORY[0x1E69E7CC0];
  v36 = v66;
  v5 = v67;
  *(v67 + v66) = v11;

  v37 = HIBYTE(object) & 0xF;
  v71[0] = a1;
  v71[1] = object;
  if ((object & 0x2000000000000000) == 0)
  {
    v37 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v71[2] = 0;
  v71[3] = v37;

  v2 = v71;
  v39 = String.Iterator.next()();
  countAndFlagsBits = v39.value._countAndFlagsBits;
  if (v39.value._object)
  {
    object = v39.value._object;
    do
    {
      v22 = *(&v74 + 1);
      if (*(&v74 + 1) >> 10 < *(&v72 + 1) >> 10)
      {
        __break(1u);
        goto LABEL_27;
      }

      v41 = *(&v75 + 1);
      v40 = v76;
      v42 = v75;
      v43 = v72;
      v44 = *(v72 + 24);
      v45 = *(v72 + 56);
      v82[1] = *(v72 + 40);
      v82[2] = v45;
      v82[0] = v44;
      v46 = *(v72 + 24);
      v87 = *(v72 + 56);
      v47 = *(v72 + 40);
      v86[0] = v46;
      v86[1] = v47;
      v69 = countAndFlagsBits;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v86, v70);
      v48 = MEMORY[0x1865CA460](v22, v42, v41, v40);
      v7 = v49;
      v68 = v50;
      a1 = v51;
      outlined destroy of BigString(v82);
      v52 = *(v43 + 24);
      v53 = *(v43 + 56);
      v81[1] = *(v43 + 40);
      v81[2] = v53;
      v81[0] = v52;
      v54 = *(v43 + 24);
      v89 = *(v43 + 56);
      v55 = *(v43 + 40);
      v88[0] = v54;
      v88[1] = v55;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v88, v70);
      v56 = MEMORY[0x1865CA460](v22, v42, v41, v40);
      v58 = v57;
      v5 = v59;
      v61 = v60;
      outlined destroy of BigString(v81);
      v80[0] = v48;
      v80[1] = v7;
      v80[2] = v68;
      v80[3] = a1;
      v80[4] = v56;
      v80[5] = v58;
      v80[6] = v5;
      v80[7] = v61;
      specialized AttributedString.CharacterView._replaceSubrange<A>(_:with:)(v80, v69, object);

      v2 = v71;
      v62 = String.Iterator.next()();
      countAndFlagsBits = v62.value._countAndFlagsBits;
      object = v62.value._object;
    }

    while (v62.value._object);
    v63 = *(&v76 + 1);

    v36 = v66;
    v5 = v67;
    if (v63 == v65)
    {
      goto LABEL_25;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

LABEL_25:
  *(v5 + v36) = v72;

  v70[2] = v74;
  v70[3] = v75;
  v70[4] = v76;
  v70[0] = v72;
  v70[1] = v73;
  return outlined destroy of AttributedString.CharacterView(v70);
}

uint64_t @objc _AttributedStringFromMarkdownCreatorConcrete.append(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = v5;
  v7 = a1;
  _AttributedStringFromMarkdownCreatorConcrete.append(_:)(v4, v6);
}

uint64_t _AttributedStringFromMarkdownCreatorConcrete.lastCharacter()()
{
  v0 = BigString.UTF16View.startIndex.getter();
  if ((BigString.UTF16View.endIndex.getter() ^ v0) < 0x400)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  BigString.UTF16View.index(before:)();
  v2 = BigString.UTF16View.subscript.getter();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t @objc _AttributedStringFromMarkdownCreatorConcrete.lastCharacter()(void *a1)
{
  v1 = a1;
  v2 = _AttributedStringFromMarkdownCreatorConcrete.lastCharacter()();

  return v2;
}

void protocol witness for CodingKey.init(stringValue:) in conformance _AttributedStringFromMarkdownCreatorConcrete<A>.ExtendedAttributesBox.AttributeKey(uint64_t a1@<X8>)
{
  _AttributedStringFromMarkdownCreatorConcrete.ExtendedAttributesBox.AttributeKey.init(stringValue:)();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance _AttributedStringFromMarkdownCreatorConcrete<A>.ExtendedAttributesBox.AttributeKey@<X0>(uint64_t a1@<X8>)
{
  result = _AttributedStringFromMarkdownCreatorConcrete.ExtendedAttributesBox.AttributeKey.init(intValue:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _AttributedStringFromMarkdownCreatorConcrete<A>.ExtendedAttributesBox.AttributeKey(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _AttributedStringFromMarkdownCreatorConcrete<A>.ExtendedAttributesBox.AttributeKey(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t _AttributedStringFromMarkdownCreatorConcrete.ExtendedAttributesBox.init(from:)(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete.ExtendedAttributesBox.AttributeKey(255, a2, a3, a4);
  swift_getWitnessTable();
  v88 = type metadata accessor for KeyedDecodingContainer();
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v9 = &v77 - v8;
  v84 = a3;
  static AttributeScope.scopeDescription.getter(a2);
  v11 = v10;

  v12 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v13 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {

    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v15 = v87;
  v83 = v11;
  v79 = a2;
  v93 = 0;
  v16 = v88;
  v82 = v9;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = MEMORY[0x1865CB560](v17, v7);
  v19 = v16;
  if (!v18)
  {
    v81 = MEMORY[0x1E69E7CC8];
    v23 = v15;
LABEL_41:

    (*(v23 + 8))(v82, v19);
    __swift_destroy_boxed_opaque_existential_1(v80);
    return v81;
  }

  v20 = v18;
  v21 = 0;
  v91 = MEMORY[0x1E69E7CC8];
  v92 = v17 + 32;
  v81 = MEMORY[0x1E69E7CC8];
  v22 = v83;
  v23 = v15;
  v78 = v17;
  v77 = v18;
  while (1)
  {
    if (v21 >= *(v17 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (*(v22 + 16))
    {
      break;
    }

LABEL_7:
    if (++v21 == v20)
    {
      goto LABEL_41;
    }
  }

  v24 = v92 + 32 * v21;
  v26 = *v24;
  v25 = *(v24 + 8);
  v96 = *(v24 + 16);
  LODWORD(v95) = *(v24 + 24);
  swift_bridgeObjectRetain_n();
  v94 = v26;
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v25);
  LOBYTE(v26) = v28;

  if ((v26 & 1) == 0)
  {

    goto LABEL_7;
  }

  v29 = (*(v22 + 56) + 16 * v27);
  v31 = *v29;
  v30 = v29[1];
  v32 = *(v30 + 8);
  v86 = (*(v32 + 24))(*v29, v32);
  v90 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = &v77;
  v85 = AssociatedTypeWitness;
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = &v77 - v36;
  v38 = v93;
  *&v97 = v94;
  *(&v97 + 1) = v25;
  v98 = v96;
  v99 = v95;
  KeyedDecodingContainer.superDecoder(forKey:)();
  if (v38)
  {
    (*(v87 + 8))(v82, v88);

    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  (*(v30 + 16))(&v100, v31, v30);
  v93 = 0;
  __swift_destroy_boxed_opaque_existential_1(&v100);
  *&v100 = v79;
  *(&v100 + 1) = v31;
  v101 = v84;
  v102 = v32;
  v104 = type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete.DecodedAttributeBox(0, &v100);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v103);
  (*(v35 + 32))(boxed_opaque_existential_0, v37, v85);
  outlined init with take of Any(&v103, &v100);
  v40 = v91;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = v40;
  v42 = v86;
  v43 = v90;
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v86, v90);
  v46 = *(v40 + 16);
  v47 = (v44 & 1) == 0;
  v48 = v46 + v47;
  if (__OFADD__(v46, v47))
  {
    goto LABEL_44;
  }

  v49 = v44;
  if (*(v40 + 24) < v48)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v48, isUniquelyReferenced_nonNull_native);
    v50 = v105;
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v43);
    if ((v49 & 1) != (v52 & 1))
    {
      goto LABEL_47;
    }

    v45 = v51;
    goto LABEL_18;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v50 = v40;
LABEL_18:
    v81 = v50;
    if (v49)
    {

      v53 = (*(v50 + 56) + 32 * v45);
      __swift_destroy_boxed_opaque_existential_1(v53);
      outlined init with take of Any(&v100, v53);
    }

    else
    {
      *(v50 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      v54 = (*(v50 + 48) + 16 * v45);
      *v54 = v42;
      v54[1] = v43;
      outlined init with take of Any(&v100, (*(v50 + 56) + 32 * v45));
      v55 = *(v50 + 16);
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_45;
      }

      *(v50 + 16) = v57;
    }

    v91 = v50;
    v19 = v88;
    v23 = v87;
    v22 = v83;
    v17 = v78;
    v20 = v77;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v58 = static _DictionaryStorage.copy(original:)();
  v50 = v58;
  if (!*(v40 + 16))
  {
LABEL_39:

    v43 = v90;
    v42 = v86;
    goto LABEL_18;
  }

  v59 = (v58 + 64);
  v60 = (v40 + 64);
  v61 = ((1 << *(v50 + 32)) + 63) >> 6;
  v94 = v40 + 64;
  if (v50 != v40 || v59 >= &v60[8 * v61])
  {
    memmove(v59, v60, 8 * v61);
  }

  v62 = 0;
  *(v50 + 16) = *(v40 + 16);
  v63 = 1 << *(v40 + 32);
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  else
  {
    v64 = -1;
  }

  v65 = v64 & *(v40 + 64);
  v66 = (v63 + 63) >> 6;
  if (v65)
  {
    do
    {
      v67 = __clz(__rbit64(v65));
      v96 = (v65 - 1) & v65;
LABEL_37:
      v70 = v67 | (v62 << 6);
      v71 = 16 * v70;
      v72 = *(v91 + 56);
      v73 = (*(v91 + 48) + 16 * v70);
      v74 = v73[1];
      v95 = *v73;
      v75 = 32 * v70;
      outlined init with copy of Any(v72 + 32 * v70, &v97);
      v76 = (*(v50 + 48) + v71);
      *v76 = v95;
      v76[1] = v74;
      outlined init with take of Any(&v97, (*(v50 + 56) + v75));

      v65 = v96;
    }

    while (v96);
  }

  v68 = v62;
  while (1)
  {
    v62 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v62 >= v66)
    {
      goto LABEL_39;
    }

    v69 = *(v94 + 8 * v62);
    ++v68;
    if (v69)
    {
      v67 = __clz(__rbit64(v69));
      v96 = (v69 - 1) & v69;
      goto LABEL_37;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance _AttributedStringFromMarkdownCreatorConcrete<A>.ExtendedAttributesBox@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  result = _AttributedStringFromMarkdownCreatorConcrete.ExtendedAttributesBox.init(from:)(a1, *(a2 + 16), *(a2 + 24), a4);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id @objc _AttributedStringFromMarkdownCreatorConcrete.parseExtendedAttributes(from:)(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = a3;
  v7 = a1;
  v8 = specialized Data.init(referencing:)(v6);
  v10 = v9;

  specialized _AttributedStringFromMarkdownCreatorConcrete.parseExtendedAttributes(from:)(v8, v10, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58));
  outlined consume of Data._Representation(v8, v10);
  v11 = _NativeDictionary.bridged()();

  return v11;
}

id _AttributedStringFromMarkdownCreatorConcrete.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t AttributedString.MarkdownParsingOptions.FailurePolicy.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t AttributedString.MarkdownParsingOptions.InterpretedSyntax.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t AttributedString.MarkdownParsingOptions.languageCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AttributedString.MarkdownParsingOptions.languageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:appliesSourcePositionAttributes:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  *a7 = result;
  *(a7 + 1) = v7;
  *(a7 + 2) = v8;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5;
  *(a7 + 24) = a6;
  return result;
}

void one-time initialization function for localizedAttributedString()
{
  v0 = [objc_opt_self() _localizedAttributedStringParsingOptions];
  v1 = [v0 allowsExtendedAttributes];
  v2 = [v0 interpretedSyntax];
  if (v2 > 2)
  {
LABEL_25:
    __break(1u);
  }

  v3 = v2;
  v4 = [v0 failurePolicy];
  if (v4 > 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  v23 = v4;
  v6 = [v0 languageCode];
  if (!v6)
  {
    v12 = 0;
    v14 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  isTaggedPointer = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!isTaggedPointer)
  {
LABEL_9:
    if (__CFStringIsCF())
    {
      v12 = 0;

      v14 = 0xE000000000000000;
    }

    else
    {
      v15 = v10;
      v16 = String.init(_nativeStorage:)();
      if (v17)
      {
        v12 = v16;
        v14 = v17;
      }

      else if ([v15 length])
      {
        v12 = String.init(_cocoaString:)();
        v14 = v21;

        v5 = v23;
      }

      else
      {

        v12 = 0;
        v14 = 0xE000000000000000;
      }
    }

    goto LABEL_23;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_17;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_23:
      v22 = [v0 appliesSourcePositionAttributes];

      static AttributedString.MarkdownParsingOptions.localizedAttributedString = v1;
      byte_1EA822149 = v3;
      byte_1EA82214A = v5 & 1;
      qword_1EA822150 = v12;
      unk_1EA822158 = v14;
      byte_1EA822160 = v22;
      return;
    }

    goto LABEL_9;
  }

  v18 = [v10 UTF8String];
  if (v18)
  {
    v19 = String.init(utf8String:)(v18);
    if (v20)
    {
LABEL_18:
      v12 = v19;
      v14 = v20;

      goto LABEL_23;
    }

    __break(1u);
LABEL_17:
    _CFIndirectTaggedPointerStringGetContents();
    v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v20)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v12 = v24;
      v14 = v25;

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  __break(1u);
}

void static AttributedString.MarkdownParsingOptions._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    *a2 = 0;
    *(a2 + 2) = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    return;
  }

  v3 = a1;
  v4 = [v3 allowsExtendedAttributes];
  v5 = [v3 interpretedSyntax];
  if (v5 > 2)
  {
    __break(1u);
  }

  else
  {
    v6 = v5;
    v7 = [v3 failurePolicy];
    if (v7 > 1)
    {
      __break(1u);
    }

    v8 = v7;
    v26 = v7;
    v9 = [v3 languageCode];
    if (!v9)
    {
      v15 = 0;
      v17 = 0;
      goto LABEL_25;
    }

    v10 = v9;
    isTaggedPointer = _objc_isTaggedPointer(v9);
    v12 = v10;
    v13 = v12;
    if (!isTaggedPointer)
    {
LABEL_11:
      if (__CFStringIsCF())
      {
        v15 = 0;

        v17 = 0xE000000000000000;
      }

      else
      {
        v18 = v13;
        v19 = String.init(_nativeStorage:)();
        if (v20)
        {
          v15 = v19;
          v17 = v20;
        }

        else if ([v18 length])
        {
          v15 = String.init(_cocoaString:)();
          v17 = v24;

          v8 = v26;
        }

        else
        {

          v15 = 0;
          v17 = 0xE000000000000000;
        }
      }

      goto LABEL_25;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v12);
    if (!TaggedPointerTag)
    {
      goto LABEL_19;
    }

    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v17 = v16;

LABEL_25:
        v25 = [v3 appliesSourcePositionAttributes];

        *a2 = v4;
        *(a2 + 1) = v6;
        *(a2 + 2) = v8 & 1;
        *(a2 + 8) = v15;
        *(a2 + 16) = v17;
        *(a2 + 24) = v25;
        return;
      }

      goto LABEL_11;
    }

    v21 = [v13 UTF8String];
    if (v21)
    {
      v22 = String.init(utf8String:)(v21);
      if (v23)
      {
LABEL_20:
        v15 = v22;
        v17 = v23;

        goto LABEL_25;
      }

      __break(1u);
LABEL_19:
      _CFIndirectTaggedPointerStringGetContents();
      v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v23)
      {
        [v13 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v15 = v27;
        v17 = v28;

        goto LABEL_25;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t AttributedString.MarkdownSourcePosition.Offsets.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a5;
  v12[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV7OffsetsV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV7OffsetsV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys()
{
  v1 = 946238581;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0x3631667475;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AttributedString.MarkdownSourcePosition.Offsets.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributedString.MarkdownSourcePosition.Offsets()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  MEMORY[0x1865CD060](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributedString.MarkdownSourcePosition.Offsets()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  return MEMORY[0x1865CD060](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString.MarkdownSourcePosition.Offsets(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  MEMORY[0x1865CD060](v4);
  MEMORY[0x1865CD060](v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance AttributedString.MarkdownSourcePosition.Offsets@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized AttributedString.MarkdownSourcePosition.Offsets.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

double AttributedString.MarkdownSourcePosition.init(startLine:startColumn:endLine:endColumn:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  result = 0.0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 1;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0u;
  *(a5 + 104) = 1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AttributedString.MarkdownSourcePosition.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E694C7472617473;
  v3 = 0x6D756C6F43646E65;
  v4 = 0x66664F7472617473;
  if (v1 != 4)
  {
    v4 = 0x657366664F646E65;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6F437472617473;
  if (v1 != 1)
  {
    v5 = 0x656E694C646E65;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributedString.MarkdownSourcePosition.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AttributedString.MarkdownSourcePosition.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributedString.MarkdownSourcePosition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributedString.MarkdownSourcePosition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AttributedString.MarkdownSourcePosition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v20 = *(v1 + 16);
  v21 = v7;
  v19 = v8;
  v9 = *(v1 + 32);
  v17 = *(v1 + 48);
  v18 = v9;
  v26 = *(v1 + 64);
  v10 = *(v1 + 72);
  v15 = *(v1 + 88);
  v16 = v10;
  v11 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v23) = 0;
  v12 = v22;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v13 = v26;
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v23) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v17;
    v23 = v18;
    v25 = v13;
    v27 = 4;
    lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = v15;
    v23 = v16;
    v25 = v11;
    v27 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void AttributedString.MarkdownSourcePosition.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v9 = *(v0 + 104);
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  if (v8 == 1)
  {
    Hasher._combine(_:)(0);
    if (!v9)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v10);
      MEMORY[0x1865CD060](v11);
      MEMORY[0x1865CD060](v12);
      MEMORY[0x1865CD060](v13);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v5);
    MEMORY[0x1865CD060](v4);
    MEMORY[0x1865CD060](v7);
    MEMORY[0x1865CD060](v6);
    if (!v9)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
}

Swift::Int AttributedString.MarkdownSourcePosition.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 64);
  v11 = v0[7];
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[12];
  v9 = *(v0 + 104);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v3);
  MEMORY[0x1865CD060](v4);
  if (v8 != 1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v6);
    MEMORY[0x1865CD060](v5);
    MEMORY[0x1865CD060](v7);
    MEMORY[0x1865CD060](v11);
    if (!v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v12);
  MEMORY[0x1865CD060](v13);
  MEMORY[0x1865CD060](v14);
  MEMORY[0x1865CD060](v15);
  return Hasher._finalize()();
}

uint64_t AttributedString.MarkdownSourcePosition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.CodingKeys and conformance AttributedString.MarkdownSourcePosition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v22) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v22) = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v22) = 2;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v22) = 3;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = 4;
    v20 = lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets and conformance AttributedString.MarkdownSourcePosition.Offsets();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v22;
    v18 = v23;
    v26 = v24;
    v27 = 5;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v24;
    v25 = v24;
    v13 = v26;
    *a2 = v9;
    *(a2 + 8) = v10;
    v14 = v19;
    *(a2 + 16) = v21;
    *(a2 + 24) = v14;
    v15 = v18;
    *(a2 + 32) = v17;
    *(a2 + 48) = v15;
    *(a2 + 64) = v13;
    v16 = v23;
    *(a2 + 72) = v22;
    *(a2 + 88) = v16;
    *(a2 + 104) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributedString.MarkdownSourcePosition(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  v9 = *(v1 + 64);
  v12 = v1[7];
  v13 = v1[9];
  v14 = v1[10];
  v15 = v1[11];
  v16 = v1[12];
  v10 = *(v1 + 104);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v3);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v4);
  MEMORY[0x1865CD060](v5);
  if (v9 != 1)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v7);
    MEMORY[0x1865CD060](v6);
    MEMORY[0x1865CD060](v8);
    MEMORY[0x1865CD060](v12);
    if (!v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v13);
  MEMORY[0x1865CD060](v14);
  MEMORY[0x1865CD060](v15);
  MEMORY[0x1865CD060](v16);
  return Hasher._finalize()();
}

uint64_t AttributedString.init<A>(markdown:including:options:baseURL:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, NSError **a7@<X8>)
{
  v9 = a1;
  v54 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 1);
  v11 = *(a3 + 2);
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v47 = *a4;
  v45 = a4[1];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v9 = static String._copying(_:)(a1, a2);
    v15 = v39;
  }

  else
  {

    v15 = a2;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {

    v48[0] = v9;
    v48[1] = v15 & 0xFFFFFFFFFFFFFFLL;
    LOBYTE(v49) = 1;
    BYTE1(v49) = v10;
    BYTE2(v49) = v11;
    v50 = v12;
    v51 = v13;
    v52 = v14;
    objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a5, a6, v23));

    v24 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a5, &v49);
    type metadata accessor for NSAttributedStringMarkdownParsingOptions();
    LOBYTE(v49) = 1;
    BYTE1(v49) = v10;
    BYTE2(v49) = v11;
    v50 = v12;
    v51 = v13;
    v52 = v14;

    v19 = v24;
    v25 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v49);
    if (v47)
    {
      ObjectType = swift_getObjectType();
      v27 = (*(v45 + 432))(ObjectType);
    }

    else
    {
      v27 = 0;
    }

    v49 = 0;
    v28 = _NSAttributedStringFromMarkdownWithCreator(v19, v48, HIBYTE(v15) & 0xF, v25, v27, &v49);

    v29 = v49;
    if ((v28 & 1) != 0 || !v49)
    {
      v31 = *&v19[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
      v32 = v49;

      result = swift_unknownObjectRelease();
      *a7 = v31;
      return result;
    }

    swift_willThrow();
    v30 = v29;
    goto LABEL_19;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v42 = v9 & 0xFFFFFFFFFFFFLL;
    v43 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v17 = v13;
  }

  else
  {
    v40 = _StringObject.sharedUTF8.getter();
    v17 = v13;
    if (!v40)
    {
      BigString.init(_:)();
      AttributedString.init(_:attributes:)(v53, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v49);

      swift_unknownObjectRelease();

      v37 = v49;
      goto LABEL_21;
    }

    v42 = v41;
    v43 = v40;
  }

  LOBYTE(v49) = 1;
  BYTE1(v49) = v10;
  BYTE2(v49) = v11;
  v50 = v12;
  v51 = v17;
  v52 = v14;
  objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a5, a6, v16));

  v18 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a5, &v49);
  type metadata accessor for NSAttributedStringMarkdownParsingOptions();
  LOBYTE(v49) = 1;
  BYTE1(v49) = v10;
  BYTE2(v49) = v11;
  v50 = v12;
  v51 = v17;
  v52 = v14;

  v19 = v18;
  v20 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v49);
  if (v47)
  {
    v21 = swift_getObjectType();
    v22 = (*(v45 + 432))(v21);
  }

  else
  {
    v22 = 0;
  }

  v49 = 0;
  v34 = _NSAttributedStringFromMarkdownWithCreator(v19, v43, v42, v20, v22, &v49);

  v35 = v49;
  if ((v34 & 1) == 0 && v49)
  {
    swift_willThrow();
    v36 = v35;
LABEL_19:

    return swift_unknownObjectRelease();
  }

  v37 = *&v19[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
  v38 = v49;

  swift_unknownObjectRelease();
LABEL_21:

  *a7 = v37;
  return result;
}

uint64_t AttributedString.init<A>(markdown:including:options:baseURL:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, NSError **a8@<X8>)
{
  v11 = a1;
  v56 = *MEMORY[0x1E69E9840];
  v12 = *(a4 + 1);
  v13 = *(a4 + 2);
  v14 = *(a4 + 8);
  v49 = *(a4 + 16);
  v15 = *(a4 + 24);
  v48 = *a5;
  v46 = a5[1];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = static String._copying(_:)(a1, a2);
    v16 = v39;
  }

  else
  {

    v16 = a2;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {

    v44 = HIBYTE(v16) & 0xF;
    v50[0] = v11;
    v50[1] = v16 & 0xFFFFFFFFFFFFFFLL;
    LOBYTE(v51) = 1;
    BYTE1(v51) = v12;
    BYTE2(v51) = v13;
    v52 = v14;
    v53 = v49;
    v54 = v15;
    objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a6, a7, v23));

    v24 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a3, &v51);
    type metadata accessor for NSAttributedStringMarkdownParsingOptions();
    LOBYTE(v51) = 1;
    BYTE1(v51) = v12;
    BYTE2(v51) = v13;
    v52 = v14;
    v53 = v49;
    v54 = v15;

    v19 = v24;
    v25 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v51);
    if (v48)
    {
      ObjectType = swift_getObjectType();
      v27 = (*(v46 + 432))(ObjectType);
    }

    else
    {
      v27 = 0;
    }

    v51 = 0;
    v28 = _NSAttributedStringFromMarkdownWithCreator(v19, v50, v44, v25, v27, &v51);

    v29 = v51;
    if ((v28 & 1) != 0 || !v51)
    {
      v31 = *&v19[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
      v32 = v51;

      result = swift_unknownObjectRelease();
      *a8 = v31;
      return result;
    }

    swift_willThrow();
    v30 = v29;
    goto LABEL_19;
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v42 = v11 & 0xFFFFFFFFFFFFLL;
    v43 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v40 = _StringObject.sharedUTF8.getter();
    if (!v40)
    {
      BigString.init(_:)();
      AttributedString.init(_:attributes:)(v55, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v51);
      swift_unknownObjectRelease();

      v37 = v51;
      goto LABEL_21;
    }

    v42 = v41;
    v43 = v40;
  }

  LOBYTE(v51) = 1;
  BYTE1(v51) = v12;
  BYTE2(v51) = v13;
  v52 = v14;
  v53 = v49;
  v54 = v15;
  objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a6, a7, v17));

  v18 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a3, &v51);
  type metadata accessor for NSAttributedStringMarkdownParsingOptions();
  LOBYTE(v51) = 1;
  BYTE1(v51) = v12;
  BYTE2(v51) = v13;
  v52 = v14;
  v53 = v49;
  v54 = v15;

  v19 = v18;
  v20 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v51);
  if (v48)
  {
    v21 = swift_getObjectType();
    v22 = (*(v46 + 432))(v21);
  }

  else
  {
    v22 = 0;
  }

  v51 = 0;
  v34 = _NSAttributedStringFromMarkdownWithCreator(v19, v43, v42, v20, v22, &v51);

  v35 = v51;
  if ((v34 & 1) == 0 && v51)
  {
    swift_willThrow();
    v36 = v35;
LABEL_19:

    return swift_unknownObjectRelease();
  }

  v37 = *&v19[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
  v38 = v51;

  swift_unknownObjectRelease();
LABEL_21:

  *a8 = v37;
  return result;
}

{
  v65 = *MEMORY[0x1E69E9840];
  v10 = *(a4 + 1);
  v11 = *(a4 + 2);
  v12 = *(a4 + 8);
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  v15 = *a5;
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v55 = a5[1];
      v56 = a1;
      memset(v58, 0, 14);
      LOBYTE(v59) = 1;
      BYTE1(v59) = v10;
      BYTE2(v59) = v11;
      v60 = v12;
      v61 = v13;
      v62 = v14;
      objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a6, a7, a4));

      v36 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a3, &v59);
      type metadata accessor for NSAttributedStringMarkdownParsingOptions();
      LOBYTE(v59) = 1;
      BYTE1(v59) = v10;
      BYTE2(v59) = v11;
      v60 = v12;
      v61 = v13;
      v62 = v14;

      v18 = v36;
      v19 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v59);
      if (v15)
      {
        ObjectType = swift_getObjectType();
        v21 = (*(v55 + 432))(ObjectType);
      }

      else
      {
        v21 = 0;
      }

      v59 = 0;
      v42 = v58;
      v43 = v18;
      v44 = 0;
      goto LABEL_34;
    }

    v22 = *(a1 + 16);
    v23 = *(a1 + 24);
    v24 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v24)
    {
      v25 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v26 = __OFSUB__(v22, v25);
      v27 = v22 - v25;
      if (v26)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v26 = __OFSUB__(v23, v22);
      v28 = v23 - v22;
      if (!v26)
      {
        if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v28)
        {
          v28 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v29 = (v27 + v24);
        if (v29)
        {
          v50 = v29;
          v52 = v28;
LABEL_20:
          v54 = a5[1];
          v56 = a1;
          LOBYTE(v59) = 1;
          BYTE1(v59) = v10;
          BYTE2(v59) = v11;
          v60 = v12;
          v61 = v13;
          v62 = v14;
          objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a6, a7, a4));

          v34 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a3, &v59);
          type metadata accessor for NSAttributedStringMarkdownParsingOptions();
          LOBYTE(v59) = 1;
          BYTE1(v59) = v10;
          BYTE2(v59) = v11;
          v60 = v12;
          v61 = v13;
          v62 = v14;

          v18 = v34;
          v19 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v59);
          if (v15)
          {
            v35 = swift_getObjectType();
            v21 = (*(v54 + 432))(v35);
          }

          else
          {
            v21 = 0;
          }

          v59 = 0;
          v43 = v18;
          v42 = v50;
          v44 = v52;
          goto LABEL_34;
        }

        goto LABEL_28;
      }
    }

    else if (!__OFSUB__(v23, v22))
    {
LABEL_28:
      v38 = a1;
      BigString.init(_:)();
      v39 = MEMORY[0x1E69E7CC8];
      v40 = MEMORY[0x1E69E7CD0];
      v41 = &v64;
      goto LABEL_29;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v16)
  {
    if (a1 >> 32 >= a1)
    {
      v30 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v30)
      {
LABEL_24:
        v38 = a1;
        BigString.init(_:)();
        v39 = MEMORY[0x1E69E7CC8];
        v40 = MEMORY[0x1E69E7CD0];
        v41 = v63;
LABEL_29:
        AttributedString.init(_:attributes:)(v41, v39, v40, &v59);
        outlined consume of Data._Representation(v38, a2);

        v45 = v59;
        goto LABEL_38;
      }

      v31 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if (!__OFSUB__(a1, v31))
      {
        v32 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v32 >= (a1 >> 32) - a1)
        {
          v32 = (a1 >> 32) - a1;
        }

        v33 = (a1 - v31 + v30);
        if (v33)
        {
          v50 = v33;
          v52 = v32;
          goto LABEL_20;
        }

        goto LABEL_24;
      }

LABEL_42:
      __break(1u);
    }

    __break(1u);
    goto LABEL_40;
  }

  v53 = a5[1];
  v58[0] = a1;
  v56 = a1;
  LOWORD(v58[1]) = a2;
  BYTE2(v58[1]) = BYTE2(a2);
  BYTE3(v58[1]) = BYTE3(a2);
  BYTE4(v58[1]) = BYTE4(a2);
  v51 = BYTE6(a2);
  BYTE5(v58[1]) = BYTE5(a2);
  LOBYTE(v59) = 1;
  BYTE1(v59) = v10;
  BYTE2(v59) = v11;
  v60 = v12;
  v61 = v13;
  v62 = v14;
  objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a6, a7, a4));

  v17 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a3, &v59);
  type metadata accessor for NSAttributedStringMarkdownParsingOptions();
  LOBYTE(v59) = 1;
  BYTE1(v59) = v10;
  BYTE2(v59) = v11;
  v60 = v12;
  v61 = v13;
  v62 = v14;

  v18 = v17;
  v19 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v59);
  if (v15)
  {
    v20 = swift_getObjectType();
    v21 = (*(v53 + 432))(v20);
  }

  else
  {
    v21 = 0;
  }

  v59 = 0;
  v42 = v58;
  v43 = v18;
  v44 = v51;
LABEL_34:
  v46 = _NSAttributedStringFromMarkdownWithCreator(v43, v42, v44, v19, v21, &v59);

  v47 = v59;
  if ((v46 & 1) == 0 && v59)
  {
    swift_willThrow();
    v47;

    outlined consume of Data._Representation(v56, a2);

    return swift_unknownObjectRelease();
  }

  v45 = *&v18[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
  v49 = v59;

  outlined consume of Data._Representation(v56, a2);

LABEL_38:
  result = swift_unknownObjectRelease();
  *a8 = v45;
  return result;
}

uint64_t AttributedString.init<A>(markdown:including:options:baseURL:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v67 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 1);
  v10 = *(a3 + 2);
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  v59 = *a4;
  v14 = a2 >> 62;
  v58 = a7;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v56 = a4[1];
      v57 = a1;
      memset(v60, 0, 14);
      LOBYTE(v61) = 1;
      BYTE1(v61) = v9;
      BYTE2(v61) = v10;
      v62 = v11;
      v63 = v12;
      v64 = v13;
      objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a5, a6, a3));

      v37 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a5, &v61);
      type metadata accessor for NSAttributedStringMarkdownParsingOptions();
      LOBYTE(v61) = 1;
      BYTE1(v61) = v9;
      BYTE2(v61) = v10;
      v62 = v11;
      v63 = v12;
      v64 = v13;

      v17 = v37;
      v38 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v61);
      if (v59)
      {
        ObjectType = swift_getObjectType();
        v40 = (*(v56 + 432))(ObjectType);
      }

      else
      {
        v40 = 0;
      }

      v61 = 0;
      v48 = _NSAttributedStringFromMarkdownWithCreator(v17, v60, 0, v38, v40, &v61);

      v49 = v61;
      if ((v48 & 1) == 0)
      {
LABEL_35:
        if (v49)
        {
          swift_willThrow();
          v49;

          outlined consume of Data._Representation(v57, a2);

          return swift_unknownObjectRelease();
        }
      }

LABEL_37:
      v47 = *&v17[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
      v52 = v49;

      outlined consume of Data._Representation(v57, a2);
      goto LABEL_38;
    }

    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v23)
    {
      v24 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v25 = __OFSUB__(v21, v24);
      v26 = v21 - v24;
      if (v25)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v25 = __OFSUB__(v22, v21);
      v27 = v22 - v21;
      if (!v25)
      {
        v28 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v28 >= v27)
        {
          v28 = v27;
        }

        v29 = (v26 + v23);
        if (v26 + v23)
        {
          goto LABEL_19;
        }

        goto LABEL_27;
      }
    }

    else if (!__OFSUB__(v22, v21))
    {
LABEL_27:
      v41 = a1;
      BigString.init(_:)();
      v42 = MEMORY[0x1E69E7CC8];
      v43 = MEMORY[0x1E69E7CD0];
      v44 = &v66;
      goto LABEL_28;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v14)
  {
    v54 = a4[1];
    v60[0] = a1;
    v57 = a1;
    LOWORD(v60[1]) = a2;
    BYTE2(v60[1]) = BYTE2(a2);
    BYTE3(v60[1]) = BYTE3(a2);
    BYTE4(v60[1]) = BYTE4(a2);
    v53 = BYTE6(a2);
    BYTE5(v60[1]) = BYTE5(a2);
    LOBYTE(v61) = 1;
    BYTE1(v61) = v9;
    BYTE2(v61) = v10;
    v62 = v11;
    v63 = v12;
    v64 = v13;
    objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a5, a6, a3));

    v16 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a5, &v61);
    type metadata accessor for NSAttributedStringMarkdownParsingOptions();
    LOBYTE(v61) = 1;
    BYTE1(v61) = v9;
    BYTE2(v61) = v10;
    v62 = v11;
    v63 = v12;
    v64 = v13;

    v17 = v16;
    v18 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v61);
    if (v59)
    {
      v19 = swift_getObjectType();
      v20 = (*(v54 + 432))(v19);
    }

    else
    {
      v20 = 0;
    }

    v61 = 0;
    v45 = v60;
    v46 = v17;
    goto LABEL_34;
  }

  v28 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_40;
  }

  v30 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (v30)
  {
    v31 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v32 = a1 - v31;
    if (!__OFSUB__(a1, v31))
    {
      if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v28)
      {
        v28 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      }

      v29 = (v32 + v30);
      if (v32 + v30)
      {
LABEL_19:
        v53 = v28;
        v55 = a4[1];
        v57 = a1;
        LOBYTE(v61) = 1;
        BYTE1(v61) = v9;
        BYTE2(v61) = v10;
        v62 = v11;
        v63 = v12;
        v64 = v13;
        objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, a5, a6, a3));

        v34 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(a5, &v61);
        type metadata accessor for NSAttributedStringMarkdownParsingOptions();
        LOBYTE(v61) = 1;
        BYTE1(v61) = v9;
        BYTE2(v61) = v10;
        v62 = v11;
        v63 = v12;
        v64 = v13;

        v17 = v34;
        v18 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v61);
        if (v59)
        {
          v35 = swift_getObjectType();
          v20 = (*(v55 + 432))(v35);
        }

        else
        {
          v20 = 0;
        }

        v61 = 0;
        v46 = v17;
        v45 = v29;
LABEL_34:
        v50 = _NSAttributedStringFromMarkdownWithCreator(v46, v45, v53, v18, v20, &v61);

        v49 = v61;
        if ((v50 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_37;
      }

      goto LABEL_23;
    }

LABEL_42:
    __break(1u);
  }

LABEL_23:
  v41 = a1;
  BigString.init(_:)();
  v42 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CD0];
  v44 = v65;
LABEL_28:
  AttributedString.init(_:attributes:)(v44, v42, v43, &v61);

  outlined consume of Data._Representation(v41, a2);
  v47 = v61;
LABEL_38:

  result = swift_unknownObjectRelease();
  *v58 = v47;
  return result;
}

uint64_t AttributedString.init(markdown:options:baseURL:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a4@<X8>)
{
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, _s10Foundation16AttributedStringV13_markdownData9including7options7baseURLAcA0E0V_xmAC22MarkdownParsingOptionsVAA0I0VSgtKcAA14AttributeScopeRzlufcAC6result_Sb23hasInflectionAttributestSWKXEfU_AA0M6ScopesO0aR0V_Tt1g5TA, &v9);
  outlined consume of Data._Representation(a1, a2);

  result = swift_unknownObjectRelease();
  if (!v4)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV14_parseMarkdown33_4C994178458EBF836D449F281EBCAF09LL12markdownData9including7options7baseURLAC6result_Sb23hasInflectionAttributestSW_xmAC0E14ParsingOptionsVAA0P0VSgtKAA14AttributeScopeRzlFZAA0W6ScopesO0aT0V_Tt1t4B5(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, NSError *a5, NSError *a6, char a7, uint64_t a8, uint64_t a9)
{
  v9 = a2;
  v32 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v27 = a4 >> 8;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation44_AttributedStringFromMarkdownCreatorConcrete33_4C994178458EBF836D449F281EBCAF09LLCyAA15AttributeScopesO0A10AttributesVGMd, &_s10Foundation44_AttributedStringFromMarkdownCreatorConcrete33_4C994178458EBF836D449F281EBCAF09LLCyAA15AttributeScopesO0A10AttributesVGMR));

    v16 = a7 & 1;
    v17 = _s10Foundation44_AttributedStringFromMarkdownCreatorConcrete33_4C994178458EBF836D449F281EBCAF09LLC5scope7optionsADyxGxm_AA0bC0V0E14ParsingOptionsVtcfcAA15AttributeScopesO0A10AttributesV_TtB5(a4 & 1);
    type metadata accessor for NSAttributedStringMarkdownParsingOptions();
    LOBYTE(v29[0]) = a4 & 1;
    BYTE1(v29[0]) = v27;
    BYTE2(v29[0]) = BYTE2(a4) & 1;
    v29[1] = a5;
    v29[2] = a6;
    v30 = v16;

    v18 = v17;
    v19 = NSAttributedStringMarkdownParsingOptions.init(_:)(v29);
    if (a8)
    {
      ObjectType = swift_getObjectType();
      v21 = (*(a9 + 432))(ObjectType, a9);
    }

    else
    {
      v21 = 0;
    }

    v29[0] = 0;
    v22 = _NSAttributedStringFromMarkdownWithCreator(v18, v9, a3 - v9, v19, v21, v29);

    v23 = v29[0];
    if ((v22 & 1) != 0 || !v29[0])
    {
      *v26 = *&v18[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
      LOBYTE(v9) = v18[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.hasInflectionAttributes];
      v24 = v23;
    }

    else
    {
      swift_willThrow();
      v23;
    }
  }

  else
  {
    BigString.init(_:)();
    AttributedString.init(_:attributes:)(v31, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v29);
    *a1 = v29[0];
  }

  return v9 & 1;
}

uint64_t AttributedString.init<A>(contentsOf:including:options:baseURL:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v82 = a5;
  v83 = a6;
  v79 = a7;
  v91 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 1);
  v80 = *(a3 + 2);
  v81 = v9;
  v10 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = *a4;
  v14 = a4[1];
  v84 = *a1;
  v86 = v84;
  v15 = specialized Data.init(contentsOf:options:)(&v86, 1);
  v17 = v16;
  swift_unknownObjectRelease();
  *&v84 = v7;
  if (v7)
  {

    return swift_unknownObjectRelease();
  }

  v77 = v15;
  v78 = v13;
  v73 = v14;
  v20 = v17 >> 62;
  v75 = a2;
  v76 = &v71;
  if ((v17 >> 62) <= 1)
  {
    v21 = v77;
    v22 = v12;
    v23 = v10;
    v24 = v80;
    v25 = v82;
    if (!v20)
    {
      v85[0] = v77;
      LOWORD(v85[1]) = v17;
      BYTE2(v85[1]) = BYTE2(v17);
      BYTE3(v85[1]) = BYTE3(v17);
      BYTE4(v85[1]) = BYTE4(v17);
      v74 = v17;
      v72 = BYTE6(v17);
      BYTE5(v85[1]) = BYTE5(v17);
      LOBYTE(v86) = 1;
      BYTE1(v86) = v81;
      BYTE2(v86) = v80;
      *(&v86 + 1) = v10;
      v87 = v11;
      v88 = v12;
      v26 = v81;
      objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v82, v83, v18));

      v27 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v25, &v86);
      type metadata accessor for NSAttributedStringMarkdownParsingOptions();
      v28 = v78;
      LOBYTE(v86) = 1;
      BYTE1(v86) = v26;
      BYTE2(v86) = v24;
      *(&v86 + 1) = v10;
      v87 = v11;
      v88 = v12;

      v29 = v27;
      v30 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v86);
      if (v28)
      {
        ObjectType = swift_getObjectType();
        v32 = (*(v73 + 432))(ObjectType);
      }

      else
      {
        v32 = 0;
      }

      *&v86 = 0;
      v60 = v29;
      v61 = v72;
      goto LABEL_34;
    }

    v42 = (v77 >> 32) - v77;
    if (v77 >> 32 >= v77)
    {
      v43 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v43)
      {
LABEL_26:
        BigString.init(_:)();
        AttributedString.init(_:attributes:)(v89, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v86);

        v58 = v21;
        v59 = v17;
LABEL_31:
        outlined consume of Data._Representation(v58, v59);
        v62 = v86;
LABEL_38:
        v67 = v79;
        goto LABEL_39;
      }

      v44 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      if (!__OFSUB__(v77, v44))
      {
        if (*((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v42)
        {
          v42 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v45 = v77 - v44 + v43;
        if (v45)
        {
          v71 = v45;
          v72 = v42;
          v74 = v17;
          goto LABEL_22;
        }

        goto LABEL_26;
      }

LABEL_49:
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  v22 = v12;
  v23 = v10;
  v24 = v80;
  v25 = v82;
  v74 = v17;
  if (v20 == 2)
  {
    v21 = v77;
    v33 = *(v77 + 16);
    v34 = *(v77 + 24);
    v35 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v35)
    {
      v36 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v37 = __OFSUB__(v33, v36);
      v38 = v33 - v36;
      if (v37)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v37 = __OFSUB__(v34, v33);
      v39 = v34 - v33;
      if (!v37)
      {
        v40 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v40 >= v39)
        {
          v40 = v39;
        }

        v41 = v38 + v35;
        if (v41)
        {
          v71 = v41;
          v72 = v40;
LABEL_22:
          LOBYTE(v86) = 1;
          BYTE1(v86) = v81;
          BYTE2(v86) = v24;
          *(&v86 + 1) = v23;
          v87 = v11;
          v88 = v22;
          v46 = v23;
          v47 = v81;
          objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v25, v83, v18));

          v48 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v25, &v86);
          type metadata accessor for NSAttributedStringMarkdownParsingOptions();
          LOBYTE(v86) = 1;
          v49 = v78;
          BYTE1(v86) = v47;
          BYTE2(v86) = v24;
          *(&v86 + 1) = v46;
          v87 = v11;
          v88 = v22;

          v50 = v48;
          v51 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v86);
          if (v49)
          {
            v52 = swift_getObjectType();
            v53 = (*(v73 + 432))(v52);
          }

          else
          {
            v53 = 0;
          }

          v67 = v79;
          *&v86 = 0;
          v68 = _NSAttributedStringFromMarkdownWithCreator(v50, v71, v72, v51, v53, &v86);

          v69 = v86;
          if ((v68 & 1) == 0 && v86)
          {
            swift_willThrow();
            v69;

            v65 = v21;
            goto LABEL_44;
          }

          v62 = *&v50[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
          v70 = v86;

          outlined consume of Data._Representation(v21, v74);
LABEL_39:

          result = swift_unknownObjectRelease();
          *v67 = v62;
          return result;
        }

        goto LABEL_30;
      }
    }

    else if (!__OFSUB__(v34, v33))
    {
LABEL_30:
      BigString.init(_:)();
      AttributedString.init(_:attributes:)(v90, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v86);

      v58 = v21;
      v59 = v74;
      goto LABEL_31;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  memset(v85, 0, 14);
  LOBYTE(v86) = 1;
  BYTE1(v86) = v81;
  BYTE2(v86) = v80;
  *(&v86 + 1) = v10;
  v87 = v11;
  v88 = v12;
  v54 = v81;
  objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v82, v83, v18));

  v55 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v25, &v86);
  type metadata accessor for NSAttributedStringMarkdownParsingOptions();
  v56 = v78;
  LOBYTE(v86) = 1;
  BYTE1(v86) = v54;
  BYTE2(v86) = v24;
  *(&v86 + 1) = v10;
  v87 = v11;
  v88 = v12;

  v29 = v55;
  v30 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v86);
  if (v56)
  {
    v57 = swift_getObjectType();
    v32 = (*(v73 + 432))(v57);
  }

  else
  {
    v32 = 0;
  }

  *&v86 = 0;
  v60 = v29;
  v61 = 0;
LABEL_34:
  v63 = _NSAttributedStringFromMarkdownWithCreator(v60, v85, v61, v30, v32, &v86);

  v64 = v86;
  if ((v63 & 1) != 0 || !v86)
  {
    v62 = *&v29[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
    v66 = v86;

    outlined consume of Data._Representation(v77, v74);
    goto LABEL_38;
  }

  swift_willThrow();
  v64;

  v65 = v77;
LABEL_44:
  outlined consume of Data._Representation(v65, v74);

  return swift_unknownObjectRelease();
}

{
  v79 = a5;
  v80 = a6;
  v78 = a2;
  v76 = a7;
  v88 = *MEMORY[0x1E69E9840];
  v77 = *(a3 + 1);
  v8 = *(a3 + 2);
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = *a4;
  v13 = a4[1];
  v81 = *a1;
  v83 = v81;
  v14 = specialized Data.init(contentsOf:options:)(&v83, 1);
  v16 = v15;
  swift_unknownObjectRelease();
  *&v81 = v7;
  if (v7)
  {

    return swift_unknownObjectRelease();
  }

  v19 = v8;
  v20 = v11;
  v21 = v10;
  v22 = v16 >> 62;
  v74 = v13;
  v75 = &v71;
  if ((v16 >> 62) > 1)
  {
    v23 = v14;
    v24 = v9;
    v25 = v78;
    if (v22 != 2)
    {
      v72 = v14;
      v73 = v16;
      memset(v82, 0, 14);
      LOBYTE(v83) = 1;
      v52 = v77;
      BYTE1(v83) = v77;
      v53 = v19;
      BYTE2(v83) = v19;
      *(&v83 + 1) = v24;
      v84 = v21;
      v54 = v20;
      v85 = v20;
      objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v79, v80, v17));

      v55 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v25, &v83);
      type metadata accessor for NSAttributedStringMarkdownParsingOptions();
      LOBYTE(v83) = 1;
      BYTE1(v83) = v52;
      BYTE2(v83) = v53;
      *(&v83 + 1) = v24;
      v84 = v21;
      v85 = v54;

      v30 = v55;
      v56 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v83);
      if (v12)
      {
        ObjectType = swift_getObjectType();
        v58 = (*(v74 + 432))(ObjectType);
      }

      else
      {
        v58 = 0;
      }

      v62 = v76;
      *&v83 = 0;
      v67 = _NSAttributedStringFromMarkdownWithCreator(v30, v82, 0, v56, v58, &v83);

      v68 = v83;
      v23 = v72;
      if ((v67 & 1) == 0)
      {
LABEL_37:
        if (v68)
        {
          swift_willThrow();
          v68;

          outlined consume of Data._Representation(v23, v73);

          return swift_unknownObjectRelease();
        }
      }

LABEL_39:
      v66 = *&v30[direct field offset for _AttributedStringFromMarkdownCreatorConcrete.str];
      v70 = v68;

      outlined consume of Data._Representation(v23, v73);

      goto LABEL_40;
    }

    v34 = *(v14 + 16);
    v35 = *(v14 + 24);
    v36 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v36)
    {
      v37 = v20;
      v38 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v39 = __OFSUB__(v34, v38);
      v40 = v34 - v38;
      if (v39)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v39 = __OFSUB__(v35, v34);
      v41 = v35 - v34;
      if (!v39)
      {
        v42 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        if (v42 >= v41)
        {
          v42 = v41;
        }

        v43 = (v40 + v36);
        if (v43)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }
    }

    else if (!__OFSUB__(v35, v34))
    {
LABEL_29:
      BigString.init(_:)();
      v59 = MEMORY[0x1E69E7CC8];
      v60 = MEMORY[0x1E69E7CD0];
      v61 = &v87;
      goto LABEL_30;
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v23 = v14;
  v24 = v9;
  v25 = v78;
  if (!v22)
  {
    v82[0] = v14;
    LOWORD(v82[1]) = v16;
    BYTE2(v82[1]) = BYTE2(v16);
    BYTE3(v82[1]) = BYTE3(v16);
    BYTE4(v82[1]) = BYTE4(v16);
    v72 = BYTE6(v16);
    v73 = v16;
    BYTE5(v82[1]) = BYTE5(v16);
    LOBYTE(v83) = 1;
    v26 = v77;
    BYTE1(v83) = v77;
    v27 = v19;
    BYTE2(v83) = v19;
    *(&v83 + 1) = v24;
    v84 = v21;
    v28 = v20;
    v85 = v20;
    objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v79, v80, v17));

    v29 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v25, &v83);
    type metadata accessor for NSAttributedStringMarkdownParsingOptions();
    LOBYTE(v83) = 1;
    BYTE1(v83) = v26;
    BYTE2(v83) = v27;
    *(&v83 + 1) = v24;
    v84 = v21;
    v85 = v28;

    v30 = v29;
    v31 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v83);
    if (v12)
    {
      v32 = swift_getObjectType();
      v33 = (*(v74 + 432))(v32);
    }

    else
    {
      v33 = 0;
    }

    v62 = v76;
    *&v83 = 0;
    v63 = v82;
    v64 = v30;
    v65 = v72;
    goto LABEL_36;
  }

  v42 = (v14 >> 32) - v14;
  if (v14 >> 32 < v14)
  {
    __break(1u);
    goto LABEL_42;
  }

  v44 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (v44)
  {
    v37 = v20;
    v45 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    if (!__OFSUB__(v23, v45))
    {
      if (*((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v42)
      {
        v42 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      }

      v43 = (v23 - v45 + v44);
      if (v43)
      {
LABEL_21:
        v46 = v8;
        v71 = v43;
        v72 = v42;
        v73 = v16;
        LOBYTE(v83) = 1;
        BYTE1(v83) = v77;
        BYTE2(v83) = v8;
        *(&v83 + 1) = v24;
        v84 = v21;
        v85 = v37;
        v47 = v77;
        objc_allocWithZone(type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete(0, v79, v80, v17));

        v48 = _AttributedStringFromMarkdownCreatorConcrete.init(scope:options:)(v25, &v83);
        v49 = v46;
        v50 = v48;
        type metadata accessor for NSAttributedStringMarkdownParsingOptions();
        LOBYTE(v83) = 1;
        BYTE1(v83) = v47;
        BYTE2(v83) = v49;
        *(&v83 + 1) = v24;
        v84 = v21;
        v85 = v37;

        v30 = v50;
        v31 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v83);
        if (v12)
        {
          v51 = swift_getObjectType();
          v33 = (*(v74 + 432))(v51);
        }

        else
        {
          v33 = 0;
        }

        v62 = v76;
        v63 = v71;
        v65 = v72;
        *&v83 = 0;
        v64 = v30;
LABEL_36:
        v69 = _NSAttributedStringFromMarkdownWithCreator(v64, v63, v65, v31, v33, &v83);

        v68 = v83;
        if ((v69 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_39;
      }

      goto LABEL_25;
    }

LABEL_44:
    __break(1u);
  }

LABEL_25:
  BigString.init(_:)();
  v59 = MEMORY[0x1E69E7CC8];
  v60 = MEMORY[0x1E69E7CD0];
  v61 = v86;
LABEL_30:
  AttributedString.init(_:attributes:)(v61, v59, v60, &v83);
  outlined consume of Data._Representation(v23, v16);

  v66 = v83;
  v62 = v76;
LABEL_40:
  result = swift_unknownObjectRelease();
  *v62 = v66;
  return result;
}

uint64_t _s10Foundation16AttributedStringV10contentsOf9including7options7baseURLAcA0I0V_xmAC22MarkdownParsingOptionsVAISgtKcAA14AttributeScopeRzlufCAA0M6ScopesO0A10AttributesV_Tt1t4B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X7>, void *a5@<X8>)
{
  v12[3] = a4;
  v12[0] = a1;
  v12[1] = a2;
  v7 = specialized Data.init(contentsOf:options:)(v12, 1);
  v9 = v8;
  v10 = swift_unknownObjectRelease();
  if (v5)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    specialized Data._Representation.withUnsafeBytes<A>(_:)(v7, v9, _s10Foundation16AttributedStringV13_markdownData9including7options7baseURLAcA0E0V_xmAC22MarkdownParsingOptionsVAA0I0VSgtKcAA14AttributeScopeRzlufcAC6result_Sb23hasInflectionAttributestSWKXEfU_AA0M6ScopesO0aR0V_Tt1g5TA_57, v12);
    outlined consume of Data._Representation(v7, v9);

    result = swift_unknownObjectRelease();
    *a5 = v12[0];
  }

  return result;
}

uint64_t AttributedString.init(contentsOf:options:baseURL:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  result = _s10Foundation16AttributedStringV10contentsOf9including7options7baseURLAcA0I0V_xmAC22MarkdownParsingOptionsVAISgtKcAA14AttributeScopeRzlufCAA0M6ScopesO0A10AttributesV_Tt1t4B5(*a1, a1[1], a2[1], &v6);
  if (!v3)
  {
    *a3 = v6;
  }

  return result;
}

void AttributedString.MarkdownParsingOptions.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 allowsExtendedAttributes];
  v5 = [a1 interpretedSyntax];
  if (v5 > 2)
  {
LABEL_26:
    __break(1u);
  }

  v6 = v5;
  v7 = [a1 failurePolicy];
  if (v7 > 1)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = v7;
  v26 = v7;
  v9 = [a1 languageCode];
  if (!v9)
  {
    v15 = 0;
    v17 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  isTaggedPointer = _objc_isTaggedPointer(v9);
  v12 = v10;
  v13 = v12;
  if (!isTaggedPointer)
  {
LABEL_9:
    if (__CFStringIsCF())
    {
      v15 = 0;

      v17 = 0xE000000000000000;
    }

    else
    {
      v18 = v13;
      v19 = String.init(_nativeStorage:)();
      if (v20)
      {
        v15 = v19;
        v17 = v20;
      }

      else if ([v18 length])
      {
        v15 = String.init(_cocoaString:)();
        v17 = v24;

        v8 = v26;
      }

      else
      {

        v15 = 0;
        v17 = 0xE000000000000000;
      }
    }

    goto LABEL_24;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v12);
  if (!TaggedPointerTag)
  {
    goto LABEL_17;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v17 = v16;

LABEL_24:
      v25 = [a1 appliesSourcePositionAttributes];

      *a2 = v4;
      *(a2 + 1) = v6;
      *(a2 + 2) = v8 & 1;
      *(a2 + 8) = v15;
      *(a2 + 16) = v17;
      *(a2 + 24) = v25;
      return;
    }

    goto LABEL_9;
  }

  v21 = [v13 UTF8String];
  if (v21)
  {
    v22 = String.init(utf8String:)(v21);
    if (v23)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    _CFIndirectTaggedPointerStringGetContents();
    v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v23)
    {
      [v13 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v15 = v27;
      v17 = v28;
      goto LABEL_22;
    }

LABEL_18:
    v15 = v22;
    v17 = v23;

LABEL_22:
    goto LABEL_24;
  }

  __break(1u);
}

void __swiftcall AttributedString.MarkdownParsingOptions._bridgeToObjectiveC()(NSAttributedStringMarkdownParsingOptions *__return_ptr retstr)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 2);
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  type metadata accessor for NSAttributedStringMarkdownParsingOptions();
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v9 = v6;
  v10 = v5;
  v11 = v7;

  NSAttributedStringMarkdownParsingOptions.init(_:)(v8);
}

void static AttributedString.MarkdownParsingOptions._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of AttributedString.MarkdownParsingOptions?(*a2, *(a2 + 8), *(a2 + 16));
  v4 = a1;
  v5 = [v4 allowsExtendedAttributes];
  v6 = [v4 interpretedSyntax];
  if (v6 > 2)
  {
LABEL_27:
    __break(1u);
  }

  v7 = v6;
  v8 = [v4 failurePolicy];
  if (v8 > 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = v8;
  v28 = v8;
  v10 = [v4 languageCode];
  if (!v10)
  {
    v16 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_9;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_17;
    case 0x16:
      v22 = [v14 UTF8String];
      if (!v22)
      {
        __break(1u);
        return;
      }

      v23 = String.init(utf8String:)(v22);
      if (v24)
      {
LABEL_18:
        v16 = v23;
        v18 = v24;

        goto LABEL_23;
      }

      __break(1u);
LABEL_17:
      _CFIndirectTaggedPointerStringGetContents();
      v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v24)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v16 = v29;
        v18 = v30;

        goto LABEL_23;
      }

      goto LABEL_18;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v18 = v17;

      goto LABEL_23;
  }

LABEL_9:
  if (__CFStringIsCF())
  {
    v16 = 0;

    v18 = 0xE000000000000000;
  }

  else
  {
    v19 = v14;
    v20 = String.init(_nativeStorage:)();
    if (v21)
    {
      v16 = v20;
      v18 = v21;
    }

    else if ([v19 length])
    {
      v16 = String.init(_cocoaString:)();
      v18 = v25;

      v5 = v5;
      v9 = v28;
    }

    else
    {

      v16 = 0;
      v18 = 0xE000000000000000;
    }
  }

LABEL_23:
  v26 = [v4 appliesSourcePositionAttributes];

  v27 = 0x10000;
  if ((v9 & 1) == 0)
  {
    v27 = 0;
  }

  *a2 = v5 | (v7 << 8) | v27;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18;
  *(a2 + 24) = v26;
}

uint64_t static AttributedString.MarkdownParsingOptions._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  outlined consume of AttributedString.MarkdownParsingOptions?(*a2, *(a2 + 8), *(a2 + 16));
  v4 = a1;
  v5 = [v4 allowsExtendedAttributes];
  v6 = [v4 interpretedSyntax];
  if (v6 > 2)
  {
LABEL_27:
    __break(1u);
  }

  v7 = v6;
  v8 = [v4 failurePolicy];
  if (v8 > 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = v8;
  v28 = v8;
  v10 = [v4 languageCode];
  if (!v10)
  {
    v16 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_9;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_17;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v23 = String.init(utf8String:)(result);
      if (v24)
      {
LABEL_18:
        v16 = v23;
        v18 = v24;

        goto LABEL_23;
      }

      __break(1u);
LABEL_17:
      _CFIndirectTaggedPointerStringGetContents();
      v23 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v24)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v16 = v29;
        v18 = v30;

        goto LABEL_23;
      }

      goto LABEL_18;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v18 = v17;

      goto LABEL_23;
  }

LABEL_9:
  if (__CFStringIsCF())
  {
    v16 = 0;

    v18 = 0xE000000000000000;
  }

  else
  {
    v19 = v14;
    v20 = String.init(_nativeStorage:)();
    if (v21)
    {
      v16 = v20;
      v18 = v21;
    }

    else if ([v19 length])
    {
      v16 = String.init(_cocoaString:)();
      v18 = v25;

      v5 = v5;
      v9 = v28;
    }

    else
    {

      v16 = 0;
      v18 = 0xE000000000000000;
    }
  }

LABEL_23:
  v26 = [v4 appliesSourcePositionAttributes];

  v27 = 0x10000;
  if ((v9 & 1) == 0)
  {
    v27 = 0;
  }

  *a2 = v5 | (v7 << 8) | v27;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18;
  *(a2 + 24) = v26;
  return 1;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance AttributedString.MarkdownParsingOptions()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 8);
  v4 = *(v0 + 16);
  v6 = *(v0 + 24);
  type metadata accessor for NSAttributedStringMarkdownParsingOptions();
  v8[0] = v1;
  v8[1] = v2;
  v8[2] = v3;
  v9 = v5;
  v10 = v4;
  v11 = v6;

  return NSAttributedStringMarkdownParsingOptions.init(_:)(v8);
}

double protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AttributedString.MarkdownParsingOptions(void *a1, uint64_t a2)
{
  outlined consume of AttributedString.MarkdownParsingOptions?(*a2, *(a2 + 8), *(a2 + 16));
  AttributedString.MarkdownParsingOptions.init(_:)(a1, v7);
  v4 = v9;
  v5 = 0x10000;
  if (!v7[2])
  {
    v5 = 0;
  }

  *a2 = v7[0] | (v7[1] << 8) | v5;
  result = *&v8;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AttributedString.MarkdownParsingOptions(void *a1, uint64_t a2)
{
  outlined consume of AttributedString.MarkdownParsingOptions?(*a2, *(a2 + 8), *(a2 + 16));
  AttributedString.MarkdownParsingOptions.init(_:)(a1, v7);
  v4 = v9;
  v5 = 0x10000;
  if (!v7[2])
  {
    v5 = 0;
  }

  *a2 = v7[0] | (v7[1] << 8) | v5;
  *(a2 + 8) = v8;
  *(a2 + 24) = v4;
  return 1;
}

void AttributedString.MarkdownSourcePosition.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 startOffsets];
  [a1 endOffsets];

  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  v6 = 0uLL;
  v7 = 0uLL;
  LOBYTE(v8) = 1;
  if (v23.i64[0] == 0x7FFFFFFFFFFFFFFFLL || (v9 = vmovn_s64(vceqq_s64(vextq_s8(v23, v25, 8uLL), v5)), (v9.i8[0] & 1) != 0))
  {
    v11 = 0uLL;
    v13 = v25;
    v12 = v23;
  }

  else
  {
    v10 = v9.i8[4];
    v11 = 0uLL;
    v13 = v25;
    v12 = v23;
    if ((v10 & 1) == 0)
    {
      v8 = v25.i64[1] == 0x7FFFFFFFFFFFFFFFLL;
      v14 = vdup_n_s32(v8);
      v15.i64[0] = v14.u32[0];
      v15.i64[1] = v14.u32[1];
      v16 = vcgezq_s64(vshlq_n_s64(v15, 0x3FuLL));
      v7 = vandq_s8(v25, v16);
      v11 = vandq_s8(v23, v16);
    }
  }

  v24 = v8;
  LOBYTE(v8) = 1;
  if (v12.i64[0] == 0x7FFFFFFFFFFFFFFFLL || (v17 = vmovn_s64(vceqq_s64(vextq_s8(v12, v13, 8uLL), v5)), (v17.i8[0] & 1) != 0))
  {
    v19 = 0uLL;
  }

  else
  {
    v18 = v17.i8[4];
    v19 = 0uLL;
    if ((v18 & 1) == 0)
    {
      v8 = v13.i64[1] == 0x7FFFFFFFFFFFFFFFLL;
      v20 = vdup_n_s32(v8);
      v21.i64[0] = v20.u32[0];
      v21.i64[1] = v20.u32[1];
      v22 = vcgezq_s64(vshlq_n_s64(v21, 0x3FuLL));
      v19 = vandq_s8(v13, v22);
      v6 = vandq_s8(v12, v22);
    }
  }

  *a2 = v26;
  *(a2 + 16) = v26;
  *(a2 + 32) = v11;
  *(a2 + 48) = v7;
  *(a2 + 64) = v24;
  *(a2 + 72) = v6;
  *(a2 + 88) = v19;
  *(a2 + 104) = v8;
}

void __swiftcall AttributedString.MarkdownSourcePosition._bridgeToObjectiveC()(NSAttributedStringMarkdownSourcePosition *__return_ptr retstr)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 11);
  v7 = *(v1 + 9);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  if (*(v1 + 64))
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  v11 = vdupq_n_s64(v10);
  v15 = vbslq_s8(v11, v9, *(v1 + 2));
  v14 = vbslq_s8(v11, v9, *(v1 + 3));
  if (*(v1 + 104))
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v13 = vdupq_n_s64(v12);
  v19[0] = v15;
  v19[1] = v14;
  v20 = v2;
  v21 = v3;
  v16[0] = vbslq_s8(v13, v9, v7);
  v16[1] = vbslq_s8(v13, v9, v6);
  v17 = v4;
  v18 = v5;
  [objc_allocWithZone(NSAttributedStringMarkdownSourcePosition) initWithStart:v19 end:v16];
}

__n128 static AttributedString.MarkdownSourcePosition._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  AttributedString.MarkdownSourcePosition.init(_:)(a1, v6);
  v3 = v7[0];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 89) = *(v7 + 9);
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  *(a2 + 105) = 0;
  return result;
}

uint64_t static AttributedString.MarkdownSourcePosition._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  AttributedString.MarkdownSourcePosition.init(_:)(a1, v7);
  v3 = v8[0];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v3;
  *(a2 + 89) = *(v8 + 9);
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  v5 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v5;
  *(a2 + 105) = 0;
  return 1;
}

double static AttributedString.MarkdownSourcePosition._unconditionallyBridgeFromObjectiveC(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;

    AttributedString.MarkdownSourcePosition.init(_:)(v3, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 1;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 1;
  }

  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance AttributedString.MarkdownSourcePosition()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 11);
  v6 = *(v0 + 9);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  if (*(v0 + 64))
  {
    v9 = -1;
  }

  else
  {
    v9 = 0;
  }

  v10 = vdupq_n_s64(v9);
  v15 = vbslq_s8(v10, v8, *(v0 + 2));
  v14 = vbslq_s8(v10, v8, *(v0 + 3));
  if (*(v0 + 104))
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  v12 = vdupq_n_s64(v11);
  v19[0] = v15;
  v19[1] = v14;
  v20 = v1;
  v21 = v2;
  v16[0] = vbslq_s8(v12, v8, v6);
  v16[1] = vbslq_s8(v12, v8, v5);
  v17 = v3;
  v18 = v4;
  return [objc_allocWithZone(NSAttributedStringMarkdownSourcePosition) initWithStart:v19 end:v16];
}

__n128 protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AttributedString.MarkdownSourcePosition(void *a1, uint64_t a2)
{
  AttributedString.MarkdownSourcePosition.init(_:)(a1, v6);
  v3 = v7[0];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 89) = *(v7 + 9);
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  *(a2 + 105) = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AttributedString.MarkdownSourcePosition(void *a1, uint64_t a2)
{
  AttributedString.MarkdownSourcePosition.init(_:)(a1, v7);
  v3 = v8[0];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v3;
  *(a2 + 89) = *(v8 + 9);
  v4 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v4;
  v5 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v5;
  *(a2 + 105) = 0;
  return 1;
}

double protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance AttributedString.MarkdownSourcePosition@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;

    AttributedString.MarkdownSourcePosition.init(_:)(v3, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 1;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 1;
  }

  return result;
}

BOOL specialized static AttributedString.MarkdownSourcePosition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else if (*(a2 + 64) & 1 | ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 32), *(a2 + 32)), vceqq_s64(*(a1 + 48), *(a2 + 48))))) & 1) == 0))
  {
    return 0;
  }

  if (*(a1 + 104))
  {
    return (*(a2 + 104) & 1) != 0;
  }

  return !(*(a2 + 104) & 1 | ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 72), *(a2 + 72)), vceqq_s64(*(a1 + 88), *(a2 + 88))))) & 1) == 0));
}

uint64_t outlined consume of AttributedString.MarkdownParsingOptions?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.MarkdownParsingOptions.FailurePolicy and conformance AttributedString.MarkdownParsingOptions.FailurePolicy()
{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownParsingOptions.FailurePolicy and conformance AttributedString.MarkdownParsingOptions.FailurePolicy;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownParsingOptions.FailurePolicy and conformance AttributedString.MarkdownParsingOptions.FailurePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownParsingOptions.FailurePolicy and conformance AttributedString.MarkdownParsingOptions.FailurePolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.MarkdownParsingOptions.InterpretedSyntax and conformance AttributedString.MarkdownParsingOptions.InterpretedSyntax()
{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownParsingOptions.InterpretedSyntax and conformance AttributedString.MarkdownParsingOptions.InterpretedSyntax;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownParsingOptions.InterpretedSyntax and conformance AttributedString.MarkdownParsingOptions.InterpretedSyntax)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownParsingOptions.InterpretedSyntax and conformance AttributedString.MarkdownParsingOptions.InterpretedSyntax);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.MarkdownParsingOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for AttributedString.MarkdownParsingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.MarkdownSourcePosition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 105))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AttributedString.MarkdownSourcePosition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
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

  *(result + 105) = v3;
  return result;
}

uint64_t specialized AttributedString.MarkdownSourcePosition.Offsets.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV7OffsetsV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV22MarkdownSourcePositionV7OffsetsV10CodingKeys33_4C994178458EBF836D449F281EBCAF09LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v9 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t specialized AttributedString.MarkdownSourcePosition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E694C7472617473 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F437472617473 && a2 == 0xEB000000006E6D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E694C646E65 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D756C6F43646E65 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x66664F7472617473 && a2 == 0xEC00000073746573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657366664F646E65 && a2 == 0xEA00000000007374)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition.Offsets.CodingKeys and conformance AttributedString.MarkdownSourcePosition.Offsets.CodingKeys);
  }

  return result;
}

uint64_t specialized AttributedString.MarkdownSourcePosition.Offsets.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 946238581 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3631667475 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000181489300 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000181489320 == a2)
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

uint64_t specialized _AttributedStringFromMarkdownCreatorConcrete.parseExtendedAttributes(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JSONDecoder(0);
  swift_allocObject();
  v9 = JSONDecoder.init()();
  (*(*v9 + 232))(1);
  (*(*v9 + 256))(1);
  v11 = type metadata accessor for _AttributedStringFromMarkdownCreatorConcrete.ExtendedAttributesBox(0, a3, a4, v10);
  v12 = *(*v9 + 320);
  WitnessTable = swift_getWitnessTable();
  v12(&v15, v11, a1, a2, v11, WitnessTable);

  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSInlinePresentationIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV13_markdownData9including7options7baseURLAcA0E0V_xmAC22MarkdownParsingOptionsVAA0I0VSgtKcAA14AttributeScopeRzlufcAC6result_Sb23hasInflectionAttributestSWKXEfU_AA0M6ScopesO0aR0V_Tt1g5TATm(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 18))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return _s10Foundation16AttributedStringV14_parseMarkdown33_4C994178458EBF836D449F281EBCAF0912markdownData9including7options7baseURLAC6result_Sb23hasInflectionAttributestSW_xmAC0E14ParsingOptionsVAA0P0VSgtKAA14AttributeScopeRzlFZAA0W6ScopesO0aT0V_Tt1t4B5(a1, a2, a3, *(v3 + 16) | (*(v3 + 17) << 8) | v4, *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56)) & 1;
}

uint64_t type metadata instantiation function for _AttributedStringFromMarkdownCreatorConcrete.ExtendedAttributesBox(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for _AttributedStringFromMarkdownCreatorConcrete.DecodedAttributeBox(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AttributedStringFromMarkdownCreatorConcrete.DecodedAttributeBox(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void storeEnumTagSinglePayload for _AttributedStringFromMarkdownCreatorConcrete.DecodedAttributeBox(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (v9)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

uint64_t type metadata instantiation function for _AttributedStringFromMarkdownCreatorConcrete.ExtendedAttributesBox.AttributeKey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t NSTimer.TimerPublisher.__allocating_init(interval:tolerance:runLoop:mode:options:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, _BYTE *a5, double a6)
{
  v12 = swift_allocObject();
  LOBYTE(a5) = *a5;
  *(v12 + 64) = MEMORY[0x1E69E7CC8];
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 72) = v13;
  *(v12 + 16) = a6;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2 & 1;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  return v12;
}

Swift::Void __swiftcall NSTimer.TimerPublisher.Inner.send(_:)(Foundation::Date a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  v14 = *v3;
  v15 = *(v2 + *(v4 + 120));
  os_unfair_lock_lock(v15);
  (*(v7 + 16))(v9, v2 + *(*v2 + 96), v6);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_12:
    os_unfair_lock_unlock(v15);
    return;
  }

  (*(v10 + 32))(v13, v9, v5);
  v16 = *(*v2 + 104);
  v17 = *(v2 + v16);
  v18 = static Subscribers.Demand.none.getter();
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)() & 1) != 0 && (static Subscribers.Demand.unlimited.getter(), (static Subscribers.Demand.== infix(_:_:)()) || (static Subscribers.Demand.unlimited.getter(), (static Subscribers.Demand.== infix(_:_:)() & 1) == 0) && ((static Subscribers.Demand.unlimited.getter(), (static Subscribers.Demand.== infix(_:_:)()) || v18 >= v17))
  {
    (*(v10 + 8))(v13, v5);
    goto LABEL_12;
  }

  v19 = *(v2 + v16);
  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      v20 = static Subscribers.Demand.unlimited.getter();
LABEL_16:
      *(v2 + v16) = v20;
      goto LABEL_17;
    }

    if (v19 < 0)
    {
      __break(1u);
    }

    else if (v19)
    {
      v20 = v19 - 1;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_17:
  v21 = v2;
  os_unfair_lock_unlock(v15);
  v28[1] = v14;
  v22 = dispatch thunk of Subscriber.receive(_:)();
  v23 = static Subscribers.Demand.none.getter();
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_32;
    }
  }

  static Subscribers.Demand.unlimited.getter();
  if ((static Subscribers.Demand.== infix(_:_:)() & 1) == 0)
  {
    static Subscribers.Demand.unlimited.getter();
    if ((static Subscribers.Demand.== infix(_:_:)() & 1) != 0 || v23 >= v22)
    {
      goto LABEL_32;
    }
  }

  os_unfair_lock_lock(v15);
  v24 = v21;
  v25 = *(v21 + v16);
  static Subscribers.Demand.unlimited.getter();
  if (static Subscribers.Demand.== infix(_:_:)())
  {
LABEL_31:
    os_unfair_lock_unlock(v15);
LABEL_32:
    (*(v10 + 8))(v13, v5);
    return;
  }

  static Subscribers.Demand.unlimited.getter();
  v26 = static Subscribers.Demand.== infix(_:_:)();
  v27 = static Subscribers.Demand.unlimited.getter();
  if (v26)
  {
LABEL_30:
    *(v24 + v16) = v27;
    goto LABEL_31;
  }

  if (static Subscribers.Demand.== infix(_:_:)())
  {
LABEL_28:
    v27 = static Subscribers.Demand.unlimited.getter();
    goto LABEL_30;
  }

  if (((v25 | v22) & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v27 = v25 + v22;
  if (__OFADD__(v25, v22))
  {
    goto LABEL_28;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
}

uint64_t NSTimer.TimerPublisher.init(interval:tolerance:runLoop:mode:options:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5, double a6)
{
  v12 = *a5;
  *(v6 + 64) = MEMORY[0x1E69E7CC8];
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v6 + 72) = v13;
  *(v6 + 16) = a6;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2 & 1;
  *(v6 + 40) = a3;
  *(v6 + 48) = a4;
  *(v6 + 56) = v12;
  return v6;
}

uint64_t NSTimer.TimerPublisher.deinit()
{
  MEMORY[0x1865D2690](*(v0 + 72), -1, -1);

  return v0;
}

uint64_t specialized NSTimer.TimerPublisher.fire(_:)()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 72);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 64);

  os_unfair_lock_unlock(v1);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v3 = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(*(v2 + 56) + ((v9 << 10) | (16 * v10)));
      *&__tp.tv_sec = v3;

      v11(&__tp);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

void NSURL.customPlaygroundQuickLook.getter(uint64_t a1@<X8>)
{
  v3 = [v1 absoluteString];
  if (!v3)
  {
    v12 = 0;
    v11 = 0xEB000000004C5255;
    v9 = 0x206E776F6E6B6E55;
    goto LABEL_24;
  }

  v4 = v3;
  isTaggedPointer = _objc_isTaggedPointer(v3);
  v6 = v4;
  v7 = v6;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
    goto LABEL_16;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v11 = v10;

      v12 = 17;
LABEL_24:
      *a1 = v9;
      *(a1 + 8) = v11;
      *(a1 + 32) = v12;
      return;
    }

LABEL_7:
    if (__CFStringIsCF())
    {
      v9 = 0;

LABEL_12:
      v12 = 17;
      v11 = 0xE000000000000000;
      goto LABEL_24;
    }

    v13 = v7;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v9 = v14;
      v11 = v15;

LABEL_23:
      v12 = 17;
      goto LABEL_24;
    }

    if (![v13 length])
    {

      v9 = 0;
      goto LABEL_12;
    }

    v9 = String.init(_cocoaString:)();
    v11 = v19;
LABEL_22:

    goto LABEL_23;
  }

  v16 = [v7 UTF8String];
  if (v16)
  {
    v17 = String.init(utf8String:)(v16);
    if (v18)
    {
LABEL_17:
      v9 = v17;
      v11 = v18;

      goto LABEL_22;
    }

    __break(1u);
LABEL_16:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = v20;
      v11 = v21;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t AsyncUnicodeScalarSequence.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return MEMORY[0x1EEE6DFA0](AsyncUnicodeScalarSequence.AsyncIterator.next(), 0, 0);
}

uint64_t AsyncUnicodeScalarSequence.AsyncIterator.next()()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 36);
  *(v0 + 144) = v2;
  v3 = (v1 + v2);
  if (v3[1])
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 80) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 88) = AssociatedConformanceWitness;
    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = AsyncUnicodeScalarSequence.AsyncIterator.next();
    v7 = v0 + 156;
LABEL_10:

    return MEMORY[0x1EEE6D8C8](v7, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  v8 = *v3;
  *v3 = 256;
  if ((v8 & 0xE0) == 0xC0)
  {
    v9 = 1;
LABEL_9:
    *(v0 + 32) = v9;
    v10 = *(v0 + 16);
    *(v0 + 152) = v8;
    *(v0 + 153) = 0;
    *(v0 + 155) = 0;
    *(v0 + 40) = *(v10 + 24);
    *(v0 + 48) = *(v10 + 16);
    *(v0 + 56) = 0;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *v11 = v0;
    v11[1] = AsyncUnicodeScalarSequence.AsyncIterator.next();
    v7 = v0 + 160;
    goto LABEL_10;
  }

  if ((v8 & 0xF0) == 0xE0)
  {
    v9 = 2;
    goto LABEL_9;
  }

  if ((v8 & 0xF8) == 0xF0)
  {
    v9 = 3;
    goto LABEL_9;
  }

  if (v8 < 0)
  {
    LOBYTE(v15) = 0;
    v16 = 65533;
  }

  else
  {
    *(v0 + 152) = v8;
    *(v0 + 153) = 0;
    *(v0 + 155) = 0;
    v12 = static String._fromUTF8Repairing(_:)();
    v14 = specialized Collection.first.getter(v12, v13);

    v15 = HIDWORD(v14) & 1;
    v16 = v14;
  }

  v17 = *(v0 + 8);

  return v17(v16 | (v15 << 32));
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = AsyncUnicodeScalarSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncUnicodeScalarSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 160);
  if ((*(v0 + 161) & 1) == 0)
  {
    if ((v1 & 0xC0) == 0x80)
    {
      v2 = *(v0 + 32);
      v3 = *(v0 + 56) + 1;
      *(v0 + 152 + v3) = v1;
      if (v3 != v2)
      {
        *(v0 + 56) = v3;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v6 = swift_task_alloc();
        *(v0 + 64) = v6;
        *v6 = v0;
        v6[1] = AsyncUnicodeScalarSequence.AsyncIterator.next();

        return MEMORY[0x1EEE6D8C8](v0 + 160, AssociatedTypeWitness, AssociatedConformanceWitness);
      }
    }

    else
    {
      v7 = (*(v0 + 24) + *(v0 + 144));
      *v7 = v1;
      v7[1] = 0;
    }
  }

  v8 = static String._fromUTF8Repairing(_:)();
  v10 = specialized Collection.first.getter(v8, v9);

  v11 = *(v0 + 8);

  return v11(v10 | ((HIDWORD(v10) & 1) << 32));
}

{
  v1 = *(v0 + 8);

  return v1();
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = AsyncUnicodeScalarSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncUnicodeScalarSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 157);
  if (v1)
  {
    v2 = 0;
LABEL_4:
    v3 = *(v0 + 8);

    return v3(v2 | (v1 << 32));
  }

  v2 = *(v0 + 156);
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_4;
  }

  if ((v2 & 0xE0) == 0xC0)
  {
    v5 = 1;
  }

  else if ((v2 & 0xF0) == 0xE0)
  {
    v5 = 2;
  }

  else
  {
    if ((v2 & 0xF8) != 0xF0)
    {
      v2 = 65533;
      goto LABEL_4;
    }

    v5 = 3;
  }

  *(v0 + 148) = v2;
  *(v0 + 149) = 0;
  *(v0 + 151) = 0;
  *(v0 + 112) = v5;
  *(v0 + 120) = 0;
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = AsyncUnicodeScalarSequence.AsyncIterator.next();
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);

  return MEMORY[0x1EEE6D8C8](v0 + 158, v7, v8);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = AsyncUnicodeScalarSequence.AsyncIterator.next();
  }

  else
  {
    v2 = AsyncUnicodeScalarSequence.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 158);
  if ((*(v0 + 159) & 1) == 0)
  {
    if ((v1 & 0xC0) == 0x80)
    {
      v2 = *(v0 + 112);
      v3 = *(v0 + 120) + 1;
      *(v0 + 148 + v3) = v1;
      if (v3 != v2)
      {
        *(v0 + 120) = v3;
        v4 = swift_task_alloc();
        *(v0 + 128) = v4;
        *v4 = v0;
        v4[1] = AsyncUnicodeScalarSequence.AsyncIterator.next();
        v5 = *(v0 + 80);
        v6 = *(v0 + 88);

        return MEMORY[0x1EEE6D8C8](v0 + 158, v5, v6);
      }
    }

    else
    {
      v7 = (*(v0 + 24) + *(v0 + 144));
      *v7 = v1;
      v7[1] = 0;
    }
  }

  v8 = static String._fromUTF8Repairing(_:)();
  v10 = specialized Collection.first.getter(v8, v9);

  v11 = *(v0 + 8);

  return v11(v10 | ((HIDWORD(v10) & 1) << 32));
}

{
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AsyncUnicodeScalarSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v8 = *(a1 + 24);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  result = type metadata accessor for AsyncUnicodeScalarSequence.AsyncIterator(0, v4, v8, v9);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t AsyncUnicodeScalarSequence.AsyncIterator._base.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t AsyncUnicodeScalarSequence.AsyncIterator._base.setter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);

  return v5(v2, a1, AssociatedTypeWitness);
}

uint64_t AsyncUnicodeScalarSequence.AsyncIterator._leftover.setter(uint64_t result, uint64_t a2)
{
  v3 = (v2 + *(a2 + 36));
  *v3 = result;
  v3[1] = BYTE1(result) & 1;
  return result;
}

Swift::Int_optional __swiftcall AsyncUnicodeScalarSequence.AsyncIterator._expectedContinuationCountForByte(_:)(Swift::UInt8 a1)
{
  v1 = a1 & 0xE0;
  v2 = a1 & 0xF0;
  v3 = (a1 & 0x80u) != 0;
  v4 = 3;
  if ((a1 & 0xF8) == 0xF0)
  {
    v3 = 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v2 == 224;
  if (v2 == 224)
  {
    v6 = 2;
  }

  else
  {
    v6 = v4;
  }

  if (v5)
  {
    v3 = 0;
  }

  if (v1 == 192)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v1 != 192 && v3;
  result.value = v7;
  result.is_nil = v8;
  return result;
}

uint64_t AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:)(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 86) = a1;

  return MEMORY[0x1EEE6DFA0](AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:), 0, 0);
}

uint64_t AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:)()
{
  v1 = *(v0 + 86);
  if ((v1 & 0xE0) == 0xC0)
  {
    v2 = 1;
LABEL_7:
    *(v0 + 32) = v2;
    v3 = *(v0 + 16);
    *(v0 + 80) = v1;
    *(v0 + 81) = 0;
    *(v0 + 83) = 0;
    *(v0 + 40) = *(v3 + 24);
    *(v0 + 48) = *(v3 + 16);
    *(v0 + 56) = 0;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:);

    return MEMORY[0x1EEE6D8C8](v0 + 84, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  if ((v1 & 0xF0) == 0xE0)
  {
    v2 = 2;
    goto LABEL_7;
  }

  if ((v1 & 0xF8) == 0xF0)
  {
    v2 = 3;
    goto LABEL_7;
  }

  if ((*(v0 + 86) & 0x80) != 0)
  {
    LOBYTE(v10) = 0;
    v11 = 65533;
  }

  else
  {
    *(v0 + 80) = v1;
    *(v0 + 81) = 0;
    *(v0 + 83) = 0;
    v7 = static String._fromUTF8Repairing(_:)();
    v9 = specialized Collection.first.getter(v7, v8);

    v10 = HIDWORD(v9) & 1;
    v11 = v9;
  }

  v12 = *(v0 + 8);

  return v12(v11 | (v10 << 32));
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:);
  }

  else
  {
    v2 = AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 84);
  if ((*(v0 + 85) & 1) == 0)
  {
    if ((v1 & 0xC0) == 0x80)
    {
      v2 = *(v0 + 32);
      v3 = *(v0 + 56) + 1;
      *(v0 + 80 + v3) = v1;
      if (v3 != v2)
      {
        *(v0 + 56) = v3;
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v6 = swift_task_alloc();
        *(v0 + 64) = v6;
        *v6 = v0;
        v6[1] = AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:);

        return MEMORY[0x1EEE6D8C8](v0 + 84, AssociatedTypeWitness, AssociatedConformanceWitness);
      }
    }

    else
    {
      v7 = (*(v0 + 24) + *(*(v0 + 16) + 36));
      *v7 = v1;
      v7[1] = 0;
    }
  }

  v8 = static String._fromUTF8Repairing(_:)();
  v10 = specialized Collection.first.getter(v8, v9);

  v11 = *(v0 + 8);

  return v11(v10 | ((HIDWORD(v10) & 1) << 32));
}

{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncUnicodeScalarSequence<A>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance AsyncUnicodeScalarSequence<A>.AsyncIterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncUnicodeScalarSequence<A>.AsyncIterator()
{
  v1 = (v0[3] + *(v0[4] + 36));
  if (v1[1])
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncUnicodeScalarSequence<A>.AsyncIterator;

    return MEMORY[0x1EEE6D8C8](v0 + 9, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v5 = *v1;
    *v1 = 256;
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncUnicodeScalarSequence<A>.AsyncIterator;
    v7 = v0[4];

    return AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:)(v5, v7);
  }
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncUnicodeScalarSequence<A>.AsyncIterator;
  }

  else
  {
    v2 = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncUnicodeScalarSequence<A>.AsyncIterator;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 73);
  if (v1 == 1)
  {
    v2 = 0;
LABEL_4:
    v3 = *(v0 + 16);
    *v3 = v2;
    *(v3 + 4) = v1;
    v4 = *(v0 + 8);

    return v4();
  }

  v2 = *(v0 + 72);
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_4;
  }

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = protocol witness for AsyncIteratorProtocol.next() in conformance AsyncUnicodeScalarSequence<A>.AsyncIterator;
  v7 = *(v0 + 32);

  return AsyncUnicodeScalarSequence.AsyncIterator._nextComplexScalar(_:)(v2, v7);
}

{
  return (*(v0 + 8))();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance AsyncUnicodeScalarSequence<A>.AsyncIterator(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    v6 = *(v4 + 16);
    *v6 = a1;
    *(v6 + 4) = BYTE4(a1) & 1;
  }

  v7 = *(v5 + 8);

  return v7();
}

{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    v6 = *(v4 + 16);
    *v6 = a1;
    *(v6 + 4) = BYTE4(a1) & 1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance AsyncUnicodeScalarSequence<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncUnicodeScalarSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

void type metadata completion function for AsyncUnicodeScalarSequence.AsyncIterator(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt8?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for AsyncUnicodeScalarSequence.AsyncIterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v13 = *(v6 + 48);

    return v13(a1);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64) + 2;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((a2 - v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (*(*(AssociatedTypeWitness - 8) + 64) != -2)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v7 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for AsyncUnicodeScalarSequence.AsyncIterator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64) + 2;
  if (a3 <= v8)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 - v8 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (v8 < a2)
  {
    v11 = ~v8 + a2;
    if (v9 < 4)
    {
      v12 = (v11 >> (8 * v9)) + 1;
      if (*(v7 + 64) != -2)
      {
        v15 = v11 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v15;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&a1[v9] = v12;
              }

              else
              {
                *&a1[v9] = v12;
              }

              return;
            }
          }

          else
          {
            *a1 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v15;
        a1[2] = BYTE2(v15);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      a1[v9] = v12;
    }

    return;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v10)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v16 = *(v7 + 56);

  v16(a1, a2);
}

void type metadata accessor for UInt8?()
{
  if (!lazy cache variable for type metadata for UInt8?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UInt8?);
    }
  }
}

uint64_t Range<>.init(_:)(uint64_t result, uint64_t a2)
{
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (!__OFADD__(result, a2))
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _NSRange.init<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v62 = a1;
  v7 = *(a4 + 8);
  v8 = *(v7 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = v8;
  v60 = swift_getAssociatedTypeWitness();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v46 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v50 = TupleTypeMetadata2;
  v51 = v12;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v46 - v16;
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v56 = v7;
  v23 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v23);
  v55 = a3;
  v61 = a2;
  swift_getAssociatedConformanceWitness();
  v49 = type metadata accessor for Range();
  v54 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v52 = &v46 - v27;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v59 = a4;
  dispatch thunk of static FixedWidthInteger.max.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v29 = v47;
    v30 = v48;
    v31 = *(v47 + 32);
    v31(v48, v22, AssociatedTypeWitness);
    v32 = v50;
    v31(&v30[*(v50 + 48)], v19, AssociatedTypeWitness);
    v33 = v51;
    (*(v51 + 16))(v14, v30, v32);
    v34 = *(v32 + 48);
    v31(v25, v14, AssociatedTypeWitness);
    v46 = v25;
    v35 = *(v29 + 8);
    v35(&v14[v34], AssociatedTypeWitness);
    (*(v33 + 32))(v14, v30, v32);
    v36 = *(v32 + 48);
    v37 = v49;
    v38 = v46;
    v31(&v46[*(v49 + 36)], &v14[v36], AssociatedTypeWitness);
    v35(v14, AssociatedTypeWitness);
    v39 = v60;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v63 = v53;
    v64 = AssociatedConformanceWitness;
    swift_getWitnessTable();
    v41 = v52;
    v42 = v38;
    v43 = v61;
    dispatch thunk of RangeExpression.relative<A>(to:)();
    v55 = *(v54 + 8);
    v55(v42, v37);
    v56 = specialized numericCast<A, B>(_:)(v41, AssociatedTypeWitness, v56);
    v44 = v57;
    dispatch thunk of Strideable.distance(to:)();
    v45 = swift_getAssociatedConformanceWitness();
    specialized numericCast<A, B>(_:)(v44, v39, *(v45 + 8));
    (*(*(v43 - 8) + 8))(v62, v43);
    (*(v58 + 8))(v44, v39);
    v55(v41, v37);
    return v56;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall _NSRange.contains(_:)(Swift::Int a1)
{
  if (a1 >= v1)
  {
    if (__OFSUB__(a1, v1))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(a1) = a1 - v1 < v2;
    }
  }

  else
  {
    LOBYTE(a1) = 0;
  }

  return a1;
}

Swift::Int _NSRange.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1);
  MEMORY[0x1865CD060](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _NSRange()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _NSRange()
{
  v1 = v0[1];
  MEMORY[0x1865CD060](*v0);
  return MEMORY[0x1865CD060](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _NSRange(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  return Hasher._finalize()();
}

uint64_t _NSRange.description.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v0);

  MEMORY[0x1865CB0E0](8236, 0xE200000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v1);

  MEMORY[0x1865CB0E0](125, 0xE100000000000000);
  return 123;
}

uint64_t _NSRange.debugDescription.getter(uint64_t a1)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    _StringGuts.grow(_:)(16);

    strcpy(v4, "{NSNotFound, ");
    HIWORD(v4[1]) = -4864;
  }

  else
  {
    v4[0] = 123;
    v4[1] = 0xE100000000000000;
    v1 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v1);

    MEMORY[0x1865CB0E0](8236, 0xE200000000000000);
  }

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v2);

  MEMORY[0x1865CB0E0](125, 0xE100000000000000);
  return v4[0];
}

CFCharacterSetRef _NSRange.init(_:)(uint64_t a1, unint64_t a2)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(NSScanner) initWithString_];
  swift_unknownObjectRelease();
  result = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  if (result)
  {
    v5 = result;
    type metadata accessor for __CharacterSetStorage();
    inited = swift_initStackObject();
    *(inited + 16) = v5;
    *(inited + 24) = 0;
    [(__CFCharacterSet *)v5 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSCharacterSet();
    swift_dynamicCast();
    [v3 _deprecated_scanUpToCharactersFromSet_intoString_];

    if ([v3 isAtEnd])
    {

      return 0;
    }

    v13 = 0;
    v7 = [v3 _deprecated_scanLocation];
    if ([v3 scanInteger_] && !objc_msgSend(v3, sel_isAtEnd))
    {
      v8 = [v3 _deprecated_scanString_intoString_];
      swift_unknownObjectRelease();
      if (v8)
      {
        [v3 _deprecated_setScanLocation_];
        v14[0] = 0.0;
        if (![v3 _deprecated_scanDouble_])
        {
          goto LABEL_24;
        }

        if (v14[0] <= -9.22337204e18 || v14[0] >= 9.22337204e18 || v14[0] != trunc(v14[0]))
        {

          return 0;
        }

        v13 = v14[0];
      }

      [(__CFCharacterSet *)v5 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      [v3 _deprecated_scanUpToCharactersFromSet_intoString_];

      if (![v3 isAtEnd])
      {
        v14[0] = 0.0;
        v9 = [v3 _deprecated_scanLocation];
        if ([v3 scanInteger_])
        {
          if (([v3 isAtEnd] & 1) != 0 || (v10 = objc_msgSend(v3, sel__deprecated_scanString_intoString_, String._bridgeToObjectiveCImpl()(), 0), swift_unknownObjectRelease(), !v10))
          {

            return v13;
          }

          [v3 _deprecated_setScanLocation_];
          v12 = 0.0;
          if ([v3 _deprecated_scanDouble_])
          {
            v11 = v12;

            if (v11 <= -9.22337204e18 || v11 >= 9.22337204e18 || v11 != trunc(v11))
            {
              return 0;
            }

            *&v14[0] = v11;
            return v13;
          }
        }
      }
    }

LABEL_24:

    return 0;
  }

  __break(1u);
  return result;
}