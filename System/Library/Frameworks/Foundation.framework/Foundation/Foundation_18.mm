BOOL specialized Set.contains(_:)(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void *_NSSwiftCalendar.components(_:from:to:options:)@<X0>(int a1@<W0>, double *a2@<X1>, double *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v8 = *a2;
  v9 = *a3;
  v10 = _fromNSCalendarUnits(_:)(a1);
  v11 = *&v4[OBJC_IVAR____NSSwiftCalendar__lock];
  os_unfair_lock_lock((v11 + 32));
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v11 + 32));

  Calendar.ComponentSet.init(_:)(v14, &v26);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v15 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v8)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v16)
  {
    v16 = *&static Date.validCalendarRange;
  }

  v28 = v16;
  if (*(&static Date.validCalendarRange + 1) >= v9)
  {
    v15 = v9;
  }

  if (*&static Date.validCalendarRange >= v15)
  {
    v17 = *&static Date.validCalendarRange;
  }

  else
  {
    v17 = v15;
  }

  ObjectType = swift_getObjectType();
  v27 = v17;
  (*(v13 + 208))(&v29, &v26, &v28, &v27, ObjectType, v13);
  v19 = specialized Set.contains(_:)(0xEu, v10);

  if (!v19)
  {
    goto LABEL_17;
  }

  *&v29 = v12;
  *(&v29 + 1) = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v30)
  {
    goto LABEL_17;
  }

  if (v12)
  {
    v26 = v30;
    swift_unknownObjectRetain_n();
    Calendar.timeZone.setter(&v26);
    swift_unknownObjectRelease();
LABEL_17:
    swift_unknownObjectRelease();
  }

  __src[12] = v41;
  __src[13] = v42;
  __src[14] = v43;
  __src[15] = v44;
  __src[8] = v37;
  __src[9] = v38;
  __src[10] = v39;
  __src[11] = v40;
  __src[4] = v33;
  __src[5] = v34;
  __src[6] = v35;
  __src[7] = v36;
  __src[0] = v29;
  __src[1] = v30;
  __src[2] = v31;
  __src[3] = v32;
  v20 = v45;
  v21 = v46;
  *&__src[16] = v45;
  BYTE8(__src[16]) = v46;
  *(&__src[16] + 9) = v47;
  *(&__src[17] + 9) = v48;
  if ((a1 & 0x100000) != 0)
  {
    v22 = v5;
    os_unfair_lock_lock((v11 + 32));
    v23 = *(v11 + 16);
    v24 = *(v11 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v11 + 32));

    swift_unknownObjectRelease();
    *&__src[0] = v23;
    *(&__src[0] + 1) = v24;
    if (*&__src[1])
    {
      if (v23)
      {
        v26 = __src[1];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(&v26);
      }
    }
  }

  if ((a1 & 0x100) != 0)
  {
    *&__src[14] = v20;
    BYTE8(__src[14]) = v21 & 1;
  }

  return memcpy(a4, __src, 0x11BuLL);
}

uint64_t _CalendarGregorian.minimumDaysInFirstWeek.getter()
{
  if (*(v0 + 152) != 1)
  {
    return *(v0 + 144);
  }

  if (!*(v0 + 96))
  {
    return 1;
  }

  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 344);
  swift_unknownObjectRetain();
  v4 = v3(ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t specialized _NSSwiftCalendar.calendarIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  ObjectType = swift_getObjectType();
  (*(v2 + 24))(&v5, ObjectType, v2);
  swift_unknownObjectRelease();
  return specialized static Calendar._toNSCalendarIdentifier(_:)(&v5);
}

void *_NSSwiftCalendar.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v3 + 32));
  v9 = *(v3 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 32));
  v4 = type metadata accessor for _NSSwiftCalendar();
  v5 = objc_allocWithZone(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 16) = v9;
  *&v5[OBJC_IVAR____NSSwiftCalendar__lock] = v6;
  v7 = *MEMORY[0x1E695D850];
  v10.receiver = v5;
  v10.super_class = v4;
  result = objc_msgSendSuper2(&v10, sel_initWithCheckedCalendarIdentifier_, v7);
  if (result)
  {
    a1[3] = v4;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Foundation::Date __swiftcall Calendar.startOfDay(for:)(Foundation::Date a1)
{
  v4 = v2;
  v5 = *v1;
  v6 = *(v3 + 8);
  v12 = 3;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v7 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v7 = v5;
  }

  if (*&static Date.validCalendarRange >= v7)
  {
    v8 = *&static Date.validCalendarRange;
  }

  else
  {
    v8 = v7;
  }

  ObjectType = swift_getObjectType();
  v11 = v8;
  (*(v6 + 160))(v13, &v12, &v11, ObjectType, v6);
  if (v14)
  {
    result._time = v5 + -1.0;
  }

  else
  {
    result._time = v13[0];
  }

  *v4 = result._time;
  return result;
}

uint64_t JSONDecoderImpl.decode<A>(_:)@<X0>(ValueMetadata *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v11 = *(v5 + 16);
  v12 = *(v11 + 2);
  if (!v12)
  {
    __break(1u);
LABEL_48:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    *(v5 + 16) = v11;
LABEL_26:
    v37 = *(v11 + 2);
    v36 = *(v11 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v11);
      v38 = v37 + 1;
      v11 = v52;
    }

    *(v11 + 2) = v38;
    v39 = &v11[24 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v8;
    v39[48] = v7;
    *(v5 + 16) = v11;
    v58 = type metadata accessor for JSONDecoderImpl();
    v59 = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl, &protocol conformance descriptor for JSONDecoderImpl);
    v55 = v5;
    v16 = v5;

    dispatch thunk of Decodable.init(from:)();
    LODWORD(v7) = v54;
    if (v54)
    {
      v6 = *(v5 + 160);
      *(v5 + 160) = v4;

      v40 = *(v5 + 16);
      if (*(v40 + 2))
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v41 = *(v40 + 2);
          if (!v41)
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_42:
          *(v40 + 2) = v41 - 1;
          v16[1].Kind = v40;
        }
      }

      else
      {
        __break(1u);
      }

      v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
      v41 = *(v40 + 2);
      if (!v41)
      {
        goto LABEL_32;
      }

      goto LABEL_42;
    }

    *(v5 + 160) = v4;

    v40 = *(v5 + 16);
    if (*(v40 + 2))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v41 = *(v40 + 2);
        if (v41)
        {
          goto LABEL_42;
        }

LABEL_54:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
    v40 = result;
    v41 = *(result + 16);
    if (v41)
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

  v15 = &v11[24 * v12];
  v9 = *(v15 + 1);
  v8 = *(v15 + 2);
  v7 = v15[24];
  v4 = *(v5 + 160);
  if (a1 == &type metadata for Date)
  {

    specialized JSONDecoderImpl.unwrapDate<A>(from:for:_:)(v9, v8, v7, v4, 0, 0, 0, 255, &v55);

    if (v6)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  v60 = a4;
  if (a1 == &type metadata for Data)
  {

    v20 = specialized JSONDecoderImpl.unwrapData<A>(from:for:_:)(v9, v8, v7, v4, 0, 0, 0, 0xFF);
    v22 = v21;

    if (v6)
    {
      return result;
    }

    v55 = v20;
    v56 = v22;
    return swift_dynamicCast();
  }

  v16 = &type metadata for URL;
  if (a1 == &type metadata for URL)
  {
    if ((v7 & 0xE0) != 0xA0 || (v8 | v9) != 0)
    {
LABEL_17:

      v24 = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v9, v8, v7, v4, 0, 0, 0, 255);
      if (v6)
      {
      }

      v26 = v25;
      if (one-time initialization token for compatibility2 != -1)
      {
        v53 = v24;
        swift_once();
        v24 = v53;
      }

      v27 = v24;
      if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
      {
        v28 = type metadata accessor for _BridgedURL();
        v29 = &protocol witness table for _BridgedURL;
      }

      else
      {
        v28 = type metadata accessor for _SwiftURL();
        v29 = &protocol witness table for _SwiftURL;
      }

      v45 = v29[1];

      if (!v45(v27, v26))
      {

        v49 = type metadata accessor for DecodingError();
        swift_allocError();
        v51 = v50;
        _CodingPathNode.path.getter(v4);
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6B00], v49);
        goto LABEL_44;
      }

      v46 = (v29[56])(v28, v29);
      v48 = v47;

      swift_unknownObjectRelease();
      v55 = v46;
      v56 = v48;
      return swift_dynamicCast();
    }

LABEL_33:
    if (v7 == 160)
    {
      v42 = type metadata accessor for DecodingError();
      swift_allocError();
      v44 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v44 = v16;

      _CodingPathNode.path.getter(v4);
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](5001813, 0xE300000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6B08], v42);
LABEL_44:
      swift_willThrow();
    }

    goto LABEL_17;
  }

  v54 = v6;
  type metadata accessor for NSDecimal(0);
  if (v17 == a1)
  {

    v30 = specialized JSONDecoderImpl.unwrapDecimal<A>(from:for:_:)(v9, v8, v7, v4, 0, 0, 0, 255);
    v32 = v31;
    v34 = v33;

    if (v6)
    {
      return result;
    }

    v55 = v30;
    v56 = v32;
    v57 = v34;
    return swift_dynamicCast();
  }

  v18 = swift_conformsToProtocol2();

  if (!v18 || !a2)
  {
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 16) = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

  specialized JSONDecoderImpl.unwrapDictionary<A, B>(from:as:for:_:)(v9, v8, v7, a1, v4, 0, 0, 0, 255, a2);
}

uint64_t instantiation function for generic protocol witness table for _CalendarAutoupdating(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, a2, type metadata accessor for _CalendarAutoupdating, &protocol conformance descriptor for _CalendarAutoupdating);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *NSKeyValueGetImplicitObservanceAdditionInfo()
{
  v0 = _CFGetTSD();
  if (!v0)
  {
    v1 = malloc_default_zone();
    v0 = malloc_type_zone_calloc(v1, 1uLL, 0x58uLL, 0x2C221C3EuLL);
    _CFSetTSD();
  }

  return (v0 + 16);
}

Class _NSBundleGetPrincipalClassFromInfoDict(unint64_t *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(a1 + 1);
  if ((v2 & 0x4000000) == 0)
  {
    v3 = _NSOSLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    *v21 = 138412290;
    *&v21[4] = [a1 bundleURL];
    v20 = "NSBundle %@ principal class is nil because the bundle is not loaded";
LABEL_20:
    _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, v20, v21, 0xCu);
    return 0;
  }

  v5 = [a1 infoDictionary];
  v6 = [v5 objectForKey:@"NSPrincipalClass"];
  v7 = a1[7];
  if (v6)
  {
    v8 = v6;
    result = NSClassFromString(v6);
    if (result)
    {
      return result;
    }

    if (v7)
    {
      v9 = _NSOSLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v21 = 138412802;
        *&v21[4] = [a1 bundleURL];
        *&v21[12] = 2112;
        *&v21[14] = v7;
        *&v21[22] = 2112;
        v22 = v8;
        v10 = "NSBundle %@ principal class is using first class name %@ because the bundle's principal class name %@ is not present";
        v11 = v9;
        v12 = 32;
LABEL_22:
        _os_log_debug_impl(&dword_18075C000, v11, OS_LOG_TYPE_DEBUG, v10, v21, v12);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

LABEL_17:
    v3 = _NSOSLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    *v21 = 138412290;
    *&v21[4] = [a1 bundleURL];
    v20 = "NSBundle %@ principal class is nil because all fallbacks have failed";
    goto LABEL_20;
  }

  if (!v7)
  {
    v14 = [objc_msgSend(a1 "bundlePath")];
    v15 = +[__NSBundleTables bundleTables];
    v16 = [(__NSBundleTables *)v15 bundleForPath:v14];
    if (v16)
    {
      v17 = v16;
      if (v16 != a1)
      {
        os_unfair_lock_lock(v16 + 16);
        v18 = v17[7];
        os_unfair_lock_unlock(v17 + 16);
        if (v18)
        {
          [v5 setObject:v18 forKey:@"NSPrincipalClass"];
          v19 = NSClassFromString(v18);

          return v19;
        }
      }
    }

    goto LABEL_17;
  }

  v13 = _NSOSLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 138412546;
    *&v21[4] = [a1 bundleURL];
    *&v21[12] = 2112;
    *&v21[14] = v7;
    v10 = "NSBundle %@ principal class is using first class name %@ because the bundle has no principal class name";
    v11 = v13;
    v12 = 22;
    goto LABEL_22;
  }

LABEL_11:
  [v5 setObject:v7 forKey:{@"NSPrincipalClass", *v21, *&v21[8], v22}];
  return NSClassFromString(v7);
}

uint64_t _NSBundleImagesLoadedCallback(unsigned int a1, const void *a2)
{
  result = _CFGetTSD();
  if (result == 1)
  {
    v5 = malloc_type_calloc(a1 + 1, 8uLL, 0x6004044C4A2DFuLL);
    memcpy(v5, a2, 8 * a1);
    *(v5 + a1) = 0;

    return _CFSetTSD();
  }

  return result;
}

uint64_t _NSBundleInitializePrincipalClass(uint64_t result)
{
  if (result)
  {
    Class = object_getClass(result);
    result = class_respondsToSelector(Class, sel_self);
    if (result)
    {

      return objc_opt_self();
    }
  }

  return result;
}

