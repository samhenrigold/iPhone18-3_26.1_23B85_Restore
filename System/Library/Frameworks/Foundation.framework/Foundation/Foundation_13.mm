uint64_t URL.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v6 = type metadata accessor for _BridgedURL();
    v7 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v6 = type metadata accessor for _SwiftURL();
    v7 = &protocol witness table for _SwiftURL;
  }

  v8 = v7[1];

  result = v8(a1, a2);
  if (result)
  {
    v10 = (v7[56])(v6, v7);
    v12 = v11;
    result = swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *a3 = v10;
  a3[1] = v12;
  return result;
}

uint64_t specialized _SwiftURL.__allocating_init(string:)(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  type metadata accessor for _SwiftURL();
  v5 = swift_allocObject();
  type metadata accessor for _SwiftURL.ResourceInfo();
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMR);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v5 + 56) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMR);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 16) = 0;
  *(v5 + 64) = v8;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(a1, a2, 1, 1);

  if (!v9)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v5 + 16) = v9;
  if ((v9[48] & 1) == 0)
  {

    String.subscript.getter();
  }

  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 4;
  *(v5 + 48) = 0;
  return v5;
}

CFCharacterSetRef static CharacterSet.controlCharacters.getter@<X0>(CFCharacterSetPredefinedSet a1@<X0>, CFCharacterSetRef *a2@<X8>)
{
  result = CFCharacterSetGetPredefined(a1);
  if (result)
  {
    v4 = result;
    type metadata accessor for __CharacterSetStorage();
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 24) = 0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for _bridgedAutoupdatingCurrent()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  inited = swift_initStaticObject();
  v1 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating, &protocol conformance descriptor for _TimeZoneAutoupdating);
  v2 = type metadata accessor for _NSSwiftTimeZone();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  *v4 = inited;
  v4[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMR);
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = xmmword_18122E880;
  *&v3[OBJC_IVAR____NSSwiftTimeZone_lock] = v5;
  v7.receiver = v3;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, sel_init);
  static TimeZoneCache._bridgedAutoupdatingCurrent = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating()
{
  result = lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating;
  if (!lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating)
  {
    type metadata accessor for _TimeZoneAutoupdating();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _TimeZoneAutoupdating(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating();
  *(a1 + 8) = result;
  return result;
}

uint64_t static CharacterSet.urlUserAllowed.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1();
  type metadata accessor for __CharacterSetStorage();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *a2 = result;
  return result;
}

id StringProtocol.addingPercentEncoding(withAllowedCharacters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 16);
  StringProtocol._ephemeralString.getter();
  v5 = String._bridgeToObjectiveCImpl()();

  v6 = [v5 _stringByAddingPercentEncodingWithAllowedCharacters_];
  swift_unknownObjectRelease();
  if ((v3 & 1) == 0)
  {
    if (v6)
    {
      isTaggedPointer = _objc_isTaggedPointer(v6);
      v12 = v6;
      v9 = v12;
      if (isTaggedPointer)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v12);
        switch(TaggedPointerTag)
        {
          case 0:
            goto LABEL_22;
          case 0x16:
            goto LABEL_29;
          case 2:
LABEL_13:
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v13 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            return v13;
        }
      }

      if (__CFStringIsCF())
      {
LABEL_21:

        return 0;
      }

      goto LABEL_19;
    }

LABEL_14:

    return 0;
  }

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = _objc_isTaggedPointer(v6);
  v8 = v6;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
LABEL_22:
    _CFIndirectTaggedPointerStringGetContents();
    v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v20)
    {
      v21 = v19;

LABEL_35:
      return v21;
    }

    [v9 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v21 = v25;
LABEL_34:

    goto LABEL_35;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      goto LABEL_13;
    }

LABEL_16:
    if (__CFStringIsCF())
    {
      goto LABEL_21;
    }

LABEL_19:
    v15 = v9;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v18 = v16;

      return v18;
    }

    if (![v15 length])
    {

      return 0;
    }

    v21 = String.init(_cocoaString:)();
    goto LABEL_34;
  }

  result = [v9 UTF8String];
  if (!result)
  {
    __break(1u);
    goto LABEL_37;
  }

  result = String.init(utf8String:)(result);
  if (v22)
  {
LABEL_31:
    v24 = result;

    return v24;
  }

  __break(1u);
LABEL_29:
  result = [v9 UTF8String];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  result = String.init(utf8String:)(result);
  if (v23)
  {
    goto LABEL_31;
  }

LABEL_38:
  __break(1u);
  return result;
}

unint64_t CharacterSet.remove(_:)(UTF32Char a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = __CharacterSetStorage.mutableCopy()();

    *v2 = v5;
  }

  IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(*(v5 + 2), a1);
  __CharacterSetStorage.insert(charactersIn:)(a1 | (a1 << 32), MEMORY[0x1E695D750]);
  if (IsLongCharacterMember)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((IsLongCharacterMember == 0) << 32);
}

void __CharacterSetStorage.insert(charactersIn:)(unint64_t a1, void (*a2)(void))
{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = *(v2 + 16);
  if (*(v2 + 24))
  {
    v6 = v4 - v3;
    if (v4 >= v3)
    {
      if (v6 != -1)
      {

        (a2)(v5, v3, (v6 + 1));
        return;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v5;
  MutableCopy = CFCharacterSetCreateMutableCopy(0, v7);
  if (!MutableCopy)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (v4 < v3)
  {
    goto LABEL_14;
  }

  if (v4 - v3 == -1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = MutableCopy;
  v10 = MutableCopy;
  a2();

  v11 = *(v2 + 16);
  *(v2 + 16) = v9;
  *(v2 + 24) = 1;
}

{
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = *(v2 + 16);
  if (*(v2 + 24))
  {
    if (v4 >= v3)
    {

      (a2)(v5, v3, v4 - v3);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  MutableCopy = CFCharacterSetCreateMutableCopy(0, v6);
  if (!MutableCopy)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v4 < v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = MutableCopy;
  v9 = MutableCopy;
  a2();

  v10 = *(v2 + 16);
  *(v2 + 16) = v8;
  *(v2 + 24) = 1;
}

double URL.append<A>(components:directoryHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  URL._appending<A>(components:directoryHint:)(a1, a3, a4, &v6);
  swift_unknownObjectRelease();
  result = *&v6;
  *v4 = v6;
  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance URLQueryItem()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for _NSSwiftURLQueryItem();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____NSSwiftURLQueryItem_queryItem];
  *v7 = v1;
  *(v7 + 1) = v2;
  *(v7 + 2) = v4;
  *(v7 + 3) = v3;
  v8 = String._bridgeToObjectiveCImpl()();
  if (v3)
  {
    v9 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v6;
  v12.super_class = v5;

  v10 = objc_msgSendSuper2(&v12, sel_initWithName_value_, v8, v9);
  swift_unknownObjectRelease();

  return v10;
}

uint64_t specialized static URLQueryItem._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  outlined consume of Locale.LanguageCode?(*a2, a2[1], a2[2], a2[3]);
  v4 = [a1 name];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_7:
    LOBYTE(v35) = 0;
    if (__CFStringIsCF())
    {
      v10 = 0;

LABEL_22:
      v12 = 0xE000000000000000;
      goto LABEL_23;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_23;
    }

    if ([v13 length])
    {
      v10 = String.init(_cocoaString:)();
      v12 = v19;

      goto LABEL_23;
    }

LABEL_21:
    v10 = 0;
    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v8 UTF8String];
    if (!result)
    {
      __break(1u);
      goto LABEL_47;
    }

    v17 = String.init(utf8String:)(result);
    if (v18)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v35;
      v12 = v37;
      goto LABEL_19;
    }

LABEL_15:
    v10 = v17;
    v12 = v18;

LABEL_19:
    goto LABEL_23;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v12 = v11;

LABEL_23:
  v20 = [a1 value];
  if (!v20)
  {
    v26 = 0;
    v28 = 0;
    goto LABEL_45;
  }

  v21 = v20;
  v22 = _objc_isTaggedPointer(v20);
  v23 = v21;
  v24 = v23;
  if (!v22)
  {
    goto LABEL_29;
  }

  v25 = _objc_getTaggedPointerTag(v23);
  if (!v25)
  {
    goto LABEL_38;
  }

  if (v25 != 22)
  {
    if (v25 == 2)
    {
      MEMORY[0x1EEE9AC00](v25);
      v26 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v28 = v27;

LABEL_45:
      *a2 = v10;
      a2[1] = v12;
      a2[2] = v26;
      a2[3] = v28;
      return 1;
    }

LABEL_29:
    if (__CFStringIsCF())
    {

LABEL_34:
      v26 = 0;
      v28 = 0xE000000000000000;
      goto LABEL_45;
    }

    v29 = v24;
    v30 = String.init(_nativeStorage:)();
    if (v31)
    {
      v26 = v30;
      v28 = v31;

      goto LABEL_45;
    }

    if (![v29 length])
    {

      goto LABEL_34;
    }

    v26 = String.init(_cocoaString:)();
    v28 = v34;
LABEL_44:

    goto LABEL_45;
  }

  result = [v24 UTF8String];
  if (result)
  {
    v32 = String.init(utf8String:)(result);
    if (v33)
    {
LABEL_39:
      v26 = v32;
      v28 = v33;

      goto LABEL_44;
    }

    __break(1u);
LABEL_38:
    _CFIndirectTaggedPointerStringGetContents();
    v32 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v33)
    {
      [v24 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v26 = v36;
      v28 = v37;
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t specialized static URLQueryItem._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  result = specialized static URLQueryItem._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2);
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSURLQueryItem, off_1E69EE9D0);
    v3 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v3);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0x79726575514C5255, 0xEC0000006D657449);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

double specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v20 = 1;
  v5 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(a1, a2, a3, 0);

  if (v5)
  {
    v6 = v5[218];
    *&v13 = v5;
    *(&v13 + 1) = 0x101010101010101;
    v14[0] = 1;
    memset(&v14[8], 0, 64);
    v15 = 0;
    v7 = v20;
    v16[0] = v20;
    memset(&v16[8], 0, 48);
    v16[56] = v6;
    v16[57] = 0;
    v17 = v13;
    *v18 = *v14;
    *&v18[48] = *&v14[48];
    *&v18[64] = 0uLL;
    *&v18[16] = *&v14[16];
    *&v18[32] = *&v14[32];
    *&v19[42] = *&v16[42];
    *&v19[16] = *&v16[16];
    *&v19[32] = *&v16[32];
    *v19 = *v16;
    _NSBundleDeallocatingImmortalBundle();
    outlined init with copy of URLComponents._URLComponents(&v13, &v21);
    v27 = *v19;
    v28 = *&v19[16];
    v29[0] = *&v19[32];
    *(v29 + 10) = *&v19[42];
    v23 = *&v18[16];
    v24 = *&v18[32];
    v25 = *&v18[48];
    v26 = *&v18[64];
    v21 = v17;
    v22 = *v18;
  }

  else
  {
    sub_18094C438(&v21);
    v6 = 0;
    v7 = v20;
  }

  *&v17 = v5;
  *(&v17 + 1) = 0x101010101010101;
  v18[0] = 1;
  memset(&v18[8], 0, 72);
  v19[0] = v7;
  memset(&v19[8], 0, 48);
  v19[56] = v6;
  v19[57] = 0;
  outlined destroy of URLComponents._URLComponents(&v17);
  v8 = v28;
  a4[6] = v27;
  a4[7] = v8;
  a4[8] = v29[0];
  *(a4 + 138) = *(v29 + 10);
  v9 = v24;
  a4[2] = v23;
  a4[3] = v9;
  v10 = v26;
  a4[4] = v25;
  a4[5] = v10;
  result = *&v21;
  v12 = v22;
  *a4 = v21;
  a4[1] = v12;
  return result;
}

Swift::OpaquePointer_optional __swiftcall URLComponents._URLComponents.queryItems(percentEncoded:)(Swift::Bool percentEncoded)
{
  v105 = percentEncoded;
  if (*(v2 + 128))
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
  }

  else
  {
    if (*(v2 + 15) & 1) == 0 || !*v2 || (*(*v2 + 192))
    {
      v9 = 0;
      goto LABEL_115;
    }

    v93 = String.subscript.getter();
    v3 = MEMORY[0x1865CAE80](v93);
    v4 = v94;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v112 = v5;
    v113 = v3;
    v111 = 4 * v5;
    v6 = (v3 >> 59) & 1;
    if ((v4 & 0x1000000000000000) == 0)
    {
      LOBYTE(v6) = 1;
    }

    v7 = 4 << v6;
    v106 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v107 = v4 & 0xFFFFFFFFFFFFFFLL;
    swift_bridgeObjectRetain_n();

    v8 = 0;
    v9 = 0;
    v109 = MEMORY[0x1E69E7CC0];
    v10 = 1;
    v11 = 15;
    v12 = 15;
    v103 = v7;
    while (1)
    {
      v13 = v11 & 0xC;
      v14 = v11;
      if (v13 == v7)
      {
        v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, v113, v4);
      }

      v15 = v14 >> 16;
      v16 = v112;
      if (v14 >> 16 >= v112)
      {
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
        goto LABEL_123;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        v18 = String.UTF8View._foreignSubscript(position:)();
        v16 = v112;
      }

      else if ((v4 & 0x2000000000000000) != 0)
      {
        v114 = v113;
        v115 = v107;
        v18 = *(&v114 + v15);
      }

      else
      {
        v17 = v106;
        if ((v113 & 0x1000000000000000) == 0)
        {
          v17 = _StringObject.sharedUTF8.getter();
          v16 = v112;
        }

        v18 = *(v17 + v15);
      }

      if (v18 != 38)
      {
        if (v10)
        {
          v19 = v11;
        }

        else
        {
          v19 = v9;
        }

        if (v18 == 61)
        {
          v9 = v19;
          v10 = 0;
        }

        if (v13 != v7)
        {
          goto LABEL_27;
        }

        goto LABEL_75;
      }

      if (v10)
      {
        if (v8 < v12 >> 14)
        {
          goto LABEL_118;
        }

        v20 = String.subscript.getter();
        v110 = MEMORY[0x1865CAE80](v20);
        v15 = v21;

        v23 = 0;
        v24 = 0;
        v9 = v109;
        if (v105)
        {
          goto LABEL_33;
        }

        goto LABEL_44;
      }

      if (v9 >> 14 < v12 >> 14)
      {
        goto LABEL_119;
      }

      v25 = String.subscript.getter();
      v110 = MEMORY[0x1865CAE80](v25);
      v15 = v26;

      if ((v9 & 0xC) == v7)
      {
        v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, v113, v4);
        if ((v4 & 0x1000000000000000) == 0)
        {
LABEL_37:
          v27 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_42;
        }
      }

      else if ((v4 & 0x1000000000000000) == 0)
      {
        goto LABEL_37;
      }

      if (v112 <= v9 >> 16)
      {
        goto LABEL_122;
      }

      v27 = String.UTF8View._foreignIndex(after:)();
LABEL_42:
      v9 = v109;
      if (v8 < v27 >> 14)
      {
        goto LABEL_120;
      }

      v28 = String.subscript.getter();
      v23 = MEMORY[0x1865CAE80](v28);
      v24 = v29;

      if (v105)
      {
LABEL_33:
        v108 = v15;
        v15 = v7;
        goto LABEL_64;
      }

LABEL_44:
      v30 = HIBYTE(v15) & 0xF;
      v31 = v110;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v30 = v110 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        v104 = v23;
        v114 = v110;
        v115 = v15;
        MEMORY[0x1EEE9AC00](v22);
        v100 = &v114;
        v101 = MEMORY[0x1E69E7CD0];
        v102 = 4;

        v32 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v99, v31, v15);
        if (v33 == 1)
        {
          v34 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v31, v15, MEMORY[0x1E69E7CD0], 4);
          v36 = v35;
          v37 = swift_bridgeObjectRelease_n();
          v38 = v34;
        }

        else
        {
          v39 = v32;
          v40 = v33;
          v37 = swift_bridgeObjectRelease_n();
          v38 = v39;
          v36 = v40;
        }

        v15 = v103;
        v23 = v104;
        v9 = v109;
        v108 = v36;
        if (v36)
        {
          v110 = v38;
          if (!v24)
          {
            goto LABEL_64;
          }
        }

        else
        {
          v108 = 0xE000000000000000;
          v110 = 0;
          if (!v24)
          {
            goto LABEL_64;
          }
        }
      }

      else
      {

        v108 = 0xE000000000000000;
        v15 = v103;
        v110 = 0;
        if (!v24)
        {
          goto LABEL_64;
        }
      }

      v41 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v41 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v114 = v23;
        v115 = v24;
        MEMORY[0x1EEE9AC00](v37);
        v100 = &v114;
        v42 = MEMORY[0x1E69E7CD0];
        v101 = MEMORY[0x1E69E7CD0];
        v102 = 4;

        v43 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v99, v23, v24);
        if (v44 == 1)
        {
          v23 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v23, v24, v42, 4);
          v46 = v45;
          swift_bridgeObjectRelease_n();
          v24 = v46;
        }

        else
        {
          v47 = v43;
          v48 = v44;
          swift_bridgeObjectRelease_n();
          v24 = v48;
          v23 = v47;
        }

        v9 = v109;
      }

      else
      {

        v23 = 0;
        v24 = 0xE000000000000000;
      }

LABEL_64:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      }

      v50 = *(v9 + 16);
      v49 = *(v9 + 24);
      v16 = v112;
      if (v50 >= v49 >> 1)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v9);
        v16 = v112;
        v9 = v56;
      }

      *(v9 + 16) = v50 + 1;
      v51 = (v9 + 32 * v50);
      v52 = v108;
      v51[4] = v110;
      v51[5] = v52;
      v51[6] = v23;
      v51[7] = v24;
      v53 = v11;
      if (v13 == v15)
      {
        v53 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, v113, v4);
        v16 = v112;
      }

      v7 = v15;
      v109 = v9;
      if ((v4 & 0x1000000000000000) != 0)
      {
        if (v16 <= v53 >> 16)
        {
          goto LABEL_121;
        }

        v54 = String.UTF8View._foreignIndex(after:)();
        v16 = v112;
        v12 = v54;
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v12 = (v53 & 0xFFFFFFFFFFFF0000) + 65540;
      }

      v10 = 1;
      if (v13 != v15)
      {
LABEL_27:
        if ((v4 & 0x1000000000000000) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_9;
      }

LABEL_75:
      v55 = _StringGuts._slowEnsureMatchingEncoding(_:)(v11, v113, v4);
      v16 = v112;
      v11 = v55;
      if ((v4 & 0x1000000000000000) != 0)
      {
LABEL_28:
        if (v16 <= v11 >> 16)
        {
          goto LABEL_117;
        }

        v11 = String.UTF8View._foreignIndex(after:)();
        goto LABEL_10;
      }

LABEL_9:
      v11 = (v11 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_10:
      v8 = v11 >> 14;
      if (v11 >> 14 == v111)
      {
        v57 = v12 >> 14;
        if (v10)
        {

          if (v111 >= v57)
          {
            v58 = String.subscript.getter();
            v60 = v59;
            v62 = v61;
            v64 = v63;

            v13 = MEMORY[0x1865CAE80](v58, v60, v62, v64);
            v15 = v65;

            v7 = 0;
            v11 = 0;
            goto LABEL_91;
          }

          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v57 > v9 >> 14)
        {
          goto LABEL_125;
        }

        v67 = String.subscript.getter();
        v13 = MEMORY[0x1865CAE80](v67);
        v15 = v68;

        if ((v9 & 0xC) == v7)
        {
LABEL_126:
          v9 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, v113, v4);
        }

        if ((v4 & 0x1000000000000000) == 0)
        {
          v69 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_89;
        }

        if (v112 > v9 >> 16)
        {
          v69 = String.UTF8View._foreignIndex(after:)();
LABEL_89:
          if (v111 >= v69 >> 14)
          {
            v70 = String.subscript.getter();
            v72 = v71;
            v74 = v73;
            v76 = v75;

            v7 = MEMORY[0x1865CAE80](v70, v72, v74, v76);
            v11 = v77;

LABEL_91:
            v9 = v109;
            v78 = MEMORY[0x1E69E7CD0];
            if (!v105)
            {
              v79 = HIBYTE(v15) & 0xF;
              if ((v15 & 0x2000000000000000) == 0)
              {
                v79 = v13 & 0xFFFFFFFFFFFFLL;
              }

              if (!v79)
              {

                goto LABEL_100;
              }

              v114 = v13;
              v115 = v15;
              MEMORY[0x1EEE9AC00](v66);
              v100 = &v114;
              v101 = v78;
              v102 = 4;

              v80 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v99, v13, v15);
              if (v81 == 1)
              {
                v13 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v13, v15, MEMORY[0x1E69E7CD0], 4);
                v83 = v82;
                v84 = swift_bridgeObjectRelease_n();
                v15 = v83;
              }

              else
              {
                v85 = v80;
                v86 = v81;
                v84 = swift_bridgeObjectRelease_n();
                v13 = v85;
                v15 = v86;
              }

              if (!v15)
              {
LABEL_100:
                v13 = 0;
                v15 = 0xE000000000000000;
              }

              if (v11)
              {
                v87 = HIBYTE(v11) & 0xF;
                if ((v11 & 0x2000000000000000) == 0)
                {
                  v87 = v7 & 0xFFFFFFFFFFFFLL;
                }

                if (v87)
                {
                  v114 = v7;
                  v115 = v11;
                  MEMORY[0x1EEE9AC00](v84);
                  v100 = &v114;
                  v101 = v88;
                  v102 = 4;

                  v89 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v99, v7, v11);
                  if (v90 == 1)
                  {
                    v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v7, v11, MEMORY[0x1E69E7CD0], 4);
                    v92 = v91;
                    swift_bridgeObjectRelease_n();
                  }

                  else
                  {
                    v95 = v89;
                    v92 = v90;
                    swift_bridgeObjectRelease_n();
                    v7 = v95;
                  }

                  v11 = v92;
                }

                else
                {

                  v7 = 0;
                  v11 = 0xE000000000000000;
                }
              }
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
LABEL_112:
              v97 = *(v9 + 16);
              v96 = *(v9 + 24);
              if (v97 >= v96 >> 1)
              {
                v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v9);
              }

              *(v9 + 16) = v97 + 1;
              v98 = (v9 + 32 * v97);
              v98[4] = v13;
              v98[5] = v15;
              v98[6] = v7;
              v98[7] = v11;
              goto LABEL_115;
            }

LABEL_123:
            v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
            goto LABEL_112;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_131;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_115:
  v69 = v9;
LABEL_131:
  result.value._rawValue = v69;
  result.is_nil = v1;
  return result;
}

