uint64_t _endDocument(uint64_t result)
{
  v1 = result;
  if (!result || (*(result + 120) & 1) == 0)
  {
    v2 = [result delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {

      return [v2 parserDidEndDocument:v1];
    }
  }

  return result;
}

uint64_t protocol witness for _LocaleProtocol.currencyCode.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.currencyCode.getter(&v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t _startDocument(uint64_t result)
{
  v1 = result;
  if (!result || (*(result + 120) & 1) == 0)
  {
    v2 = [result delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {

      return [v2 parserDidStartDocument:v1];
    }
  }

  return result;
}

uint64_t ___startElementNs_block_invoke()
{
  result = _CFAppVersionCheckLessThan();
  _MergedGlobals_130 = result != 0;
  return result;
}

uint64_t _NSSwiftCalendar._components(in:from:)@<X0>(__int128 *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v18 = *a1;
  v5 = *a2;
  v6 = *&v3[OBJC_IVAR____NSSwiftCalendar__lock];
  os_unfair_lock_lock((v6 + 32));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 32));
  v21 = 327679;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v9 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v9 = v5;
  }

  if (*&static Date.validCalendarRange >= v9)
  {
    v10 = *&static Date.validCalendarRange;
  }

  else
  {
    v10 = v9;
  }

  ObjectType = swift_getObjectType();
  v20 = v10;
  v19 = v18;
  (*(v8 + 184))(&v21, &v20, &v19, ObjectType, v8);
  *a3 = v7;
  a3[1] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a3[2])
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    v12 = a3[3];
    *&v19 = a3[2];
    *(&v19 + 1) = v12;
    swift_unknownObjectRetain();
    Calendar.timeZone.setter(&v19);
  }

  swift_unknownObjectRelease();
LABEL_12:
  v13 = v3;
  os_unfair_lock_lock((v6 + 32));
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 32));

  swift_unknownObjectRelease();
  *a3 = v14;
  a3[1] = v15;
  result = a3[2];
  if (result)
  {
    if (v14)
    {
      v17 = a3[3];
      *&v19 = a3[2];
      *(&v19 + 1) = v17;
      swift_unknownObjectRetain();
      return Calendar.timeZone.setter(&v19);
    }
  }

  return result;
}

uint64_t protocol witness for _CalendarProtocol.dateComponents(_:from:in:) in conformance _CalendarAutoupdating(uint64_t *a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a1;
  v4 = *a2;
  v9 = *a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  CalendarCache.current.getter();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = v3;
  v11 = v4;
  v10 = v9;
  (*(v6 + 184))(&v12, &v11, &v10, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t _CalendarAutoupdating.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 32));
  if (!v3)
  {
    v30 = a1;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v29 = *(&static LocaleCache.cache + 8);
    v5 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 32));
    if (!v7)
    {
      LocaleCache.preferences()(&v41);
      v9 = v8;
      type metadata accessor for _LocaleICU();
      v6 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
      v39 = v47;
      v40[0] = v48[0];
      *(v40 + 12) = *(v48 + 12);
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v34[0] = v41;
      v34[1] = v42;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v41, v33);
      v10 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v34, 0);
      if (v9)
      {
        MEMORY[0x1EEE9AC00](v10);
        os_unfair_lock_lock((v5 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v5 + 16), v34);
        os_unfair_lock_unlock((v5 + 32));
        outlined destroy of LocalePreferences(&v41);

        v6 = *(&v34[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v41);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 200))(&v41, ObjectType, v6);
    swift_unknownObjectRelease();
    v12 = v41;
    if (v41 && v41 != 7)
    {
      *&v29 = type metadata accessor for _CalendarICU();
      v13 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v14 = type metadata accessor for _CalendarICU;
      v15 = &protocol conformance descriptor for _CalendarICU;
    }

    else
    {
      *&v29 = type metadata accessor for _CalendarGregorian();
      v13 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v14 = type metadata accessor for _CalendarGregorian;
      v15 = &protocol conformance descriptor for _CalendarGregorian;
    }

    v16 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v13, 255, v14, v15);
    v32 = v12;
    v31[0] = 0;
    v31[1] = 0;
    v17 = static LocaleCache.cache;
    v28 = *(&static LocaleCache.cache + 8);
    v18 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v20 = *(v18 + 16);
    v19 = *(v18 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v18 + 32));
    if (!v20)
    {
      v27[1] = 0;
      *&v34[0] = v17;
      *(v34 + 8) = v28;
      LocaleCache.preferences()(&v41);
      v22 = v21;
      type metadata accessor for _LocaleICU();
      v19 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
      v39 = v47;
      v40[0] = v48[0];
      *(v40 + 12) = *(v48 + 12);
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v34[0] = v41;
      v34[1] = v42;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v41, v33);
      v23 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v34, 0);
      v20 = v23;
      if (v22)
      {
        *&v28 = v27;
        MEMORY[0x1EEE9AC00](v23);
        os_unfair_lock_lock((v18 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v18 + 16), v34);
        os_unfair_lock_unlock((v18 + 32));
        outlined destroy of LocalePreferences(&v41);

        v19 = *(&v34[0] + 1);
        v20 = *&v34[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v41);
      }
    }

    *&v41 = v20;
    *(&v41 + 1) = v19;
    *&v34[0] = 0;
    BYTE8(v34[0]) = 1;
    v24 = (*(v16 + 16))(&v32, v31, &v41, 0, 1, 0, 1, v34, v29, v16);
    MEMORY[0x1EEE9AC00](v24);
    os_unfair_lock_lock((v2 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v2 + 16), &v41);
    os_unfair_lock_unlock((v2 + 32));
    swift_unknownObjectRelease();
    v4 = *(&v41 + 1);
  }

  v25 = swift_getObjectType();
  (*(v4 + 48))(v25, v4);
  return swift_unknownObjectRelease();
}

id protocol witness for _CalendarProtocol.bridgeToNSCalendar() in conformance _CalendarAutoupdating(uint64_t a1, uint64_t a2)
{
  inited = swift_initStaticObject();
  v4 = type metadata accessor for _NSSwiftCalendar();
  v5 = objc_allocWithZone(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 16) = inited;
  *(v6 + 24) = a2;
  *&v5[OBJC_IVAR____NSSwiftCalendar__lock] = v6;
  v7 = *MEMORY[0x1E695D850];
  v9.receiver = v5;
  v9.super_class = v4;
  result = objc_msgSendSuper2(&v9, sel_initWithCheckedCalendarIdentifier_, v7);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in _LocaleICU.currencyCode.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 136);
  v6 = *(a1 + 168);
  v15[6] = *(a1 + 152);
  v16[0] = v6;
  *(v16 + 12) = *(a1 + 180);
  v7 = *(a1 + 72);
  v8 = *(a1 + 104);
  v15[2] = *(a1 + 88);
  v15[3] = v8;
  v15[4] = *(a1 + 120);
  v15[5] = v5;
  v15[0] = *(a1 + 56);
  v15[1] = v7;
  if (_s10Foundation17LocalePreferencesVSgWOg(v15) == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *&v16[0];
  }

  v10 = _LocaleICU.State.NumberFormattersBox.formatter(for:identifier:numberSymbols:)(2, v3, v4, v9);

  if (v10)
  {
    TextAttribute = unum_getTextAttribute();
    result = 0;
    v13 = 0;
    if (TextAttribute - 1 < 0x101)
    {
      result = specialized String.init(_utf16:)(v14, TextAttribute);
    }

    *a2 = result;
    a2[1] = v13;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v99 = a6;
  v100 = a5;
  v15 = a1;
  v92 = a8;
  v101 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v89 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v87 - v18;
  v102 = v19;
  v117 = type metadata accessor for Optional();
  v103 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v87 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v87 - v26;
  v98 = a7;
  v27 = type metadata accessor for Optional();
  v90 = *(v27 - 8);
  v91 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v97 = &v87 - v28;
  v29 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &v15[a2];
  *&v108 = a3;
  *(&v108 + 1) = a4;
  *&v109 = v15;
  *(&v109 + 1) = v15;
  v110 = &v15[a2];
  if (a2 < 1)
  {
LABEL_13:
    v111 = v108;
    v112 = v109;
    v113 = v110;
    if (v110 == *(&v109 + 1))
    {
      v106 = 0;
      v107 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v106 = 0xD000000000000024;
      v107 = 0x8000000181486080;
      v105 = BufferReader.lineNumber.getter();
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v57);

      v96 = v106;
      v93 = v107;
      v97 = type metadata accessor for DecodingError();
      v58 = swift_allocError();
      v92 = v59;
      v60 = v103;
      v61 = *(v103 + 16);
      v62 = v95;
      v63 = v117;
      v61(v95, v99, v117);
      v64 = v94;
      v61(v94, v62, v63);
      v66 = v101;
      v65 = v102;
      if ((*(v101 + 48))(v64, 1, v102) == 1)
      {
        v67 = *(v60 + 8);
        v67(v64, v63);
        _CodingPathNode.path.getter(v100);
        v67(v62, v63);
      }

      else
      {
        v68 = *(v66 + 32);
        v98 = a11;
        v69 = v89;
        v68(v89, v64, v65);
        v70 = _CodingPathNode.path.getter(v100);
        v104 = v58;
        v71 = v65;
        v72 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v73 = v62;
        v74 = v66;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v76 = v98;
        *(inited + 56) = v71;
        *(inited + 64) = v76;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v74 + 16))(boxed_opaque_existential_0, v69, v71);
        v106 = v72;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v74 + 8))(v69, v71);
        (*(v60 + 8))(v73, v63);
      }

      v78 = v92;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v97 - 8) + 104))(v78, *MEMORY[0x1E69E6B00]);
    }

    else
    {
      v41 = v97;
      v40 = v98;
      XMLPlistMap.Value._parseXMLPlistInteger<A>(_:)(&v108, v98, a10, v97);
      v42 = *(v40 - 8);
      v43 = (*(v42 + 48))(v41, 1, v40);
      v44 = v117;
      if (v43 != 1)
      {
        (*(v42 + 32))(v92, v41, v40);
        return;
      }

      v98 = a11;
      (*(v90 + 8))(v41, v91);
      v106 = 0;
      v107 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v106 = 0xD000000000000020;
      v107 = 0x8000000181486050;
      v114 = v108;
      v115 = v109;
      v116 = v110;
      v105 = BufferReader.lineNumber.getter();
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v45);

      v97 = v106;
      v95 = v107;
      v46 = type metadata accessor for DecodingError();
      v47 = swift_allocError();
      v94 = v48;
      v49 = v103;
      v50 = *(v103 + 16);
      v51 = v96;
      v50(v96, v99, v44);
      v52 = v93;
      v50(v93, v51, v44);
      v53 = v52;
      v55 = v101;
      v54 = v102;
      if ((*(v101 + 48))(v53, 1, v102) == 1)
      {
        v56 = *(v49 + 8);
        v56(v53, v44);
        _CodingPathNode.path.getter(v100);
        v56(v51, v44);
      }

      else
      {
        v79 = v88;
        (*(v55 + 32))(v88, v53, v54);
        v80 = _CodingPathNode.path.getter(v100);
        v104 = v47;
        v81 = v54;
        v82 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
        v83 = swift_initStackObject();
        *(v83 + 16) = xmmword_181218E20;
        v84 = v98;
        *(v83 + 56) = v81;
        *(v83 + 64) = v84;
        v85 = __swift_allocate_boxed_opaque_existential_0((v83 + 32));
        (*(v55 + 16))(v85, v79, v81);
        v106 = v82;
        specialized Array.append<A>(contentsOf:)(v83);
        (*(v55 + 8))(v79, v81);
        (*(v49 + 8))(v96, v44);
      }

      v86 = v94;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v46 - 8) + 104))(v86, *MEMORY[0x1E69E6B00]);
    }

    swift_willThrow();
  }

  else
  {
    if (a3 + a4 - v33 >= 0)
    {
      v34 = v15 + 1;
      v35 = (v30 + 8);
      while (v33 >= v15)
      {
        if (&v15[-a3] < 0)
        {
          goto LABEL_27;
        }

        if (v33 - v15 < 0)
        {
          goto LABEL_28;
        }

        v36 = *v15;
        if (v36 >= 0x21 && v36 - 127 > 0x21)
        {
          if ((BufferView<A>._decodeScalar()(v15, v33 - v15) & 0x100000000) != 0)
          {
            goto LABEL_13;
          }

          v38 = v37;
          Unicode.Scalar.properties.getter();
          v39 = Unicode.Scalar.Properties.isWhitespace.getter();
          (*v35)(v32, v29);
          if ((v39 & 1) == 0)
          {
            goto LABEL_13;
          }

          v34 = &v15[v38];
        }

        *(&v109 + 1) = v34;
        v15 = v34++;
        if (v33 < v34)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
  }
}

void *specialized closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)(void *result, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[1];
  v6 = v5 < a5 + a4 || v5 < a5;
  if (!v6 && ((a5 | a4) & 0x8000000000000000) == 0 && v5 > a4)
  {
    return a2(*result + a4, a5, *result, v5);
  }

  __break(1u);
  return result;
}

void *partial apply for closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)(void *a1)
{
  return specialized closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

{
  return partial apply for closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)(a1);
}

uint64_t BufferView<A>._decodeScalar()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if ((v2 & 0xC0) == 0x80)
  {
    goto LABEL_2;
  }

  if ((v2 & 0x80) == 0)
  {
    if (a2 >= 1)
    {
      v3 = *a1;
    }

    else
    {
      v3 = 0;
    }

    LOBYTE(v4) = a2 < 1;
    return v3 | ((v4 & 1) << 32);
  }

  v6 = __clz(v2 ^ 0xFF) - 24;
  if (a2 < v6)
  {
LABEL_2:
    v3 = 0;
    LOBYTE(v4) = 1;
    return v3 | ((v4 & 1) << 32);
  }

  if (v6 == 2)
  {
    v4 = a1[1] & 0xC0;
    v3 = a1[1] & 0x3F | ((v2 & 0x1F) << 6);
    if (v4 != 128)
    {
      v3 = 0;
    }

    LOBYTE(v4) = v4 != 128;
    return v3 | ((v4 & 1) << 32);
  }

  if (v6 == 3)
  {
    v3 = 0;
    v7 = a1[1];
    LOBYTE(v4) = 1;
    if ((v7 & 0xC0) == 0x80)
    {
      v8 = a1[2];
      if ((v8 & 0xC0) == 0x80)
      {
        v9 = v2 & 0xF;
        LOBYTE(v4) = v9 < 0xE && ((v9 << 12) | ((v7 & 0x3F) << 6)) >> 11 > 0x1A;
        if (v4)
        {
          v3 = 0;
        }

        else
        {
          v3 = (v9 << 12) | ((v7 & 0x3F) << 6) | v8 & 0x3F;
        }
      }
    }

    return v3 | ((v4 & 1) << 32);
  }

  if (v6 == 4)
  {
    v3 = 0;
    v10 = a1[1];
    LOBYTE(v4) = 1;
    if ((v10 & 0xC0) == 0x80)
    {
      v11 = a1[2];
      if ((v11 & 0xC0) == 0x80)
      {
        v12 = a1[3];
        if ((v12 & 0xC0) == 0x80)
        {
          v13 = ((v2 & 0xF) << 18) | ((v10 & 0x3F) << 12);
          v14 = v13 >= 0xE000;
          v15 = HIWORD(v13);
          v16 = v13 | ((v11 & 0x3F) << 6);
          v17 = v16 >> 11;
          v3 = v16 & 0xFFFFFFC0 | v12 & 0x3F;
          v18 = !v14 && v17 > 0x1A;
          v19 = v18 || v15 > 0x10;
          v4 = v19;
          if (v4)
          {
            v3 = 0;
          }
        }
      }
    }

    return v3 | ((v4 & 1) << 32);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *XMLPlistMap.Value._parseXMLPlistInteger<A>(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = result[3];
  v6 = result[4];
  if (v6 == v5)
  {
    v20 = *(*(a2 - 8) + 56);

    return v20(a4, 1, 1, a2);
  }

  v8 = *result;
  v9 = result[1];
  v10 = v5 + 1;
  if (v6 < (v5 + 1))
  {
    goto LABEL_9;
  }

  if (&v5[-v8] < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (((v6 - v5) & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v8 + v9 - v6) < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = *v5;
  if (v11 == 45)
  {
    v12 = a4;
    v13 = 1;
    goto LABEL_11;
  }

  if (v11 != 43)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_12;
  }

  v12 = a4;
  v13 = 0;
LABEL_11:
  result[3] = v10;
  v15 = result;
  specialized XMLPlistMap.Value._skipIntegerWhitespace(_:)(result);
  result = v15;
  a4 = v12;
  v14 = v13;
LABEL_12:
  v16 = result[3];
  if (v6 < v16)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (&v16[-v8] < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v6 - v16) < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v8 + v9 - v6) < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = v16 + 2;
  v18 = v6 - (v16 + 2);
  if (v6 >= (v16 + 2) && *v16 == 48 && (v16[1] | 0x20) == 0x78)
  {
    result[3] = v17;
    if (((&v17[-v8] | v18) & 0x8000000000000000) == 0)
    {

      return _parseHexIntegerDigits<A>(_:isNegative:)(v17, v18, v14, a2, a3, a4);
    }

LABEL_36:
    __break(1u);
    return result;
  }

  v19 = result[3];

  return _parseIntegerDigits<A>(_:isNegative:)(v19, v6 - v16, v14, a2, a3, a4);
}

uint64_t _parseIntegerDigits<A>(_:isNegative:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a3;
  v57 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v54 = &v46 - v11;
  v53 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - v24;
  if (a2)
  {
    v51 = a5;
    v56 = a6;
    v58 = v22;
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v26 = v58;
    v27 = (v58 + 8);
    if (a2 <= 0)
    {
      v34 = *v27;
LABEL_13:
      (v34)(v25, a4, v26);
      v43 = v56;
      (*(v58 + 32))(v56, v20, a4);
      return (*(v58 + 56))(v43, 0, 1, a4);
    }

    else
    {
      v28 = v57;
      v29 = &v57[a2];
      v30 = (v58 + 32);
      v31 = v27 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        v32 = *v28 - 48;
        if (v32 >= 0xA)
        {
          v42 = *(v26 + 8);
          v42(v20, a4);
          v42(v25, a4);
          return (*(v58 + 56))(v56, 1, 1, a4);
        }

        v47 = v31;
        v48 = v29;
        v57 = v28;
        v59 = v32;
        lazy protocol witness table accessor for type UInt8 and conformance UInt8();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v33 = v52;
        v49 = dispatch thunk of FixedWidthInteger.multipliedReportingOverflow(by:)();
        v34 = *v27;
        (*v27)(v20, a4);
        v35 = v30;
        v36 = *v30;
        v50 = v35;
        v36(v20, v33, a4);
        v37 = v54;
        v38 = (v55 & 1) != 0 ? dispatch thunk of FixedWidthInteger.subtractingReportingOverflow(_:)() : dispatch thunk of FixedWidthInteger.addingReportingOverflow(_:)();
        v39 = v38;
        v34(v17, a4);
        v34(v20, a4);
        v40 = v37;
        v41 = v50;
        v36(v20, v40, a4);
        if ((v49 | v39))
        {
          break;
        }

        v30 = v41;
        v26 = v58;
        v28 = v57 + 1;
        v31 = v47;
        v29 = v48;
        if ((v57 + 1) >= v48)
        {
          goto LABEL_13;
        }
      }

      v34(v20, a4);
      v34(v25, a4);
      return (*(v58 + 56))(v56, 1, 1, a4);
    }
  }

  else
  {
    v45 = *(v22 + 56);

    return v45(a6, 1, 1, a4, v23);
  }
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

uint64_t static _XMLPlistDecodingFormat.unkeyedContainer(for:referencing:codingPathNode:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 >> 60 == 1)
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v16 = *(a2 + 24);
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation30_PlistUnkeyedDecodingContainerVyAA09_XMLPlistD6FormatVGMd, &_s10Foundation30_PlistUnkeyedDecodingContainerVyAA09_XMLPlistD6FormatVGMR);
    a4[4] = lazy protocol witness table accessor for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>();
    v20 = swift_allocObject();
    *a4 = v20;
    *(v20 + 32) = v16;
    *(v20 + 40) = 0xF000000000000007;
    *(v20 + 16) = a2;
    *(v20 + 24) = v14;
    *(v20 + 64) = 0;
    *(v20 + 72) = a3;
    *(v20 + 48) = v15;
    *(v20 + 56) = 0;
  }

  else
  {
    if (a1 >> 60 == 8 && a1 == 0x8000000000000000)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      v9 = *(a2 + 40);

      _CodingPathNode.path.getter(v9);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    }

    else
    {
      v10 = *(a2 + 40);

      _CodingPathNode.path.getter(v10);

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(v11, a1, v12);
    }

    return swift_willThrow();
  }
}

uint64_t sub_18096C588()
{

  v1 = *(v0 + 40);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of XMLPlistMap.Value(v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t lazy protocol witness table accessor for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation30_PlistUnkeyedDecodingContainerVyAA09_XMLPlistD6FormatVGMd, &_s10Foundation30_PlistUnkeyedDecodingContainerVyAA09_XMLPlistD6FormatVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>);
  }

  return result;
}

uint64_t protocol witness for PlistArrayIterator.next() in conformance XMLPlistMap.ArrayIterator@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = XMLPlistMap.loadValue(at:)(*v1);
  v5 = result;
  if ((~result & 0xF000000000000007) != 0)
  {
    result = XMLPlistMap.offset(after:)(v3);
    *v1 = result;
  }

  *a1 = v5;
  return result;
}

uint64_t static _XMLPlistDecodingFormat.unwrapString<A>(from:in:for:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a2;
  v7 = a5;
  v43 = a4;
  v41 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v18;
  if (a1 >> 60)
  {
    v38 = a6;
    v39 = a3;
    v40 = a1;
    v28 = *(v13 + 16);
    v28(&v37 - v18, v43, v12, v19);
    (v28)(v15, v20, v12);
    v29 = v41;
    if ((*(v41 + 48))(v15, 1, v7) == 1)
    {
      v30 = *(v13 + 8);
      v30(v15, v12);
      v7 = _CodingPathNode.path.getter(v39);
      v30(v20, v12);
    }

    else
    {
      (*(v29 + 32))(v11, v15, v7);
      v31 = _CodingPathNode.path.getter(v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v33 = v38;
      *(inited + 56) = v7;
      *(inited + 64) = v33;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v29 + 16))(boxed_opaque_existential_0, v11, v7);
      v42 = v31;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v29 + 8))(v11, v7);
      (*(v13 + 8))(v20, v12);
      v7 = v42;
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6158], v40, v35);

    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v37 - 6) = v7;
    *(&v37 - 5) = a6;
    *(&v37 - 32) = v21;
    v22 = v43;
    *(&v37 - 3) = a3;
    *(&v37 - 2) = v22;
    v23 = *(v39 + 24);
    *&v25 = MEMORY[0x1EEE9AC00](v24);
    *(&v37 - 4) = partial apply for closure #1 in static _XMLPlistDecodingFormat.unwrapString<A>(from:in:for:_:);
    *(&v37 - 3) = v26;
    *(&v37 - 1) = v25;

    os_unfair_lock_lock((v23 + 40));
    v27 = v40;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v23 + 16), &v42);
    os_unfair_lock_unlock((v23 + 40));
    if (!v27)
    {
      v7 = v42;
    }
  }

  return v7;
}