_OWORD *_sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_So8NSStringC_ypTt3g5Tf4xxnn_n(_OWORD *result, uint64_t a2, id a3, uint64_t a4)
{
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2)
  {
    v6 = result;
    result = [a3 _getObjects_andKeys_count_];
    if ((a4 & 0x8000000000000000) == 0)
    {
      if (!a4)
      {
        return a4;
      }

      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString, off_1E69EE918);
      v7 = a4;
      do
      {
        *&v13 = *v6;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        *v6++ = v14;
        --v7;
      }

      while (v7);
      v8 = (a2 + 8 * a4 - 8);
      v9 = (a2 + 32 * a4 - 32);
      v10 = a4;
      while (v10-- >= 1)
      {
        v12 = *v8--;
        v14 = v12;
        swift_unknownObjectRetain();
        swift_dynamicCast();
        result = outlined init with take of Any(&v13, v9);
        v9 -= 2;
        if (!v10)
        {
          return a4;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

void specialized NSKeyValueObservation.Helper._swizzle_me_observeValue(forKeyPath:of:change:context:)(uint64_t a1, uint64_t a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_lock);
  os_unfair_lock_lock(v5);
  outlined init with copy of Any?(a1, &v81);
  if (!v83)
  {
    outlined destroy of TermOfAddress?(&v81, &_sypSgMd, &_sypSgMR);
    goto LABEL_22;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    os_unfair_lock_unlock(v5);
    return;
  }

  v6 = v88;
  v7 = *(v2 + OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_unsafeUnretainedObject);
  if (v7)
  {
    Strong = v7;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_22;
    }
  }

  if (v6 != Strong)
  {

    goto LABEL_22;
  }

  v76 = Strong;
  if (!a2)
  {

    goto LABEL_22;
  }

  v9 = v6;
  os_unfair_lock_unlock(v5);
  isTaggedPointer = _objc_isTaggedPointer(@"kind");
  v11 = @"kind";
  v12 = v11;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v11);
    switch(TaggedPointerTag)
    {
      case 0:
        LOWORD(v79) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v18)
        {
          [(__CFString *)v12 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_39;
        }

        goto LABEL_37;
      case 0x16:
        v16 = [(__CFString *)v12 UTF8String];
        if (!v16)
        {
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        String.init(utf8String:)(v16);
        if (!v17)
        {
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        goto LABEL_37;
      case 2:
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_39;
    }
  }

  LOBYTE(v88) = 0;
  v81 = 0;
  LOBYTE(v79) = 0;
  LOBYTE(v78[0]) = 0;
  if (!__CFStringIsCF())
  {
    v14 = v12;
    String.init(_nativeStorage:)();
    if (v15 || (v81 = [(__CFString *)v14 length]) == 0)
    {

      goto LABEL_39;
    }

LABEL_38:
    String.init(_cocoaString:)();
    goto LABEL_39;
  }

  if (!v81)
  {
LABEL_37:

    goto LABEL_39;
  }

  if (LOBYTE(v78[0]) != 1)
  {
    goto LABEL_38;
  }

  if (v88)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_39:
  v75 = v2;
  v19 = String._bridgeToObjectiveCImpl()();
  if (!*(a2 + 16) || (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v21 & 1) == 0))
  {
    swift_unknownObjectRelease();
    __break(1u);
    goto LABEL_149;
  }

  v22 = v20;

  outlined init with copy of Any(*(a2 + 56) + 32 * v22, &v88);
  swift_unknownObjectRelease();
  outlined init with take of Any(&v88, &v81);
  swift_dynamicCast();
  v23 = v79;
  v24 = _objc_isTaggedPointer(@"new");
  v25 = @"new";
  v26 = v25;
  if (!v24)
  {
LABEL_46:
    LOBYTE(v88) = 0;
    v81 = 0;
    LOBYTE(v79) = 0;
    LOBYTE(v78[0]) = 0;
    if (!__CFStringIsCF())
    {
      v28 = v26;
      String.init(_nativeStorage:)();
      if (v29 || (v81 = [(__CFString *)v28 length]) == 0)
      {

        goto LABEL_67;
      }

LABEL_66:
      String.init(_cocoaString:)();
      goto LABEL_67;
    }

    if (v81)
    {
      if (LOBYTE(v78[0]) == 1)
      {
        if (v88)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_67;
      }

      goto LABEL_66;
    }

LABEL_65:

    goto LABEL_67;
  }

  v27 = _objc_getTaggedPointerTag(v25);
  if (!v27)
  {
    LOWORD(v79) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v32)
    {
      [(__CFString *)v26 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (v27 == 22)
  {
    v30 = [(__CFString *)v26 UTF8String];
    if (v30)
    {
      String.init(utf8String:)(v30);
      if (!v31)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      goto LABEL_65;
    }

LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v27 != 2)
  {
    goto LABEL_46;
  }

  MEMORY[0x1EEE9AC00](v27);
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_67:
  v33 = String._bridgeToObjectiveCImpl()();

  if (*(a2 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v35 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v34, &v88);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v89 = 0u;
    v88 = 0u;
  }

  v36 = _objc_isTaggedPointer(@"old");
  v37 = @"old";
  v38 = v37;
  if (!v36)
  {
    goto LABEL_76;
  }

  v39 = _objc_getTaggedPointerTag(v37);
  if (!v39)
  {
    LOWORD(v78[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v44)
    {
      [(__CFString *)v38 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  if (v39 == 22)
  {
    v42 = [(__CFString *)v38 UTF8String];
    if (v42)
    {
      String.init(utf8String:)(v42);
      if (!v43)
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      goto LABEL_90;
    }

LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v39 != 2)
  {
LABEL_76:
    LOBYTE(v79) = 0;
    v81 = 0;
    LOBYTE(v78[0]) = 0;
    LOBYTE(v77) = 0;
    if (!__CFStringIsCF())
    {
      v40 = v38;
      String.init(_nativeStorage:)();
      if (v41 || (v81 = [(__CFString *)v40 length]) == 0)
      {

        goto LABEL_92;
      }

LABEL_91:
      String.init(_cocoaString:)();
      goto LABEL_92;
    }

    if (v81)
    {
      goto LABEL_91;
    }

LABEL_90:

    goto LABEL_92;
  }

  MEMORY[0x1EEE9AC00](v39);
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_92:
  v45 = String._bridgeToObjectiveCImpl()();

  if (*(a2 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v45), (v47 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v46, &v79);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v80 = 0u;
    v79 = 0u;
  }

  v48 = _objc_isTaggedPointer(@"indexes");
  v49 = @"indexes";
  v50 = v49;
  if (!v48)
  {
    goto LABEL_101;
  }

  v51 = _objc_getTaggedPointerTag(v49);
  if (!v51)
  {
    LOWORD(v77) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v56)
    {
      [(__CFString *)v50 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_116;
    }

    goto LABEL_106;
  }

  if (v51 == 22)
  {
    v54 = [(__CFString *)v50 UTF8String];
    if (v54)
    {
      String.init(utf8String:)(v54);
      if (!v55)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      goto LABEL_106;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v51 != 2)
  {
LABEL_101:
    LOBYTE(v78[0]) = 0;
    v81 = 0;
    LOBYTE(v77) = 0;
    if (!__CFStringIsCF())
    {
      v52 = v50;
      String.init(_nativeStorage:)();
      if (v53 || (v81 = [(__CFString *)v52 length]) == 0)
      {

        goto LABEL_116;
      }

LABEL_115:
      String.init(_cocoaString:)();
      goto LABEL_116;
    }

    if (v81)
    {
      goto LABEL_115;
    }

LABEL_106:

    goto LABEL_116;
  }

  MEMORY[0x1EEE9AC00](v51);
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_116:
  v57 = String._bridgeToObjectiveCImpl()();

  if (*(a2 + 16) && (v58 = specialized __RawDictionaryStorage.find<A>(_:)(v57), (v59 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v58, v78);
    swift_unknownObjectRelease();
    outlined init with take of Any(v78, &v81);
    swift_dynamicCast();
    v60 = v77;
  }

  else
  {
    swift_unknownObjectRelease();
    v60 = 0;
  }

  v61 = v75;
  v62 = _objc_isTaggedPointer(@"notificationIsPrior");
  v63 = @"notificationIsPrior";
  v64 = v63;
  if (!v62)
  {
LABEL_125:
    LOBYTE(v78[0]) = 0;
    v81 = 0;
    if (!__CFStringIsCF())
    {
      v66 = v64;
      String.init(_nativeStorage:)();
      if (v67 || (v81 = [(__CFString *)v66 length]) == 0)
      {

        goto LABEL_140;
      }

      goto LABEL_139;
    }

    if (v81)
    {
LABEL_139:
      String.init(_cocoaString:)();
LABEL_140:
      v71 = String._bridgeToObjectiveCImpl()();

      if (*(a2 + 16))
      {
        v72 = specialized __RawDictionaryStorage.find<A>(_:)(v71);
        if ((v73 & 1) == 0)
        {
          swift_unknownObjectRelease();
          v74 = 0;
          v61 = v75;
          goto LABEL_147;
        }

        outlined init with copy of Any(*(a2 + 56) + 32 * v72, &v81);
        swift_unknownObjectRelease();
        v61 = v75;
        if (swift_dynamicCast())
        {
          v74 = v78[0];
LABEL_147:
          v82 = v88;
          v83 = v89;
          v84 = v79;
          v81 = v23;
          v85 = v80;
          v86 = v60;
          v87 = v74;
          (*(v61 + OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_callback))(v9, &v81);

          outlined destroy of TermOfAddress?(&v81, &_s10Foundation24NSKeyValueObservedChangeVyypGMd, &_s10Foundation24NSKeyValueObservedChangeVyypGMR);
          return;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v74 = 0;
      goto LABEL_147;
    }

LABEL_135:

    goto LABEL_140;
  }

  v65 = _objc_getTaggedPointerTag(v63);
  if (!v65)
  {
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v70)
    {
      [(__CFString *)v64 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_140;
    }

    goto LABEL_135;
  }

  if (v65 != 22)
  {
    if (v65 == 2)
    {
      MEMORY[0x1EEE9AC00](v65);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_140;
    }

    goto LABEL_125;
  }

  v68 = [(__CFString *)v64 UTF8String];
  if (!v68)
  {
    goto LABEL_154;
  }

  String.init(utf8String:)(v68);
  if (v69)
  {
    goto LABEL_135;
  }

LABEL_158:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type NSString and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSString and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSString and conformance NSObject)
  {
    type metadata accessor for NSMorphologyPronoun(255, &lazy cache variable for type metadata for NSString, off_1E69EE918);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSString and conformance NSObject);
  }

  return result;
}

void _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo8NSStringC_ypTt1g5(void *a1, uint64_t *a2)
{

  if (type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSString, off_1E69EE918) == MEMORY[0x1E69E6158])
  {
    swift_unknownObjectRetain();
    v4 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v4)
    {
      goto LABEL_26;
    }

    v33 = [a1 count];
    if (!v33)
    {
      goto LABEL_42;
    }

    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v35 = *(v7 + 48);
    v36 = *(v7 + 56);

    v37 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v35, v36, a1, v34);
    if (v37 < 0 || v34 < v37)
    {
      goto LABEL_46;
    }

    *(v7 + 16) = v37;
    if (!v37)
    {
LABEL_41:

      goto LABEL_43;
    }

    v38 = v37 - 1;
    v39 = v7 + 64;
    while (1)
    {
      while (1)
      {
        if ((*(v39 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v38))
        {
          goto LABEL_33;
        }

        v44 = (*(v7 + 48) + 16 * v38);
        v45 = *v44;
        v46 = v44[1];

        v47 = specialized __RawDictionaryStorage.find<A>(_:)(v45, v46);
        v49 = v48;

        if ((v49 & 1) == 0)
        {
          break;
        }

        v50 = *(v7 + 48) + 16 * v38;

        outlined destroy of String(v50);
        __swift_destroy_boxed_opaque_existential_1((*(v7 + 56) + 32 * v38));
        v51 = *(v7 + 16);
        v52 = __OFSUB__(v51, 1);
        v53 = v51 - 1;
        if (v52)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        *(v7 + 16) = v53;

LABEL_33:
        if (--v38 < 0)
        {
          goto LABEL_41;
        }
      }

      *(v39 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (v38 < v47)
      {
        *(*(v7 + 48) + 16 * v47) = *(*(v7 + 48) + 16 * v38);
        v40 = *(v7 + 56);
        v41 = (v40 + 32 * v38);
        v42 = v41[1];
        v43 = (v40 + 32 * v47);
        *v43 = *v41;
        v43[1] = v42;
        goto LABEL_33;
      }

      if (v47 == v38)
      {
        goto LABEL_33;
      }

      v54 = *(v7 + 48);
      v55 = (v54 + 16 * v47);
      v56 = (v54 + 16 * v38);
      v57 = *v55;
      v58 = v55[1];
      v59 = v56[1];
      *v55 = *v56;
      v55[1] = v59;
      *v56 = v57;
      v56[1] = v58;
      v60 = *(v7 + 56);
      v61 = (v60 + 32 * v47);
      v62 = (v60 + 32 * v38);
      outlined init with take of Any(v61, v63);
      outlined init with take of Any(v62, v61);
      outlined init with take of Any(v63, v62);
      if (v38 < 0)
      {
        goto LABEL_41;
      }
    }
  }

  lazy protocol witness table accessor for type NSString and conformance NSObject();
  swift_unknownObjectRetain();
  v4 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v4)
  {
LABEL_26:
    v7 = v4;
LABEL_43:
    *a2 = v7;
    return;
  }

  v5 = [a1 count];
  if (!v5)
  {
LABEL_42:
    v7 = MEMORY[0x1E69E7CC8];
    goto LABEL_43;
  }

  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSStringCypGMd, &_ss18_DictionaryStorageCySo8NSStringCypGMR);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);

  v10 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_So8NSStringC_ypTt3g5Tf4xxnn_n(v8, v9, a1, v6);
  if ((v10 & 0x8000000000000000) == 0 && v6 >= v10)
  {
    *(v7 + 16) = v10;
    if (v10)
    {
      v11 = v10 - 1;
      v12 = v7 + 64;
      while (1)
      {
        if ((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
        {
          goto LABEL_9;
        }

        v17 = *(v7 + 40);
        v18 = *(*(v7 + 48) + 8 * v11);
        v19 = NSObject._rawHashValue(seed:)(v17);

        v20 = -1 << *(v7 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
        {
          v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          do
          {
            if (++v22 == v25 && (v24 & 1) != 0)
            {
              __break(1u);
              goto LABEL_44;
            }

            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
          }

          while (v27 == -1);
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
        }

        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (v11 < v23)
        {
          *(*(v7 + 48) + 8 * v23) = *(*(v7 + 48) + 8 * v11);
          v13 = *(v7 + 56);
          v14 = (v13 + 32 * v11);
          v15 = v14[1];
          v16 = (v13 + 32 * v23);
          *v16 = *v14;
          v16[1] = v15;
LABEL_9:
          if (--v11 < 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (v23 == v11)
          {
            goto LABEL_9;
          }

          v28 = *(v7 + 48);
          v29 = *(v28 + 8 * v23);
          *(v28 + 8 * v23) = *(v28 + 8 * v11);
          *(v28 + 8 * v11) = v29;
          v30 = *(v7 + 56);
          v31 = (v30 + 32 * v23);
          v32 = (v30 + 32 * v11);
          outlined init with take of Any(v31, v63);
          outlined init with take of Any(v32, v31);
          outlined init with take of Any(v63, v32);
          if (v11 < 0)
          {
            goto LABEL_41;
          }
        }
      }
    }

    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void specialized static UInt._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 unsignedIntegerValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 8) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber, off_1E69EE6D0);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](1953384789, 0xE400000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_conformsToProtocol2();
  if (v6 && a2)
  {
    v7 = v6;
    outlined init with copy of Any?(a1, &v13);
    if (v14)
    {
      outlined init with take of Any(&v13, v15);
      v8 = *(v7 + 8);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
      *&v13 = swift_allocObject();
      v8(v15, a2, v7);
      __swift_destroy_boxed_opaque_existential_1(v15);
      outlined init with copy of Any(&v13, &v12);
      v9 = swift_dynamicCast();
      (*(*(a2 - 8) + 56))(a3, v9 ^ 1u, 1, a2);
      return __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    outlined destroy of TermOfAddress?(&v13, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of Any?(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t sub_180863DC4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void type metadata completion function for NSKeyValueObservedChange(uint64_t a1)
{
  type metadata accessor for NSKeyValueChange(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      type metadata accessor for IndexSet?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for IndexSet?()
{
  if (!lazy cache variable for type metadata for IndexSet?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexSet?);
    }
  }
}

uint64_t closure #1 in _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)(uint64_t a1, uint64_t *a2, void (*a3)(char *, void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[1] = a4;
  v27 = a3;
  v26[0] = a1;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NSKeyValueObservedChange(0, v14, v12, v13);
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v26 - v17);
  v19 = *a2;
  closure #1 in closure #1 in _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)((a2 + 1), a6, v26 + *(v20 + 28) - v17);
  closure #1 in closure #1 in _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)((a2 + 5), a6, v18 + v15[8]);
  v21 = a2[9];
  v22 = *(a2 + 80);
  *v18 = v19;
  *(v18 + v15[9]) = v21;
  *(v18 + v15[10]) = v22;
  v23 = v26[0];
  v28 = v26[0];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);

  v24 = v23;
  swift_dynamicCast();
  v27(v11, v18);
  (*(v16 + 8))(v18, v15);
  return (*(v9 + 8))(v11, a5);
}

const __CFString *_dateFormatFromTemplate(const __CFString *tmplate, CFOptionFlags options, CFLocaleRef locale)
{
  if (tmplate)
  {
    DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(*MEMORY[0x1E695E4A8], tmplate, options, locale);

    return DateFormatFromTemplate;
  }

  return tmplate;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t removeNotificationsFromQueue(void *a1, void *a2, int a3, uint64_t a4)
{
  v4 = 0;
  if (!a1)
  {
    return v4;
  }

  v5 = a4;
  if (!a4)
  {
    return v4;
  }

  if (![a1 count])
  {
    return 0;
  }

  if (v5)
  {
    v9 = [a2 name];
    if ((v5 & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if ((v5 & 2) != 0)
    {
LABEL_6:
      v10 = [a2 object];
      goto LABEL_9;
    }
  }

  v10 = 0;
LABEL_9:
  v11 = [a1 count];
  if (v11 < 1)
  {
    return 0;
  }

  v12 = v11;
  v4 = 0;
  v13 = 0;
  v14 = 0;
  v15 = a3 ^ 1;
  do
  {
    v16 = [a1 objectAtIndex:v13];
    v17 = v16;
    if (((v5 & 2) == 0 || v10 == [v16 object]) && ((v5 & 1) == 0 || objc_msgSend(v9, "isEqual:", objc_msgSend(v17, "name"))))
    {
      if ((v15 | v14))
      {
        [a1 removeObjectAtIndex:v13 + 1];
        [a1 removeObjectAtIndex:v13];
        v13 -= 2;
        v12 -= 2;
      }

      else
      {
        v14 = 1;
      }

      ++v4;
    }

    v13 += 2;
  }

  while (v13 < v12);
  return v4;
}

void addNotificationToQueue(void *a1, uint64_t a2, void *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = a1[2];
    if (!v6)
    {
      return;
    }

    v16.version = 0;
    v16.info = a1;
    v16.retain = MEMORY[0x1E695D7C8];
    v16.release = MEMORY[0x1E695D7C0];
    v16.copyDescription = MEMORY[0x1E695D768];
    v7 = __NSPostASAPQueueNotes;
    v8 = 130;
  }

  else
  {
    v6 = a1[3];
    if (!v6)
    {
      return;
    }

    v16.version = 0;
    v16.info = a1;
    v16.retain = MEMORY[0x1E695D7C8];
    v16.release = MEMORY[0x1E695D7C0];
    v16.copyDescription = MEMORY[0x1E695D768];
    v7 = __NSPostIdleQueueNotes;
    v8 = 32;
  }

  v9 = CFRunLoopObserverCreate(0, v8, 0, 0, v7, &v16);
  [v6 addObject:{a2, v16.version, v16.info, v16.retain, v16.release, v16.copyDescription, v17}];
  if (a3 && [a3 count])
  {
    v10 = [a3 copy];
  }

  else
  {
    v10 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695D918]];
  }

  v11 = v10;
  [v6 addObject:v10];
  v12 = [v11 count];
  if (v12 >= 1)
  {
    v13 = v12;
    for (i = 0; i != v13; ++i)
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddObserver(Current, v9, [v11 objectAtIndex:i]);
    }
  }

  CFRelease(v9);
}

uint64_t type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t storeEnumTagSinglePayload for LocalizedStringResource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalizedStringResource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t static Locale.LanguageCode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void closure #3 in PropertyListDecoder._decode<A>(_:from:format:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *))
{
  v143 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1865CB200]() < 1)
  {
    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v12 = swift_allocError();
    *v13 = 0xD000000000000031;
    v13[1] = 0x8000000181484CD0;
    swift_willThrow();
    goto LABEL_48;
  }

  v135 = a1;
  v136 = a2;
  v137 = xmmword_1812477A0;
  swift_bridgeObjectRetain_n();
  if ((advanceToNonSpace(_:)(&v135) & 1) == 0)
  {

    *(&v139 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    *&v138 = MEMORY[0x1E69E7CC8];
LABEL_43:

    outlined init with take of Any(&v138, v142);
    outlined init with copy of Any(v142, &v138);
    v31 = *(a3 + 16);
    v32 = type metadata accessor for __PlistDictionaryDecoder();
    swift_allocObject();

    v33 = __PlistDictionaryDecoder.init(referencing:at:options:)(&v138, MEMORY[0x1E69E7CC0], v31);
    *a4 = 1;
    *(&v139 + 1) = v32;
    v140 = &protocol witness table for __PlistDictionaryDecoder;
    *&v138 = v33;

    a5(&v138);
    __swift_destroy_boxed_opaque_existential_1(v142);

    __swift_destroy_boxed_opaque_existential_1(&v138);
    return;
  }

  if ((advanceToNonSpace(_:)(&v135) & 1) == 0)
  {
    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v14 = swift_allocError();
    *v15 = 0xD000000000000022;
    v15[1] = 0x8000000181484B30;
    goto LABEL_13;
  }

  v9 = specialized _ParseInfo.currChar.getter(a1, a2, v137);
  _ParseInfo.advance()();
  if (v9 <= 0x27u)
  {
    if (v9 != 34 && v9 != 39)
    {
LABEL_24:
      v124 = isValidUnquotedStringCharacter(_:)(v9);
      _ParseInfo.retreat()();
      if (v124)
      {
        v16 = parseUnquotedPlistString(_:)(&v135);
        if (!v17)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      _StringGuts.grow(_:)(38);

      *&v131 = 0xD000000000000018;
      *(&v131 + 1) = 0x8000000181484B60;
      lazy protocol witness table accessor for type UInt16 and conformance UInt16();
      v28 = String.init<A>(_:radix:uppercase:)();
      MEMORY[0x1865CB0E0](v28);

      MEMORY[0x1865CB0E0](0x6E696C2074612027, 0xEA00000000002065);
      *&v129 = specialized lineNumberStrings(_:)(a1, a2, v137);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v29);

      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v14 = swift_allocError();
      *v30 = v131;
LABEL_13:
      *(&v137 + 1) = v14;
LABEL_14:
      v133 = 0u;
      v134 = 0u;
      goto LABEL_27;
    }

    v16 = parseQuotedPlistString(_:quote:)(&v135, v9);
    if (v17)
    {
LABEL_18:
      v18 = MEMORY[0x1E69E6158];
LABEL_23:
      *(&v134 + 1) = v18;
      *&v133 = v16;
      *(&v133 + 1) = v17;
      goto LABEL_27;
    }
  }

  else
  {
    if (v9 == 40)
    {
      v19 = parsePlistArray(_:depth:)(&v135, 0);
      if (v19)
      {
        v20 = v19;
        *(&v134 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
        *&v133 = v20;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v9 != 60)
    {
      if (v9 == 123)
      {
        v10 = parsePlistDict(_:depth:)(&v135, 0);
        if (v10)
        {
          v11 = v10;
          *(&v134 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
          *&v133 = v11;
          goto LABEL_27;
        }

        goto LABEL_14;
      }

      goto LABEL_24;
    }

    v16 = parsePlistData(_:)(&v135);
    if (v17 >> 60 != 15)
    {
      v18 = &type metadata for Data;
      goto LABEL_23;
    }
  }

LABEL_26:
  v133 = 0u;
  v134 = 0u;
LABEL_27:
  outlined init with copy of FloatingPointRoundingRule?(&v133, &v131, &_sypSgMd, &_sypSgMR);
  if (v132)
  {
    outlined destroy of TermOfAddress?(&v131, &_sypSgMd, &_sypSgMR);
    if (advanceToNonSpace(_:)(&v135))
    {
      outlined init with copy of FloatingPointRoundingRule?(&v133, &v131, &_sypSgMd, &_sypSgMR);
      if (v132)
      {
        if (swift_dynamicCast())
        {

          v135 = a1;
          v136 = a2;
          v137 = xmmword_1812477A0;
          v21 = parsePlistDictContent(_:depth:)(&v135, 0);
          if (v21)
          {
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
          }

          else
          {
            v22 = 0;
          }

          outlined destroy of TermOfAddress?(&v133, &_sypSgMd, &_sypSgMR);
          v133 = v21;
          *&v134 = 0;
          *(&v134 + 1) = v22;
          goto LABEL_41;
        }
      }

      else
      {

        outlined destroy of TermOfAddress?(&v131, &_sypSgMd, &_sypSgMR);
      }

      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      *&v131 = 0xD000000000000019;
      *(&v131 + 1) = 0x8000000181484D80;
      v23 = *(&v137 + 1);
      *&v129 = specialized lineNumberStrings(_:)(v135, v136, v137);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v24);

      v25 = v131;
      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v26 = swift_allocError();
      *v27 = v25;
      outlined destroy of TermOfAddress?(&v133, &_sypSgMd, &_sypSgMR);

      *(&v137 + 1) = v26;
      v133 = 0u;
      v134 = 0u;
    }

    else
    {
    }
  }

  else
  {

    outlined destroy of TermOfAddress?(&v131, &_sypSgMd, &_sypSgMR);
  }

LABEL_41:
  outlined init with copy of FloatingPointRoundingRule?(&v133, &v129, &_sypSgMd, &_sypSgMR);
  if (v130)
  {
    outlined destroy of TermOfAddress?(&v133, &_sypSgMd, &_sypSgMR);
    outlined init with take of Any(&v129, &v131);
    outlined init with take of Any(&v131, &v138);
    goto LABEL_43;
  }

  outlined destroy of TermOfAddress?(&v129, &_sypSgMd, &_sypSgMR);
  v34 = *(&v137 + 1);
  if (*(&v137 + 1))
  {
    v12 = *(&v137 + 1);
  }

  else
  {
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    *&v131 = 0xD000000000000030;
    *(&v131 + 1) = 0x8000000181484D40;
    *&v129 = specialized lineNumberStrings(_:)(v135, v136, v137);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v35);

    v36 = v131;
    lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
    v12 = swift_allocError();
    v34 = 0;
    *v37 = v36;
  }

  swift_willThrow();
  v38 = v34;
  outlined destroy of TermOfAddress?(&v133, &_sypSgMd, &_sypSgMR);

LABEL_48:
  *&v131 = v12;
  v39 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_179:

    return;
  }

  v40 = v135;
  v128 = v136;
  v41 = type metadata accessor for DecodingError();
  swift_allocError();
  v43 = v42;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v45 = @"NSDebugDescription";
  v46 = v45;
  v125 = v43;
  v126 = v41;
  if (!isTaggedPointer)
  {
    goto LABEL_54;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v45);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_64;
    case 0x16:
      v55 = [(__CFString *)v46 UTF8String];
      if (!v55)
      {
        __break(1u);
        goto LABEL_184;
      }

      v56 = String.init(utf8String:)(v55);
      if (v57)
      {
        goto LABEL_65;
      }

      __break(1u);
LABEL_64:
      LOWORD(v129) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v56 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v57)
      {
        [(__CFString *)v46 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v50 = *(&v133 + 1);
        v48 = v133;
        goto LABEL_80;
      }

LABEL_65:
      v48 = v56;
      v50 = v57;
LABEL_66:

      goto LABEL_80;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v48 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v50 = v49;

      goto LABEL_80;
  }

LABEL_54:
  LOBYTE(v133) = 0;
  *&v138 = 0;
  LOBYTE(v129) = 0;
  IsCF = __CFStringIsCF();
  if (IsCF)
  {
    if (v138)
    {
      if (v129)
      {
        if (v133 != 1)
        {
          IsCF = [(__CFString *)v46 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v58 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v50 = v59;
        v60 = HIBYTE(v59) & 0xF;
        if ((v59 & 0x2000000000000000) == 0)
        {
          v60 = v58 & 0xFFFFFFFFFFFFLL;
        }

        if (v60)
        {
          v48 = v58;
          goto LABEL_66;
        }
      }

      goto LABEL_79;
    }

LABEL_60:
    v48 = 0;
    v50 = 0xE000000000000000;
    goto LABEL_80;
  }

  v52 = v46;
  v53 = String.init(_nativeStorage:)();
  if (v54)
  {
    v48 = v53;
    v50 = v54;

    goto LABEL_80;
  }

  *&v138 = [(__CFString *)v52 length];
  if (!v138)
  {

    goto LABEL_60;
  }

LABEL_79:
  v48 = String.init(_cocoaString:)();
  v50 = v61;
LABEL_80:
  v141[0] = v48;
  v141[1] = v50;
  v141[5] = MEMORY[0x1E69E6158];
  v141[2] = v40;
  v141[3] = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v62 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of FloatingPointRoundingRule?(v141, &v138, &_sSS_yptMd, &_sSS_yptMR);

  outlined destroy of TermOfAddress?(v141, &_sSS_yptMd, &_sSS_yptMR);
  v63 = v138;
  v64 = specialized __RawDictionaryStorage.find<A>(_:)(v138, *(&v138 + 1));
  v66 = v65;

  if (v66)
  {
    __break(1u);
    goto LABEL_181;
  }

  v62[(v64 >> 6) + 8] |= 1 << v64;
  *(v62[6] + 16 * v64) = v63;
  outlined init with take of Any(&v139, (v62[7] + 32 * v64));
  v67 = v62[2];
  v68 = __OFADD__(v67, 1);
  v69 = v67 + 1;
  if (v68)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v62[2] = v69;
  v70 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v71 = @"NSCocoaErrorDomain";
  v72 = v71;
  if (!v70)
  {
    goto LABEL_87;
  }

  v73 = _objc_getTaggedPointerTag(v71);
  switch(v73)
  {
    case 0:
LABEL_96:
      LOWORD(v129) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v79)
      {
        [(__CFString *)v72 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_111;
      }

      goto LABEL_108;
    case 0x16:
      v77 = [(__CFString *)v72 UTF8String];
      if (v77)
      {
        String.init(utf8String:)(v77);
        if (v78)
        {
          goto LABEL_108;
        }

        __break(1u);
        goto LABEL_96;
      }

LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    case 2:
      MEMORY[0x1EEE9AC00](v73);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_111;
  }

LABEL_87:
  LOBYTE(v133) = 0;
  *&v138 = 0;
  LOBYTE(v129) = 0;
  v74 = __CFStringIsCF();
  if (!v74)
  {
    v75 = v72;
    String.init(_nativeStorage:)();
    if (v76 || (*&v138 = [(__CFString *)v75 length], !v138))
    {

      goto LABEL_111;
    }

    goto LABEL_110;
  }

  if (!v138)
  {
LABEL_108:

    goto LABEL_111;
  }

  if (v129)
  {
    if (v133 != 1)
    {
      v74 = [(__CFString *)v72 lengthOfBytesUsingEncoding:4];
    }

    MEMORY[0x1EEE9AC00](v74);
    v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v82 = HIBYTE(v81) & 0xF;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v82 = v80 & 0xFFFFFFFFFFFFLL;
    }

    if (v82)
    {
      goto LABEL_108;
    }
  }

LABEL_110:
  String.init(_cocoaString:)();
LABEL_111:
  v83 = objc_allocWithZone(NSError);
  v84 = String._bridgeToObjectiveCImpl()();

  v85 = [v83 initWithDomain:v84 code:3840 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v86 = [v85 domain];
  if (!v86)
  {
    goto LABEL_123;
  }

  v87 = v86;
  v88 = _objc_isTaggedPointer(v86);
  v89 = v87;
  v90 = v89;
  if ((v88 & 1) == 0)
  {
LABEL_117:
    LOBYTE(v133) = 0;
    *&v138 = 0;
    LOBYTE(v129) = 0;
    v95 = __CFStringIsCF();
    if (v95)
    {
      if (v138)
      {
        if (v129)
        {
          if (v133 != 1)
          {
            v95 = [v90 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](v95);
          v102 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v94 = v103;
          v104 = HIBYTE(v103) & 0xF;
          if ((v103 & 0x2000000000000000) == 0)
          {
            v104 = v102 & 0xFFFFFFFFFFFFLL;
          }

          if (v104)
          {
            v92 = v102;
            goto LABEL_129;
          }
        }

LABEL_142:
        v92 = String.init(_cocoaString:)();
        v94 = v105;
        goto LABEL_143;
      }
    }

    else
    {
      v96 = v90;
      v97 = String.init(_nativeStorage:)();
      if (v98)
      {
        v92 = v97;
        v94 = v98;

        goto LABEL_144;
      }

      *&v138 = [v96 length];
      if (v138)
      {
        goto LABEL_142;
      }
    }

LABEL_123:
    v92 = 0;
    v94 = 0xE000000000000000;
    goto LABEL_144;
  }

  v91 = _objc_getTaggedPointerTag(v89);
  if (!v91)
  {
    goto LABEL_127;
  }

  if (v91 != 22)
  {
    if (v91 == 2)
    {
      MEMORY[0x1EEE9AC00](v91);
      v92 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v94 = v93;

LABEL_144:
      v106 = v72;
      v107 = v106;
      if (!v70)
      {
        goto LABEL_149;
      }

      v108 = _objc_getTaggedPointerTag(v106);
      if (!v108)
      {
        goto LABEL_159;
      }

      if (v108 != 22)
      {
        if (v108 == 2)
        {
          MEMORY[0x1EEE9AC00](v108);
          v109 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v111 = v110;

          goto LABEL_174;
        }

LABEL_149:
        LOBYTE(v133) = 0;
        *&v138 = 0;
        LOBYTE(v129) = 0;
        v112 = __CFStringIsCF();
        if (v112)
        {
          if (v138)
          {
            if (v129)
            {
              if (v133 != 1)
              {
                v112 = [(__CFString *)v107 lengthOfBytesUsingEncoding:4];
              }

              MEMORY[0x1EEE9AC00](v112);
              v119 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v111 = v120;
              v121 = HIBYTE(v120) & 0xF;
              if ((v120 & 0x2000000000000000) == 0)
              {
                v121 = v119 & 0xFFFFFFFFFFFFLL;
              }

              if (v121)
              {
                v109 = v119;

                goto LABEL_174;
              }
            }

LABEL_173:
            v109 = String.init(_cocoaString:)();
            v111 = v122;
LABEL_174:
            if (v92 == v109 && v94 == v111)
            {

LABEL_178:
              DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
              (*(*(v126 - 8) + 104))(v125, *MEMORY[0x1E69E6B00]);
              swift_willThrow();
              goto LABEL_179;
            }

            v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v123)
            {
              goto LABEL_178;
            }

LABEL_182:
            __break(1u);
          }
        }

        else
        {
          v113 = v107;
          v114 = String.init(_nativeStorage:)();
          if (v115)
          {
            v109 = v114;
            v111 = v115;

            goto LABEL_174;
          }

          *&v138 = [(__CFString *)v113 length];
          if (v138)
          {
            goto LABEL_173;
          }
        }

        v109 = 0;
        v111 = 0xE000000000000000;
        goto LABEL_174;
      }

      v116 = [(__CFString *)v107 UTF8String];
      if (v116)
      {
        v117 = String.init(utf8String:)(v116);
        if (v118)
        {
          goto LABEL_160;
        }

        __break(1u);
LABEL_159:
        LOWORD(v129) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v117 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v118)
        {
          [(__CFString *)v107 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v111 = *(&v133 + 1);
          v109 = v133;
          goto LABEL_174;
        }

LABEL_160:
        v109 = v117;
        v111 = v118;

        goto LABEL_174;
      }

      goto LABEL_185;
    }

    goto LABEL_117;
  }

  v99 = [v90 UTF8String];
  if (v99)
  {
    v100 = String.init(utf8String:)(v99);
    if (v101)
    {
LABEL_128:
      v92 = v100;
      v94 = v101;
LABEL_129:

LABEL_143:
      goto LABEL_144;
    }

    __break(1u);
LABEL_127:
    LOWORD(v129) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v100 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v101)
    {
      [v90 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v94 = *(&v133 + 1);
      v92 = v133;
      goto LABEL_143;
    }

    goto LABEL_128;
  }

LABEL_186:
  __break(1u);
}

uint64_t parsePlistDictContent(_:depth:)(unint64_t *a1, int a2)
{
  if ((advanceToNonSpace(_:)(a1) & 1) == 0)
  {
    v29 = MEMORY[0x1E69E7CC8];
LABEL_74:

    a1[3] = 0;
    return v29;
  }

  v4 = a2 + 1;
  v5 = MEMORY[0x1E69E7CC8];
  v6 = a2 == -1;
  while (1)
  {
    v7 = specialized _ParseInfo.currChar.getter(*a1, a1[1], a1[2]);
    v8 = v7;
    if (v7 == 39 || v7 == 34)
    {
      _ParseInfo.advance()();
      v9 = parseQuotedPlistString(_:quote:)(a1, v8);
    }

    else
    {
      if ((v7 - 58) <= 0xFFF5u && ((v7 & 0xFFDF) - 91) <= 0xFFE5u && (v7 - 36 > 0x3B || ((1 << (v7 - 36)) & 0x800000000400E01) == 0))
      {
LABEL_76:
        v29 = v5;
        goto LABEL_74;
      }

      v9 = parseUnquotedPlistString(_:)(a1);
    }

    v11 = v9;
    v12 = v10;
    if (!v10)
    {
      goto LABEL_76;
    }

    if ((advanceToNonSpace(_:)(a1) & 1) == 0)
    {

      *&v82 = 0;
      *(&v82 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *&v82 = 0xD000000000000014;
      *(&v82 + 1) = 0x8000000181484AF0;
      v48 = a1[3];
      *&v80 = specialized lineNumberStrings(_:)(*a1, a1[1], a1[2]);
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v53);

      v54 = v82;
      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v51 = swift_allocError();
      *v55 = v54;
      goto LABEL_78;
    }

    isUniquelyReferenced_nonNull_native = *a1;
    v14 = a1[1];
    v16 = a1[2];
    v15 = a1[3];
    if (specialized _ParseInfo.currChar.getter(*a1, v14, v16) == 59)
    {
      v83 = MEMORY[0x1E69E6158];
      *&v82 = v11;
      *(&v82 + 1) = v12;

      goto LABEL_43;
    }

    if (specialized _ParseInfo.currChar.getter(isUniquelyReferenced_nonNull_native, v14, v16) != 61)
    {

      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v56 = swift_allocError();
      *v57 = 0xD000000000000014;
      v57[1] = 0x8000000181484B10;

      v29 = 0;
      a1[3] = v56;
      return v29;
    }

    _ParseInfo.advance()();
    if (v6)
    {
      goto LABEL_90;
    }

    if (!depthIsValid(_:depth:)(a1, v4))
    {
LABEL_79:

LABEL_86:
      v80 = 0u;
      v81 = 0u;

      goto LABEL_87;
    }

    if ((advanceToNonSpace(_:)(a1) & 1) == 0)
    {

      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v58 = swift_allocError();
      *v59 = 0xD000000000000022;
      v59[1] = 0x8000000181484B30;
      v60 = a1[3];
LABEL_82:

      a1[3] = v58;
      goto LABEL_84;
    }

    LOWORD(v16) = specialized _ParseInfo.currChar.getter(isUniquelyReferenced_nonNull_native, v14, a1[2]);
    _ParseInfo.advance()();
    if (v16 > 0x27u)
    {
      break;
    }

    if (v16 != 34 && v16 != 39)
    {
      goto LABEL_35;
    }

    v19 = parseQuotedPlistString(_:quote:)(a1, v16);
    if (!v20)
    {
      goto LABEL_83;
    }

LABEL_40:
    v23 = MEMORY[0x1E69E6158];
LABEL_41:
    *(&v81 + 1) = v23;
    *&v80 = v19;
    *(&v80 + 1) = v20;
LABEL_42:
    outlined init with take of Any(&v80, &v82);
LABEL_43:
    outlined init with copy of Any(&v82, &v80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v5;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
    v25 = *(v5 + 16);
    v26 = (v24 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:

      _ParseInfo.retreat()();
      *&v78[0] = 0;
      *(&v78[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      *&v78[0] = 0xD000000000000018;
      *(&v78[0] + 1) = 0x8000000181484B60;
      LOWORD(v79) = v16;
      lazy protocol witness table accessor for type UInt16 and conformance UInt16();
      v67 = String.init<A>(_:radix:uppercase:)();
      MEMORY[0x1865CB0E0](v67);

      MEMORY[0x1865CB0E0](0x6E696C2074612027, 0xEA00000000002065);
      v68 = a1[3];
      v79 = specialized lineNumberStrings(_:)(isUniquelyReferenced_nonNull_native, v14, a1[2]);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v69);

      v70 = v78[0];
      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v58 = swift_allocError();
      *v71 = v70;
      v60 = v68;
      goto LABEL_82;
    }

    v28 = v24;
    if (*(v5 + 24) >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v5;
        if ((v24 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
        v33 = static _DictionaryStorage.copy(original:)();
        v29 = v33;
        if (*(v5 + 16))
        {
          v34 = (v33 + 64);
          v35 = (v5 + 64);
          v36 = ((1 << *(v29 + 32)) + 63) >> 6;
          if (v29 != v5 || v34 >= &v35[8 * v36])
          {
            memmove(v34, v35, 8 * v36);
          }

          v37 = 0;
          *(v29 + 16) = *(v5 + 16);
          v38 = 1 << *(v5 + 32);
          if (v38 < 64)
          {
            v39 = ~(-1 << v38);
          }

          else
          {
            v39 = -1;
          }

          v40 = v39 & *(v5 + 64);
          v41 = (v38 + 63) >> 6;
          v72 = v41;
          if (v40)
          {
            do
            {
              v42 = __clz(__rbit64(v40));
              v73 = (v40 - 1) & v40;
LABEL_69:
              v45 = v42 | (v37 << 6);
              v74 = 16 * v45;
              v46 = (*(v5 + 48) + 16 * v45);
              v77 = v46[1];
              v75 = *v46;
              v76 = 32 * v45;
              outlined init with copy of Any(*(v5 + 56) + 32 * v45, v78);
              v47 = (*(v29 + 48) + v74);
              *v47 = v75;
              v47[1] = v77;
              outlined init with take of Any(v78, (*(v29 + 56) + v76));

              v41 = v72;
              v40 = v73;
            }

            while (v73);
          }

          v43 = v37;
          while (1)
          {
            v37 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            if (v37 >= v41)
            {
              goto LABEL_71;
            }

            v44 = *(v5 + 64 + 8 * v37);
            ++v43;
            if (v44)
            {
              v42 = __clz(__rbit64(v44));
              v73 = (v44 - 1) & v44;
              goto LABEL_69;
            }
          }

          __break(1u);
LABEL_93:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_71:

        if ((v28 & 1) == 0)
        {
LABEL_50:
          specialized _NativeDictionary._insert(at:key:value:)(v14, v11, v12, &v80, v29);
          goto LABEL_51;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
      v29 = v79;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
      if ((v28 & 1) != (v31 & 1))
      {
        goto LABEL_93;
      }

      v14 = v30;
      if ((v28 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v32 = (*(v29 + 56) + 32 * v14);
    __swift_destroy_boxed_opaque_existential_1(v32);
    outlined init with take of Any(&v80, v32);
LABEL_51:
    if ((advanceToNonSpace(_:)(a1) & 1) == 0 || specialized _ParseInfo.currChar.getter(*a1, a1[1], a1[2]) != 59)
    {

      *&v80 = 0;
      *(&v80 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *&v80 = 0xD000000000000014;
      *(&v80 + 1) = 0x8000000181484AF0;
      v48 = a1[3];
      *&v78[0] = specialized lineNumberStrings(_:)(*a1, a1[1], a1[2]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v49);

      v50 = v80;
      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v51 = swift_allocError();
      *v52 = v50;
      __swift_destroy_boxed_opaque_existential_1(&v82);
LABEL_78:

      v29 = 0;
      a1[3] = v51;
      return v29;
    }

    _ParseInfo.advance()();
    __swift_destroy_boxed_opaque_existential_1(&v82);
    v5 = v29;
    if ((advanceToNonSpace(_:)(a1) & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  switch(v16)
  {
    case '(':
      v21 = parsePlistArray(_:depth:)(a1, v4);
      if (!v21)
      {
        goto LABEL_83;
      }

      v22 = v21;
      *(&v81 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      *&v80 = v22;
      goto LABEL_42;
    case '<':
      v19 = parsePlistData(_:)(a1);
      if (v20 >> 60 == 15)
      {
        goto LABEL_83;
      }

      v23 = &type metadata for Data;
      goto LABEL_41;
    case '{':
      v17 = parsePlistDictContent(_:depth:)(a1, v4);
      if (!v17)
      {
        goto LABEL_79;
      }

      v18 = v17;
      if ((advanceToNonSpace(_:)(a1) & 1) == 0 || specialized _ParseInfo.currChar.getter(*a1, a1[1], a1[2]) != 125)
      {

        *&v78[0] = 0;
        *(&v78[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(50);

        *&v78[0] = 0xD000000000000030;
        *(&v78[0] + 1) = 0x8000000181484950;
        v61 = a1[3];
        v79 = specialized lineNumberStrings(_:)(*a1, a1[1], a1[2]);
        v62 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v62);

        v63 = v78[0];
        lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
        v64 = swift_allocError();
        *v65 = v63;

        a1[3] = v64;
        goto LABEL_86;
      }

      _ParseInfo.advance()();
      *(&v81 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      *&v80 = v18;
      goto LABEL_42;
  }

LABEL_35:
  if ((v16 - 58) <= 0xFFF5u && ((v16 & 0xFFDF) - 91) <= 0xFFE5u && (v16 - 36 > 0x3B || ((1 << (v16 - 36)) & 0x800000000400E01) == 0))
  {
    goto LABEL_91;
  }

  _ParseInfo.retreat()();
  v19 = parseUnquotedPlistString(_:)(a1);
  if (v20)
  {
    goto LABEL_40;
  }

LABEL_83:

LABEL_84:
  v80 = 0u;
  v81 = 0u;
LABEL_87:
  outlined destroy of Any?(&v80);
  return 0;
}

unint64_t lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError()
{
  result = lazy protocol witness table cache variable for type OpenStepPlistError and conformance OpenStepPlistError;
  if (!lazy protocol witness table cache variable for type OpenStepPlistError and conformance OpenStepPlistError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenStepPlistError and conformance OpenStepPlistError);
  }

  return result;
}

uint64_t specialized JSONDecoderImpl.unwrapDictionary<A, B>(from:as:for:_:)(Swift::Int a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a10, uint64_t a11)
{
  v12 = v11;
  v181 = a5;
  LOBYTE(v18) = a10;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v20 = a3 >> 5;
  if (v20 == 5)
  {
    if (!(a2 | a1) && a3 == 160)
    {
      v21 = type metadata accessor for DecodingError();
      swift_allocError();
      v23 = v22;
      *v22 = v19;
      v24 = _CodingPathNode.path.getter(v181);
      if (a10 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v26 = swift_allocObject();
        *(inited + 32) = v26;
        *(v26 + 16) = a6;
        *(v26 + 24) = a7;
        *(v26 + 32) = a8;
        *(v26 + 40) = a10;
        v176 = v24;
        outlined copy of _CodingKey(a6, a7, a8, a10);
        specialized Array.append<A>(contentsOf:)(inited);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      v176 = 0;
      v177 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181481F90);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B08], v21);
      return swift_willThrow();
    }

    if (!dynamic_cast_existential_2_conditional(a4, a4, &protocol descriptor for _JSONStringDictionaryDecodableMarker, MEMORY[0x1E69E6440]))
    {
      goto LABEL_130;
    }

LABEL_14:
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    *v36 = v19;
    v38 = _CodingPathNode.path.getter(v181);
    if (a10 != -1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_181218E20;
      *(v39 + 56) = &type metadata for _CodingKey;
      *(v39 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v40 = swift_allocObject();
      *(v39 + 32) = v40;
      *(v40 + 16) = a6;
      *(v40 + 24) = a7;
      *(v40 + 32) = a8;
      *(v40 + 40) = a10;
      v176 = v38;
      outlined copy of _CodingKey(a6, a7, a8, a10);
      specialized Array.append<A>(contentsOf:)(v39);
    }

    _StringGuts.grow(_:)(43);

    v176 = 0xD000000000000035;
    v177 = 0x8000000181481DA0;
    v41 = 0xE800000000000000;
    v42 = 0x676E697274732061;
    v43 = 0xE800000000000000;
    v44 = 0x7961727261206E61;
    if (v20 != 4)
    {
      v44 = 1819047278;
      v43 = 0xE400000000000000;
    }

    v45 = v44;
    v46 = v43;
    v47 = 0xE600000000000000;
    v48 = 0x7265626D756ELL;
    if (v20 != 1)
    {
      v48 = 1819242338;
      v47 = 0xE400000000000000;
    }

    if (v20)
    {
      v42 = v48;
      v41 = v47;
    }

    v49 = v20 <= 2;
    if (v20 <= 2)
    {
      v50 = v42;
    }

    else
    {
      v50 = v45;
    }

    if (v49)
    {
      v51 = v41;
    }

    else
    {
      v51 = v46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    MEMORY[0x1865CB0E0](v50, v51);

    MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    return swift_willThrow();
  }

  v158 = dynamic_cast_existential_2_conditional(a4, a4, &protocol descriptor for _JSONStringDictionaryDecodableMarker, MEMORY[0x1E69E6440]);
  v159 = v27;
  if (!v158)
  {
    goto LABEL_130;
  }

  if (v20 != 3)
  {
    goto LABEL_14;
  }

  v180 = MEMORY[0x1E69E7CC8];
  Dictionary.reserveCapacity(_:)(a2 / 2);
  if (a10 != -1)
  {
    v28 = swift_allocObject();
    v28[5] = &type metadata for _CodingKey;
    v28[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v29 = swift_allocObject();
    v28[2] = v29;
    v30 = a7;
    *(v29 + 16) = a6;
    *(v29 + 24) = a7;
    v31 = a8;
    *(v29 + 32) = a8;
    *(v29 + 40) = a10;
    v32 = v181;
    v33 = v181 >> 62;
    v28[7] = v181;
    if (v32 >> 62)
    {
      if (v33 != 1)
      {
LABEL_114:
        v54 = 1;
LABEL_33:
        v28[8] = v54;
        v181 = v28;
        goto LABEL_34;
      }

      v34 = ((v181 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v34 = (v181 + 64);
    }

    v53 = *v34;

    v54 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_116:
    }

    goto LABEL_33;
  }

  v31 = a8;
  v30 = a7;
LABEL_34:
  v55 = v162[4];
  outlined copy of _CodingKey?(a6, v30, v31, v18);

  v56 = JSONMap.loadValue(at:)(a1);
  if (v58 >= 0xFEu)
  {
    v59 = v180;
LABEL_117:

    v176 = v59;
    return swift_dynamicCast();
  }

  v60 = v56;
  v61 = v57;
  v62 = v58;
  v150 = (v181 & 0x3FFFFFFFFFFFFFFFLL) + 32;
  v153 = (v181 + 64);
  v154 = v181 >> 62;
  v157 = v55;
  while (1)
  {
    v65 = JSONMap.offset(after:)(a1);
    v66 = JSONMap.loadValue(at:)(v65);
    if (v68 > 0xFDu)
    {
      goto LABEL_129;
    }

    v59 = v66;
    v30 = v67;
    a6 = v68;
    a1 = JSONMap.offset(after:)(v65);
    v164 = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v60, v61, v62, v181, 0, 0, 0, 255);
    if (v12)
    {
      goto LABEL_116;
    }

    v70 = v69;
    v161 = a1;
    v71 = (*(v159 + 8))();
    v178 = v71;
    v179 = v72;
    v73 = __swift_allocate_boxed_opaque_existential_0(&v176);
    if (v71 == &type metadata for Date)
    {

      specialized JSONDecoderImpl.unwrapDate<A>(from:for:_:)(v59, v30, a6, v181, v164, v70, 0, 0, &v171);

      goto LABEL_50;
    }

    if (v71 == &type metadata for Data)
    {

      v75 = specialized JSONDecoderImpl.unwrapData<A>(from:for:_:)(v59, v30, a6, v181, v164, v70, 0, 0);
      v77 = v76;

      v171 = v75;
      v172 = v77;
      goto LABEL_50;
    }

    if (v71 != &type metadata for URL)
    {
      v28 = v73;
      type metadata accessor for NSDecimal(0);
      if (v71 != v74)
      {
        if (swift_conformsToProtocol2() && v71)
        {

          specialized JSONDecoderImpl.unwrapDictionary<A, B>(from:as:for:_:)(v59, v30, a6, v71, v181, v164, v70, 0, v28, 0, v71);

          goto LABEL_51;
        }

        v108 = swift_allocObject();
        v108[5] = &type metadata for _CodingKey;
        v108[6] = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v109 = swift_allocObject();
        v108[2] = v109;
        *(v109 + 16) = v164;
        *(v109 + 24) = v70;
        *(v109 + 32) = 0;
        *(v109 + 40) = 0;
        v108[7] = v181;
        v110 = v153;
        if (v154)
        {
          v111 = 0;
          if (v154 != 1)
          {
LABEL_85:
            if (__OFADD__(v111, 1))
            {
              goto LABEL_125;
            }

            v108[8] = v111 + 1;
            v151 = v162[20];
            v162[20] = v108;
            v112 = v162[2];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v162[2] = v112;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v112 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v112 + 2) + 1, 1, v112);
              v162[2] = v112;
            }

            v115 = *(v112 + 2);
            v114 = *(v112 + 3);
            v116 = v115 + 1;
            if (v115 >= v114 >> 1)
            {
              v134 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v114 > 1), v115 + 1, 1, v112);
              v116 = v115 + 1;
              v112 = v134;
            }

            *(v112 + 2) = v116;
            v117 = &v112[24 * v115];
            *(v117 + 4) = v59;
            *(v117 + 5) = v30;
            v117[48] = a6;
            v59 = v162;
            v162[2] = v112;
            v174 = type metadata accessor for JSONDecoderImpl();
            v175 = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl, &protocol conformance descriptor for JSONDecoderImpl);
            v171 = v162;

            dispatch thunk of Decodable.init(from:)();
            v31 = v151;
            v162[20] = v151;

            v28 = v162[2];
            if (!v28[2])
            {
              goto LABEL_126;
            }

            v18 = &_sypSgMR;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v118 = v28[2];
              if (!v118)
              {
                goto LABEL_113;
              }
            }

            else
            {
              v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
              v118 = v28[2];
              if (!v118)
              {
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }
            }

            v28[2] = v118 - 1;
            v162[2] = v28;

            goto LABEL_51;
          }

          v110 = v150;
        }

        v111 = *v110;

        goto LABEL_85;
      }

      v103 = specialized JSONDecoderImpl.unwrapDecimal<A>(from:for:_:)(v59, v30, a6, v181, v164, v70, 0, 0);
      v105 = v104;
      v107 = v106;

      v171 = v103;
      v172 = v105;
      v173 = v107;
LABEL_50:
      swift_dynamicCast();
      goto LABEL_51;
    }

    if ((a6 & 0xE0) == 0xA0 && a6 == 160 && !(v59 | v30))
    {
      v135 = type metadata accessor for DecodingError();
      swift_allocError();
      v137 = v142;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v137 = &type metadata for URL;

      v143 = _CodingPathNode.path.getter(v181);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v144 = swift_initStackObject();
      *(v144 + 16) = xmmword_181218E20;
      *(v144 + 56) = &type metadata for _CodingKey;
      *(v144 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v145 = swift_allocObject();
      *(v144 + 32) = v145;
      *(v145 + 16) = v164;
      *(v145 + 24) = v70;
      *(v145 + 32) = 0;
      *(v145 + 40) = 0;
      *&v168 = v143;
      specialized Array.append<A>(contentsOf:)(v144);

      *&v168 = 0;
      *(&v168 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](5001813, 0xE300000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v141 = MEMORY[0x1E69E6B08];
LABEL_121:
      (*(*(v135 - 8) + 104))(v137, *v141, v135);
      swift_willThrow();

LABEL_122:

      return __swift_deallocate_boxed_opaque_existential_1(&v176);
    }

    v94 = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v59, v30, a6, v181, v164, v70, 0, 0);
    v96 = v95;
    if (one-time initialization token for compatibility2 != -1)
    {
      swift_once();
    }

    if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
    {
      v97 = type metadata accessor for _BridgedURL();
      v98 = &protocol witness table for _BridgedURL;
    }

    else
    {
      v97 = type metadata accessor for _SwiftURL();
      v98 = &protocol witness table for _SwiftURL;
    }

    v99 = v98[1];

    if (!v99(v94, v96))
    {

      v135 = type metadata accessor for DecodingError();
      swift_allocError();
      v137 = v136;

      v138 = _CodingPathNode.path.getter(v181);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v139 = swift_initStackObject();
      *(v139 + 16) = xmmword_181218E20;
      *(v139 + 56) = &type metadata for _CodingKey;
      *(v139 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v140 = swift_allocObject();
      *(v139 + 32) = v140;
      *(v140 + 16) = v164;
      *(v140 + 24) = v70;
      *(v140 + 32) = 0;
      *(v140 + 40) = 0;
      *&v168 = v138;
      specialized Array.append<A>(contentsOf:)(v139);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v141 = MEMORY[0x1E69E6B00];
      goto LABEL_121;
    }

    v100 = (v98[56])(v97, v98);
    v102 = v101;

    swift_unknownObjectRelease();
    v171 = v100;
    v172 = v102;
    swift_dynamicCast();
LABEL_51:
    v78 = v178;
    v79 = __swift_project_boxed_opaque_existential_1(&v176, v178);
    v174 = v78;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v171);
    (*(*(v78 - 8) + 16))(boxed_opaque_existential_0, v79, v78);
    v81 = v180;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v81;
    v28 = v81;
    v83 = specialized __RawDictionaryStorage.find<A>(_:)(v164, v70);
    v84 = *(v81 + 16);
    v85 = (v82 & 1) == 0;
    v86 = v84 + v85;
    if (__OFADD__(v84, v85))
    {
      break;
    }

    v87 = v82;
    if (*(v81 + 24) >= v86)
    {
      if (v59)
      {
        v59 = v81;
      }

      else
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
        v119 = static _DictionaryStorage.copy(original:)();
        v59 = v119;
        if (*(v81 + 16))
        {
          v120 = (v119 + 64);
          __src = (v81 + 64);
          v121 = ((1 << *(v59 + 32)) + 63) >> 6;
          if (v59 != v81 || v120 >= &__src[8 * v121])
          {
            memmove(v120, __src, 8 * v121);
          }

          v122 = 0;
          *(v59 + 16) = *(v81 + 16);
          v123 = 1 << *(v81 + 32);
          if (v123 < 64)
          {
            v124 = ~(-1 << v123);
          }

          else
          {
            v124 = -1;
          }

          v125 = v124 & *(v81 + 64);
          v126 = (v123 + 63) >> 6;
          v148 = v126;
          if (v125)
          {
            do
            {
              v127 = __clz(__rbit64(v125));
              v155 = (v125 - 1) & v125;
LABEL_108:
              v130 = v127 | (v122 << 6);
              v149 = 16 * v130;
              v131 = (*(v81 + 48) + 16 * v130);
              v28 = v131[1];
              v152 = *v131;
              v132 = 32 * v130;
              outlined init with copy of Any(*(v81 + 56) + 32 * v130, &v168);
              v133 = (*(v59 + 48) + v149);
              *v133 = v152;
              v133[1] = v28;
              outlined init with take of Any(&v168, (*(v59 + 56) + v132));

              v126 = v148;
              v125 = v155;
            }

            while (v155);
          }

          v128 = v122;
          while (1)
          {
            v122 = v128 + 1;
            if (__OFADD__(v128, 1))
            {
              goto LABEL_127;
            }

            if (v122 >= v126)
            {
              a1 = v161;
              break;
            }

            v129 = *&__src[8 * v122];
            ++v128;
            if (v129)
            {
              v127 = __clz(__rbit64(v129));
              v155 = (v129 - 1) & v129;
              goto LABEL_108;
            }
          }
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v86, v59);
      v59 = v170;
      v88 = specialized __RawDictionaryStorage.find<A>(_:)(v164, v70);
      if ((v87 & 1) != (v89 & 1))
      {
        goto LABEL_131;
      }

      v83 = v88;
    }

    v28 = v157;
    if (v87)
    {
      outlined init with take of Any((*(v59 + 56) + 32 * v83), &v168);
    }

    else
    {
      v168 = 0u;
      v169 = 0u;
    }

    outlined init with copy of FloatingPointRoundingRule?(&v168, &v166, &_sypSgMd, &_sypSgMR);
    if (v167)
    {
      outlined destroy of TermOfAddress?(&v166, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      outlined destroy of TermOfAddress?(&v168, &_sypSgMd, &_sypSgMR);
      outlined destroy of TermOfAddress?(&v166, &_sypSgMd, &_sypSgMR);
      outlined init with copy of Any(&v171, &v168);
    }

    v165[0] = v168;
    v165[1] = v169;
    if (*(&v169 + 1))
    {
      outlined init with take of Any(v165, &v166);
      if (v87)
      {

        outlined init with take of Any(&v166, (*(v59 + 56) + 32 * v83));
      }

      else
      {
        *(v59 + 8 * (v83 >> 6) + 64) |= 1 << v83;
        v90 = (*(v59 + 48) + 16 * v83);
        *v90 = v164;
        v90[1] = v70;
        outlined init with take of Any(&v166, (*(v59 + 56) + 32 * v83));
        v91 = *(v59 + 16);
        v92 = __OFADD__(v91, 1);
        v93 = v91 + 1;
        if (v92)
        {
          goto LABEL_124;
        }

        *(v59 + 16) = v93;
      }
    }

    else
    {

      outlined destroy of TermOfAddress?(v165, &_sypSgMd, &_sypSgMR);
      if (v87)
      {
        outlined destroy of String(*(v59 + 48) + 16 * v83);
        specialized _NativeDictionary._delete(at:)(v83, v59);
      }
    }

    v180 = v59;
    __swift_destroy_boxed_opaque_existential_1(&v171);
    __swift_destroy_boxed_opaque_existential_1(&v176);
    v60 = JSONMap.loadValue(at:)(a1);
    v61 = v63;
    v62 = v64;
    if (v64 > 0xFDu)
    {
      goto LABEL_117;
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
  __break(1u);
  v146 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
  v147 = *(v146 + 2);
  if (v147)
  {
    *(v146 + 2) = v147 - 1;
    *(v59 + 16) = v146;

    goto LABEL_122;
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Locale.LanguageCode.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v6)
  {
    v23 = a6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a4();
    dispatch thunk of Decoder.container<A>(keyedBy:)();
    LOBYTE(v25[0]) = 0;
    v12 = v26;
    countAndFlagsBits = KeyedDecodingContainer.decode(_:forKey:)();
    object = v16;
    LOBYTE(v25[0]) = 1;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    (*(v24 + 8))(v11, v12);

    a6 = v23;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v18 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v20 = v13;

    __swift_destroy_boxed_opaque_existential_1(v25);
    v14 = String.lowercased()();
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
  }

  *a6 = v18;
  a6[1] = v20;
  a6[2] = countAndFlagsBits;
  a6[3] = object;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.LanguageCode.CodingKeys and conformance Locale.LanguageCode.CodingKeys);
  }

  return result;
}

uint64_t _PlistUnkeyedDecodingContainer.decode(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v74 = v3;
  v68 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v56 - v7;
  v71 = AssociatedTypeWitness;
  v77 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v56 - v9;
  v75 = AssociatedConformanceWitness;
  v10 = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - v16;
  v18 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v56 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v67 = &v56 - v26;
  v27 = *(v12 + 16);
  v62 = *(v1 + 40);
  v27(v14, v78 + v62, v11, v25);
  v72 = *(v18 + 48);
  v73 = v18 + 48;
  v28 = v72(v14, 1, v10);
  v76 = v11;
  v69 = v12;
  if (v28 == 1)
  {
    v59 = v17;
    v60 = v10;
    v58 = v18;
    v57 = *(v12 + 8);
    v57(v14, v11);
    v61 = v1;
    swift_getAssociatedTypeWitness();
    v29 = swift_getAssociatedConformanceWitness();
    v30 = *(v29 + 16);
    v31 = swift_checkMetadataState();
    v32 = v78;
    v33 = v70;
    v30(v31, v29);
    v34 = v71;
    if ((*(v77 + 48))(v33, 1, v71) == 1)
    {
      (*(v64 + 8))(v33, v65);
      v35 = v59;
      (*(v58 + 56))(v59, 1, 1, v60);
      v1 = v61;
      v57(v35, v76);
LABEL_7:
      type metadata accessor for DecodingError();
      v36 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v1, v39);
      v79 = v36;
      swift_willThrow();
      return v36 & 1;
    }

    v46 = v66;
    (*(v77 + 32))(v66, v33, v34);
    v47 = v75;
    v48 = *(v75 + 80);
    swift_unknownObjectRetain();
    v36 = v46;
    v49 = swift_checkMetadataState();
    v50 = v63;
    v51 = v79;
    v48(v36, v49, v47);
    v79 = v51;
    if (v51)
    {
      (*(v77 + 8))(v36, v34);
      swift_unknownObjectRelease();
      return v36 & 1;
    }

    (*(v77 + 8))(v36, v34);
    swift_unknownObjectRelease();
    v54 = v62;
    v57((v32 + v62), v76);
    v18 = v58;
    v10 = v60;
    (*(v58 + 16))(v32 + v54, v50, v60);
    v37 = *(v18 + 56);
    v37(v32 + v54, 0, 1, v10);
    v36 = *(v18 + 32);
    v55 = v50;
    v17 = v59;
    (v36)(v59, v55, v10);
    v37(v17, 0, 1, v10);
    v1 = v61;
  }

  else
  {
    v36 = *(v18 + 32);
    (v36)(v23, v14, v10);
    (v36)(v17, v23, v10);
    v37 = *(v18 + 56);
    v37(v17, 0, 1, v10);
    v32 = v78;
  }

  v38 = v74;
  if (v72(v17, 1, v10) == 1)
  {
    (*(v69 + 8))(v17, v76);
    goto LABEL_7;
  }

  v40 = v67;
  (v36)();
  v42 = v1 + 48;
  v41 = *(v1 + 48);
  v43 = *(v32 + v41);
  v44 = v79;
  v45 = specialized _PlistDecoder.unwrapBool<A>(from:for:_:)(v40, *(v32 + *(v42 + 4)), v43, 0, 0, 2, v68, v38);
  v79 = v44;
  if (v44)
  {
    (*(v18 + 8))(v40, v10);
  }

  else
  {
    LOBYTE(v36) = v45;
    (*(v18 + 8))(v40, v10);
    *(v32 + v41) = v43 + 1;
    v52 = v62;
    (*(v69 + 8))(v32 + v62, v76);
    v37(v32 + v52, 1, 1, v10);
  }

  return v36 & 1;
}

{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v55 - v5;
  v68 = AssociatedTypeWitness;
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v55 - v7;
  v67 = AssociatedConformanceWitness;
  v8 = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  v16 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v71 = &v55 - v24;
  v25 = *(v10 + 16);
  v59 = *(a1 + 40);
  v25(v12, v76 + v59, v9, v23);
  v69 = v16[6];
  v70 = v16 + 6;
  v26 = v69(v12, 1, v8);
  v72 = v16;
  v73 = v9;
  v64 = v10;
  if (v26 == 1)
  {
    v65 = v8;
    v56 = *(v10 + 8);
    v57 = v15;
    v56(v12, v9);
    v58 = a1;
    v27 = v67;
    swift_getAssociatedTypeWitness();
    v28 = swift_getAssociatedConformanceWitness();
    v29 = *(v28 + 16);
    v30 = swift_checkMetadataState();
    v31 = v76;
    v32 = v66;
    v29(v30, v28);
    v33 = v68;
    if ((*(v75 + 48))(v32, 1, v68) == 1)
    {
      (*(v61 + 8))(v32, v62);
      v34 = v57;
      (v72[7])(v57, 1, 1, v65);
      a1 = v58;
      v56(v34, v73);
LABEL_7:
      type metadata accessor for DecodingError();
      swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(a1, v38);
      swift_willThrow();
      return v28;
    }

    v46 = v63;
    (*(v75 + 32))(v63, v32, v33);
    v28 = v27 + 80;
    v47 = *(v27 + 80);
    swift_unknownObjectRetain();
    v48 = swift_checkMetadataState();
    v49 = v60;
    v50 = v74;
    v47(v46, v48, v27);
    v74 = v50;
    if (v50)
    {
      (*(v75 + 8))(v46, v33);
      swift_unknownObjectRelease();
      return v28;
    }

    (*(v75 + 8))(v46, v33);
    swift_unknownObjectRelease();
    v53 = v59;
    v56((v31 + v59), v73);
    v54 = v72;
    v8 = v65;
    (v72[2])(v31 + v53, v49, v65);
    v35 = v54[7];
    v35(v31 + v53, 0, 1, v8);
    v28 = v54[4];
    v15 = v57;
    (v28)(v57, v49, v8);
    v35(v15, 0, 1, v8);
    a1 = v58;
  }

  else
  {
    v28 = v16[4];
    (v28)(v21, v12, v8);
    (v28)(v15, v21, v8);
    v35 = v16[7];
    v35(v15, 0, 1, v8);
    v31 = v76;
  }

  v36 = v69(v15, 1, v8);
  v37 = v71;
  if (v36 == 1)
  {
    (*(v64 + 8))(v15, v73);
    goto LABEL_7;
  }

  v39 = v72;
  (v28)(v71, v15, v8);
  v65 = v8;
  v41 = a1 + 48;
  v40 = *(a1 + 48);
  v42 = *(v31 + v40);
  v43 = v74;
  v44 = specialized _PlistDecoder.unwrapString<A>(from:for:_:)(v37, *(v31 + *(v41 + 4)), v42, 0, 0, 2);
  if (v43)
  {
    (v39[1])(v37, v65);
  }

  else
  {
    v28 = v44;
    v51 = v65;
    (v39[1])(v37, v65);
    *(v31 + v40) = v42 + 1;
    v52 = v59;
    (*(v64 + 8))(v31 + v59, v73);
    v35(v31 + v52, 1, 1, v51);
  }

  return v28;
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E6530];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type Int and conformance Int();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E6530], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E7230];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type Int8 and conformance Int8();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E7230], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E7290];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type Int16 and conformance Int16();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E7290], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E72F0];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type Int32 and conformance Int32();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E72F0], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E7360];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type Int64 and conformance Int64();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E7360], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E6810];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type UInt and conformance UInt();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E6810], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E7508];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type UInt8 and conformance UInt8();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E7508], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E75F8];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type UInt16 and conformance UInt16();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E75F8], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E7668];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E7668], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v94 = v3;
  v101 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v92 = type metadata accessor for Optional();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v86 - v6;
  v98 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v86 - v8;
  v102 = AssociatedConformanceWitness;
  v9 = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v86 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v86 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v103 = &v86 - v25;
  v26 = *(v11 + 16);
  v88 = *(a1 + 40);
  v26(v13, &v107[v88], v10, v24);
  v27 = v17[6];
  v100 = v17 + 6;
  v99 = v27;
  v28 = v27(v13, 1, v9);
  v104 = a1;
  v96 = v11;
  if (v28 == 1)
  {
    v86 = v16;
    v97 = v17;
    v95 = v9;
    v29 = *(v11 + 8);
    v89 = v10;
    v87 = v29;
    v29(v13, v10);
    v30 = v107;
    swift_getAssociatedTypeWitness();
    v31 = swift_getAssociatedConformanceWitness();
    v32 = *(v31 + 16);
    v33 = swift_checkMetadataState();
    v34 = v30;
    v35 = v105;
    v32(v33, v31);
    v36 = v35;
    v37 = v98;
    if ((*(v106 + 48))(v36, 1, v98) == 1)
    {
      (*(v91 + 8))(v105, v92);
      v38 = v86;
      (v97[7])(v86, 1, 1, v95);
      v39 = v104;
      v87(v38, v89);
LABEL_7:
      type metadata accessor for DecodingError();
      v48 = swift_allocError();
      specialized _PlistUnkeyedDecodingContainer.errorForEndOfContainer<A>(type:)(v39, v49);
      v108 = v48;
      return swift_willThrow();
    }

    v63 = v93;
    (*(v106 + 32))(v93, v105, v37);
    v64 = v34;
    v65 = v102;
    v66 = *(v102 + 80);
    swift_unknownObjectRetain();
    v67 = v63;
    v68 = swift_checkMetadataState();
    v69 = v90;
    v70 = v108;
    v66(v67, v68, v65);
    v9 = v95;
    v108 = v70;
    if (v70)
    {
      (*(v106 + 8))(v67, v37);
      return swift_unknownObjectRelease();
    }

    (*(v106 + 8))(v67, v37);
    swift_unknownObjectRelease();
    v77 = v88;
    v78 = v64;
    v10 = v89;
    v87(v64 + v88, v89);
    v17 = v97;
    (v97[2])(v64 + v77, v69, v9);
    v79 = v17[7];
    v79(v64 + v77, 0, 1, v9);
    v80 = v79;
    v40 = v17[4];
    v81 = v86;
    v40(v86, v69, v9);
    v82 = v80;
    v80(v81, 0, 1, v9);
    v43 = v81;
    v42 = v78;
    v41 = v82;
  }

  else
  {
    v40 = v17[4];
    v40(v22, v13, v9);
    v40(v16, v22, v9);
    v41 = v17[7];
    v41(v16, 0, 1, v9);
    v42 = v107;
    v43 = v16;
  }

  v44 = v99(v43, 1, v9);
  v45 = v103;
  v39 = v104;
  v46 = v43;
  v47 = v101;
  if (v44 == 1)
  {
    (*(v96 + 8))(v46, v10);
    goto LABEL_7;
  }

  v89 = v10;
  v97 = v17;
  v40(v103, v46, v9);
  v51 = *v42;
  v52 = v42;
  v53 = *(v42 + *(v39 + 52));
  v106 = *(v39 + 48);
  v54 = *(v52 + v106);
  v110[1] = 0;
  v110[2] = 0;
  v110[0] = v54;
  v111 = 2;
  v55 = v94;
  if ((*(v94 + 40))(v45, v47, v94))
  {
    v56 = type metadata accessor for DecodingError();
    v57 = swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v59 = MEMORY[0x1E69E76D8];
    v60 = _CodingPathNode.path.getter(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 56) = &type metadata for _CodingKey;
    *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v62 = swift_allocObject();
    *(inited + 32) = v62;
    *(v62 + 16) = v54;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 40) = 2;
    v109 = v60;
    specialized Array.append<A>(contentsOf:)(inited);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v56 - 8) + 104))(v59, *MEMORY[0x1E69E6B08], v56);
    v108 = v57;
    swift_willThrow();
  }

  else
  {
    v71 = v45;
    v95 = v9;
    v72 = *(v51 + 24);
    v105 = *(v55 + 88);
    v73 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    v74 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v75 = v74;
    v76 = v108;
    (v105)(&v112, v71, v72, v53, v110, MEMORY[0x1E69E76D8], &type metadata for _CodingKey, v73, v75, v47, v55);
    v108 = v76;
    if (!v76)
    {
      swift_unknownObjectRelease();
      v83 = v95;
      (v97[1])(v71, v95);
      v84 = v107;
      *&v107[v106] = v54 + 1;
      v85 = v88;
      (*(v96 + 8))(&v84[v88], v89);
      v41(&v84[v85], 1, 1, v83);
      return v112;
    }

    swift_unknownObjectRelease();
    v9 = v95;
  }

  return (v97[1])(v103, v9);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _PlistUnkeyedDecodingContainer<A>(uint64_t a1)
{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1) & 1;
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