id specialized static NSURLComponents._componentsWith(url:resolvingAgainstBaseURL:)(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = (*(v3 + 112))(ObjectType, v3);
  }

  else
  {
    v5 = (*(v3 + 104))(ObjectType, v3);
  }

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(v5, v6, 1, v25);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v25) == 1)
  {
    return 0;
  }

  v22 = v25[6];
  v23 = v25[7];
  v24[0] = v26[0];
  *(v24 + 10) = *(v26 + 10);
  v18 = v25[2];
  v19 = v25[3];
  v20 = v25[4];
  v21 = v25[5];
  v16 = v25[0];
  v17 = v25[1];
  v8 = type metadata accessor for _NSSwiftURLComponents();
  v9 = objc_allocWithZone(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy10Foundation13URLComponentsVSo16os_unfair_lock_sVGMR);
  v10 = swift_allocObject();
  *(v10 + 172) = 0;
  v11 = v23;
  *(v10 + 112) = v22;
  *(v10 + 128) = v11;
  *(v10 + 144) = v24[0];
  *(v10 + 154) = *(v24 + 10);
  v12 = v19;
  *(v10 + 48) = v18;
  *(v10 + 64) = v12;
  v13 = v21;
  *(v10 + 80) = v20;
  *(v10 + 96) = v13;
  v14 = v17;
  *(v10 + 16) = v16;
  *(v10 + 32) = v14;
  *&v9[OBJC_IVAR____NSSwiftURLComponents_lock] = v10;
  v15.receiver = v9;
  v15.super_class = v8;
  return objc_msgSendSuper2(&v15, sel_init);
}

id @objc _NSSwiftURLComponents.queryItems.getter(char *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = *&a1[OBJC_IVAR____NSSwiftURLComponents_lock];
  v5 = a1;
  os_unfair_lock_lock((v4 + 172));
  v6 = *(v4 + 128);
  v21 = *(v4 + 112);
  v22 = v6;
  v23[0] = *(v4 + 144);
  *(v23 + 10) = *(v4 + 154);
  v7 = *(v4 + 64);
  v17 = *(v4 + 48);
  v18 = v7;
  v8 = *(v4 + 96);
  v19 = *(v4 + 80);
  v20 = v8;
  v9 = *(v4 + 32);
  v15 = *(v4 + 16);
  v16 = v9;
  outlined init with copy of URLComponents(&v15, v13);
  os_unfair_lock_unlock((v4 + 172));
  v13[6] = v21;
  v13[7] = v22;
  v14[0] = v23[0];
  *(v14 + 10) = *(v23 + 10);
  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v13[5] = v20;
  v13[0] = v15;
  v13[1] = v16;
  v10 = URLComponents._URLComponents.queryItems(percentEncoded:)(a3);
  outlined destroy of URLComponents(&v15);

  if (v10)
  {
    v11 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void URLComponents.url.getter(uint64_t *a1@<X8>)
{
  v3 = v1[7];
  v36 = v1[6];
  v37 = v3;
  v38[0] = v1[8];
  *(v38 + 10) = *(v1 + 138);
  v4 = v1[3];
  v32 = v1[2];
  v33 = v4;
  v5 = v1[5];
  v34 = v1[4];
  v35 = v5;
  v6 = v1[1];
  v30 = *v1;
  v31 = v6;
  if (BYTE8(v30))
  {
    if (v30)
    {
      v8 = *(v30 + 16);
      v7 = *(v30 + 24);

      if (!_foundation_swift_url_feature_enabled())
      {
        goto LABEL_4;
      }

LABEL_10:
      v27 = 0uLL;
      URL.init(stringOrEmpty:relativeTo:)(a1, v8, v7, &v27);
      return;
    }

LABEL_11:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v17 = URLComponents._URLComponents.computedString.getter();
  if (!v18)
  {
    goto LABEL_11;
  }

  v8 = v17;
  v7 = v18;
  if (_foundation_swift_url_feature_enabled())
  {
    goto LABEL_10;
  }

LABEL_4:
  v9 = *MEMORY[0x1E695E480];
  v10 = String._bridgeToObjectiveCImpl()();

  v11 = CFURLCreateWithString(v9, v10, 0);
  swift_unknownObjectRelease();
  if (!v11)
  {
    v16 = 0;
    goto LABEL_16;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v19 = type metadata accessor for _BridgedURL();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v11;
    v29.receiver = v20;
    v29.super_class = v19;
    v21 = v11;
    v22 = objc_msgSendSuper2(&v29, sel_init);
LABEL_15:
    v25 = v22;
    v11 = _BridgedURL.convertingFileReference()();
    v16 = v26;

    goto LABEL_16;
  }

  type metadata accessor for _NSSwiftURL();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    v23 = type metadata accessor for _BridgedURL();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v11;
    v28.receiver = v24;
    v28.super_class = v23;
    v21 = v11;
    v22 = objc_msgSendSuper2(&v28, sel_init);
    goto LABEL_15;
  }

  v13 = v12;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v13;
  v14 = v11;
  v11 = _BridgedNSSwiftURL.convertingFileReference()();
  v16 = v15;

LABEL_16:
  *a1 = v11;
  a1[1] = v16;
}

uint64_t URLComponents._URLComponents.computedString.getter()
{
  result = 0;
  if (*(v0 + 153))
  {
    return result;
  }

  v2 = v0;
  v94 = 0;
  v95 = 0xE000000000000000;
  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = *(v0 + 24);
    v5 = v3;
  }

  else
  {
    if (*(v0 + 9) & 1) == 0 || !*v0 || (*(*v0 + 48))
    {
      goto LABEL_8;
    }

    v12 = String.subscript.getter();
    v4 = MEMORY[0x1865CAE80](v12);
    v5 = v13;
  }

  *&v89 = v4;
  *(&v89 + 1) = v5;

  MEMORY[0x1865CB0E0](58, 0xE100000000000000);
  MEMORY[0x1865CB0E0](v4, v5);

LABEL_8:
  result = URLComponents._URLComponents.hasAuthority.getter();
  if (result)
  {
    v97 = *(v2 + 104);
    v6 = *(&v97 + 1);
    if (*(&v97 + 1))
    {
      v7 = v97;
    }

    else if ((*(v2 + 14) & 1) != 0 && *v2)
    {
      if (*(*v2 + 168))
      {
        v10 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v10 = String.subscript.getter();
      }

      v14 = MEMORY[0x1865CAE80](v10);
      v6 = v15;

      v7 = v14;
    }

    else
    {
      v7 = 0;
      v6 = 0xE000000000000000;
    }

    v16 = specialized Collection.first.getter(v7, v6);
    outlined init with copy of FloatingPointRoundingRule?(&v97, &v89, &_sSSSgMd, &_sSSSgMR);

    if ((v16 & 0x100) != 0 || v16 == 47)
    {
      MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
      goto LABEL_45;
    }

LABEL_28:

    return 0;
  }

  v97 = *(v2 + 104);
  v8 = *(&v97 + 1);
  if (*(&v97 + 1))
  {
    v9 = v97;
  }

  else if ((*(v2 + 14) & 1) != 0 && *v2)
  {
    if (*(*v2 + 168))
    {
      v11 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v11 = String.subscript.getter();
    }

    v9 = MEMORY[0x1865CAE80](v11);
    v8 = v17;
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v18 = (v9 >> 59) & 1;
  }

  else
  {
    v18 = 1;
  }

  v19 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x1000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v88 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v88 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v88)
    {
      __break(1u);
      return result;
    }

    v20 = String.UTF8View._foreignIndex(after:)() >> 14;
  }

  else
  {
    v20 = 4;
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    v19 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 != 4 * v19)
  {
    v21 = specialized Collection.first.getter(v9, v8);
    if ((v21 & 0x100) == 0 && v21 == 47)
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        if (!v19)
        {
          goto LABEL_148;
        }

        v22 = String.UTF8View._foreignIndex(after:)();
      }

      else
      {
        v22 = 65540;
      }

      if ((v22 & 0xC) == 4 << v18)
      {
        v22 = _StringGuts._slowEnsureMatchingEncoding(_:)(v22, v9, v8);
      }

      v18 = v22 >> 16;
      if (v22 >> 16 < v19)
      {
        if ((v8 & 0x1000000000000000) != 0)
        {
          v47 = String.UTF8View._foreignSubscript(position:)();
          goto LABEL_99;
        }

        if ((v8 & 0x2000000000000000) != 0)
        {
          outlined init with copy of FloatingPointRoundingRule?(&v97, &v89, &_sSSSgMd, &_sSSSgMR);

          *&v89 = v9;
          *(&v89 + 1) = v8 & 0xFFFFFFFFFFFFFFLL;
          v47 = *(&v89 + v18);
          goto LABEL_134;
        }

        if ((v9 & 0x1000000000000000) == 0)
        {
          goto LABEL_150;
        }

        v46 = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32;
        goto LABEL_97;
      }

      __break(1u);
LABEL_148:
      __break(1u);
      goto LABEL_149;
    }
  }

  outlined init with copy of FloatingPointRoundingRule?(&v97, &v89, &_sSSSgMd, &_sSSSgMR);

  while (1)
  {
LABEL_45:
    v23 = URLComponents._URLComponents.percentEncodedUser.getter();
    if (v24)
    {
      MEMORY[0x1865CB0E0](v23);
    }

    v25 = *(v2 + 64);
    if (v25)
    {
      v26 = *(v2 + 56);
      v27 = *(v2 + 64);
LABEL_49:
      *&v89 = 58;
      *(&v89 + 1) = 0xE100000000000000;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1865CB0E0](v26, v27);

      MEMORY[0x1865CB0E0](v89, *(&v89 + 1));

      goto LABEL_53;
    }

    if ((*(v2 + 11) & 1) != 0 && *v2 && (*(*v2 + 96) & 1) == 0)
    {
      v44 = String.subscript.getter();
      v26 = MEMORY[0x1865CAE80](v44);
      v27 = v45;

      goto LABEL_49;
    }

LABEL_53:
    URLComponents._URLComponents.percentEncodedUser.getter();
    if (v28)
    {

LABEL_56:

      MEMORY[0x1865CB0E0](64, 0xE100000000000000);
      goto LABEL_57;
    }

    if (v25)
    {
      goto LABEL_56;
    }

    if ((*(v2 + 11) & 1) != 0 && *v2 && (*(*v2 + 96) & 1) == 0)
    {
      v42 = String.subscript.getter();
      MEMORY[0x1865CAE80](v42);

      goto LABEL_56;
    }

LABEL_57:
    v29 = URLComponents._URLComponents.encodedHost.getter();
    if (v30)
    {
      MEMORY[0x1865CB0E0](v29);
    }

    v31 = URLComponents._URLComponents.port.getter();
    if ((v32 & 1) == 0)
    {
      *&v89 = 58;
      *(&v89 + 1) = 0xE100000000000000;
      *&v96 = v31;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v37);
      goto LABEL_65;
    }

    if ((*(v2 + 13) & 1) != 0 && *v2 && (*(*v2 + 144) & 1) == 0)
    {
      v33 = String.subscript.getter();
      *&v89 = 58;
      *(&v89 + 1) = 0xE100000000000000;
      v34 = MEMORY[0x1865CAE80](v33);
      v36 = v35;

      MEMORY[0x1865CB0E0](v34, v36);
LABEL_65:

      MEMORY[0x1865CB0E0](v89, *(&v89 + 1));
    }

    v38 = v94 & 0xFFFFFFFFFFFFLL;
    if ((v95 & 0x2000000000000000) != 0)
    {
      v38 = HIBYTE(v95) & 0xF;
    }

    if (v38)
    {
      break;
    }

    v96 = *(v2 + 104);
    v18 = *(&v96 + 1);
    if (*(&v96 + 1))
    {
      v40 = v96;
    }

    else if ((*(v2 + 14) & 1) != 0 && *v2)
    {
      if (*(*v2 + 168))
      {
        v43 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v43 = String.subscript.getter();
      }

      v40 = MEMORY[0x1865CAE80](v43);
      v18 = v50;
    }

    else
    {
      v40 = 0;
      v18 = 0xE000000000000000;
    }

    v51 = specialized Sequence.first(where:)(v40, v18);
    if ((v51 & 0x100) != 0 || v51 != 58 || (specialized Collection.first.getter(v40, v18) & 0x1FF) == 0x3A)
    {
      outlined init with copy of FloatingPointRoundingRule?(&v96, &v89, &_sSSSgMd, &_sSSSgMR);
LABEL_109:
      v49 = v40;
      goto LABEL_110;
    }

    v61 = specialized Collection<>.firstIndex(of:)(47, v40, v18);
    if (v62)
    {
      v63 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v63 = v40;
      }

      v64 = v63 << 16;
      if ((v18 & 0x1000000000000000) == 0 || (v40 & 0x800000000000000) != 0)
      {
        v65 = v64 | 7;
      }

      else
      {
        v65 = v64 | 0xB;
      }
    }

    else
    {
      v65 = v61;
    }

    outlined init with copy of FloatingPointRoundingRule?(&v96, &v89, &_sSSSgMd, &_sSSSgMR);
    v66 = String.subscript.getter();
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = Substring.UTF8View.distance(from:to:)();
    if (!v73)
    {

      v75 = MEMORY[0x1E69E7CC0];
      goto LABEL_141;
    }

    v74 = v73;
    v75 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v73, 0);
    v76 = specialized Sequence._copySequenceContents(initializing:)(&v89, (v75 + 4), v74, v66, v68, v70, v72);

    if (v76 == v74)
    {

LABEL_141:
      v92 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E69E6348]);
      v77 = lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x1E69E6340]);
      RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)(&v89, v77, MEMORY[0x1E69E7520]);

      v78 = static String._fromUTF8Repairing(_:)();
      v80 = v79;

      v81 = specialized Collection.suffix(from:)(v65, v40, v18);
      v83 = v82;
      v85 = v84;
      v87 = v86;

      v92 = v78;
      v93 = v80;
      *&v89 = v81;
      *(&v89 + 1) = v83;
      v90 = v85;
      v91 = v87;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.append<A>(contentsOf:)();

      v40 = v92;
      v18 = v93;
      goto LABEL_109;
    }

LABEL_149:
    __break(1u);
LABEL_150:
    v46 = _StringObject.sharedUTF8.getter();
LABEL_97:
    v47 = *(v46 + v18);
LABEL_99:
    outlined init with copy of FloatingPointRoundingRule?(&v97, &v89, &_sSSSgMd, &_sSSSgMR);

LABEL_134:
    if (v47 == 47)
    {
      goto LABEL_28;
    }
  }

  v89 = *(v2 + 104);
  v18 = *(&v89 + 1);
  if (*(&v89 + 1))
  {
    v39 = v89;
  }

  else if ((*(v2 + 14) & 1) != 0 && *v2)
  {
    if (*(*v2 + 168))
    {
      v41 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v41 = String.subscript.getter();
    }

    v39 = MEMORY[0x1865CAE80](v41);
    v18 = v48;
  }

  else
  {
    v39 = 0;
    v18 = 0xE000000000000000;
  }

  outlined init with copy of FloatingPointRoundingRule?(&v89, &v96, &_sSSSgMd, &_sSSSgMR);
  v49 = v39;
LABEL_110:
  MEMORY[0x1865CB0E0](v49, v18);

  if (*(v2 + 128))
  {
    v52 = *(v2 + 120);
    v53 = *(v2 + 128);
    goto LABEL_112;
  }

  if ((*(v2 + 15) & 1) != 0 && *v2 && (*(*v2 + 192) & 1) == 0)
  {
    v57 = String.subscript.getter();
    v52 = MEMORY[0x1865CAE80](v57);
    v53 = v58;

LABEL_112:
    v92 = 63;
    v93 = 0xE100000000000000;

    MEMORY[0x1865CB0E0](v52, v53);

    MEMORY[0x1865CB0E0](v92, v93);
  }

  v54 = *(v2 + 144);
  if (v54)
  {
    v55 = *(v2 + 136);
    v56 = v54;
    goto LABEL_118;
  }

  if ((*(v2 + 16) & 1) != 0 && *v2 && (*(*v2 + 216) & 1) == 0)
  {
    v59 = String.subscript.getter();
    v55 = MEMORY[0x1865CAE80](v59);
    v56 = v60;

LABEL_118:
    v92 = 35;
    v93 = 0xE100000000000000;

    MEMORY[0x1865CB0E0](v55, v56);

    MEMORY[0x1865CB0E0](v92, v93);
  }

  return v94;
}

void _NSSwiftURLComponents.url.getter(uint64_t *a1@<X8>)
{
  if (_foundation_swift_url_feature_enabled())
  {
    v3 = *&v1[OBJC_IVAR____NSSwiftURLComponents_lock];
    os_unfair_lock_lock((v3 + 172));
    v4 = *(v3 + 128);
    v32 = *(v3 + 112);
    v33 = v4;
    v34[0] = *(v3 + 144);
    *(v34 + 10) = *(v3 + 154);
    v5 = *(v3 + 64);
    v28 = *(v3 + 48);
    v29 = v5;
    v6 = *(v3 + 96);
    v30 = *(v3 + 80);
    v31 = v6;
    v7 = *(v3 + 32);
    v26 = *(v3 + 16);
    v27 = v7;
    outlined init with copy of URLComponents(&v26, v24);
    os_unfair_lock_unlock((v3 + 172));
    v24[6] = v32;
    v24[7] = v33;
    v25[0] = v34[0];
    *(v25 + 10) = *(v34 + 10);
    v24[2] = v28;
    v24[3] = v29;
    v24[4] = v30;
    v24[5] = v31;
    v24[0] = v26;
    v24[1] = v27;
    URLComponents.url.getter(a1);
    outlined destroy of URLComponents(&v26);
    return;
  }

  v8 = [v1 string];
  if (!v8)
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v9 = v8;
  v10 = CFURLCreateWithString(*MEMORY[0x1E695E480], v8, 0);

  if (!v10)
  {
    v15 = 0;
    goto LABEL_13;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v16 = type metadata accessor for _BridgedURL();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v10;
    v36.receiver = v17;
    v36.super_class = v16;
    v18 = v10;
    v19 = objc_msgSendSuper2(&v36, sel_init);
LABEL_12:
    v22 = v19;
    v10 = _BridgedURL.convertingFileReference()();
    v15 = v23;

    goto LABEL_13;
  }

  type metadata accessor for _NSSwiftURL();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    v20 = type metadata accessor for _BridgedURL();
    v21 = objc_allocWithZone(v20);
    *&v21[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v10;
    v35.receiver = v21;
    v35.super_class = v20;
    v18 = v10;
    v19 = objc_msgSendSuper2(&v35, sel_init);
    goto LABEL_12;
  }

  v12 = v11;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v12;
  v13 = v10;
  v10 = _BridgedNSSwiftURL.convertingFileReference()();
  v15 = v14;

LABEL_13:
  *a1 = v10;
  a1[1] = v15;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _FileManagerImpl.setAttributes(_:ofItemAtPath:)(Swift::OpaquePointer _, Swift::String ofItemAtPath)
{
  object = ofItemAtPath._object;
  countAndFlagsBits = ofItemAtPath._countAndFlagsBits;
  if (*(_._rawValue + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFilePosixPermissions"), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(_._rawValue + 7) + 32 * v5, &v24);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5 = _s10Foundation27_readFileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5(&v24);
  v9 = v8;
  outlined destroy of TermOfAddress?(&v24, &_sypSgMd, &_sypSgMR);
  if (*(_._rawValue + 2) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileImmutable"), (v11 & 1) != 0))
  {
    outlined init with copy of Any(*(_._rawValue + 7) + 32 * v10, &v24);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v12 = specialized _readFileAttributePrimitive(_:as:)(&v24);
  outlined destroy of TermOfAddress?(&v24, &_sypSgMd, &_sypSgMR);
  if (*(_._rawValue + 2) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileAppendOnly"), (v14 & 1) != 0))
  {
    outlined init with copy of Any(*(_._rawValue + 7) + 32 * v13, &v24);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v15 = specialized _readFileAttributePrimitive(_:as:)(&v24);
  outlined destroy of TermOfAddress?(&v24, &_sypSgMd, &_sypSgMR);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v18[2] = countAndFlagsBits;
    v18[3] = object;
    v19 = v12;
    v20 = v15;
    v21 = FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5;
    LOBYTE(v22) = v9 & 1;
    rawValue = _._rawValue;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(countAndFlagsBits, object, partial apply for closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:), v18);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id _s10Foundation27_readFileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5(uint64_t a1)
{
  outlined init with copy of FloatingPointRoundingRule?(a1, &v36, &_sypSgMd, &_sypSgMR);
  if (!v37)
  {
    v5 = &_sypSgMd;
    v6 = &_sypSgMR;
    v7 = &v36;
LABEL_14:
    outlined destroy of TermOfAddress?(v7, v5, v6);
    return 0;
  }

  outlined init with take of Any(&v36, v38);
  outlined init with copy of Any(v38, &v36);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber, off_1E69EE6D0);
  if (swift_dynamicCast())
  {
    v1 = [*&v33[0] unsignedIntegerValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
    v2 = v1;
    v3 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger_];
    LOBYTE(v1) = static NSObject.== infix(_:_:)();

    if (v1)
    {
      __swift_destroy_boxed_opaque_existential_1(v38);
      return v2;
    }
  }

  outlined init with copy of Any(v38, &v36);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    return *&v33[0];
  }

  outlined init with copy of Any(v38, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd, &_sSz_pMR);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v5 = &_sSz_pSgMd;
    v6 = &_sSz_pSgMR;
    v7 = v33;
    goto LABEL_14;
  }

  outlined init with take of Equatable(v33, &v36);
  v8 = v37;
  v9 = __swift_project_boxed_opaque_existential_1(&v36, v37);
  v32 = v30;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v30 - v13;
  (*(v10 + 16))(v30 - v13, v12);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (v15 = swift_getAssociatedTypeWitness(), v31 = v30, MEMORY[0x1EEE9AC00](v15), swift_getAssociatedConformanceWitness(), v16 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v30[1] = v30, MEMORY[0x1EEE9AC00](v16), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v17 = dispatch thunk of static Comparable.< infix(_:_:)(), v18 = *(v10 + 8), v18(v30 - v13, v8), (v17 & 1) == 0))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_12;
    }

    *&v33[0] = -1;
    v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v20)
    {
      v22 = v10;
      if (v21 <= 64)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v31 = v30;
        MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v28 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        MEMORY[0x1EEE9AC00](v28);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v29 = dispatch thunk of static Comparable.> infix(_:_:)();
        (*(v10 + 8))(v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v29)
        {
          dispatch thunk of BinaryInteger._lowWord.getter();
        }

        goto LABEL_12;
      }

      MEMORY[0x1EEE9AC00](v21);
      v23 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      if (v21 <= 64)
      {
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_12;
      }

      MEMORY[0x1EEE9AC00](v21);
      v23 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v22 = v10;
    }

    v24 = v30 - v23;
    lazy protocol witness table accessor for type UInt and conformance UInt();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    v18 = *(v22 + 8);
    v26 = v24;
    v10 = v22;
    v18(v26, v8);
    if ((v25 & 1) == 0)
    {
LABEL_12:
      v19 = dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v10 + 8))(v14, v8);
      __swift_destroy_boxed_opaque_existential_1(v38);
      __swift_destroy_boxed_opaque_existential_1(&v36);
      return v19;
    }
  }

  v18(v14, v8);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(&v36);
  return 0;
}