uint64_t closure #1 in static _XMLPlistDecodingFormat.unwrapString<A>(from:in:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v71 = a6;
  v18 = *(a8 - 8);
  v58 = a7;
  v59 = v18;
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  if (a5)
  {
    v55 = &v52 - v25;
    v56 = v24;
    v27 = v26;
    result = static String._tryFromUTF8(_:)();
    if (v29)
    {
      *a9 = result;
      a9[1] = v29;
      return result;
    }

    v66 = a3;
    v67 = a4;
    v68 = a1;
    v69 = a1;
    v70 = a1 + a2;
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000035, 0x8000000181486100);
    v60[0] = BufferReader.lineNumber.getter();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v31);

    v32 = v61;
    v54 = v62;
    v33 = v27;
    v34 = *(v27 + 16);
    v35 = v55;
    v36 = v56;
    v34(v55, v58, v56);
    v34(v22, v35, v36);
    v37 = v59;
    if ((*(v59 + 48))(v22, 1, a8) == 1)
    {
      v38 = *(v33 + 8);
      v38(v35, v36);
      v38(v22, v36);
      v39 = v71;

LABEL_14:
      v49 = type metadata accessor for DecodingError();
      swift_allocError();
      v51 = v50;
      _CodingPathNode.path.getter(v39);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6B00], v49);

      return swift_willThrow();
    }

    v58 = v32;
    v53 = a10;
    v40 = *(v37 + 32);
    v41 = v57;
    v40(v57, v22, a8);
    v42 = swift_allocObject();
    v43 = v53;
    v42[5] = a8;
    v42[6] = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42 + 2);
    v40(boxed_opaque_existential_0, v41, a8);
    (*(v33 + 8))(v35, v36);
    v45 = v71;
    v42[7] = v71;
    if (v45 >> 62)
    {
      if (v45 >> 62 != 1)
      {
        v48 = 1;
LABEL_13:
        v42[8] = v48;
        v39 = v42;
        goto LABEL_14;
      }

      v46 = ((v45 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v46 = (v45 + 64);
    }

    v47 = *v46;

    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      return result;
    }

    goto LABEL_13;
  }

  v61 = a3;
  v62 = a4;
  v63 = a1;
  v64 = a1;
  v65 = a1 + a2;
  result = specialized static XMLPlistScanner.parseString(with:generate:)(&v61, 1, v60);
  if (!v10)
  {
    v30 = v60[3];
    *a9 = v60[2];
    a9[1] = v30;
  }

  return result;
}

void static _XMLPlistDecodingFormat.unwrapFixedWidthInteger<A, B>(from:in:for:_:)(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v90 = a8;
  v86 = a7;
  v91 = a3;
  v87 = a2;
  v82 = a9;
  v83 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v78 - v15;
  v92 = v16;
  v85 = type metadata accessor for Optional();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v78 - v25;
  v26 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  v89 = a5;
  v29 = *(a5 - 8);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 60 == 7)
  {
    MEMORY[0x1EEE9AC00](v31);
    v50 = v92;
    *(&v78 - 8) = v89;
    *(&v78 - 7) = v50;
    v51 = v90;
    *(&v78 - 6) = v86;
    *(&v78 - 5) = v51;
    v52 = v91;
    *(&v78 - 4) = a1;
    *(&v78 - 3) = v52;
    *(&v78 - 2) = a4;
    v53 = *(v87 + 24);
    *&v55 = MEMORY[0x1EEE9AC00](v54);
    *(&v78 - 6) = v56;
    *(&v78 - 5) = partial apply for closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:);
    *(&v78 - 4) = v57;
    *(&v78 - 3) = v55;

    os_unfair_lock_lock((v53 + 40));
    partial apply for closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)((v53 + 16));
    os_unfair_lock_unlock((v53 + 40));

    return;
  }

  if (a1 >> 60 == 6)
  {
    v78 = v32;
    v36 = v88;
    v37 = specialized XMLPlistMap.Value.realValue<A, B>(in:as:for:_:)(v87, v91, a4, a1, v92, v90);
    if (v36)
    {
      return;
    }

    v93 = *&v37;
    lazy protocol witness table accessor for type Double and conformance Double();
    v38 = v89;
    dispatch thunk of BinaryInteger.init<A>(exactly:)();
    if ((*(v29 + 48))(v28, 1, v38) != 1)
    {
      v69 = *(v29 + 32);
      v69(v35, v28, v38);
      v69(v82, v35, v38);
      return;
    }

    (*(v78 + 8))(v28, v26);
    v93 = 0;
    v94 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    Double.write<A>(to:)();
    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    v39 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v39);

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v89 = v93;
    v88 = v94;
    v40 = type metadata accessor for DecodingError();
    swift_allocError();
    v87 = v41;
    v42 = v84;
    v43 = *(v84 + 16);
    v44 = v81;
    v45 = v85;
    v43(v81, a4, v85);
    v46 = v80;
    v43(v80, v44, v45);
    v47 = v83;
    v48 = v92;
    if ((*(v83 + 48))(v46, 1, v92) == 1)
    {
      v49 = *(v42 + 8);
      v49(v46, v45);
      _CodingPathNode.path.getter(v91);
      v49(v44, v45);
    }

    else
    {
      v70 = v79;
      (*(v47 + 32))(v79, v46, v48);
      v71 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v72 = v40;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v74 = v90;
      *(inited + 56) = v48;
      *(inited + 64) = v74;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v47 + 16))(boxed_opaque_existential_0, v70, v48);
      v93 = v71;
      v76 = inited;
      v40 = v72;
      specialized Array.append<A>(contentsOf:)(v76);
      (*(v47 + 8))(v70, v48);
      (*(v42 + 8))(v81, v45);
    }

    v77 = v87;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v40 - 8) + 104))(v77, *MEMORY[0x1E69E6B00], v40);
  }

  else
  {
    v58 = v84;
    v59 = *(v84 + 16);
    v60 = v85;
    v59(v21, a4, v85, v33);
    (v59)(v18, v21, v60);
    v61 = v83;
    v62 = v92;
    if ((*(v83 + 48))(v18, 1, v92) == 1)
    {
      v63 = *(v58 + 8);
      v63(v18, v60);
      _CodingPathNode.path.getter(v91);
      v63(v21, v60);
    }

    else
    {
      (*(v61 + 32))(v13, v18, v62);
      v64 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_181218E20;
      v66 = v90;
      *(v65 + 56) = v62;
      *(v65 + 64) = v66;
      v67 = __swift_allocate_boxed_opaque_existential_0((v65 + 32));
      (*(v61 + 16))(v67, v13, v62);
      v93 = v64;
      specialized Array.append<A>(contentsOf:)(v65);
      (*(v61 + 8))(v13, v62);
      (*(v58 + 8))(v21, v60);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(v89, a1, v68);
  }

  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.scanArray()()
{
  v3 = v0;
  v4 = *v0;
  v5 = v0[1];
  v426 = *(v0 + 4);
  v425[1] = v5;
  v425[0] = v4;
  XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v425);
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

  v427 = v8 + 1;
  *(v6 + 2) = v8 + 1;
  v271 = v8;
  *&v6[8 * v8 + 32] = 8;
  *(v3 + 5) = v6;
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of XMLPlistScanner.scanArray());
  v9 = 0;
  while (1)
  {
    v16 = *(v3 + 4);
    if (v16 == *(v3 + 3))
    {
      goto LABEL_128;
    }

    v17 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_array);
    if (v18)
    {
      goto LABEL_230;
    }

    if (!v17)
    {
LABEL_128:
      v1 = v427;
      XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_array);
      LOBYTE(v16) = v106;
      if (v106)
      {
        v107 = v3[1];
        v274[0] = *v3;
        v274[1] = v107;
        v275 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v274);
        v47 = *(v3 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_216;
        }

        goto LABEL_130;
      }

LABEL_135:
      v112 = v3[1];
      v272[0] = *v3;
      v272[1] = v112;
      v273 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v272);
      v47 = *(v3 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
      }

      v114 = *(v47 + 2);
      v113 = *(v47 + 3);
      v115 = v114 + 1;
      if (v114 >= v113 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v47);
      }

      *(v47 + 2) = v115;
      *&v47[8 * v114 + 32] = 10;
      *&v47[8 * v1 + 32] = v115;
      if (!__OFADD__(v271, 2))
      {
        *&v47[8 * v271 + 48] = v9;
        goto LABEL_237;
      }

      __break(1u);
      goto LABEL_227;
    }

    LOBYTE(v19) = XMLPlistScanner.peekXMLElement()()._0;
    if (v20)
    {
      goto LABEL_230;
    }

    v1 = v19;
    if (v19 <= 2u)
    {
      break;
    }

    if (((1 << v19) & 0x1E0) != 0)
    {
      if ((v19 & 0x100) != 0)
      {
        v116 = v3[1];
        v417 = *v3;
        v418 = v116;
        v419 = *(v3 + 4);
        goto LABEL_142;
      }

      LOWORD(v10) = 0;
      v21 = XMLPlistScanner.scanThroughCloseTag(_:)(v19);
      v23 = v22;
      v1 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v24 = v23 - v21;
      v25 = *(v3 + 1);
      v2 = v21 - *v3;
      v420[0] = *v3;
      v420[1] = v25;
      v421 = v3[1];
      v422 = v16;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18121D6B0;
      *(v12 + 32) = v1;
      *(v12 + 40) = v24;
      *(v12 + 48) = v2;
    }

    else
    {
      if (((1 << v19) & 0x18) == 0)
      {
        if ((v19 & 0x100) == 0)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v19);
          if (v20)
          {
            goto LABEL_230;
          }
        }

        LOWORD(v10) = v20;
        v1 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
        v30 = v3[1];
        v423[0] = *v3;
        v423[1] = v30;
        v424 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v423);
        v31 = *(v3 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        v2 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
        }

        LOBYTE(v14) = v1;
        *(v31 + 2) = v2;
        *&v31[8 * v33 + 32] = v1;
        *(v3 + 5) = v31;
        goto LABEL_10;
      }

      v26 = v19;
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanString(asKey:)(v19 == 3);
        if (v27)
        {
          goto LABEL_230;
        }

        v28 = v1;
LABEL_125:
        XMLPlistScanner.checkForCloseTag(_:)(v28);
LABEL_126:
        LOWORD(v10) = v29;
        if (v29)
        {
          goto LABEL_230;
        }

        goto LABEL_10;
      }

      LOWORD(v10) = 0;
      v11 = v3[1];
      v415[0] = *v3;
      v415[1] = v11;
      v416 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v415);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18121D6B0;
      v13 = 12;
      if (v26 == 3)
      {
        v13 = 13;
      }

      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 32) = v13;
    }

LABEL_9:
    specialized Array.append<A>(contentsOf:)(v12);
LABEL_10:
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
      goto LABEL_157;
    }
  }

  if (v19)
  {
    if (v19 == 1)
    {
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanArray()();
        goto LABEL_126;
      }

      LOWORD(v10) = 0;
      v45 = v3[1];
      v411[0] = *v3;
      v411[1] = v45;
      v412 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v411);
      v46 = *(*(v3 + 5) + 16);
      v47 = (v46 + 4);
      if (__OFADD__(v46, 4))
      {
        goto LABEL_215;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18121D6C0;
      v48 = 8;
    }

    else
    {
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanDict()();
        goto LABEL_126;
      }

      LOWORD(v10) = 0;
      v49 = v3[1];
      v413[0] = *v3;
      v413[1] = v49;
      v414 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v413);
      v50 = *(*(v3 + 5) + 16);
      v47 = (v50 + 4);
      if (__OFADD__(v50, 4))
      {
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
LABEL_130:
        v109 = *(v47 + 2);
        v108 = *(v47 + 3);
        v110 = v109 + 1;
        if (v109 >= v108 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v47);
        }

        *(v47 + 2) = v110;
        *&v47[8 * v109 + 32] = 10;
        *&v47[8 * v1 + 32] = v110;
        v111 = v271 + 2;
        if (!__OFADD__(v271, 2))
        {
          goto LABEL_236;
        }

        __break(1u);
        goto LABEL_135;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18121D6C0;
      v48 = 9;
    }

    *(v12 + 32) = v48;
    *(v12 + 40) = v47;
    *(v12 + 48) = xmmword_181249E60;
    goto LABEL_9;
  }

  if ((v19 & 0x100) != 0)
  {
    v120 = v3[1];
    v278 = *v3;
    v279 = v120;
    v280 = *(v3 + 4);
    goto LABEL_146;
  }

  v34 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
  if (v35)
  {
    goto LABEL_230;
  }

  if (!v34)
  {
    v121 = v3[1];
    v408 = *v3;
    v409 = v121;
    v410 = *(v3 + 4);
    goto LABEL_146;
  }

  LOBYTE(v36) = XMLPlistScanner.peekXMLElement()()._0;
  if (v37)
  {
    goto LABEL_230;
  }

  v1 = v36;
  if (v36 <= 2u)
  {
    if (v36)
    {
      if (v36 == 1)
      {
        if ((v36 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v54)
          {
            goto LABEL_230;
          }

          goto LABEL_122;
        }

        v74 = v3[1];
        v394[0] = *v3;
        v394[1] = v74;
        v395 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v394);
        v75 = *(*(v3 + 5) + 16);
        v76 = v75 + 4;
        if (__OFADD__(v75, 4))
        {
          __break(1u);
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_18121D6C0;
        v77 = 8;
      }

      else
      {
        if ((v36 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v70)
          {
            goto LABEL_230;
          }

          goto LABEL_122;
        }

        v78 = v3[1];
        v396[0] = *v3;
        v396[1] = v78;
        v397 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v396);
        v75 = *(*(v3 + 5) + 16);
        v76 = v75 + 4;
        if (__OFADD__(v75, 4))
        {
          goto LABEL_261;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_18121D6C0;
        v77 = 9;
      }

      *(v44 + 32) = v77;
      *(v44 + 40) = v76;
      *(v44 + 48) = xmmword_181249E60;
LABEL_84:
      specialized Array.append<A>(contentsOf:)(v44);
      goto LABEL_122;
    }

    if ((v36 & 0x100) != 0)
    {
      v137 = v3[1];
      v281 = *v3;
      v282 = v137;
      v283 = *(v3 + 4);
      goto LABEL_146;
    }

    v59 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v60)
    {
      goto LABEL_230;
    }

    if (!v59)
    {
      v138 = v3[1];
      v391 = *v3;
      v392 = v138;
      v393 = *(v3 + 4);
      goto LABEL_146;
    }

    LOBYTE(v61) = XMLPlistScanner.peekXMLElement()()._0;
    if (v62)
    {
      goto LABEL_230;
    }

    v1 = v61;
    if (v61 <= 2u)
    {
      if (!v61)
      {
        if ((v61 & 0x100) != 0)
        {
          v190 = v3[1];
          v284 = *v3;
          v285 = v190;
          v286 = *(v3 + 4);
          goto LABEL_146;
        }

        v87 = XMLPlistScanner.scanAnyValue(for:)(Foundation_XMLPlistTag_plist);
        if (v88)
        {
          goto LABEL_230;
        }

        if (!v87)
        {
          v191 = v3[1];
          v374 = *v3;
          v375 = v191;
          v376 = *(v3 + 4);
          goto LABEL_146;
        }

        v89 = *(v3 + 3);
        v90 = XMLPlistScanner.scanAnyValue(for:)(Foundation_XMLPlistTag_plist);
        if (v91)
        {
          goto LABEL_230;
        }

        if (v90)
        {
          *(v3 + 3) = v89;
          _StringGuts.grow(_:)(77);
          MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
          v192 = *(v3 + 2);
          v193 = *(v3 + 4);
          v287 = *v3;
          v288 = v192;
          v289 = v89;
          v290 = v193;
LABEL_225:
          BufferReader.lineNumber.getter();
          v194 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v194);

          MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
          lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
          swift_allocError();
          *v119 = 0;
          *(v119 + 8) = 0xE000000000000000;
          *(v119 + 16) = 0;
          *(v119 + 24) = 0;
          v122 = 5;
          goto LABEL_148;
        }

        v81 = Foundation_XMLPlistTag_plist;
        goto LABEL_107;
      }

      if (v61 == 1)
      {
        if ((v61 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v82)
          {
            goto LABEL_230;
          }

          goto LABEL_118;
        }

        v97 = v3[1];
        v377[0] = *v3;
        v377[1] = v97;
        v378 = *(v3 + 4);
        v98 = v377;
        v99 = 8;
      }

      else
      {
        if ((v61 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v93)
          {
            goto LABEL_230;
          }

          goto LABEL_118;
        }

        v100 = v3[1];
        v379[0] = *v3;
        v379[1] = v100;
        v380 = *(v3 + 4);
        v98 = v379;
        v99 = 9;
      }

      XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v99, v98);
    }

    else
    {
      if (((1 << v61) & 0x1E0) != 0)
      {
        if ((v61 & 0x100) != 0)
        {
          v175 = v3[1];
          v383 = *v3;
          v384 = v175;
          v385 = *(v3 + 4);
          goto LABEL_142;
        }

        v63 = XMLPlistScanner.scanThroughCloseTag(_:)(v61);
        v65 = v64;
        v66 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
        v67 = v65 - v63;
        v68 = *(v3 + 1);
        v2 = v63 - *v3;
        v386[0] = *v3;
        v386[1] = v68;
        v387 = v3[1];
        v388 = v16;
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v386);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_18121D6B0;
        *(v69 + 32) = v66;
        *(v69 + 40) = v67;
        *(v69 + 48) = v2;
        specialized Array.append<A>(contentsOf:)(v69);
        goto LABEL_118;
      }

      if (((1 << v61) & 0x18) == 0)
      {
        if ((v61 & 0x100) == 0)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v61);
          if (v62)
          {
            goto LABEL_230;
          }
        }

        LOBYTE(v16) = v62;
        v83 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
        v84 = v3[1];
        v389[0] = *v3;
        v389[1] = v84;
        v390 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v389);
        v85 = *(v3 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85);
        }

        v2 = *(v85 + 2);
        v86 = *(v85 + 3);
        if (v2 >= v86 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v2 + 1, 1, v85);
        }

        *(v85 + 2) = v2 + 1;
        *&v85[8 * v2 + 32] = v83;
        *(v3 + 5) = v85;
        goto LABEL_118;
      }

      v79 = v61;
      if ((v61 & 0x100) == 0)
      {
        XMLPlistScanner.scanString(asKey:)(v61 == 3);
        if (v80)
        {
          goto LABEL_230;
        }

        v81 = v1;
LABEL_107:
        XMLPlistScanner.checkForCloseTag(_:)(v81);
        if (v92)
        {
          goto LABEL_230;
        }

        goto LABEL_118;
      }

      v94 = v3[1];
      v381[0] = *v3;
      v381[1] = v94;
      v382 = *(v3 + 4);
      LOBYTE(v16) = 0;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v381);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_18121D6B0;
      v96 = 12;
      if (v79 == 3)
      {
        v96 = 13;
      }

      *(v95 + 40) = 0;
      *(v95 + 48) = 0;
      *(v95 + 32) = v96;
      specialized Array.append<A>(contentsOf:)(v95);
    }

LABEL_118:
    v1 = *(v3 + 3);
    v101 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v102)
    {
      goto LABEL_230;
    }

    if (!v101)
    {
      v53 = Foundation_XMLPlistTag_plist;
LABEL_121:
      XMLPlistScanner.checkForCloseTag(_:)(v53);
      if (v103)
      {
        goto LABEL_230;
      }

      goto LABEL_122;
    }

    LOBYTE(v139) = XMLPlistScanner.peekXMLElement()()._0;
    v2 = v427;
    if (v140)
    {
      goto LABEL_231;
    }

    LOBYTE(v16) = v139;
    if (v139 <= 2u)
    {
      if (v139)
      {
        if (v139 == 1)
        {
          if ((v139 & 0x100) == 0)
          {
            XMLPlistScanner.scanArray()();
            v2 = v427;
            if (v189)
            {
              goto LABEL_231;
            }

            goto LABEL_259;
          }

          v212 = v3[1];
          v298[0] = *v3;
          v298[1] = v212;
          v299 = *(v3 + 4);
          v213 = v298;
          v214 = 8;
        }

        else
        {
          if ((v139 & 0x100) == 0)
          {
            XMLPlistScanner.scanDict()();
            v2 = v427;
            if (v207)
            {
              goto LABEL_231;
            }

            goto LABEL_259;
          }

          v215 = v3[1];
          v300[0] = *v3;
          v300[1] = v215;
          v301 = *(v3 + 4);
          v213 = v300;
          v214 = 9;
        }

        XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v214, v213);
        goto LABEL_258;
      }

      if ((v139 & 0x100) == 0)
      {
        XMLPlistScanner.scanPlist()();
        v2 = v427;
        if (v206)
        {
          goto LABEL_231;
        }

        goto LABEL_259;
      }

      v211 = v3[1];
      v291 = *v3;
      v292 = v211;
      v293 = *(v3 + 4);
      goto LABEL_146;
    }

    if (((1 << v139) & 0x1E0) == 0)
    {
      if (((1 << v139) & 0x18) != 0)
      {
        v186 = v139;
        if ((v139 & 0x100) != 0)
        {
          v208 = v3[1];
          v302[0] = *v3;
          v302[1] = v208;
          v303 = *(v3 + 4);
          XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v302);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v209 = swift_allocObject();
          *(v209 + 16) = xmmword_18121D6B0;
          v210 = 12;
          *(v209 + 40) = 0;
          *(v209 + 48) = 0;
          if (v186 == 3)
          {
            v210 = 13;
          }

          *(v209 + 32) = v210;
          specialized Array.append<A>(contentsOf:)(v209);
          goto LABEL_258;
        }

        XMLPlistScanner.scanString(asKey:)(v139 == 3);
        if (!v187)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v16);
          v2 = v427;
          if (v188)
          {
            goto LABEL_231;
          }

          goto LABEL_259;
        }
      }

      else
      {
        if ((v139 & 0x100) != 0)
        {
          goto LABEL_239;
        }

        XMLPlistScanner.checkForCloseTag(_:)(v139);
        if (!v196)
        {
          goto LABEL_239;
        }
      }

      goto LABEL_230;
    }

    if ((v139 & 0x100) == 0)
    {
      v141 = XMLPlistScanner.scanThroughCloseTag(_:)(v139);
      v143 = v142;
      v144 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
      v145 = v143 - v141;
      v146 = *(v3 + 1);
      v147 = v141 - *v3;
      v148 = *(v3 + 4);
      v307[0] = *v3;
      v307[1] = v146;
      v308 = v3[1];
      v309 = v148;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v307);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v149 = swift_allocObject();
      *(v149 + 16) = xmmword_18121D6B0;
      *(v149 + 32) = v144;
      *(v149 + 40) = v145;
      *(v149 + 48) = v147;
      specialized Array.append<A>(contentsOf:)(v149);
      goto LABEL_259;
    }