{
  return _PlistUnkeyedDecodingContainer.decode(_:)(a1);
}

unint64_t BPlistMap.Value.debugDataTypeDescription.getter(unint64_t a1)
{
  v1 = a1 >> 60;
  if ((a1 >> 60) > 4)
  {
    if (v1 <= 6)
    {
      if (v1 == 5)
      {
        return 0x657461642061;
      }

      else
      {
        return 0x61656C6F6F622061;
      }
    }

    else if (v1 == 7)
    {
      return 0x6E206C6165722061;
    }

    else if (v1 == 8)
    {
      return 0x6765746E69206E61;
    }

    else
    {
      if (a1 == 0x9000000000000008)
      {
        v6 = 0x76206C6C756E2061;
      }

      else
      {
        v6 = 0xD000000000000012;
      }

      if (a1 == 0x9000000000000000)
      {
        return 0x6469752061;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v2 = 0x676E697274732061;
    v3 = 0x7465732061;
    v4 = 0x6F69746369642061;
    if (v1 != 3)
    {
      v4 = 0x7620617461642061;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (v1)
    {
      v2 = 0x7961727261206E61;
    }

    if (v1 <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t specialized _PlistDecoder.unwrapBool<A>(from:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v27 = a6;
  if ((*(a8 + 40))(a1, a7, a8))
  {
    v16 = type metadata accessor for DecodingError();
    swift_allocError();
    v18 = v17;
    *v17 = MEMORY[0x1E69E6370];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      v19 = _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      v28 = v19;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
    v24 = swift_willThrow();
  }

  else
  {
    v22 = *(a8 + 48);
    v23 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v24 = v22(a1, a2, v26, &type metadata for _CodingKey, v23, a7, a8);
  }

  return v24 & 1;
}

double Locale.init(identifier:)@<D0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v4 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v4 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v4 + 16), &v8);
  os_unfair_lock_unlock((v4 + 48));
  v7 = v8;

  result = *&v7;
  *a3 = v7;
  return result;
}

uint64_t specialized static XMLPlistScanner.detectPossibleXMLPlist(for:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = &a1[a2];
  v4 = XMLPlistScanner.indexOfEndOfWhitespaceBytes(after:)(a1);

  if (v3 < (v4 + 1))
  {
    return 0;
  }

  if (v3 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v4 - a1 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v3 - v4) < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return *v4 == 60;
}

uint64_t _PlistKeyedDecodingContainer.allKeys.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v53 = type metadata accessor for Optional();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v45 - v9;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v50 = &v45 - v15;

  _swift_isClassOrObjCExistentialType();
  v16 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = (v11 + 48);
  v48 = v11;
  v49 = (v11 + 32);
  v22 = (v8 + 8);
  v55 = a2;

  v24 = 0;
  v52 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v19 &= v19 - 1;

    dispatch thunk of CodingKey.init(stringValue:)();
    if ((*v21)(v10, 1, a4) == 1)
    {
      result = (*v22)(v10, v53);
    }

    else
    {
      v26 = *v49;
      (*v49)(v50, v10, a4);
      v47 = v26;
      v26(v51, v50, a4);
      if (_swift_isClassOrObjCExistentialType())
      {
        v27 = v52;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v56 = v27;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if ((_swift_isClassOrObjCExistentialType() & 1) == 0)
          {
            goto LABEL_24;
          }

          v27 = v52;
          if ((v52 & 0x8000000000000000) == 0 && (v52 & 0x4000000000000000) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v27 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v27;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }
      }

      if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v27 < 0 || (v27 & 0x4000000000000000) != 0))
      {
        specialized _ArrayBuffer._nonNative.getter(v27);
        v32 = __CocoaSet.count.getter();
      }

      else
      {
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v31 = v27 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v31 = v27;
        }

        v32 = *(v31 + 16);
      }

      v52 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 + 1, 1, v27, a4);
      v56 = v52;