uint64_t specialized _readFileAttributePrimitive(_:as:)(uint64_t a1)
{
  outlined init with copy of FloatingPointRoundingRule?(a1, &v32, &_sypSgMd, &_sypSgMR);
  if (!v33)
  {
    v5 = &_sypSgMd;
    v6 = &_sypSgMR;
    v7 = &v32;
LABEL_15:
    outlined destroy of TermOfAddress?(v7, v5, v6);
    return 2;
  }

  outlined init with take of Any(&v32, v34);
  outlined init with copy of Any(v34, &v32);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber, off_1E69EE6D0);
  if (swift_dynamicCast())
  {
    _ss45_conditionallyBridgeFromObjectiveC_bridgeableyxSg01_D5CTypeQz_xmts01_D11CBridgeableRzlFSb_Tt1g5(*&v29[0]);
    v2 = v1;
    v3 = v1;

    if (v3 != 2)
    {
      __swift_destroy_boxed_opaque_existential_1(v34);
      return v2;
    }
  }

  outlined init with copy of Any(v34, &v32);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v34);
    return LOBYTE(v29[0]);
  }

  outlined init with copy of Any(v34, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSz_pMd, &_sSz_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    __swift_destroy_boxed_opaque_existential_1(v34);
    v5 = &_sSz_pSgMd;
    v6 = &_sSz_pSgMR;
    v7 = v29;
    goto LABEL_15;
  }

  outlined init with take of Equatable(v29, &v32);
  v8 = v33;
  v9 = __swift_project_boxed_opaque_existential_1(&v32, v33);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v12);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    *&v29[0] = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v14 < 64)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if ((v15 & 1) == 0)
      {
        if (v14 >= 64)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      if (v14 <= 64)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v28 = &v27;
        MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v19 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v27 = &v27;
        MEMORY[0x1EEE9AC00](v19);
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v20 = dispatch thunk of static Comparable.< infix(_:_:)();
        v17 = *(v10 + 8);
        v17(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if ((v20 & 1) == 0)
        {
LABEL_24:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_25;
        }

LABEL_20:
        v17(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
LABEL_30:
        __swift_destroy_boxed_opaque_existential_1(v34);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        return 2;
      }
    }

    v28 = &v27;
    MEMORY[0x1EEE9AC00](v14);
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v16 = dispatch thunk of static Comparable.< infix(_:_:)();
    v17 = *(v10 + 8);
    v17(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    if (v16)
    {
      goto LABEL_20;
    }
  }

LABEL_25:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    *&v29[0] = 0x7FFFFFFFFFFFFFFFLL;
    v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v21)
    {
      if (v22 > 64)
      {
LABEL_28:
        MEMORY[0x1EEE9AC00](v22);
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v23 = dispatch thunk of static Comparable.< infix(_:_:)();
        v24 = *(v10 + 8);
        v24(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if ((v23 & 1) == 0)
        {
          goto LABEL_36;
        }

        v24(v13, v8);
        goto LABEL_30;
      }
    }

    else if (v22 > 63)
    {
      goto LABEL_28;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_36:
  v25 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v10 + 8))(v13, v8);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (v25 == 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  if (v25)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

double _ss6ResultOySo4statV10Foundation10CocoaErrorVGSgWOi0_(uint64_t a1)
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
  *(a1 + 144) = -1;
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(id *a1, void **a2)
{
  v2 = *a2;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(*a1);
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t specialized static _FileManagerImpl._setCatInfoAttributes(_:path:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v74 = a2;
  v75 = a3;
  v82 = *MEMORY[0x1E69E9840];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v13 = &v79;
  v76 = v11;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {
        }

        v9 = *(v6 + 8 * v14);
        ++v12;
        if (v9)
        {
          v12 = v14;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_38:
      if (!getenv("CFFIXED_USER_HOME"))
      {
        goto LABEL_34;
      }

      v32 = String.init(cString:)();
      goto LABEL_40;
    }

LABEL_9:
    v15 = one-time initialization token for _catInfoKeys;
    v16 = *(*(v11 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));
    v4 = v16;
    if (v15 != -1)
    {
      v16 = swift_once();
    }

    v3 = &v73;
    v9 &= v9 - 1;
    *&v79 = v4;
    MEMORY[0x1EEE9AC00](v16);
    v72[2] = &v79;
    v5 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v72, v17);

    v11 = v76;
  }

  while ((v5 & 1) == 0);

  v13 = v74;
  v3 = v75;
  v19 = specialized Collection.first.getter(v74, v75);
  if ((v19 & 0x1FF) != 0x7E)
  {
    goto LABEL_36;
  }

  v20 = specialized Collection<>.firstIndex(of:)(47, v13, v3);
  if (v21)
  {
    v22 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v22 = v13;
    }

    v23 = v22 << 16;
    if ((v3 & 0x1000000000000000) != 0 && (v13 & 0x800000000000000) == 0)
    {
      v9 = v23 | 0xB;
      goto LABEL_21;
    }

    v26 = v3 & 0x1000000000000000;
    v9 = v23 | 7;
  }

  else
  {
    v9 = v20;
    v26 = v3 & 0x1000000000000000;
  }

  if (v26)
  {
LABEL_21:
    v24 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v24 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v24)
    {
      __break(1u);
    }

    v25 = String.UTF8View._foreignIndex(after:)();
  }

  else
  {
    v25 = 65540;
  }

  if (v9 >> 14 == v25 >> 14)
  {
    v27 = static String.homeDirectoryPath()();
    v29 = v28;
    goto LABEL_41;
  }

  if (v9 >> 14 < v25 >> 14)
  {
    __break(1u);
LABEL_78:
    swift_once();
    goto LABEL_73;
  }

  v30 = String.subscript.getter();
  v5 = MEMORY[0x1865CAE80](v30);
  v4 = v31;

  if (!issetugid())
  {
    goto LABEL_38;
  }

LABEL_34:
  v32 = specialized static Platform.homeDirectory(forUserName:)(v5, v4);
  if (!v33)
  {

LABEL_36:

    goto LABEL_42;
  }

LABEL_40:
  v27 = String.standardizingPath.getter(v32, v33);
  v29 = v34;

LABEL_41:
  v35 = specialized Collection.suffix(from:)(v9, v13, v3);
  *&v78[0] = v27;
  *(&v78[0] + 1) = v29;
  *&v79 = v35;
  *(&v79 + 1) = v36;
  v80 = v37;
  v81 = v38;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  v3 = *(&v78[0] + 1);
  v13 = *&v78[0];
LABEL_42:
  v39 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v39 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    specialized String.withFileSystemRepresentation<A>(_:)(v13, v3, v13, v3);
    v41 = v40;

    if (v41)
    {
    }
  }

  String._standardizingPath.getter();

  if (one-time initialization token for compatibility2 != -1)
  {
LABEL_77:
    swift_once();
  }

  if ((static URL.compatibility2 & 1) != 0 || !_foundation_swift_url_feature_enabled())
  {
    v42 = type metadata accessor for _BridgedURL();
    v43 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v42 = type metadata accessor for _SwiftURL();
    v43 = &protocol witness table for _SwiftURL;
  }

  (v43[7])();
  v44 = (v43[56])(v42, v43);
  v74 = v45;
  swift_unknownObjectRelease();
  v77 = MEMORY[0x1E69E7CC8];
  v46 = v76;
  if (*(v76 + 16))
  {
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileExtensionHidden");
    if (v48)
    {
      outlined init with copy of Any(*(v46 + 56) + 32 * v47, v78);
      outlined init with take of Any(v78, &v79);
      v49 = *MEMORY[0x1E695DB60];
      outlined init with copy of Any(&v79, v78);
      specialized Dictionary.subscript.setter(v78, v49);
      __swift_destroy_boxed_opaque_existential_1(&v79);
    }
  }

  v50 = *(v46 + 16);
  v75 = v44;
  if (v50)
  {
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileCreationDate");
    if (v52)
    {
      outlined init with copy of Any(*(v46 + 56) + 32 * v51, v78);
      outlined init with take of Any(v78, &v79);
      v53 = *MEMORY[0x1E695DAA8];
      outlined init with copy of Any(&v79, v78);
      specialized Dictionary.subscript.setter(v78, v53);
      __swift_destroy_boxed_opaque_existential_1(&v79);
    }
  }

  v54 = v77;
  v55 = *(v77 + 16);
  type metadata accessor for NSURLResourceKey(0);
  v57 = v56;
  v58 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();

  v59 = 0;
  *&v79 = MEMORY[0x1865CB700](v55, v57, v58);
  v60 = 1 << *(v54 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v54 + 64);
  v63 = (v60 + 63) >> 6;
  if (v62)
  {
    while (1)
    {
      v64 = v59;
LABEL_66:
      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      specialized Set._Variant.insert(_:)(v78, *(*(v54 + 48) + ((v64 << 9) | (8 * v65))));

      if (!v62)
      {
        goto LABEL_62;
      }
    }
  }

  while (1)
  {
LABEL_62:
    v64 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    if (v64 >= v63)
    {
      break;
    }

    v62 = *(v54 + 64 + 8 * v64);
    ++v59;
    if (v62)
    {
      v59 = v64;
      goto LABEL_66;
    }
  }

  ObjectType = swift_getObjectType();
  v67 = (*(v74 + 432))(ObjectType);

  v68 = _NativeDictionary.bridged()();
  *&v79 = 0;
  v69 = [v67 setResourceValues:v68 error:&v79];

  swift_unknownObjectRelease();
  if (v69)
  {
    v70 = v79;
    goto LABEL_75;
  }

  if (v79)
  {
    v79;
    goto LABEL_74;
  }

  if (one-time initialization token for _nilObjCError != -1)
  {
    goto LABEL_78;
  }

LABEL_73:
  v71 = _nilObjCError;
LABEL_74:
  swift_willThrow();
LABEL_75:

  return swift_unknownObjectRelease();
}

void closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(__CFString *a1, unint64_t a2, unint64_t a3, int a4, char a5, unint64_t a6, int a7, uint64_t a8)
{
  v223 = a8;
  v284 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = v8;
    LODWORD(v13) = a4;
    LODWORD(v220) = a7;
    v224 = a3;
    v225 = a1;
    v14 = swift_allocObject();
    _ss6ResultOySo4statV10Foundation10CocoaErrorVGSgWOi0_(v280);
    v15 = v280[7];
    *(v14 + 112) = v280[6];
    *(v14 + 128) = v15;
    *(v14 + 144) = v280[8];
    *(v14 + 160) = v281;
    v16 = v280[3];
    *(v14 + 48) = v280[2];
    *(v14 + 64) = v16;
    v17 = v280[5];
    *(v14 + 80) = v280[4];
    *(v14 + 96) = v17;
    v18 = v280[1];
    *(v14 + 16) = v280[0];
    *(v14 + 32) = v18;
    v222 = a2;
    if (v13 == 2)
    {
      if (a5 == 2)
      {
        v19 = 0;
        v20 = 0;
        v215 = 1;
        v21 = v224;
        goto LABEL_9;
      }

      v221 = v8;
      v20 = swift_allocObject();
      v32 = v225;
      *(v20 + 16) = v14;
      *(v20 + 24) = v32;
      v28 = v14;
      v29 = v224;
      *(v20 + 32) = a2;
      *(v20 + 40) = v29;
      *(v20 + 48) = a5;
      *(v20 + 49) = 2;
    }

    else
    {
      v221 = v8;
      v20 = swift_allocObject();
      v27 = v225;
      *(v20 + 16) = v14;
      *(v20 + 24) = v27;
      v28 = v14;
      v29 = v224;
      *(v20 + 32) = a2;
      *(v20 + 40) = v29;
      *(v20 + 48) = a5;
      *(v20 + 49) = v13;
      if (v13)
      {

        v215 = 0;
        v19 = closure #2 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)partial apply;
        v21 = v29;
        v14 = v28;
        v10 = v221;
LABEL_9:
        v30 = v225;
        if (v220)
        {
LABEL_10:
          v218 = 0;
          v31 = 0;
          v216 = 1;
          goto LABEL_45;
        }

LABEL_34:
        v40 = swift_allocObject();
        v40[2] = v30;
        v40[3] = a6;
        v40[4] = v222;
        v40[5] = v21;
        if (a6 >> 16)
        {
          __break(1u);
LABEL_152:
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if (isStackAllocationSafe)
          {
            goto LABEL_79;
          }

          v99 = swift_slowAlloc();
          *&v274 = 0;
          v272 = 0u;
          v273 = 0u;
          v270 = 0u;
          v271 = 0u;
          v100 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(v99, &v270, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafeMutablePointer<passwd>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<passwd>?>?) -> (@unowned Int32), 0, v19 + 32, &v260, closure #1 in static Platform.uid(forName:));
          if (!v10)
          {
            v67 = v100;
            MEMORY[0x1865D2690](v99, -1, -1);

            if ((v67 & 0x100000000) != 0)
            {
              goto LABEL_163;
            }

            v19 = v217;
            v68 = v225;
            v69 = v221;
LABEL_82:
            LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = v67;
            v70 = v219;
            if ((v13 & 1) == 0)
            {
              goto LABEL_96;
            }

            goto LABEL_107;
          }

          v209 = v99;
          goto LABEL_334;
        }

        v31 = v40;
        swift_bridgeObjectRetain_n();
        v41 = S_IWUSR.getter();
        v216 = (v41 & a6) != 0;
        if ((v41 & a6) != 0)
        {
          closure #3 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v30, a6, v222, v21);
          if (v10)
          {
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v19, v20);

            return;
          }

          v218 = 0;
          v31 = 0;
        }

        else
        {
          v218 = partial apply for closure #3 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:);
        }

LABEL_45:
        v42 = *(v223 + 16);
        v219 = v20;
        if (v42)
        {
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileOwnerAccountName");
          if (v44)
          {
            outlined init with copy of Any(*(v223 + 56) + 32 * v43, &v270);
            v45 = swift_dynamicCast();
            tv_sec = v260.tv_sec;
            if (!v45)
            {
              tv_sec = 0;
            }

            *&v214 = tv_sec;
            if (v45)
            {
              v47 = *&v260.tv_usec;
            }

            else
            {
              v47 = 0;
            }

            if (!*(v223 + 16))
            {
              goto LABEL_58;
            }
          }

          else
          {
            *&v214 = 0;
            v47 = 0;
            if (!*(v223 + 16))
            {
              goto LABEL_58;
            }
          }

          v48 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileOwnerAccountID");
          if (v49)
          {
            outlined init with copy of Any(*(v223 + 56) + 32 * v48, &v270);
            goto LABEL_59;
          }
        }

        else
        {
          v47 = 0;
          *&v214 = 0;
        }

LABEL_58:
        v270 = 0u;
        v271 = 0u;
LABEL_59:
        FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5 = _s10Foundation27_readFileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5(&v270);
        v52 = v51;
        outlined destroy of TermOfAddress?(&v270, &_sypSgMd, &_sypSgMR);
        v53 = *(v223 + 16);
        v220 = v31;
        if (v53)
        {
          v54 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileGroupOwnerAccountName");
          if (v55)
          {
            outlined init with copy of Any(*(v223 + 56) + 32 * v54, &v270);
            v56 = swift_dynamicCast();
            v58 = *&v260.tv_usec;
            v57 = v260.tv_sec;
            if (!v56)
            {
              v57 = 0;
            }

            v213 = v57;
            if (!v56)
            {
              v58 = 0;
            }
          }

          else
          {
            v213 = 0;
            v58 = 0;
          }

          v59 = *(v223 + 16);
          v221 = v58;
          if (v59)
          {
            v60 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileGroupOwnerAccountID");
            if (v61)
            {
              outlined init with copy of Any(*(v223 + 56) + 32 * v60, &v270);
              goto LABEL_71;
            }
          }
        }

        else
        {
          v221 = 0;
          v213 = 0;
        }

        v270 = 0u;
        v271 = 0u;
LABEL_71:
        a6 = _s10Foundation27_readFileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5(&v270);
        LODWORD(v13) = v62;
        outlined destroy of TermOfAddress?(&v270, &_sypSgMd, &_sypSgMR);
        if (v47)
        {
          if ((v52 & 1) != 0 || HIDWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5))
          {
            v217 = v19;
            v19 = String.utf8CString.getter();
            isStackAllocationSafe = sysconf(71);
            if (isStackAllocationSafe == -1)
            {
              v64 = 4096;
            }

            else
            {
              v64 = isStackAllocationSafe;
            }

            v260.tv_sec = v64;
            if ((v64 & 0x8000000000000000) == 0)
            {
              if (v64 < 1025)
              {
LABEL_79:
                MEMORY[0x1EEE9AC00](isStackAllocationSafe);
                v283 = 0;
                memset(v282, 0, sizeof(v282));
                v66 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(&v210 - v65, v282, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafeMutablePointer<passwd>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<passwd>?>?) -> (@unowned Int32), 0, v19 + 32, &v260, closure #1 in static Platform.uid(forName:));
                if (v10)
                {
                  goto LABEL_330;
                }

                v67 = v66;

                if ((v67 & 0x100000000) == 0)
                {
                  v68 = v225;
                  v69 = v221;
                  v19 = v217;
                  goto LABEL_82;
                }

                LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = -1;
                v70 = v219;
                v68 = v225;
                v69 = v221;
                v19 = v217;
LABEL_95:
                if ((v13 & 1) == 0)
                {
                  goto LABEL_96;
                }

                goto LABEL_107;
              }

              goto LABEL_152;
            }

            __break(1u);
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          goto LABEL_90;
        }

        if ((v52 & 1) == 0)
        {
          if (HIDWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5))
          {
            LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = -1;
LABEL_91:
            v70 = v219;
            goto LABEL_92;
          }

LABEL_90:

          goto LABEL_91;
        }

        LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = -1;
        v70 = v219;
        v69 = v221;
        if (!v221)
        {
          v68 = v225;
          if ((v13 & 1) == 0)
          {
            goto LABEL_95;
          }

LABEL_174:
          v217 = v19;
          v107 = v223;
          v108 = v224;
          specialized static _FileManagerImpl._setCatInfoAttributes(_:path:)(v223, v222, v224);
          v221 = v10;
          if (v10)
          {
            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217, v70);
            v109 = v218;
            v110 = v220;
            goto LABEL_277;
          }

          v112 = String._bridgeToObjectiveCImpl()();
          v113 = v220;
          if (*(v107 + 16) && (v114 = specialized __RawDictionaryStorage.find<A>(_:)(v112), v107 = v223, (v115 & 1) != 0))
          {
            outlined init with copy of Any(*(v223 + 56) + 32 * v114, &v270);
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
            v116 = swift_dynamicCast();
            if (v116)
            {
              v117 = v260.tv_sec + 64;
              v118 = 1 << *(v260.tv_sec + 32);
              v119 = -1;
              if (v118 < 64)
              {
                v119 = ~(-1 << v118);
              }

              v120 = v119 & *(v260.tv_sec + 64);
              v121 = (v118 + 63) >> 6;
              v213 = v260.tv_sec;

              v123 = 0;
              for (i = v117; v120; v117 = i)
              {
                v124 = v123;
LABEL_190:
                v125 = __clz(__rbit64(v120));
                v120 &= v120 - 1;
                v126 = (*(v213 + 48) + ((v124 << 10) | (16 * v125)));
                v127 = *v126;
                v128 = v126[1];
                *&v129 = MEMORY[0x1EEE9AC00](v122);
                v214 = v129;
                if ((v128 & 0x1000000000000000) != 0)
                {
                  goto LABEL_199;
                }

                if ((v128 & 0x2000000000000000) != 0)
                {
                  *&v270 = v127;
                  *(&v270 + 1) = v128 & 0xFFFFFFFFFFFFFFLL;

                  v132 = v214;
                  outlined copy of Data._Representation(v214, *(&v214 + 1));
                  v133 = v221;
                  specialized Data._Representation.withUnsafeBytes<A>(_:)(v132, *(&v132 + 1), v225, &v270, 0);
                  v221 = v133;
                  if (v133)
                  {
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218, v220);
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217, v219);

                    outlined consume of Data._Representation(v132, *(&v132 + 1));

                    return;
                  }

                  v122 = outlined consume of Data._Representation(v132, *(&v132 + 1));
                  goto LABEL_197;
                }

                if ((v127 & 0x1000000000000000) == 0)
                {
LABEL_199:
                  v210 = v14;
                  v211 = &v210;

                  v134 = *(&v214 + 1);
                  v135 = v214;
                  outlined copy of Data._Representation(v214, *(&v214 + 1));
                  v136 = v221;
                  _StringGuts._slowWithCString<A>(_:)();
                  v221 = v136;
                  if (v136)
                  {
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218, v220);
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217, v219);

                    outlined consume of Data._Representation(v135, v134);

                    return;
                  }

                  v122 = outlined consume of Data._Representation(v135, v134);
                  v14 = v210;
                }

                else
                {
                  v211 = (v128 & 0xFFFFFFFFFFFFFFFLL);

                  v130 = v214;
                  outlined copy of Data._Representation(v214, *(&v214 + 1));
                  v131 = v221;
                  specialized Data._Representation.withUnsafeBytes<A>(_:)(v130, *(&v130 + 1), v225, v211 + 32, 0);
                  v221 = v131;
                  if (v131)
                  {
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218, v220);
                    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217, v219);

                    outlined consume of Data._Representation(v130, *(&v130 + 1));

                    return;
                  }

                  outlined consume of Data._Representation(v130, *(&v130 + 1));
                }