LABEL_227:
    v195 = v3[1];
    v304 = *v3;
    v305 = v195;
    v306 = *(v3 + 4);
    v151 = BufferReader.lineNumber.getter();
    v10 = v16;
    goto LABEL_175;
  }

  if (((1 << v36) & 0x1E0) != 0)
  {
    if ((v36 & 0x100) == 0)
    {
      v38 = XMLPlistScanner.scanThroughCloseTag(_:)(v36);
      v40 = v39;
      v41 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v2 = v40 - v38;
      v42 = *(v3 + 1);
      v43 = v38 - *v3;
      v403[0] = *v3;
      v403[1] = v42;
      v404 = v3[1];
      v405 = v16;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v403);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_18121D6B0;
      *(v44 + 32) = v41;
      *(v44 + 40) = v2;
      *(v44 + 48) = v43;
      goto LABEL_84;
    }

    v125 = v3[1];
    v400 = *v3;
    v401 = v125;
    v402 = *(v3 + 4);
LABEL_142:
    v117 = BufferReader.lineNumber.getter();
    v118 = v1;
LABEL_143:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v119 = v118;
LABEL_147:
    *(v119 + 8) = v117;
    *(v119 + 16) = 0;
    *(v119 + 24) = 0;
    v122 = 2;
LABEL_148:
    *(v119 + 32) = v122;
    swift_willThrow();
LABEL_230:
    v2 = v427;
    goto LABEL_231;
  }

  if (((1 << v36) & 0x18) != 0)
  {
    v51 = v36;
    if ((v36 & 0x100) == 0)
    {
      XMLPlistScanner.scanString(asKey:)(v36 == 3);
      if (v52)
      {
        goto LABEL_230;
      }

      v53 = v1;
      goto LABEL_121;
    }

    v71 = v3[1];
    v398[0] = *v3;
    v398[1] = v71;
    v399 = *(v3 + 4);
    LOBYTE(v16) = 0;
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_18121D6B0;
    v73 = 12;
    if (v51 == 3)
    {
      v73 = 13;
    }

    *(v72 + 40) = 0;
    *(v72 + 48) = 0;
    *(v72 + 32) = v73;
    specialized Array.append<A>(contentsOf:)(v72);
  }

  else
  {
    if ((v36 & 0x100) == 0)
    {
      XMLPlistScanner.checkForCloseTag(_:)(v36);
      if (v37)
      {
        goto LABEL_230;
      }
    }

    LOBYTE(v16) = v37;
    v55 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
    v56 = v3[1];
    v406[0] = *v3;
    v406[1] = v56;
    v407 = *(v3 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v406);
    v57 = *(v3 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
    }

    v2 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v2 >= v58 >> 1)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v2 + 1, 1, v57);
    }

    *(v57 + 2) = v2 + 1;
    *&v57[8 * v2 + 32] = v55;
    *(v3 + 5) = v57;
  }

LABEL_122:
  v1 = *(v3 + 3);
  v104 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
  if (v105)
  {
    goto LABEL_230;
  }

  if (!v104)
  {
    v28 = Foundation_XMLPlistTag_plist;
    goto LABEL_125;
  }

  LOBYTE(v123) = XMLPlistScanner.peekXMLElement()()._0;
  v2 = v427;
  if (v124)
  {
    goto LABEL_231;
  }

  LOWORD(v10) = v123;
  if (v123 <= 2u)
  {
    if (v123)
    {
      if (v123 == 1)
      {
        if ((v123 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v136)
          {
            goto LABEL_231;
          }

          goto LABEL_206;
        }

        v177 = v3[1];
        v360[0] = *v3;
        v360[1] = v177;
        v361 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v360);
        v178 = *(*(v3 + 5) + 16);
        v179 = v178 + 4;
        if (!__OFADD__(v178, 4))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v133 = swift_allocObject();
          *(v133 + 16) = xmmword_18121D6C0;
          v180 = 8;
LABEL_204:
          *(v133 + 32) = v180;
          *(v133 + 40) = v179;
          *(v133 + 48) = xmmword_181249E60;
          goto LABEL_205;
        }

        __break(1u);
      }

      else
      {
        if ((v123 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v172)
          {
            goto LABEL_231;
          }

          goto LABEL_206;
        }

        v181 = v3[1];
        v362[0] = *v3;
        v362[1] = v181;
        v363 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v362);
        v182 = *(*(v3 + 5) + 16);
        v179 = v182 + 4;
        if (!__OFADD__(v182, 4))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v133 = swift_allocObject();
          *(v133 + 16) = xmmword_18121D6C0;
          v180 = 9;
          goto LABEL_204;
        }
      }

      __break(1u);
      goto LABEL_314;
    }

    if ((v123 & 0x100) != 0)
    {
      v176 = v3[1];
      v312 = *v3;
      v313 = v176;
      v314 = *(v3 + 4);
      v151 = BufferReader.lineNumber.getter();
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v152 = 0;
      goto LABEL_176;
    }

    v160 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v161)
    {
      goto LABEL_231;
    }

    if (!v160)
    {
      v205 = v3[1];
      v357 = *v3;
      v358 = v205;
      v359 = *(v3 + 4);
      goto LABEL_146;
    }

    LOBYTE(v162) = XMLPlistScanner.peekXMLElement()()._0;
    if (v163)
    {
      goto LABEL_230;
    }

    LOWORD(v16) = v162;
    if (v162 <= 2u)
    {
      if (!v162)
      {
        if ((v162 & 0x100) != 0)
        {
          v229 = v3[1];
          v315 = *v3;
          v316 = v229;
          v317 = *(v3 + 4);
          goto LABEL_146;
        }

        XMLPlistScanner.scanPlist()();
        goto LABEL_283;
      }

      if (v162 == 1)
      {
        if ((v162 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          goto LABEL_283;
        }

        v230 = v3[1];
        v343[0] = *v3;
        v343[1] = v230;
        v344 = *(v3 + 4);
        v231 = v343;
        v232 = 8;
      }

      else
      {
        if ((v162 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          goto LABEL_283;
        }

        v233 = v3[1];
        v345[0] = *v3;
        v345[1] = v233;
        v346 = *(v3 + 4);
        v231 = v345;
        v232 = 9;
      }

      XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v232, v231);
LABEL_293:
      v234 = *(v3 + 3);
      v235 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
      if (v236)
      {
        goto LABEL_230;
      }

      if (!v235)
      {
        XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_plist);
        v2 = v427;
        if (v248)
        {
          goto LABEL_231;
        }

        goto LABEL_206;
      }

      LOBYTE(v237) = XMLPlistScanner.peekXMLElement()()._0;
      if (v238)
      {
        goto LABEL_230;
      }

      LOBYTE(v16) = v237;
      if (v237 > 2u)
      {
        if (((1 << v237) & 0x1E0) != 0)
        {
          if ((v237 & 0x100) != 0)
          {
LABEL_314:
            v253 = v3[1];
            v331 = *v3;
            v332 = v253;
            v333 = *(v3 + 4);
            goto LABEL_271;
          }

          v239 = XMLPlistScanner.scanThroughCloseTag(_:)(v237);
          v241 = v240;
          v242 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
          v243 = v241 - v239;
          v244 = *(v3 + 1);
          v245 = v239 - *v3;
          v246 = *(v3 + 4);
          v334[0] = *v3;
          v334[1] = v244;
          v335 = v3[1];
          v336 = v246;
          XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v334);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v247 = swift_allocObject();
          *(v247 + 16) = xmmword_18121D6B0;
          *(v247 + 32) = v242;
          *(v247 + 40) = v243;
          *(v247 + 48) = v245;
        }

        else
        {
          if (((1 << v237) & 0x18) == 0)
          {
            if ((v237 & 0x100) == 0)
            {
              XMLPlistScanner.checkForCloseTag(_:)(v237);
              if (v254)
              {
                goto LABEL_230;
              }
            }

            v255 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
            v256 = v3[1];
            v337[0] = *v3;
            v337[1] = v256;
            v338 = *(v3 + 4);
            XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v337);
            v257 = *(v3 + 5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v257 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v257 + 2) + 1, 1, v257);
            }

            v259 = *(v257 + 2);
            v258 = *(v257 + 3);
            if (v259 >= v258 >> 1)
            {
              v257 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v258 > 1), v259 + 1, 1, v257);
            }

            *(v257 + 2) = v259 + 1;
            *&v257[8 * v259 + 32] = v255;
            *(v3 + 5) = v257;
            goto LABEL_336;
          }

          v249 = v237;
          if ((v237 & 0x100) == 0)
          {
            XMLPlistScanner.scanString(asKey:)(v237 == 3);
            if (v250)
            {
              goto LABEL_230;
            }

            XMLPlistScanner.checkForCloseTag(_:)(v16);
            if (v251)
            {
              goto LABEL_230;
            }

            goto LABEL_336;
          }

          v262 = v3[1];
          v329[0] = *v3;
          v329[1] = v262;
          v330 = *(v3 + 4);
          XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v329);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v247 = swift_allocObject();
          *(v247 + 16) = xmmword_18121D6B0;
          v263 = 12;
          *(v247 + 40) = 0;
          *(v247 + 48) = 0;
          if (v249 == 3)
          {
            v263 = 13;
          }

          *(v247 + 32) = v263;
        }

        specialized Array.append<A>(contentsOf:)(v247);
LABEL_336:
        *(v3 + 3) = v234;
        _StringGuts.grow(_:)(77);
        MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
        v269 = *(v3 + 2);
        v270 = *(v3 + 4);
        v321 = *v3;
        v322 = v269;
        v323 = v234;
        v324 = v270;
        goto LABEL_225;
      }

      if (v237)
      {
        if (v237 == 1)
        {
          if ((v237 & 0x100) == 0)
          {
            XMLPlistScanner.scanArray()();
            if (v252)
            {
              goto LABEL_230;
            }

            goto LABEL_336;
          }

          v264 = v3[1];
          v325[0] = *v3;
          v325[1] = v264;
          v326 = *(v3 + 4);
          v265 = v325;
          v266 = 8;
        }

        else
        {
          if ((v237 & 0x100) == 0)
          {
            XMLPlistScanner.scanDict()();
            if (v261)
            {
              goto LABEL_230;
            }

            goto LABEL_336;
          }

          v268 = v3[1];
          v327[0] = *v3;
          v327[1] = v268;
          v328 = *(v3 + 4);
          v265 = v327;
          v266 = 9;
        }

        XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v266, v265);
        goto LABEL_336;
      }

      if ((v237 & 0x100) == 0)
      {
        XMLPlistScanner.scanPlist()();
        if (v260)
        {
          goto LABEL_230;
        }

        goto LABEL_336;
      }

      v267 = v3[1];
      v318 = *v3;
      v319 = v267;
      v320 = *(v3 + 4);
LABEL_146:
      v117 = BufferReader.lineNumber.getter();
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v119 = 0;
      goto LABEL_147;
    }

    LODWORD(v75) = 1 << v162;
    if (((1 << v162) & 0x1E0) != 0)
    {
      if ((v162 & 0x100) != 0)
      {
        v220 = v3[1];
        v349 = *v3;
        v350 = v220;
        v351 = *(v3 + 4);
LABEL_271:
        v117 = BufferReader.lineNumber.getter();
        v118 = v16;
        goto LABEL_143;
      }

      v164 = XMLPlistScanner.scanThroughCloseTag(_:)(v162);
      v166 = v165;
      v167 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
      v168 = *(v3 + 1);
      v169 = v164 - *v3;
      v170 = *(v3 + 4);
      v352[0] = *v3;
      v352[1] = v168;
      v353 = v3[1];
      v354 = v170;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v352);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_18121D6B0;
      *(v171 + 32) = v167;
      *(v171 + 40) = v166 - v164;
      *(v171 + 48) = v169;
      goto LABEL_288;
    }

LABEL_262:
    if ((v75 & 0x18) == 0)
    {
      if ((v16 & 0x100) == 0)
      {
        XMLPlistScanner.checkForCloseTag(_:)(v16);
        if (v221)
        {
          goto LABEL_230;
        }
      }

      v222 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
      v223 = v3[1];
      v355[0] = *v3;
      v355[1] = v223;
      v356 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v355);
      v224 = *(v3 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v224 + 2) + 1, 1, v224);
      }

      v226 = *(v224 + 2);
      v225 = *(v224 + 3);
      if (v226 >= v225 >> 1)
      {
        v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v225 > 1), v226 + 1, 1, v224);
      }

      *(v224 + 2) = v226 + 1;
      *&v224[8 * v226 + 32] = v222;
      *(v3 + 5) = v224;
      goto LABEL_293;
    }

    if ((v16 & 0x100) != 0)
    {
      v227 = v3[1];
      v347[0] = *v3;
      v347[1] = v227;
      v348 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v347);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_18121D6B0;
      v228 = 12;
      *(v171 + 40) = 0;
      *(v171 + 48) = 0;
      if (v16 == 3)
      {
        v228 = 13;
      }

      *(v171 + 32) = v228;
LABEL_288:
      specialized Array.append<A>(contentsOf:)(v171);
      goto LABEL_293;
    }

    XMLPlistScanner.scanString(asKey:)(v16 == 3);
    if (v218)
    {
      goto LABEL_230;
    }

    XMLPlistScanner.checkForCloseTag(_:)(v16);
LABEL_283:
    if (v219)
    {
      goto LABEL_230;
    }

    goto LABEL_293;
  }

  v14 = 1 << v123;
  if (((1 << v123) & 0x1E0) != 0)
  {
    if ((v123 & 0x100) == 0)
    {
      v126 = XMLPlistScanner.scanThroughCloseTag(_:)(v123);
      v128 = v127;
      v129 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
      v130 = *(v3 + 1);
      v131 = v126 - *v3;
      v132 = *(v3 + 4);
      v369[0] = *v3;
      v369[1] = v130;
      v370 = v3[1];
      v371 = v132;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v369);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_18121D6B0;
      *(v133 + 32) = v129;
      *(v133 + 40) = v128 - v126;
      *(v133 + 48) = v131;
      goto LABEL_205;
    }

    v150 = v3[1];
    v366 = *v3;
    v367 = v150;
    v368 = *(v3 + 4);
    v151 = BufferReader.lineNumber.getter();
    v10 = v10;
LABEL_175:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v152 = v10;
LABEL_176:
    *(v152 + 8) = v151;
    *(v152 + 16) = 0;
    *(v152 + 24) = 0;
    v153 = 2;
    goto LABEL_208;
  }

LABEL_157:
  if ((v14 & 0x18) == 0)
  {
    if ((v10 & 0x100) == 0)
    {
      XMLPlistScanner.checkForCloseTag(_:)(v10);
      if (v154)
      {
        goto LABEL_231;
      }
    }

    v155 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
    v156 = v3[1];
    v372[0] = *v3;
    v372[1] = v156;
    v373 = *(v3 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v372);
    v157 = *(v3 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v157 + 2) + 1, 1, v157);
    }

    v159 = *(v157 + 2);
    v158 = *(v157 + 3);
    if (v159 >= v158 >> 1)
    {
      v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v157);
    }

    *(v157 + 2) = v159 + 1;
    *&v157[8 * v159 + 32] = v155;
    *(v3 + 5) = v157;
    goto LABEL_206;
  }

  if ((v10 & 0x100) == 0)
  {
    XMLPlistScanner.scanString(asKey:)(v10 == 3);
    if (v134)
    {
      goto LABEL_231;
    }

    XMLPlistScanner.checkForCloseTag(_:)(v10);
    if (v135)
    {
      goto LABEL_231;
    }

    goto LABEL_206;
  }

  v173 = v3[1];
  v364[0] = *v3;
  v364[1] = v173;
  v365 = *(v3 + 4);
  XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v364);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_18121D6B0;
  v174 = 12;
  *(v133 + 40) = 0;
  *(v133 + 48) = 0;
  if (v10 == 3)
  {
    v174 = 13;
  }

  *(v133 + 32) = v174;
LABEL_205:
  specialized Array.append<A>(contentsOf:)(v133);
LABEL_206:
  *(v3 + 3) = v1;
  _StringGuts.grow(_:)(77);
  MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
  v183 = *(v3 + 2);
  v184 = *(v3 + 4);
  v339 = *v3;
  v340 = v183;
  v341 = v1;
  v342 = v184;
  while (1)
  {
    BufferReader.lineNumber.getter();
    v185 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v185);

    MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v152 = 0;
    *(v152 + 8) = 0xE000000000000000;
    *(v152 + 16) = 0;
    *(v152 + 24) = 0;
    v153 = 5;
LABEL_208:
    *(v152 + 32) = v153;
    swift_willThrow();
LABEL_231:
    v197 = v3[1];
    v276[0] = *v3;
    v276[1] = v197;
    v277 = *(v3 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v276);
    v47 = *(v3 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
    }

    v199 = *(v47 + 2);
    v198 = *(v47 + 3);
    v16 = v199 + 1;
    if (v199 >= v198 >> 1)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v199 + 1, 1, v47);
    }

    *(v47 + 2) = v16;
    *&v47[8 * v199 + 32] = 10;
    *&v47[8 * v2 + 32] = v16;
    v111 = v271 + 2;
    if (!__OFADD__(v271, 2))
    {
      break;
    }

    __break(1u);
LABEL_239:
    v200 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
    v201 = v3[1];
    v310[0] = *v3;
    v310[1] = v201;
    v311 = *(v3 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v310);
    v202 = *(v3 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v202 + 2) + 1, 1, v202);
    }

    v204 = *(v202 + 2);
    v203 = *(v202 + 3);
    if (v204 >= v203 >> 1)
    {
      v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v203 > 1), v204 + 1, 1, v202);
    }

    *(v202 + 2) = v204 + 1;
    *&v202[8 * v204 + 32] = v200;
    *(v3 + 5) = v202;
LABEL_258:
    v2 = v427;
LABEL_259:
    *(v3 + 3) = v1;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
    v216 = *(v3 + 2);
    v217 = *(v3 + 4);
    v294 = *v3;
    v295 = v216;
    v296 = v1;
    v297 = v217;
  }

LABEL_236:
  *&v47[8 * v111 + 32] = v9;
LABEL_237:
  *(v3 + 5) = v47;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(void *result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_12;
    }

    v5 = result[2];
    v4 = result[3];
    v3 = v4 - v5;
    if (__OFSUB__(v4, v5))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    if (!v3)
    {
LABEL_12:
      outlined consume of Data._Representation(result, a2);
      return MEMORY[0x1E69E7CC0];
    }

LABEL_8:
    v6 = result;
    v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v3, 0);
    v9 = Data._copyContents(initializing:)(v11, v8 + 4, v3, v6, a2);
    outlined consume of Data._Representation(v6, a2);
    result = outlined destroy of Data.Iterator(v11);
    if (v9 == v3)
    {
      return v8;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!v2)
  {
    v3 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v10 = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v3 = v10;
    if (!v10)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _LocaleAutoupdating.calendarIdentifier.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  v9 = *(&static LocaleCache.cache + 8);
  v1 = *(&static LocaleCache.cache + 1);
  os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v1 + 32));
  if (!v3)
  {
    *&v11[0] = v0;
    *(v11 + 8) = v9;
    LocaleCache.preferences()(v13);
    v5 = v4;
    type metadata accessor for _LocaleICU();
    v2 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
    v11[6] = v13[6];
    v12[0] = v14[0];
    *(v12 + 12) = *(v14 + 12);
    v11[2] = v13[2];
    v11[3] = v13[3];
    v11[4] = v13[4];
    v11[5] = v13[5];
    v11[0] = v13[0];
    v11[1] = v13[1];
    swift_allocObject();
    outlined init with copy of LocalePreferences(v13, &v10);
    v6 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v11, 0);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v6);
      os_unfair_lock_lock((v1 + 32));
      closure #2 in LocaleCache._currentAndCache.getterpartial apply((v1 + 16), v11);
      os_unfair_lock_unlock((v1 + 32));
      outlined destroy of LocalePreferences(v13);

      v2 = *(&v11[0] + 1);
    }

    else
    {
      outlined destroy of LocalePreferences(v13);
    }
  }

  ObjectType = swift_getObjectType();
  (*(v2 + 200))(ObjectType, v2);
  return swift_unknownObjectRelease();
}

NSConstantValueExpression *HandleUnaryMinus(void *a1)
{
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v2 = [a1 constantValue];
  if (!_NSIsNSNumber())
  {
    goto LABEL_20;
  }

  v3 = *[v2 objCType];
  if (v3 <= 0x50)
  {
    if (v3 == 67 || v3 == 73 || v3 == 76)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v3 - 99 > 0x10)
  {
LABEL_14:
    if (v3 == 81 || v3 == 83)
    {
LABEL_16:
      v4 = [NSNumber alloc];
      v5 = [v2 unsignedLongLongValue];
      goto LABEL_17;
    }

LABEL_22:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Unrecognized numeric type while processing unary minus syntax." userInfo:0]);
  }

  if (((1 << (v3 - 99)) & 0x14241) != 0)
  {
    v4 = [NSNumber alloc];
    v5 = [v2 longLongValue];
LABEL_17:
    v9 = [(NSNumber *)v4 initWithLongLong:-v5];
    goto LABEL_18;
  }

  if (v3 != 100)
  {
    if (v3 == 102)
    {
      v6 = [NSNumber alloc];
      [v2 floatValue];
      *&v8 = 0.0 - v7;
      v9 = [(NSNumber *)v6 initWithFloat:v8];
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v17 = [NSNumber alloc];
  [v2 doubleValue];
  v9 = [(NSNumber *)v17 initWithDouble:0.0 - v18];
LABEL_18:
  v10 = v9;
  if (v9)
  {
    v11 = [[NSConstantValueExpression alloc] initWithObject:v9];

    return v11;
  }

LABEL_20:
  v13 = [[NSNumber alloc] initWithLongLong:0];
  v14 = [[NSConstantValueExpression alloc] initWithObject:v13];
  v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v14, a1, 0}];
  FunctionExpression = CreateFunctionExpression(@"from:subtract:", v15);

  return FunctionExpression;
}