LABEL_24:
      v33 = _swift_isClassOrObjCExistentialType();
      v34 = v52;
      v35 = v52 & 0xFFFFFFFFFFFFFF8;
      v46 = v52 & 0xFFFFFFFFFFFFFF8;
      if ((v33 & 1) == 0)
      {
        v35 = v52;
      }

      v36 = *(v35 + 16);
      v37 = _swift_isClassOrObjCExistentialType();
      v38 = v46;
      if ((v37 & 1) == 0)
      {
        v38 = v34;
      }

      v39 = *(v38 + 24);
      v46 = v36;
      v40 = v36 + 1;
      if (v40 > (v39 >> 1))
      {
        LODWORD(v52) = v39 > 1;
        type metadata accessor for Array();
        Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v52, v40, 1);
        v52 = v56;
      }

      if (_swift_isClassOrObjCExistentialType())
      {
        v41 = v52;
        v42 = v40;
        v43 = v52 & 0xFFFFFFFFFFFFFF8;
        *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) = v42;
      }

      else
      {
        v41 = v52;
        *(v52 + 16) = v40;
        v43 = v41 & 0xFFFFFFFFFFFFFF8;
      }

      if (_swift_isClassOrObjCExistentialType())
      {
        v44 = v43;
      }

      else
      {
        v44 = v41;
      }

      result = (v47)(v44 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v46, v51, a4);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      return v52;
    }

    v19 = *(v16 + 8 * v24);
    ++v25;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC9BPlistMapC0K0O_Tt3g5Tm@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, void *a5@<X8>)
{
  _StringGuts.grow(_:)(43);

  v9 = _typeName(_:qualified:)();
  MEMORY[0x1865CB0E0](v9);

  MEMORY[0x1865CB0E0](0x756F662074756220, 0xEB0000000020646ELL);
  v10 = a4(a3);
  MEMORY[0x1865CB0E0](v10);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
  *a5 = a2;

  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  v11 = *MEMORY[0x1E69E6AF8];
  v12 = type metadata accessor for DecodingError();
  v13 = *(*(v12 - 8) + 104);

  return v13(a5, v11, v12);
}