LABEL_197:
                v123 = v124;
                v108 = v224;
                v113 = v220;
              }

              while (1)
              {
                v124 = v123 + 1;
                if (__OFADD__(v123, 1))
                {
                  break;
                }

                if (v124 >= v121)
                {

                  v70 = v219;
                  v107 = v223;
                  if (!*(v223 + 16))
                  {
                    goto LABEL_259;
                  }

LABEL_211:
                  v116 = specialized __RawDictionaryStorage.find<A>(_:)(@"NSFileModificationDate");
                  v107 = v223;
                  if (v137)
                  {
                    outlined init with copy of Any(*(v223 + 56) + 32 * v116, &v270);
                    v116 = swift_dynamicCast();
                    if (v116)
                    {
                      v138 = *&v260.tv_sec + 978307200.0;
                      v139 = trunc(*&v260.tv_sec + 978307200.0);
                      if (COERCE__INT64(fabs(*&v260.tv_sec + 978307200.0)) > 0x7FEFFFFFFFFFFFFFLL)
                      {
                        v140 = 0.0;
                        v142 = v138 > -9.22337204e18 && v138 < 9.22337204e18 && v138 == v139;
                        if (!v142)
                        {
                          goto LABEL_259;
                        }

LABEL_247:
                        v163 = round(v140 * 1000000.0);
                        if (v163 <= -2147483650.0 || v163 >= 2147483650.0)
                        {
                          goto LABEL_259;
                        }

                        *&v270 = v138;
                        DWORD2(v270) = v163;
                        *&v271 = v138;
                        DWORD2(v271) = v163;
                        v116 = utimes(v225, &v270);
                        if (!v116)
                        {
                          goto LABEL_259;
                        }

                        v165 = MEMORY[0x1865CA7A0]();
                        LODWORD(v13) = v165;
                        if (v165 <= 27)
                        {
                          if (v165 > 12)
                          {
                            if (v165 != 13)
                            {
                              if (v165 != 17)
                              {
                                goto LABEL_305;
                              }

                              v10 = 516;
                              goto LABEL_306;
                            }
                          }

                          else if (v165 != 1)
                          {
                            if (v165 != 2)
                            {
                              goto LABEL_305;
                            }

                            v10 = 4;
                            goto LABEL_306;
                          }

                          v10 = 513;
                          goto LABEL_306;
                        }

                        if (v165 > 62)
                        {
                          if (v165 == 63)
                          {
                            v10 = 514;
                            goto LABEL_306;
                          }

                          if (v165 != 69)
                          {
                            if (v165 == 102)
                            {
                              v166 = 0;
                              v10 = 512;
                              goto LABEL_311;
                            }

LABEL_305:
                            v10 = 512;
                            goto LABEL_306;
                          }

LABEL_302:
                          v10 = 640;
                          goto LABEL_306;
                        }

                        if (v165 == 28)
                        {
                          goto LABEL_302;
                        }

                        if (v165 != 30)
                        {
                          goto LABEL_305;
                        }

                        v10 = 642;
LABEL_306:
                        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                        {
                          goto LABEL_331;
                        }

                        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
                        v186 = POSIXErrorCode.rawValue.getter();
                        v187 = objc_allocWithZone(NSError);
                        v188 = String._bridgeToObjectiveCImpl()();

                        v166 = [v187 initWithDomain:v188 code:v186 userInfo:_NativeDictionary.bridged()()];
                        swift_unknownObjectRelease();
                        swift_unknownObjectRelease();
                        v189 = [v166 domain];
                        v190 = static String._unconditionallyBridgeFromObjectiveC(_:)(v189);
                        v13 = v191;

                        if (v190 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v13 == v192)
                        {

                          goto LABEL_311;
                        }

                        v193 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v193)
                        {
LABEL_311:
                          v194 = v224;

                          URL.init(_fileManagerFailableFileURLWithPath:)(v222, v194, &v260.tv_sec);

                          v195 = v260;
                          v196 = String._bridgeToObjectiveCImpl()();
                          if (v195.tv_sec)
                          {
                            ObjectType = swift_getObjectType();
                            v198 = (*(*&v195.tv_usec + 432))(ObjectType, *&v195.tv_usec);
                            swift_unknownObjectRelease();
                          }

                          else
                          {
                            v198 = 0;
                          }

                          v199 = v217;
                          v200 = v218;
                          if (v166)
                          {
                            v201 = v218;
                            v202 = v10;
                            v250.tv_sec = v166;
                            lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                            v166 = v166;
                            v203 = _getErrorEmbeddedNSError<A>(_:)();

                            if (v203)
                            {
                            }

                            else
                            {
                              swift_allocError();
                              *v205 = v166;
                            }

                            v204 = _swift_stdlib_bridgeErrorToNSError();
                            v10 = v202;
                            v200 = v201;
                            v199 = v217;
                          }

                          else
                          {
                            v204 = 0;
                          }

                          [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                          swift_unknownObjectRelease();

                          swift_willThrow();
                          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v199, v219);
                          v109 = v200;
                          v110 = v220;
                          goto LABEL_277;
                        }

                        __break(1u);
LABEL_325:
                        __break(1u);
LABEL_326:
                        *&v270 = 0;
                        *(&v270 + 1) = 0xE000000000000000;
                        _StringGuts.grow(_:)(22);

                        *&v270 = 0xD000000000000014;
                        *(&v270 + 1) = 0x80000001814813E0;
                        LODWORD(v260.tv_sec) = v13;
                        v206 = dispatch thunk of CustomStringConvertible.description.getter();
                        MEMORY[0x1865CB0E0](v206);

                        while (1)
                        {
LABEL_329:
                          _assertionFailure(_:_:file:line:flags:)();
                          __break(1u);
LABEL_330:
                          swift_willThrow();

                          __break(1u);
LABEL_331:
                          v260.tv_sec = 0;
                          *&v260.tv_usec = 0xE000000000000000;
                          _StringGuts.grow(_:)(22);

                          v260.tv_sec = 0xD000000000000014;
                          *&v260.tv_usec = 0x80000001814813E0;
                          LODWORD(v250.tv_sec) = v13;
                          v208 = dispatch thunk of CustomStringConvertible.description.getter();
                          MEMORY[0x1865CB0E0](v208);
                        }
                      }

                      if (v139 > -9.22337204e18 && v139 < 9.22337204e18)
                      {
                        v140 = v138 - v139;
                        v138 = v139;
                        goto LABEL_247;
                      }
                    }
                  }

LABEL_259:
                  if (!v216)
                  {
                    v167 = v221;
                    v168 = v218;
                    v116 = (v218)(v116);
                    v221 = v167;
                    if (v167)
                    {
                      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217, v70);
                      v109 = v168;
                      goto LABEL_266;
                    }

                    v107 = v223;
                  }

                  if ((v215 & 1) == 0)
                  {
                    v169 = v221;
                    v170 = v217;
                    v217(v116);
                    v221 = v169;
                    if (v169)
                    {
                      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v170, v70);
                      v109 = v218;
LABEL_266:
                      v110 = v113;
LABEL_277:
                      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v109, v110);

                      return;
                    }

                    v107 = v223;
                  }

                  specialized Dictionary.subscript.getter(@"NSFileProtectionKey", v107, &v270);
                  if (*(&v271 + 1))
                  {
                    type metadata accessor for NSFileProtectionType(0);
                    if (swift_dynamicCast())
                    {
                      v171 = v260.tv_sec;
                      v172 = NSFileProtectionType.intValue.getter(v171);
                      if ((v172 & 0x100000000) != 0)
                      {

                        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218, v113);
                        v175 = v217;
                        v176 = v70;
                      }

                      else
                      {
                        v173 = v172;
                        getter of statAtPath #1 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v14, v225, v222, v108, &v260);
                        v276 = v266;
                        v277 = v267;
                        v278 = v268;
                        v279 = v269;
                        v272 = v262;
                        v273 = v263;
                        v274 = v264;
                        v275 = v265;
                        v270 = v260;
                        v271 = v261;
                        if (_ss6ResultOySo4statV10Foundation10CocoaErrorVGWOg(&v270) == 1)
                        {
                          _NSBundleDeallocatingImmortalBundle();

                          v256 = v266;
                          v257 = v267;
                          v258 = v268;
                          v259 = v269;
                          v252 = v262;
                          v253 = v263;
                          v254 = v264;
                          v255 = v265;
                          v250 = v260;
                          v251 = v261;
                          _NSBundleDeallocatingImmortalBundle();
                          v227 = *v174;
                          lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
                          goto LABEL_273;
                        }

                        _NSBundleDeallocatingImmortalBundle();
                        v256 = v266;
                        v257 = v267;
                        v258 = v268;
                        v259 = v269;
                        v252 = v262;
                        v253 = v263;
                        v254 = v264;
                        v255 = v265;
                        v250 = v260;
                        v251 = v261;
                        _NSBundleDeallocatingImmortalBundle();
                        v178 = *(v177 + 4);
                        v179 = S_IFMT.getter() & v178;
                        v142 = v179 == S_IFREG.getter();
                        v113 = v220;
                        if (v142)
                        {
                          goto LABEL_282;
                        }

                        getter of statAtPath #1 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v14, v225, v222, v108, &v238);
                        v248[6] = v244;
                        v248[7] = v245;
                        v248[8] = v246;
                        v249 = v247;
                        v248[2] = v240;
                        v248[3] = v241;
                        v248[4] = v242;
                        v248[5] = v243;
                        v248[0] = v238;
                        v248[1] = v239;
                        v181 = _ss6ResultOySo4statV10Foundation10CocoaErrorVGWOg(v248);
                        if (v181 == 1)
                        {
                          _NSBundleDeallocatingImmortalBundle();

                          v234 = v244;
                          v235 = v245;
                          v236 = v246;
                          v237 = v247;
                          v230 = v240;
                          v231 = v241;
                          v232 = v242;
                          v233 = v243;
                          v228 = v238;
                          v229 = v239;
                          _NSBundleDeallocatingImmortalBundle();
                          v226 = *v182;
                          lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
LABEL_273:
                          swift_willThrowTypedImpl();
LABEL_274:
                          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218, v113);
                          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217, v219);

                          return;
                        }

                        _NSBundleDeallocatingImmortalBundle();
                        v234 = v244;
                        v235 = v245;
                        v236 = v246;
                        v237 = v247;
                        v230 = v240;
                        v231 = v241;
                        v232 = v242;
                        v233 = v243;
                        v228 = v238;
                        v229 = v239;
                        _NSBundleDeallocatingImmortalBundle();
                        v184 = *(v183 + 4);
                        v185 = S_IFMT.getter() & v184;
                        if (v185 == S_IFDIR.getter())
                        {
                          v113 = v220;
LABEL_282:
                          v180 = v221;
                          specialized static _FileManagerImpl._setFileProtectionValueForPath(_:_:newValue:)(v222, v108, v225, v173);
                          if (v180)
                          {
                            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v217, v219);

                            v109 = v218;
                            v110 = v113;
                            goto LABEL_277;
                          }

                          goto LABEL_274;
                        }

                        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218, v220);
                        v175 = v217;
                        v176 = v219;
                      }

                      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v175, v176);

                      return;
                    }
                  }

                  else
                  {
                    outlined destroy of TermOfAddress?(&v270, &_sypSgMd, &_sypSgMR);
                  }

                  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218, v113);
                  v109 = v217;
                  v110 = v70;
                  goto LABEL_277;
                }

                v120 = *(v117 + 8 * v124);
                ++v123;
                if (v120)
                {
                  goto LABEL_190;
                }
              }

              __break(1u);
LABEL_322:
              __break(1u);
            }
          }

          else
          {
            v116 = swift_unknownObjectRelease();
          }

          if (!*(v107 + 16))
          {
            goto LABEL_259;
          }

          goto LABEL_211;
        }

        v68 = v225;
        if ((v13 & 1) == 0)
        {
          goto LABEL_96;
        }

        while (1)
        {
LABEL_107:
          if (!v69)
          {
            goto LABEL_166;
          }

          LOBYTE(v13) = v10;
          a6 = String.utf8CString.getter();
          v71 = sysconf(70);
          v72 = v71 == -1 ? 4096 : v71;
          *&v270 = v72;
          if ((v72 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_162:
          __break(1u);
LABEL_163:
          LODWORD(FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5) = -1;
          v70 = v219;
          v19 = v217;
LABEL_92:
          v68 = v225;
          v69 = v221;
          if ((v13 & 1) == 0)
          {
LABEL_96:
            if (!HIDWORD(a6))
            {

              goto LABEL_167;
            }
          }
        }

        if (v72 < 1025 || (v71 = swift_stdlib_isStackAllocationSafe(), (v71 & 1) != 0))
        {
          v13 = &v210;
          MEMORY[0x1EEE9AC00](v71);
          v74 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(&v210 - v73, 0, 0, 0, 0, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafeMutablePointer<group>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<group>?>?) -> (@unowned Int32), 0, a6 + 32, &v270, closure #1 in static Platform.uid(forName:));
          if (v10)
          {
            goto LABEL_330;
          }

          v75 = v74;

          if ((v75 & 0x100000000) == 0)
          {
            LODWORD(a6) = v75;
            v68 = v225;
            goto LABEL_167;
          }
        }

        else
        {
          v217 = v19;
          v101 = swift_slowAlloc();
          v102 = specialized closure #1 in static Platform.withUserGroupBuffer<A, B, C>(_:_:sizeProperty:operation:block:)(v101, 0, 0, 0, 0, specialized thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafeMutablePointer<group>?, @unowned UnsafeMutablePointer<Int8>?, @unowned Int, @unowned UnsafeMutablePointer<UnsafeMutablePointer<group>?>?) -> (@unowned Int32), 0, a6 + 32, &v270, closure #1 in static Platform.uid(forName:));
          if (v10)
          {

            v209 = v101;
LABEL_334:
            MEMORY[0x1865D2690](v209, -1, -1);
            __break(1u);
            return;
          }

          v103 = v102;
          MEMORY[0x1865D2690](v101, -1, -1);

          if ((v103 & 0x100000000) == 0)
          {
            LODWORD(a6) = v103;
            v70 = v219;
            v19 = v217;
            v68 = v225;
            goto LABEL_167;
          }

          v70 = v219;
          v19 = v217;
        }

        v68 = v225;
LABEL_166:
        LODWORD(a6) = -1;
LABEL_167:
        if (!chown(v68, FileAttributePrimitive_2asxSgypSg_xmtSzRzlFSu_Tt1g5, a6))
        {
          goto LABEL_174;
        }

        v104 = MEMORY[0x1865CA7A0]();
        LODWORD(v13) = v104;
        if (v104 > 27)
        {
          if (v104 <= 62)
          {
            if (v104 != 28)
            {
              if (v104 == 30)
              {
                v111 = 642;
                goto LABEL_224;
              }

              goto LABEL_223;
            }
          }

          else
          {
            if (v104 == 63)
            {
              v111 = 514;
              goto LABEL_224;
            }

            if (v104 != 69)
            {
              if (v104 == 102)
              {
                v105 = v19;
                v106 = 0;
                v225 = 512;
                goto LABEL_229;
              }

LABEL_223:
              v111 = 512;
LABEL_224:
              if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
              {
                goto LABEL_326;
              }

              v225 = v111;
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v143 = POSIXErrorCode.rawValue.getter();
              v144 = objc_allocWithZone(NSError);
              v145 = String._bridgeToObjectiveCImpl()();

              v106 = [v144 initWithDomain:v145 code:v143 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v146 = [v106 domain];
              v147 = static String._unconditionallyBridgeFromObjectiveC(_:)(v146);
              v149 = v148;

              if (v147 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v149 == v150)
              {
                v105 = v19;
              }

              else
              {
                v105 = v19;
                v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v151 & 1) == 0)
                {
                  goto LABEL_322;
                }
              }

LABEL_229:
              v152 = v224;

              URL.init(_fileManagerFailableFileURLWithPath:)(v222, v152, &v270);

              v153 = v270;
              v154 = String._bridgeToObjectiveCImpl()();
              if (v153.tv_sec)
              {
                v155 = swift_getObjectType();
                v156 = (*(*&v153.tv_usec + 432))(v155, *&v153.tv_usec);
                swift_unknownObjectRelease();
              }

              else
              {
                v156 = 0;
              }

              v157 = v105;
              if (v106)
              {
                v260.tv_sec = v106;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v106 = v106;
                v158 = _getErrorEmbeddedNSError<A>(_:)();

                v159 = v225;
                if (v158)
                {
                }

                else
                {
                  swift_allocError();
                  *v161 = v106;
                }

                v160 = _swift_stdlib_bridgeErrorToNSError();
              }

              else
              {
                v160 = 0;
                v159 = v225;
              }

              [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
              swift_unknownObjectRelease();

              swift_willThrow();
              outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v218, v220);
              v109 = v157;
              v110 = v219;
              goto LABEL_277;
            }
          }

          v111 = 640;
          goto LABEL_224;
        }

        if (v104 > 12)
        {
          if (v104 != 13)
          {
            if (v104 == 17)
            {
              v111 = 516;
              goto LABEL_224;
            }

            goto LABEL_223;
          }
        }

        else if (v104 != 1)
        {
          if (v104 == 2)
          {
            v111 = 4;
            goto LABEL_224;
          }

          goto LABEL_223;
        }

        v111 = 513;
        goto LABEL_224;
      }

      a2 = v222;
      v32 = v225;
    }

    swift_bridgeObjectRetain_n();

    getter of statAtPath #1 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)(v33, v32, a2, v29, &v260);
    v276 = v266;
    v277 = v267;
    v278 = v268;
    v279 = v269;
    v272 = v262;
    v273 = v263;
    v274 = v264;
    v275 = v265;
    v270 = v260;
    v271 = v261;
    if (_ss6ResultOySo4statV10Foundation10CocoaErrorVGWOg(&v270) == 1)
    {
      _NSBundleDeallocatingImmortalBundle();
      v256 = v266;
      v257 = v267;
      v258 = v268;
      v259 = v269;
      v252 = v262;
      v253 = v263;
      v254 = v264;
      v255 = v265;
      v250 = v260;
      v251 = v261;
      _NSBundleDeallocatingImmortalBundle();
      lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
      swift_willThrowTypedImpl();

      return;
    }

    _NSBundleDeallocatingImmortalBundle();
    v256 = v266;
    v257 = v267;
    v258 = v268;
    v259 = v269;
    v252 = v262;
    v253 = v263;
    v254 = v264;
    v255 = v265;
    v250 = v260;
    v251 = v261;
    _NSBundleDeallocatingImmortalBundle();
    v35 = *(v34 + 116);
    v14 = v28;
    v10 = v221;
    v30 = v225;
    if (a5 != 2)
    {
      if (a5)
      {
        v35 |= 4u;
      }

      else
      {
        v35 &= ~4u;
      }
    }

    if (v13 == 2)
    {
      v21 = v224;
    }

    else
    {
      v21 = v224;
      if (v13)
      {
        v35 |= 2u;
      }

      else
      {
        v35 &= ~2u;
      }
    }

    if (!chflags(v225, v35))
    {

      v19 = 0;
      v20 = 0;
      v215 = 1;
      if (v220)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    v36 = MEMORY[0x1865CA7A0]();
    LODWORD(v13) = v36;
    v37 = 0x1E69EE000;
    v219 = v20;
    if (v36 > 27)
    {
      if (v36 <= 62)
      {
        if (v36 != 28)
        {
          if (v36 == 30)
          {
            v39 = 642;
            goto LABEL_118;
          }

          goto LABEL_117;
        }
      }

      else
      {
        if (v36 == 63)
        {
          v39 = 514;
          goto LABEL_118;
        }

        if (v36 != 69)
        {
          if (v36 == 102)
          {
            v38 = 0;
            v39 = 512;
            goto LABEL_142;
          }

LABEL_117:
          v39 = 512;
LABEL_118:
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            _StringGuts.grow(_:)(22);

            *&v248[0] = 0xD000000000000014;
            *(&v248[0] + 1) = 0x80000001814813E0;
            LODWORD(v238) = v13;
            v207 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v207);

            goto LABEL_329;
          }

          LODWORD(v13) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v76 = @"NSPOSIXErrorDomain";
          v77 = v76;
          if (v13)
          {
            TaggedPointerTag = _objc_getTaggedPointerTag(v76);
            if (TaggedPointerTag)
            {
              if (TaggedPointerTag != 22)
              {
                if (TaggedPointerTag == 2)
                {
                  MEMORY[0x1EEE9AC00](TaggedPointerTag);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_136:
                  v37 = 0x1E69EE000uLL;
LABEL_137:
                  v84 = POSIXErrorCode.rawValue.getter();
                  v85 = objc_allocWithZone(*(v37 + 960));
                  v86 = String._bridgeToObjectiveCImpl()();

                  v38 = [v85 initWithDomain:v86 code:v84 userInfo:_NativeDictionary.bridged()()];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v87 = [v38 domain];
                  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(v87);
                  v13 = v88;

                  v89 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
                  a6 = v90;
                  if (v10 == v89 && v13 == v90)
                  {
                  }

                  else
                  {
                    v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v91 & 1) == 0)
                    {
                      goto LABEL_161;
                    }
                  }

                  v21 = v224;
LABEL_142:

                  URL.init(_fileManagerFailableFileURLWithPath:)(v222, v21, v248);

                  v92 = v248[0];
                  v93 = String._bridgeToObjectiveCImpl()();
                  if (v92)
                  {
                    v94 = swift_getObjectType();
                    v95 = (*(*(&v92 + 1) + 432))(v94, *(&v92 + 1));
                    swift_unknownObjectRelease();
                    if (v38)
                    {
LABEL_144:
                      *&v238 = v38;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v38 = v38;
                      v96 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v96)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v98 = v38;
                      }

                      v97 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_150;
                    }
                  }

                  else
                  {
                    v95 = 0;
                    if (v38)
                    {
                      goto LABEL_144;
                    }
                  }

                  v97 = 0;
LABEL_150:
                  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                  swift_unknownObjectRelease();

                  swift_willThrow();

                  return;
                }

                goto LABEL_124;
              }

              v81 = [(__CFString *)v77 UTF8String];
              if (!v81)
              {
                goto LABEL_325;
              }

              String.init(utf8String:)(v81);
              if (v82)
              {
                goto LABEL_131;
              }

              __break(1u);
            }

            LOWORD(v227) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v83)
            {
              [(__CFString *)v77 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_137;
            }

            goto LABEL_131;
          }

LABEL_124:
          LOBYTE(v238) = 0;
          *&v248[0] = 0;
          LOBYTE(v227) = 0;
          LOBYTE(v226) = 0;
          if (!__CFStringIsCF())
          {
            v79 = v77;
            String.init(_nativeStorage:)();
            if (!v80 && (*&v248[0] = [(__CFString *)v79 length]) != 0)
            {
              String.init(_cocoaString:)();
            }

            else
            {
            }

            goto LABEL_136;
          }

LABEL_131:

          goto LABEL_137;
        }
      }

      v39 = 640;
      goto LABEL_118;
    }

    if (v36 > 12)
    {
      if (v36 != 13)
      {
        if (v36 == 17)
        {
          v39 = 516;
          goto LABEL_118;
        }

        goto LABEL_117;
      }
    }

    else if (v36 != 1)
    {
      if (v36 == 2)
      {
        v39 = 4;
        goto LABEL_118;
      }

      goto LABEL_117;
    }

    v39 = 513;
    goto LABEL_118;
  }

  URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, v280);

  v23 = v280[0];
  v24 = String._bridgeToObjectiveCImpl()();
  if (v23)
  {
    v25 = swift_getObjectType();
    v26 = (*(*(&v23 + 1) + 432))(v25, *(&v23 + 1));
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0;
  }

  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  swift_willThrow();
}

uint64_t sub_18081DFFC()
{
  v1 = *(v0 + 160);
  if (v1 != 255)
  {
    outlined consume of Result<stat, CocoaError>(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), v1 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 161, 7);
}

uint64_t sub_18081E074()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