uint64_t AttributedString.Runs.subscript.getter@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v100 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v92 - v6;
  v7 = a1[5];
  v123 = a1[4];
  v124[0] = v7;
  *(v124 + 10) = *(a1 + 90);
  v8 = a1[1];
  v120[0] = *a1;
  v120[1] = v8;
  v9 = a1[3];
  v121 = a1[2];
  v122 = v9;
  v10 = *(v3 + 3);
  v124[2] = *(v3 + 1);
  v124[3] = v10;
  v11 = *(v3 + 5);
  v12 = *(v3 + 7);
  v13 = *(v3 + 11);
  v124[6] = *(v3 + 9);
  v124[7] = v13;
  v124[4] = v11;
  v124[5] = v12;
  v14 = *(v3 + 13);
  v15 = *(v3 + 15);
  v16 = *(v3 + 19);
  v124[10] = *(v3 + 17);
  v124[11] = v16;
  v124[8] = v14;
  v124[9] = v15;
  v17 = *(v3 + 21);
  v18 = *(v3 + 23);
  v19 = *(v3 + 25);
  *(v125 + 10) = *(v3 + 210);
  v124[13] = v18;
  v125[0] = v19;
  v124[12] = v17;
  result = specialized Range.contains(_:)(v120);
  if ((result & 1) == 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v97 = a2;
  AttributedString.Runs._resolveRun(_:)(v120, v113);
  v21 = *(&v121 + 1);
  v22 = v121;
  v23 = *(&v122 + 1);
  v102 = v122;
  v107 = v3;
  if (*(&v122 + 1) == 2 || v113[4] != v121 >> 11)
  {
    v24 = *v3;
    v31 = *(*v3 + 24);
    v32 = *(*v3 + 56);
    v118 = *(*v3 + 40);
    v119 = v32;
    v33 = *(v24 + 40);
    v114 = *(v24 + 24);
    v115 = v33;
    v116 = *(v24 + 56);
    v117 = v31;
    v106 = BigString.startIndex.getter();
    v126[0] = v117;
    v126[1] = v118;
    v127 = v119;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v126, &v110);
    v26 = BigString.UTF8View.index(_:offsetBy:)();
    v28 = v34;
    v98 = v36;
    v99 = v35;
    outlined destroy of BigString(&v117);
  }

  else
  {
    v24 = *v3;
    v25 = *(*v3 + 40);
    v117 = *(*v3 + 24);
    v118 = v25;
    v119 = *(v24 + 56);
    swift_unknownObjectRetain();
    v26 = BigString.UTF8View.index(roundingDown:)();
    v28 = v27;
    v98 = v30;
    v99 = v29;
    swift_unknownObjectRelease();
  }

  v101 = v21;
  if (BYTE8(v124[1]))
  {
    v103 = v23;
    v104 = v22;
    v95 = v26;
    v96 = v24;
    v93 = *(&v124[0] + 1);
    v94 = v28;
    if (*(&v124[0] + 1) == 2)
    {
      v37 = v26;
    }

    else
    {
      v37 = v123;
    }

    v38 = *(type metadata accessor for AttributedString.Runs(0) + 24);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
    v40 = v108;
    v105 = v39;
    v106 = v38;
    RangeSet.ranges.getter();
    v41 = v109;
    v42 = RangeSet.Ranges.count.getter();
    v43 = v100[1];
    result = v43(v40, v41);
    if (v42 < 1)
    {
LABEL_49:
      __break(1u);
    }

    else
    {
      v44 = 0;
      v45 = v37 >> 10;
      while (!__OFADD__(v44, v42))
      {
        v46 = (v44 + v42) / 2;
        v47 = v108;
        RangeSet.ranges.getter();
        v48 = v109;
        RangeSet.Ranges.subscript.getter();
        result = v43(v47, v48);
        v49 = v110;
        if (v45 >= v110 >> 10)
        {
          v50 = v112;
          if (v45 < v112 >> 10)
          {
            v53 = *(&v110 + 1);
            v55 = *(&v111 + 1);
            v54 = v111;
            v26 = v95;
            v24 = v96;
            v23 = v103;
            v22 = v104;
            v56 = v93;
            v28 = v94;
            v58 = v98;
            v57 = v99;
            goto LABEL_22;
          }

          v44 = v46 + 1;
          v46 = v42;
        }

        v42 = v46;
        if (v44 >= v46)
        {
          goto LABEL_49;
        }
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  type metadata accessor for AttributedString.Runs(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v51 = v108;
  RangeSet.ranges.getter();
  v52 = v109;
  RangeSet.Ranges.subscript.getter();
  result = (v100[1])(v51, v52);
  v53 = *(&v110 + 1);
  v49 = v110;
  v55 = *(&v111 + 1);
  v54 = v111;
  v50 = v112;
  v56 = *(&v124[0] + 1);
  if (*(&v124[0] + 1) == 2)
  {
    v58 = v98;
    v57 = v99;
  }

  else
  {
    v58 = v98;
    v57 = v99;
    if (v123 >> 10 < v110 >> 10 || v123 >> 10 >= v112 >> 10)
    {
      goto LABEL_54;
    }
  }

LABEL_22:
  v105 = v55;
  v106 = v54;
  v107 = v53;
  if (v23 == 2)
  {
    v22 = v26;
    v101 = v28;
    v102 = v57;
    v23 = v58;
  }

  v103 = v23;
  v104 = v22;
  v59 = v123;
  if (v56 == 2)
  {
    v59 = v26;
  }

  v108 = v59;
  if (v56 == 2)
  {
    v60 = v28;
  }

  else
  {
    v60 = *(&v123 + 1);
  }

  v100 = v60;
  if (v56 == 2)
  {
    v61 = v57;
  }

  else
  {
    v61 = *&v124[0];
  }

  if (v56 == 2)
  {
    v62 = v58;
  }

  else
  {
    v62 = v56;
  }

  v98 = v62;
  v99 = v61;
  v63 = *(v24 + 72);
  v109 = *(v24 + 80);
  v64 = *(v24 + 88);
  v65 = *(v24 + 96);
  v67 = v113[0];
  v66 = v113[1];
  v68 = v113[2];
  swift_unknownObjectRetain();
  v69 = specialized Rope.subscript.getter(v67, v66, v68, v63, v109, v64, v65);
  v71 = v70;
  v73 = v72;
  v74 = v104;
  result = swift_unknownObjectRelease();
  v75 = v69 + (v74 >> 11);
  if (__OFADD__(v69, v74 >> 11))
  {
    goto LABEL_52;
  }

  if ((v50 >> 11) < v75)
  {
    v75 = v50 >> 11;
  }

  v76 = *(v24 + 40);
  v110 = *(v24 + 24);
  v111 = v76;
  v112 = *(v24 + 56);
  if (__OFSUB__(v75, v108 >> 11))
  {
    goto LABEL_53;
  }

  v77 = v103;
  if (v49 >> 10 >= v74 >> 10)
  {
    v77 = v105;
  }

  v109 = v77;
  if (v49 >> 10 >= v74 >> 10)
  {
    v78 = v106;
  }

  else
  {
    v78 = v102;
  }

  v79 = v101;
  if (v49 >> 10 >= v74 >> 10)
  {
    v79 = v107;
  }

  v106 = v78;
  v107 = v79;
  if (v49 >> 10 < v74 >> 10)
  {
    v49 = v74;
  }

  swift_unknownObjectRetain();
  v80 = BigString.UTF8View.index(_:offsetBy:)();
  v82 = v81;
  v84 = v83;
  v85 = v24;
  v87 = v86;
  swift_unknownObjectRelease();
  v88 = v97;
  *v97 = v71;
  v88[1] = v73;
  v90 = v106;
  v89 = v107;
  v88[2] = v49;
  v88[3] = v89;
  v91 = v109;
  v88[4] = v90;
  v88[5] = v91;
  v88[6] = v80;
  v88[7] = v82;
  v88[8] = v84;
  v88[9] = v87;
  v88[10] = v85;
}

void protocol witness for Collection.subscript.read in conformance AttributedString.Runs(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  *(v1 + 120) = *(*a1 + 32);
  *(v1 + 136) = v2;
  *(v1 + 152) = v1[4];
  *(v1 + 21) = *(v1 + 10);
  v3 = v1[1];
  *(v1 + 88) = *v1;
  *(v1 + 104) = v3;
  outlined destroy of AttributedString.Runs.Run(v1 + 88);

  free(v1);
}

void protocol witness for Collection.formIndex(after:) in conformance AttributedString.Runs(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v113 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v124 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v116 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v103 - v9;
  v11 = *a1;
  v12 = v2[1];
  if (*a1 < v12)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v13 = *(a1 + 8);
  *&v123 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v111 = *(a1 + 48);
  v112 = v16;
  v17 = *(a1 + 64);
  v119 = *(a1 + 56);
  v18 = *(a1 + 88);
  v109 = *(a1 + 96);
  v19 = *(a1 + 104);
  v20 = v12 < v11 || v2[12] == 2;
  v21 = v20;
  v22 = v2[9];
  if (!v20)
  {
    if (v18 == 2)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (v17 >> 10 < v22 >> 10)
    {
      goto LABEL_77;
    }
  }

  v23 = v2[15];
  v24 = v2[23];
  v103 = v2 + 15;
  v25 = v2[26];
  if (v11 >= v23)
  {
    if (v23 < v11)
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v25 == 2)
    {
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if (v18 == 2)
    {
      if (!v21)
      {
        goto LABEL_84;
      }

      goto LABEL_21;
    }

    if (v17 >> 10 >= v24 >> 10)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  if ((v21 & 1) == 0)
  {
    if (v18 == 2)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v17 >> 10 < v22 >> 10)
    {
      goto LABEL_81;
    }
  }

LABEL_21:
  if (v23 < v11)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v11 >= v23 && v18 != 2)
  {
    if (v25 == 2)
    {
LABEL_87:
      __break(1u);
      return;
    }

    if (v24 >> 10 < v17 >> 10)
    {
      goto LABEL_79;
    }
  }

  v118 = v11;
  LODWORD(v114) = v19;
  v107 = v18;
  v108 = v17;
  v26 = v15 >> 11;
  v121 = a2;
  v122 = v15 >> 11;
  v126 = v10;
  v127 = v8;
  v120 = v2;
  v125 = v5;
  v110 = v15;
  if (v14 == 1 || (v27 = *v2, v13 != *(*v2 + 96)))
  {
    if (*(v2 + *(a2 + 28)))
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v35 = *(*v2 + 72);
    v34 = *(*v2 + 80);
    v36 = *(*v2 + 88);
    v37 = *(*v2 + 96);
    v38 = *v2;
    swift_unknownObjectRetain();
    v39 = specialized Rope.find<A>(at:in:preferEnd:)(v118, 0, v35, v34, v36, v37);
    *&v123 = v41;
    v117 = v37;
    if (v39 != v37)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v115 = v40;
    if (v35)
    {
      v42 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v117, v123, v40, v35, v34, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
    }

    v27 = v38;
    v26 = v122;
  }

  else
  {
    v117 = v13;
    v115 = v14;
    if (v119 == 2)
    {
      v28 = *(v27 + 72);
      if (v28)
      {
        v29 = v27;
        v30 = *(v27 + 88);
        v31 = *(v29 + 80);
        swift_unknownObjectRetain();
        v32 = v30;
        v27 = v29;
        v33 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v117, v123, v115, v28, v31, v32);
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
      }

      v45 = v33;
      v43 = 1;
      goto LABEL_44;
    }

    v42 = v15 >> 11;
  }

  v43 = v119 == 2;
  if (v119 != 2 && v26 == v42)
  {
    v44 = *(v27 + 40);
    v132 = *(v27 + 24);
    v133 = v44;
    v134 = *(v27 + 56);
    swift_unknownObjectRetain();
    v106 = BigString.UTF8View.index(roundingDown:)();
    swift_unknownObjectRelease();
    v105 = 0;
    v45 = v26;
    goto LABEL_45;
  }

  v45 = v42;
LABEL_44:
  v105 = v43;
  v46 = *(v27 + 24);
  v47 = *(v27 + 56);
  v133 = *(v27 + 40);
  v134 = v47;
  v48 = *(v27 + 40);
  v131[6] = *(v27 + 24);
  v131[7] = v48;
  v131[8] = *(v27 + 56);
  v132 = v46;
  BigString.startIndex.getter();
  v135[0] = v132;
  v135[1] = v133;
  v136 = v134;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v135, &v129);
  v106 = BigString.UTF8View.index(_:offsetBy:)();
  outlined destroy of BigString(&v132);
  v26 = v122;
LABEL_45:
  v49 = *(v27 + 72);
  v50 = *(v27 + 80);
  v51 = *(v27 + 88);
  v122 = *(v27 + 96);
  v52 = v117;
  v53 = v123;
  *&v129 = v117;
  *(&v129 + 1) = v123;
  *&v130 = v115;
  if (__OFADD__(v118, 1))
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v104 = v118 + 1;
  v118 = v27;
  v54 = v115;
  swift_unknownObjectRetain();
  v55 = v53;
  v56 = v51;
  v57 = specialized Rope.subscript.getter(v52, v55, v54, v49, v50, v51, v122);

  v58 = v45 + v57;
  if (__OFADD__(v45, v57))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  specialized Rope.formIndex(after:)(&v129, v49, v50, v56, v122);
  swift_unknownObjectRelease();
  v123 = v129;
  v117 = v130;
  v59 = *(v121 + 24);
  if (v114)
  {
    v114 = v45 + v57;
    v115 = a1;
    v122 = v26;
    (*(v113 + 16))(v124, &v120[v59], v125);
    if (v107 == 2)
    {
      v26 = v106;
    }

    else
    {
      v26 = v108;
    }

    v60 = v126;
    RangeSet.ranges.getter();
    v61 = v127;
    v58 = RangeSet.Ranges.count.getter();
    v62 = *(v116 + 8);
    v62(v60, v61);
    if (v58 >= 1)
    {
      a1 = 0;
      v63 = v26 >> 10;
      while (1)
      {
        while (1)
        {
          if (__OFADD__(a1, v58))
          {
            __break(1u);
            goto LABEL_71;
          }

          v64 = (a1 + v58) / 2;
          v65 = v62;
          v66 = v126;
          RangeSet.ranges.getter();
          v26 = v127;
          RangeSet.Ranges.subscript.getter();
          v67 = v66;
          v62 = v65;
          v65(v67, v26);
          if (v63 >= v129 >> 10)
          {
            break;
          }

          v58 = (a1 + v58) / 2;
          if (a1 >= v64)
          {
            goto LABEL_58;
          }
        }

        v68 = *&v131[0];
        if (v63 < *&v131[0] >> 10)
        {
          break;
        }

        a1 = v64 + 1;
        if (v64 + 1 >= v58)
        {
          goto LABEL_58;
        }
      }

      (*(v113 + 8))(v124, v125);
      v58 = v114;
      a1 = v115;
      v26 = v122;
      if (v114 < (v68 >> 11))
      {
        goto LABEL_60;
      }

      goto LABEL_63;
    }

LABEL_58:
    __break(1u);
  }

  v69 = v126;
  RangeSet.ranges.getter();
  v64 = v109;
  v70 = v127;
  RangeSet.Ranges.subscript.getter();
  v71 = v69;
  v65 = *(v116 + 8);
  v65(v71, v70);
  if (v58 < *&v131[0] >> 11)
  {
LABEL_60:
    if (v105)
    {
      v72 = *(v118 + 24);
      v73 = *(v118 + 56);
      v130 = *(v118 + 40);
      v131[0] = v73;
      v129 = v72;
      v131[3] = *(v118 + 24);
      v74 = *(v118 + 56);
      v131[4] = *(v118 + 40);
      v131[5] = v74;
      BigString.startIndex.getter();
      v137[0] = v129;
      v137[1] = v130;
      v138 = *&v131[0];
      outlined init with copy of Rope<BigString._Chunk>._Node?(v137, v128);
      v75 = BigString.UTF8View.index(_:offsetBy:)();
      v77 = v76;
      v79 = v78;
      v81 = v80;
      outlined destroy of BigString(&v129);
    }

    else
    {
      v90 = *(v118 + 40);
      v129 = *(v118 + 24);
      v130 = v90;
      v131[0] = *(v118 + 56);
      if (__OFSUB__(v58, v26))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      swift_unknownObjectRetain();
      v75 = BigString.UTF8View.index(_:offsetBy:)();
      v77 = v91;
      v79 = v92;
      v81 = v93;
      swift_unknownObjectRelease();
    }

    v94 = v120[*(v121 + 28)];
    v128[0] = 0;
    *a1 = v104;
    *(a1 + 8) = v123;
    *(a1 + 24) = v117;
    *(a1 + 32) = v75;
    *(a1 + 40) = v77;
    *(a1 + 48) = v79;
    *(a1 + 56) = v81;
    *(a1 + 64) = v75;
    *(a1 + 72) = v77;
    *(a1 + 80) = v79;
    *(a1 + 88) = v81;
    *(a1 + 96) = v64;
    *(a1 + 104) = 0;
    *(a1 + 105) = v94;
    return;
  }

LABEL_63:
  v124 = (v64 + 1);
  if (__OFADD__(v64, 1))
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v82 = v120;
  v83 = v126;
  RangeSet.ranges.getter();
  v84 = v127;
  v85 = RangeSet.Ranges.count.getter();
  v65(v83, v84);
  if (v124 == v85)
  {
    v86 = v103;
    v87 = v103[5];
    *(a1 + 64) = v103[4];
    *(a1 + 80) = v87;
    *(a1 + 90) = *(v86 + 90);
    v88 = v86[1];
    *a1 = *v86;
    *(a1 + 16) = v88;
    v89 = v86[3];
    *(a1 + 32) = v86[2];
    *(a1 + 48) = v89;
  }

  else
  {
    RangeSet.ranges.getter();
    v95 = v124;
    RangeSet.Ranges.subscript.getter();
    v65(v83, v84);
    v96 = v129;
    v97 = v130;
    AttributedString.Guts.findRun(at:)(v129, *(&v130 + 1), &v129);
    v98 = v130;
    v99 = v129;
    v100 = *(v131 + 8);
    v101 = *(&v131[1] + 8);
    v102 = v82[*(v121 + 28)];
    LOBYTE(v129) = 0;
    *a1 = *(&v130 + 1);
    *(a1 + 8) = v99;
    *(a1 + 24) = v98;
    *(a1 + 32) = v100;
    *(a1 + 48) = v101;
    *(a1 + 64) = v96;
    *(a1 + 80) = v97;
    *(a1 + 96) = v95;
    *(a1 + 104) = 0;
    *(a1 + 105) = v102;
  }
}

BOOL specialized closure #1 in Rope.formIndex(after:)(unsigned __int16 *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (4 * *(a1 + 2) + 8) & 0x3C;
  v4 = ((v2 >> v3) & 0xF) + 1;
  v5 = *a1;
  if (v4 < v5)
  {
    *(a2 + 8) = (v4 << v3) | ((-15 << v3) - 1) & v2;
  }

  return v4 < v5;
}

uint64_t AttributedString._AttributeStorage.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24[-v12];
  v14 = (*(a3 + 24))(a2, a3, v11);
  if (*(a1 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
    v18 = v17;

    if (v18)
    {
      outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * v16, v25);
      outlined init with copy of Hashable & Sendable(v25, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
      v19 = swift_dynamicCast();
      v20 = *(*(AssociatedTypeWitness - 8) + 56);
      if (v19)
      {
        v21 = *(AssociatedTypeWitness - 8);
        v20(v13, 0, 1, AssociatedTypeWitness);
        (*(v21 + 32))(a4, v13, AssociatedTypeWitness);
        outlined destroy of AttributedString._AttributeValue(v25);
        return v20(a4, 0, 1, AssociatedTypeWitness);
      }

      else
      {
        v20(v13, 1, 1, AssociatedTypeWitness);
        result = (*(v10 + 8))(v13, v9);
        __break(1u);
      }

      return result;
    }
  }

  else
  {
  }

  v23 = *(*(AssociatedTypeWitness - 8) + 56);

  return v23(a4, 1, 1, AssociatedTypeWitness);
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.Runs(void *a1, _OWORD *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xB0uLL);
  }

  *a1 = v4;
  AttributedString.Runs.subscript.getter(a2, v4);
  return protocol witness for Collection.subscript.read in conformance AttributedString.Runs;
}

uint64_t AttributedString.Runs._resolveRun(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  v4 = v2[1];
  if (*result < v4)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v7 = *(result + 8);
  v6 = *(result + 16);
  v8 = *(result + 24);
  v9 = *(result + 64);
  v10 = *(result + 88);
  if (v4 >= v3 && v2[12] != 2)
  {
    if (v10 == 2)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v9 >> 10 < v2[9] >> 10)
    {
      goto LABEL_64;
    }
  }

  v11 = v2[15];
  if (v11 < v3)
  {
    goto LABEL_61;
  }

  if (v3 < v11 || v10 == 2)
  {
LABEL_11:
    if (v8 != 1)
    {
      v12 = *v2;
      if (v7 == *(*v2 + 96))
      {
        if (*(result + 56) != 2)
        {
          v16 = *(result + 32) >> 11;
          goto LABEL_53;
        }

        v13 = v12[9];
        if (v13)
        {
          v15 = v12[10];
          v14 = v12[11];
          swift_unknownObjectRetain();
          v16 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v6, v8, v13, v15, v14);
LABEL_41:
          result = swift_unknownObjectRelease();
LABEL_53:
          *a2 = v7;
          a2[1] = v6;
          a2[2] = v8;
          a2[3] = v3;
          a2[4] = v16;
          return result;
        }

        goto LABEL_52;
      }
    }

    result = type metadata accessor for AttributedString.Runs(0);
    if (*(v2 + *(result + 28)))
    {
      goto LABEL_62;
    }

    v17 = *v2;
    v18 = *(*v2 + 72);
    v19 = *(*v2 + 80);
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v3 < 0 || v20 < v3)
    {
      goto LABEL_63;
    }

    v21 = *(v17 + 88);
    v7 = *(v17 + 96);
    if (!v18 || v3 >= v19 || (v22 = (v18 + 16), v23 = *(v18 + 16), !*(v18 + 16)))
    {
      v33 = swift_unknownObjectRetain();
      result = specialized Rope._endPath.getter(v33);
      v6 = result;
      v8 = 0;
      if (v18)
      {
LABEL_40:
        v16 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v7, v6, v8, v18, v19, v21);
        goto LABEL_41;
      }