uint64_t getEnumTagSinglePayload for _CodingKey(uint64_t a1, unsigned int a2)
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

unint64_t parseQuotedPlistString(_:quote:)(unint64_t *a1, unsigned __int16 a2)
{
  v40 = 0uLL;
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  v8 = v3 >> 14;
  if (v3 >> 14 >= 4 * v6)
  {
    v20 = a1[3];
LABEL_67:
    a1[2] = v3;
    v25 = v3;
    _StringGuts.grow(_:)(46);

    *&v38 = 0xD00000000000002CLL;
    *(&v38 + 1) = 0x8000000181484A40;
    goto LABEL_68;
  }

  v36 = 0uLL;
  v10 = (v5 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v35 = a1[2];
  result = v35;
  while (2)
  {
    v37 = result;
    v13 = result;
    while (1)
    {
      v14 = v13;
      if ((v13 & 0xC) == v11)
      {
        v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v13, v5, v4);
      }

      result = v14 >> 16;
      if (v14 >> 16 >= v6)
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        LOWORD(result) = String.UTF16View._foreignSubscript(position:)();
LABEL_22:
        LOWORD(v15) = result;
        goto LABEL_23;
      }

      if ((v14 & 1) == 0)
      {
        _StringGuts.scalarAlignSlow(_:)(v14, v5, v4);
      }

      result = _StringGuts.fastUTF8Scalar(startingAt:)();
      if ((v14 & 0xC000) == 0x4000)
      {
        if (result < 0x10000)
        {
          goto LABEL_78;
        }

        LOWORD(v15) = result & 0x3FF | 0xDC00;
      }

      else
      {
        if (!WORD1(result))
        {
          goto LABEL_22;
        }

        v15 = ((result + 67043328) >> 10) + 55296;
        if ((v15 & 0x10000) != 0)
        {
          goto LABEL_79;
        }
      }

LABEL_23:
      if (v15 == a2)
      {
        goto LABEL_59;
      }

      if (v15 == 92)
      {
        break;
      }

      _ParseInfo.advance()();
      v13 = a1[2];
      v8 = v13 >> 14;
      if (v13 >> 14 >= v7)
      {
LABEL_59:
        result = v37;
LABEL_60:
        v20 = a1[3];
        if (v8 >= v7)
        {
          v3 = v35;
          goto LABEL_67;
        }

        v21 = result >> 14;
        if (*(&v36 + 1))
        {
          v22 = v36;
          if (v21 == v8)
          {
LABEL_73:
            _ParseInfo.advance()();

            a1[3] = 0;

            goto LABEL_74;
          }

          if (v8 >= v21)
          {
            v23 = MEMORY[0x1865CB250]();
            result = MEMORY[0x1865CB2D0](v23);
            if (v24)
            {
              MEMORY[0x1865CB0E0](result);

              v22 = v40;
              goto LABEL_73;
            }

LABEL_86:
            __break(1u);
            return result;
          }

          goto LABEL_82;
        }

        if (v8 >= v21)
        {
          v30 = MEMORY[0x1865CB250]();
          result = MEMORY[0x1865CB2D0](v30);
          if (v31)
          {
            v22 = result;
            goto LABEL_73;
          }

          goto LABEL_85;
        }

LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }
    }

    if (!*(&v36 + 1))
    {
      v40 = xmmword_1812476D0;
    }

    result = v37;
    if (v8 < v37 >> 14)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v16 = MEMORY[0x1865CB250]();
    result = MEMORY[0x1865CB2D0](v16);
    if (!v17)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    MEMORY[0x1865CB0E0](result);

    _ParseInfo.advance()();
    v18 = a1[2];
    if (v7 <= v18 >> 14)
    {
      v25 = a1[2];
      _StringGuts.grow(_:)(42);

      *&v38 = 0xD000000000000028;
      *(&v38 + 1) = 0x8000000181484A70;
      v20 = a1[3];
LABEL_68:
      specialized lineNumberStrings(_:)(v5, v4, v25);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v26);

      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v27 = swift_allocError();
      *v28 = v38;
      v29 = v20;
      goto LABEL_69;
    }

    v19 = specialized _ParseInfo.currChar.getter(v5, v4, v18);
    _ParseInfo.advance()();
    LOWORD(result) = v19;
    if ((v19 - 56) > 0xFFF7u)
    {
      LOWORD(result) = parseOctal(startingWith:_:)(v19, a1);
      goto LABEL_39;
    }

    if (v19 > 0x6Du)
    {
      if (v19 > 0x73u)
      {
        if (v19 == 116)
        {
          result = 9;
        }

        else
        {
          if (v19 != 118)
          {
            goto LABEL_39;
          }

          result = 17;
        }
      }

      else if (v19 == 110)
      {
        result = 10;
      }

      else
      {
        if (v19 != 114)
        {
          goto LABEL_39;
        }

        result = 13;
      }

      goto LABEL_41;
    }

    if (v19 > 0x61u)
    {
      if (v19 == 98)
      {
        result = 8;
      }

      else
      {
        if (v19 != 102)
        {
          goto LABEL_39;
        }

        result = 18;
      }

LABEL_41:
      if (!*(&v40 + 1))
      {
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      String.UnicodeScalarView.append(_:)();
      v36 = v40;
      result = a1[2];
      v8 = result >> 14;
      if (result >> 14 < v7)
      {
        continue;
      }

      goto LABEL_60;
    }

    break;
  }

  if (v19 == 85)
  {
    LOWORD(result) = parseU16Scalar(_:)(a1);
  }

  else if (v19 == 97)
  {
    result = 7;
    goto LABEL_41;
  }

LABEL_39:
  if (result >> 11 != 27)
  {
    result = result;
    goto LABEL_41;
  }

  _StringGuts.grow(_:)(28);

  *&v39 = 0xD00000000000001ALL;
  *(&v39 + 1) = 0x8000000181484AA0;
  v32 = a1[3];
  specialized lineNumberStrings(_:)(v5, v4, a1[2]);
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v33);

  lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
  v27 = swift_allocError();
  *v34 = v39;
  v29 = v32;
LABEL_69:

  v22 = 0;
  a1[3] = v27;
LABEL_74:

  return v22;
}

void partial apply for closure #3 in PropertyListDecoder._decode<A>(_:from:format:)(uint64_t a1, unint64_t a2)
{
  partial apply for closure #3 in PropertyListDecoder._decode<A>(_:from:format:)(a1, a2);
}

{
  closure #3 in PropertyListDecoder._decode<A>(_:from:format:)(a1, a2, *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t parsePlistDict(_:depth:)(uint64_t *a1, int a2)
{
  result = parsePlistDictContent(_:depth:)(a1, a2);
  if (result)
  {
    v4 = result;
    if ((advanceToNonSpace(_:)(a1) & 1) != 0 && specialized _ParseInfo.currChar.getter(*a1, a1[1], a1[2]) == 125)
    {
      _ParseInfo.advance()();
      return v4;
    }

    else
    {

      _StringGuts.grow(_:)(50);

      v5 = a1[3];
      specialized lineNumberStrings(_:)(*a1, a1[1], a1[2]);
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v6);

      lazy protocol witness table accessor for type OpenStepPlistError and conformance OpenStepPlistError();
      v7 = swift_allocError();
      *v8 = 0xD000000000000030;
      v8[1] = 0x8000000181484950;

      result = 0;
      a1[3] = v7;
    }
  }

  return result;
}

void _ParseInfo.retreat()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = (*v0 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((*(v0 + 16) & 0xCLL) != 4 << v4)
  {
    if (v3 >= 0x4000)
    {
      goto LABEL_5;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v3 = _StringGuts._slowEnsureMatchingEncoding(_:)(*(v0 + 16), *v0, *(v0 + 8));
  if (v3 < 0x4000)
  {
    goto LABEL_23;
  }

LABEL_5:
  v5 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v5 < v3 >> 14)
  {
    goto LABEL_24;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
LABEL_25:
    v7 = MEMORY[0x1865CB1D0](v3, v1, v2);
    goto LABEL_21;
  }

  v6 = (v2 >> 62) & 1;
  if ((v2 & 0x2000000000000000) == 0)
  {
    LOBYTE(v6) = v1 < 0;
  }

  if (v6)
  {
    v7 = (v3 & 0xFFFFFFFFFFFF0000) - 65523;
LABEL_21:
    *(v0 + 16) = v7;
    return;
  }

  if ((v3 & 0xC000) != 0)
  {
    v7 = v3 & 0xFFFFFFFFFFFF0000 | 5;
    goto LABEL_21;
  }

  if ((v3 & 1) == 0)
  {
    v3 = _StringGuts.scalarAlignSlow(_:)(v3, v1, v2);
  }

  v8 = _StringGuts.fastUTF8ScalarLength(endingAt:)(v3 >> 16);
  if (v8 == 4)
  {
    v7 = (v3 & 0xFFFFFFFFFFFF0000) - 245756;
    goto LABEL_21;
  }

  if (!__OFSUB__(0, v8))
  {
    v7 = (((v3 >> 16) - v8) << 16) | 5;
    goto LABEL_21;
  }

  __break(1u);
}

Swift::Bool __swiftcall _PlistDecoder.decodeNil()()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  v21 = v2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  v15 = v0[2];

  if (MEMORY[0x1865CB560](v16, AssociatedTypeWitness))
  {
    v20 = v1;
    v22 = v15;
    type metadata accessor for Array();
    swift_getWitnessTable();
    BidirectionalCollection.last.getter();
    (*(v5 + 16))(v7, v10, v4);
    if ((*(v11 + 48))(v7, 1, AssociatedTypeWitness) != 1)
    {

      (*(v5 + 8))(v10, v4);
      (*(v11 + 32))(v14, v7, AssociatedTypeWitness);
      v17 = (*(v20 + 40))(v14);
      (*(v11 + 8))(v14, AssociatedTypeWitness);
      return v17 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  result = (*(v5 + 8))(v7, v4);
  __break(1u);
  return result;
}

uint64_t advanceToNonSpace(_:)(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 4 * v3;
  v5 = a1[2];
  if (4 * v3 <= v5 >> 14)
  {
    return 0;
  }

  v7 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  while (1)
  {
    if ((v5 & 0xC) == v8)
    {
      v5 = _StringGuts._slowEnsureMatchingEncoding(_:)(v5, v1, v2);
    }

    result = v5 >> 16;
    if (v5 >> 16 >= v3)
    {
      break;
    }

    if ((v2 & 0x1000000000000000) != 0)
    {
      LOWORD(result) = String.UTF16View._foreignSubscript(position:)();
LABEL_23:
      LOWORD(v10) = result;
      goto LABEL_24;
    }

    if ((v5 & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(v5, v1, v2);
    }

    result = _StringGuts.fastUTF8Scalar(startingAt:)();
    if ((v5 & 0xC000) == 0x4000)
    {
      if (result < 0x10000)
      {
        goto LABEL_87;
      }

      LOWORD(v10) = result & 0x3FF | 0xDC00;
    }

    else
    {
      if (!WORD1(result))
      {
        goto LABEL_23;
      }

      v10 = ((result + 67043328) >> 10) + 55296;
      if ((v10 & 0x10000) != 0)
      {
        goto LABEL_89;
      }
    }

LABEL_24:
    _ParseInfo.advance()();
    if (v10 <= 0x1Fu)
    {
      if (v10 - 9 >= 5)
      {
        goto LABEL_84;
      }
    }

    else if (v10 - 8232 >= 2 && v10 != 32)
    {
      if (v10 != 47)
      {
        goto LABEL_84;
      }

      v11 = a1[2];
      if (v4 <= v11 >> 14)
      {
        goto LABEL_84;
      }

      if (specialized _ParseInfo.currChar.getter(v1, v2, a1[2]) == 47)
      {
        while (1)
        {
          _ParseInfo.advance()();
          v12 = a1[2];
          if (v4 <= v12 >> 14)
          {
            goto LABEL_9;
          }

          if ((a1[2] & 0xC) == v8)
          {
            v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1[2], v1, v2);
          }

          result = v12 >> 16;
          if (v12 >> 16 >= v3)
          {
            goto LABEL_90;
          }

          if ((v2 & 0x1000000000000000) != 0)
          {
            LOWORD(result) = String.UTF16View._foreignSubscript(position:)();
          }

          else
          {
            if ((v12 & 1) == 0)
            {
              _StringGuts.scalarAlignSlow(_:)(v12, v1, v2);
            }

            result = _StringGuts.fastUTF8Scalar(startingAt:)();
            if ((v12 & 0xC000) == 0x4000)
            {
              if (result < 0x10000)
              {
                goto LABEL_93;
              }

              LOWORD(v13) = result & 0x3FF | 0xDC00;
              goto LABEL_45;
            }

            if (WORD1(result))
            {
              v13 = ((result + 67043328) >> 10) + 55296;
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_94;
              }

              goto LABEL_45;
            }
          }

          LOWORD(v13) = result;
LABEL_45:
          if (v13 - 8232 < 2 || v13 == 10 || v13 == 13)
          {
            goto LABEL_9;
          }
        }
      }

      if (specialized _ParseInfo.currChar.getter(v1, v2, v11) != 42)
      {
LABEL_84:
        _ParseInfo.retreat()();
        return 1;
      }

LABEL_52:
      _ParseInfo.advance()();
      do
      {
        while (2)
        {
          v14 = a1[2];
          do
          {
            if (v4 <= v14 >> 14)
            {
              goto LABEL_9;
            }

            if ((v14 & 0xC) == v8)
            {
              v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, v1, v2);
            }

            result = v14 >> 16;
            if (v14 >> 16 >= v3)
            {
              goto LABEL_86;
            }

            if ((v2 & 0x1000000000000000) != 0)
            {
              LOWORD(v15) = String.UTF16View._foreignSubscript(position:)();
            }

            else
            {
              if ((v14 & 1) == 0)
              {
                _StringGuts.scalarAlignSlow(_:)(v14, v1, v2);
              }

              result = _StringGuts.fastUTF8Scalar(startingAt:)();
              LOWORD(v15) = result;
              if ((v14 & 0xC000) == 0x4000)
              {
                if (result < 0x10000)
                {
                  goto LABEL_88;
                }

                goto LABEL_52;
              }

              if (WORD1(result))
              {
                v15 = ((result + 67043328) >> 10) + 55296;
                if ((v15 & 0x10000) != 0)
                {
                  goto LABEL_92;
                }
              }
            }

            _ParseInfo.advance()();
            v14 = a1[2];
          }

          while (v15 != 42 || v14 >> 14 >= v4);
          if ((a1[2] & 0xC) == v8)
          {
            v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(a1[2], v1, v2);
          }

          result = v14 >> 16;
          if (v14 >> 16 >= v3)
          {
            goto LABEL_91;
          }

          if ((v2 & 0x1000000000000000) != 0)
          {
            LOWORD(result) = String.UTF16View._foreignSubscript(position:)();
          }

          else
          {
            if ((v14 & 1) == 0)
            {
              _StringGuts.scalarAlignSlow(_:)(v14, v1, v2);
            }

            result = _StringGuts.fastUTF8Scalar(startingAt:)();
            if ((v14 & 0xC000) == 0x4000)
            {
              if (result < 0x10000)
              {
                goto LABEL_95;
              }

              continue;
            }

            if (result >= 0x10000)
            {
              result = ((result + 67043328) >> 10) + 55296;
              if ((result & 0x10000) != 0)
              {
                goto LABEL_96;
              }
            }
          }

          break;
        }
      }

      while (result != 47);
      _ParseInfo.advance()();
    }

LABEL_9:
    v5 = a1[2];
    if (v4 <= v5 >> 14)
    {
      return 0;
    }
  }

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
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t specialized _ParseInfo.currChar.getter(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  if ((a3 & 0xC) == 4 << v6)
  {
    v9 = a3;
    v10 = v5;
    v11 = a2;
    v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, v5, a2);
    v5 = v10;
    a2 = v11;
    a3 = v12;
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 >> 16 >= v7)
  {
    __break(1u);
  }

  else if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a3 & 1) == 0)
    {
      _StringGuts.scalarAlignSlow(_:)(a3, v5, a2);
    }

    _StringGuts.fastUTF8Scalar(startingAt:)();

    return Unicode.Scalar.UTF16View.subscript.getter();
  }

  return String.UTF16View._foreignSubscript(position:)();
}