double specialized Dictionary.subscript.getter@<D0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    outlined init with copy of Any(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id NSFileProtectionType.intValue.getter(void *a1)
{
  isTaggedPointer = _objc_isTaggedPointer(@"NSFileProtectionComplete");
  v3 = @"NSFileProtectionComplete";
  v4 = v3;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v3);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v8 = v7;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      result = [(__CFString *)v4 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_210;
      }

      v13 = String.init(utf8String:)(result);
      if (v14)
      {
LABEL_15:
        v6 = v13;
        v8 = v14;

        goto LABEL_20;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v13 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v14)
    {
      [(__CFString *)v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v6 = v137;
      v8 = v138;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_6:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v6 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_20;
  }

  v9 = v4;
  v10 = String.init(_nativeStorage:)();
  if (v11)
  {
    v6 = v10;
    v8 = v11;

    goto LABEL_20;
  }

  if (![(__CFString *)v9 length])
  {

    goto LABEL_10;
  }

  v6 = String.init(_cocoaString:)();
  v8 = v15;
LABEL_20:
  v16 = _objc_isTaggedPointer(a1);
  v17 = a1;
  v18 = v17;
  if (!v16)
  {
    goto LABEL_25;
  }

  v19 = _objc_getTaggedPointerTag(v17);
  if (!v19)
  {
    goto LABEL_33;
  }

  if (v19 == 22)
  {
    result = [v18 UTF8String];
    if (result)
    {
      v26 = String.init(utf8String:)(result);
      if (v27)
      {
LABEL_34:
        v20 = v26;
        v22 = v27;

        goto LABEL_39;
      }

      __break(1u);
LABEL_33:
      _CFIndirectTaggedPointerStringGetContents();
      v26 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v27)
      {
        [v18 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v20 = v137;
        v22 = v138;
        goto LABEL_39;
      }

      goto LABEL_34;
    }

LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  if (v19 != 2)
  {
LABEL_25:
    LOBYTE(v137) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v23 = v18;
      v24 = String.init(_nativeStorage:)();
      if (v25)
      {
        v20 = v24;
        v22 = v25;

        goto LABEL_39;
      }

      if ([v23 length])
      {
        v20 = String.init(_cocoaString:)();
        v22 = v28;
        goto LABEL_39;
      }
    }

    v20 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](v19);
  v20 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v22 = v21;

LABEL_39:
  if (v6 == v20 && v8 == v22)
  {

LABEL_43:
    v30 = 0;
    v31 = 1;
    return (v31 | ((v30 & 1) << 32));
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_43;
  }

  v32 = String._bridgeToObjectiveCImpl()();
  v33 = _objc_isTaggedPointer(v32);
  v34 = v32;
  v35 = v34;
  if (!v33)
  {
    goto LABEL_49;
  }

  v36 = _objc_getTaggedPointerTag(v34);
  switch(v36)
  {
    case 0:
      goto LABEL_56;
    case 0x16:
      result = [v35 UTF8String];
      if (result)
      {
        v43 = String.init(utf8String:)(result);
        if (v44)
        {
          goto LABEL_57;
        }

        __break(1u);
LABEL_56:
        _CFIndirectTaggedPointerStringGetContents();
        v43 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v44)
        {
          [v35 mutableCopy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_dynamicCast();
          v37 = v137;
          v39 = v138;
          goto LABEL_63;
        }

LABEL_57:
        v37 = v43;
        v39 = v44;
        goto LABEL_58;
      }

LABEL_211:
      __break(1u);
      goto LABEL_212;
    case 2:
      MEMORY[0x1EEE9AC00](v36);
      v37 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v39 = v38;
      swift_unknownObjectRelease();
      goto LABEL_63;
  }

LABEL_49:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {
    goto LABEL_52;
  }

  v40 = v35;
  v41 = String.init(_nativeStorage:)();
  if (v42)
  {
    v37 = v41;
    v39 = v42;
LABEL_58:
    swift_unknownObjectRelease();
    goto LABEL_63;
  }

  if (![v40 length])
  {
LABEL_52:
    swift_unknownObjectRelease();
    v37 = 0;
    v39 = 0xE000000000000000;
    goto LABEL_63;
  }

  v37 = String.init(_cocoaString:)();
  v39 = v45;
LABEL_63:
  v46 = v18;
  v47 = v46;
  if (!v16)
  {
    goto LABEL_68;
  }

  v48 = _objc_getTaggedPointerTag(v46);
  switch(v48)
  {
    case 0:
      goto LABEL_76;
    case 0x16:
      result = [v47 UTF8String];
      if (result)
      {
        v55 = String.init(utf8String:)(result);
        if (v56)
        {
LABEL_77:
          v57 = v55;
          v51 = v56;

          if (v37 != v57)
          {
            goto LABEL_89;
          }

          goto LABEL_87;
        }

        __break(1u);
LABEL_76:
        _CFIndirectTaggedPointerStringGetContents();
        v55 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v56)
        {
          [v47 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v51 = v138;
          if (v37 != v137)
          {
            goto LABEL_89;
          }

          goto LABEL_87;
        }

        goto LABEL_77;
      }

LABEL_212:
      __break(1u);
      goto LABEL_213;
    case 2:
      MEMORY[0x1EEE9AC00](v48);
      v49 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v51 = v50;

      goto LABEL_84;
  }

LABEL_68:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {

    v51 = 0xE000000000000000;
    if (v37)
    {
      goto LABEL_89;
    }
  }

  else
  {
    v52 = v47;
    v53 = String.init(_nativeStorage:)();
    if (v54)
    {
      v49 = v53;
      v51 = v54;

      goto LABEL_84;
    }

    if (![v52 length])
    {

      v49 = 0;
      v51 = 0xE000000000000000;
LABEL_84:
      if (v37 != v49)
      {
        goto LABEL_89;
      }

      goto LABEL_87;
    }

    v58 = String.init(_cocoaString:)();
    v51 = v59;
    if (v37 != v58)
    {
      goto LABEL_89;
    }
  }

LABEL_87:
  if (v39 == v51)
  {
    swift_unknownObjectRelease();

LABEL_132:
    v30 = 0;
    v31 = 2;
    return (v31 | ((v30 & 1) << 32));
  }

LABEL_89:
  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if (v60)
  {
    goto LABEL_132;
  }

  v61 = _objc_isTaggedPointer(@"NSFileProtectionCompleteUnlessOpen");
  v62 = @"NSFileProtectionCompleteUnlessOpen";
  v63 = v62;
  if (v61)
  {
    v64 = _objc_getTaggedPointerTag(v62);
    if (!v64)
    {
      goto LABEL_103;
    }

    if (v64 != 22)
    {
      if (v64 == 2)
      {
        MEMORY[0x1EEE9AC00](v64);
        v65 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v67 = v66;

        goto LABEL_109;
      }

      goto LABEL_95;
    }

    result = [(__CFString *)v63 UTF8String];
    if (result)
    {
      v71 = String.init(utf8String:)(result);
      if (v72)
      {
        goto LABEL_104;
      }

      __break(1u);
LABEL_103:
      _CFIndirectTaggedPointerStringGetContents();
      v71 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v72)
      {
        [(__CFString *)v63 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v65 = v137;
        v67 = v138;
        goto LABEL_109;
      }

LABEL_104:
      v65 = v71;
      v67 = v72;

      goto LABEL_109;
    }

LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

LABEL_95:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {

LABEL_99:
    v65 = 0;
    v67 = 0xE000000000000000;
    goto LABEL_109;
  }

  v68 = v63;
  v69 = String.init(_nativeStorage:)();
  if (v70)
  {
    v65 = v69;
    v67 = v70;

    goto LABEL_109;
  }

  if (![(__CFString *)v68 length])
  {

    goto LABEL_99;
  }

  v65 = String.init(_cocoaString:)();
  v67 = v73;
LABEL_109:
  v74 = v47;
  v75 = v74;
  if (!v16)
  {
    goto LABEL_114;
  }

  v76 = _objc_getTaggedPointerTag(v74);
  if (!v76)
  {
    goto LABEL_122;
  }

  if (v76 == 22)
  {
    result = [v75 UTF8String];
    if (result)
    {
      v83 = String.init(utf8String:)(result);
      if (v84)
      {
LABEL_123:
        v77 = v83;
        v79 = v84;

        goto LABEL_128;
      }

      __break(1u);
LABEL_122:
      _CFIndirectTaggedPointerStringGetContents();
      v83 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v84)
      {
        [v75 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v77 = v137;
        v79 = v138;
        goto LABEL_128;
      }

      goto LABEL_123;
    }

LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  if (v76 != 2)
  {
LABEL_114:
    LOBYTE(v137) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v80 = v75;
      v81 = String.init(_nativeStorage:)();
      if (v82)
      {
        v77 = v81;
        v79 = v82;

        goto LABEL_128;
      }

      if ([v80 length])
      {
        v77 = String.init(_cocoaString:)();
        v79 = v85;
        goto LABEL_128;
      }
    }

    v77 = 0;
    v79 = 0xE000000000000000;
    goto LABEL_128;
  }

  MEMORY[0x1EEE9AC00](v76);
  v77 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v79 = v78;

LABEL_128:
  if (v65 == v77 && v67 == v79)
  {

    goto LABEL_132;
  }

  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v86)
  {
    goto LABEL_132;
  }

  v87 = String._bridgeToObjectiveCImpl()();
  v88 = _objc_isTaggedPointer(v87);
  v89 = v87;
  v90 = v89;
  if (v88)
  {
    v91 = _objc_getTaggedPointerTag(v89);
    if (!v91)
    {
LABEL_146:
      _CFIndirectTaggedPointerStringGetContents();
      v96 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v97)
      {
        goto LABEL_141;
      }

      [v90 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_dynamicCast();
      v92 = v137;
      v94 = v138;
      goto LABEL_152;
    }

    if (v91 != 22)
    {
      if (v91 == 2)
      {
        MEMORY[0x1EEE9AC00](v91);
        v92 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v94 = v93;
        swift_unknownObjectRelease();
        goto LABEL_152;
      }

      goto LABEL_139;
    }

    result = [v90 UTF8String];
    if (result)
    {
      v96 = String.init(utf8String:)(result);
      if (v97)
      {
        goto LABEL_141;
      }

      __break(1u);
      goto LABEL_146;
    }

LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

LABEL_139:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {
    goto LABEL_142;
  }

  v95 = v90;
  v96 = String.init(_nativeStorage:)();
  if (v97)
  {
LABEL_141:
    v92 = v96;
    v94 = v97;
    swift_unknownObjectRelease();
    goto LABEL_152;
  }

  if ([v95 length])
  {
    v92 = String.init(_cocoaString:)();
    v94 = v98;
  }

  else
  {
LABEL_142:
    swift_unknownObjectRelease();
    v92 = 0;
    v94 = 0xE000000000000000;
  }

LABEL_152:
  v99 = v75;
  v100 = v99;
  if (v16)
  {
    v101 = _objc_getTaggedPointerTag(v99);
    if (!v101)
    {
      goto LABEL_165;
    }

    if (v101 != 22)
    {
      if (v101 == 2)
      {
        MEMORY[0x1EEE9AC00](v101);
        v102 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v104 = v103;

        goto LABEL_171;
      }

      goto LABEL_157;
    }

    result = [v100 UTF8String];
    if (result)
    {
      v108 = String.init(utf8String:)(result);
      if (v109)
      {
        goto LABEL_166;
      }

      __break(1u);
LABEL_165:
      _CFIndirectTaggedPointerStringGetContents();
      v108 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v109)
      {
        [v100 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v102 = v137;
        v104 = v138;
        goto LABEL_171;
      }

LABEL_166:
      v102 = v108;
      v104 = v109;

      goto LABEL_171;
    }

LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

LABEL_157:
  LOBYTE(v137) = 0;
  if (__CFStringIsCF())
  {

LABEL_161:
    v102 = 0;
    v104 = 0xE000000000000000;
    goto LABEL_171;
  }

  v105 = v100;
  v106 = String.init(_nativeStorage:)();
  if (v107)
  {
    v102 = v106;
    v104 = v107;

    goto LABEL_171;
  }

  if (![v105 length])
  {

    goto LABEL_161;
  }

  v102 = String.init(_cocoaString:)();
  v104 = v110;
LABEL_171:
  if (v92 == v102 && v94 == v104)
  {
    swift_unknownObjectRelease();
    goto LABEL_174;
  }

  v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRelease();

  if (v111)
  {
    goto LABEL_176;
  }

  v112 = _objc_isTaggedPointer(@"NSFileProtectionCompleteUntilFirstUserAuthentication");
  v113 = @"NSFileProtectionCompleteUntilFirstUserAuthentication";
  v114 = v113;
  if (!v112)
  {
    goto LABEL_182;
  }

  v115 = _objc_getTaggedPointerTag(v113);
  if (!v115)
  {
    goto LABEL_189;
  }

  if (v115 != 22)
  {
    if (v115 == 2)
    {
      MEMORY[0x1EEE9AC00](v115);
      v116 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v118 = v117;

      goto LABEL_195;
    }

LABEL_182:
    if (__CFStringIsCF())
    {
      v116 = 0;

      v118 = 0xE000000000000000;
    }

    else
    {
      v119 = v114;
      v120 = String.init(_nativeStorage:)();
      if (v121)
      {
        v116 = v120;
        v118 = v121;
      }

      else if ([(__CFString *)v119 length])
      {
        v116 = String.init(_cocoaString:)();
        v118 = v124;
      }

      else
      {

        v116 = 0;
        v118 = 0xE000000000000000;
      }
    }

LABEL_195:
    if (v116 != static String._unconditionallyBridgeFromObjectiveC(_:)(a1) || v118 != v125)
    {
      v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v126 & 1) == 0)
      {
        v127 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSFileProtectionNone");
        v129 = v128;
        if (v127 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v129 == v130)
        {
        }

        else
        {
          v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v131 & 1) == 0)
          {
            v132 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSFileProtectionCompleteWhenUserInactive");
            v134 = v133;
            if (v132 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v134 == v135)
            {

              v30 = 0;
              v31 = 7;
            }

            else
            {
              v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v30 = v136 ^ 1;
              v31 = 7;
              if ((v136 & 1) == 0)
              {
                v31 = 0;
              }
            }

            return (v31 | ((v30 & 1) << 32));
          }
        }

        v30 = 0;
        v31 = 4;
        return (v31 | ((v30 & 1) << 32));
      }

LABEL_176:
      v30 = 0;
      v31 = 3;
      return (v31 | ((v30 & 1) << 32));
    }

LABEL_174:

    goto LABEL_176;
  }

  result = [(__CFString *)v114 UTF8String];
  if (result)
  {
    v122 = String.init(utf8String:)(result);
    if (v123)
    {
LABEL_190:
      v116 = v122;
      v118 = v123;

      goto LABEL_195;
    }

    __break(1u);
LABEL_189:
    _CFIndirectTaggedPointerStringGetContents();
    v122 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v123)
    {
      [(__CFString *)v114 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v116 = v137;
      v118 = v138;
      goto LABEL_195;
    }

    goto LABEL_190;
  }

LABEL_217:
  __break(1u);
  return result;
}

uint64_t _ss6ResultOySo4statV10Foundation10CocoaErrorVGSgWOg(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void outlined consume of Result<stat, CocoaError>(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
  }
}