LABEL_52:
      v16 = 0;
      goto LABEL_53;
    }

    v36 = *(v17 + 88);
    v37 = v19;
    v38 = *(v17 + 96);
    v24 = *(v18 + 18);
    result = swift_unknownObjectRetain_n();
    if (v24)
    {
      v25 = v3;
      v26 = v24;
      v27 = v18;
      do
      {
        v28 = *v22;
        if (*v22)
        {
          v29 = 0;
          v30 = (v27 + 32);
          while (1)
          {
            v31 = *v30;
            v30 += 3;
            v32 = v25 - v31;
            if (__OFSUB__(v25, v31))
            {
              goto LABEL_56;
            }

            if (__OFADD__(v32, 1))
            {
              goto LABEL_57;
            }

            if (v32 + 1 < 1)
            {
              v28 = v29;
              goto LABEL_28;
            }

            ++v29;
            v25 = v32;
            if (v28 == v29)
            {
              goto LABEL_37;
            }
          }
        }

        v32 = v25;
LABEL_37:
        if (v32)
        {
          goto LABEL_59;
        }

        v25 = 0;
LABEL_28:
        v26 = (v28 << ((4 * v24 + 8) & 0x3C)) | ((-15 << ((4 * v24 + 8) & 0x3C)) - 1) & v26;
        v8 = *(v27 + 24 + 24 * v28);
        swift_unknownObjectRetain();
        result = swift_unknownObjectRelease();
        v22 = (v8 + 16);
        LOBYTE(v24) = *(v8 + 18);
        v27 = v8;
      }

      while (v24);
      v23 = *v22;
      if (*v22)
      {
        goto LABEL_46;
      }

      v35 = 0;
      if (!v25)
      {
LABEL_51:
        swift_unknownObjectRelease();
        v6 = v26 & 0xFFFFFFFFFFFFF0FFLL | (v35 << 8);
        v19 = v37;
        v7 = v38;
        v21 = v36;
        goto LABEL_40;
      }

LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    else
    {
      v26 = 0;
      v25 = v3;
      v8 = v18;
LABEL_46:
      v34 = 0;
      v35 = v25 & ~(v25 >> 63);
      while ((v25 ^ v34) != 0x8000000000000000)
      {
        if (v35 == v34)
        {
          goto LABEL_51;
        }

        if (v23 == ++v34)
        {
          v35 = v23;
          if (v25 != v34)
          {
            goto LABEL_55;
          }

          goto LABEL_51;
        }
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v2[26] != 2)
  {
    if (v2[23] >> 10 < v9 >> 10)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    goto LABEL_11;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t specialized Rope.formIndex(after:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result != a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v6 = result;
  if (*(result + 8) >= (((-15 << ((4 * *(a2 + 18) + 8) & 0x3C)) - 1) & *(a2 + 18) | (*(a2 + 16) << ((4 * *(a2 + 18) + 8) & 0x3C))))
  {
    goto LABEL_10;
  }

  v8 = *(result + 16);
  if (!v8 || (result = specialized closure #1 in Rope.formIndex(after:)((v8 + 16), result), (result & 1) == 0))
  {
    result = specialized Rope._Node.formSuccessor(of:)(v6, a2);
    if ((result & 1) == 0)
    {
      v9 = ((-15 << ((4 * *(a2 + 18) + 8) & 0x3C)) - 1) & *(a2 + 18) | (*(a2 + 16) << ((4 * *(a2 + 18) + 8) & 0x3C));
      *v6 = a5;
      v6[1] = v9;
      v6[2] = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t specialized Rope._Node.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  result = swift_isUniquelyReferenced_nonNull();
  v8 = *v3;
  if ((result & 1) == 0)
  {
    v9 = specialized Rope._Node.copy()(*v3);
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    *v3 = v9;
    v3[1] = v11;
    v8 = v9;
    v3[2] = v13;
  }

  if (*(v8 + 18))
  {
    v14 = v3[1];
    v15 = v8 + 24 * *(v8 + 16);
    v16 = *(v15 + 8);
    v17 = v14 - v16;
    if (__OFSUB__(v14, v16))
    {
      __break(1u);
    }

    else
    {
      v18 = v3[2];
      v19 = *(v15 + 16);
      v20 = v18 - v19;
      if (!__OFSUB__(v18, v19))
      {

        swift_unknownObjectRetain();
        result = specialized Rope._Node.append(_:)(a1, a2, a3);
        v23 = *(v15 + 8);
        v24 = v17 + v23;
        if (!__OFADD__(v17, v23))
        {
          v25 = *(v15 + 16);
          v26 = __OFADD__(v20, v25);
          v27 = v20 + v25;
          if (!v26)
          {
            v28 = result;
            v29 = v22;
            v30 = v21;
            swift_unknownObjectRelease();
            v3[1] = v24;
            v3[2] = v27;
            if (!v28)
            {
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              return 0;
            }

            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            specialized closure #2 in Rope._Node.append(_:)((v8 + 16), v8 + 24);
            swift_unknownObjectRelease();

            if (*(v8 + 16) == 15)
            {
              v31 = specialized Rope._Node.split(keeping:)(8);
              specialized Rope._Node._appendNode(_:)(v28, v30, v29);

              swift_unknownObjectRelease();
              return v31;
            }

            specialized Rope._Node._appendNode(_:)(v28, v30, v29);

            swift_unknownObjectRelease();
            return 0;
          }

LABEL_22:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (*(v8 + 16) == 15)
  {
    v31 = specialized Rope._Node.split(keeping:)(8);
    specialized Rope._Node._appendItem(_:)(a1, a2, a3);
    return v31;
  }

  specialized Rope._Node._appendItem(_:)(a1, a2, a3);
  return 0;
}

BOOL specialized Range.contains(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (*a1 < *v1)
  {
    return 0;
  }

  v4 = a1[8];
  v5 = a1[11];
  if (*v1 < v2 || v1[11] == 2)
  {
    goto LABEL_8;
  }

  if (v5 == 2)
  {
    return 0;
  }

  if (v4 >> 10 < v1[8] >> 10)
  {
    return 0;
  }

LABEL_8:
  v7 = v1[14];
  if (v2 < v7)
  {
    return 1;
  }

  if (v7 < v2 || v1[25] == 2)
  {
    return 0;
  }

  v9 = v4 >> 10 < v1[22] >> 10;
  return v5 == 2 || v9;
}

void (*AttributedString.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x270uLL);
  }

  v8 = v7;
  v49 = a1;
  *a1 = v7;
  *(v7 + 608) = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v5;
  v11 = &unk_1EA7B2000;
  v12 = &static AttributedString.Guts._nextVersion;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_14;
  }

  v13 = &static AttributedString.Guts._nextVersion;
  v14 = *(v10 + 24);
  v15 = *(v10 + 56);
  *(v8 + 432) = *(v10 + 40);
  *(v8 + 448) = v15;
  *(v8 + 416) = v14;
  v16 = *(v10 + 72);
  v17 = *(v10 + 80);
  v18 = *(v10 + 88);
  v19 = *(v10 + 96);
  type metadata accessor for AttributedString.Guts();
  v10 = swift_allocObject();
  v20 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(v8 + 416, v8 + 112);
  v21 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v21);
  if (v16)
  {
    v22 = v18 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v22;
  if (v23 != v20)
  {
    goto LABEL_23;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v12 = v13;
    *(v10 + 16) = atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
    v24 = *(v8 + 416);
    v25 = *(v8 + 432);
    *(v10 + 56) = *(v8 + 448);
    *(v10 + 40) = v25;
    *(v10 + 24) = v24;
    *(v10 + 72) = v16;
    *(v10 + 80) = v17;
    *(v10 + 88) = v18;
    *(v10 + 96) = v19;
    *(v10 + 104) = MEMORY[0x1E69E7CC0];

    *v5 = v10;
LABEL_14:
    if (v11[147] != -1)
    {
      swift_once();
    }

    v13 = v12;
    *(v10 + 16) = atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
    v26 = *(v10 + 24);
    v27 = *(v10 + 56);
    *(v8 + 480) = *(v10 + 40);
    *(v8 + 496) = v27;
    *(v8 + 464) = v26;
    v28 = BigString.startIndex.getter();
    v19 = v29;
    v16 = v30;
    v17 = v31;
    v32 = BigString.endIndex.getter();
    *(v8 + 272) = v10;
    *(v8 + 280) = v28;
    *(v8 + 288) = v19;
    *(v8 + 296) = v16;
    *(v8 + 304) = v17;
    *(v8 + 312) = v32;
    *(v8 + 320) = v33;
    *(v8 + 328) = v34;
    *(v8 + 336) = v35;
    *(v8 + 344) = 0;
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();

    dispatch thunk of RangeExpression.relative<A>(to:)();
    v36 = *(v8 + 320);
    *(v8 + 144) = *(v8 + 304);
    *(v8 + 160) = v36;
    *(v8 + 176) = *(v8 + 336);
    v37 = *(v8 + 288);
    *(v8 + 112) = *(v8 + 272);
    *(v8 + 128) = v37;
    outlined destroy of AttributedString.CharacterView(v8 + 112);
    v38 = *(v8 + 208);
    v39 = *(v8 + 232);
    v40 = *(v8 + 248);
    *(v8 + 352) = *(v8 + 192);
    *(v8 + 368) = v38;
    *(v8 + 384) = v39;
    *(v8 + 400) = v40;
    *(v8 + 264) = 0;
    *(v8 + 192) = v10;
    v41 = *(v10 + 40);
    v42 = *(v10 + 56);
    *(v8 + 512) = *(v10 + 24);
    *(v8 + 528) = v41;
    *(v8 + 544) = v42;
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(v8);
    v50 = *(v8 + 64);
    v43 = *(v8 + 80);
    v51 = *(v8 + 96);
    *(v8 + 200) = *(v8 + 48);
    *(v8 + 216) = v50;
    *(v8 + 232) = v43;
    *(v8 + 248) = v51;
    v11 = v49;
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v44 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v45 = *(v44 + 16);
    v18 = v45 + 1;
    *(v8 + 616) = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    *(v44 + 16) = v18;
    os_unfair_lock_unlock((v44 + 24));
    *(v8 + 264) = v18;
    BigString.init()();
    *(v8 + 272) = 0;
    MEMORY[0x1865D26B0](v8 + 272, 8);
    v19 = *(v8 + 272);
    type metadata accessor for AttributedString.Guts();
    v18 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      break;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  *(v18 + 16) = atomic_fetch_add_explicit(v13, 1uLL, memory_order_relaxed);
  v46 = *(v8 + 560);
  v47 = *(v8 + 576);
  *(v18 + 56) = *(v8 + 592);
  *(v18 + 40) = v47;
  *(v18 + 24) = v46;
  *(v18 + 72) = 0;
  *(v18 + 80) = 0;
  *(v18 + 88) = 0;
  *(v18 + 96) = v19;
  *(v18 + 104) = MEMORY[0x1E69E7CC0];

  *v5 = v18;
  return AttributedString.subscript.modify;
}

uint64_t AttributedSubstring.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_11;
  }

  v41 = v14;
  v44 = v17;
  v45 = v10;
  v46 = a3;
  v47 = a4;
  v48 = a1;
  v18 = *v5;
  v19 = *(*v5 + 24);
  v20 = *(*v5 + 56);
  v55 = *(*v5 + 40);
  v56 = v20;
  v54 = v19;
  v21 = v18[9];
  v22 = v18[10];
  v23 = v18[12];
  v49 = v18[11];
  type metadata accessor for AttributedString.Guts();
  v24 = swift_allocObject();
  v25 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v54, &v50);
  v26 = swift_unknownObjectRetain();
  v43 = v22;
  v27 = v49;
  v42 = v23;
  specialized Rope._endPath.getter(v26);
  if (v21)
  {
    v28 = v27 == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v28;
  if (v29 != v25)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_15:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v31 = v55;
  *(v24 + 24) = v54;
  *(v24 + 16) = add_explicit;
  *(v24 + 40) = v31;
  *(v24 + 56) = v56;
  v32 = v43;
  *(v24 + 72) = v21;
  *(v24 + 80) = v32;
  v33 = v42;
  *(v24 + 88) = v27;
  *(v24 + 96) = v33;
  *(v24 + 104) = MEMORY[0x1E69E7CC0];

  *v5 = v24;
  a4 = v47;
  a1 = v48;
  v10 = v45;
  a3 = v46;
  v17 = v44;
  v14 = v41;
LABEL_11:
  (*(v11 + 16))(v13, a1, v10);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    v34 = *(v11 + 8);
    v34(v13, v10);
    v35 = *(v5 + 24);
    v50 = *(v5 + 8);
    v51 = v35;
    v36 = *(v5 + 56);
    v52 = *(v5 + 40);
    v53 = v36;
    AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(a3, &v50, a3, a4);
    return (v34)(a1, v10);
  }

  else
  {
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    v38 = *(v5 + 24);
    v50 = *(v5 + 8);
    v51 = v38;
    v39 = *(v5 + 56);
    v52 = *(v5 + 40);
    v53 = v39;
    AttributedString.Guts.setAttributeValue<A>(_:forKey:in:)(v17, a3, &v50, a3, a4);
    (*(v11 + 8))(a1, v10);
    return (*(v14 + 8))(v17, AssociatedTypeWitness);
  }
}

void AttributedString.subscript.modify(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 264) == *(*a1 + 616))
  {
    v2 = *(v1 + 608);
    v3 = *(v1 + 192);

    *v2 = v3;
    v4 = *(v1 + 240);
    *(v1 + 304) = *(v1 + 224);
    *(v1 + 320) = v4;
    *(v1 + 336) = *(v1 + 256);
    v5 = *(v1 + 208);
    *(v1 + 272) = *(v1 + 192);
    *(v1 + 288) = v5;
    outlined destroy of AttributedSubstring(v1 + 272);

    free(v1);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

{
  v1 = *a1;
  v2 = *(*a1 + 568);
  if (*(v2 + *(*a1 + 648)) == *(*a1 + 640))
  {
    v3 = *(v1 + 616);
    v4 = *(v1 + 608);
    v5 = *(v1 + 600);
    v6 = *(v1 + 592);
    v7 = *(v1 + 576);
    v10 = *(v1 + 560);
    v11 = *(v1 + 552);
    v8 = *(v1 + 544);
    (*(v1 + 624))(v3, *(v1 + 584));
    v9 = *v2;

    *v8 = v9;
    _s10Foundation16AttributedStringV4RunsVWOhTm_1(v2, type metadata accessor for DiscontiguousAttributedSubstring);
    free(v3);
    free(v4);
    free(v5);
    free(v6);
    free(v7);
    free(v2);
    free(v10);
    free(v11);

    free(v1);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t outlined init with copy of AttributedString.Runs(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString.Runs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(v4 + 40);
  v25 = *(v4 + 24);
  v26 = v8;
  v27 = *(v4 + 56);
  swift_unknownObjectRetain();
  v9 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v10 = *(v4 + 40);
  v22 = *(v4 + 24);
  v23 = v10;
  v24 = *(v4 + 56);
  swift_unknownObjectRetain();
  v11 = BigString.UnicodeScalarView.index(roundingDown:)();
  swift_unknownObjectRelease();
  v12 = v9 >> 11;
  v13 = v11 >> 11;
  v19[2] = a3;
  v19[3] = a4;
  AttributedString._InternalRunsSlice.updateEach(with:)(partial apply for closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:), v19, v5, v12, v11 >> 11);
  v14 = *(a4 + 32);
  result = v14(&v20, a3, a4);
  if (v21 != 1)
  {
    outlined consume of AttributedString.AttributeRunBoundaries?(v20, v21);
    v14(&v20, a3, a4);
    v16 = v21;
    if (v21 == 1)
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_181218E20;
      *(v17 + 32) = v18;
      *(v17 + 40) = v16;
    }

    AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v12, v13, 0, v17);
  }

  return result;
}

char *closure #1 in AttributedString.Guts.removeAttributeValue<A>(forKey:in:)(uint64_t *a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 24);
  v11 = v10(a5, a6, a3);
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    goto LABEL_6;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v18 = *a1;
LABEL_4:

    v19 = *(v18 + 56) + 72 * v13;
    v53 = *v19;
    v21 = *(v19 + 32);
    v20 = *(v19 + 48);
    v22 = *(v19 + 64);
    v54 = *(v19 + 16);
    v55 = v21;
    v57 = v22;
    v56 = v20;
    specialized _NativeDictionary._delete(at:)(v13, v18);
    *a1 = v18;
LABEL_6:
    v23 = (v10)(a5, a6);
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v23, v24, &v53, v51);

    outlined destroy of TermOfAddress?(v51, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    v25 = *(&v54 + 1) != 0;
    result = outlined destroy of TermOfAddress?(&v53, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    *a4 = v25;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
  v27 = static _DictionaryStorage.copy(original:)();
  v18 = v27;
  if (!*(v17 + 16))
  {
LABEL_22:

    goto LABEL_4;
  }

  result = (v27 + 64);
  v28 = (v17 + 64);
  v29 = ((1 << *(v18 + 32)) + 63) >> 6;
  if (v18 != v17 || result >= &v28[8 * v29])
  {
    result = memmove(result, v28, 8 * v29);
  }

  v30 = 0;
  *(v18 + 16) = *(v17 + 16);
  v31 = 1 << *(v17 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v17 + 64);
  v34 = (v31 + 63) >> 6;
  v45 = v34;
  if (v33)
  {
    do
    {
      v35 = __clz(__rbit64(v33));
      v50 = (v33 - 1) & v33;
LABEL_20:
      v38 = v35 | (v30 << 6);
      v47 = 16 * v38;
      v39 = (*(v17 + 48) + 16 * v38);
      v48 = v39[1];
      v49 = *v39;
      v46 = 72 * v38;
      outlined init with copy of AttributedString._AttributeValue(*(v17 + 56) + 72 * v38, &v53);
      v40 = (*(v18 + 48) + v47);
      *v40 = v49;
      v40[1] = v48;
      v41 = *(v18 + 56) + v46;
      *v41 = v53;
      v42 = v54;
      v43 = v55;
      v44 = v56;
      *(v41 + 64) = v57;
      *(v41 + 32) = v43;
      *(v41 + 48) = v44;
      *(v41 + 16) = v42;

      v34 = v45;
      v33 = v50;
    }

    while (v50);
  }

  v36 = v30;
  while (1)
  {
    v30 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v30 >= v34)
    {
      goto LABEL_22;
    }

    v37 = *(v17 + 64 + 8 * v30);
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v50 = (v37 - 1) & v37;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

char *specialized _NativeDictionary._delete(at:)(char *result, uint64_t a2)
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
        result = (v14 + 72 * v3);
        v15 = (v14 + 72 * v6);
        if (v3 != v6 || result >= v15 + 72)
        {
          result = memmove(result, v15, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
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
        result = (v14 + 80 * v3);
        v15 = (v14 + 80 * v6);
        if (v3 != v6 || result >= v15 + 80)
        {
          result = memmove(result, v15, 0x50uLL);
          v3 = v6;
        }
      }

LABEL_4:
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

uint64_t URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, __int128 *a3@<X2>, uint64_t *a4@<X8>)
{
  v14 = *a3;
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v7 = type metadata accessor for _BridgedURL();
    v8 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v7 = type metadata accessor for _SwiftURL();
    v8 = &protocol witness table for _SwiftURL;
  }

  v15 = v14;
  v9 = v8[11];
  swift_unknownObjectRetain();
  v9(a1, a2 & 1, &v15);
  v10 = (v8[56])(v7, v8);
  v12 = v11;
  result = swift_unknownObjectRelease();
  *a4 = v10;
  a4[1] = v12;
  return result;
}

uint64_t protocol witness for _URLProtocol.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:) in conformance _SwiftURL(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = String.init(cString:)();
  v8 = v7;
  v12 = a2 ^ 1;
  v11[0] = v4;
  v11[1] = v5;
  v9 = swift_allocObject();
  _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v6, v8, 0, &v12, v11);
  return v9;
}

uint64_t one-time initialization function for currentIdentity()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySi_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySi_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  static AttributedString.currentIdentity = result;
  return result;
}

uint64_t static PredicateExpressions.build_NotEqual<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 16))(a8, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v15 = type metadata accessor for PredicateExpressions.NotEqual(0, v17);
  return (*(*(a4 - 8) + 16))(a8 + *(v15 + 60), a2, a4);
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.NotEqual<A, B>(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.NilLiteral<A>(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t specialized static Calendar._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftCalendar();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
    v6 = a1;
    os_unfair_lock_lock((v5 + 32));
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    type metadata accessor for _CalendarBridged();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarBridged and conformance _CalendarBridged, type metadata accessor for _CalendarBridged, &protocol conformance descriptor for _CalendarBridged);
    v9 = a1;
  }

  *a2 = v7;
  a2[1] = v8;
  return 1;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
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
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v15 >= v16 + 1))
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
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (48 * v3 < (48 * v6) || v17 >= v18 + 3 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

uint64_t StringProtocol.enumerateSubstrings<A>(in:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v29 = a4;
  v30 = a2;
  v27 = a3;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  StringProtocol._ephemeralString.getter();
  v28 = String._bridgeToObjectiveCImpl()();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  result = StringProtocol._toUTF16Offsets(_:)();
  v19 = v18 - result;
  if (__OFSUB__(v18, result))
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v21 = v9;
    v22 = v19;
    (*(v14 + 16))(&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v21, a5);
    v23 = (*(v14 + 80) + 64) & ~*(v14 + 80);
    v24 = swift_allocObject();
    *(v24 + 2) = a5;
    *(v24 + 3) = a6;
    *(v24 + 4) = a7;
    *(v24 + 5) = a8;
    v25 = v29;
    *(v24 + 6) = v27;
    *(v24 + 7) = v25;
    (*(v14 + 32))(&v24[v23], v16, a5);
    aBlock[4] = partial apply for closure #1 in StringProtocol.enumerateSubstrings<A>(in:options:_:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    aBlock[3] = &block_descriptor_85_0;
    v26 = _Block_copy(aBlock);

    [v28 enumerateSubstringsInRange:v20 options:v22 usingBlock:{v30, v26}];
    _Block_release(v26);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18097396C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t AttributedString.Runs._isPartial.getter()
{
  result = type metadata accessor for AttributedString.Runs(0);
  if ((*(v0 + *(result + 28)) & 1) == 0)
  {
    if (v0[12] == 2 || v0[26] == 2)
    {
      __break(1u);
      return result;
    }

    v2 = v0[9];
    v3 = v0[23];
    if ((BigString.startIndex.getter() ^ v2) <= 0x3FF)
    {
      return (BigString.endIndex.getter() ^ v3) > 0x3FF;
    }
  }

  return 1;
}

unint64_t specialized IndexingIterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd, &_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMR);
  v247 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v264 = &v222 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd, &_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v222 - v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMR);
  v11 = v2 + *(result + 36);
  if (*v11 == v2[15])
  {
    v12 = v2[26];
    if (*(v11 + 11) == 2)
    {
      if (v12 != 2)
      {
        goto LABEL_8;
      }

LABEL_7:
      *(a1 + 80) = 0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return result;
    }

    if (v12 != 2 && (*(v11 + 8) ^ v2[23]) < 1024)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  v267 = v7;
  v223 = v2 + 15;
  v13 = *(v11 + 1);
  v286 = *v11;
  v14 = *(v11 + 5);
  v290 = *(v11 + 4);
  v291[0] = v14;
  *(v291 + 10) = *(v11 + 90);
  v16 = *(v11 + 2);
  v15 = *(v11 + 3);
  v233 = v11;
  v288 = v16;
  v289 = v15;
  v287 = v13;
  v17 = v286;
  v245 = *(&v290 + 1);
  v260 = v290;
  v263 = *(&v291[0] + 1);
  v244 = *&v291[0];
  v18 = *(v2 + 3);
  v292 = *(v2 + 1);
  v293 = v18;
  v19 = *(v2 + 5);
  v20 = *(v2 + 7);
  v21 = *(v2 + 11);
  v296 = *(v2 + 9);
  v297 = v21;
  v294 = v19;
  v295 = v20;
  v22 = *(v2 + 13);
  v23 = *(v2 + 15);
  v24 = *(v2 + 19);
  v300 = *(v2 + 17);
  v301 = v24;
  v298 = v22;
  v299 = v23;
  v25 = *(v2 + 21);
  v26 = *(v2 + 23);
  v27 = *(v2 + 25);
  *(v304 + 10) = *(v2 + 210);
  v303 = v26;
  v304[0] = v27;
  v302 = v25;
  v28 = v292;
  v246 = v296;
  v29 = *(&v297 + 1);
  result = specialized Range.contains(_:)(&v286);
  if (v17 < v28 || (result & 1) == 0)
  {
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v30 = v28 < v17 || v29 == 2;
  v31 = v30;
  if (!v30)
  {
    if (v263 == 2)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    if (v260 >> 10 < v246 >> 10)
    {
      goto LABEL_253;
    }
  }

  if (v299 < v17)
  {
    goto LABEL_242;
  }

  v243 = v31;
  v250 = *(&v304[0] + 1);
  v242 = v299;
  v32 = v17 < v299 || v263 == 2;
  v33 = v32;
  v239 = v33;
  if (!v32)
  {
    if (v250 == 2)
    {
LABEL_261:
      __break(1u);
      goto LABEL_262;
    }

    if (v303 >> 10 < v260 >> 10)
    {
      goto LABEL_254;
    }
  }

  v240 = v303;
  v241 = a1;
  v258 = v287;
  v259 = *(&v286 + 1);
  v254 = v289;
  v255 = *(&v288 + 1);
  v256 = v288;
  v257 = *(&v289 + 1);
  v253 = v288 >> 11;
  v262 = *(&v287 + 1);
  v265 = v2;
  v266 = v4;
  v269 = v6;
  v251 = v17;
  if (*(&v287 + 1) == 1 || (v34 = *v2, v259 != *(*v2 + 96)))
  {
    result = type metadata accessor for AttributedString.Runs(0);
    if (*(v2 + *(result + 28)))
    {
LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    v41 = v6;
    v34 = *v2;
    v43 = *(*v2 + 72);
    v42 = *(*v2 + 80);
    v268 = v42;
    if (!v43)
    {
      v42 = 0;
    }

    if (v17 < 0 || v42 < v17)
    {
      goto LABEL_250;
    }

    v44 = *(v34 + 96);
    v252 = *(v34 + 88);
    if (v43)
    {
      v46 = (v43 + 16);
      v45 = *(v43 + 16);
      if (*(v43 + 16))
      {
        if (v17 < v268)
        {
          v248 = v44;
          v47 = *(v43 + 18);
          result = swift_unknownObjectRetain_n();
          if (!v47)
          {
            v48 = 0;
            v61 = v43;
LABEL_62:
            v62 = 0;
            v63 = v45;
            v64 = v17 & ~(v17 >> 63);
            while ((v17 ^ v62) != 0x8000000000000000)
            {
              if (v64 == v62)
              {
                goto LABEL_67;
              }

              if (v63 == ++v62)
              {
                v17 -= v62;
                v64 = v63;
                if (v17)
                {
                  goto LABEL_227;
                }

                goto LABEL_67;
              }
            }

            goto LABEL_237;
          }

          v261 = v34;
          v48 = v47;
          v49 = v43;
          do
          {
            v50 = *v46;
            if (*v46)
            {
              v52 = 0;
              v53 = (v49 + 32);
              while (1)
              {
                v54 = *v53;
                v53 += 3;
                v55 = v17 - v54;
                if (__OFSUB__(v17, v54))
                {
                  goto LABEL_231;
                }

                if (__OFADD__(v55, 1))
                {
                  goto LABEL_232;
                }

                if (v55 + 1 < 1)
                {
                  v50 = v52;
                  goto LABEL_45;
                }

                ++v52;
                v17 = v55;
                if (v50 == v52)
                {
                  goto LABEL_54;
                }
              }
            }

            v55 = v17;
LABEL_54:
            if (v55)
            {
              goto LABEL_238;
            }

            v17 = 0;
LABEL_45:
            v48 = (v50 << ((4 * v47 + 8) & 0x3C)) | ((-15 << ((4 * v47 + 8) & 0x3C)) - 1) & v48;
            v51 = *(v49 + 24 + 24 * v50);
            swift_unknownObjectRetain();
            result = swift_unknownObjectRelease();
            v46 = (v51 + 16);
            LOBYTE(v47) = *(v51 + 18);
            v49 = v51;
          }

          while (v47);
          v61 = v51;
          v45 = *v46;
          if (*v46)
          {
            v41 = v269;
            v34 = v261;
            goto LABEL_62;
          }

          v41 = v269;
          v34 = v261;
          v64 = 0;
          if (!v17)
          {
LABEL_67:
            v59 = v61;
            swift_unknownObjectRelease();
            v58 = v48 & 0xFFFFFFFFFFFFF0FFLL | (v64 << 8);
            v44 = v248;
            v57 = v252;
            v237 = v58;
            goto LABEL_57;
          }

LABEL_227:
          __break(1u);
LABEL_228:
          v125 = v266;
          v124 = v261;
          v153 = 0;
          if (!v17)
          {
LABEL_180:
            v154 = v61;
            swift_unknownObjectRelease();
            v127 = v64 & 0xFFFFFFFFFFFFF0FFLL | (v153 << 8);
            v128 = v154;
            v126 = v259;
            goto LABEL_181;
          }

LABEL_229:
          __break(1u);
          goto LABEL_230;
        }
      }
    }

    v56 = swift_unknownObjectRetain();
    v57 = v252;
    v58 = specialized Rope._endPath.getter(v56);
    v59 = 0;
    v237 = v58;
    if (v43)
    {
LABEL_57:
      v60 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v44, v58, v59, v43, v268, v57);
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0;
    }

    v6 = v41;
  }

  else
  {
    if (v257 == 2)
    {
      v35 = *(v34 + 72);
      if (v35)
      {
        v37 = *(v34 + 80);
        v36 = *(v34 + 88);
        swift_unknownObjectRetain();
        v39 = v258;
        v38 = v259;
        v40 = v262;
        specialized Rope._Node.distanceFromStart<A>(to:in:)(v259, v258, v262, v35, v37, v36);
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = v258;
        v38 = v259;
        v40 = v262;
      }

      v225 = 0;
      LODWORD(v252) = 1;
      v237 = v39;
      v238 = v40;
      v248 = v38;
      goto LABEL_75;
    }

    v44 = v259;
    v237 = v258;
    v59 = v262;
    v60 = v253;
  }

  LODWORD(v252) = v257 == 2;
  v225 = v257 != 2;
  v248 = v44;
  v238 = v59;
  if (v257 != 2 && v253 == v60)
  {
    v65 = *(v34 + 40);
    v283 = *(v34 + 24);
    v284 = v65;
    v261 = v34;
    v285 = *(v34 + 56);
    swift_unknownObjectRetain();
    v249 = BigString.UTF8View.index(roundingDown:)();
    v235 = v67;
    v236 = v66;
    v234 = v68;
    swift_unknownObjectRelease();
    LODWORD(v252) = 0;
    goto LABEL_76;
  }

LABEL_75:
  v69 = *(v34 + 24);
  v70 = *(v34 + 56);
  v284 = *(v34 + 40);
  v285 = v70;
  v71 = *(v34 + 40);
  v280 = *(v34 + 24);
  v281 = v71;
  v261 = v34;
  v282 = *(v34 + 56);
  v283 = v69;
  BigString.startIndex.getter();
  v268 = v72;
  v305[0] = v283;
  v305[1] = v284;
  v306 = v285;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v305, &v271);
  v249 = BigString.UTF8View.index(_:offsetBy:)();
  v235 = v74;
  v236 = v73;
  v234 = v75;
  outlined destroy of BigString(&v283);
LABEL_76:
  v48 = *&v291[1];
  v76 = (v267 + 8);
  v268 = v267 + 8;
  v224 = BYTE8(v291[1]);
  if (BYTE8(v291[1]))
  {
    v77 = v6;
    if (v263 == 2)
    {
      v78 = v249;
    }

    else
    {
      v78 = v260;
    }

    type metadata accessor for AttributedString.Runs(0);
    RangeSet.ranges.getter();
    v79 = RangeSet.Ranges.count.getter();
    v267 = *v76;
    result = (v267)(v9, v77);
    if (v79 >= 1)
    {
      v80 = 0;
      v81 = v78 >> 10;
      while (!__OFADD__(v80, v79))
      {
        v82 = (v80 + v79) / 2;
        RangeSet.ranges.getter();
        v83 = v269;
        RangeSet.Ranges.subscript.getter();
        result = (v267)(v9, v83);
        v84 = v271;
        if (v81 >= v271 >> 10)
        {
          v85 = *&v273[0];
          if (v81 < *&v273[0] >> 10)
          {
            goto LABEL_91;
          }

          v80 = v82 + 1;
          v82 = v79;
        }

        v79 = v82;
        if (v80 >= v82)
        {
          goto LABEL_230;
        }
      }

LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
      goto LABEL_239;
    }

LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  type metadata accessor for AttributedString.Runs(0);
  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v86 = *v76;
  (*v76)(v9, v6);
  v84 = v271;
  v231 = v272;
  v232 = *(&v271 + 1);
  v230 = *(&v272 + 1);
  v85 = *&v273[0];
  v87 = v261;
  v267 = v86;
  if (v263 != 2 && (v260 >> 10 < v271 >> 10 || v260 >> 10 >= *&v273[0] >> 10))
  {
    __break(1u);
LABEL_91:
    v231 = v272;
    v232 = *(&v271 + 1);
    v230 = *(&v272 + 1);
    v87 = v261;
  }

  if (v252)
  {
    v88 = v249;
  }

  else
  {
    v88 = v256;
  }

  if (v252)
  {
    v89 = v236;
  }

  else
  {
    v89 = v255;
  }

  v90 = v254;
  if (v252)
  {
    v90 = v235;
  }

  v228 = v90;
  v229 = v89;
  if (v252)
  {
    v91 = v234;
  }

  else
  {
    v91 = v257;
  }

  v92 = v260;
  if (v263 == 2)
  {
    v92 = v249;
  }

  v226 = v92;
  v227 = v91;
  if (v263 == 2)
  {
    v93 = v236;
  }

  else
  {
    v93 = v245;
  }

  v94 = v244;
  if (v263 == 2)
  {
    v94 = v235;
  }

  v244 = v94;
  v245 = v93;
  if (v263 == 2)
  {
    v95 = v234;
  }

  else
  {
    v95 = v263;
  }

  v236 = v95;
  v96 = *(v87 + 72);
  v97 = *(v87 + 80);
  v98 = *(v87 + 96);
  v249 = *(v87 + 88);
  swift_unknownObjectRetain();
  v99 = specialized Rope.subscript.getter(v248, v237, v238, v96, v97, v249, v98);
  v101 = v100;
  v249 = v102;
  result = swift_unknownObjectRelease();
  if (v84 >> 10 >= v88 >> 10)
  {
    v103 = v84;
  }

  else
  {
    v103 = v88;
  }

  if (v84 >> 10 >= v88 >> 10)
  {
    v104 = v232;
  }

  else
  {
    v104 = v229;
  }

  if (v84 >> 10 >= v88 >> 10)
  {
    v105 = v231;
  }

  else
  {
    v105 = v228;
  }

  if (v84 >> 10 >= v88 >> 10)
  {
    v106 = v230;
  }

  else
  {
    v106 = v227;
  }

  v107 = v99 + (v88 >> 11);
  if (__OFADD__(v99, v88 >> 11))
  {
    goto LABEL_243;
  }

  v248 = v101;
  if ((v85 >> 11) < v107)
  {
    v107 = v85 >> 11;
  }

  v109 = *(v87 + 24);
  v108 = (v87 + 24);
  v110 = v108[1];
  v111 = v108[2];
  v235 = v108;
  v277 = v109;
  v278 = v110;
  v279 = v111;
  if (__OFSUB__(v107, v226 >> 11))
  {
    goto LABEL_244;
  }

  v112 = v103;
  v113 = v104;
  v237 = v105;
  v238 = v106;
  swift_unknownObjectRetain();
  v114 = BigString.UTF8View.index(_:offsetBy:)();
  v116 = v115;
  v118 = v117;
  v120 = v119;
  result = swift_unknownObjectRelease();
  v121 = v241;
  v122 = v249;
  *v241 = v248;
  v121[1] = v122;
  v121[2] = v112;
  v121[3] = v113;
  v123 = v238;
  v121[4] = v237;
  v121[5] = v123;
  v121[6] = v114;
  v121[7] = v116;
  v124 = v261;
  v121[8] = v118;
  v121[9] = v120;
  v121[10] = v124;
  if (v243)
  {
    v17 = v251;
    v125 = v266;
    v127 = v258;
    v126 = v259;
    v128 = v262;
    v129 = v240;
    if (v251 < v242)
    {
      goto LABEL_139;
    }

    if (v250 != 2)
    {
      if (v263 == 2)
      {
        goto LABEL_139;
      }

      v130 = v260 >> 10;
      goto LABEL_138;
    }

    goto LABEL_263;
  }

  v128 = v262;
  v125 = v266;
  v17 = v251;
  v127 = v258;
  v126 = v259;
  v129 = v240;
  if (v263 == 2)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v130 = v260 >> 10;
  if (v260 >> 10 < v246 >> 10)
  {
    goto LABEL_255;
  }

  if (v251 >= v242)
  {
    if (v250 != 2)
    {
LABEL_138:
      if (v130 >= v129 >> 10)
      {
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }

      goto LABEL_139;
    }

LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

LABEL_139:
  if (!v239)
  {
    if (v250 == 2)
    {
LABEL_264:
      __break(1u);
      return result;
    }

    if (v129 >> 10 < v260 >> 10)
    {
      goto LABEL_256;
    }
  }

  if (v128 == 1 || v126 != *(v124 + 96))
  {
    result = type metadata accessor for AttributedString.Runs(0);
    if (*(v265 + *(result + 28)))
    {
LABEL_251:
      __break(1u);
LABEL_252:
      __break(1u);
LABEL_253:
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

    v138 = *(v124 + 80);
    v258 = *(v124 + 72);
    if (v258)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    if (v17 < 0 || v139 < v17)
    {
      goto LABEL_252;
    }

    v140 = *(v124 + 88);
    v259 = *(v124 + 96);
    v262 = v138;
    v250 = v140;
    if (v258)
    {
      v141 = (v258 + 16);
      v142 = *(v258 + 16);
      if (*(v258 + 16))
      {
        if (v17 < v138)
        {
          v143 = *(v258 + 18);
          swift_unknownObjectRetain_n();

          if (v143)
          {
            v64 = v143;
            v144 = v258;
            do
            {
              v145 = *v141;
              if (*v141)
              {
                v147 = 0;
                v148 = (v144 + 32);
                while (1)
                {
                  v149 = *v148;
                  v148 += 3;
                  v150 = v17 - v149;
                  if (__OFSUB__(v17, v149))
                  {
                    goto LABEL_233;
                  }

                  if (__OFADD__(v150, 1))
                  {
                    goto LABEL_234;
                  }

                  if (v150 + 1 < 1)
                  {
                    v145 = v147;
                    goto LABEL_159;
                  }

                  ++v147;
                  v17 = v150;
                  if (v145 == v147)
                  {
                    goto LABEL_168;
                  }
                }
              }

              v150 = v17;
LABEL_168:
              if (v150)
              {
                goto LABEL_240;
              }

              v17 = 0;
LABEL_159:
              v64 = (v145 << ((4 * v143 + 8) & 0x3C)) | ((-15 << ((4 * v143 + 8) & 0x3C)) - 1) & v64;
              v146 = *(v144 + 24 + 24 * v145);
              swift_unknownObjectRetain();
              result = swift_unknownObjectRelease();
              v141 = (v146 + 16);
              LOBYTE(v143) = *(v146 + 18);
              v144 = v146;
            }

            while (v143);
            v61 = v146;
            v142 = *v141;
            if (!*v141)
            {
              goto LABEL_228;
            }

            v125 = v266;
            v124 = v261;
          }

          else
          {
            v64 = 0;
            v61 = v258;
            v125 = v266;
          }

          v152 = 0;
          v153 = v17 & ~(v17 >> 63);
          while ((v17 ^ v152) != 0x8000000000000000)
          {
            if (v153 == v152)
            {
              goto LABEL_180;
            }

            if (v142 == ++v152)
            {
              v153 = v142;
              if (v17 != v152)
              {
                goto LABEL_229;
              }

              goto LABEL_180;
            }
          }

LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }
      }
    }

    v151 = swift_unknownObjectRetain();
    v126 = v259;
    v127 = specialized Rope._endPath.getter(v151);
    v128 = 0;
    v125 = v266;
LABEL_181:
    v155 = v225;
    if (v258)
    {
      v156 = v127;
      v157 = v128;
      v158 = v262;
      v261 = v124;
      v262 = v128;
      v159 = v127;
      v160 = v225;
      v131 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v126, v156, v157, v258, v158, v250);
      v124 = v261;
      swift_unknownObjectRelease();
      v155 = v160;
      v127 = v159;
      v128 = v262;
    }

    else
    {
      v131 = 0;
    }
  }

  else
  {
    if (v252)
    {
      v131 = *(v124 + 72);
      if (v131)
      {
        v132 = v126;
        v134 = *(v124 + 80);
        v133 = *(v124 + 88);

        swift_unknownObjectRetain();
        v135 = v134;
        v128 = v262;
        v136 = v133;
        v126 = v132;
        v137 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v132, v127, v262, v131, v135, v136);
        swift_unknownObjectRelease();
        v131 = v137;
      }

      else
      {
      }
    }

    else
    {

      v131 = v253;
    }

    v155 = v225;
  }

  v161 = v253 == v131 && v155;
  v262 = v128;
  v250 = v131;
  if (v161)
  {
    v162 = *(v124 + 40);
    v274 = *(v124 + 24);
    v275 = v162;
    v276 = *(v124 + 56);
    swift_unknownObjectRetain();
    v248 = BigString.UTF8View.index(roundingDown:)();
    v163 = v126;
    result = swift_unknownObjectRelease();
    v164 = v127;
  }

  else
  {
    v165 = *v235;
    v166 = v235[1];
    v167 = v235[2];
    v259 = v126;
    v275 = v166;
    v276 = v167;
    v168 = *(v124 + 40);
    v273[6] = *(v124 + 24);
    v273[7] = v168;
    v273[8] = *(v124 + 56);
    v274 = v165;
    BigString.startIndex.getter();
    v258 = v169;
    v249 = v170;
    v164 = v127;
    v163 = v259;
    v307[0] = v274;
    v307[1] = v275;
    v308 = v276;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v307, &v271);
    v124 = v261;
    v128 = v262;
    v248 = BigString.UTF8View.index(_:offsetBy:)();
    result = outlined destroy of BigString(&v274);
  }

  v171 = *(v124 + 72);
  v172 = *(v124 + 80);
  v173 = v124;
  v174 = *(v124 + 88);
  v249 = *(v173 + 96);
  *&v271 = v163;
  *(&v271 + 1) = v164;
  *&v272 = v128;
  if (__OFADD__(v251, 1))
  {
    goto LABEL_245;
  }

  v246 = v251 + 1;
  swift_unknownObjectRetain();
  v258 = v164;
  v259 = v172;
  v175 = v174;
  v176 = v249;
  v177 = specialized Rope.subscript.getter(v163, v164, v128, v171, v172, v175, v249);

  v251 = (v250 + v177);
  if (__OFADD__(v250, v177))
  {
LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  if (v163 != v176)
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  result = specialized Rope._endPath.getter(v171);
  if (v258 >= result)
  {
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  v178 = v163;
  if (v262 && (v179 = (4 * *(v262 + 18) + 8) & 0x3C, v180 = ((v258 >> v179) & 0xF) + 1, v180 < *(v262 + 16)))
  {
    swift_unknownObjectRelease();
    v250 = (v180 << v179) | ((-15 << v179) - 1) & v258;
    v181 = v269;
    v182 = v267;
    v183 = v224;
    v184 = v265;
  }

  else
  {
    v185 = specialized Rope._Node.formSuccessor(of:)(&v271, v171);
    v183 = v224;
    v186 = v265;
    if (v185)
    {
      swift_unknownObjectRelease();
      v250 = *(&v271 + 1);
    }

    else
    {
      v187 = specialized Rope._endPath.getter(v171);
      swift_unknownObjectRelease();
      *&v271 = v178;
      *(&v271 + 1) = v187;
      v250 = v187;
      *&v272 = 0;
    }

    v181 = v269;
    v182 = v267;
    v184 = v186;
  }

  v258 = v271;
  v259 = v272;
  v262 = type metadata accessor for AttributedString.Runs(0);
  if (v183)
  {
    (*(v247 + 16))(v264, v184 + *(v262 + 24), v125);
    if (v263 == 2)
    {
      v188 = v248;
    }

    else
    {
      v188 = v260;
    }

    RangeSet.ranges.getter();
    v184 = RangeSet.Ranges.count.getter();
    result = (v182)(v9, v181);
    v182 = v251;
    if (v184 >= 1)
    {
      v181 = 0;
      v189 = v188 >> 10;
      v190 = v269;
      while (!__OFADD__(v181, v184))
      {
        v48 = (v181 + v184) / 2;
        RangeSet.ranges.getter();
        RangeSet.Ranges.subscript.getter();
        result = (v267)(v9, v190);
        if (v189 < v271 >> 10)
        {
          v184 = (v181 + v184) / 2;
          if (v181 >= v48)
          {
            goto LABEL_214;
          }
        }

        else
        {
          v191 = *&v273[0];
          if (v189 < *&v273[0] >> 10)
          {
            result = (*(v247 + 8))(v264, v125);
            v181 = v269;
            v192 = v261;
            v184 = v265;
            if (v182 < (v191 >> 11))
            {
              goto LABEL_216;
            }

            goto LABEL_219;
          }

          v181 = v48 + 1;
          if (v48 + 1 >= v184)
          {
            goto LABEL_214;
          }
        }
      }

      goto LABEL_236;
    }

LABEL_214:
    __break(1u);
  }

  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  result = (v182)(v9, v181);
  v192 = v261;
  v182 = v251;
  if (v251 < *&v273[0] >> 11)
  {
LABEL_216:
    if (v252)
    {
      v193 = *v235;
      v194 = v235[2];
      v272 = v235[1];
      v273[0] = v194;
      v271 = v193;
      v273[3] = *(v192 + 24);
      v195 = *(v192 + 56);
      v273[4] = *(v192 + 40);
      v273[5] = v195;
      BigString.startIndex.getter();
      v309[0] = v271;
      v309[1] = v272;
      v310 = *&v273[0];
      outlined init with copy of Rope<BigString._Chunk>._Node?(v309, v270);
      v196 = BigString.UTF8View.index(_:offsetBy:)();
      v198 = v197;
      v200 = v199;
      v202 = v201;
      result = outlined destroy of BigString(&v271);
    }

    else
    {
      v205 = *(v192 + 40);
      v271 = *(v192 + 24);
      v272 = v205;
      v273[0] = *(v192 + 56);
      if (__OFSUB__(v182, v253))
      {
LABEL_259:
        __break(1u);
        goto LABEL_260;
      }

      swift_unknownObjectRetain();
      v196 = BigString.UTF8View.index(_:offsetBy:)();
      v198 = v206;
      v200 = v207;
      v202 = v208;
      result = swift_unknownObjectRelease();
    }

    v209 = v250;
    v211 = v258;
    v210 = v259;
    v212 = *(v184 + *(v262 + 28));
    v270[0] = 0;
    v213 = v233;
    *v233 = v246;
    v213[1] = v211;
    v213[2] = v209;
    v213[3] = v210;
    v213[4] = v196;
    v213[5] = v198;
    v213[6] = v200;
    v213[7] = v202;
    v213[8] = v196;
    v213[9] = v198;
    v213[10] = v200;
    v213[11] = v202;
    v213[12] = v48;
    *(v213 + 104) = 0;
    *(v213 + 105) = v212;
    return result;
  }

LABEL_219:
  v269 = v48 + 1;
  if (__OFADD__(v48, 1))
  {
    goto LABEL_257;
  }

  RangeSet.ranges.getter();
  v203 = RangeSet.Ranges.count.getter();
  v204 = v267;
  v267(v9, v181);
  if (v269 == v203)
  {
    return memmove(v233, v223, 0x6AuLL);
  }

  RangeSet.ranges.getter();
  RangeSet.Ranges.subscript.getter();
  v204(v9, v181);
  v214 = v271;
  v215 = v272;
  result = AttributedString.Guts.findRun(at:)(v271, *(&v272 + 1), &v271);
  v216 = v272;
  v217 = v271;
  v218 = *(v273 + 8);
  v219 = *(&v273[1] + 8);
  v220 = *(v184 + *(v262 + 28));
  LOBYTE(v271) = 0;
  v221 = v233;
  *v233 = *(&v272 + 1);
  *(v221 + 1) = v217;
  v221[3] = v216;
  *(v221 + 2) = v218;
  *(v221 + 3) = v219;
  *(v221 + 4) = v214;
  *(v221 + 5) = v215;
  v221[12] = v269;
  *(v221 + 104) = 0;
  *(v221 + 105) = v220;
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString.Runs.Run(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

id _sSD10FoundationE36_unconditionallyBridgeFromObjectiveCySDyxq_GSo12NSDictionaryCSgFZSo21NSAttributedStringKeya_ypTt0g5(void *a1)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for NSAttributedStringKey(0);
  if (v2 == MEMORY[0x1E69E6158])
  {

    swift_unknownObjectRetain();
    v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (v3)
    {
      return v3;
    }

    v41 = [a1 count];
    if (!v41)
    {
      return MEMORY[0x1E69E7CC8];
    }

    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v6 = static _DictionaryStorage.allocate(capacity:)();
    v43 = *(v6 + 48);
    v44 = *(v6 + 56);

    v45 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v43, v44, a1, v42);
    if (v45 < 0 || v42 < v45)
    {
LABEL_69:
      __break(1u);
    }

    *(v6 + 16) = v45;
    if (!v45)
    {
      goto LABEL_65;
    }

    v46 = v45 - 1;
    v47 = v6 + 64;
    while (1)
    {
      while (1)
      {
        if ((*(v47 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v46))
        {
          goto LABEL_55;
        }

        v52 = (*(v6 + 48) + 16 * v46);
        v53 = *v52;
        v54 = v52[1];

        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v54);
        v57 = v56;

        if ((v57 & 1) == 0)
        {
          break;
        }

        v58 = *(v6 + 48) + 16 * v46;

        outlined destroy of String(v58);
        __swift_destroy_boxed_opaque_existential_1((*(v6 + 56) + 32 * v46));
        v59 = *(v6 + 16);
        v60 = __OFSUB__(v59, 1);
        v61 = v59 - 1;
        if (v60)
        {
          goto LABEL_67;
        }

        *(v6 + 16) = v61;

LABEL_55:
        if (--v46 < 0)
        {
          goto LABEL_65;
        }
      }

      *(v47 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v55;
      if (v46 < v55)
      {
        *(*(v6 + 48) + 16 * v55) = *(*(v6 + 48) + 16 * v46);
        v48 = *(v6 + 56);
        v49 = (v48 + 32 * v46);
        v50 = v49[1];
        v51 = (v48 + 32 * v55);
        *v51 = *v49;
        v51[1] = v50;
        goto LABEL_55;
      }

      if (v55 == v46)
      {
        goto LABEL_55;
      }

      v62 = *(v6 + 48);
      v63 = (v62 + 16 * v55);
      v64 = (v62 + 16 * v46);
      v65 = *v63;
      v66 = v63[1];
      v67 = v64[1];
      *v63 = *v64;
      v63[1] = v67;
      *v64 = v65;
      v64[1] = v66;
      v68 = *(v6 + 56);
      v69 = (v68 + 32 * v55);
      v70 = (v68 + 32 * v46);
      outlined init with take of Any(v69, v72);
      outlined init with take of Any(v70, v69);
      outlined init with take of Any(v72, v70);
      if (v46 < 0)
      {
        goto LABEL_65;
      }
    }
  }

  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  swift_unknownObjectRetain();
  v3 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v3)
  {
    return v3;
  }

  v4 = [a1 count];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
  v6 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = a1;

  _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_So21NSAttributedStringKeya_ypTt3g5Tf4xxnn_n(v7, v8, v9, v5);
  if (v10 < 0 || v5 < v10)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  *(v6 + 16) = v10;
  if (!v10)
  {

LABEL_65:

    return v6;
  }

  v71 = v9;
  v11 = v10 - 1;
  v12 = v6 + 64;
  while (1)
  {
    if ((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
    {
      goto LABEL_10;
    }

    v17 = *(*(v6 + 48) + 8 * v11);
    isTaggedPointer = _objc_isTaggedPointer(v17);
    v19 = v17;
    v20 = v19;
    if ((isTaggedPointer & 1) == 0)
    {
      goto LABEL_17;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v19);
    if (TaggedPointerTag)
    {
      break;
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v26)
    {
      goto LABEL_27;
    }

    [v20 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
LABEL_32:
    Hasher.init(_seed:)();
    String.hash(into:)();
    v27 = Hasher._finalize()();

    v28 = -1 << *(v6 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) != 0)
    {
      v31 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_42;
    }

    v32 = 0;
    v33 = (63 - v28) >> 6;
    do
    {
      if (++v30 == v33 && (v32 & 1) != 0)
      {
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v34 = v30 == v33;
      if (v30 == v33)
      {
        v30 = 0;
      }

      v32 |= v34;
      v35 = *(v12 + 8 * v30);
    }

    while (v35 == -1);
    v31 = __clz(__rbit64(~v35)) + (v30 << 6);
LABEL_42:
    *(v12 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    if (v11 < v31)
    {
      *(*(v6 + 48) + 8 * v31) = *(*(v6 + 48) + 8 * v11);
      v13 = *(v6 + 56);
      v14 = (v13 + 32 * v11);
      v15 = v14[1];
      v16 = (v13 + 32 * v31);
      *v16 = *v14;
      v16[1] = v15;
LABEL_10:
      if (--v11 < 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v31 == v11)
      {
        goto LABEL_10;
      }

      v36 = *(v6 + 48);
      v37 = *(v36 + 8 * v31);
      *(v36 + 8 * v31) = *(v36 + 8 * v11);
      *(v36 + 8 * v11) = v37;
      v38 = *(v6 + 56);
      v39 = (v38 + 32 * v31);
      v40 = (v38 + 32 * v11);
      outlined init with take of Any(v39, v72);
      outlined init with take of Any(v40, v39);
      outlined init with take of Any(v72, v40);
      if (v11 < 0)
      {
LABEL_45:

        goto LABEL_65;
      }
    }
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_32;
    }

LABEL_17:
    *&v72[0] = 0;
    if (__CFStringIsCF())
    {
      if (!*&v72[0])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v22 = v20;
      String.init(_nativeStorage:)();
      if (v23 || (*&v72[0] = [v22 length]) == 0)
      {

        goto LABEL_32;
      }
    }

    String.init(_cocoaString:)();
    goto LABEL_32;
  }

  result = [v20 UTF8String];
  if (!result)
  {
    goto LABEL_70;
  }

  result = String.init(utf8String:)(result);
  if (v25)
  {
LABEL_27:

    goto LABEL_32;
  }

  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

void closure #1 in AttributedString.init(_:attributeTable:options:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, void **a7, unint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t a12, _BYTE *a13)
{
  v402 = a3;
  v403 = a8;
  v392 = a7;
  v393 = a4;
  v411 = a6;
  v14 = a1;
  v394 = a13;
  v391[1] = a12;
  v404 = a11;
  v401 = a9;
  v452 = *MEMORY[0x1E69E9840];
  v15 = *a10;
  v399 = a10[1];
  v400 = v15;
  v16 = a10[2];
  v397 = a10[3];
  v398 = v16;
  v17 = a10[4];
  v395 = a10[5];
  v396 = v17;
  v430 = MEMORY[0x1E69E7CC8];
  v431 = MEMORY[0x1E69E7CD0];
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;
  v409 = @"NSCocoaErrorDomain";
  v23 = 0;
  v426 = 0;
  v427 = v22;

  v416 = a5;
  v420 = v18;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v21)
        {
          v24 = v23;
          goto LABEL_17;
        }

        if (v22 <= v23 + 1)
        {
          v25 = v23 + 1;
        }

        else
        {
          v25 = v22;
        }

        v26 = v25 - 1;
        do
        {
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
            goto LABEL_376;
          }

          if (v24 >= v22)
          {
            v21 = 0;
            v446[0] = 0;
            v23 = v26;
            v444 = 0u;
            v445 = 0u;
            goto LABEL_18;
          }

          v21 = *(v18 + 8 * v24);
          ++v23;
        }

        while (!v21);
        v23 = v24;
LABEL_17:
        v27 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v28 = v27 | (v24 << 6);
        v29 = *(*(v14 + 48) + 8 * v28);
        outlined init with copy of Any(*(v14 + 56) + 32 * v28, &v439);
        *&v444 = v29;
        outlined init with take of Any(&v439, (&v444 + 8));
        v30 = v29;
LABEL_18:
        v450[0] = v444;
        v450[1] = v445;
        v451 = v446[0];
        v31 = v444;
        if (!v444)
        {

          v427 = v431;
          v428 = v430;
          v362 = v403;
          v426 = *v403;
          v364 = v399;
          v363 = v400;
          *&v444 = v400;
          *(&v444 + 1) = v399;
          v365 = v397;
          v366 = v398;
          *&v445 = v398;
          *(&v445 + 1) = v397;
          v368 = v395;
          v367 = v396;
          v446[0] = v396;
          v446[1] = v395;
          v369 = v401;
          *v369 = BigString.UTF16View.index(_:offsetBy:)();
          v369[1] = v370;
          v369[2] = v371;
          v369[3] = v372;
          *&v439 = v363;
          *(&v439 + 1) = v364;
          *&v440 = v366;
          *(&v440 + 1) = v365;
          *&v441 = v367;
          *(&v441 + 1) = v368;
          v373 = BigString.UnicodeScalarView.index(roundingUp:)();
          *v362 = v373;
          v362[1] = v374;
          v362[2] = v375;
          v362[3] = v376;
          v377 = (v373 >> 11) - (v426 >> 11);
          if (v377 > 0)
          {
            v378 = v404;
            v380 = v427;
            v379 = v428;
            if (*v404 >= 1)
            {
              v381 = v404[1];
              v382 = v404[2];

              if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v381, v379))
              {
                v383 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v382, v380);

                if (v383)
                {

                  if (!__OFADD__(*v404, v377))
                  {
                    *v404 += v377;
                    return;
                  }

LABEL_376:
                  __break(1u);
                  goto LABEL_377;
                }
              }

              else
              {
              }

              v378 = v404;
              v384 = *v404;
              if (*v404 >= 1)
              {
                v385 = v404[1];
                v386 = v404[2];

                specialized Rope.append(_:)(v384, v385, v386);
                v378 = v404;
              }
            }

            *v378 = v377;
            v378[1] = v379;
            v378[2] = v380;

            v387 = v394;
            if ((*v394 & 1) == 0)
            {
              v388 = specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v379);

              *v387 = v388 & 1;
              return;
            }
          }

          return;
        }

        outlined init with take of Any((v450 + 8), &v448);
        isTaggedPointer = _objc_isTaggedPointer(v31);
        v33 = v31;
        v34 = v33;
        v428 = v33;
        if (!isTaggedPointer)
        {
          goto LABEL_25;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v33);
        if (!TaggedPointerTag)
        {
          LOWORD(v437[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v52 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          v54 = v34;
          if (v53)
          {
            v40 = v53;
            v55 = v52;

            v41 = v55;
          }

          else
          {
            [v34 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v40 = *(&v439 + 1);
            v41 = v439;
          }

          goto LABEL_59;
        }

        if (TaggedPointerTag == 22)
        {
          v48 = [v34 UTF8String];
          if (v48)
          {
            v49 = String.init(utf8String:)(v48);
            if (v50)
            {
              v51 = v49;
              v40 = v50;

              v41 = v51;
              goto LABEL_59;
            }

LABEL_377:
            __break(1u);
          }

          __break(1u);
LABEL_379:
          __break(1u);
LABEL_380:
          __break(1u);
        }

        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v391[-2] = v34;
          v36 = v426;
          v37 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v38 = v34;
          v40 = v39;
          v426 = v36;

          v41 = v37;
          goto LABEL_24;
        }

LABEL_25:
        LOBYTE(v439) = 0;
        *&v444 = 0;
        LOBYTE(v437[0]) = 0;
        LOBYTE(v432) = 0;
        IsCF = __CFStringIsCF();
        if (!IsCF)
        {
          v44 = v34;
          v45 = String.init(_nativeStorage:)();
          if (v46)
          {
            v40 = v46;
            v47 = v45;

            v41 = v47;
            goto LABEL_59;
          }

          *&v444 = [v44 length];
          if (!v444)
          {

            goto LABEL_34;
          }

LABEL_57:
          v41 = String.init(_cocoaString:)();
          goto LABEL_58;
        }

        v43 = v444;
        if (!v444)
        {

LABEL_34:
          v41 = 0;
          v40 = 0xE000000000000000;
          goto LABEL_59;
        }

        if (v432 != 1)
        {
          if (v437[0])
          {
            if (v439 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              v391[-4] = v34;
              v391[-3] = &v444;
              LODWORD(v391[-2]) = 1536;
              v391[-1] = v43;
              v56 = v426;
              v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v58 = v34;
              v40 = v59;
              v426 = v56;
              v60 = HIBYTE(v59) & 0xF;
              if ((v59 & 0x2000000000000000) == 0)
              {
                v60 = v57 & 0xFFFFFFFFFFFFLL;
              }

              if (v60)
              {
                v61 = v57;

                v41 = v61;
LABEL_24:
                v18 = v420;
                goto LABEL_59;
              }

              v18 = v420;
            }

            else
            {
              v63 = [v34 lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v63);
              v391[-4] = v34;
              v391[-3] = &v444;
              LODWORD(v391[-2]) = 134217984;
              v391[-1] = v64;
              v65 = v426;
              v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v67 = v34;
              v40 = v68;
              v426 = v65;
              v69 = HIBYTE(v68) & 0xF;
              if ((v68 & 0x2000000000000000) == 0)
              {
                v69 = v66 & 0xFFFFFFFFFFFFLL;
              }

              if (v69)
              {
                v70 = v66;

                v41 = v70;
                goto LABEL_59;
              }
            }
          }

          goto LABEL_57;
        }

        if (v439)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v41 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_58:
        v40 = v62;
LABEL_59:
        if (!*(a5 + 16))
        {

          goto LABEL_6;
        }

        v71 = specialized __RawDictionaryStorage.find<A>(_:)(v41, v40);
        v73 = v72;

        if (v73)
        {
          break;
        }

LABEL_6:

        __swift_destroy_boxed_opaque_existential_1(&v448);
        v22 = v427;
      }

      v74 = *(a5 + 56) + 16 * v71;
      v75 = *(v74 + 8);
      v425 = *v74;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v77 = type metadata accessor for Optional();
      v78 = *(v77 - 8);
      v422 = *(v78 + 64);
      MEMORY[0x1EEE9AC00](v77);
      v421 = v391 - v79;
      v80 = v449;
      v81 = __swift_project_boxed_opaque_existential_1(&v448, v449);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v83 = *(*(v80 - 8) + 64);
      v423 = AssociatedTypeWitness;
      i = v75;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v304 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
        (*(v306 + 16))(v391 - ((v305 + 15) & 0xFFFFFFFFFFFFFFF0), v81, v80, v304);
        v84 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        goto LABEL_64;
      }

      if (v83 != 8)
      {
        goto LABEL_371;
      }

      v84 = *v81;
      swift_unknownObjectRetain();
LABEL_64:
      v85 = v425;
      v86 = swift_conformsToProtocol2();
      v424 = v391;
      if (v86)
      {
        if (v85)
        {
          break;
        }
      }

      v418 = v78;
      v419 = v77;
      v414 = v391;
      v96 = v423;
      v97 = *(v423 - 8);
      MEMORY[0x1EEE9AC00](v86);
      v99 = v391 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
      v413 = v391;
      *&v444 = v84;
      MEMORY[0x1EEE9AC00](v100);
      v102 = v391 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        (*(v97 + 56))(v102, 0, 1, v96);
        v103 = *(v97 + 32);
        v103(v99, v102, v96);
        v104 = v421;
        v103(v421, v99, v96);
        v105 = v96;
        goto LABEL_87;
      }

      (*(v97 + 56))(v102, 1, 1, v96);
      (*(v418 + 8))(v102, v419);
      v106 = v409;
      v107 = _objc_isTaggedPointer(v409);
      v108 = v106;
      v109 = v108;
      v412 = v84;
      if (!v107)
      {
        goto LABEL_81;
      }

      v110 = _objc_getTaggedPointerTag(v108);
      switch(v110)
      {
        case 0:
          LOWORD(v437[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v186)
          {
            [(__CFString *)v109 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_147;
          }

          goto LABEL_144;
        case 0x16:
          v184 = [(__CFString *)v109 UTF8String];
          if (!v184)
          {
            goto LABEL_381;
          }

          String.init(utf8String:)(v184);
          if (!v185)
          {
            __break(1u);
LABEL_381:
            __break(1u);
LABEL_382:
            __break(1u);
LABEL_383:
            __break(1u);
LABEL_384:
            __break(1u);
LABEL_385:
            __break(1u);
LABEL_386:
            __break(1u);
LABEL_387:
            __break(1u);
LABEL_388:
            __break(1u);
LABEL_389:
            __break(1u);
LABEL_390:
            __break(1u);
LABEL_391:
            __break(1u);
            goto LABEL_392;
          }

LABEL_144:

          goto LABEL_147;
        case 2:
          MEMORY[0x1EEE9AC00](v110);
          v391[-2] = v109;
          v111 = v426;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v426 = v111;

          goto LABEL_147;
      }

LABEL_81:
      LOBYTE(v439) = 0;
      *&v444 = 0;
      LOBYTE(v437[0]) = 0;
      LOBYTE(v432) = 0;
      v118 = __CFStringIsCF();
      if (!v118)
      {
        v172 = v109;
        String.init(_nativeStorage:)();
        if (v173 || (*&v444 = [(__CFString *)v172 length], !v444))
        {

          goto LABEL_147;
        }

LABEL_146:
        String.init(_cocoaString:)();
        goto LABEL_147;
      }

      v119 = v444;
      if (!v444)
      {
        goto LABEL_144;
      }

      if (v432 != 1)
      {
        if (v437[0])
        {
          if (v439 == 1)
          {
            MEMORY[0x1EEE9AC00](v118);
            v391[-4] = v109;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 1536;
            v391[-1] = v119;
          }

          else
          {
            v190 = [(__CFString *)v109 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v190);
            v391[-4] = v109;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 134217984;
            v391[-1] = v191;
          }

          v192 = v426;
          v193 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v426 = v192;
          v195 = HIBYTE(v194) & 0xF;
          if ((v194 & 0x2000000000000000) == 0)
          {
            v195 = v193 & 0xFFFFFFFFFFFFLL;
          }

          if (v195)
          {
            goto LABEL_144;
          }
        }

        goto LABEL_146;
      }

      if (v439)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_147:
      v196 = objc_allocWithZone(NSError);
      v197 = String._bridgeToObjectiveCImpl()();

      v198 = [v196 initWithDomain:v197 code:4866 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v199 = [v198 domain];
      v425 = v198;
      if (!v199)
      {
        v205 = v107;
LABEL_159:
        v207 = 0;
        v209 = 0xE000000000000000;
        goto LABEL_223;
      }

      v200 = v199;
      v201 = _objc_isTaggedPointer(v199);
      v202 = v200;
      v203 = v202;
      if ((v201 & 1) == 0)
      {
        goto LABEL_153;
      }

      v204 = _objc_getTaggedPointerTag(v202);
      if (v204)
      {
        if (v204 != 22)
        {
          if (v204 == 2)
          {
            v205 = v107;
            MEMORY[0x1EEE9AC00](v204);
            v391[-2] = v203;
            v206 = v426;
            v207 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v209 = v208;
            v426 = v206;

            goto LABEL_223;
          }

LABEL_153:
          LOBYTE(v439) = 0;
          *&v444 = 0;
          LOBYTE(v437[0]) = 0;
          LOBYTE(v432) = 0;
          v210 = __CFStringIsCF();
          if (!v210)
          {
            v205 = v107;
            v212 = v203;
            v213 = String.init(_nativeStorage:)();
            if (v214)
            {
              v207 = v213;
              v209 = v214;

              goto LABEL_223;
            }

            *&v444 = [v212 length];
            if (!v444)
            {

              goto LABEL_159;
            }

            goto LABEL_220;
          }

          v211 = v444;
          if (!v444)
          {
            v205 = v107;

            goto LABEL_159;
          }

          if (v432 == 1)
          {
            v205 = v107;
            if (v439)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v218 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_221;
          }

          if ((v437[0] & 1) == 0)
          {
            v205 = v107;
LABEL_220:
            v218 = String.init(_cocoaString:)();
LABEL_221:
            v207 = v218;
            v209 = v219;
            goto LABEL_222;
          }

          v205 = v107;
          if (v439 == 1)
          {
            MEMORY[0x1EEE9AC00](v210);
            v391[-4] = v203;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 1536;
            v391[-1] = v211;
          }

          else
          {
            v226 = [v203 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v226);
            v391[-4] = v203;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 134217984;
            v391[-1] = v227;
          }

          v228 = v426;
          v229 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v209 = v230;
          v426 = v228;
          v231 = HIBYTE(v230) & 0xF;
          if ((v230 & 0x2000000000000000) == 0)
          {
            v231 = v229 & 0xFFFFFFFFFFFFLL;
          }

          if (!v231)
          {

            goto LABEL_220;
          }

          v207 = v229;
          goto LABEL_168;
        }

        v205 = v107;
        v215 = [v203 UTF8String];
        if (!v215)
        {
          goto LABEL_389;
        }

        v216 = String.init(utf8String:)(v215);
        if (!v217)
        {
          goto LABEL_388;
        }
      }

      else
      {
        v205 = v107;
        LOWORD(v437[0]) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v216 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v217)
        {
          [v203 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v209 = *(&v439 + 1);
          v207 = v439;
          goto LABEL_222;
        }
      }

      v207 = v216;
      v209 = v217;
LABEL_168:

LABEL_222:
LABEL_223:
      v254 = v109;
      v255 = v254;
      if (!v205)
      {
        goto LABEL_228;
      }

      v256 = _objc_getTaggedPointerTag(v254);
      if (v256)
      {
        if (v256 == 22)
        {
          v265 = [(__CFString *)v255 UTF8String];
          if (!v265)
          {
            goto LABEL_383;
          }

          v266 = String.init(utf8String:)(v265);
          v18 = v420;
          v95 = v425;
          if (!v267)
          {
            goto LABEL_382;
          }

LABEL_241:
          v257 = v266;
          v259 = v267;

          goto LABEL_258;
        }

        if (v256 == 2)
        {
          MEMORY[0x1EEE9AC00](v256);
          v391[-2] = v255;
          v257 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v259 = v258;

          v18 = v420;
          v95 = v425;
          goto LABEL_258;
        }

LABEL_228:
        LOBYTE(v439) = 0;
        *&v444 = 0;
        LOBYTE(v437[0]) = 0;
        LOBYTE(v432) = 0;
        v260 = __CFStringIsCF();
        if (v260)
        {
          v261 = v444;
          v95 = v425;
          if (v444)
          {
            if (v432 == 1)
            {
              v18 = v420;
              if (v439)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v257 = String.init<A>(_immortalCocoaString:count:encoding:)();
              v259 = v268;
              goto LABEL_258;
            }

            if (v437[0])
            {
              if (v439 == 1)
              {
                MEMORY[0x1EEE9AC00](v260);
                v391[-4] = v255;
                v391[-3] = &v444;
                LODWORD(v391[-2]) = 1536;
                v391[-1] = v261;
              }

              else
              {
                v269 = [(__CFString *)v255 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v269);
                v391[-4] = v255;
                v391[-3] = &v444;
                LODWORD(v391[-2]) = 134217984;
                v391[-1] = v270;
              }

              v271 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v259 = v272;
              v273 = HIBYTE(v272) & 0xF;
              if ((v272 & 0x2000000000000000) == 0)
              {
                v273 = v271 & 0xFFFFFFFFFFFFLL;
              }

              if (v273)
              {
                v257 = v271;

                goto LABEL_257;
              }
            }

LABEL_256:
            v257 = String.init(_cocoaString:)();
            v259 = v274;
            goto LABEL_257;
          }

LABEL_236:
          v257 = 0;
          v259 = 0xE000000000000000;
        }

        else
        {
          v262 = v255;
          v263 = String.init(_nativeStorage:)();
          v95 = v425;
          if (!v264)
          {
            *&v444 = [(__CFString *)v262 length];
            if (v444)
            {
              goto LABEL_256;
            }

            goto LABEL_236;
          }

          v257 = v263;
          v259 = v264;
        }

LABEL_257:
        v18 = v420;
        goto LABEL_258;
      }

      LOWORD(v437[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v266 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      v18 = v420;
      v95 = v425;
      if (v267)
      {
        goto LABEL_241;
      }

      [(__CFString *)v255 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v259 = *(&v439 + 1);
      v257 = v439;
LABEL_258:
      if (v207 == v257 && v209 == v259)
      {
LABEL_308:

        goto LABEL_310;
      }

      v275 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v275 & 1) == 0)
      {
        goto LABEL_372;
      }

LABEL_310:
      swift_willThrow();
      swift_unknownObjectRelease();
      v426 = 0;
      v94 = v428;
LABEL_311:
      v14 = v415;
      a5 = v416;
      v22 = v427;
      if ((v411 & 1) == 0)
      {

        swift_willThrow();

        __swift_destroy_boxed_opaque_existential_1(&v448);
        v389 = *v392;
        *v392 = v95;
        v390 = v95;

        *v393 = 1;
        return;
      }

      __swift_destroy_boxed_opaque_existential_1(&v448);
    }

    v87 = v86;
    swift_getAssociatedTypeWitness();
    swift_unknownObjectRetain();
    v88 = swift_dynamicCastUnknownClass();
    if (!v88)
    {
      swift_unknownObjectRelease();
      v112 = v409;
      v113 = _objc_isTaggedPointer(v409);
      v114 = v112;
      v115 = v114;
      v412 = v84;
      if (v113)
      {
        v116 = _objc_getTaggedPointerTag(v114);
        switch(v116)
        {
          case 0:
            LOWORD(v437[0]) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v189)
            {
              [(__CFString *)v115 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_190;
            }

            goto LABEL_182;
          case 0x16:
            v187 = [(__CFString *)v115 UTF8String];
            if (!v187)
            {
              goto LABEL_385;
            }

            String.init(utf8String:)(v187);
            if (!v188)
            {
              goto LABEL_384;
            }

            goto LABEL_182;
          case 2:
            MEMORY[0x1EEE9AC00](v116);
            v391[-2] = v115;
            v117 = v426;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v426 = v117;

            goto LABEL_190;
        }
      }

      LOBYTE(v439) = 0;
      *&v444 = 0;
      LOBYTE(v437[0]) = 0;
      LOBYTE(v432) = 0;
      v159 = __CFStringIsCF();
      if (v159)
      {
        v160 = v444;
        if (!v444)
        {
LABEL_182:

          goto LABEL_190;
        }

        if (v432 == 1)
        {
          if (v439)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_190:
          v232 = objc_allocWithZone(NSError);
          v233 = String._bridgeToObjectiveCImpl()();

          v95 = [v232 initWithDomain:v233 code:4866 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v234 = [v95 domain];
          LODWORD(v425) = v113;
          if (!v234)
          {
            goto LABEL_204;
          }

          v235 = v234;
          v236 = _objc_isTaggedPointer(v234);
          v237 = v235;
          v238 = v237;
          if (v236)
          {
            v239 = _objc_getTaggedPointerTag(v237);
            if (v239)
            {
              if (v239 != 22)
              {
                if (v239 == 2)
                {
                  MEMORY[0x1EEE9AC00](v239);
                  v391[-2] = v238;
                  v240 = v426;
                  v241 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v243 = v242;
                  v426 = v240;

                  goto LABEL_271;
                }

                goto LABEL_196;
              }

              v249 = [v238 UTF8String];
              if (!v249)
              {
                goto LABEL_391;
              }

              v250 = String.init(utf8String:)(v249);
              if (!v251)
              {
                goto LABEL_390;
              }
            }

            else
            {
              LOWORD(v437[0]) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v250 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v251)
              {
                [v238 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v243 = *(&v439 + 1);
                v241 = v439;
                goto LABEL_270;
              }
            }

            v241 = v250;
            v243 = v251;
LABEL_210:

LABEL_270:
LABEL_271:
            v282 = v115;
            v283 = v282;
            if (!v425)
            {
              goto LABEL_276;
            }

            v284 = _objc_getTaggedPointerTag(v282);
            if (v284)
            {
              if (v284 != 22)
              {
                if (v284 == 2)
                {
                  MEMORY[0x1EEE9AC00](v284);
                  v391[-2] = v283;
                  v285 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v287 = v286;

LABEL_305:
                  v18 = v420;
LABEL_306:
                  if (v241 == v285 && v243 == v287)
                  {
                    goto LABEL_308;
                  }

                  v303 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v303 & 1) == 0)
                  {
                    goto LABEL_374;
                  }

                  goto LABEL_310;
                }

LABEL_276:
                LOBYTE(v439) = 0;
                *&v444 = 0;
                LOBYTE(v437[0]) = 0;
                LOBYTE(v432) = 0;
                v288 = __CFStringIsCF();
                if (v288)
                {
                  v289 = v444;
                  if (v444)
                  {
                    if (v432 == 1)
                    {
                      v18 = v420;
                      if (v439)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v285 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      v287 = v296;
                      goto LABEL_306;
                    }

                    if (v437[0])
                    {
                      if (v439 == 1)
                      {
                        MEMORY[0x1EEE9AC00](v288);
                        v391[-4] = v283;
                        v391[-3] = &v444;
                        LODWORD(v391[-2]) = 1536;
                        v391[-1] = v289;
                      }

                      else
                      {
                        v297 = [(__CFString *)v283 lengthOfBytesUsingEncoding:4];
                        MEMORY[0x1EEE9AC00](v297);
                        v391[-4] = v283;
                        v391[-3] = &v444;
                        LODWORD(v391[-2]) = 134217984;
                        v391[-1] = v298;
                      }

                      v299 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v287 = v300;
                      v301 = HIBYTE(v300) & 0xF;
                      if ((v300 & 0x2000000000000000) == 0)
                      {
                        v301 = v299 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v301)
                      {
                        v285 = v299;

                        goto LABEL_305;
                      }
                    }

                    goto LABEL_304;
                  }
                }

                else
                {
                  v290 = v283;
                  v291 = String.init(_nativeStorage:)();
                  if (v292)
                  {
                    v285 = v291;
                    v287 = v292;

                    goto LABEL_305;
                  }

                  *&v444 = [(__CFString *)v290 length];
                  if (v444)
                  {
LABEL_304:
                    v285 = String.init(_cocoaString:)();
                    v287 = v302;
                    goto LABEL_305;
                  }
                }

                v285 = 0;
                v287 = 0xE000000000000000;
                goto LABEL_305;
              }

              v293 = [(__CFString *)v283 UTF8String];
              if (!v293)
              {
                goto LABEL_387;
              }

              v294 = String.init(utf8String:)(v293);
              v18 = v420;
              if (!v295)
              {
                goto LABEL_386;
              }
            }

            else
            {
              LOWORD(v437[0]) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v294 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              v18 = v420;
              if (!v295)
              {
                [(__CFString *)v283 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v287 = *(&v439 + 1);
                v285 = v439;
                goto LABEL_306;
              }
            }

            v285 = v294;
            v287 = v295;

            goto LABEL_306;
          }

LABEL_196:
          LOBYTE(v439) = 0;
          *&v444 = 0;
          LOBYTE(v437[0]) = 0;
          LOBYTE(v432) = 0;
          v244 = __CFStringIsCF();
          if (v244)
          {
            v245 = v444;
            if (v444)
            {
              if (v432 == 1)
              {
                if (v439)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v252 = String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_269;
              }

              if (v437[0])
              {
                if (v439 == 1)
                {
                  MEMORY[0x1EEE9AC00](v244);
                  v391[-4] = v238;
                  v391[-3] = &v444;
                  LODWORD(v391[-2]) = 1536;
                  v391[-1] = v245;
                }

                else
                {
                  v276 = [v238 lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v276);
                  v391[-4] = v238;
                  v391[-3] = &v444;
                  LODWORD(v391[-2]) = 134217984;
                  v391[-1] = v277;
                }

                v278 = v426;
                v279 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v243 = v280;
                v426 = v278;
                v281 = HIBYTE(v280) & 0xF;
                if ((v280 & 0x2000000000000000) == 0)
                {
                  v281 = v279 & 0xFFFFFFFFFFFFLL;
                }

                if (v281)
                {
                  v241 = v279;
                  goto LABEL_210;
                }
              }

LABEL_268:
              v252 = String.init(_cocoaString:)();
LABEL_269:
              v241 = v252;
              v243 = v253;
              goto LABEL_270;
            }
          }

          else
          {
            v246 = v238;
            v247 = String.init(_nativeStorage:)();
            if (v248)
            {
              v241 = v247;
              v243 = v248;

              goto LABEL_271;
            }

            *&v444 = [v246 length];
            if (v444)
            {
              goto LABEL_268;
            }
          }

LABEL_204:
          v241 = 0;
          v243 = 0xE000000000000000;
          goto LABEL_271;
        }

        if (v437[0])
        {
          if (v439 == 1)
          {
            MEMORY[0x1EEE9AC00](v159);
            v391[-4] = v115;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 1536;
            v391[-1] = v160;
          }

          else
          {
            v220 = [(__CFString *)v115 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v220);
            v391[-4] = v115;
            v391[-3] = &v444;
            LODWORD(v391[-2]) = 134217984;
            v391[-1] = v221;
          }

          v222 = v426;
          v223 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v426 = v222;
          v225 = HIBYTE(v224) & 0xF;
          if ((v224 & 0x2000000000000000) == 0)
          {
            v225 = v223 & 0xFFFFFFFFFFFFLL;
          }

          if (v225)
          {
            goto LABEL_182;
          }
        }
      }

      else
      {
        v182 = v115;
        String.init(_nativeStorage:)();
        if (v183 || (*&v444 = [(__CFString *)v182 length], !v444))
        {

          goto LABEL_190;
        }
      }

      String.init(_cocoaString:)();
      goto LABEL_190;
    }

    v89 = v88;
    v418 = v78;
    v419 = v77;
    v90 = swift_getAssociatedTypeWitness();
    v414 = v391;
    v91 = MEMORY[0x1EEE9AC00](v90);
    v92 = v89;
    v93 = v426;
    (*(v87 + 32))(v92, v85, v87, v91);
    v94 = v428;
    if (v93)
    {
      swift_unknownObjectRelease_n();
      v95 = v93;
      v426 = 0;
      v18 = v420;
      goto LABEL_311;
    }

    v426 = 0;
    swift_unknownObjectRelease_n();
    v104 = v421;
    v105 = v423;
    swift_dynamicCast();
    v97 = *(v105 - 8);
LABEL_87:
    v120 = (*(v97 + 56))(v104, 0, 1, v105);
    v410 = v391;
    v414 = *(v97 + 64);
    MEMORY[0x1EEE9AC00](v120);
    v408 = v121;
    v122 = v391 - v121;
    v413 = v391;
    v124 = MEMORY[0x1EEE9AC00](v123);
    v126 = v391 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
    v127 = v418;
    v128 = v104;
    v129 = v419;
    (*(v418 + 16))(v126, v128, v419, v124);
    if ((*(v97 + 48))(v126, 1, v105) == 1)
    {
      v130 = *(v127 + 8);
      v130(v126, v129);
      v131 = (*(i + 24))();
      v447 = 0;
      memset(v446, 0, sizeof(v446));
      v444 = 0u;
      v445 = 0u;
      specialized AttributedString._AttributeStorage.subscript.setter(&v444, v131, v132);

      v130(v421, v129);
      v14 = v415;
      a5 = v416;
      v18 = v420;
      v22 = v427;
      goto LABEL_353;
    }

    v412 = v97;
    (*(v97 + 32))(v122, v126, v105);
    v133 = i;
    v134 = v425;
    v422 = (*(i + 24))(v425, i);
    v413 = v135;
    v407 = v391;
    v136 = MEMORY[0x1EEE9AC00](v422);
    v137 = v408;
    v138 = v391 - v408;
    v139 = *(v97 + 16);
    v405 = v122;
    v140 = v122;
    v141 = v423;
    v142 = v139(v391 - v408, v140, v423, v136);
    v406 = v391;
    v143 = MEMORY[0x1EEE9AC00](v142);
    v144(v391 - v137, v391 - v137, v141, v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd, &_sSH_s8SendablepMR);
    swift_dynamicCast();
    (*(v133 + 32))(&v439, v134, v133);
    *&v446[1] = v439;
    LOBYTE(v446[3]) = (*(v133 + 40))(v134, v133) & 1;
    v145 = (*(v133 + 48))(v134, v133);
    v146 = v412 + 8;
    v425 = *(v412 + 8);
    v425(v138, v141);
    v447 = v145;
    outlined init with copy of AttributedString._AttributeValue?(&v444, &v439);
    v412 = v146;
    if (!*(&v440 + 1))
    {
      outlined destroy of TermOfAddress?(&v439, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      v161 = specialized __RawDictionaryStorage.find<A>(_:)(v422, v413);
      v18 = v420;
      if (v162)
      {
        v163 = v161;
        v164 = v430;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v427;
        if (isUniquelyReferenced_nonNull_native)
        {
          v166 = v164;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
          v330 = static _DictionaryStorage.copy(original:)();
          v166 = v330;
          if (v164[2])
          {
            v331 = (v330 + 64);
            v332 = 1 << *(v166 + 32);
            v407 = v164 + 8;
            v333 = (v332 + 63) >> 6;
            if (v166 != v164 || v331 >= &v407[v333])
            {
              memmove(v331, v407, 8 * v333);
            }

            v334 = 0;
            *(v166 + 16) = v164[2];
            v335 = 1 << *(v164 + 32);
            if (v335 < 64)
            {
              v336 = ~(-1 << v335);
            }

            else
            {
              v336 = -1;
            }

            v337 = v336 & v164[8];
            v338 = (v335 + 63) >> 6;
            v408 = v338;
            if (v337)
            {
              do
              {
                v339 = __clz(__rbit64(v337));
                i = (v337 - 1) & v337;
LABEL_345:
                v342 = v339 | (v334 << 6);
                v343 = 16 * v342;
                v344 = v164[7];
                v345 = (v164[6] + 16 * v342);
                v346 = v345[1];
                v414 = *v345;
                v347 = 72 * v342;
                outlined init with copy of AttributedString._AttributeValue(v344 + 72 * v342, &v439);
                v348 = (*(v166 + 48) + v343);
                *v348 = v414;
                v348[1] = v346;
                v349 = *(v166 + 56) + v347;
                *v349 = v439;
                v350 = v440;
                v351 = v441;
                v352 = v442;
                *(v349 + 64) = v443;
                *(v349 + 32) = v351;
                *(v349 + 48) = v352;
                *(v349 + 16) = v350;

                v338 = v408;
                v337 = i;
              }

              while (i);
            }

            v340 = v334;
            while (1)
            {
              v334 = v340 + 1;
              if (__OFADD__(v340, 1))
              {
                goto LABEL_380;
              }

              if (v334 >= v338)
              {
                break;
              }

              v341 = v407[v334];
              ++v340;
              if (v341)
              {
                v339 = __clz(__rbit64(v341));
                i = (v341 - 1) & v341;
                goto LABEL_345;
              }
            }

            v18 = v420;
            v22 = v427;
          }
        }

        v167 = *(v166 + 56) + 72 * v163;
        v439 = *v167;
        v169 = *(v167 + 32);
        v168 = *(v167 + 48);
        v170 = *(v167 + 64);
        v440 = *(v167 + 16);
        v441 = v169;
        v443 = v170;
        v442 = v168;
        specialized _NativeDictionary._delete(at:)(v163, v166);
        v430 = v166;
        a5 = v416;
        v171 = v422;
      }

      else
      {
        v443 = 0;
        v441 = 0u;
        v442 = 0u;
        v439 = 0u;
        v440 = 0u;
        a5 = v416;
        v22 = v427;
        v171 = v422;
      }

      goto LABEL_352;
    }

    v437[2] = v441;
    v437[3] = v442;
    v438 = v443;
    v437[0] = v439;
    v437[1] = v440;
    outlined init with copy of AttributedString._AttributeValue(v437, &v432);
    v147 = v413;
    v148 = v430;
    v149 = swift_isUniquelyReferenced_nonNull_native();
    v429 = v148;
    v150 = specialized __RawDictionaryStorage.find<A>(_:)(v422, v147);
    v152 = *(v148 + 2);
    v153 = (v151 & 1) == 0;
    v154 = __OFADD__(v152, v153);
    v155 = v152 + v153;
    v18 = v420;
    if (v154)
    {
      goto LABEL_373;
    }

    v156 = v151;
    if (*(v148 + 3) < v155)
    {
      break;
    }

    if (v149)
    {
      v157 = v148;
LABEL_107:
      a5 = v416;
      v22 = v427;
      if ((v156 & 1) == 0)
      {
        goto LABEL_349;
      }

      goto LABEL_108;
    }

    v407 = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
    v307 = static _DictionaryStorage.copy(original:)();
    v157 = v307;
    if (*(v148 + 2))
    {
      v308 = (v307 + 64);
      v309 = v148 + 64;
      v310 = ((1 << *(v157 + 32)) + 63) >> 6;
      v406 = v148 + 64;
      if (v157 != v148 || v308 >= &v309[8 * v310])
      {
        memmove(v308, v309, 8 * v310);
      }

      v311 = 0;
      *(v157 + 16) = *(v148 + 2);
      v312 = 1 << v148[32];
      if (v312 < 64)
      {
        v313 = ~(-1 << v312);
      }

      else
      {
        v313 = -1;
      }

      v314 = v313 & *(v148 + 8);
      v315 = (v312 + 63) >> 6;
      v408 = v315;
      v22 = v427;
      if (!v314)
      {
        goto LABEL_323;
      }

      while (1)
      {
        v316 = __clz(__rbit64(v314));
        for (i = (v314 - 1) & v314; ; i = (v318 - 1) & v318)
        {
          v319 = v316 | (v311 << 6);
          v320 = 16 * v319;
          v321 = *(v148 + 7);
          v322 = (*(v148 + 6) + 16 * v319);
          v323 = v322[1];
          v414 = *v322;
          v324 = 72 * v319;
          outlined init with copy of AttributedString._AttributeValue(v321 + 72 * v319, &v439);
          v325 = (*(v157 + 48) + v320);
          *v325 = v414;
          v325[1] = v323;
          v326 = *(v157 + 56) + v324;
          *v326 = v439;
          v327 = v440;
          v328 = v441;
          v329 = v442;
          *(v326 + 64) = v443;
          *(v326 + 32) = v328;
          *(v326 + 48) = v329;
          *(v326 + 16) = v327;

          v18 = v420;
          v315 = v408;
          v314 = i;
          v22 = v427;
          if (i)
          {
            break;
          }

LABEL_323:
          v317 = v311;
          do
          {
            v311 = v317 + 1;
            if (__OFADD__(v317, 1))
            {
              goto LABEL_379;
            }

            if (v311 >= v315)
            {
              goto LABEL_348;
            }

            v318 = v406[v311];
            ++v317;
          }

          while (!v318);
          v316 = __clz(__rbit64(v318));
        }
      }
    }

    v22 = v427;
LABEL_348:

    v150 = v407;
    a5 = v416;
    if ((v156 & 1) == 0)
    {
LABEL_349:
      *(v157 + 8 * (v150 >> 6) + 64) |= 1 << v150;
      v353 = (*(v157 + 48) + 16 * v150);
      v354 = v422;
      v355 = v413;
      *v353 = v422;
      v353[1] = v355;
      v356 = *(v157 + 56) + 72 * v150;
      *v356 = v432;
      v357 = v433;
      v358 = v434;
      v359 = v435;
      *(v356 + 64) = v436;
      *(v356 + 32) = v358;
      *(v356 + 48) = v359;
      *(v356 + 16) = v357;
      v360 = *(v157 + 16);
      v154 = __OFADD__(v360, 1);
      v361 = v360 + 1;
      if (v154)
      {
        goto LABEL_375;
      }

      *(v157 + 16) = v361;

      outlined destroy of AttributedString._AttributeValue(v437);
      v439 = 0u;
      v440 = 0u;
      v441 = 0u;
      v442 = 0u;
      v443 = 0;
      v171 = v354;
      goto LABEL_351;
    }

LABEL_108:
    v174 = *(v157 + 56) + 72 * v150;
    v176 = *(v174 + 16);
    v175 = *(v174 + 32);
    v177 = *(v174 + 48);
    v443 = *(v174 + 64);
    v442 = v177;
    v439 = *v174;
    v440 = v176;
    v441 = v175;
    v178 = *(v157 + 56) + 72 * v150;
    v179 = v433;
    v180 = v434;
    v181 = v435;
    *(v178 + 64) = v436;
    *(v178 + 32) = v180;
    *(v178 + 48) = v181;
    *(v178 + 16) = v179;
    *v178 = v432;
    outlined destroy of AttributedString._AttributeValue(v437);
    v171 = v422;
LABEL_351:
    v430 = v157;
LABEL_352:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v171, v413, &v439, &v444);
    outlined destroy of TermOfAddress?(&v444, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    outlined destroy of TermOfAddress?(&v439, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);

    v425(v405, v423);
    (*(v418 + 8))(v421, v419);
    v14 = v415;
LABEL_353:
    __swift_destroy_boxed_opaque_existential_1(&v448);
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v155, v149);
  v157 = v429;
  v150 = specialized __RawDictionaryStorage.find<A>(_:)(v422, v147);
  if ((v156 & 1) == (v158 & 1))
  {
    goto LABEL_107;
  }

LABEL_392:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}