unint64_t _ParseInfo.advance()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = (*v0 >> 59) & 1;
  if ((v1 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  if ((v0[2] & 0xC) == 4 << v4)
  {
    v3 = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, *v0, v0[1]);
  }

  v5 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v6 = v3 >> 16;
  if (v3 >> 16 >= v5)
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
LABEL_23:
    result = MEMORY[0x1865CB1C0]();
    goto LABEL_29;
  }

  v7 = (v1 >> 62) & 1;
  if ((v1 & 0x2000000000000000) == 0)
  {
    LOBYTE(v7) = v2 < 0;
  }

  if ((v7 & 1) == 0)
  {
    if ((v3 & 0xC001) != 0)
    {
      if ((v1 & 0x2000000000000000) == 0)
      {
LABEL_15:
        if ((v2 & 0x1000000000000000) != 0)
        {
          LODWORD(v9) = *((v1 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
          if ((v9 & 0x80) != 0)
          {
            goto LABEL_17;
          }

LABEL_26:
          v9 = 1;
          goto LABEL_27;
        }

        v12 = v3;
        v11 = v6;
        v9 = _StringObject.sharedUTF8.getter();
        v3 = v12;
        LODWORD(v9) = *(v9 + v11);
        if ((v9 & 0x80) == 0)
        {
          goto LABEL_26;
        }

LABEL_17:
        LODWORD(v9) = __clz(v9 ^ 0xFF) - 24;
        if (v9 == 4)
        {
          if ((v3 & 0xC000) == 0)
          {
            v10 = 16388;
LABEL_28:
            result = v3 & 0xFFFFFFFFFFFF0000 | v10;
            goto LABEL_29;
          }

          v9 = 4;
        }

        else
        {
          v9 = v9;
        }

LABEL_27:
        v3 += v9 << 16;
        v10 = 5;
        goto LABEL_28;
      }
    }

    else
    {
      v3 = _StringGuts.scalarAlignSlow(_:)(v3, v2, v1);
      v6 = v3 >> 16;
      if ((v1 & 0x2000000000000000) == 0)
      {
        goto LABEL_15;
      }
    }

    v13[0] = v2;
    v13[1] = v1 & 0xFFFFFFFFFFFFFFLL;
    LODWORD(v9) = *(v13 + v6);
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  result = (v3 & 0xFFFFFFFFFFFF0000) + 65549;
LABEL_29:
  v0[2] = result;
  return result;
}

unint64_t static PropertyListDecoder.detectEncoding(of:)(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    goto LABEL_53;
  }

  if (a3 == 1)
  {
    v4 = 0;
    v5 = 0;
LABEL_6:
    v6 = 0;
    v7 = 1;
LABEL_7:
    v8 = 1;
    v9 = *a2;
    goto LABEL_16;
  }

  v5 = a2[1];
  if (a3 < 3)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v6 = a2[2];
  if (a3 == 3)
  {
    v4 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
  v4 = a2[3];
  v9 = *a2;
  if (!*a2 && !a2[1] && v6 == 254 && v4 == 255)
  {
    v10 = 2550137088;
LABEL_33:
    *a1 = v10;
    return 4;
  }

LABEL_16:
  v12 = v9 != 254 || v5 != 255 || a3 == 1;
  v13 = v12;
  if (v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = v7;
  }

  if (v6)
  {
    v14 = 1;
  }

  if (((v8 | v14) & 1) == 0 && !v4)
  {
    v10 = 2617245952;
    goto LABEL_33;
  }

  if ((v13 & 1) == 0)
  {
    v16 = 2415919360;
    goto LABEL_40;
  }

  if (a3 != 1 && v9 == 255 && v5 == 254)
  {
    v16 = 2483028224;
LABEL_40:
    *a1 = v16;
    return 2;
  }

  if (v9 != 239 || v5 != 187 || a3 == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v7;
  }

  if ((v19 & 1) == 0 && v6 == 191)
  {
    *a1 = 4;
    return 3;
  }

LABEL_53:
  result = static PropertyListDecoder.scanForExplicitXMLEncoding(in:)(a2, a3, &v21);
  if (!v3)
  {
    result = 0;
    *a1 = v21;
  }

  return result;
}

uint64_t _s10Foundation19PropertyListDecoderC22withUTF8Representation2of14sourceEncoding_xAA10BufferViewVys5UInt8VG_SSAAE0J0VxAKKXEtKlFZyt_Tt3B5(char *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t))
{
  if (a3 == 4)
  {
    return a4(a1, a2);
  }

  v6 = _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5(a1, a2, a3);
  if (!v7)
  {
    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v13 = v12;
    _CodingPathNode.path.getter(0x8000000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B00], v11);
    return swift_willThrow();
  }

  v8 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v14 = static String._copying(_:)(v6, v7);
    v16 = v15;

    v6 = v14;
    v8 = v16;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v17[0] = v6;
    v17[1] = v8 & 0xFFFFFFFFFFFFFFLL;
    v9 = HIBYTE(v8) & 0xF;
    v10 = v17;
  }

  else
  {
    if ((v6 & 0x1000000000000000) == 0)
    {
      v10 = _StringObject.sharedUTF8.getter();
      if (v10)
      {
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_11;
    }

    v9 = v6 & 0xFFFFFFFFFFFFLL;
    v10 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

LABEL_11:
  a4(v10, v9);
}

unint64_t static PropertyListDecoder.scanForExplicitXMLEncoding(in:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  if (a2 >= 5)
  {
    v5 = result;
    result = strncmp(result, "<?xml", 5uLL);
    if (!result && a2 != 5)
    {
      v6 = 0;
      v7 = v5 + a2;
      v8 = a2 - 14;
      while (1)
      {
        result = v5 + v6 + 5;
        if ((*result & 0xFE) == 0x3E)
        {
          goto LABEL_4;
        }

        if (v7 < result)
        {
          break;
        }

        if (v6 < 0)
        {
          goto LABEL_20;
        }

        if (v8 + 9 < 0)
        {
          goto LABEL_21;
        }

        if ((v8 + 9) < 0xA)
        {
          v9 = type metadata accessor for DecodingError();
          swift_allocError();
          v11 = v10;
          _CodingPathNode.path.getter(0x8000000000000000);
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B00], v9);
          return swift_willThrow();
        }

        result = strncmp(result, "encoding=", 9uLL);
        if (!result)
        {
          result = v5 + v6 + 14;
          if (v7 >= result)
          {
            if (v6 + 14 >= 0)
            {
              if ((v8 & 0x8000000000000000) == 0)
              {
                return static PropertyListDecoder.readQuotedEncoding(in:)(result, v8, a3);
              }

              goto LABEL_24;
            }

LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
            return result;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        --v8;
        ++v6;
        if (v5 + v6 + 5 >= v7)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

LABEL_4:
  *a3 = 4;
  return result;
}

uint64_t closure #1 in closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v17 = a3;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - v13;
  result = specialized static XMLPlistScanner.detectPossibleXMLPlist(for:)(a1, a2);
  if (result)
  {
    result = a4(a1, a2);
    if (!v6)
    {
      (*(*(a6 - 8) + 56))(v14, 0, 1, a6);
      return (*(v12 + 40))(v17, v14, v11);
    }
  }

  return result;
}

unsigned __int8 *XMLPlistScanner.indexOfEndOfWhitespaceBytes(after:)(unsigned __int8 *result)
{
  v2 = v1[4];
  if (v2 > result)
  {
    v3 = v1[1] + *v1 - result;
    for (i = &result[-*v1]; (i & 0x8000000000000000) == 0; ++i)
    {
      v5 = v3-- < 1;
      if (v5)
      {
        break;
      }

      v6 = *result;
      v5 = v6 > 0x20;
      v7 = (1 << v6) & 0x100002600;
      if (v5 || v7 == 0)
      {
        return result;
      }

      if (++result == v2)
      {
        return v1[4];
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.skipDTD()()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v2 + 7;
  if (v1 < v2 + 7)
  {
LABEL_9:
    _StringGuts.grow(_:)(24);

    BufferReader.lineNumber.getter();
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v6);

    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v7 = 0xD000000000000016;
    *(v7 + 8) = 0x8000000181486310;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v8 = 5;
LABEL_10:
    *(v7 + 32) = v8;
LABEL_11:
    swift_willThrow();
    return;
  }

  v4 = *v0 + v0[1];
  if (v4 < v2)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v2 - *v0 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v4 - v2) < 0)
  {
LABEL_21:
    __break(1u);
    return;
  }

  if (*v2 != 1413697348 || *(v2 + 3) != 1162893652)
  {
    goto LABEL_9;
  }

  v0[3] = v3;
  v9 = XMLPlistScanner.indexOfEndOfWhitespaceBytes(after:)(v3);
  v0[3] = v9;
  while (1)
  {
    if (v9 == v1)
    {
      v0[3] = v1;
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v13 = 0xD000000000000011;
      *(v13 + 8) = 0x8000000181486330;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      goto LABEL_11;
    }

    v11 = *v9++;
    v10 = v11;
    if (v11 == 62)
    {
      break;
    }

    if (v10 == 91)
    {
      v0[3] = v9;
      v12 = BufferReader.lineNumber.getter();
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v7 = 91;
      *(v7 + 8) = v12;
      *(v7 + 16) = 0xD000000000000011;
      *(v7 + 24) = 0x8000000181486330;
      v8 = 3;
      goto LABEL_10;
    }
  }

  v0[3] = v9;
}

Swift::tuple_Foundation_XMLPlistTag_isEmpty_Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.peekXMLElement()()
{
  v1 = v0[3];
  v2.value = XMLPlistScanner.readTag()().value;
  if (!v4)
  {
    if (v2.value == Foundation_XMLPlistTag_unknownDefault)
    {
      v5 = v0[3];
      v6 = v0[4];
      v7 = *v0;
      if (v5 < v6)
      {
        v8 = v0[1];
        v9 = v8 + v7 - v5;
        v10 = v5 - v7;
        v11 = v0[3];
        while ((v10 & 0x8000000000000000) == 0)
        {
          if (v9-- < 1)
          {
            break;
          }

          if (*v11 == 62)
          {
            goto LABEL_18;
          }

          ++v11;
          ++v10;
          if (v11 == v6)
          {
            v11 = v0[4];
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v8 = v0[1];
      v11 = v0[3];
LABEL_18:
      if (v11 < v1)
      {
        goto LABEL_32;
      }

      if ((v1 - v7) < 0)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v3.value = v11 - v1;
      if (&v11[-v1] < 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v7 + v8 - v11 < 0)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v17 = static String._tryFromUTF8(_:)();
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0x65737261706E753CLL;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xED00003E656C6261;
      }

      _StringGuts.grow(_:)(37);

      MEMORY[0x1865CB0E0](v19, v20);

      MEMORY[0x1865CB0E0](0x656E696C206E6F20, 0xE900000000000020);
      BufferReader.lineNumber.getter();
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v21);

      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v22 = 0xD000000000000018;
      *(v22 + 8) = 0x8000000181486660;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 5;
      v2.value = swift_willThrow();
    }

    else
    {
      v14 = v0[3];
      v13 = v0[4];
      do
      {
        if (v14 == v13)
        {
          break;
        }

        v15 = *v14++;
        v0[3] = v14;
      }

      while (v15 != 62);
      v16 = *v0;
      if (v13 == v14)
      {
        v23 = BufferReader.lineNumber.getter();
        lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
        swift_allocError();
        *v24 = v23;
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = 1;
        v2.value = swift_willThrow();
        goto LABEL_37;
      }

      if ((&v14[-v16 - 2] & 0x8000000000000000) != 0 || v16 + v0[1] - (v14 - 2) < 1)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_37:
  result.isEmpty = v3.value;
  result._0 = v2.value;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.scanXMLElement()()
{
  v1 = v0;
  LOBYTE(v2) = XMLPlistScanner.peekXMLElement()()._0;
  if (v3)
  {
    return;
  }

  LOBYTE(v4) = v2;
  if (v2 <= 2u)
  {
    if (!v2)
    {
      if ((v2 & 0x100) == 0)
      {
        XMLPlistScanner.scanPlist()();
        return;
      }

      v16 = BufferReader.lineNumber.getter();
      v4 = 0;
      goto LABEL_31;
    }

    if (v2 == 1)
    {
      if ((v2 & 0x100) == 0)
      {
        XMLPlistScanner.scanArray()();
        return;
      }

      v28 = v0[1];
      v37[0] = *v0;
      v37[1] = v28;
      v38 = *(v0 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v37);
      v29 = *(*(v0 + 5) + 16);
      v30 = v29 + 4;
      if (!__OFADD__(v29, 4))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18121D6C0;
        v31 = 8;
LABEL_36:
        *(inited + 32) = v31;
        *(inited + 40) = v30;
        *(inited + 48) = xmmword_181249E60;
        goto LABEL_37;
      }

      __break(1u);
    }

    else
    {
      if ((v2 & 0x100) == 0)
      {
        XMLPlistScanner.scanDict()();
        return;
      }

      v32 = v0[1];
      v39[0] = *v0;
      v39[1] = v32;
      v40 = *(v0 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v39);
      v33 = *(*(v0 + 5) + 16);
      v30 = v33 + 4;
      if (!__OFADD__(v33, 4))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18121D6C0;
        v31 = 9;
        goto LABEL_36;
      }
    }

    __break(1u);
    return;
  }

  if (((1 << v2) & 0x1E0) != 0)
  {
    if ((v2 & 0x100) == 0)
    {
      v5 = XMLPlistScanner.scanThroughCloseTag(_:)(v2);
      v7 = v6;
      v8 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v4);
      v9 = *(v1 + 1);
      v10 = v5 - *v1;
      v11 = *(v1 + 4);
      v46[0] = *v1;
      v46[1] = v9;
      v47 = v1[1];
      v48 = v11;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v46);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_18121D6B0;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7 - v5;
      *(v12 + 48) = v10;
      specialized Array.append<A>(contentsOf:)(v12);
      return;
    }

    v15 = v0[1];
    v43 = *v0;
    v44 = v15;
    v45 = *(v0 + 4);
    v16 = BufferReader.lineNumber.getter();
    v4 = v4;
LABEL_31:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v27 = v4;
    *(v27 + 8) = v16;
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    *(v27 + 32) = 2;
    swift_willThrow();
    return;
  }

  if (((1 << v2) & 0x18) != 0)
  {
    v13 = v2;
    if ((v2 & 0x100) == 0)
    {
      XMLPlistScanner.scanString(asKey:)(v2 == 3);
      if (!v14)
      {
        XMLPlistScanner.checkForCloseTag(_:)(v4);
      }

      return;
    }

    v24 = v0[1];
    v41[0] = *v0;
    v41[1] = v24;
    v42 = *(v0 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18121D6B0;
    v26 = 12;
    if (v13 == 3)
    {
      v26 = 13;
    }

    *(inited + 40) = 0;
    *(inited + 48) = 0;
    *(inited + 32) = v26;
LABEL_37:
    specialized Array.append<A>(contentsOf:)(inited);
    return;
  }

  if ((v2 & 0x100) != 0 || (XMLPlistScanner.checkForCloseTag(_:)(v2), !v17))
  {
    v18 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v4);
    v19 = v0[1];
    v49[0] = *v0;
    v49[1] = v19;
    v50 = *(v0 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v49);
    v20 = *(v0 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    }

    v21 = *(v20 + 2);
    v22 = *(v20 + 3);
    v23 = v21 + 1;
    if (v21 >= v22 >> 1)
    {
      v34 = v20;
      v35 = *(v20 + 2);
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v21 + 1, 1, v34);
      v21 = v35;
      v20 = v36;
    }

    *(v20 + 2) = v23;
    *&v20[8 * v21 + 32] = v18;
    *(v1 + 5) = v20;
  }
}

Foundation::XMLPlistTag_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.readTag()()
{
  v2 = v0[3];
  v1 = v0[4];
  if (v1 < (v2 + 1))
  {
    return 11;
  }

  v4 = *v0;
  if (&v2[-*v0] < 0)
  {
    __break(1u);
    goto LABEL_110;
  }

  v5 = v1 - v2;
  if ((v1 - v2) < 0)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v6 = v4 + v0[1];
  if ((v6 - v1) < 0)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v7 = *v2;
  result.value = Foundation_XMLPlistTag_unknownDefault;
  if (v7 <= 0x6A)
  {
    if (*v2 > 0x65u)
    {
      if (v7 == 102)
      {
        if (v5 < 5)
        {
          return result;
        }

        if (v6 < v2)
        {
          goto LABEL_119;
        }

        if ((v6 - v2) < 0)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (*v2 == 1936482662 && v2[4] == 101)
        {
          v8 = v2 + 5;
          v0[3] = (v2 + 5);
          if (v1 >= (v2 + 6))
          {
            v9.value = Foundation_XMLPlistTag_false;
            goto LABEL_102;
          }
        }
      }

      else
      {
        if (v7 != 105 || v5 < 7)
        {
          return result;
        }

        if (v6 < v2)
        {
          goto LABEL_116;
        }

        if ((v6 - v2) < 0)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (*v2 == 1702129257 && *(v2 + 3) == 1919248229)
        {
          v8 = v2 + 7;
          v0[3] = (v2 + 7);
          if (v1 >= (v2 + 8))
          {
            v9.value = Foundation_XMLPlistTag_integer;
            goto LABEL_102;
          }
        }
      }

      return result;
    }

    if (v7 == 97)
    {
      if (v5 < 5)
      {
        return result;
      }

      if (v6 < v2)
      {
        goto LABEL_118;
      }

      if ((v6 - v2) < 0)
      {
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      if (*v2 == 1634890337 && v2[4] == 121)
      {
        v8 = v2 + 5;
        v0[3] = (v2 + 5);
        if (v1 >= (v2 + 6))
        {
          v9.value = Foundation_XMLPlistTag_array;
          goto LABEL_102;
        }
      }

      return result;
    }

    if (v7 != 100 || v5 < 4)
    {
      return result;
    }

    if (v6 < v2)
    {
      goto LABEL_115;
    }

    if ((v6 - v2) < 0)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    switch(*v2)
    {
      case 0x74636964:
        v8 = v2 + 4;
        v0[3] = (v2 + 4);
        if (v1 < (v2 + 5))
        {
          return result;
        }

        v9.value = Foundation_XMLPlistTag_dict;
        break;
      case 0x61746164:
        v8 = v2 + 4;
        v0[3] = (v2 + 4);
        if (v1 < (v2 + 5))
        {
          return result;
        }

        v9.value = Foundation_XMLPlistTag_data;
        break;
      case 0x65746164:
        v8 = v2 + 4;
        v0[3] = (v2 + 4);
        if (v1 < (v2 + 5))
        {
          return result;
        }

        v9.value = Foundation_XMLPlistTag_date;
        break;
      default:
        return result;
    }

LABEL_102:
    if (v1 >= v8)
    {
      if (&v8[-v4] >= 0)
      {
        if ((v1 - v8) >= 0)
        {
          v16 = *v8;
          if (v16 <= 0x3E && ((1 << v16) & 0x4000800100002600) != 0)
          {
            return v9;
          }

          return result;
        }

        goto LABEL_114;
      }

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
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (*v2 <= 0x71u)
  {
    if (v7 == 107)
    {
      if (v5 < 3)
      {
        return result;
      }

      if (v6 < v2)
      {
        goto LABEL_121;
      }

      if ((v6 - v2) < 0)
      {
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      if (*v2 == 25963 && v2[2] == 121)
      {
        v8 = v2 + 3;
        v0[3] = (v2 + 3);
        if (v1 >= (v2 + 4))
        {
          v9.value = Foundation_XMLPlistTag_key;
          goto LABEL_102;
        }
      }
    }

    else
    {
      if (v7 != 112 || v5 < 5)
      {
        return result;
      }

      if (v6 < v2)
      {
        goto LABEL_117;
      }

      if ((v6 - v2) < 0)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      if (*v2 == 1936288880 && v2[4] == 116)
      {
        v8 = v2 + 5;
        v0[3] = (v2 + 5);
        if (v1 >= (v2 + 6))
        {
          v9.value = Foundation_XMLPlistTag_plist;
          goto LABEL_102;
        }
      }
    }

    return result;
  }

  if (v7 == 114)
  {
    if (v5 < 4)
    {
      return result;
    }

    if (v6 < v2)
    {
      goto LABEL_120;
    }

    if ((v6 - v2) < 0)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (*v2 != 1818322290)
    {
      return result;
    }

    v8 = v2 + 4;
    v0[3] = (v2 + 4);
    if (v1 < (v2 + 5))
    {
      return result;
    }

    v9.value = Foundation_XMLPlistTag_real;
    goto LABEL_102;
  }

  if (v7 != 115)
  {
    if (v7 != 116 || v5 < 4)
    {
      return result;
    }

    if (v6 < v2)
    {
      goto LABEL_122;
    }

    if ((v6 - v2) < 0)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    if (*v2 != 1702195828)
    {
      return result;
    }

    v8 = v2 + 4;
    v0[3] = (v2 + 4);
    if (v1 < (v2 + 5))
    {
      return result;
    }

    v9.value = Foundation_XMLPlistTag_true;
    goto LABEL_102;
  }

  if (v5 < 6)
  {
    return result;
  }

  if (v6 < v2)
  {
    goto LABEL_123;
  }

  if ((v6 - v2) < 0)
  {
LABEL_132:
    __break(1u);
    return result;
  }

  if (*v2 == 1769108595 && *(v2 + 2) == 26478)
  {
    v8 = v2 + 6;
    v0[3] = (v2 + 6);
    if (v1 >= (v2 + 7))
    {
      v9.value = Foundation_XMLPlistTag_string;
      goto LABEL_102;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.scanPlist()()
{
  v1 = XMLPlistScanner.scanAnyValue(for:)(Foundation_XMLPlistTag_plist);
  if (!v2)
  {
    if (v1)
    {
      v3 = *(v0 + 24);
      v4 = XMLPlistScanner.scanAnyValue(for:)(Foundation_XMLPlistTag_plist);
      if (!v5)
      {
        if (v4)
        {
          *(v0 + 24) = v3;
          _StringGuts.grow(_:)(77);
          MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
          BufferReader.lineNumber.getter();
          v6 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v6);

          MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
          lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
          swift_allocError();
          *v7 = 0;
          *(v7 + 8) = 0xE000000000000000;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
          *(v7 + 32) = 5;
          swift_willThrow();
        }

        else
        {
          XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_plist);
        }
      }
    }

    else
    {
      v8 = BufferReader.lineNumber.getter();
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = v8;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 2;
      swift_willThrow();
    }
  }
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.scanAnyValue(for:)(Foundation::XMLPlistTag a1)
{
  v2 = v1;
  v3 = XMLPlistScanner.scanUpToNextValue(for:)(a1);
  if (v4 || !v3)
  {
    return v3;
  }

  v5 = v3;
  LOBYTE(v6) = XMLPlistScanner.peekXMLElement()()._0;
  if (v7)
  {
    return v5;
  }

  v9 = v6;
  if (v6 > 2u)
  {
    if (((1 << v6) & 0x1E0) != 0)
    {
      if ((v6 & 0x100) == 0)
      {
        v10 = XMLPlistScanner.scanThroughCloseTag(_:)(v6);
        v12 = v11;
        v13 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v9);
        v14 = *(v2 + 1);
        v15 = v10 - *v2;
        v16 = *(v2 + 4);
        v60[0] = *v2;
        v60[1] = v14;
        v61 = v2[1];
        v62 = v16;
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18121D6B0;
        *(inited + 32) = v13;
        *(inited + 40) = v12 - v10;
        *(inited + 48) = v15;
        specialized Array.append<A>(contentsOf:)(inited);
        return v5;
      }

      v21 = v1[1];
      v57 = *v1;
      v58 = v21;
      v59 = *(v1 + 4);
      v22 = BufferReader.lineNumber.getter();
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v23 = v9;
LABEL_39:
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 2;
      swift_willThrow();
      return v5;
    }

    if (((1 << v6) & 0x18) == 0)
    {
      if ((v6 & 0x100) != 0 || (XMLPlistScanner.checkForCloseTag(_:)(v6), !v24))
      {
        v25 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v9);
        v26 = v1[1];
        v63[0] = *v1;
        v63[1] = v26;
        v64 = *(v1 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v63);
        v27 = *(v1 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
        }

        v28 = *(v27 + 2);
        v29 = *(v27 + 3);
        v30 = v28 + 1;
        if (v28 >= v29 >> 1)
        {
          v48 = v27;
          v49 = *(v27 + 2);
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v28 + 1, 1, v48);
          v28 = v49;
          v27 = v50;
        }

        v3 = v5;
        *(v27 + 2) = v30;
        *&v27[8 * v28 + 32] = v25;
        *(v2 + 5) = v27;
        return v3;
      }

      return v5;
    }

    v18 = v6;
    if ((v6 & 0x100) != 0)
    {
      v38 = v1[1];
      v55[0] = *v1;
      v55[1] = v38;
      v56 = *(v1 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_18121D6B0;
      v40 = 12;
      if (v18 == 3)
      {
        v40 = 13;
      }

      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 32) = v40;
      specialized Array.append<A>(contentsOf:)(v39);
      return v5;
    }

    XMLPlistScanner.scanString(asKey:)(v6 == 3);
    if (v19)
    {
      return v5;
    }

    v20 = v9;
    goto LABEL_14;
  }

  if (!v6)
  {
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_38;
    }

    v31 = XMLPlistScanner.scanAnyValue(for:)(Foundation_XMLPlistTag_plist);
    if (v32)
    {
      return v5;
    }

    if (!v31)
    {
LABEL_38:
      v22 = BufferReader.lineNumber.getter();
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v23 = 0;
      goto LABEL_39;
    }

    v33 = *(v1 + 3);
    v34 = XMLPlistScanner.scanAnyValue(for:)(Foundation_XMLPlistTag_plist);
    if (v35)
    {
      return v5;
    }

    if (v34)
    {
      *(v1 + 3) = v33;
      _StringGuts.grow(_:)(77);
      MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
      BufferReader.lineNumber.getter();
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v36);

      MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v37 = 0;
      *(v37 + 8) = 0xE000000000000000;
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 5;
      swift_willThrow();
      return v5;
    }

    v20 = Foundation_XMLPlistTag_plist;
LABEL_14:
    XMLPlistScanner.checkForCloseTag(_:)(v20);
    return v5;
  }

  if (v6 == 1)
  {
    if ((v6 & 0x100) == 0)
    {
      XMLPlistScanner.scanArray()();
      return v5;
    }

    v41 = v1[1];
    v51[0] = *v1;
    v51[1] = v41;
    v52 = *(v1 + 4);
    result = XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v51);
    v42 = *(*(v1 + 5) + 16);
    v43 = v42 + 4;
    if (!__OFADD__(v42, 4))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_18121D6C0;
      v45 = 8;
LABEL_44:
      *(v44 + 32) = v45;
      *(v44 + 40) = v43;
      *(v44 + 48) = xmmword_181249E60;
      specialized Array.append<A>(contentsOf:)(v44);
      return v5;
    }

    __break(1u);
  }

  else
  {
    if ((v6 & 0x100) == 0)
    {
      XMLPlistScanner.scanDict()();
      return v5;
    }

    v46 = v1[1];
    v53[0] = *v1;
    v53[1] = v46;
    v54 = *(v1 + 4);
    result = XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v53);
    v47 = *(*(v1 + 5) + 16);
    v43 = v47 + 4;
    if (!__OFADD__(v47, 4))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v44 = swift_initStackObject();
      *(v44 + 16) = xmmword_18121D6C0;
      v45 = 9;
      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.scanUpToNextValue(for:)(Foundation::XMLPlistTag a1)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 4);
  if (v4 == v3)
  {
LABEL_17:
    _StringGuts.grow(_:)(34);

    XMLPlistTag.tagName.getter(a1);
    v13 = StaticString.description.getter();
    MEMORY[0x1865CB0E0](v13);

    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v14 = 0xD000000000000020;
    *(v14 + 8) = 0x8000000181486410;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
LABEL_19:
    *(v14 + 32) = 0;
LABEL_23:
    swift_willThrow();
LABEL_24:
    LOBYTE(v5) = v9;
  }

  else
  {
    while (1)
    {
      v19 = *v1;
      v5 = XMLPlistScanner.indexOfEndOfWhitespaceBytes(after:)(v3);
      *(v1 + 3) = v5;
      if (v4 == v5)
      {
LABEL_18:
        lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
        swift_allocError();
        *v14 = 0u;
        *(v14 + 16) = 0u;
        goto LABEL_19;
      }

      v6 = v5 + 1;
      v7 = *v5;
      *(v1 + 3) = v5 + 1;
      if (v7 != 60)
      {
        v15 = BufferReader.lineNumber.getter();
        lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
        swift_allocError();
        *v16 = v7;
        *(v16 + 8) = v15;
        *(v16 + 16) = 0xD00000000000001ALL;
        *(v16 + 24) = 0x80000001814863F0;
LABEL_22:
        *(v16 + 32) = 3;
        goto LABEL_23;
      }

      if (v4 < (v5 + 2))
      {
        goto LABEL_18;
      }

      if (&v6[-v19] < 0)
      {
        break;
      }

      if ((v4 - v6) < 0)
      {
        goto LABEL_28;
      }

      if ((v19 + *(&v19 + 1) - v4) < 0)
      {
        goto LABEL_29;
      }

      v8 = *v6;
      if (v8 == 33)
      {
        if (v4 < (v5 + 4))
        {
          goto LABEL_18;
        }

        v11 = v5[2];
        if (v11 != 45 || (v11 = v5[3], v11 != 45))
        {
          v17 = BufferReader.lineNumber.getter();
          lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
          swift_allocError();
          *v16 = v11;
          *(v16 + 8) = v17;
          *(v16 + 16) = xmmword_181249E70;
          goto LABEL_22;
        }

        *(v1 + 3) = v5 + 4;
        XMLPlistScanner.skipXMLComment()();
        if (v12)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v8 != 63)
        {
          v9 = v8 != 47;
          if (v8 == 47)
          {
            *(v1 + 3) = v5;
          }

          goto LABEL_24;
        }

        XMLPlistScanner.skipXMLProcessingInstruction()();
        if (v10)
        {
          goto LABEL_24;
        }
      }

      v3 = *(v1 + 3);
      if (v4 == v3)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return v5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.scanDict()()
{
  v2 = v0;
  v3 = v293;
  v4 = *v0;
  v5 = v0[1];
  v436 = *(v0 + 4);
  v435[1] = v5;
  v435[0] = v4;
  XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v435);
  v6 = *(v0 + 5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  v437 = v8 + 1;
  *(v6 + 2) = v8 + 1;
  *&v6[8 * v8 + 32] = 9;
  *(v2 + 5) = v6;
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of XMLPlistScanner.scanDict());
  v9 = 0;
  v10 = 1;
  while (1)
  {
    if (*(v2 + 4) == *(v2 + 3))
    {
      goto LABEL_140;
    }

    v11 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_dict);
    if (v12)
    {
      goto LABEL_138;
    }

    if (!v11)
    {
      goto LABEL_140;
    }

    v13 = XMLPlistScanner.peekXMLElement()()._0;
    if (v14)
    {
      goto LABEL_138;
    }

    if (v13 != Foundation_XMLPlistTag_key)
    {
      goto LABEL_148;
    }

    XMLPlistScanner.scanString(asKey:)(1);
    if (v15 || (XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_key), v16))
    {
LABEL_138:
      while (1)
      {
        v117 = v2[1];
        *(v3 + 2576) = *v2;
        *(v3 + 2592) = v117;
        v434 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v433);
        v118 = *(v2 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
        }

        v120 = *(v118 + 2);
        v119 = *(v118 + 3);
        v121 = v120 + 1;
        if (v120 >= v119 >> 1)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v118);
        }

        *(v118 + 2) = v121;
        v122 = v118 + 32;
        *&v118[8 * v120 + 32] = 10;
        *&v118[8 * v437 + 32] = v121;
        v123 = v8 + 2;
        if (!__OFADD__(v8, 2))
        {
          goto LABEL_177;
        }

        __break(1u);