uint64_t getter of statAtPath #1 in closure #1 in _FileManagerImpl.setAttributes(_:ofItemAtPath:)@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v158 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 128);
  v11 = *(a1 + 96);
  v144 = *(a1 + 112);
  v145 = v10;
  v12 = *(a1 + 128);
  v146 = *(a1 + 144);
  v13 = *(a1 + 64);
  v14 = *(a1 + 32);
  v140 = *(a1 + 48);
  v141 = v13;
  v15 = *(a1 + 64);
  v16 = *(a1 + 96);
  v142 = *(a1 + 80);
  v143 = v16;
  v17 = *(a1 + 32);
  v139[0] = *(a1 + 16);
  v139[1] = v17;
  v154 = v144;
  v155 = v12;
  v156 = *(a1 + 144);
  v150 = v140;
  v151 = v15;
  v152 = v142;
  v153 = v11;
  v147 = *(a1 + 160);
  v157 = *(a1 + 160);
  v148 = v139[0];
  v149 = v14;
  if (_ss6ResultOySo4statV10Foundation10CocoaErrorVGSgWOg(&v148) != 1)
  {
    v21 = v155;
    *(a5 + 96) = v154;
    *(a5 + 112) = v21;
    *(a5 + 128) = v156;
    *(a5 + 144) = v157;
    v22 = v151;
    *(a5 + 32) = v150;
    *(a5 + 48) = v22;
    v23 = v153;
    *(a5 + 64) = v152;
    *(a5 + 80) = v23;
    v24 = v148;
    v25 = v149;
LABEL_139:
    *a5 = v24;
    *(a5 + 16) = v25;
    return outlined init with copy of FloatingPointRoundingRule?(v139, &v129, &_ss6ResultOySo4statV10Foundation10CocoaErrorVGSgMd, &_ss6ResultOySo4statV10Foundation10CocoaErrorVGSgMR);
  }

  memset(&v124, 0, sizeof(v124));
  if (!lstat(a2, &v124))
  {
    v125 = v124;
    _sSo4statVSgWOi_(&v125);
    v127 = v125;
    v128 = v126;
    _NSBundleDeallocatingImmortalBundle();
    v26 = *(a1 + 128);
    v135 = *(a1 + 112);
    v136 = v26;
    v137 = *(a1 + 144);
    v138 = *(a1 + 160);
    v27 = *(a1 + 64);
    v131 = *(a1 + 48);
    v132 = v27;
    v28 = *(a1 + 96);
    v133 = *(a1 + 80);
    v134 = v28;
    v29 = *(a1 + 32);
    v129 = *(a1 + 16);
    v130 = v29;
    v30 = *&v127.st_blksize;
    *(a1 + 112) = *&v127.st_size;
    *(a1 + 128) = v30;
    *(a1 + 144) = *v127.st_qspare;
    *(a1 + 160) = v128;
    st_mtimespec = v127.st_mtimespec;
    *(a1 + 48) = v127.st_atimespec;
    *(a1 + 64) = st_mtimespec;
    st_birthtimespec = v127.st_birthtimespec;
    *(a1 + 80) = v127.st_ctimespec;
    *(a1 + 96) = st_birthtimespec;
    v33 = *&v127.st_uid;
    *(a1 + 16) = *&v127.st_dev;
    *(a1 + 32) = v33;
LABEL_138:
    outlined destroy of TermOfAddress?(&v129, &_ss6ResultOySo4statV10Foundation10CocoaErrorVGSgMd, &_ss6ResultOySo4statV10Foundation10CocoaErrorVGSgMR);
    v114 = *&v125.st_blksize;
    *(a5 + 96) = *&v125.st_size;
    *(a5 + 112) = v114;
    *(a5 + 128) = *v125.st_qspare;
    *(a5 + 144) = v126;
    v115 = v125.st_mtimespec;
    *(a5 + 32) = v125.st_atimespec;
    *(a5 + 48) = v115;
    v116 = v125.st_birthtimespec;
    *(a5 + 64) = v125.st_ctimespec;
    *(a5 + 80) = v116;
    v24 = *&v125.st_dev;
    v25 = *&v125.st_uid;
    goto LABEL_139;
  }

  v18 = MEMORY[0x1865CA7A0]();
  LODWORD(v19) = v18;
  if (v18 <= 27)
  {
    if (v18 > 12)
    {
      if (v18 != 13)
      {
        if (v18 == 17)
        {
          v34 = 516;
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else if (v18 != 1)
    {
      if (v18 == 2)
      {
        v34 = 4;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v34 = 513;
    goto LABEL_25;
  }

  if (v18 <= 62)
  {
    if (v18 != 28)
    {
      if (v18 == 30)
      {
        v34 = 642;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_22:
    v34 = 640;
    goto LABEL_25;
  }

  switch(v18)
  {
    case '?':
      v34 = 514;
      goto LABEL_25;
    case 'E':
      goto LABEL_22;
    case 'f':
      v123 = 0;
      v20 = 512;
      goto LABEL_125;
  }

LABEL_24:
  v34 = 512;
LABEL_25:
  v119 = v34;
  v120 = a3;
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    v19 = @"NSPOSIXErrorDomain";
    isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v36 = @"NSPOSIXErrorDomain";
    v37 = v36;
    v122 = isTaggedPointer;
    if (!isTaggedPointer)
    {
      goto LABEL_31;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v36);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_55;
        }

LABEL_31:
        LOBYTE(v127.st_dev) = 0;
        *&v129 = 0;
        LOBYTE(v125.st_dev) = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          if (!v129)
          {
LABEL_52:

            goto LABEL_55;
          }

          if (v125.st_dev)
          {
            if (LOBYTE(v127.st_dev) != 1)
            {
              IsCF = [(__CFString *)v37 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](IsCF);
            v45 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v47 = HIBYTE(v46) & 0xF;
            if ((v46 & 0x2000000000000000) == 0)
            {
              v47 = v45 & 0xFFFFFFFFFFFFLL;
            }

            if (v47)
            {
              goto LABEL_52;
            }
          }
        }

        else
        {
          v40 = v37;
          String.init(_nativeStorage:)();
          if (v41 || (*&v129 = [(__CFString *)v40 length], !v129))
          {

            goto LABEL_55;
          }
        }

        String.init(_cocoaString:)();
LABEL_55:
        v48 = POSIXErrorCode.rawValue.getter();
        v49 = objc_allocWithZone(NSError);
        v50 = String._bridgeToObjectiveCImpl()();

        v123 = [v49 initWithDomain:v50 code:v48 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v51 = [v123 domain];
        v121 = a4;
        if (!v51)
        {
          goto LABEL_67;
        }

        v52 = v51;
        v53 = _objc_isTaggedPointer(v51);
        v54 = v52;
        v19 = v54;
        if ((v53 & 1) == 0)
        {
LABEL_61:
          LOBYTE(v127.st_dev) = 0;
          *&v129 = 0;
          LOBYTE(v125.st_dev) = 0;
          v59 = __CFStringIsCF();
          if (v59)
          {
            if (v129)
            {
              if (v125.st_dev)
              {
                if (LOBYTE(v127.st_dev) != 1)
                {
                  v59 = [(__CFString *)v19 lengthOfBytesUsingEncoding:4];
                }

                MEMORY[0x1EEE9AC00](v59);
                v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v58 = v67;
                v68 = HIBYTE(v67) & 0xF;
                if ((v67 & 0x2000000000000000) == 0)
                {
                  v68 = v66 & 0xFFFFFFFFFFFFLL;
                }

                if (v68)
                {
                  v56 = v66;
                  goto LABEL_73;
                }
              }

LABEL_86:
              v56 = String.init(_cocoaString:)();
              v58 = v69;
              goto LABEL_87;
            }
          }

          else
          {
            v60 = v19;
            v61 = String.init(_nativeStorage:)();
            if (v62)
            {
              v56 = v61;
              v58 = v62;

              goto LABEL_88;
            }

            *&v129 = [(__CFString *)v60 length];
            if (v129)
            {
              goto LABEL_86;
            }
          }

LABEL_67:
          v56 = 0;
          v58 = 0xE000000000000000;
          goto LABEL_88;
        }

        v55 = _objc_getTaggedPointerTag(v54);
        if (v55)
        {
          if (v55 != 22)
          {
            if (v55 == 2)
            {
              MEMORY[0x1EEE9AC00](v55);
              v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v58 = v57;

LABEL_88:
              v70 = v37;
              v19 = v70;
              if (!v122)
              {
                goto LABEL_93;
              }

              v71 = _objc_getTaggedPointerTag(v70);
              if (!v71)
              {
                goto LABEL_104;
              }

              if (v71 != 22)
              {
                if (v71 == 2)
                {
                  v72 = v58;
                  v73 = v56;
                  MEMORY[0x1EEE9AC00](v71);
                  v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  st_ino = v75;

LABEL_98:
                  v56 = v73;
                  v58 = v72;
LABEL_100:
                  a4 = v121;
                  goto LABEL_120;
                }

LABEL_93:
                LOBYTE(v127.st_dev) = 0;
                *&v129 = 0;
                LOBYTE(v125.st_dev) = 0;
                v77 = __CFStringIsCF();
                if (v77)
                {
                  v74 = v129;
                  if (!v129)
                  {

                    st_ino = 0xE000000000000000;
                    goto LABEL_100;
                  }

                  if (v125.st_dev)
                  {
                    if (LOBYTE(v127.st_dev) != 1)
                    {
                      v77 = [(__CFString *)v19 lengthOfBytesUsingEncoding:4];
                    }

                    MEMORY[0x1EEE9AC00](v77);
                    v84 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    st_ino = v85;
                    v86 = HIBYTE(v85) & 0xF;
                    if ((v85 & 0x2000000000000000) == 0)
                    {
                      v86 = v84 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v86)
                    {
                      v74 = v84;

                      goto LABEL_120;
                    }
                  }
                }

                else
                {
                  v72 = v58;
                  v73 = v56;
                  v78 = v19;
                  v79 = String.init(_nativeStorage:)();
                  if (v80)
                  {
                    v74 = v79;
                    st_ino = v80;

                    goto LABEL_98;
                  }

                  *&v129 = [(__CFString *)v78 length];
                  if (!v129)
                  {

                    v74 = 0;
                    st_ino = 0xE000000000000000;
                    goto LABEL_98;
                  }

                  v56 = v73;
                  v58 = v72;
                  a4 = v121;
                }

                v74 = String.init(_cocoaString:)();
                st_ino = v87;
LABEL_120:
                if (v56 == v74 && v58 == st_ino)
                {
                }

                else
                {
                  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v88 & 1) == 0)
                  {
                    __break(1u);
                  }
                }

                v20 = v119;
                a3 = v120;
LABEL_125:

                if (_foundation_swift_url_feature_enabled())
                {

                  v89 = specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a3, a4);
                  v91 = v90;

                  LOBYTE(v127.st_dev) = 3;
                  type metadata accessor for _SwiftURL();
                  v129 = 0uLL;
                  swift_allocObject();
                  _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v89, v91, 0, &v127, &v129);
                  v92 = _SwiftURL.convertingFileReference()();
                  v94 = v93;
                }

                else
                {
                  v95 = (specialized BidirectionalCollection.last.getter(a3, a4) & 0x1FF) == 47;
                  objc_allocWithZone(type metadata accessor for _BridgedURL());

                  v96 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a3, a4, v95);
                  if (!v96)
                  {

                    v98 = String._bridgeToObjectiveCImpl()();
                    v100 = v123;
                    if (v123)
                    {
                      goto LABEL_131;
                    }

                    goto LABEL_134;
                  }

                  v92 = _BridgedURL.convertingFileReference()();
                  v94 = v97;
                }

                v98 = String._bridgeToObjectiveCImpl()();
                if (v92)
                {
                  ObjectType = swift_getObjectType();
                  v96 = (*(v94 + 432))(ObjectType, v94);
                  swift_unknownObjectRelease();
                  v100 = v123;
                  if (v123)
                  {
LABEL_131:
                    *&v129 = v100;
                    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                    v100 = v100;
                    v101 = _getErrorEmbeddedNSError<A>(_:)();

                    if (v101)
                    {
                    }

                    else
                    {
                      swift_allocError();
                      *v103 = v100;
                    }

                    v102 = _swift_stdlib_bridgeErrorToNSError();
                    goto LABEL_137;
                  }
                }

                else
                {
                  v96 = 0;
                  v100 = v123;
                  if (v123)
                  {
                    goto LABEL_131;
                  }
                }

LABEL_134:
                v102 = 0;
LABEL_137:
                v104 = [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                swift_unknownObjectRelease();

                *&v125.st_dev = v104;
                _ss6ResultOySo4statV10Foundation10CocoaErrorVGWOi0_(&v125);
                v127 = v125;
                v128 = v126;
                _NSBundleDeallocatingImmortalBundle();
                v105 = *(a1 + 128);
                v135 = *(a1 + 112);
                v136 = v105;
                v137 = *(a1 + 144);
                v138 = *(a1 + 160);
                v106 = *(a1 + 64);
                v131 = *(a1 + 48);
                v132 = v106;
                v107 = *(a1 + 96);
                v133 = *(a1 + 80);
                v134 = v107;
                v108 = *(a1 + 32);
                v129 = *(a1 + 16);
                v130 = v108;
                v109 = *&v127.st_blksize;
                *(a1 + 112) = *&v127.st_size;
                *(a1 + 128) = v109;
                *(a1 + 144) = *v127.st_qspare;
                *(a1 + 160) = v128;
                v110 = v127.st_mtimespec;
                *(a1 + 48) = v127.st_atimespec;
                *(a1 + 64) = v110;
                v111 = v127.st_birthtimespec;
                *(a1 + 80) = v127.st_ctimespec;
                *(a1 + 96) = v111;
                v112 = *&v127.st_uid;
                *(a1 + 16) = *&v127.st_dev;
                *(a1 + 32) = v112;
                v113 = v104;
                goto LABEL_138;
              }

              v81 = [(__CFString *)v19 UTF8String];
              if (v81)
              {
                v82 = String.init(utf8String:)(v81);
                if (v83)
                {
                  goto LABEL_105;
                }

                __break(1u);
LABEL_104:
                LOWORD(v125.st_dev) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v82 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v83)
                {
                  [(__CFString *)v19 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  st_ino = v127.st_ino;
                  v74 = *&v127.st_dev;
                  goto LABEL_120;
                }

LABEL_105:
                v74 = v82;
                st_ino = v83;

                goto LABEL_120;
              }

              goto LABEL_144;
            }

            goto LABEL_61;
          }

          v63 = [(__CFString *)v19 UTF8String];
          if (!v63)
          {
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

          v64 = String.init(utf8String:)(v63);
          if (v65)
          {
LABEL_72:
            v56 = v64;
            v58 = v65;
LABEL_73:

LABEL_87:
            goto LABEL_88;
          }

          __break(1u);
        }

        LOWORD(v125.st_dev) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v64 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v65)
        {
          [(__CFString *)v19 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v58 = v127.st_ino;
          v56 = *&v127.st_dev;
          goto LABEL_87;
        }

        goto LABEL_72;
      }

      v42 = [(__CFString *)v37 UTF8String];
      if (!v42)
      {
        __break(1u);
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      String.init(utf8String:)(v42);
      if (v43)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    LOWORD(v125.st_dev) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v44)
    {
      [(__CFString *)v37 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_55;
    }

    goto LABEL_52;
  }

LABEL_146:
  *&v129 = 0;
  *(&v129 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  *&v129 = 0xD000000000000014;
  *(&v129 + 1) = 0x80000001814813E0;
  v127.st_dev = v19;
  v118 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v118);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized static _FileManagerImpl._setFileProtectionValueForPath(_:_:newValue:)(unint64_t a1, unint64_t a2, const char *a3, uint64_t a4)
{
  v155 = *MEMORY[0x1E69E9840];
  result = specialized static _FileManagerImpl._fileProtectionValueForPath(_:)(a3);
  if ((result & 0x100000000) != 0 || result != a4)
  {
    v9 = open(_:_:)();
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      v11 = 0;
      goto LABEL_5;
    }

    if (MEMORY[0x1865CA7A0]() == 21 && (v12 = opendir(a3)) != 0)
    {
      v11 = v12;
      v13 = dirfd(v12);
      if ((v13 & 0x80000000) == 0)
      {
        v10 = v13;
LABEL_5:
        if (!MEMORY[0x1865CA7C0](v10, 64, a4))
        {
          goto LABEL_9;
        }

        if (MEMORY[0x1865CA7A0]() == 45)
        {
          bzero(&v154, 0x878uLL);
          if (fstatfs(v10, &v154) || (v154.f_flags & 0x80) == 0)
          {
LABEL_9:
            if (!v11)
            {
              return close(v10);
            }

            goto LABEL_154;
          }

          v148 = v11;
          v22 = 45;
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
            goto LABEL_235;
          }

          LODWORD(v15) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v23 = @"NSPOSIXErrorDomain";
          v24 = v23;
          v147 = a1;
          if (!v15)
          {
LABEL_57:
            LOBYTE(v149) = 0;
            v152 = 0;
            LOBYTE(v150) = 0;
            v151 = 0;
            if (!__CFStringIsCF())
            {
              v43 = v24;
              String.init(_nativeStorage:)();
              if (!v44 && (v152 = [(__CFString *)v43 length]) != 0)
              {
                String.init(_cocoaString:)();
              }

              else
              {
              }

              goto LABEL_211;
            }

            goto LABEL_58;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v23);
          if (!TaggedPointerTag)
          {
            goto LABEL_94;
          }

          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_211;
            }

            goto LABEL_57;
          }

          v45 = [(__CFString *)v24 UTF8String];
          if (v45)
          {
            String.init(utf8String:)(v45);
            if (v46)
            {
              goto LABEL_58;
            }

            __break(1u);
LABEL_94:
            v150 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v47)
            {
              [(__CFString *)v24 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
LABEL_211:
              v121 = POSIXErrorCode.rawValue.getter();
              v122 = objc_allocWithZone(NSError);
              v123 = String._bridgeToObjectiveCImpl()();

              v124 = [v122 initWithDomain:v123 code:v121 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v125 = [v124 domain];
              v126 = static String._unconditionallyBridgeFromObjectiveC(_:)(v125);
              v128 = v127;

              if (v126 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v128 == v129)
              {

                v130 = v147;
                goto LABEL_215;
              }

              v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v130 = v147;
              if (v131)
              {
LABEL_215:

                URL.init(_fileManagerFailableFileURLWithPath:)(v130, a2, &v152);

                v132 = v152;
                v133 = v153;
                v134 = String._bridgeToObjectiveCImpl()();
                if (v132)
                {
                  ObjectType = swift_getObjectType();
                  v136 = (*(v133 + 432))(ObjectType, v133);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v136 = 0;
                }

                v149 = v124;
                lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                v137 = v124;
                v138 = _getErrorEmbeddedNSError<A>(_:)();

                if (v138)
                {
                }

                else
                {
                  swift_allocError();
                  *v139 = v137;
                }

                v140 = objc_opt_self();
                [v140 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                swift_willThrow();
                result = v148;
                if (!v148)
                {
                  return close(v10);
                }

                return closedir(result);
              }

LABEL_226:
              __break(1u);
            }

LABEL_58:

            goto LABEL_211;
          }

          goto LABEL_232;
        }

        v17 = MEMORY[0x1865CA7A0]();
        LODWORD(v15) = v17;
        if (v17 > 26)
        {
          if (v17 == 27)
          {
            v18 = 263;
            goto LABEL_47;
          }

          if (v17 != 63)
          {
            if (v17 == 102)
            {
              v19 = 0;
              v146 = 256;
              goto LABEL_145;
            }

LABEL_44:
            v18 = 256;
            goto LABEL_47;
          }

          v18 = 258;
        }

        else
        {
          if (v17 == 1)
          {
LABEL_26:
            v18 = 257;
            goto LABEL_47;
          }

          if (v17 != 2)
          {
            if (v17 == 13)
            {
              goto LABEL_26;
            }

            goto LABEL_44;
          }

          v18 = 260;
        }

LABEL_47:
        v148 = v11;
        if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
        {
          LODWORD(v15) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v145 = @"NSPOSIXErrorDomain";
          v26 = @"NSPOSIXErrorDomain";
          v27 = v26;
          v146 = v18;
          v147 = a1;
          if (!v15)
          {
LABEL_53:
            LOBYTE(v152) = 0;
            *&v154.f_bsize = 0;
            LOBYTE(v149) = 0;
            LOBYTE(v150) = 0;
            if (!__CFStringIsCF())
            {
              v29 = v27;
              String.init(_nativeStorage:)();
              if (!v30 && (*&v154.f_bsize = [(__CFString *)v29 length]) != 0)
              {
                String.init(_cocoaString:)();
              }

              else
              {
              }

              goto LABEL_97;
            }

            goto LABEL_54;
          }

          v28 = _objc_getTaggedPointerTag(v26);
          if (!v28)
          {
LABEL_62:
            LOWORD(v149) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v33)
            {
              [(__CFString *)v27 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_97;
            }

            goto LABEL_54;
          }

          if (v28 != 22)
          {
            if (v28 == 2)
            {
              MEMORY[0x1EEE9AC00](v28);
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_97:
              v48 = POSIXErrorCode.rawValue.getter();
              v49 = objc_allocWithZone(NSError);
              v50 = String._bridgeToObjectiveCImpl()();

              v19 = [v49 initWithDomain:v50 code:v48 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v51 = [v19 domain];
              if (!v51)
              {
                v56 = 0;
                v58 = 0xE000000000000000;
                a1 = v147;
                goto LABEL_140;
              }

              v15 = v51;
              isTaggedPointer = _objc_isTaggedPointer(v51);
              v53 = v15;
              v54 = v53;
              a1 = v147;
              if ((isTaggedPointer & 1) == 0)
              {
                goto LABEL_103;
              }

              v55 = _objc_getTaggedPointerTag(v53);
              if (!v55)
              {
                goto LABEL_111;
              }

              if (v55 != 22)
              {
                if (v55 == 2)
                {
                  MEMORY[0x1EEE9AC00](v55);
                  v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v58 = v57;

                  goto LABEL_140;
                }

LABEL_103:
                LOBYTE(v152) = 0;
                *&v154.f_bsize = 0;
                LOBYTE(v149) = 0;
                LOBYTE(v150) = 0;
                if (__CFStringIsCF())
                {
                  v56 = *&v154.f_bsize;

                  v58 = 0xE000000000000000;
                }

                else
                {
                  v59 = v54;
                  v60 = String.init(_nativeStorage:)();
                  if (v61)
                  {
                    v56 = v60;
                    v58 = v61;
                  }

                  else
                  {
                    *&v154.f_bsize = [(__CFString *)v59 length];
                    if (*&v154.f_bsize)
                    {
                      v56 = String.init(_cocoaString:)();
                      v58 = v81;
                    }

                    else
                    {

                      v56 = 0;
                      v58 = 0xE000000000000000;
                    }
                  }

                  a1 = v147;
                }

                goto LABEL_140;
              }

              v62 = [(__CFString *)v54 UTF8String];
              if (v62)
              {
                v63 = String.init(utf8String:)(v62);
                if (v64)
                {
                  goto LABEL_112;
                }

                __break(1u);
LABEL_111:
                LOWORD(v149) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v64)
                {
                  [(__CFString *)v54 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v56 = v152;
                  v58 = v153;

LABEL_140:
                  if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)(v145) && v58 == v82)
                  {

LABEL_144:
                    v11 = v148;
LABEL_145:

                    URL.init(_fileManagerFailableFileURLWithPath:)(a1, a2, &v154);

                    v84 = *&v154.f_bsize;
                    f_blocks = v154.f_blocks;
                    v86 = String._bridgeToObjectiveCImpl()();
                    if (v84)
                    {
                      v87 = swift_getObjectType();
                      v88 = (*(f_blocks + 432))(v87, f_blocks);
                      swift_unknownObjectRelease();
                      if (v19)
                      {
LABEL_147:
                        v152 = v19;
                        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                        v19 = v19;
                        v89 = _getErrorEmbeddedNSError<A>(_:)();

                        if (v89)
                        {
                        }

                        else
                        {
                          swift_allocError();
                          *v91 = v19;
                        }

                        v90 = _swift_stdlib_bridgeErrorToNSError();
LABEL_153:
                        [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                        swift_unknownObjectRelease();

                        swift_willThrow();
                        if (!v11)
                        {
                          return close(v10);
                        }

                        goto LABEL_154;
                      }
                    }

                    else
                    {
                      v88 = 0;
                      if (v19)
                      {
                        goto LABEL_147;
                      }
                    }

                    v90 = 0;
                    goto LABEL_153;
                  }

                  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v83)
                  {
                    goto LABEL_144;
                  }

                  __break(1u);
LABEL_225:
                  __break(1u);
                  goto LABEL_226;
                }

LABEL_112:
                v56 = v63;
                v58 = v64;

                goto LABEL_140;
              }

              goto LABEL_230;
            }

            goto LABEL_53;
          }

          v31 = [(__CFString *)v27 UTF8String];
          if (v31)
          {
            String.init(utf8String:)(v31);
            if (v32)
            {
LABEL_54:

              goto LABEL_97;
            }

            __break(1u);
            goto LABEL_62;
          }

          __break(1u);
          goto LABEL_228;
        }

LABEL_233:
        *&v154.f_bsize = 0;
        v154.f_blocks = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        *&v154.f_bsize = 0xD000000000000014;
        v154.f_blocks = 0x80000001814813E0;
        LODWORD(v152) = v15;
        v141 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v142;
        MEMORY[0x1865CB0E0](v141);

        while (1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_235:
          v152 = 0;
          v153 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v152 = 0xD000000000000014;
          v153 = 0x80000001814813E0;
          LODWORD(v149) = v22;
          v143 = dispatch thunk of CustomStringConvertible.description.getter();
          v22 = v144;
          MEMORY[0x1865CB0E0](v143);
        }
      }

      if (MEMORY[0x1865CA7A0]() == 13)
      {
LABEL_154:
        result = v11;
        return closedir(result);
      }
    }

    else
    {
      result = MEMORY[0x1865CA7A0]();
      if (result == 13)
      {
        return result;
      }

      v11 = 0;
    }

    v14 = MEMORY[0x1865CA7A0]();
    LODWORD(v15) = v14;
    v148 = v11;
    if (v14 > 26)
    {
      if (v14 == 27)
      {
        v16 = 263;
        goto LABEL_68;
      }

      if (v14 != 63)
      {
        if (v14 == 102)
        {
          v20 = 0;
          v21 = 256;
          goto LABEL_200;
        }

LABEL_65:
        v16 = 256;
        goto LABEL_68;
      }

      v16 = 258;
    }

    else
    {
      if (v14 == 1)
      {
LABEL_21:
        v16 = 257;
        goto LABEL_68;
      }

      if (v14 != 2)
      {
        if (v14 == 13)
        {
          goto LABEL_21;
        }

        goto LABEL_65;
      }

      v16 = 260;
    }

LABEL_68:
    v145 = v16;
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
      goto LABEL_233;
    }

    v15 = @"NSPOSIXErrorDomain";
    v34 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v35 = @"NSPOSIXErrorDomain";
    v36 = v35;
    LODWORD(v146) = v34;
    v147 = a1;
    if (v34)
    {
      v37 = _objc_getTaggedPointerTag(v35);
      if (v37)
      {
        if (v37 != 22)
        {
          if (v37 == 2)
          {
            MEMORY[0x1EEE9AC00](v37);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_119;
          }

          goto LABEL_74;
        }

        v40 = [(__CFString *)v36 UTF8String];
        if (!v40)
        {
LABEL_228:
          __break(1u);
          goto LABEL_229;
        }

        String.init(utf8String:)(v40);
        if (v41)
        {
          goto LABEL_75;
        }

        __break(1u);
      }

      LOWORD(v149) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v42)
      {
        goto LABEL_75;
      }

      [(__CFString *)v36 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_119;
    }

LABEL_74:
    LOBYTE(v152) = 0;
    *&v154.f_bsize = 0;
    LOBYTE(v149) = 0;
    LOBYTE(v150) = 0;
    if (__CFStringIsCF())
    {
LABEL_75:

      goto LABEL_119;
    }

    v38 = v36;
    String.init(_nativeStorage:)();
    if (!v39 && (*&v154.f_bsize = [(__CFString *)v38 length]) != 0)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

LABEL_119:
    v65 = POSIXErrorCode.rawValue.getter();
    v66 = objc_allocWithZone(NSError);
    v67 = String._bridgeToObjectiveCImpl()();

    v15 = _NativeDictionary.bridged()();
    v20 = [v66 initWithDomain:v67 code:v65 userInfo:v15];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v68 = [v20 domain];
    if (!v68)
    {
LABEL_129:
      v73 = 0;
      v75 = 0xE000000000000000;
      goto LABEL_159;
    }

    v15 = v68;
    v69 = _objc_isTaggedPointer(v68);
    v70 = v15;
    v71 = v70;
    if ((v69 & 1) == 0)
    {
      goto LABEL_125;
    }

    v72 = _objc_getTaggedPointerTag(v70);
    if (v72)
    {
      if (v72 != 22)
      {
        if (v72 == 2)
        {
          v15 = &v145;
          MEMORY[0x1EEE9AC00](v72);
          v73 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v75 = v74;

          goto LABEL_159;
        }

LABEL_125:
        LOBYTE(v152) = 0;
        *&v154.f_bsize = 0;
        LOBYTE(v149) = 0;
        LOBYTE(v150) = 0;
        if (__CFStringIsCF())
        {
          LODWORD(v15) = v154.f_bsize;

          goto LABEL_129;
        }

        v15 = v71;
        v76 = String.init(_nativeStorage:)();
        if (v77)
        {
          v73 = v76;
          v75 = v77;

          goto LABEL_159;
        }

        *&v154.f_bsize = [(__CFString *)v15 length];
        if (!*&v154.f_bsize)
        {

          goto LABEL_129;
        }

        v73 = String.init(_cocoaString:)();
        v75 = v92;
LABEL_158:

LABEL_159:
        v93 = v36;
        v94 = v93;
        if (!v146)
        {
          goto LABEL_164;
        }

        v95 = _objc_getTaggedPointerTag(v93);
        if (v95)
        {
          if (v95 != 22)
          {
            if (v95 == 2)
            {
              v96 = v73;
              MEMORY[0x1EEE9AC00](v95);
              v97 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v99 = v98;

LABEL_191:
              v73 = v96;
              goto LABEL_195;
            }

LABEL_164:
            LOBYTE(v152) = 0;
            *&v154.f_bsize = 0;
            LOBYTE(v149) = 0;
            LOBYTE(v150) = 0;
            IsCF = __CFStringIsCF();
            if (IsCF)
            {
              if (*&v154.f_bsize)
              {
                if (v150 == 1)
                {
                  if (v152)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v107 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_194;
                }

                if (v149)
                {
                  v96 = v73;
                  if (v152 != 1)
                  {
                    IsCF = [(__CFString *)v94 lengthOfBytesUsingEncoding:4];
                  }

                  MEMORY[0x1EEE9AC00](IsCF);
                  v109 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v99 = v110;
                  v111 = HIBYTE(v110) & 0xF;
                  if ((v110 & 0x2000000000000000) == 0)
                  {
                    v111 = v109 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v111)
                  {
                    v97 = v109;

                    goto LABEL_191;
                  }
                }

LABEL_193:
                v107 = String.init(_cocoaString:)();
LABEL_194:
                v97 = v107;
                v99 = v108;
LABEL_195:
                a1 = v147;
                if (v73 == v97 && v75 == v99)
                {
                }

                else
                {
                  v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v112 & 1) == 0)
                  {
                    goto LABEL_225;
                  }
                }

                v21 = v145;
LABEL_200:

                URL.init(_fileManagerFailableFileURLWithPath:)(a1, a2, &v154);

                v113 = *&v154.f_bsize;
                v114 = v154.f_blocks;
                v115 = String._bridgeToObjectiveCImpl()();
                if (v113)
                {
                  v116 = swift_getObjectType();
                  v117 = (*(v114 + 432))(v116, v114);
                  swift_unknownObjectRelease();
                  if (v20)
                  {
LABEL_202:
                    v152 = v20;
                    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                    v20 = v20;
                    v118 = _getErrorEmbeddedNSError<A>(_:)();

                    if (v118)
                    {
                    }

                    else
                    {
                      swift_allocError();
                      *v120 = v20;
                    }

                    v119 = _swift_stdlib_bridgeErrorToNSError();
LABEL_208:
                    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                    swift_unknownObjectRelease();

                    swift_willThrow();
                    result = v148;
                    if (!v148)
                    {
                      return result;
                    }

                    return closedir(result);
                  }
                }

                else
                {
                  v117 = 0;
                  if (v20)
                  {
                    goto LABEL_202;
                  }
                }

                v119 = 0;
                goto LABEL_208;
              }
            }

            else
            {
              v101 = v94;
              v102 = String.init(_nativeStorage:)();
              if (v103)
              {
                v97 = v102;
                v99 = v103;

                goto LABEL_195;
              }

              *&v154.f_bsize = [(__CFString *)v101 length];
              if (*&v154.f_bsize)
              {
                goto LABEL_193;
              }
            }

            v97 = 0;
            v99 = 0xE000000000000000;
            goto LABEL_195;
          }

          v104 = [(__CFString *)v94 UTF8String];
          if (!v104)
          {
LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
            goto LABEL_231;
          }

          v105 = String.init(utf8String:)(v104);
          if (v106)
          {
LABEL_177:
            v97 = v105;
            v99 = v106;

            goto LABEL_195;
          }

          __break(1u);
        }

        LOWORD(v149) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v105 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v106)
        {
          [(__CFString *)v94 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v97 = v152;
          v99 = v153;
          goto LABEL_195;
        }

        goto LABEL_177;
      }

      v78 = [(__CFString *)v71 UTF8String];
      if (!v78)
      {
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
        goto LABEL_233;
      }

      v79 = String.init(utf8String:)(v78);
      if (v80)
      {
LABEL_134:
        v73 = v79;
        v75 = v80;

        goto LABEL_158;
      }

      __break(1u);
    }

    LOWORD(v149) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v80)
    {
      LODWORD(v15) = [(__CFString *)v71 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v73 = v152;
      v75 = v153;
      goto LABEL_158;
    }

    goto LABEL_134;
  }

  return result;
}

__CFString *one-time initialization function for _catInfoKeys()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeyaGMd, &_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeyaGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1812354D0;
  *(v0 + 32) = @"NSFileHFSCreatorCode";
  *(v0 + 40) = @"NSFileHFSTypeCode";
  *(v0 + 48) = @"NSFileBusy";
  *(v0 + 56) = @"NSFileExtensionHidden";
  *(v0 + 64) = @"NSFileCreationDate";
  static _FileManagerImpl._catInfoKeys = v0;
  v1 = @"NSFileHFSCreatorCode";
  v2 = @"NSFileHFSTypeCode";
  v3 = @"NSFileBusy";
  v4 = @"NSFileExtensionHidden";

  return @"NSFileCreationDate";
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

id StringProtocol.removingPercentEncoding.getter(uint64_t a1, uint64_t a2)
{
  StringProtocol._ephemeralString.getter();
  v2 = String._bridgeToObjectiveCImpl()();

  v3 = [v2 stringByRemovingPercentEncoding];
  swift_unknownObjectRelease();
  if (!v3)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v3);
  v5 = v3;
  v6 = v5;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v18 = v19;
    }

LABEL_22:

    return v18;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v8;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v10 = v6;
    v11 = String.init(_nativeStorage:)();
    if (v12)
    {
      v13 = v11;

      return v13;
    }

    if (![v10 length])
    {

      return 0;
    }

    v18 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v6 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v14)
    {
      v15 = result;

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

NSPointerArray *_myersDescent(void *a1, void *a2, uint64_t a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = [a2 count];
  v7 = [a1 count];
  if (v6 >> 60)
  {
LABEL_59:
    v44 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v45 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v44 userInfo:0];
    CFRelease(v44);
    objc_exception_throw(v45);
  }

  v8 = v7;
  if (v6 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v60 = 0;
  if (v6 >= 0x101)
  {
    v12 = _CFCreateArrayStorage();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [a2 getObjects:v12 range:{0, v6, v10}];
  if (v8 >> 60)
  {
    v46 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8);
    v47 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v46 userInfo:0];
    CFRelease(v46);
    objc_exception_throw(v47);
  }

  if (v8 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v8;
  }

  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = 0;
  v59 = 0;
  if (v8 >= 0x101)
  {
    v17 = _CFCreateArrayStorage();
    v16 = v17;
  }

  [a1 getObjects:v16 range:{0, v8}];
  v18 = [[NSPointerArray alloc] initWithOptions:2];
  v48 = v17;
  v49 = v13;
  v57 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v58 = 0;
  v50 = v8 + v6;
  v51 = v18;
  *v57 = 0;
  v19 = 1;
  do
  {
    if (!v57)
    {
      __assert_rtn("_myersDescent", "NSArray+NSArrayDiffing.m", 48, "prev_v");
    }

    [(NSPointerArray *)v18 addPointer:?];
    v20 = malloc_type_malloc(8 * v58 + 8, 0x100004000313F17uLL);
    if (!v20)
    {
      qword_1EA7BB378 = "Out of memory";
      __break(1u);
      goto LABEL_59;
    }

    v21 = -v58;
    v55 = v20;
    v56 = v21 ^ (v21 >> 63);
    v52 = v19;
    v53 = v16;
    v22 = v16;
    v23 = v19;
    v24 = -v58;
    v54 = -v58;
    do
    {
      if (v24 == v21)
      {
        v25 = v57[v56];
      }

      else
      {
        v26 = 1 - v24;
        if (v24 >= 2)
        {
          v26 = v24 - 2;
        }

        v27 = v57[v26];
        if (v24 == v58 || (v25 = v57[v24 ^ (v24 >> 63)], v27 >= v25))
        {
          v25 = v27 + 1;
        }
      }

      v28 = v25 - v24;
      v29 = v25 - v24 < v8;
      v30 = v25 < v6;
      v31 = v25 >= v6 || v28 >= v8;
      if (v31)
      {
LABEL_35:
        v34 = v24 - 1;
        if (v24 < 1)
        {
          v34 = -v24;
        }

        v20[v34] = v25;
        if (!v30 && !v29)
        {
          free(v20);
          v57 = 0;
          goto LABEL_45;
        }
      }

      else
      {
        v32 = v25 + v23;
        while (((*(a3 + 16))(a3, *&v12[8 * v25], *&v22[8 * v25]) & 1) != 0)
        {
          ++v25;
          v29 = v32 < v8;
          v33 = v32 + 1;
          v30 = v25 < v6;
          if (v25 < v6)
          {
            v31 = v32++ >= v8;
            if (!v31)
            {
              continue;
            }
          }

          v28 = v33 - 1;
          v21 = v54;
          v20 = v55;
          goto LABEL_35;
        }

        v35 = v24 - 1;
        if (v24 < 1)
        {
          v35 = -v24;
        }

        v21 = v54;
        v20 = v55;
        v55[v35] = v25;
        v28 = v32 - 1;
      }

      v24 += 2;
      v23 -= 2;
      v22 -= 16;
    }

    while (v24 <= v58);
    v57 = v20;
LABEL_45:
    v36 = v28 >= v8 && v25 >= v6;
    v18 = v51;
    if (v36)
    {
      break;
    }

    v37 = v58;
    v19 = v52 + 1;
    v16 = v53 + 8;
    ++v58;
  }

  while (v37 != v50);
  v38 = "x >= n && y >= m";
  v39 = 91;
  if (v25 < v6 || (v41 = v48, v40 = v49, v28 < v8))
  {
LABEL_57:
    __assert_rtn("_myersDescent", "NSArray+NSArrayDiffing.m", v39, v38);
  }

  v42 = v57;
  if (v57 && v42 != [(NSPointerArray *)v51 pointerAtIndex:[(NSPointerArray *)v51 count:91]- 1])
  {
    v38 = "v == NULL || v == [result pointerAtIndex:result.count - 1]";
    v39 = 92;
    goto LABEL_57;
  }

  free(v41);
  free(v40);
  return v18;
}

NSUUID __swiftcall UUID._bridgeToObjectiveC()()
{
  v1 = type metadata accessor for __NSConcreteUUID();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR_____NSConcreteUUID__storage] = *v0;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for _LocaleAutoupdating(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, a2, type metadata accessor for _LocaleAutoupdating, &protocol conformance descriptor for _LocaleAutoupdating);
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.identifier.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 64))(ObjectType, v1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t one-time initialization function for autoupdatingCurrentNSLocale()
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v1 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating, &protocol conformance descriptor for _LocaleAutoupdating);
  v2 = type metadata accessor for _NSSwiftLocale();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____NSSwiftLocale_locale];
  *v4 = inited;
  v4[1] = v1;
  v5 = String._bridgeToObjectiveCImpl()();
  v8.receiver = v3;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithLocaleIdentifier_, v5);
  result = swift_unknownObjectRelease();
  static LocaleCache.autoupdatingCurrentNSLocale = v6;
  return result;
}

uint64_t convertTextToInteger(char *a1, uint64_t *a2, int a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  *__error() = 0;
  v6 = strtoll_l(a1, v13, a3, 0);
  if (*__error() != 34)
  {
    if (v13[0] && v13[0] != a1 && !*v13[0])
    {
      *a2 = v6;
      return 292;
    }

    goto LABEL_14;
  }

  v12 = 0;
  *__error() = 0;
  v7 = strtoull_l(a1, &v12, a3, 0);
  v9 = *__error() == 34 || v12 == 0 || v12 == a1;
  if (v9 || *v12)
  {
LABEL_14:
    v10 = [[NSString alloc] initWithCString:a1];
    *a2 = [[NSDecimalNumber alloc] initWithString:v10];

    return 294;
  }

  *a2 = [[NSNumber alloc] initWithUnsignedLongLong:v7];
  return 294;
}

uint64_t specialized static UUID._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  type metadata accessor for __NSConcreteUUID();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR_____NSConcreteUUID__storage);
  }

  else
  {
    v7 = 0uLL;
    [a1 getUUIDBytes_];
    v5 = v7;
  }

  *a2 = v5;
  *(a2 + 16) = 0;
  return 1;
}

uint64_t StringProtocol._asContiguousUTF8Substring(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  if (v4 != MEMORY[0x1E69E6158])
  {
    v9 = *(v7 + 16);
    if (v4 == MEMORY[0x1E69E67B0])
    {
      (v9)(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5, MEMORY[0x1E69E67B0], v8);
      swift_dynamicCast();
      if ((v14[3] & 0x1000000000000000) == 0)
      {
LABEL_8:
        v11 = Substring.subscript.getter();
        goto LABEL_9;
      }
    }

    else
    {
      v9(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v8);
      Substring.init<A>(_:)();
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_11:

    return 0;
  }

  (*(v7 + 16))(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5, MEMORY[0x1E69E6158], v8);
  swift_dynamicCast();
  if ((v14[1] & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v11 = String.subscript.getter();
LABEL_9:
  v12 = v11;

  return v12;
}

id _BridgedURL.absoluteString.getter(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(v4 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) *a1];
  if (result)
  {
    v6 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v8 = v6;
    v9 = v8;
    if (!isTaggedPointer)
    {
LABEL_7:
      if (__CFStringIsCF())
      {

        return 0;
      }

      v12 = v9;
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

    TaggedPointerTag = _objc_getTaggedPointerTag(v8);
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
        [v9 mutableCopy];
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
        v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v11;
      }

      goto LABEL_7;
    }

    result = [v9 UTF8String];
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
  }

  return result;
}

uint64_t static UUID._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0;
  v10 = 0;
  v11 = 1;
  if (!a1)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized static UUID._conditionallyBridgeFromObjectiveC(_:result:)(a1, &v9);
  if (result)
  {
    if ((v11 & 1) == 0)
    {
      v5 = v9;
      v4 = v10;
      v6 = v9 >> 8;
      v7 = v9 >> 16;
      *a2 = v9;
      *(a2 + 1) = v6;
      *(a2 + 2) = v7;
      *(a2 + 3) = BYTE3(v5);
      *(a2 + 4) = BYTE4(v5);
      *(a2 + 5) = BYTE5(v5);
      *(a2 + 6) = BYTE6(v5);
      *(a2 + 7) = HIBYTE(v5);
      *(a2 + 8) = v4;
      return result;
    }

    goto LABEL_6;
  }

LABEL_7:
  _StringGuts.grow(_:)(25);

  type metadata accessor for NSUUID();
  v8 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v8);

  MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
  MEMORY[0x1865CB0E0](1145656661, 0xE400000000000000);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static Notification._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v5 = String._bridgeToObjectiveCImpl()();
    v11 = 0u;
    v12 = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *a2 = v5;
    result = outlined assign with take of Any?(&v11, a2 + 8);
    *(a2 + 40) = 0;
    return result;
  }

  v3 = a1;
  v4 = [v3 name];
  if ([v3 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v7 = [v3 userInfo];
  if (v7)
  {
    v8 = v7;
    v10 = 0;
    result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(v7, &v10);
    v9 = v10;
    if (!v10)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v9 = 0;
  }

  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  *a2 = v4;
  result = outlined assign with take of Any?(&v11, a2 + 8);
  *(a2 + 40) = v9;
  return result;
}

__CFString *_validateKnownUserInfoKeyTypes(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if ([a1 objectForKey:@"NSUnderlyingError"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return @"NSUnderlyingError";
    }
  }

  if ([a1 objectForKey:@"NSLocalizedDescription"] && !_NSIsNSString())
  {
    return @"NSLocalizedDescription";
  }

  if ([a1 objectForKey:@"NSLocalizedFailureReason"] && !_NSIsNSString())
  {
    return @"NSLocalizedFailureReason";
  }

  if ([a1 objectForKey:@"NSLocalizedRecoverySuggestion"] && !_NSIsNSString())
  {
    return @"NSLocalizedRecoverySuggestion";
  }

  v2 = [a1 objectForKey:@"NSLocalizedRecoveryOptions"];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  if (!_NSIsNSArray())
  {
    return @"NSLocalizedRecoveryOptions";
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    v7 = @"NSLocalizedRecoveryOptions";
LABEL_13:
    v8 = 0;
    while (1)
    {
      if (*v45 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (!_NSIsNSString())
      {
        break;
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v5)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    if ([a1 objectForKey:@"NSHelpAnchor"] && !_NSIsNSString())
    {
      return @"NSHelpAnchor";
    }

    if ([a1 objectForKey:@"NSDebugDescription"] && !_NSIsNSString())
    {
      return @"NSDebugDescription";
    }

    if ([a1 objectForKey:@"NSStringEncoding"] && !_NSIsNSNumber())
    {
      return @"NSStringEncoding";
    }

    if ([a1 objectForKey:@"NSURL"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return @"NSURL";
      }
    }

    if ([a1 objectForKey:@"NSFilePath"] && !_NSIsNSString())
    {
      return @"NSFilePath";
    }

    if ([a1 objectForKey:@"NSSourceFilePathErrorKey"] && !_NSIsNSString())
    {
      return @"NSSourceFilePathErrorKey";
    }

    if ([a1 objectForKey:@"NSDestinationFilePath"] && !_NSIsNSString())
    {
      return @"NSDestinationFilePath";
    }

    v9 = [a1 objectForKey:@"NSMultipleUnderlyingErrorsKey"];
    if (!v9)
    {
      goto LABEL_43;
    }

    v10 = v9;
    if (!_NSIsNSArray())
    {
      return @"NSMultipleUnderlyingErrorsKey";
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v40;
      v7 = @"NSMultipleUnderlyingErrorsKey";
LABEL_37:
      v14 = 0;
      while (1)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v39 objects:v38 count:16];
          if (v12)
          {
            goto LABEL_37;
          }

          goto LABEL_43;
        }
      }
    }

    else
    {
LABEL_43:
      v15 = [a1 objectForKey:@"NSDetailedErrors"];
      if (!v15)
      {
        goto LABEL_53;
      }

      v16 = v15;
      if (!_NSIsNSArray())
      {
        return @"NSDetailedErrors";
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v34 objects:v33 count:16];
      if (!v17)
      {
LABEL_53:
        v21 = [a1 objectForKey:@"NSUserStringVariant"];
        if (v21)
        {
          v22 = v21;
          if (_NSIsNSArray())
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v23 = [v22 countByEnumeratingWithState:&v29 objects:v28 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v30;
              v7 = @"NSUserStringVariant";
LABEL_57:
              v26 = 0;
              while (1)
              {
                if (*v30 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                if (!_NSIsNSString())
                {
                  return v7;
                }

                if (v24 == ++v26)
                {
                  v24 = [v22 countByEnumeratingWithState:&v29 objects:v28 count:16];
                  if (v24)
                  {
                    goto LABEL_57;
                  }

                  return 0;
                }
              }
            }
          }

          else if (!_NSIsNSString())
          {
            return @"NSUserStringVariant";
          }
        }

        return 0;
      }

      v18 = v17;
      v19 = *v35;
      v7 = @"NSDetailedErrors";
LABEL_47:
      v20 = 0;
      while (1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v34 objects:v33 count:16];
          if (v18)
          {
            goto LABEL_47;
          }

          goto LABEL_53;
        }
      }
    }
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component()
{
  result = lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component;
  if (!lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component;
  if (!lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
  }

  return result;
}

id StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v37 = String._bridgeToObjectiveCImpl()();

  v13 = String._bridgeToObjectiveCImpl()();

  v14 = String._bridgeToObjectiveCImpl()();

  if ((a6 & 1) == 0 || a3)
  {
    if ((a6 & 1) == 0 || (dispatch thunk of Collection.startIndex.getter(), dispatch thunk of Collection.endIndex.getter(), v39 >> 14 >= v40 >> 14))
    {
      v20 = StringProtocol._toUTF16Offsets(_:)();
      if (!__OFSUB__(v21, v20))
      {
        v22 = [v37 stringByReplacingOccurrencesOfString:v13 withString:v14 options:a3 range:{v20, v21 - v20}];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v22)
        {
          isTaggedPointer = _objc_isTaggedPointer(v22);
          v24 = v22;
          v18 = v24;
          if (isTaggedPointer)
          {
            TaggedPointerTag = _objc_getTaggedPointerTag(v24);
            switch(TaggedPointerTag)
            {
              case 0:
                goto LABEL_25;
              case 0x16:
                goto LABEL_32;
              case 2:
LABEL_17:
                MEMORY[0x1EEE9AC00](TaggedPointerTag);
                v25 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                return v25;
            }
          }

          if (__CFStringIsCF())
          {
LABEL_23:

            return 0;
          }

          goto LABEL_21;
        }

        return 0;
      }

      __break(1u);
    }

    __break(1u);
  }

  v15 = [v37 stringByReplacingOccurrencesOfString:v13 withString:v14];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v15)
  {
    return 0;
  }

  v16 = _objc_isTaggedPointer(v15);
  v17 = v15;
  v18 = v17;
  if (!v16)
  {
    goto LABEL_18;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v17);
  if (!TaggedPointerTag)
  {
LABEL_25:
    _CFIndirectTaggedPointerStringGetContents();
    v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v32)
    {
      v33 = v31;
    }

    else
    {
      [v18 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v33 = v39;
    }

LABEL_37:

    return v33;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (__CFStringIsCF())
    {
      goto LABEL_23;
    }

LABEL_21:
    v27 = v18;
    v28 = String.init(_nativeStorage:)();
    if (v29)
    {
      v30 = v28;

      return v30;
    }

    if (![v27 length])
    {

      return 0;
    }

    v33 = String.init(_cocoaString:)();
    goto LABEL_37;
  }

  result = [v18 UTF8String];
  if (!result)
  {
    __break(1u);
    goto LABEL_41;
  }

  result = String.init(utf8String:)(result);
  if (v34)
  {
LABEL_34:
    v36 = result;

    return v36;
  }

  __break(1u);
LABEL_32:
  result = [v18 UTF8String];
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = String.init(utf8String:)(result);
  if (v35)
  {
    goto LABEL_34;
  }

LABEL_42:
  __break(1u);
  return result;
}

void _NSXPCSerializationAddUnsignedInteger(uint64_t a1, uint64_t a2)
{
  _reserveSpace(a1, 1);
  *(*(a1 + 8216) + (*(a1 + 8200))++) = -8;
  _reserveSpace(a1, 8);
  *(*(a1 + 8216) + *(a1 + 8200)) = a2;
  *(a1 + 8200) += 8;
}

char *specialized static NSCalendar._newCalendarWithIdentifier(_:)(void *a1)
{
  v3 = *MEMORY[0x1E695E678];
  v103[0] = a1;
  if (v3 && (v102[0] = v3, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v4 = a1, v5 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v5 & 1) != 0))
  {
    v6 = 0;
  }

  else
  {
    v7 = *MEMORY[0x1E695E4D8];
    v103[0] = a1;
    if (v7 && (v102[0] = v7, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v8 = a1, v9 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v9 & 1) != 0))
    {
      v6 = 1;
    }

    else
    {
      v10 = *MEMORY[0x1E695E520];
      v103[0] = a1;
      if (v10 && (v102[0] = v10, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v11 = a1, v12 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v12 & 1) != 0))
      {
        v6 = 2;
      }

      else
      {
        v13 = *MEMORY[0x1E695E680];
        v103[0] = a1;
        if (v13 && (v102[0] = v13, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v14 = a1, v15 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v15 & 1) != 0))
        {
          v6 = 6;
        }

        else
        {
          v16 = *MEMORY[0x1E695E698];
          v103[0] = a1;
          if (v16 && (v102[0] = v16, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v17 = a1, v18 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v18 & 1) != 0))
          {
            v6 = 9;
          }

          else
          {
            v19 = *MEMORY[0x1E695E6A0];
            v103[0] = a1;
            if (v19 && (v102[0] = v19, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v20 = a1, v21 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v21 & 1) != 0))
            {
              v6 = 10;
            }

            else
            {
              v22 = *MEMORY[0x1E695E6B8];
              v103[0] = a1;
              if (v22 && (v102[0] = v22, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v23 = a1, v24 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v24 & 1) != 0))
              {
                v6 = 11;
              }

              else
              {
                v25 = *MEMORY[0x1E695E8C0];
                v103[0] = a1;
                if (v25 && (v102[0] = v25, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v26 = a1, v27 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v27 & 1) != 0))
                {
                  v6 = 13;
                }

                else
                {
                  v28 = *MEMORY[0x1E695E888];
                  v103[0] = a1;
                  if (v28 && (v102[0] = v28, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v29 = a1, v30 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v30 & 1) != 0))
                  {
                    v6 = 12;
                  }

                  else
                  {
                    v31 = *MEMORY[0x1E695E690];
                    v103[0] = a1;
                    if (v31 && (v102[0] = v31, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v32 = a1, v33 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v33 & 1) != 0))
                    {
                      v6 = 8;
                    }

                    else
                    {
                      v34 = *MEMORY[0x1E695E688];
                      v103[0] = a1;
                      if (v34 && (v102[0] = v34, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v35 = a1, v36 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v36 & 1) != 0))
                      {
                        v6 = 7;
                      }

                      else
                      {
                        v37 = *MEMORY[0x1E695E6A8];
                        v103[0] = a1;
                        if (v37 && (v102[0] = v37, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v38 = a1, v39 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v39 & 1) != 0))
                        {
                          v6 = 14;
                        }

                        else
                        {
                          v40 = *MEMORY[0x1E695E6B0];
                          v103[0] = a1;
                          if (v40 && (v102[0] = v40, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v41 = a1, v42 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v42 & 1) != 0))
                          {
                            v6 = 15;
                          }

                          else
                          {
                            v43 = *MEMORY[0x1E695E508];
                            v103[0] = a1;
                            if (v43 && (v102[0] = v43, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v44 = a1, v45 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v45 & 1) != 0))
                            {
                              v6 = 3;
                            }

                            else
                            {
                              v46 = *MEMORY[0x1E695E518];
                              v103[0] = a1;
                              if (v46 && (v102[0] = v46, type metadata accessor for CFCalendarIdentifier(0), lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier), v47 = a1, v48 = dispatch thunk of static Equatable.== infix(_:_:)(), v103[0], (v48 & 1) != 0))
                              {
                                v6 = 4;
                              }

                              else
                              {
                                v49 = *MEMORY[0x1E695E510];
                                v103[0] = a1;
                                if (!v49)
                                {
                                  return 0;
                                }

                                v102[0] = v49;
                                type metadata accessor for CFCalendarIdentifier(0);
                                lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type CFCalendarIdentifier and conformance CFCalendarIdentifier, type metadata accessor for CFCalendarIdentifier, &protocol conformance descriptor for CFCalendarIdentifier);
                                v50 = a1;
                                v51 = dispatch thunk of static Equatable.== infix(_:_:)();

                                result = 0;
                                if ((v51 & 1) == 0)
                                {
                                  return result;
                                }

                                v6 = 5;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v53 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v54 = *(v53 + 16);
  if (*(v54 + 16) && (v55 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v56 & 1) != 0))
  {
    v97 = *(*(v54 + 56) + 16 * v55);
    v57 = *(*(v54 + 56) + 16 * v55);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v53 + 24));
    if (v57)
    {
LABEL_92:
      v92 = type metadata accessor for _NSSwiftCalendar();
      v93 = objc_allocWithZone(v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMR);
      v94 = swift_allocObject();
      *(v94 + 32) = 0;
      *(v94 + 16) = v97;
      *&v93[OBJC_IVAR____NSSwiftCalendar__lock] = v94;
      v95 = *MEMORY[0x1E695D850];
      v99.receiver = v93;
      v99.super_class = v92;
      return objc_msgSendSuper2(&v99, sel_initWithCheckedCalendarIdentifier_, v95);
    }

    if (!v6)
    {
      goto LABEL_58;
    }
  }

  else
  {
    os_unfair_lock_unlock((v53 + 24));
    if (!v6)
    {
LABEL_58:
      v58 = type metadata accessor for _CalendarGregorian();
      v59 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v60 = type metadata accessor for _CalendarGregorian;
      v61 = &protocol conformance descriptor for _CalendarGregorian;
      goto LABEL_60;
    }
  }

  if (v6 == 7)
  {
    goto LABEL_58;
  }

  v58 = type metadata accessor for _CalendarICU();
  v59 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
  v60 = type metadata accessor for _CalendarICU;
  v61 = &protocol conformance descriptor for _CalendarICU;