LABEL_140:
        XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_dict);
        if (!v124)
        {
          goto LABEL_156;
        }

        v125 = v2[1];
        v291[0] = *v2;
        v291[1] = v125;
        v292 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v291);
        v118 = *(v2 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
        }

        v3 = *(v118 + 2);
        v126 = *(v118 + 3);
        v127 = (v3 + 1);
        if (v3 >= v126 >> 1)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v126 > 1), v3 + 1, 1, v118);
        }

        *(v118 + 2) = v127;
        v122 = v118 + 32;
        *&v118[8 * v3 + 32] = 10;
        *&v118[8 * v437 + 32] = v127;
        v123 = v8 + 2;
        if (!__OFADD__(v8, 2))
        {
          goto LABEL_177;
        }

        __break(1u);
LABEL_148:
        lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
        swift_allocError();
        *v128 = 0xD000000000000028;
        *(v128 + 8) = 0x8000000181486440;
        *(v128 + 16) = 0;
        *(v128 + 24) = 0;
        *(v128 + 32) = 5;
        swift_willThrow();
      }
    }

    v17 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_dict);
    if (v18)
    {
      goto LABEL_172;
    }

    if (!v17)
    {
      _StringGuts.grow(_:)(46);

      v129 = v2[1];
      v431[0] = *v2;
      v431[1] = v129;
      v432 = *(v2 + 4);
      BufferReader.lineNumber.getter();
      v130 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v130);

      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v131 = 0xD00000000000002CLL;
      *(v131 + 8) = 0x8000000181486470;
      *(v131 + 16) = 0;
      *(v131 + 24) = 0;
      *(v131 + 32) = 5;
      swift_willThrow();
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v431);
      v118 = *(v2 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
      }

      v133 = *(v118 + 2);
      v132 = *(v118 + 3);
      v134 = v133 + 1;
      if (v133 >= v132 >> 1)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v132 > 1), v133 + 1, 1, v118);
      }

      *(v118 + 2) = v134;
      v122 = v118 + 32;
      *&v118[8 * v133 + 32] = 10;
      *&v118[8 * v437 + 32] = v134;
      v123 = v8 + 2;
      if (!__OFADD__(v8, 2))
      {
        goto LABEL_177;
      }

      __break(1u);
LABEL_156:
      v135 = v2[1];
      v289[0] = *v2;
      v289[1] = v135;
      v290 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v289);
      v118 = *(v2 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
      }

      v3 = *(v118 + 2);
      v136 = *(v118 + 3);
      v137 = (v3 + 1);
      if (v3 >= v136 >> 1)
      {
        v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v136 > 1), v3 + 1, 1, v118);
      }

      *(v118 + 2) = v137;
      v122 = v118 + 32;
      *&v118[8 * v3 + 32] = 10;
      *&v118[8 * v437 + 32] = v137;
      v123 = v8 + 2;
      if (!__OFADD__(v8, 2))
      {
        goto LABEL_177;
      }

      __break(1u);
LABEL_163:
      v138 = v2[1];
      *(v3 + 2400) = *v2;
      *(v3 + 2416) = v138;
      v425 = *(v2 + 4);
      goto LABEL_164;
    }

    LOBYTE(v19) = XMLPlistScanner.peekXMLElement()()._0;
    if (v20)
    {
      goto LABEL_172;
    }

    v1 = v19;
    if (v19 > 2u)
    {
      if (((1 << v19) & 0x1E0) != 0)
      {
        if ((v19 & 0x100) != 0)
        {
          goto LABEL_163;
        }

        LOWORD(v21) = 0;
        v22 = XMLPlistScanner.scanThroughCloseTag(_:)(v19);
        v24 = v23;
        v1 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
        v25 = v24 - v22;
        v26 = *(v2 + 1);
        v27 = v22 - *v2;
        v28 = *(v2 + 4);
        v426[0] = *v2;
        v426[1] = v26;
        v427 = v2[1];
        v428 = v28;
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v426);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_18121D6B0;
        *(v29 + 32) = v1;
        *(v29 + 40) = v25;
        v3 = v293;
        *(v29 + 48) = v27;
      }

      else
      {
        if (((1 << v19) & 0x18) == 0)
        {
          if ((v19 & 0x100) != 0)
          {
            LOWORD(v21) = 0;
          }

          else
          {
            XMLPlistScanner.checkForCloseTag(_:)(v19);
            LOWORD(v21) = v35;
            if (v35)
            {
              goto LABEL_172;
            }
          }

          v1 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
          v51 = v2[1];
          v429[0] = *v2;
          v429[1] = v51;
          v430 = *(v2 + 4);
          XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v429);
          v52 = *(v2 + 5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
          }

          v54 = *(v52 + 2);
          v53 = *(v52 + 3);
          if (v54 >= v53 >> 1)
          {
            v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v52);
          }

          LOBYTE(v33) = v1;
          *(v52 + 2) = v54 + 1;
          *&v52[8 * v54 + 32] = v1;
          *(v2 + 5) = v52;
          v3 = v293;
          goto LABEL_130;
        }

        v30 = v19;
        if ((v19 & 0x100) == 0)
        {
          XMLPlistScanner.scanString(asKey:)(v19 == 3);
          if (v31)
          {
            goto LABEL_172;
          }

          v32 = v1;
LABEL_128:
          XMLPlistScanner.checkForCloseTag(_:)(v32);
LABEL_129:
          LOWORD(v21) = v34;
          if (v34)
          {
            goto LABEL_172;
          }

          goto LABEL_130;
        }

        LOWORD(v21) = 0;
        v49 = v2[1];
        v423[0] = *v2;
        v423[1] = v49;
        v424 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v423);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_18121D6B0;
        v50 = 12;
        if (v30 == 3)
        {
          v50 = 13;
        }

        *(v29 + 40) = 0;
        *(v29 + 48) = 0;
        *(v29 + 32) = v50;
      }

      goto LABEL_55;
    }

    if (!v19)
    {
      break;
    }

    if (v19 == 1)
    {
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanArray()();
        goto LABEL_129;
      }

      LOWORD(v21) = 0;
      v55 = v2[1];
      v419[0] = *v2;
      v419[1] = v55;
      v420 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v419);
      v56 = *(*(v2 + 5) + 16);
      v57 = v56 + 4;
      if (__OFADD__(v56, 4))
      {
        goto LABEL_237;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_18121D6C0;
      v58 = 8;
    }

    else
    {
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanDict()();
        goto LABEL_129;
      }

      LOWORD(v21) = 0;
      v59 = v2[1];
      v421[0] = *v2;
      v421[1] = v59;
      v422 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v421);
      v56 = *(*(v2 + 5) + 16);
      v57 = v56 + 4;
      if (__OFADD__(v56, 4))
      {
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        if (v56)
        {
          if (v56 == 1)
          {
            if ((v10 & 0x100) == 0)
            {
              XMLPlistScanner.scanArray()();
              if (!v209)
              {
                goto LABEL_268;
              }

LABEL_271:
              v3 = v293;
              goto LABEL_172;
            }

            v224 = v2[1];
            v311[0] = *v2;
            v311[1] = v224;
            v312 = *(v2 + 4);
            v225 = v311;
            v226 = 8;
LABEL_267:
            XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v226, v225);
            goto LABEL_268;
          }

          if ((v10 & 0x100) != 0)
          {
            v227 = v2[1];
            v313[0] = *v2;
            v313[1] = v227;
            v314 = *(v2 + 4);
            v225 = v313;
            v226 = 9;
            goto LABEL_267;
          }

          XMLPlistScanner.scanDict()();
          if (v220)
          {
            goto LABEL_271;
          }
        }

        else
        {
          if ((v10 & 0x100) != 0)
          {
            v223 = v2[1];
            v3 = v293;
            v304 = *v2;
            v305 = v223;
            v306 = *(v2 + 4);
            goto LABEL_168;
          }

          XMLPlistScanner.scanPlist()();
          if (v219)
          {
            goto LABEL_271;
          }
        }

LABEL_268:
        *(v2 + 3) = v1;
        _StringGuts.grow(_:)(77);
        MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
        v228 = *(v2 + 2);
        v229 = *(v2 + 4);
        v307 = *v2;
        v308 = v228;
        v309 = v1;
        v310 = v229;
LABEL_269:
        BufferReader.lineNumber.getter();
        v230 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1865CB0E0](v230);

        MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
        lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
        swift_allocError();
        *v231 = 0;
        *(v231 + 8) = 0xE000000000000000;
        *(v231 + 16) = 0;
        *(v231 + 24) = 0;
        *(v231 + 32) = 5;
        swift_willThrow();
        v3 = v293;
        goto LABEL_172;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_18121D6C0;
      v58 = 9;
    }

    *(v29 + 32) = v58;
    *(v29 + 40) = v57;
    *(v29 + 48) = xmmword_181249E60;
LABEL_55:
    specialized Array.append<A>(contentsOf:)(v29);
LABEL_130:
    v116 = __OFADD__(v9, 2);
    v9 += 2;
    if (v116)
    {
      __break(1u);
      goto LABEL_183;
    }
  }

  if ((v19 & 0x100) != 0)
  {
    v141 = v2[1];
    v295 = *v2;
    v296 = v141;
    v297 = *(v2 + 4);
    goto LABEL_168;
  }

  v36 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
  if (v37)
  {
    goto LABEL_172;
  }

  if (!v36)
  {
    v142 = v2[1];
    v416 = *v2;
    v417 = v142;
    v418 = *(v2 + 4);
    goto LABEL_168;
  }

  LOBYTE(v38) = XMLPlistScanner.peekXMLElement()()._0;
  if (v39)
  {
    goto LABEL_172;
  }

  v1 = v38;
  if (v38 <= 2u)
  {
    if (v38)
    {
      if (v38 == 1)
      {
        if ((v38 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v63)
          {
            goto LABEL_172;
          }

          goto LABEL_125;
        }

        v87 = v2[1];
        v402[0] = *v2;
        v402[1] = v87;
        v403 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v402);
        v88 = *(*(v2 + 5) + 16);
        v89 = v88 + 4;
        if (__OFADD__(v88, 4))
        {
          goto LABEL_273;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_18121D6C0;
        v90 = 8;
      }

      else
      {
        if ((v38 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v83)
          {
            goto LABEL_172;
          }

          goto LABEL_125;
        }

        v91 = v2[1];
        v404[0] = *v2;
        v404[1] = v91;
        v405 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v404);
        v88 = *(*(v2 + 5) + 16);
        v89 = v88 + 4;
        if (__OFADD__(v88, 4))
        {
          __break(1u);
LABEL_273:
          __break(1u);
          goto LABEL_274;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_18121D6C0;
        v90 = 9;
      }

      *(v48 + 32) = v90;
      *(v48 + 40) = v89;
      *(v48 + 48) = xmmword_181249E60;
LABEL_91:
      specialized Array.append<A>(contentsOf:)(v48);
      goto LABEL_125;
    }

    if ((v38 & 0x100) != 0)
    {
      v161 = v2[1];
      v298 = *v2;
      v299 = v161;
      v300 = *(v2 + 4);
      goto LABEL_168;
    }

    v70 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v71)
    {
      goto LABEL_172;
    }

    if (!v70)
    {
      v162 = v2[1];
      v399 = *v2;
      v400 = v162;
      v401 = *(v2 + 4);
      goto LABEL_168;
    }

    LOBYTE(v72) = XMLPlistScanner.peekXMLElement()()._0;
    if (v73)
    {
      goto LABEL_172;
    }

    LOBYTE(v1) = v72;
    if (v72 <= 2u)
    {
      if (v72)
      {
        if (v72 == 1)
        {
          if ((v72 & 0x100) == 0)
          {
            XMLPlistScanner.scanArray()();
            if (v95)
            {
              goto LABEL_172;
            }

            goto LABEL_121;
          }

          v107 = v2[1];
          v385[0] = *v2;
          v385[1] = v107;
          v386 = *(v2 + 4);
          v108 = v385;
          v109 = 8;
        }

        else
        {
          if ((v72 & 0x100) == 0)
          {
            XMLPlistScanner.scanDict()();
            if (v103)
            {
              goto LABEL_172;
            }

            goto LABEL_121;
          }

          v110 = v2[1];
          v387[0] = *v2;
          v387[1] = v110;
          v388 = *(v2 + 4);
          v108 = v387;
          v109 = 9;
        }

        XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v109, v108);
        goto LABEL_121;
      }

      if ((v72 & 0x100) != 0)
      {
        v210 = v2[1];
        v301 = *v2;
        v302 = v210;
        v303 = *(v2 + 4);
        goto LABEL_168;
      }

      XMLPlistScanner.scanPlist()();
      if (v102)
      {
        goto LABEL_172;
      }
    }

    else if (((1 << v72) & 0x1E0) != 0)
    {
      if ((v72 & 0x100) != 0)
      {
        v196 = v2[1];
        v391 = *v2;
        v392 = v196;
        v393 = *(v2 + 4);
        goto LABEL_164;
      }

      v74 = XMLPlistScanner.scanThroughCloseTag(_:)(v72);
      v76 = v75;
      v77 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v78 = v76 - v74;
      v79 = *(v2 + 1);
      v80 = v74 - *v2;
      v81 = *(v2 + 4);
      v394[0] = *v2;
      v394[1] = v79;
      v395 = v2[1];
      v396 = v81;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v394);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_18121D6B0;
      *(v82 + 32) = v77;
      *(v82 + 40) = v78;
      v3 = v293;
      *(v82 + 48) = v80;
      specialized Array.append<A>(contentsOf:)(v82);
    }

    else if (((1 << v72) & 0x18) != 0)
    {
      v92 = v72;
      if ((v72 & 0x100) != 0)
      {
        v104 = v2[1];
        v389[0] = *v2;
        v389[1] = v104;
        v390 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v389);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_18121D6B0;
        v106 = 12;
        if (v92 == 3)
        {
          v106 = 13;
        }

        *(v105 + 40) = 0;
        *(v105 + 48) = 0;
        *(v105 + 32) = v106;
        specialized Array.append<A>(contentsOf:)(v105);
      }

      else
      {
        XMLPlistScanner.scanString(asKey:)(v72 == 3);
        if (v93)
        {
          goto LABEL_172;
        }

        XMLPlistScanner.checkForCloseTag(_:)(v1);
        if (v94)
        {
          goto LABEL_172;
        }
      }
    }

    else
    {
      if ((v72 & 0x100) == 0)
      {
        XMLPlistScanner.checkForCloseTag(_:)(v72);
        if (v96)
        {
          goto LABEL_172;
        }
      }

      v97 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v98 = v2[1];
      v397[0] = *v2;
      v397[1] = v98;
      v398 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v397);
      v99 = *(v2 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v99 + 2) + 1, 1, v99);
      }

      v101 = *(v99 + 2);
      v100 = *(v99 + 3);
      if (v101 >= v100 >> 1)
      {
        v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v99);
      }

      *(v99 + 2) = v101 + 1;
      *&v99[8 * v101 + 32] = v97;
      *(v2 + 5) = v99;
      v3 = v293;
    }

LABEL_121:
    v1 = *(v2 + 3);
    v111 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v112)
    {
      goto LABEL_172;
    }

    if (!v111)
    {
      v62 = Foundation_XMLPlistTag_plist;
LABEL_124:
      XMLPlistScanner.checkForCloseTag(_:)(v62);
      if (v113)
      {
        goto LABEL_172;
      }

      goto LABEL_125;
    }

    LOBYTE(v163) = XMLPlistScanner.peekXMLElement()()._0;
    if (v164)
    {
      goto LABEL_172;
    }

    v10 = v163;
    LODWORD(v56) = v163;
    if (v163 <= 2u)
    {
      goto LABEL_238;
    }

    if (((1 << v163) & 0x1E0) != 0)
    {
      if ((v163 & 0x100) != 0)
      {
        v211 = v2[1];
        v3 = v293;
        v317 = *v2;
        v318 = v211;
        v319 = *(v2 + 4);
        goto LABEL_245;
      }

      v165 = XMLPlistScanner.scanThroughCloseTag(_:)(v163);
      v167 = v166;
      v168 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
      v169 = v167 - v165;
      v170 = *(v2 + 1);
      v171 = v165 - *v2;
      v172 = *(v2 + 4);
      v320[0] = *v2;
      v320[1] = v170;
      v321 = v2[1];
      v322 = v172;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_18121D6B0;
      *(v173 + 32) = v168;
      *(v173 + 40) = v169;
      *(v173 + 48) = v171;
    }

    else
    {
      if (((1 << v163) & 0x18) == 0)
      {
        if ((v163 & 0x100) == 0)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v163);
          if (v212)
          {
            goto LABEL_271;
          }
        }

        v213 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
        v214 = v2[1];
        v323[0] = *v2;
        v323[1] = v214;
        v324 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v323);
        v215 = *(v2 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v215 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v215 + 2) + 1, 1, v215);
        }

        v217 = *(v215 + 2);
        v216 = *(v215 + 3);
        if (v217 >= v216 >> 1)
        {
          v215 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v216 > 1), v217 + 1, 1, v215);
        }

        *(v215 + 2) = v217 + 1;
        *&v215[8 * v217 + 32] = v213;
        *(v2 + 5) = v215;
        goto LABEL_268;
      }

      v207 = v163;
      if ((v163 & 0x100) == 0)
      {
        XMLPlistScanner.scanString(asKey:)(v163 == 3);
        if (!v208)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v10);
          if (!v232)
          {
            goto LABEL_268;
          }

          goto LABEL_271;
        }

        goto LABEL_235;
      }

      v221 = v2[1];
      v315[0] = *v2;
      v315[1] = v221;
      v316 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v315);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_18121D6B0;
      v222 = 12;
      *(v173 + 40) = 0;
      *(v173 + 48) = 0;
      if (v207 == 3)
      {
        v222 = 13;
      }

      *(v173 + 32) = v222;
    }

    specialized Array.append<A>(contentsOf:)(v173);
    goto LABEL_268;
  }

  if (((1 << v38) & 0x1E0) != 0)
  {
    if ((v38 & 0x100) == 0)
    {
      v40 = XMLPlistScanner.scanThroughCloseTag(_:)(v38);
      v42 = v41;
      v43 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v44 = v42 - v40;
      v45 = *(v2 + 1);
      v46 = v40 - *v2;
      v47 = *(v2 + 4);
      v411[0] = *v2;
      v411[1] = v45;
      v412 = v2[1];
      v413 = v47;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v411);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_18121D6B0;
      *(v48 + 32) = v43;
      *(v48 + 40) = v44;
      v3 = v293;
      *(v48 + 48) = v46;
      goto LABEL_91;
    }

    v149 = v2[1];
    v408 = *v2;
    v409 = v149;
    v410 = *(v2 + 4);
LABEL_164:
    v139 = BufferReader.lineNumber.getter();
    v21 = v1;
    goto LABEL_165;
  }

  if (((1 << v38) & 0x18) != 0)
  {
    v60 = v38;
    if ((v38 & 0x100) == 0)
    {
      XMLPlistScanner.scanString(asKey:)(v38 == 3);
      if (v61)
      {
        goto LABEL_172;
      }

      v62 = v1;
      goto LABEL_124;
    }

    v84 = v2[1];
    v406[0] = *v2;
    v406[1] = v84;
    v407 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v406);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_18121D6B0;
    v86 = 12;
    if (v60 == 3)
    {
      v86 = 13;
    }

    *(v85 + 40) = 0;
    *(v85 + 48) = 0;
    *(v85 + 32) = v86;
    specialized Array.append<A>(contentsOf:)(v85);
  }

  else
  {
    if ((v38 & 0x100) == 0)
    {
      XMLPlistScanner.checkForCloseTag(_:)(v38);
      if (v64)
      {
        goto LABEL_172;
      }
    }

    v65 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
    v66 = v2[1];
    v414[0] = *v2;
    v414[1] = v66;
    v415 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v414);
    v67 = *(v2 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 2) + 1, 1, v67);
    }

    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v67);
    }

    *(v67 + 2) = v69 + 1;
    *&v67[8 * v69 + 32] = v65;
    *(v2 + 5) = v67;
    v3 = v293;
  }

LABEL_125:
  v1 = *(v2 + 3);
  v114 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
  if (v115)
  {
    goto LABEL_172;
  }

  if (!v114)
  {
    v32 = Foundation_XMLPlistTag_plist;
    goto LABEL_128;
  }

  LOBYTE(v144) = XMLPlistScanner.peekXMLElement()()._0;
  if (v145)
  {
    goto LABEL_172;
  }

  LOWORD(v21) = v144;
  if (v144 <= 2u)
  {
    if (v144)
    {
      if (v144 == 1)
      {
        if ((v144 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v160)
          {
            goto LABEL_172;
          }

          goto LABEL_231;
        }

        v198 = v2[1];
        v371[0] = *v2;
        v371[1] = v198;
        v372 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v371);
        v199 = *(*(v2 + 5) + 16);
        v200 = v199 + 4;
        if (!__OFADD__(v199, 4))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v157 = swift_allocObject();
          *(v157 + 16) = xmmword_18121D6C0;
          v201 = 8;
LABEL_229:
          *(v157 + 32) = v201;
          *(v157 + 40) = v200;
          *(v157 + 48) = xmmword_181249E60;
          goto LABEL_230;
        }

        __break(1u);
      }

      else
      {
        if ((v144 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v193)
          {
            goto LABEL_172;
          }

          goto LABEL_231;
        }

        v202 = v2[1];
        v373[0] = *v2;
        v373[1] = v202;
        v374 = *(v2 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v373);
        v203 = *(*(v2 + 5) + 16);
        v200 = v203 + 4;
        if (!__OFADD__(v203, 4))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v157 = swift_allocObject();
          *(v157 + 16) = xmmword_18121D6C0;
          v201 = 9;
          goto LABEL_229;
        }
      }

      __break(1u);
      goto LABEL_327;
    }

    if ((v144 & 0x100) != 0)
    {
      goto LABEL_224;
    }

    v181 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v182)
    {
      goto LABEL_172;
    }

    if (!v181)
    {
      v218 = v2[1];
      v3 = v293;
      v368 = *v2;
      v369 = v218;
      v370 = *(v2 + 4);
      goto LABEL_168;
    }

    LOBYTE(v183) = XMLPlistScanner.peekXMLElement()()._0;
    if (v184)
    {
      goto LABEL_235;
    }

    v10 = v183;
    if (v183 <= 2u)
    {
      if (!v183)
      {
        if ((v183 & 0x100) != 0)
        {
          v247 = v2[1];
          v3 = v293;
          v326 = *v2;
          v327 = v247;
          v328 = *(v2 + 4);
          goto LABEL_168;
        }

        XMLPlistScanner.scanPlist()();
        if (v243)
        {
          goto LABEL_235;
        }

        goto LABEL_306;
      }

      if (v183 == 1)
      {
        if ((v183 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v235)
          {
            goto LABEL_235;
          }

          goto LABEL_306;
        }

        v248 = v2[1];
        v354[0] = *v2;
        v354[1] = v248;
        v355 = *(v2 + 4);
        v249 = v354;
        v250 = 8;
      }

      else
      {
        if ((v183 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v244)
          {
            goto LABEL_235;
          }

          goto LABEL_306;
        }

        v251 = v2[1];
        v356[0] = *v2;
        v356[1] = v251;
        v357 = *(v2 + 4);
        v249 = v356;
        v250 = 9;
      }

      XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v250, v249);
LABEL_306:
      v252 = *(v2 + 3);
      v253 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
      if (!v254)
      {
        if (!v253)
        {
          XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_plist);
          v3 = v293;
          if (v266)
          {
            goto LABEL_172;
          }

          goto LABEL_231;
        }

        LOBYTE(v255) = XMLPlistScanner.peekXMLElement()()._0;
        if (!v256)
        {
          LOBYTE(v10) = v255;
          if (v255 <= 2u)
          {
            if (!v255)
            {
              if ((v255 & 0x100) != 0)
              {
                v285 = v2[1];
                v3 = v293;
                v329 = *v2;
                v330 = v285;
                v331 = *(v2 + 4);
                goto LABEL_168;
              }

              XMLPlistScanner.scanPlist()();
              if (v280)
              {
                goto LABEL_271;
              }

              goto LABEL_345;
            }

            if (v255 == 1)
            {
              if ((v255 & 0x100) == 0)
              {
                XMLPlistScanner.scanArray()();
                if (v270)
                {
                  goto LABEL_271;
                }

                goto LABEL_345;
              }

              v282 = v2[1];
              v336[0] = *v2;
              v336[1] = v282;
              v337 = *(v2 + 4);
              v283 = v336;
              v284 = 8;
            }

            else
            {
              if ((v255 & 0x100) == 0)
              {
                XMLPlistScanner.scanDict()();
                if (v281)
                {
                  goto LABEL_271;
                }

                goto LABEL_345;
              }

              v286 = v2[1];
              v338[0] = *v2;
              v338[1] = v286;
              v339 = *(v2 + 4);
              v283 = v338;
              v284 = 9;
            }

            XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v284, v283);
LABEL_345:
            *(v2 + 3) = v252;
            _StringGuts.grow(_:)(77);
            MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
            v287 = *(v2 + 2);
            v288 = *(v2 + 4);
            v332 = *v2;
            v333 = v287;
            v334 = v252;
            v335 = v288;
            goto LABEL_269;
          }

          if (((1 << v255) & 0x1E0) != 0)
          {
            if ((v255 & 0x100) != 0)
            {
LABEL_327:
              v271 = v2[1];
              v3 = v293;
              v342 = *v2;
              v343 = v271;
              v344 = *(v2 + 4);
              goto LABEL_245;
            }

            v257 = XMLPlistScanner.scanThroughCloseTag(_:)(v255);
            v259 = v258;
            v260 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
            v261 = v259 - v257;
            v262 = *(v2 + 1);
            v263 = v257 - *v2;
            v264 = *(v2 + 4);
            v345[0] = *v2;
            v345[1] = v262;
            v346 = v2[1];
            v347 = v264;
            XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v345);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
            v265 = swift_allocObject();
            *(v265 + 16) = xmmword_18121D6B0;
            *(v265 + 32) = v260;
            *(v265 + 40) = v261;
            *(v265 + 48) = v263;
            goto LABEL_334;
          }

          if (((1 << v255) & 0x18) == 0)
          {
            if ((v255 & 0x100) == 0)
            {
              XMLPlistScanner.checkForCloseTag(_:)(v255);
              if (v272)
              {
                goto LABEL_271;
              }
            }

            v273 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
            v274 = v2[1];
            v348[0] = *v2;
            v348[1] = v274;
            v349 = *(v2 + 4);
            XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v348);
            v275 = v273;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v276 = *(*(v2 + 5) + 16);
            specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v276);
            v277 = *(v2 + 5);
            *(v277 + 16) = v276 + 1;
            *(v277 + 8 * v276 + 32) = v275;
            *(v2 + 5) = v277;
            goto LABEL_345;
          }

          v267 = v255;
          if ((v255 & 0x100) != 0)
          {
            v278 = v2[1];
            v340[0] = *v2;
            v340[1] = v278;
            v341 = *(v2 + 4);
            XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v340);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
            v265 = swift_allocObject();
            *(v265 + 16) = xmmword_18121D6B0;
            v279 = 12;
            *(v265 + 40) = 0;
            *(v265 + 48) = 0;
            if (v267 == 3)
            {
              v279 = 13;
            }

            *(v265 + 32) = v279;
LABEL_334:
            specialized Array.append<A>(contentsOf:)(v265);
            goto LABEL_345;
          }

          XMLPlistScanner.scanString(asKey:)(v255 == 3);
          if (!v268)
          {
            XMLPlistScanner.checkForCloseTag(_:)(v10);
            if (v269)
            {
              goto LABEL_271;
            }

            goto LABEL_345;
          }
        }
      }

LABEL_235:
      v3 = v293;
      goto LABEL_172;
    }

    LODWORD(v88) = 1 << v183;
    if (((1 << v183) & 0x1E0) != 0)
    {
      if ((v183 & 0x100) == 0)
      {
        v185 = XMLPlistScanner.scanThroughCloseTag(_:)(v183);
        v187 = v186;
        v188 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
        v189 = *(v2 + 1);
        v190 = v185 - *v2;
        v191 = *(v2 + 4);
        v363[0] = *v2;
        v363[1] = v189;
        v364 = v2[1];
        v365 = v191;
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v363);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v192 = swift_allocObject();
        *(v192 + 16) = xmmword_18121D6B0;
        *(v192 + 32) = v188;
        *(v192 + 40) = v187 - v185;
        *(v192 + 48) = v190;
LABEL_301:
        specialized Array.append<A>(contentsOf:)(v192);
        goto LABEL_306;
      }

      v236 = v2[1];
      v3 = v293;
      v360 = *v2;
      v361 = v236;
      v362 = *(v2 + 4);
LABEL_245:
      v139 = BufferReader.lineNumber.getter();
      v21 = v10;
      goto LABEL_165;
    }

LABEL_274:
    if ((v88 & 0x18) == 0)
    {
      if ((v10 & 0x100) == 0)
      {
        XMLPlistScanner.checkForCloseTag(_:)(v10);
        if (v237)
        {
          goto LABEL_235;
        }
      }

      v238 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
      v239 = v2[1];
      v366[0] = *v2;
      v366[1] = v239;
      v367 = *(v2 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v366);
      v240 = *(v2 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v240 + 2) + 1, 1, v240);
      }

      v242 = *(v240 + 2);
      v241 = *(v240 + 3);
      if (v242 >= v241 >> 1)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v241 > 1), v242 + 1, 1, v240);
      }

      *(v240 + 2) = v242 + 1;
      *&v240[8 * v242 + 32] = v238;
      *(v2 + 5) = v240;
      goto LABEL_306;
    }

    if ((v10 & 0x100) == 0)
    {
      XMLPlistScanner.scanString(asKey:)(v10 == 3);
      if (v233)
      {
        goto LABEL_235;
      }

      XMLPlistScanner.checkForCloseTag(_:)(v10);
      if (v234)
      {
        goto LABEL_235;
      }

      goto LABEL_306;
    }

    v245 = v2[1];
    v358[0] = *v2;
    v358[1] = v245;
    v359 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v358);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v192 = swift_allocObject();
    *(v192 + 16) = xmmword_18121D6B0;
    v246 = 12;
    *(v192 + 40) = 0;
    *(v192 + 48) = 0;
    if (v10 == 3)
    {
      v246 = 13;
    }

    *(v192 + 32) = v246;
    goto LABEL_301;
  }

  v33 = 1 << v144;
  if (((1 << v144) & 0x1E0) != 0)
  {
    if ((v144 & 0x100) == 0)
    {
      v150 = XMLPlistScanner.scanThroughCloseTag(_:)(v144);
      v152 = v151;
      v153 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v21);
      v154 = *(v2 + 1);
      v155 = v150 - *v2;
      v156 = *(v2 + 4);
      v380[0] = *v2;
      v380[1] = v154;
      v381 = v2[1];
      v382 = v156;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v380);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v157 = swift_allocObject();
      *(v157 + 16) = xmmword_18121D6B0;
      *(v157 + 32) = v153;
      *(v157 + 40) = v152 - v150;
      *(v157 + 48) = v155;
      v3 = v293;
      goto LABEL_230;
    }

    v174 = v2[1];
    v377 = *v2;
    v378 = v174;
    v379 = *(v2 + 4);
    v139 = BufferReader.lineNumber.getter();
    v21 = v21;
LABEL_165:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v140 = v21;
    goto LABEL_169;
  }

LABEL_183:
  if ((v33 & 0x18) == 0)
  {
    if ((v21 & 0x100) == 0)
    {
      XMLPlistScanner.checkForCloseTag(_:)(v21);
      if (v175)
      {
        goto LABEL_172;
      }
    }

    v176 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v21);
    v177 = v2[1];
    v383[0] = *v2;
    v383[1] = v177;
    v384 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v383);
    v178 = *(v2 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v178 + 2) + 1, 1, v178);
    }

    v180 = *(v178 + 2);
    v179 = *(v178 + 3);
    if (v180 >= v179 >> 1)
    {
      v178 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v179 > 1), v180 + 1, 1, v178);
    }

    *(v178 + 2) = v180 + 1;
    *&v178[8 * v180 + 32] = v176;
    *(v2 + 5) = v178;
    v3 = v293;
    goto LABEL_231;
  }

  if ((v21 & 0x100) == 0)
  {
    XMLPlistScanner.scanString(asKey:)(v21 == 3);
    if (v158)
    {
      goto LABEL_172;
    }

    XMLPlistScanner.checkForCloseTag(_:)(v21);
    if (v159)
    {
      goto LABEL_172;
    }

    goto LABEL_231;
  }

  v194 = v2[1];
  v375[0] = *v2;
  v375[1] = v194;
  v376 = *(v2 + 4);
  XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v375);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_18121D6B0;
  v195 = 12;
  *(v157 + 40) = 0;
  *(v157 + 48) = 0;
  if (v21 == 3)
  {
    v195 = 13;
  }

  *(v157 + 32) = v195;
LABEL_230:
  specialized Array.append<A>(contentsOf:)(v157);
LABEL_231:
  *(v2 + 3) = v1;
  _StringGuts.grow(_:)(77);
  MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
  v204 = *(v2 + 2);
  v205 = *(v2 + 4);
  v350 = *v2;
  v351 = v204;
  v352 = v1;
  v353 = v205;
  BufferReader.lineNumber.getter();
  v206 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v206);

  MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
  lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
  swift_allocError();
  *v140 = 0;
  *(v140 + 8) = 0xE000000000000000;
  *(v140 + 16) = 0;
  *(v140 + 24) = 0;
  for (i = 5; ; i = 2)
  {
    *(v140 + 32) = i;
    swift_willThrow();
LABEL_172:
    v146 = v2[1];
    *v293 = *v2;
    *(v3 + 16) = v146;
    v294 = *(v2 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v293);
    v118 = *(v2 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
    }

    v3 = *(v118 + 2);
    v147 = *(v118 + 3);
    v148 = (v3 + 1);
    if (v3 >= v147 >> 1)
    {
      v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v147 > 1), v3 + 1, 1, v118);
    }

    *(v118 + 2) = v148;
    v122 = v118 + 32;
    *&v118[8 * v3 + 32] = 10;
    *&v118[8 * v437 + 32] = v148;
    v123 = v8 + 2;
    if (!__OFADD__(v8, 2))
    {
      break;
    }

    __break(1u);
LABEL_224:
    v197 = v2[1];
    *(v3 + 544) = *v2;
    *(v3 + 560) = v197;
    v325 = *(v2 + 4);
LABEL_168:
    v139 = BufferReader.lineNumber.getter();
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v140 = 0;
LABEL_169:
    *(v140 + 8) = v139;
    *(v140 + 16) = 0;
    *(v140 + 24) = 0;
  }

LABEL_177:
  *&v122[8 * v123] = v9;
  *(v2 + 5) = v118;
}