LABEL_60:
  v62 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(v59, v60, v61);
  v104 = v6;
  v103[0] = 0;
  v103[1] = 0;
  v102[0] = 0;
  v102[1] = 0;
  v100 = 0;
  v101 = 1;
  v63 = (*(v62 + 16))(&v104, v103, v102, 0, 1, 0, 1, &v100, v58, v62);
  os_unfair_lock_lock((v53 + 24));
  v64 = *(v53 + 16);
  if (*(v64 + 16))
  {
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    if (v66)
    {
      v67 = *(*(v64 + 56) + 16 * v65);
LABEL_91:
      v97 = v67;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v53 + 24));
      swift_unknownObjectRelease();
      goto LABEL_92;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v103[0] = *(v53 + 16);
  v69 = v103[0];
  v70 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  v72 = v69[2];
  v73 = (v71 & 1) == 0;
  v74 = __OFADD__(v72, v73);
  v75 = v72 + v73;
  if (v74)
  {
    __break(1u);
  }

  else
  {
    v1 = v71;
    if (v69[3] < v75)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v75, isUniquelyReferenced_nonNull_native);
      v76 = v103[0];
      v70 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if ((v1 & 1) == (v77 & 1))
      {
        goto LABEL_69;
      }

      v70 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v76 = v69;
LABEL_69:
      if (v1)
      {
LABEL_70:
        v78 = (v76[7] + 16 * v70);
        *v78 = v63;
        v78[1] = v62;
        swift_unknownObjectRelease();
LABEL_90:
        *(v53 + 16) = v76;
        *&v67 = v63;
        *(&v67 + 1) = v62;
        goto LABEL_91;
      }

LABEL_89:
      specialized _NativeDictionary._insert(at:key:value:)(v70, v6, v63, v76, v58, v62);
      goto LABEL_90;
    }
  }

  v96 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd, "nC)");
  v79 = static _DictionaryStorage.copy(original:)();
  v76 = v79;
  if (!v69[2])
  {
LABEL_88:

    v70 = v96;
    if (v1)
    {
      goto LABEL_70;
    }

    goto LABEL_89;
  }

  result = (v79 + 64);
  v80 = (v69 + 8);
  v81 = ((1 << *(v76 + 32)) + 63) >> 6;
  if (v76 != v69 || result >= &v80[8 * v81])
  {
    result = memmove(result, v80, 8 * v81);
  }

  v82 = 0;
  v76[2] = v69[2];
  v83 = 1 << *(v69 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & v69[8];
  v86 = (v83 + 63) >> 6;
  if (v85)
  {
    do
    {
      v87 = __clz(__rbit64(v85));
      v98 = (v85 - 1) & v85;
LABEL_86:
      v90 = v87 | (v82 << 6);
      v91 = *(v69[7] + 16 * v90);
      *(v76[6] + v90) = *(v69[6] + v90);
      *(v76[7] + 16 * v90) = v91;
      result = swift_unknownObjectRetain();
      v85 = v98;
    }

    while (v98);
  }

  v88 = v82;
  while (1)
  {
    v82 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v82 >= v86)
    {
      goto LABEL_88;
    }

    v89 = v69[v82 + 8];
    ++v88;
    if (v89)
    {
      v87 = __clz(__rbit64(v89));
      v98 = (v89 - 1) & v89;
      goto LABEL_86;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFCalendarIdentifier(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle *bundle, Swift::String value, Swift::String comment)
{
  object = tableName.value._object;
  v7 = String._bridgeToObjectiveCImpl()();
  v8 = String._bridgeToObjectiveCImpl()();
  if (object)
  {
    object = String._bridgeToObjectiveCImpl()();
  }

  v9 = [(NSBundle *)bundle localizedStringForKey:v7 value:v8 table:object];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v9)
  {
    goto LABEL_13;
  }

  isTaggedPointer = _objc_isTaggedPointer(v9);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_30;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v26 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v27)
    {
      v28 = v26;
      v29 = v27;
    }

    else
    {
      [(NSString *)v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v28 = v32;
      v29 = v33;
    }

    goto LABEL_23;
  }

  if (TaggedPointerTag == 22)
  {
    v18 = [(NSString *)v12 UTF8String];
    if (v18)
    {
      v18 = String.init(utf8String:)(v18);
      if (v17)
      {
        v24 = v18;
        v25 = v17;

        v18 = v24;
        v17 = v25;
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_30:
    if (__CFStringIsCF())
    {

LABEL_13:
      v18 = 0;
      v17 = 0xE000000000000000;
      goto LABEL_26;
    }

    v19 = v12;
    v20 = String.init(_nativeStorage:)();
    if (v21)
    {
      v22 = v20;
      v23 = v21;

      v17 = v23;
      v18 = v22;
      goto LABEL_26;
    }

    if (![(NSString *)v19 length])
    {

      goto LABEL_13;
    }

    v28 = String.init(_cocoaString:)();
    v29 = v30;
LABEL_23:

    v17 = v29;
    v18 = v28;
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v16 = v15;

  v17 = v16;
  v18 = v14;
LABEL_26:
  result._object = v17;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t closure #1 in LocaleCache.fixed(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *a1;
  if (*(*a1 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      v13 = *(v10 + 56) + 16 * v11;
      v15 = *v13;
      v14 = *(v13 + 8);
      result = swift_unknownObjectRetain();
LABEL_31:
      *a4 = v15;
      a4[1] = v14;
      return result;
    }
  }

  v53 = v4;
  type metadata accessor for _LocaleICU();
  v48 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
  _s10Foundation17LocalePreferencesVSgWOi0_(v51);
  v49[6] = v51[6];
  v50[0] = v52[0];
  *(v50 + 12) = *(v52 + 12);
  v49[2] = v51[2];
  v49[3] = v51[3];
  v49[4] = v51[4];
  v49[5] = v51[5];
  v49[0] = v51[0];
  v49[1] = v51[1];
  swift_allocObject();

  v15 = _LocaleICU.init(identifier:prefs:)(a2, a3, v49);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v49[0] = *a1;
  v18 = *&v49[0];
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v21 = *(v18 + 16);
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v19;
  if (*(v18 + 24) >= v23)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v24 = v18;
      if (v19)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }

LABEL_13:
    v46 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation15_LocaleProtocol_pGMd, &_ss18_DictionaryStorageCySS10Foundation15_LocaleProtocol_pGMR);
    v28 = static _DictionaryStorage.copy(original:)();
    v24 = v28;
    if (*(v18 + 16))
    {
      v29 = (v28 + 64);
      v30 = (v18 + 64);
      v31 = ((1 << *(v24 + 32)) + 63) >> 6;
      if (v24 != v18 || v29 >= &v30[8 * v31])
      {
        memmove(v29, v30, 8 * v31);
      }

      v32 = 0;
      *(v24 + 16) = *(v18 + 16);
      v33 = 1 << *(v18 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v18 + 64);
      v36 = (v33 + 63) >> 6;
      if (v35)
      {
        do
        {
          v37 = __clz(__rbit64(v35));
          v47 = (v35 - 1) & v35;
LABEL_26:
          v40 = 16 * (v37 | (v32 << 6));
          v41 = (*(v18 + 48) + v40);
          v43 = *v41;
          v42 = v41[1];
          v44 = *(*(v18 + 56) + v40);
          v45 = (*(v24 + 48) + v40);
          *v45 = v43;
          v45[1] = v42;
          *(*(v24 + 56) + v40) = v44;

          swift_unknownObjectRetain();
          v35 = v47;
        }

        while (v47);
      }

      v38 = v32;
      while (1)
      {
        v32 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v32 >= v36)
        {
          goto LABEL_28;
        }

        v39 = *(v18 + 64 + 8 * v32);
        ++v38;
        if (v39)
        {
          v37 = __clz(__rbit64(v39));
          v47 = (v39 - 1) & v39;
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_28:

    v20 = v46;
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_29:
    specialized _NativeDictionary._insert(at:key:value:)(v20, a2, a3, v15, v24);

    v14 = v48;
    goto LABEL_30;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
  v24 = *&v49[0];
  v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v5 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v5 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_11:
    v27 = (*(v24 + 56) + 16 * v20);
    v14 = v48;
    *v27 = v15;
    v27[1] = v48;
    result = swift_unknownObjectRelease();
LABEL_30:
    *a1 = v24;
    goto LABEL_31;
  }

LABEL_33:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *__cdecl NSAllocateCollectable(NSUInteger size, NSUInteger options)
{
  v2 = options;
  v4 = malloc_default_zone();
  if (v2)
  {

    return malloc_type_zone_calloc(v4, 1uLL, size, 0x9DA5E11CuLL);
  }

  else
  {

    return malloc_type_zone_malloc(v4, size, 0x41397B7DuLL);
  }
}

uint64_t static Set._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v162 = a4;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v157 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v146 - v11;
  MEMORY[0x1EEE9AC00](v13);
  i = &v146 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v153 = (&v146 - v16);
  v161 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v160 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v146 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v152 = &v146 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v146 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v154 = &v146 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v158 = &v146 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v151 = &v146 - v31;

  v32 = type metadata accessor for NSObject();
  v33 = lazy protocol witness table accessor for type NSObject and conformance NSObject();
  swift_unknownObjectRetain();
  v163 = v32;
  v149 = v33;
  v34 = static Set._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (!v34)
  {
    v35 = [a1 copyWithZone_];
    v34 = ~(v35 >> 1) & 0x4000000000000000 | v35;
  }

  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v37 = v34 & 0xC000000000000001;
  v38 = MEMORY[0x1E69E6158];
  v159 = v34;
  v150 = a2;
  v148 = v7;
  v147 = v8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    i = v12;
    if (v37)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_9:
        type metadata accessor for _SetStorage();
        j = static _SetStorage.allocate(capacity:)();
        goto LABEL_17;
      }
    }

    else if (*(v34 + 16))
    {
      goto LABEL_9;
    }

    j = MEMORY[0x1E69E7CD0];
LABEL_17:
    v167 = j;
    v164 = j;
    if (a3 != v38)
    {
      if (v37)
      {

        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        result = v168;
        v45 = v169;
        v46 = v170;
        v47 = v171;
        v48 = v172;
      }

      else
      {
        v83 = -1 << *(v159 + 32);
        v45 = v159 + 56;
        v46 = ~v83;
        v84 = -v83;
        if (v84 < 64)
        {
          v85 = ~(-1 << v84);
        }

        else
        {
          v85 = -1;
        }

        v48 = (v85 & *(v159 + 56));

        v47 = 0;
      }

      v86 = (v46 + 64) >> 6;
      v154 = (v161 + 56);
      v152 = v46;
      v153 = (v161 + 48);
      v87 = (v161 + 32);
      v88 = j + 56;
      for (i = result; ; result = i)
      {
        if (result < 0)
        {
          v94 = __CocoaSet.Iterator.next()();
          if (!v94)
          {
            j = v164;
            goto LABEL_75;
          }

          v165 = v94;
          swift_dynamicCast();
          v93 = v166;
          v92 = v47;
          v158 = v48;
        }

        else
        {
          v90 = v47;
          v91 = v48;
          v92 = v47;
          if (!v48)
          {
            while (1)
            {
              v92 = v90 + 1;
              if (__OFADD__(v90, 1))
              {
                goto LABEL_124;
              }

              if (v92 >= v86)
              {
                break;
              }

              v91 = *(v45 + 8 * v92);
              ++v90;
              if (v91)
              {
                goto LABEL_62;
              }
            }

LABEL_75:

            v106 = i;
LABEL_110:
            outlined consume of Set<AnyKeyPath>.Iterator._Variant(v106);
LABEL_111:
            result = 1;
LABEL_116:
            v127 = v150;
LABEL_117:
            *v127 = j;
            return result;
          }

LABEL_62:
          v158 = ((v91 - 1) & v91);
          v166 = *(*(result + 48) + ((v92 << 9) | (8 * __clz(__rbit64(v91)))));
          v93 = v166;
        }

        v165 = v93;
        v95 = v157;
        v96 = swift_dynamicCast();
        (*v154)(v95, v96 ^ 1u, 1, a3);
        if ((*v153)(v95, 1, a3) == 1)
        {

          outlined consume of Set<AnyKeyPath>.Iterator._Variant(i);

          (*(v147 + 8))(v95, v148);
          goto LABEL_115;
        }

        v97 = *v87;
        v98 = v155;
        (*v87)(v155, v95, a3);
        v97(v160, v98, a3);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        j = v164;
        v99 = -1 << *(v164 + 32);
        v100 = result & ~v99;
        v101 = v100 >> 6;
        if (((-1 << v100) & ~*(v88 + 8 * (v100 >> 6))) != 0)
        {
          v89 = __clz(__rbit64((-1 << v100) & ~*(v88 + 8 * (v100 >> 6)))) | v100 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v102 = 0;
          v103 = (63 - v99) >> 6;
          do
          {
            if (++v101 == v103 && (v102 & 1) != 0)
            {
LABEL_122:
              __break(1u);
              goto LABEL_123;
            }

            v104 = v101 == v103;
            if (v101 == v103)
            {
              v101 = 0;
            }

            v102 |= v104;
            v105 = *(v88 + 8 * v101);
          }

          while (v105 == -1);
          v89 = __clz(__rbit64(~v105)) + (v101 << 6);
        }

        *(v88 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
        v97(*(j + 48) + *(v161 + 72) * v89, v160, a3);
        ++*(j + 16);
        v47 = v92;
        v48 = v158;
      }
    }

    if (v37)
    {

      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      result = v168;
      v54 = v169;
      v55 = v170;
      v56 = v171;
      v57 = v172;
    }

    else
    {
      v128 = -1 << *(v159 + 32);
      v54 = v159 + 56;
      v55 = ~v128;
      v129 = -v128;
      if (v129 < 64)
      {
        v130 = ~(-1 << v129);
      }

      else
      {
        v130 = -1;
      }

      v57 = v130 & *(v159 + 56);

      v56 = 0;
    }

    v155 = v55;
    v131 = (v55 + 64) >> 6;
    v160 = (v161 + 56);
    v157 = (v161 + 48);
    v132 = (v161 + 32);
    v133 = MEMORY[0x1E69E6158];
    v161 = result;
    if (result < 0)
    {
      goto LABEL_104;
    }

    while (1)
    {
      v134 = v56;
      v135 = v57;
      v136 = v56;
      for (j = v164; !v135; ++v134)
      {
        v136 = v134 + 1;
        if (__OFADD__(v134, 1))
        {
          goto LABEL_126;
        }

        if (v136 >= v131)
        {
          v145 = result;

          v106 = v145;
          goto LABEL_110;
        }

        v135 = *(v54 + 8 * v136);
      }

      v137 = (v135 - 1) & v135;
      v138 = *(*(result + 48) + ((v136 << 9) | (8 * __clz(__rbit64(v135)))));
      while (1)
      {
        v166 = v138;
        v121 = i;
        v140 = swift_dynamicCast();
        (*v160)(v121, v140 ^ 1u, 1, v133);
        if ((*v157)(v121, 1, v133) == 1)
        {
LABEL_114:

          outlined consume of Set<AnyKeyPath>.Iterator._Variant(v161);

          (*(v147 + 8))(v121, v148);
LABEL_115:
          j = 0;
          result = 0;
          goto LABEL_116;
        }

        v141 = *v132;
        v142 = v152;
        (*v132)(v152, v121, v133);
        v143 = v158;
        v141(v158, v142, v133);
        v144 = type metadata accessor for _NativeSet();
        _NativeSet._unsafeUpdate(with:)(v143, v144);
        v56 = v136;
        v57 = v137;
        result = v161;
        if ((v161 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_104:
        v139 = __CocoaSet.Iterator.next()();
        if (!v139)
        {

          outlined consume of Set<AnyKeyPath>.Iterator._Variant(v161);
          j = v164;
          goto LABEL_111;
        }

        v165 = v139;
        swift_dynamicCast();
        v138 = v166;
        v136 = v56;
        v137 = v57;
      }
    }
  }

  if (!v37)
  {
    if (*(v34 + 16))
    {
      goto LABEL_6;
    }

LABEL_11:
    j = MEMORY[0x1E69E7CD0];
    goto LABEL_12;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_11;
  }

LABEL_6:
  type metadata accessor for _SetStorage();
  j = static _SetStorage.allocate(capacity:)();
LABEL_12:
  v167 = j;
  v164 = j;
  if (a3 == v38)
  {
    if (v37)
    {

      __CocoaSet.makeIterator()();
      result = Set.Iterator.init(_cocoa:)();
      v50 = v168;
      v49 = v169;
      v51 = v170;
      v52 = v171;
      v53 = v172;
    }

    else
    {
      v107 = -1 << *(v34 + 32);
      v50 = v34;
      v109 = *(v34 + 56);
      v49 = v34 + 56;
      v108 = v109;
      v51 = ~v107;
      v110 = -v107;
      if (v110 < 64)
      {
        v111 = ~(-1 << v110);
      }

      else
      {
        v111 = -1;
      }

      v53 = v111 & v108;

      v52 = 0;
    }

    v112 = (v51 + 64) >> 6;
    v160 = (v161 + 56);
    i = v51;
    v157 = (v161 + 48);
    v113 = (v161 + 32);
    v114 = MEMORY[0x1E69E6158];
    v161 = v50;
    if (v50 < 0)
    {
      goto LABEL_86;
    }

LABEL_81:
    v115 = v52;
    v116 = v53;
    v117 = v52;
    j = v164;
    if (v53)
    {
LABEL_85:
      v118 = (v116 - 1) & v116;
      v119 = *(*(v50 + 48) + ((v117 << 9) | (8 * __clz(__rbit64(v116)))));
      while (1)
      {
        v166 = v119;
        v121 = v153;
        v122 = swift_dynamicCast();
        (*v160)(v121, v122 ^ 1u, 1, v114);
        if ((*v157)(v121, 1, v114) == 1)
        {
          goto LABEL_114;
        }

        v123 = *v113;
        v124 = v151;
        (*v113)(v151, v121, v114);
        v125 = v158;
        v123(v158, v124, v114);
        v126 = type metadata accessor for _NativeSet();
        result = _NativeSet._unsafeUpdate(with:)(v125, v126);
        v52 = v117;
        v53 = v118;
        v50 = v161;
        if ((v161 & 0x8000000000000000) == 0)
        {
          goto LABEL_81;
        }

LABEL_86:
        v120 = __CocoaSet.Iterator.next()();
        if (!v120)
        {
          break;
        }

        v165 = v120;
        swift_dynamicCast();
        v119 = v166;
        v117 = v52;
        v118 = v53;
      }

      outlined consume of Set<AnyKeyPath>.Iterator._Variant(v50);
      v127 = v150;
      j = v164;
    }

    else
    {
      while (1)
      {
        v117 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_125;
        }

        if (v117 >= v112)
        {
          break;
        }

        v116 = *(v49 + 8 * v117);
        ++v115;
        if (v116)
        {
          goto LABEL_85;
        }
      }

      v82 = v50;
LABEL_92:
      outlined consume of Set<AnyKeyPath>.Iterator._Variant(v82);
      v127 = v150;
    }

    result = 1;
    goto LABEL_117;
  }

  v153 = v25;
  if (v37)
  {

    j = v164;
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v34 = v168;
    v40 = v169;
    v41 = v170;
    v42 = v171;
    v43 = v172;
  }

  else
  {
    v58 = -1 << *(v34 + 32);
    v40 = v34 + 56;
    v41 = ~v58;
    v59 = -v58;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    else
    {
      v60 = -1;
    }

    v43 = (v60 & *(v34 + 56));

    v42 = 0;
  }

  v152 = v41;
  v61 = (v41 + 64) >> 6;
  v157 = (v161 + 48);
  v158 = (v161 + 56);
  v62 = (v161 + 32);
  v63 = j + 56;
  v155 = v34;
  while (v34 < 0)
  {
    v69 = __CocoaSet.Iterator.next()();
    if (!v69)
    {
      j = v164;
LABEL_49:

      v82 = v34;
      goto LABEL_92;
    }

    v165 = v69;
    swift_dynamicCast();
    v68 = v166;
    v67 = v42;
    v160 = v43;
LABEL_39:
    v165 = v68;
    v70 = i;
    v71 = swift_dynamicCast();
    (*v158)(v70, v71 ^ 1u, 1, a3);
    if ((*v157)(v70, 1, a3) == 1)
    {

      outlined consume of Set<AnyKeyPath>.Iterator._Variant(v155);

      (*(v147 + 8))(v70, v148);
      goto LABEL_115;
    }

    v72 = *v62;
    v73 = v154;
    (*v62)(v154, v70, a3);
    v74 = v153;
    v72(v153, v73, a3);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    j = v164;
    v75 = -1 << *(v164 + 32);
    v76 = result & ~v75;
    v77 = v76 >> 6;
    if (((-1 << v76) & ~*(v63 + 8 * (v76 >> 6))) != 0)
    {
      v64 = __clz(__rbit64((-1 << v76) & ~*(v63 + 8 * (v76 >> 6)))) | v76 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v78 = 0;
      v79 = (63 - v75) >> 6;
      do
      {
        if (++v77 == v79 && (v78 & 1) != 0)
        {
          __break(1u);
          goto LABEL_122;
        }

        v80 = v77 == v79;
        if (v77 == v79)
        {
          v77 = 0;
        }

        v78 |= v80;
        v81 = *(v63 + 8 * v77);
      }

      while (v81 == -1);
      v64 = __clz(__rbit64(~v81)) + (v77 << 6);
    }

    *(v63 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
    v72((*(j + 48) + *(v161 + 72) * v64), v74, a3);
    ++*(j + 16);
    v42 = v67;
    v43 = v160;
    v34 = v155;
  }

  v65 = v42;
  v66 = v43;
  v67 = v42;
  result = v159;
  if (v43)
  {
LABEL_36:
    v160 = ((v66 - 1) & v66);
    v166 = *(*(v34 + 48) + ((v67 << 9) | (8 * __clz(__rbit64(v66)))));
    v68 = v166;
    goto LABEL_39;
  }

  while (1)
  {
    v67 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v67 >= v61)
    {
      goto LABEL_49;
    }

    v66 = *(v40 + 8 * v67);
    ++v65;
    if (v66)
    {
      goto LABEL_36;
    }
  }

LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}