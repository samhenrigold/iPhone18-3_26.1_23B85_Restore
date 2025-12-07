unint64_t specialized Rope._Node.subscript.getter(unint64_t result, uint64_t a2)
{
  if (((result >> ((4 * *(a2 + 18) + 8) & 0x3C)) & 0xF) >= *(a2 + 16))
  {
    __break(1u);
  }

  else
  {
    v2 = a2 + 24;
    if (*(a2 + 18))
    {
      v3 = result;
      v4 = *(v2 + 24 * ((result >> ((4 * *(a2 + 18) + 8) & 0x3C)) & 0xF));
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v5 = specialized Rope._Node.subscript.getter(v3, v4);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = *(v2 + 24 * ((result >> ((4 * *(a2 + 18) + 8) & 0x3C)) & 0xF));
    }

    return v5;
  }

  return result;
}

_WORD *specialized Rope.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ++v3[3];
  if (*v3)
  {
    result = specialized Rope._Node.append(_:)(a1, a2, a3);
    if (result)
    {
      v8 = *v3;
      v9 = *(*v3 + 18) + 1;
      if ((v9 >> 8))
      {
        __break(1u);
      }

      else
      {
        v10 = result;
        v11 = v6;
        v12 = v7;
        v13 = v4[1];
        v14 = v4[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMR);
        v15 = swift_allocObject();
        *(v15 + 16) = 0;
        result = (v15 + 16);
        *(v15 + 18) = v9;
        if (!__OFADD__(v13, v11))
        {
          if (!__OFADD__(v14, v12))
          {
            specialized closure #1 in static Rope._Node.createInner(children:_:)(result, v15 + 24, v8, v13, v14, v10, v11, v12);
            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease();
            *v4 = v15;
            v4[1] = v13 + v11;
            v4[2] = v14 + v12;
            return result;
          }

          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 18) = 0;
    v20 = v19;
    result = specialized Rope._Node._appendItem(_:)(a1, a2, a3);
    *v3 = v20;
    v3[2] = 0;
  }

  return result;
}

uint64_t specialized Rope._Node._appendItem(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (result)
  {
    v8 = v3[1];
  }

  else
  {
    v9 = specialized Rope._Node.copy()(*v3);
    v8 = v10;
    v12 = v11;
    result = swift_unknownObjectRelease();
    *v3 = v9;
    v3[1] = v8;
    v3[2] = v12;
  }

  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3[1] = v8 + 1;
  v13 = v3[2];
  v14 = __OFADD__(v13, a1);
  v15 = v13 + a1;
  if (v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3[2] = v15;
  v16 = *v3;
  v17 = *(*v3 + 16);
  v18 = (*v3 + 24 * *(*v3 + 16));
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  if (v17 != 0xFFFF)
  {
    *(v16 + 16) = v17 + 1;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized AttributedString._AttributeStorage.containsScalarConstraint.getter(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * (__clz(__rbit64(v5)) | (v9 << 6)), v10);
      if (v11 > 1)
      {
        break;
      }

      v5 &= v5 - 1;
      result = outlined destroy of AttributedString._AttributeValue(v10);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AttributedString._AttributeValue(v10);
    return 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return 0;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Rope._Node.formSuccessor(of:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = (4 * *(a2 + 18) + 8) & 0x3C;
  v6 = (v4 >> v5) & 0xF;
  if (!*(a2 + 18))
  {
    if (v6 + 1 >= *(a2 + 16))
    {
      return 0;
    }

    *(a1 + 8) = ((v6 + 1) << v5) | v4 & 0xFFFFFFFFFFFFF0FFLL;
    *(a1 + 16) = a2;
    return 1;
  }

  v7 = *(a2 + 24 + 24 * ((v4 >> v5) & 0xF));
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = specialized Rope._Node.formSuccessor(of:)(a1, v7);
  result = swift_unknownObjectRelease();
  if (v8)
  {
    v10 = 1;
LABEL_11:
    swift_unknownObjectRelease();
    return v10;
  }

  v11 = v6 + 1;
  if (v6 + 1 >= *(a2 + 16))
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = a2 + 24 + 24 * v11;
  v13 = *v12;
  v14 = *(*v12 + 18) + 1;
  if (((v14 >> 8) & 1) == 0)
  {
    v15 = (*(a1 + 8) & ((-15 << v5) - 1) | (v11 << v5)) & ((-256 << (4 * (v14 & 0xF))) | 0xFF);
    *(a1 + 8) = v15;
    swift_unknownObjectRetain();
    v16 = specialized Rope._Node.unmanagedLeaf(at:)(v15, v13);
    swift_unknownObjectRelease();
    *(a1 + 16) = v16;
    v10 = 1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of Rope<BigString._Chunk>._Node?(uint64_t *a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 8) = v3;
  swift_unknownObjectRetain();
  return a2;
}

uint64_t AttributedString.init(_:attributes:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v16 = a1[1];
  v17 = *a1;
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  if (BigString.isEmpty.getter())
  {

    BigString.init()();
    *&v19[0] = 0;
    MEMORY[0x1865D26B0](v19, 8);
    v10 = *&v19[0];
    type metadata accessor for AttributedString.Guts();
    v11 = swift_allocObject();
    if (BigString.isEmpty.getter())
    {
      if (one-time initialization token for _nextVersion == -1)
      {
LABEL_4:
        add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v13 = v18[1];
        *(v11 + 24) = v18[0];
        *(v11 + 16) = add_explicit;
        *(v11 + 40) = v13;
        *(v11 + 56) = v18[2];
        *(v11 + 72) = 0;
        *(v11 + 80) = 0;
        *(v11 + 88) = 0;
        *(v11 + 96) = v10;
        *(v11 + 104) = MEMORY[0x1E69E7CC0];
        result = outlined destroy of BigString(a1);
        *a4 = v11;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  *&v18[0] = 0;
  MEMORY[0x1865D26B0](v18, 8);
  v19[0] = v17;
  v19[1] = v16;
  v20 = v8;
  v21 = v9;
  v14 = BigString.UTF8View.count.getter();

  specialized Rope.append(_:)(v14, a2, a3);
  type metadata accessor for AttributedString.Guts();
  swift_allocObject();
  result = outlined init with copy of BigString(a1, v18);
  __break(1u);
  return result;
}

uint64_t AttributedString.Guts.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for _URLProtocol.relativeString.getter in conformance _SwiftURL()
{
  v1 = *(*(v0 + 16) + 16);

  return v1;
}

uint64_t _sSd7exactlySdSgx_tcSzRzlufCs5Int64V_Tt0g5(uint64_t result)
{
  v1 = result;
  if (result >= 9.22337204e18)
  {
    *&result = 0.0;
    return result;
  }

  if ((~*&v1 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 == result)
  {
    *&result = result;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale and conformance Locale()
{
  result = lazy protocol witness table cache variable for type Locale and conformance Locale;
  if (!lazy protocol witness table cache variable for type Locale and conformance Locale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale and conformance Locale);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale and conformance Locale;
  if (!lazy protocol witness table cache variable for type Locale and conformance Locale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale and conformance Locale);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale and conformance Locale;
  if (!lazy protocol witness table cache variable for type Locale and conformance Locale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale and conformance Locale);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale and conformance Locale;
  if (!lazy protocol witness table cache variable for type Locale and conformance Locale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale and conformance Locale);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale and conformance Locale;
  if (!lazy protocol witness table cache variable for type Locale and conformance Locale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale and conformance Locale);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale and conformance Locale;
  if (!lazy protocol witness table cache variable for type Locale and conformance Locale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale and conformance Locale);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale and conformance Locale;
  if (!lazy protocol witness table cache variable for type Locale and conformance Locale)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale and conformance Locale);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

_BYTE *_NSSetBoolValueForKeyInIvar(void *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 BOOLValue];
    result = ivar_getOffset(a5);
    result[a1] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

void Locale.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  if ((*(v3 + 48))(ObjectType, v3))
  {
    v5 = 1;
LABEL_5:
    Hasher._combine(_:)(v5);
    return;
  }

  Hasher._combine(_:)(0);
  (*(v3 + 64))(ObjectType, v3);
  String.hash(into:)();

  (*(v3 + 464))(&v45, ObjectType, v3);
  v53[6] = v51;
  v54[0] = *v52;
  *(v54 + 12) = *&v52[12];
  v53[2] = v47;
  v53[3] = v48;
  v53[4] = v49;
  v53[5] = v50;
  v53[0] = v45;
  v53[1] = v46;
  if (_s10Foundation17LocalePreferencesVSgWOg(v53) == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v6 = v45;
  v7 = *(&v45 + 1);
  v8 = *(&v46 + 1);
  v9 = *(&v47 + 1);
  v38 = v48;
  v10 = v50;
  v39 = v49;
  v40 = *(&v50 + 1);
  v41 = v51;
  v11 = *v52;
  v12 = v52[24];
  v42 = *&v52[16];
  v43 = v52[25];
  v44 = v52[26];
  v13 = v52[27];
  Hasher._combine(_:)(1u);
  if (v6 == 2)
  {
    v14 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v14 = v6 & 1;
  }

  Hasher._combine(_:)(v14);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v7 + 16));
    v15 = *(v7 + 16);
    if (v15)
    {
      v16 = v7 + 40;
      do
      {

        String.hash(into:)();

        v16 += 16;
        --v15;
      }

      while (v15);
    }

    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v8)
    {
LABEL_14:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
LABEL_17:
  v17 = v12;
  if (v9)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v18 = v10;
  if (v38)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v38, v19, v20, v21, v22, v23, v24);
    v25 = v43;
    if (*(&v38 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v38 + 1), v26, v27, v28, v29, v30, v31);
      goto LABEL_25;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v25 = v43;
    if (*(&v38 + 1))
    {
      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);
LABEL_25:
  if (v39)
  {
    v32 = v17;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v39 + 1))
    {
      goto LABEL_27;
    }

LABEL_30:
    Hasher._combine(_:)(0);
    v33 = v32;
    if (v18)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v32 = v17;
  Hasher._combine(_:)(0);
  if (!*(&v39 + 1))
  {
    goto LABEL_30;
  }

LABEL_27:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
  _CFObject.hash(into:)();
  v33 = v32;
  if (v18)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_32;
  }

LABEL_31:
  Hasher._combine(_:)(0);
LABEL_32:
  if (v40)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v34 = *(&v41 + 1);
    if (v41)
    {
      goto LABEL_34;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v34 = *(&v41 + 1);
    if (v41)
    {
LABEL_34:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v34)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  Hasher._combine(_:)(0);
  if (v34)
  {
LABEL_35:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v34);
    if (v11)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

LABEL_43:
  Hasher._combine(_:)(0);
  if (v11)
  {
LABEL_36:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v11);
    v35 = v13;
    if (v42)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

LABEL_44:
  Hasher._combine(_:)(0);
  v35 = v13;
  if (v42)
  {
LABEL_37:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v33 == 2)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

LABEL_45:
  Hasher._combine(_:)(0);
  if (v33 == 2)
  {
LABEL_38:
    Hasher._combine(_:)(0);
    if (v25 != 2)
    {
      goto LABEL_39;
    }

LABEL_47:
    Hasher._combine(_:)(0);
    if (v44 != 2)
    {
      goto LABEL_40;
    }

LABEL_48:
    v36 = 0;
    goto LABEL_49;
  }

LABEL_46:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v33 & 1);
  if (v25 == 2)
  {
    goto LABEL_47;
  }

LABEL_39:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v25 & 1);
  if (v44 == 2)
  {
    goto LABEL_48;
  }

LABEL_40:
  Hasher._combine(_:)(1u);
  v36 = v44 & 1;
LABEL_49:
  Hasher._combine(_:)(v36);
  if (v35 == 2)
  {
    v37 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v37 = v35 & 1;
  }

  Hasher._combine(_:)(v37);
  outlined destroy of TermOfAddress?(&v45, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
}

CFMutableCharacterSetRef static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, CFMutableCharacterSetRef *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    [v3 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for CFCharacterSetRef(0);
    swift_dynamicCast();
    type metadata accessor for __CharacterSetStorage();
    result = swift_allocObject();
    *(result + 2) = v6;
    *(result + 24) = 0;
LABEL_5:
    *a2 = result;
    return result;
  }

  result = CFCharacterSetCreateMutable(0);
  if (result)
  {
    v5 = result;
    type metadata accessor for __CharacterSetStorage();
    result = swift_allocObject();
    *(result + 2) = v5;
    *(result + 24) = 1;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static AttributedStringKey.name.getter in conformance AttributeScopes.FoundationAttributes.ReferentConceptAttribute(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

unint64_t sub_1808A3020(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute);
  }

  return result;
}

unint64_t sub_1808A4114(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute and conformance AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute and conformance AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute and conformance AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute and conformance AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute and conformance AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute);
  }

  return result;
}

unint64_t sub_1808A457C(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MorphologyAttribute and conformance AttributeScopes.FoundationAttributes.MorphologyAttribute);
  }

  return result;
}

unint64_t sub_1808A4650(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InflectionRuleAttribute and conformance AttributeScopes.FoundationAttributes.InflectionRuleAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InflectionRuleAttribute and conformance AttributeScopes.FoundationAttributes.InflectionRuleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InflectionRuleAttribute and conformance AttributeScopes.FoundationAttributes.InflectionRuleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InflectionRuleAttribute and conformance AttributeScopes.FoundationAttributes.InflectionRuleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InflectionRuleAttribute and conformance AttributeScopes.FoundationAttributes.InflectionRuleAttribute);
  }

  return result;
}

unint64_t sub_1808A4AB4(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute and conformance AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute and conformance AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute and conformance AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute and conformance AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute and conformance AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute);
  }

  return result;
}

void closure #1 in _FileManagerImpl.destinationOfSymbolicLink(atPath:)(const char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v160 = *MEMORY[0x1E69E9840];
  if (!a1)
  {

    URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v158);

    v22 = v158;
    v23 = v159;
    v24 = String._bridgeToObjectiveCImpl()();
    if (v22)
    {
      ObjectType = swift_getObjectType();
      v26 = (*(v23 + 432))(ObjectType, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
    }

    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    goto LABEL_201;
  }

  if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
  {
    v5 = swift_slowAlloc();
    v27 = readlink(a1, v5, 0x402uLL);
    if ((v27 & 0x8000000000000000) == 0)
    {
      v28 = v27;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_230;
      }

      v30 = Strong;
      v31 = [Strong stringWithFileSystemRepresentation:v5 length:v28];

      if (v31)
      {
        isTaggedPointer = _objc_isTaggedPointer(v31);
        v33 = v31;
        v17 = v33;
        if (isTaggedPointer)
        {
          TaggedPointerTag = _objc_getTaggedPointerTag(v33);
          switch(TaggedPointerTag)
          {
            case 0:
              _CFIndirectTaggedPointerStringGetContents();
              v66 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v67)
              {
                [v17 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();

                *a5 = v153;
                a5[1] = v156;
LABEL_218:
                MEMORY[0x1865D2690](v5, -1, -1);
                return;
              }

              goto LABEL_92;
            case 0x16:
              goto LABEL_86;
            case 2:
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v35 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v37 = v36;

LABEL_119:
              *a5 = v35;
              a5[1] = v37;
              goto LABEL_218;
          }
        }

        v158 = 0;
        if (__CFStringIsCF())
        {
        }

        else
        {
          v49 = v17;
          v50 = String.init(_nativeStorage:)();
          if (v51)
          {
            v35 = v50;
            v37 = v51;

            goto LABEL_119;
          }

          v158 = [v49 length];
          if (v158)
          {
            v35 = String.init(_cocoaString:)();
            v37 = v75;
            goto LABEL_118;
          }
        }
      }

      v35 = 0;
      v37 = 0xE000000000000000;
      goto LABEL_119;
    }

    v40 = MEMORY[0x1865CA7A0]();
    if (v40 > 26)
    {
      if (v40 == 27)
      {
        v41 = 263;
        goto LABEL_73;
      }

      if (v40 != 63)
      {
        if (v40 == 102)
        {
          v44 = 0;
          v45 = 256;
          goto LABEL_209;
        }

LABEL_56:
        v41 = 256;
        goto LABEL_73;
      }

      v41 = 258;
    }

    else
    {
      if (v40 == 1)
      {
LABEL_32:
        v41 = 257;
        goto LABEL_73;
      }

      if (v40 != 2)
      {
        if (v40 == 13)
        {
          goto LABEL_32;
        }

        goto LABEL_56;
      }

      v41 = 260;
    }

LABEL_73:
    v151 = v5;
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
      goto LABEL_229;
    }

    v57 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v58 = @"NSPOSIXErrorDomain";
    v54 = v58;
    v149 = v41;
    v150 = @"NSPOSIXErrorDomain";
    if (v57)
    {
      v59 = _objc_getTaggedPointerTag(v58);
      switch(v59)
      {
        case 0:
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v73)
          {
LABEL_102:

            goto LABEL_143;
          }

          [(__CFString *)v54 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
LABEL_143:
          v96 = POSIXErrorCode.rawValue.getter();
          v97 = objc_allocWithZone(NSError);
          v98 = String._bridgeToObjectiveCImpl()();

          v44 = [v97 initWithDomain:v98 code:v96 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v99 = [v44 domain];
          if (!v99)
          {
            goto LABEL_162;
          }

          v100 = v99;
          v101 = _objc_isTaggedPointer(v99);
          v102 = v100;
          v103 = v102;
          if ((v101 & 1) == 0)
          {
LABEL_149:
            v158 = 0;
            if (__CFStringIsCF())
            {
              v105 = v158;
              if (!v158)
              {

                v107 = 0xE000000000000000;
                goto LABEL_204;
              }

              goto LABEL_202;
            }

            v108 = v103;
            v109 = String.init(_nativeStorage:)();
            if (v110)
            {
              v105 = v109;
              v107 = v110;

              goto LABEL_204;
            }

            v158 = [v108 length];
            if (v158)
            {
LABEL_202:
              v105 = String.init(_cocoaString:)();
              v107 = v137;
              goto LABEL_203;
            }

LABEL_162:
            v105 = 0;
            v107 = 0xE000000000000000;
            goto LABEL_204;
          }

          v104 = _objc_getTaggedPointerTag(v102);
          if (v104)
          {
            if (v104 != 22)
            {
              if (v104 == 2)
              {
                MEMORY[0x1EEE9AC00](v104);
                v105 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v107 = v106;

                goto LABEL_204;
              }

              goto LABEL_149;
            }

            v111 = [v103 UTF8String];
            if (!v111)
            {
LABEL_227:
              __break(1u);
              goto LABEL_230;
            }

            v112 = String.init(utf8String:)(v111);
            if (v113)
            {
              goto LABEL_159;
            }

            __break(1u);
          }

          _CFIndirectTaggedPointerStringGetContents();
          v112 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v113)
          {
            [v103 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v105 = v153;
            v107 = v156;
            goto LABEL_203;
          }

LABEL_159:
          v105 = v112;
          v107 = v113;

LABEL_203:
LABEL_204:
          v5 = v151;
          if (v105 == static String._unconditionallyBridgeFromObjectiveC(_:)(v150) && v107 == v138)
          {
          }

          else
          {
            v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v139 & 1) == 0)
            {
              __break(1u);
              goto LABEL_220;
            }
          }

          v45 = v149;
LABEL_209:

          URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v158);

          v140 = v158;
          v141 = v159;
          v142 = String._bridgeToObjectiveCImpl()();
          if (v140)
          {
            v143 = swift_getObjectType();
            v144 = (*(v141 + 432))(v143, v141);
            swift_unknownObjectRelease();
            if (v44)
            {
LABEL_211:
              v155 = v44;
              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
              v44 = v44;
              v145 = _getErrorEmbeddedNSError<A>(_:)();

              if (v145)
              {
              }

              else
              {
                swift_allocError();
                *v147 = v44;
              }

              v146 = _swift_stdlib_bridgeErrorToNSError();
              goto LABEL_217;
            }
          }

          else
          {
            v144 = 0;
            if (v44)
            {
              goto LABEL_211;
            }
          }

          v146 = 0;
LABEL_217:
          [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
          swift_unknownObjectRelease();

          swift_willThrow();
          goto LABEL_218;
        case 0x16:
LABEL_96:
          v70 = [(__CFString *)v54 UTF8String];
          if (!v70)
          {
LABEL_224:
            __break(1u);
            goto LABEL_225;
          }

          String.init(utf8String:)(v70);
          if (!v71)
          {
            __break(1u);
            goto LABEL_99;
          }

          goto LABEL_102;
        case 2:
          MEMORY[0x1EEE9AC00](v59);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_143;
      }
    }

    LOBYTE(v153) = 0;
    v158 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v60 = v54;
      String.init(_nativeStorage:)();
      if (!v61 && (v158 = [(__CFString *)v60 length]) != 0)
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }
    }

    goto LABEL_143;
  }

  v10 = readlink(a1, v157, 0x402uLL);
  if (v10 < 0)
  {
    v38 = MEMORY[0x1865CA7A0]();
    if (v38 > 26)
    {
      if (v38 == 27)
      {
        v39 = 263;
        goto LABEL_60;
      }

      if (v38 != 63)
      {
        if (v38 == 102)
        {
          v42 = 0;
          v43 = 256;
          goto LABEL_192;
        }

LABEL_55:
        v39 = 256;
        goto LABEL_60;
      }

      v39 = 258;
    }

    else
    {
      if (v38 == 1)
      {
LABEL_27:
        v39 = 257;
        goto LABEL_60;
      }

      if (v38 != 2)
      {
        if (v38 == 13)
        {
          goto LABEL_27;
        }

        goto LABEL_55;
      }

      v39 = 260;
    }

LABEL_60:
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
    {
      v52 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
      v53 = @"NSPOSIXErrorDomain";
      v54 = v53;
      v149 = v39;
      LODWORD(v150) = v52;
      v151 = v53;
      if (!v52)
      {
        goto LABEL_66;
      }

      v55 = _objc_getTaggedPointerTag(v53);
      if (!v55)
      {
LABEL_99:
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v72)
        {
          [(__CFString *)v54 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_121;
        }

        goto LABEL_113;
      }

      if (v55 != 22)
      {
        if (v55 == 2)
        {
          MEMORY[0x1EEE9AC00](v55);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_121;
        }

LABEL_66:
        LOBYTE(v153) = 0;
        v158 = 0;
        if (__CFStringIsCF())
        {
          if (v158)
          {
LABEL_120:
            String.init(_cocoaString:)();
LABEL_121:
            v76 = POSIXErrorCode.rawValue.getter();
            v77 = objc_allocWithZone(NSError);
            v78 = String._bridgeToObjectiveCImpl()();

            v42 = [v77 initWithDomain:v78 code:v76 userInfo:_NativeDictionary.bridged()()];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v79 = [v42 domain];
            if (!v79)
            {
              goto LABEL_140;
            }

            v80 = v79;
            v81 = _objc_isTaggedPointer(v79);
            v82 = v80;
            v83 = v82;
            if ((v81 & 1) == 0)
            {
LABEL_127:
              LOBYTE(v153) = 0;
              v158 = 0;
              if (__CFStringIsCF())
              {
                v88 = v158;
                if (!v158)
                {

                  v87 = 0xE000000000000000;
                  goto LABEL_166;
                }

                goto LABEL_164;
              }

              v89 = v83;
              v90 = String.init(_nativeStorage:)();
              if (v91)
              {
                v92 = v90;
                v87 = v91;

                v88 = v92;
                goto LABEL_166;
              }

              v158 = [v89 length];
              if (v158)
              {
LABEL_164:
                v88 = String.init(_cocoaString:)();
                v87 = v114;
                goto LABEL_165;
              }

LABEL_140:
              v88 = 0;
              v87 = 0xE000000000000000;
              goto LABEL_166;
            }

            v84 = _objc_getTaggedPointerTag(v82);
            if (v84)
            {
              if (v84 != 22)
              {
                if (v84 == 2)
                {
                  MEMORY[0x1EEE9AC00](v84);
                  v85 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v87 = v86;

                  v88 = v85;
                  goto LABEL_166;
                }

                goto LABEL_127;
              }

              v93 = [v83 UTF8String];
              if (!v93)
              {
LABEL_226:
                __break(1u);
                goto LABEL_227;
              }

              v94 = String.init(utf8String:)(v93);
              if (v95)
              {
                goto LABEL_137;
              }

              __break(1u);
            }

            _CFIndirectTaggedPointerStringGetContents();
            v94 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v95)
            {
              [v83 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v88 = v153;
              v87 = v156;
              goto LABEL_165;
            }

LABEL_137:
            v88 = v94;
            v87 = v95;

LABEL_165:
LABEL_166:
            v115 = v151;
            v116 = v115;
            if (!v150)
            {
              goto LABEL_171;
            }

            v117 = _objc_getTaggedPointerTag(v115);
            if (v117)
            {
              if (v117 != 22)
              {
                if (v117 == 2)
                {
                  v152 = v88;
                  MEMORY[0x1EEE9AC00](v117);
                  v118 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v120 = v119;

LABEL_186:
                  v88 = v152;
LABEL_187:
                  if (v88 == v118 && v87 == v120)
                  {

LABEL_191:
                    v43 = v149;
LABEL_192:

                    URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v158);

                    v129 = v158;
                    v130 = v159;
                    v131 = String._bridgeToObjectiveCImpl()();
                    if (v129)
                    {
                      v132 = swift_getObjectType();
                      v133 = (*(v130 + 432))(v132, v130);
                      swift_unknownObjectRelease();
                      if (v42)
                      {
LABEL_194:
                        v154 = v42;
                        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                        v42 = v42;
                        v134 = _getErrorEmbeddedNSError<A>(_:)();

                        if (v134)
                        {
                        }

                        else
                        {
                          swift_allocError();
                          *v136 = v42;
                        }

                        v135 = _swift_stdlib_bridgeErrorToNSError();
                        goto LABEL_200;
                      }
                    }

                    else
                    {
                      v133 = 0;
                      if (v42)
                      {
                        goto LABEL_194;
                      }
                    }

                    v135 = 0;
LABEL_200:
                    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                    swift_unknownObjectRelease();

                    swift_willThrow();
LABEL_201:
                    swift_willThrow();
                    return;
                  }

                  v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v128)
                  {
                    goto LABEL_191;
                  }

LABEL_220:
                  __break(1u);
                }

LABEL_171:
                v158 = 0;
                if (__CFStringIsCF())
                {
                  v118 = v158;
                  if (!v158)
                  {

                    v120 = 0xE000000000000000;
                    goto LABEL_187;
                  }

                  v152 = v88;
                }

                else
                {
                  v152 = v88;
                  v121 = v116;
                  v122 = String.init(_nativeStorage:)();
                  if (v123)
                  {
                    v118 = v122;
                    v120 = v123;

                    goto LABEL_186;
                  }

                  v158 = [v121 length];
                  if (!v158)
                  {

                    v118 = 0;
                    v120 = 0xE000000000000000;
                    goto LABEL_186;
                  }
                }

                v118 = String.init(_cocoaString:)();
                v120 = v127;
                goto LABEL_186;
              }

              v124 = [v116 UTF8String];
              if (!v124)
              {
LABEL_225:
                __break(1u);
                goto LABEL_226;
              }

              v125 = String.init(utf8String:)(v124);
              if (v126)
              {
LABEL_181:
                v118 = v125;
                v120 = v126;

                goto LABEL_187;
              }

              __break(1u);
            }

            _CFIndirectTaggedPointerStringGetContents();
            v125 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v126)
            {
              [v116 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v118 = v153;
              v120 = v156;
              goto LABEL_187;
            }

            goto LABEL_181;
          }
        }

        else
        {
          v54 = v54;
          String.init(_nativeStorage:)();
          if (!v56)
          {
            v158 = [(__CFString *)v54 length];
            if (v158)
            {
              goto LABEL_120;
            }
          }
        }

LABEL_113:

        goto LABEL_121;
      }

      v68 = [(__CFString *)v54 UTF8String];
      if (!v68)
      {
LABEL_223:
        __break(1u);
        goto LABEL_224;
      }

      String.init(utf8String:)(v68);
      if (v69)
      {
        goto LABEL_113;
      }

      __break(1u);
      goto LABEL_96;
    }

LABEL_229:
    v158 = 0;
    v159 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v158 = 0xD000000000000014;
    v159 = 0x80000001814813E0;
    v148 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v148);

    goto LABEL_230;
  }

  v11 = v10;
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 stringWithFileSystemRepresentation:v157 length:v11];

    if (!v14)
    {
      goto LABEL_51;
    }

    v15 = _objc_isTaggedPointer(v14);
    v16 = v14;
    v17 = v16;
    if (!v15)
    {
LABEL_33:
      v158 = 0;
      if (__CFStringIsCF())
      {
        if (v158)
        {
LABEL_114:
          v19 = String.init(_cocoaString:)();
          v21 = v74;
          goto LABEL_115;
        }
      }

      else
      {
        v46 = v17;
        v47 = String.init(_nativeStorage:)();
        if (v48)
        {
          v19 = v47;
          v21 = v48;

          goto LABEL_116;
        }

        v158 = [v46 length];
        if (v158)
        {
          goto LABEL_114;
        }
      }

LABEL_51:
      v19 = 0;
      v21 = 0xE000000000000000;
      goto LABEL_116;
    }

    v18 = _objc_getTaggedPointerTag(v16);
    if (!v18)
    {
      goto LABEL_89;
    }

    if (v18 != 22)
    {
      if (v18 == 2)
      {
        MEMORY[0x1EEE9AC00](v18);
        v19 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v21 = v20;

LABEL_116:
        *a5 = v19;
        a5[1] = v21;
        return;
      }

      goto LABEL_33;
    }

    v62 = [v17 UTF8String];
    if (!v62)
    {
      __break(1u);
LABEL_222:
      __break(1u);
      goto LABEL_223;
    }

    v63 = String.init(utf8String:)(v62);
    if (v64)
    {
LABEL_90:
      v19 = v63;
      v21 = v64;

LABEL_115:
      goto LABEL_116;
    }

    __break(1u);
LABEL_86:
    v65 = [v17 UTF8String];
    if (v65)
    {
      v66 = String.init(utf8String:)(v65);
      if (!v67)
      {
        __break(1u);
LABEL_89:
        _CFIndirectTaggedPointerStringGetContents();
        v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v64)
        {
          [v17 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();

          *a5 = v153;
          a5[1] = v156;
          return;
        }

        goto LABEL_90;
      }

LABEL_92:
      v35 = v66;
      v37 = v67;

LABEL_118:
      goto LABEL_119;
    }

    goto LABEL_222;
  }

LABEL_230:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *_attributesAtPath(const char *a1, char a2, NSError **a3)
{
  v6 = listxattr(a1, 0, 0, 1);
  if (v6 < 1)
  {
    v8 = 0;
LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  v8 = malloc_type_malloc(v6, 0x100004077774924uLL);
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = listxattr(a1, v8, v7, 1);
  if (v9 < 1)
  {
    goto LABEL_21;
  }

  v10 = v9;
  v32 = a3;
  v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  if (v10 >= 1)
  {
    v13 = v8;
    do
    {
      if (!strcmp(v13, "com.apple.ResourceFork") && (a2 & 1) != 0 || !strcmp(v13, "com.apple.FinderInfo") || !strcmp(v13, "system.Security"))
      {
        v16 = v13 - 1;
          ;
        }
      }

      else
      {
        v14 = [[NSString alloc] initWithUTF8String:v13];
        if (v14)
        {
          v15 = v14;
          [v12 addObject:v14];
        }

        v16 = v13 - 1;
          ;
        }
      }

      v13 = v16 + 1;
    }

    while (v16 + 1 < &v8[v10]);
  }

  if ([v12 count])
  {
    v19 = v12;
  }

  else
  {

    v12 = 0;
  }

  v21 = [v12 count];
  if (v21 >= 1)
  {
    v22 = 0;
    v23 = v21 & 0x7FFFFFFF;
    do
    {
      v24 = [v12 objectAtIndex:v22];
      v25 = [v24 UTF8String];
      v26 = getxattr(a1, v25, 0, 0, 0, 1);
      if (v26 >= 1)
      {
        v27 = v26;
        v28 = malloc_type_malloc(v26, 0x8713C345uLL);
        v29 = getxattr(a1, v25, v28, v27, 0, 1);
        if (v29 == -1)
        {
          if (v32)
          {
            v31 = *__error();
            *v32 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v31, [NSString stringWithUTF8String:a1], 1, 0, 0);
          }

          free(v28);
        }

        else
        {
          v30 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v28 length:v29 freeWhenDone:1];
          if (v30)
          {
            [v11 setObject:v30 forKey:v24];
          }
        }
      }

      ++v22;
    }

    while (v23 != v22);
  }

LABEL_22:
  free(v8);
  if ([v11 count])
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized URLResourceValues._get<A>(_:)(void *a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_So14NSSecureCodingSo8NSObjectpMd, &_sSo9NSCopying_So14NSSecureCodingSo8NSObjectpMR);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSFileSecurity, 0x1E695DF40);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

double static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

id _NSLocalizedStringResourceSwiftWrapper.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if ([a1 allowsKeyedCoding] && (v5 = _sSo7NSCoderC10FoundationE12decodeObject2of6forKeyxSgxm_SStSo8NSObjectCRbzSo8NSCodingRzlFSo8NSStringC_Ttg5Tm(0xD000000000000020, 0x8000000181488DD0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0)) != 0)
  {
    v6 = v5;
    type metadata accessor for PropertyListDecoder();
    inited = swift_initStackObject();
    *(inited + 16) = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMR);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(inited + 24) = v8;
    v9 = specialized Data.init(referencing:)(v6);
    v11 = v10;
    _s10Foundation19PropertyListDecoderC6decode_4from6formatxxm_AA4DataVSo010NSPropertyC6FormatVztKSeRzlFAA23LocalizedStringResourceV_Tt0g5(v9, v10, v19);
    outlined consume of Data._Representation(v9, v11);
    swift_setDeallocating();

    v12 = &v2[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
    v13 = v25;
    *(v12 + 4) = v24;
    *(v12 + 5) = v13;
    *(v12 + 12) = v26;
    v14 = v21;
    *v12 = v20;
    *(v12 + 1) = v14;
    v15 = v23;
    *(v12 + 2) = v22;
    *(v12 + 3) = v15;
    v18.receiver = v2;
    v18.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v18, sel_init);

    return v16;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t _s10Foundation19PropertyListDecoderC6decode_4from6formatxxm_AA4DataVSo010NSPropertyC6FormatVztKSeRzlFAA23LocalizedStringResourceV_Tt0g5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v17 = v3;
  v18 = _s10Foundation19PropertyListDecoderC6decode_4from6formatxxm_AA4DataVSo010NSPropertyC6FormatVztKSeRzlFxAA06_PlistD18EntryPointProtocol_pKXEfU_AA23LocalizedStringResourceV_Tt1g5;
  v19 = 0;
  v20 = a3;
  v12 = v3;
  v13 = _s10Foundation19PropertyListDecoderC6decode_4from6formatxxm_AA4DataVSo010NSPropertyC6FormatVztKSeRzlFxAA06_PlistD18EntryPointProtocol_pKXEfU_AA23LocalizedStringResourceV_Tt1g5;
  v14 = 0;
  v15 = a3;
  v7 = v3;
  v8 = a3;
  v9 = _s10Foundation19PropertyListDecoderC6decode_4from6formatxxm_AA4DataVSo010NSPropertyC6FormatVztKSeRzlFxAA06_PlistD18EntryPointProtocol_pKXEfU_AA23LocalizedStringResourceV_Tt1g5;
  v10 = 0;
  v22 = partial apply for specialized closure #1 in PropertyListDecoder._decode<A>(_:from:format:);
  v23 = &v16;
  v24 = v4;
  v25 = partial apply for specialized closure #2 in PropertyListDecoder._decode<A>(_:from:format:);
  v26 = &v11;
  v27 = partial apply for specialized closure #3 in PropertyListDecoder._decode<A>(_:from:format:);
  v28 = &v6;
  v29 = v4;
  return _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFAA23LocalizedStringResourceV_Tg5015_s10Foundation4b56V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_AA23ghI5V_Tg5AA0M4ViewVys0R0VGxs5Error_pRi_zRi0_zlyAHIsgyrzo_Tf1ncn_n(a1, a2, partial apply for specialized closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:), v21);
}

uint64_t specialized closure #1 in static PropertyListDecoder.detectFormatAndConvertEncoding<A>(for:binaryPlist:xml:openstep:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t (*a4)(_OWORD *__return_ptr, char *, unint64_t)@<X5>, void (*a6)(id)@<X7>, uint64_t a7@<X8>)
{
  if (a2 >= 41 && *a1 == 1768714338 && *(a1 + 3) == 812938089)
  {
    return a3(a1, a2);
  }

  result = static PropertyListDecoder.detectEncoding(of:)(v50, a1, a2);
  if (!v7)
  {
    v15 = a2 - result;
    if (a2 < result)
    {
      __break(1u);
    }

    else
    {
      v16 = v50[0];
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v17 = result;
      _s10Foundation19PropertyListDecoderC22withUTF8Representation2of14sourceEncoding_xAA10BufferViewVys5UInt8VG_SSAAE0J0VxAKKXEtKlFZyt_Tt3B5016_s10Foundation19bcd78C30detectFormatAndConvertEncoding3for11binaryPlist3xml8openstepxAA4DataV_xAA10kl4Vys5M82VGKXExAOKXExSS05UTF16Q0VKXEtKlFZxAOKXEfU_yAOKXEfU_AA23LocalizedStringResourceV_Tg5AA23LocalizedStringResourceVSgAKxs5Error_pRi_zRi0_zlyAPIsgyrzo_Tf1nnnc_n((a1 + result), v15, v50[0], &v43, a4);
      v19 = *(&v43 + 1);
      if (*(&v43 + 1))
      {
        v20 = v45;
        v22 = v46;
        v21 = v47;
        *(a7 + 48) = v46;
        *(a7 + 64) = v21;
        v23 = v47;
        *(a7 + 80) = v48;
        v24 = v45;
        v25 = v44;
        *(a7 + 16) = v44;
        *(a7 + 32) = v24;
        v34[0] = v43;
        v34[1] = v44;
        v34[4] = v47;
        v34[5] = v48;
        v34[2] = v45;
        v34[3] = v46;
        *(a7 + 96) = v49;
        v26 = v43;
        v27 = v49;
        *a7 = v43;
        *(a7 + 8) = v19;
        v35 = v27;
        *&v36 = v26;
        *(&v36 + 1) = v19;
        v37 = v25;
        v38 = v20;
        v42 = v49;
        v40 = v23;
        v41 = v48;
        v39 = v22;
        outlined init with copy of LocalizedStringResource(&v36, v33);
        v18 = v34;
      }

      else
      {
        v28 = _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA10BufferViewVyAHG_Tt1B5((a1 + v17), v15, v16);
        if (v29)
        {
          a6(v28);
        }

        else
        {
          v30 = type metadata accessor for DecodingError();
          swift_allocError();
          v32 = v31;
          _CodingPathNode.path.getter(0x8000000000000000);
          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
          (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6B00], v30);
          swift_willThrow();
        }

        v40 = v47;
        v41 = v48;
        v42 = v49;
        v36 = v43;
        v37 = v44;
        v38 = v45;
        v39 = v46;
        v18 = &v36;
      }

      return outlined destroy of TermOfAddress?(v18, &_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource()
{
  result = lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource;
  if (!lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource;
  if (!lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource;
  if (!lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource;
  if (!lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource;
  if (!lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringResource and conformance LocalizedStringResource);
  }

  return result;
}

uint64_t _s10Foundation4DataV15_RepresentationO15withUnsafeBytesyxxSWKXEKlFAA23LocalizedStringResourceV_Tg5015_s10Foundation4b56V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_AA23ghI5V_Tg5AA0M4ViewVys0R0VGxs5Error_pRi_zRi0_zlyAHIsgyrzo_Tf1ncn_n(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 == 2)
    {
      return _s10Foundation4DataV10LargeSliceV15withUnsafeBytesyxxSWKXEKlFAA23LocalizedStringResourceV_Tg5015_s10Foundation4b56V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_AA23hiJ5V_Tg5AA0N4ViewVys0S0VGxs5Error_pRi_zRi0_zlyAHIsgyrzo_Tf1ncn_n(a1, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3);
    }

    memset(v8, 0, 14);
    v6 = 0;
    return (a3)(v8, v6);
  }

  if (!v4)
  {
    v8[0] = a1;
    LOWORD(v8[1]) = a2;
    BYTE2(v8[1]) = BYTE2(a2);
    BYTE3(v8[1]) = BYTE3(a2);
    v5 = a2 >> 40;
    BYTE4(v8[1]) = BYTE4(a2);
    v6 = BYTE6(a2);
    BYTE5(v8[1]) = v5;
    return (a3)(v8, v6);
  }

  if (a1 >> 32 < a1)
  {
    __break(1u);
  }

  return _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0L4ViewVys0Q0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1nncn_n(a1, a1 >> 32, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3);
}

uint64_t _s10Foundation13__DataStorageC15withUnsafeBytes2in5applyxSnySiG_xSWKXEtKlFyt_Tg5015_s10Foundation4B58V14withBufferViewyxxAA0dE0Vys5UInt8VGKXEKlFxSWKXEfU_yt_Tg5AA0L4ViewVys0Q0VGxs5Error_pRi_zRi0_zlyytIsgyrzo_Tf1nncn_n(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a3[2];
  if (v4)
  {
    v5 = a3[5];
    v6 = result - v5;
    if (__OFSUB__(result, v5))
    {
      __break(1u);
    }

    else
    {
      v7 = a2 - result;
      if (__OFSUB__(a2, result))
      {
        goto LABEL_14;
      }

      result = v6 + v4;
      if (!(v6 + v4))
      {
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (a3[3] >= v7)
      {
        a2 = v7;
      }

      else
      {
        a2 = a3[3];
      }

      if ((a2 & 0x8000000000000000) == 0)
      {
        return a4();
      }
    }

    __break(1u);
  }

  if (!__OFSUB__(a2, result))
  {
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

void specialized closure #1 in PropertyListDecoder._decode<A>(_:from:format:)(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(_OWORD *__return_ptr, uint64_t *)@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v112 = *MEMORY[0x1E69E9840];
  v11 = specialized static BPlistScanner.scanBinaryPropertyList(from:)(a1, a2);
  if (!v6)
  {
    v12 = *(a3 + 16);
    v13 = v11;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13_PlistDecoderCyAA21_BPlistDecodingFormatVGMd, &_s10Foundation13_PlistDecoderCyAA21_BPlistDecodingFormatVGMR);
    swift_allocObject();

    v26 = specialized _PlistDecoder.init(referencing:options:codingPathNode:)(v13, v12, 0x8000000000000000);
    *(&v107 + 1) = v14;
    v108 = &protocol witness table for _PlistDecoder<A>;
    v105 = v26;

    a4(v103, &v105);
    __swift_destroy_boxed_opaque_existential_1(&v105);
    if (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 && (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_27;
    }

    v33 = *(v26[3] + 64);

    os_unfair_lock_lock((v33 + 40));
    if (*(v33 + 32))
    {
LABEL_26:
      os_unfair_lock_unlock((v33 + 40));

LABEL_27:

      *a5 = 200;
      v37 = v103[5];
      *(a6 + 64) = v103[4];
      *(a6 + 80) = v37;
      *(a6 + 96) = v104;
      v38 = v103[1];
      *a6 = v103[0];
      *(a6 + 16) = v38;
      v39 = v103[3];
      *(a6 + 32) = v103[2];
      *(a6 + 48) = v39;
      return;
    }

    v34 = *(v33 + 24);
    if (!__OFADD__(v34, 1))
    {
      v97 = *(v33 + 16);
      v100 = v34 + 1;
      v35 = swift_slowAlloc();
      if ((v34 & 0x8000000000000000) == 0)
      {
        v36 = v35;
        memmove(v35, v97, v34);
        v36[v34] = 0;
        if ((v100 & 0x8000000000000000) == 0)
        {
          *(v33 + 16) = v36;
          *(v33 + 24) = v100;
          *(v33 + 32) = v36;
          goto LABEL_26;
        }

LABEL_114:
        __break(1u);
      }

LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_108;
  }

  v99 = v110;
  v16 = type metadata accessor for DecodingError();
  swift_allocError();
  v18 = v17;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v20 = @"NSDebugDescription";
  v21 = v20;
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

          goto LABEL_32;
        }

        goto LABEL_9;
      }

      v30 = [(__CFString *)v21 UTF8String];
      if (!v30)
      {
        __break(1u);
        goto LABEL_116;
      }

      v31 = String.init(utf8String:)(v30);
      if (v32)
      {
LABEL_18:
        v23 = v31;
        v25 = v32;

        goto LABEL_32;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v32)
    {
      [(__CFString *)v21 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v23 = v101;
      v25 = v102;
      goto LABEL_32;
    }

    goto LABEL_18;
  }

LABEL_9:
  LOBYTE(v101) = 0;
  v105 = 0;
  if (__CFStringIsCF())
  {
    v23 = v105;

LABEL_13:
    v25 = 0xE000000000000000;
    goto LABEL_32;
  }

  v27 = v21;
  v28 = String.init(_nativeStorage:)();
  if (v29)
  {
    v23 = v28;
    v25 = v29;

    goto LABEL_32;
  }

  v105 = [(__CFString *)v27 length];
  if (!v105)
  {

    v23 = 0;
    goto LABEL_13;
  }

  v23 = String.init(_cocoaString:)();
  v25 = v40;
LABEL_32:
  v109[0] = v23;
  v109[1] = v25;
  v96 = v18;
  v98 = v111;
  if (v111)
  {
    if (v111 == 1)
    {
      v41 = 0x8000000181484EC0;
      v42 = 0xD000000000000016;
    }

    else
    {
      _StringGuts.grow(_:)(16);

      v105 = 0x2074707572726F43;
      v106 = 0xE800000000000000;
      MEMORY[0x1865CB0E0](v110, v111);
      MEMORY[0x1865CB0E0](0x65756C617620, 0xE600000000000000);
      v42 = 0x2074707572726F43;
      v41 = 0xE800000000000000;
    }
  }

  else
  {
    v41 = 0xEE0072656B72616DLL;
    v42 = 0x2064696C61766E49;
  }

  v109[5] = MEMORY[0x1E69E6158];
  v109[2] = v42;
  v109[3] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v43 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of FloatingPointRoundingRule?(v109, &v105, &_sSS_yptMd, &_sSS_yptMR);

  outlined destroy of TermOfAddress?(v109, &_sSS_yptMd, &_sSS_yptMR);
  v44 = v105;
  v45 = v106;
  v46 = specialized __RawDictionaryStorage.find<A>(_:)(v105, v106);
  v48 = v47;

  if (v48)
  {
    __break(1u);
    goto LABEL_110;
  }

  v43[(v46 >> 6) + 8] |= 1 << v46;
  v49 = (v43[6] + 16 * v46);
  *v49 = v44;
  v49[1] = v45;
  outlined init with take of Any(&v107, (v43[7] + 32 * v46));
  v50 = v43[2];
  v51 = __OFADD__(v50, 1);
  v52 = v50 + 1;
  if (v51)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v95 = v16;
  v43[2] = v52;
  v53 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v54 = @"NSCocoaErrorDomain";
  v55 = v54;
  if (!v53)
  {
    goto LABEL_44;
  }

  v56 = _objc_getTaggedPointerTag(v54);
  switch(v56)
  {
    case 0:
LABEL_53:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v61)
      {
        [(__CFString *)v55 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_59;
      }

      goto LABEL_54;
    case 0x16:
      v59 = [(__CFString *)v55 UTF8String];
      if (v59)
      {
        String.init(utf8String:)(v59);
        if (v60)
        {
          goto LABEL_54;
        }

        __break(1u);
        goto LABEL_53;
      }

LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    case 2:
      MEMORY[0x1EEE9AC00](v56);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_59;
  }

LABEL_44:
  LOBYTE(v101) = 0;
  v105 = 0;
  if (!__CFStringIsCF())
  {
    v57 = v55;
    String.init(_nativeStorage:)();
    if (v58 || (v105 = [(__CFString *)v57 length]) == 0)
    {

      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (!v105)
  {
LABEL_54:

    goto LABEL_59;
  }

LABEL_58:
  String.init(_cocoaString:)();
LABEL_59:
  v62 = objc_allocWithZone(NSError);
  v63 = String._bridgeToObjectiveCImpl()();

  v64 = [v62 initWithDomain:v63 code:3840 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v65 = [v64 domain];
  if (!v65)
  {
    goto LABEL_78;
  }

  v66 = v65;
  v67 = _objc_isTaggedPointer(v65);
  v68 = v66;
  v69 = v68;
  if ((v67 & 1) == 0)
  {
LABEL_65:
    LOBYTE(v101) = 0;
    v105 = 0;
    if (__CFStringIsCF())
    {
      v71 = v105;
      if (!v105)
      {

        v73 = 0xE000000000000000;
        goto LABEL_82;
      }

LABEL_80:
      v71 = String.init(_cocoaString:)();
      v73 = v80;
      goto LABEL_81;
    }

    v74 = v69;
    v75 = String.init(_nativeStorage:)();
    if (v76)
    {
      v71 = v75;
      v73 = v76;

      goto LABEL_82;
    }

    v105 = [v74 length];
    if (v105)
    {
      goto LABEL_80;
    }

LABEL_78:
    v71 = 0;
    v73 = 0xE000000000000000;
    goto LABEL_82;
  }

  v70 = _objc_getTaggedPointerTag(v68);
  if (!v70)
  {
    goto LABEL_74;
  }

  if (v70 != 22)
  {
    if (v70 == 2)
    {
      MEMORY[0x1EEE9AC00](v70);
      v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v73 = v72;

LABEL_82:
      v81 = v55;
      v82 = v81;
      if (!v53)
      {
        goto LABEL_87;
      }

      v83 = _objc_getTaggedPointerTag(v81);
      if (!v83)
      {
        goto LABEL_97;
      }

      if (v83 != 22)
      {
        if (v83 == 2)
        {
          MEMORY[0x1EEE9AC00](v83);
          v84 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v86 = v85;

          goto LABEL_103;
        }

LABEL_87:
        v105 = 0;
        if (__CFStringIsCF())
        {
          if (v105)
          {
LABEL_102:
            v84 = String.init(_cocoaString:)();
            v86 = v93;
LABEL_103:
            if (v71 == v84 && v73 == v86)
            {
              outlined consume of URL.ParseStrategy.ComponentParseStrategy<String>(v99, v98);

LABEL_107:
              DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
              (*(*(v95 - 8) + 104))(v96, *MEMORY[0x1E69E6B00]);
              swift_willThrow();
LABEL_108:

              return;
            }

            v94 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined consume of URL.ParseStrategy.ComponentParseStrategy<String>(v99, v98);

            if (v94)
            {
              goto LABEL_107;
            }

LABEL_111:
            __break(1u);
            goto LABEL_112;
          }
        }

        else
        {
          v87 = v82;
          v88 = String.init(_nativeStorage:)();
          if (v89)
          {
            v84 = v88;
            v86 = v89;

            goto LABEL_103;
          }

          v105 = [(__CFString *)v87 length];
          if (v105)
          {
            goto LABEL_102;
          }
        }

        v84 = 0;
        v86 = 0xE000000000000000;
        goto LABEL_103;
      }

      v90 = [(__CFString *)v82 UTF8String];
      if (v90)
      {
        v91 = String.init(utf8String:)(v90);
        if (v92)
        {
          goto LABEL_98;
        }

        __break(1u);
LABEL_97:
        _CFIndirectTaggedPointerStringGetContents();
        v91 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v92)
        {
          [(__CFString *)v82 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v84 = v101;
          v86 = v102;
          goto LABEL_103;
        }

LABEL_98:
        v84 = v91;
        v86 = v92;

        goto LABEL_103;
      }

      goto LABEL_117;
    }

    goto LABEL_65;
  }

  v77 = [v69 UTF8String];
  if (v77)
  {
    v78 = String.init(utf8String:)(v77);
    if (v79)
    {
      goto LABEL_75;
    }

    __break(1u);
LABEL_74:
    _CFIndirectTaggedPointerStringGetContents();
    v78 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v79)
    {
      [v69 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v71 = v101;
      v73 = v102;
      goto LABEL_81;
    }

LABEL_75:
    v71 = v78;
    v73 = v79;

LABEL_81:
    goto LABEL_82;
  }

LABEL_118:
  __break(1u);
}

uint64_t _s10Foundation19PropertyListDecoderC6decode_4from6formatxxm_AA4DataVSo010NSPropertyC6FormatVztKSeRzlFxAA06_PlistD18EntryPointProtocol_pKXEfU_AA23LocalizedStringResourceV_Tt1g5(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = *(v2 + 8);
  v4 = lazy protocol witness table accessor for type LocalizedStringResource and conformance LocalizedStringResource();
  return v3(&type metadata for LocalizedStringResource, &type metadata for LocalizedStringResource, v4, v1, v2);
}

uint64_t LocalizedStringResource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation23LocalizedStringResourceV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation23LocalizedStringResourceV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v56) = 0;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  LOBYTE(v49) = 1;
  lazy protocol witness table accessor for type String.LocalizationValue and conformance String.LocalizationValue();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v47 = v12;
  v13 = v57;
  v46 = v56;
  v45 = v58;
  LOBYTE(v56) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v15;
  v42 = v14;
  v43 = v13;
  LOBYTE(v49) = 3;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = 0;
  v41 = v56;
  v40 = v57;
  LOBYTE(v49) = 4;
  lazy protocol witness table accessor for type URL and conformance URL();
  v16 = v48;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = v16;
  if (v16)
  {
    (*(v6 + 8))(v8, v5);
    v17 = 0;
  }

  else
  {
    v18 = v56;
    v19 = v57;
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 144);
    v39 = v18;
    v38 = v19;
    if (v21(ObjectType, v19))
    {
      v69 = 5;
      v22 = v48;
      v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v48 = v22;
      if (!v22)
      {
        v25 = v24;
        v26 = v23;
        (*(v6 + 8))(v8, v5);
        *&v49 = v10;
        *(&v49 + 1) = v47;
        v27 = v46;
        *&v50 = v46;
        *(&v50 + 1) = v43;
        v28 = v45;
        *&v51 = v45;
        v29 = v44;
        *(&v51 + 1) = v42;
        *&v52 = v44;
        v30 = v41;
        *(&v52 + 1) = v41;
        *&v53 = v40;
        *(&v53 + 1) = v39;
        *&v54 = v38;
        *(&v54 + 1) = v26;
        v55 = v25;
        *(a2 + 96) = v25;
        v31 = v54;
        *(a2 + 64) = v53;
        *(a2 + 80) = v31;
        v32 = v50;
        *a2 = v49;
        *(a2 + 16) = v32;
        v33 = v52;
        *(a2 + 32) = v51;
        *(a2 + 48) = v33;
        outlined init with copy of LocalizedStringResource(&v49, &v56);
        __swift_destroy_boxed_opaque_existential_1(a1);
        v56 = v10;
        v57 = v47;
        v58 = v27;
        v59 = v43;
        v60 = v28;
        v61 = v42;
        v62 = v29;
        v63 = v30;
        v64 = v40;
        v65 = v39;
        v66 = v38;
        v67 = v26;
        v68 = v25;
        return outlined destroy of LocalizedStringResource(&v56);
      }
    }

    else
    {
      v34 = type metadata accessor for DecodingError();
      v35 = swift_allocError();
      v37 = v36;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v37, *MEMORY[0x1E69E6B00], v34);
      v48 = v35;
      swift_willThrow();
    }

    (*(v6 + 8))(v8, v5);
    v17 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);

  result = swift_unknownObjectRelease();
  if (v17)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys;
  if (!lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocalizedStringResource.CodingKeys and conformance LocalizedStringResource.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LocalizedStringResource.CodingKeys()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x656C61636F6CLL;
  v4 = 0x5255656C646E7562;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x56746C7561666564;
  if (v1 != 1)
  {
    v5 = 0x656C626174;
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

unint64_t lazy protocol witness table accessor for type String.LocalizationValue and conformance String.LocalizationValue()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue and conformance String.LocalizationValue);
  }

  return result;
}

uint64_t String.LocalizationValue.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v68 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd, &_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMR);
  v82 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys();
  v18 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v81;
  v77 = a1;
  v83 = v14;
  v84 = v11;
  v76 = v8;
  LOBYTE(v85[0]) = 0;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v17;
  v24 = v23;
  v25 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOGMd, &_sSaySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOGMR);
  LOBYTE(v87) = 1;
  lazy protocol witness table accessor for type [String.LocalizationValue.FormatArgument.CodableStorage] and conformance <A> [A](&lazy protocol witness table cache variable for type [String.LocalizationValue.FormatArgument.CodableStorage] and conformance <A> [A], &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage and conformance String.LocalizationValue.FormatArgument.CodableStorage, &protocol conformance descriptor for String.LocalizationValue.FormatArgument.CodableStorage, MEMORY[0x1E69E6330]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = *&v85[0];
  v27 = *(*&v85[0] + 16);
  if (v27)
  {
    v70 = v25;
    v72 = v21;
    v73 = v24;
    v74 = v15;
    v75 = 0;
    *&v85[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v28 = *&v85[0];
    v29 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v71 = v26;
    v30 = v26 + v29;
    v81 = *(v19 + 72);
    v69 = v30;
    while (2)
    {
      v31 = v83;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v30, v83, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v32 = v84;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v31, v84, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
      v33 = 0xE200000000000000;
      v34 = 25637;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          goto LABEL_14;
        case 2u:
          goto LABEL_27;
        case 3u:
          v34 = 29989;
          goto LABEL_14;
        case 4u:
          goto LABEL_26;
        case 5u:
          goto LABEL_23;
        case 6u:
        case 7u:
          goto LABEL_22;
        case 9u:
          goto LABEL_13;
        case 0xDu:
          v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMd, &_sSi_SS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVtMR) + 48);
          v38 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle;
          goto LABEL_11;
        case 0xEu:
          v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMd, &_sSd_SS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVtMR) + 48);
          v38 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle;
          goto LABEL_11;
        case 0xFu:
          v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMd, &_sSo9NSDecimala_SS10FoundationE17LocalizationValueV14FormatArgumentV07DecimalfE5StyleVtMR) + 48);
          v38 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle;
LABEL_11:
          v35 = v38;
          v36 = &v32[v37];
          goto LABEL_12;
        case 0x11u:
          v42 = *v32;
          if (v42 <= 1)
          {
            if (*v32)
            {
              if (v42 != 1)
              {
LABEL_13:
                v34 = 16421;
                goto LABEL_14;
              }

LABEL_26:
              v33 = 0xE400000000000000;
              v34 = 1970039845;
            }

            else
            {
LABEL_27:
              v33 = 0xE400000000000000;
              v34 = 1684827173;
            }
          }

          else if (v42 == 2)
          {
LABEL_23:
            v34 = 26149;
          }

          else
          {
            if (v42 != 3)
            {
              goto LABEL_13;
            }

LABEL_22:
            v33 = 0xE300000000000000;
            v34 = 6712357;
          }

LABEL_14:
          outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v31, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
          *&v85[0] = v28;
          v40 = v28[2];
          v39 = v28[3];
          if (v40 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
            v28 = *&v85[0];
          }

          v28[2] = v40 + 1;
          v41 = &v28[2 * v40];
          v41[4] = v34;
          v41[5] = v33;
          v30 += v81;
          if (--v27)
          {
            continue;
          }

          v43 = 0;
          v44 = 0;
          v45 = v40 + 1;
          v46 = v28 + 5;
          v47 = 0xE000000000000000;
          v48 = v82;
          do
          {
            if (v44 >= v28[2])
            {
              __break(1u);
              JUMPOUT(0x1808AA3CCLL);
            }

            ++v44;
            v49 = *(v46 - 1);
            v50 = *v46;
            *&v85[0] = v43;
            *(&v85[0] + 1) = v47;

            MEMORY[0x1865CB0E0](v49, v50);

            v47 = *(&v85[0] + 1);
            v43 = *&v85[0];
            v46 += 2;
          }

          while (v45 != v44);

          v15 = v74;
          v21 = v72;
          v51 = KeyedDecodingContainer.codingPath.getter();
          v25 = v70;
          v24 = v73;
          v52 = v75;
          _assertValidDecodedFormat(_:validFormatSpecifiers:codingPath:)(v70, v73, v43, v47, v51);
          if (v52)
          {
            (*(v48 + 8))(v21, v15);

            __swift_destroy_boxed_opaque_existential_1(v77);
          }

          v53 = *(v71 + 16);
          if (!v53)
          {
            goto LABEL_38;
          }

          v75 = 0;
          v87 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53, 0);
          v54 = v87;
          v55 = v82;
          v56 = v78;
          v57 = v76;
          v58 = v69;
          do
          {
            _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v58, v57, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
            _sSS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOWOcTm_0(v57, v56, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
            String.LocalizationValue.FormatArgument.init(_:)(v56, v85);
            outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v57, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
            v87 = v54;
            v60 = *(v54 + 16);
            v59 = *(v54 + 24);
            if (v60 >= v59 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
              v54 = v87;
            }

            *(v54 + 16) = v60 + 1;
            v61 = (v54 + 112 * v60);
            v62 = v85[0];
            v63 = v85[2];
            v61[3] = v85[1];
            v61[4] = v63;
            v61[2] = v62;
            v64 = v85[3];
            v65 = v85[4];
            v66 = v86[0];
            *(v61 + 121) = *(v86 + 9);
            v61[6] = v65;
            v61[7] = v66;
            v61[5] = v64;
            v58 += v81;
            --v53;
            v57 = v76;
          }

          while (v53);
          (*(v55 + 8))(v72, v74);

          v24 = v73;
          break;
        default:
          v35 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage;
          v36 = v32;
LABEL_12:
          outlined destroy of String.LocalizationValue.FormatArgument.CodableStorage(v36, v35);
          goto LABEL_13;
      }

      break;
    }
  }

  else
  {
LABEL_38:

    (*(v82 + 8))(v21, v15);
    v54 = MEMORY[0x1E69E7CC0];
  }

  v67 = v79;
  *v79 = v54;
  v67[1] = v25;
  v67[2] = v24;

  __swift_destroy_boxed_opaque_existential_1(v77);
}

unint64_t lazy protocol witness table accessor for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance String.LocalizationValue.CodingKeys()
{
  if (*v0)
  {
    return 0x746E656D75677261;
  }

  else
  {
    return 7955819;
  }
}

uint64_t lazy protocol witness table accessor for type [String.LocalizationValue.FormatArgument.CodableStorage] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOGMd, &_sSaySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOGMR);
    lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage and conformance String.LocalizationValue.FormatArgument.CodableStorage(a2, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.RelativeFormatStyle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.RelativeFormatStyle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void Locale.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation6LocaleV10CodingKeys33_2AAD75EEA5F8B89D2896E171C663EB3ELLOGMd, &_ss22KeyedDecodingContainerVy10Foundation6LocaleV10CodingKeys33_2AAD75EEA5F8B89D2896E171C663EB3ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Locale.CodingKeys and conformance Locale.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v21 = 1;
    lazy protocol witness table accessor for type Locale.Current and conformance Locale.Current();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v19 > 1u)
    {
      if (v19 == 2)
      {
        type metadata accessor for _LocaleAutoupdating();
        inited = swift_initStaticObject();
        (*(v6 + 8))(v8, v5);
        v11 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating, &protocol conformance descriptor for _LocaleAutoupdating);
LABEL_13:
        *a2 = inited;
        a2[1] = v11;
        goto LABEL_14;
      }
    }

    else if (v19)
    {
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      v19 = static LocaleCache.cache;
      v20 = qword_1ED4404B0;
      inited = LocaleCache._currentAndCache.getter();
      v11 = v10;
LABEL_12:
      (*(v6 + 8))(v8, v5);
      goto LABEL_13;
    }

    LOBYTE(v19) = 0;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    if (one-time initialization token for cache != -1)
    {
      v17 = v12;
      swift_once();
      v12 = v17;
    }

    v18[1] = v18;
    v15 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v12);
    v18[-2] = v16;
    v18[-1] = v14;
    os_unfair_lock_lock((v15 + 48));
    closure #1 in LocaleCache.fixed(_:)partial apply((v15 + 16), &v19);
    os_unfair_lock_unlock((v15 + 48));
    v11 = *(&v19 + 1);
    inited = v19;

    goto LABEL_12;
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type Locale.CodingKeys and conformance Locale.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys;
  if (!lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.CodingKeys and conformance Locale.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Locale.Current and conformance Locale.Current()
{
  result = lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current;
  if (!lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current;
  if (!lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current;
  if (!lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current;
  if (!lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Locale.Current and conformance Locale.Current);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Locale.CodingKeys()
{
  if (*v0)
  {
    return 0x746E6572727563;
  }

  else
  {
    return 0x696669746E656469;
  }
}

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance NumberFormatStyleConfiguration.Notation.Option@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t URL.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation3URLV10CodingKeys33_FB6C8C127CB51A72D58E049FC6F7743FLLOGMd, &_ss22KeyedDecodingContainerVy10Foundation3URLV10CodingKeys33_FB6C8C127CB51A72D58E049FC6F7743FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.CodingKeys and conformance URL.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v21) = 1;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v12 = v9;
    LOBYTE(v20) = 0;
    lazy protocol witness table accessor for type URL and conformance URL();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v21;
    v20 = v21;
    URL.init(string:relativeTo:)(v12, v11, &v20, &v21);

    v13 = v21;
    if (v21)
    {
      v14 = *(&v21 + 1);
      (*(v6 + 8))(v8, v5);
      swift_unknownObjectRelease();
      *a2 = v13;
      a2[1] = v14;
    }

    else
    {
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v17;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v18 = v22;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B00], v16);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v6 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type URL.CodingKeys and conformance URL.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.CodingKeys and conformance URL.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance URL.CodingKeys()
{
  if (*v0)
  {
    return 0x65766974616C6572;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t specialized _SwiftURL.__allocating_init(string:relativeTo:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a3[1];
    v6[0] = *a3;
    v6[1] = v4;
    result = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(a1, a2, v6);
    if (result)
    {
      return result;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_1808ABF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PropertyListEncoder.outputFormat.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  os_unfair_lock_lock(v3 + 4);

  *(v1 + 16) = a1;
  v4 = *(v1 + 32);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t NSFileCoordinatorGetTSD()
{
  v0 = _CFGetTSD();
  if (!v0)
  {
    v0 = malloc_type_calloc(1uLL, 0x40uLL, 0x10E0040124FB198uLL);
    _CFSetTSD();
  }

  return v0;
}

CFStringRef __CFCreateUUIDString()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  CFRelease(v0);
  return v1;
}

NSFileAccessArbiterProxy *NSFileCoordinatorSharedAccessArbiter()
{
  v1[5] = *MEMORY[0x1E69E9840];
  result = qword_1ED440180;
  if (!qword_1ED440180)
  {
    if (qword_1ED440168)
    {
      result = __NSFileCoordinatorSharedAccessArbiter_block_invoke();
      qword_1ED440180 = result;
    }

    else
    {
      v1[0] = MEMORY[0x1E69E9820];
      v1[1] = 3221225472;
      v1[2] = __NSFileCoordinatorSharedAccessArbiter_block_invoke_2;
      v1[3] = &unk_1E69F40C0;
      v1[4] = &__block_literal_global_945;
      if (qword_1ED4401A0 != -1)
      {
        dispatch_once(&qword_1ED4401A0, v1);
      }

      return qword_1ED4401A8;
    }
  }

  return result;
}

uint64_t __NSFileCoordinatorSharedAccessArbiter_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  qword_1ED4401A8 = result;
  return result;
}

NSFileAccessArbiterProxy *__NSFileCoordinatorSharedAccessArbiter_block_invoke()
{
  v0 = qos_class_main();
  v1 = dispatch_queue_attr_make_with_qos_class(0, v0, 0);
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(v1, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.FileCoordination.3", v2);
  v4 = [NSFileCoordinator _createConnectionToFileAccessArbiterForQueue:v3];
  [v4 setRemoteObjectInterface:{+[NSFileCoordinator _fileAccessArbiterInterface](NSFileCoordinator, "_fileAccessArbiterInterface")}];
  [v4 setOptions:4096];
  v5 = [[NSFileAccessArbiterProxy alloc] initWithServer:v4 queue:v3];
  [v4 resume];

  dispatch_release(v3);
  return v5;
}

BOOL __NSFCShouldLog(int a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(&_NSFCSubarbitrationCount);
  if (v1 < 1)
  {
    return 1;
  }

  v3 = atomic_load(_NSFCDisableLogSuppression);
  if (v3)
  {
    return 1;
  }

  v4 = 0xFFFFFFFFLL;
  if (a1 == 2)
  {
    v4 = 100;
  }

  if (a1 == 1)
  {
    v5 = 200;
  }

  else
  {
    v5 = v4;
  }

  add = atomic_fetch_add(&_NSFCSubarbitratedClaimCount, 1uLL);
  if (add == 200)
  {
    if (qword_1ED440198 != -1)
    {
      dispatch_once(&qword_1ED440198, &__block_literal_global_935);
    }

    v7 = qword_1ED440100;
    if (!os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
    {
      return add < v5;
    }

    v10 = 0;
    v8 = "Further suppressing excessive logging";
    v9 = &v10;
  }

  else
  {
    if (add != 100)
    {
      return add < v5;
    }

    if (qword_1ED440198 != -1)
    {
      dispatch_once(&qword_1ED440198, &__block_literal_global_935);
    }

    v7 = qword_1ED440100;
    if (!os_log_type_enabled(qword_1ED440100, OS_LOG_TYPE_DEFAULT))
    {
      return add < v5;
    }

    v11 = 0;
    v8 = "Suppressing excessive logging";
    v9 = &v11;
  }

  _os_log_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
  return add < v5;
}

os_log_t ___initFCLoggers_block_invoke()
{
  qword_1ED4400F8 = os_log_create("com.apple.foundation.filecoordination", "general");
  qword_1ED440100 = os_log_create("com.apple.foundation.filecoordination", "claims");
  qword_1ED440108 = os_log_create("com.apple.foundation.filecoordination", "presenter");
  qword_1ED440110 = os_log_create("com.apple.foundation.filecoordination", "provider");
  qword_1ED440118 = os_log_create("com.apple.foundation.filecoordination", "process-monitor");
  result = os_log_create("com.apple.foundation.filecoordination", "fsevents");
  qword_1ED440120 = result;
  return result;
}

uint64_t _NSFCClaimsLog()
{
  if (qword_1ED440198 != -1)
  {
    dispatch_once(&qword_1ED440198, &__block_literal_global_935);
  }

  return qword_1ED440100;
}

NSString *_canonicalStringRepresentation(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = +[NSFileManager defaultManager];
  if ([(NSFileManager *)v2 getFileSystemRepresentation:__s maxLength:1024 withPath:a1])
  {
    return [(NSFileManager *)v2 stringWithFileSystemRepresentation:__s length:strlen(__s)];
  }

  return a1;
}

uint64_t _NSFCProcessMonitorLog()
{
  if (qword_1ED440198 != -1)
  {
    dispatch_once(&qword_1ED440198, &__block_literal_global_935);
  }

  return qword_1ED440118;
}

uint64_t _NSSetThreadSpecificMaterializationState(int a1, int *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = getiopolicy_np(3, 1);
  if (v4 == -1)
  {
    if (qword_1ED440198 != -1)
    {
      dispatch_once(&qword_1ED440198, &__block_literal_global_935);
    }

    v11 = qword_1ED4400F8;
    if (!os_log_type_enabled(qword_1ED4400F8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v13 = *__error();
    v14 = 67109120;
    v15 = v13;
    v8 = "Failed to get thread materialization iopolicy value: %{darwin.errno}d";
    v9 = v11;
    v10 = 8;
    goto LABEL_14;
  }

  *a2 = v4;
  v5 = 1;
  if (v4 != a1 && setiopolicy_np(3, 1, a1))
  {
    if (qword_1ED440198 != -1)
    {
      dispatch_once(&qword_1ED440198, &__block_literal_global_935);
    }

    v6 = qword_1ED4400F8;
    if (!os_log_type_enabled(qword_1ED4400F8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v7 = *__error();
    v14 = 67109376;
    v15 = a1;
    v16 = 1024;
    v17 = v7;
    v8 = "Failed to set thread materialization iopolicy value (%d): %{darwin.errno}d";
    v9 = v6;
    v10 = 14;
LABEL_14:
    _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
    return 0;
  }

  return v5;
}

uint64_t NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_181218E20;
  *(v7 + 32) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
  v8 = _ContiguousArrayBuffer._asCocoaArray()();
  v9 = String._bridgeToObjectiveCImpl()();
  v10 = __NSCoderDecodeArrayOfObjectsOfClassesForKey(v4, v8, v9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v10)
  {
    type metadata accessor for __SwiftDeferredNSArray();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      v12 = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      swift_unknownObjectRelease();
      [v10 copy];
      v15 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      v14 = specialized _arrayForceCast<A, B>(_:)(v15);
    }

    v16 = specialized _arrayConditionalCast<A, B>(_:)(v14, a4);

    return v16;
  }

  else
  {

    return 0;
  }
}

uint64_t __NSCoderDecodeArrayOfObjectsOfClassesForKey(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DFD8] setWithArray:a2];

  return [a1 decodeArrayOfObjectsOfClasses:v5 forKey:a3];
}

unint64_t NSCoder.decodeDictionary<A, B>(withKeyClass:objectClass:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_181218E20;
  *(v12 + 32) = a1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_181218E20;
  *(inited + 32) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
  v14 = _ContiguousArrayBuffer._asCocoaArray()();
  specialized _arrayForceCast<A, B>(_:)(inited);
  swift_setDeallocating();
  v15 = _ContiguousArrayBuffer._asCocoaArray()();
  v16 = String._bridgeToObjectiveCImpl()();
  v17 = __NSCoderDecodeDictionaryWithKeysOfClassesObjectsOfClassesForKey(v7, v14, v15, v16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v17)
  {
    v21 = 0;
    goto LABEL_5;
  }

  v22 = 0;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(v17, &v22);
  v19 = v22;
  if (v22)
  {

    WitnessTable = swift_getWitnessTable();
    v21 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v19, a5, a6, WitnessTable);
LABEL_5:

    return v21;
  }

  __break(1u);
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation16JSONEncoderValueOGMd, &_ss23_ContiguousArrayStorageCy10Foundation16JSONEncoderValueOGMR, &type metadata for JSONEncoderValue);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOGMd, &_ss23_ContiguousArrayStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOGMR, &type metadata for _XMLPlistEncodingFormat.Reference);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation10JSONFutureOGMd, &_ss23_ContiguousArrayStorageCy10Foundation10JSONFutureOGMR, &type metadata for JSONFuture);
  *v3 = result;
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd, &_syXlXpMR);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x123uLL);
      memcpy(v8, v4, sizeof(v8));
      outlined init with copy of FloatingPointRoundingRule?(__dst, __src, &_s10Foundation4DateV_AA0B10ComponentsVtMd, &_s10Foundation4DateV_AA0B10ComponentsVtMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA0B10ComponentsVtMd, &_s10Foundation4DateV_AA0B10ComponentsVtMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMR);
      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      memcpy(v8, __src, sizeof(v8));
      *(v2 + 16) = v6 + 1;
      memcpy((v2 + 296 * v6 + 32), v8, 0x123uLL);
      v4 += 296;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x123uLL);
      memcpy(v8, v4, sizeof(v8));
      outlined init with copy of FloatingPointRoundingRule?(__dst, __src, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMd, &_s10Foundation4DateV4date_AA0B10ComponentsV10componentstMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA0B10ComponentsVtMd, &_s10Foundation4DateV_AA0B10ComponentsVtMR);
      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      memcpy(v8, __src, sizeof(v8));
      *(v2 + 16) = v6 + 1;
      memcpy((v2 + 296 * v6 + 32), v8, 0x123uLL);
      v4 += 296;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t __NSCoderDecodeDictionaryWithKeysOfClassesObjectsOfClassesForKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [MEMORY[0x1E695DFD8] setWithArray:a2];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:a3];

  return [a1 decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v8 forKey:a4];
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = type metadata accessor for Optional();
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v146 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v135 = &v120 - v10;
  v124 = type metadata accessor for Optional();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v133 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v120 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v132 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v127 = (&v120 - v16);
  v138 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v138);
  v131 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v126 = &v120 - v19;
  v20 = a3;
  v147 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v145 = (&v120 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v130 = &v120 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v142 = &v120 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v154 = &v120 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v125 = &v120 - v32;
  v153 = a2;
  v148 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v144 = &v120 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v134 = &v120 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v129 = &v120 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v149 = &v120 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v128 = &v120 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v152 = (&v120 - v44);
  v151 = a1;
  if (*(a1 + 16))
  {
    type metadata accessor for _DictionaryStorage();
    v45 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v45 = MEMORY[0x1E69E7CC8];
  }

  v140 = a4;
  v46 = v151 + 64;
  v47 = 1 << *(v151 + 32);
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & *(v151 + 64);
  v150 = a3;
  v141 = v45;
  v137 = v151 + 64;
  v50 = (v47 + 63) >> 6;
  if (v153 == MEMORY[0x1E69E6158])
  {
    v144 = (v148 + 56);
    v87 = (v148 + 32);
    v143 = (v147 + 56);
    v145 = (v147 + 32);
    v130 = (v45 + 64);
    v132 = (v148 + 40);
    v131 = (v147 + 40);

    v88 = 0;
    v134 = v50;
    v133 = v87;
    if (v49)
    {
      goto LABEL_30;
    }

    while (1)
    {
LABEL_31:
      v89 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        goto LABEL_52;
      }

      if (v89 >= v50)
      {
        break;
      }

      v49 = *(v46 + 8 * v89);
      ++v88;
      if (v49)
      {
        while (1)
        {
          v90 = __clz(__rbit64(v49)) | (v89 << 6);
          v91 = v151;
          outlined init with copy of AnyHashable(*(v151 + 48) + 40 * v90, &v161);
          outlined init with copy of Any(*(v91 + 56) + 32 * v90, &v163 + 8);
          v158 = v163;
          v159 = v164;
          v160 = v165;
          v156 = v161;
          v157 = v162;
          outlined init with copy of AnyHashable(&v156, v155);
          v59 = v136;
          if (!swift_dynamicCast())
          {
            outlined destroy of TermOfAddress?(&v156, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

            (*v144)(v59, 1, 1, MEMORY[0x1E69E6158]);
LABEL_45:
            (*(v123 + 8))(v59, v124);
            goto LABEL_48;
          }

          v92 = MEMORY[0x1E69E6158];
          (*v144)(v59, 0, 1, MEMORY[0x1E69E6158]);
          v93 = *v87;
          v94 = v128;
          (*v87)(v128, v59, v92);
          outlined init with copy of Any(&v158 + 8, v155);
          outlined destroy of TermOfAddress?(&v156, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
          v95 = v135;
          if ((swift_dynamicCast() & 1) == 0)
          {
            break;
          }

          v49 &= v49 - 1;
          (*v143)(v95, 0, 1, v20);
          v96 = *v145;
          (*v145)(v154, v95, v20);
          v97 = v96;
          v146 = v96;
          v98 = *(TupleTypeMetadata2 + 48);
          v153 = v98;
          v99 = v93;
          v100 = v127;
          v101 = MEMORY[0x1E69E6158];
          v99(v127, v94, MEMORY[0x1E69E6158]);
          v97(v100 + v98, v154, v20);
          v102 = v138;
          v103 = *(v138 + 48);
          v104 = v126;
          v99(v126, v100, v101);
          v105 = &v104[v103];
          v20 = v150;
          v106 = v149;
          v107 = v146;
          (v146)(v105, v100 + v153, v150);
          v108 = *(v102 + 48);
          v99(v152, v104, MEMORY[0x1E69E6158]);
          v109 = &v104[v108];
          v110 = v125;
          v111 = v107;
          (v107)(v125, v109, v20);
          v112 = MEMORY[0x1E69E6158];
          v99(v106, v152, MEMORY[0x1E69E6158]);
          v113 = v110;
          v114 = v111;
          (v111)(v142, v113, v20);
          v45 = v141;
          result = __RawDictionaryStorage.find<A>(_:)(v106, v112, v140);
          v115 = result;
          if (v116)
          {
            (*(v148 + 40))(*(v45 + 48) + *(v148 + 72) * result, v149, MEMORY[0x1E69E6158]);
            result = (*(v147 + 40))(*(v45 + 56) + *(v147 + 72) * v115, v142, v20);
            v88 = v89;
            v46 = v137;
            v50 = v134;
            v87 = v133;
            if (!v49)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v50 = v134;
            if (*(v45 + 16) >= *(v45 + 24))
            {
              goto LABEL_53;
            }

            *&v130[(result >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << result;
            v87 = v133;
            v99((*(v45 + 48) + *(v148 + 72) * result), v149, MEMORY[0x1E69E6158]);
            result = (v114)(*(v45 + 56) + *(v147 + 72) * v115, v142, v20);
            v117 = *(v45 + 16);
            v118 = __OFADD__(v117, 1);
            v119 = v117 + 1;
            if (v118)
            {
              goto LABEL_54;
            }

            *(v45 + 16) = v119;
            v88 = v89;
            v46 = v137;
            if (!v49)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v89 = v88;
        }

        (*(v148 + 8))(v94, MEMORY[0x1E69E6158]);

        (*v143)(v95, 1, 1, v20);
LABEL_47:
        (*(v121 + 8))(v95, v122);
LABEL_48:

        return 0;
      }
    }

LABEL_41:

    return v45;
  }

  v128 = (v148 + 56);
  v51 = (v148 + 32);
  v127 = (v147 + 56);
  v142 = (v147 + 32);
  v154 = (v45 + 64);

  v53 = 0;
  v54 = v134;
  v126 = v50;
  v125 = v51;
  while (v49)
  {
LABEL_16:
    v57 = __clz(__rbit64(v49)) | (v53 << 6);
    v58 = v151;
    outlined init with copy of AnyHashable(*(v151 + 48) + 40 * v57, &v161);
    outlined init with copy of Any(*(v58 + 56) + 32 * v57, &v163 + 8);
    v158 = v163;
    v159 = v164;
    v160 = v165;
    v156 = v161;
    v157 = v162;
    outlined init with copy of AnyHashable(&v156, v155);
    v59 = v133;
    if (!swift_dynamicCast())
    {
      outlined destroy of TermOfAddress?(&v156, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);

      (*v128)(v59, 1, 1, v153);
      goto LABEL_45;
    }

    v60 = v153;
    (*v128)(v59, 0, 1, v153);
    v61 = *v51;
    (*v51)(v54, v59, v60);
    outlined init with copy of Any(&v158 + 8, v155);
    outlined destroy of TermOfAddress?(&v156, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
    v62 = v150;
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v148 + 8))(v54, v153);

      v95 = v146;
      (*v127)(v146, 1, 1, v62);
      goto LABEL_47;
    }

    v63 = v146;
    (*v127)(v146, 0, 1, v62);
    v152 = v61;
    v64 = *v142;
    (*v142)(v145, v63, v62);
    v149 = v64;
    v65 = *(TupleTypeMetadata2 + 48);
    v136 = v65;
    v66 = v132;
    v67 = v153;
    v68 = v152;
    (v152)(v132, v54, v153);
    (v64)(&v65[v66], v145, v62);
    v69 = v67;
    v70 = v138;
    v135 = *(v138 + 48);
    v71 = v131;
    v68(v131, v66, v69);
    v72 = v149;
    (v149)(&v135[v71], &v136[v66], v62);
    v73 = *(v70 + 48);
    v74 = v129;
    (v152)(v129, v71, v69);
    v75 = &v71[v73];
    v76 = v143;
    v77 = v130;
    (v72)(v130, v75, v62);
    (v152)(v144, v74, v69);
    v78 = v76;
    v79 = v149;
    (v149)(v78, v77, v62);
    v45 = v141;
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v80 = -1 << *(v45 + 32);
    v81 = result & ~v80;
    v82 = v81 >> 6;
    if (((-1 << v81) & ~*&v154[8 * (v81 >> 6)]) == 0)
    {
      v83 = 0;
      v84 = (63 - v80) >> 6;
      v54 = v134;
      v50 = v126;
      v51 = v125;
      while (++v82 != v84 || (v83 & 1) == 0)
      {
        v85 = v82 == v84;
        if (v82 == v84)
        {
          v82 = 0;
        }

        v83 |= v85;
        v86 = *&v154[8 * v82];
        if (v86 != -1)
        {
          v55 = __clz(__rbit64(~v86)) + (v82 << 6);
          goto LABEL_10;
        }
      }

      goto LABEL_51;
    }

    v55 = __clz(__rbit64((-1 << v81) & ~*&v154[8 * (v81 >> 6)])) | v81 & 0x7FFFFFFFFFFFFFC0;
    v54 = v134;
    v50 = v126;
    v51 = v125;
LABEL_10:
    v49 &= v49 - 1;
    *&v154[(v55 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v55;
    (v152)(*(v45 + 48) + *(v148 + 72) * v55, v144, v153);
    result = (v79)(*(v45 + 56) + *(v147 + 72) * v55, v143, v150);
    ++*(v45 + 16);
    v46 = v137;
  }

  while (1)
  {
    v56 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      break;
    }

    if (v56 >= v50)
    {
      goto LABEL_41;
    }

    v49 = *(v46 + 8 * v56);
    ++v53;
    if (v49)
    {
      v53 = v56;
      goto LABEL_16;
    }
  }

  __break(1u);
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

char *sub_1808AF734(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1865CC0E0](i, a1);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v23 - v13;
  v14 = *(a1 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v26 = type metadata accessor for ContiguousArray();
  ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = v31;
  if (v14)
  {
    v24 = v5;
    v25 = v4;
    v16 = a1 + 32;
    v27 = v8;
    v28 = (v8 + 56);
    v17 = (v8 + 32);
    while (1)
    {
      outlined init with copy of Any(v16, v30);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v28)(v7, 0, 1, a2);
      v18 = *v17;
      v19 = v29;
      (*v17)(v29, v7, a2);
      v18(v11, v19, a2);
      v31 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 > 1, v21 + 1, 1);
        v15 = v31;
      }

      *(v15 + 16) = v21 + 1;
      v18((v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21), v11, a2);
      v16 += 32;
      if (!--v14)
      {
        return v15;
      }
    }

    (*v28)(v7, 1, 1, a2);
    (*(v24 + 8))(v7, v25);
    return 0;
  }

  return v15;
}

id URLRequest.cachePolicy.setter(uint64_t a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd, &_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMR);
    v7 = swift_allocObject();
    v8 = v6;
    [v8 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest, 0x1E695AC18);
    swift_dynamicCast();
    v6 = v10;
    *(v7 + 16) = v10;

    *v2 = v7;
  }

  return [v6 *a2];
}

uint64_t _NSFCProviderLog()
{
  if (qword_1ED440198 != -1)
  {
    dispatch_once(&qword_1ED440198, &__block_literal_global_935);
  }

  return qword_1ED440110;
}

void StringProtocol.localizedCaseInsensitiveContains<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v19 = static LocaleCache.cache;
  LocaleCache._currentAndCache.getter();
  v6 = v5;
  StringProtocol._ephemeralString.getter();
  StringProtocol._ephemeralString.getter();
  v7 = String._bridgeToObjectiveCImpl()();

  v8 = String._bridgeToObjectiveCImpl()();

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v18 >> 14 < v19 >> 14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = StringProtocol._toUTF16Offsets(_:)();
  v11 = v10 - v9;
  if (__OFSUB__(v10, v9))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  ObjectType = swift_getObjectType();
  v14 = (*(v6 + 488))(ObjectType, v6);
  v15 = [v7 rangeOfString:v8 options:1 range:v12 locale:{v11, v14}];
  v17 = v16;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_8:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  if (!__OFADD__(v15, v17))
  {
    StringProtocol._toUTF16Indices(_:)();
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v52 = *v2;
  isTaggedPointer = _objc_isTaggedPointer(a2);
  v6 = a2;
  v7 = v6;
  v54 = isTaggedPointer;
  if (!isTaggedPointer)
  {
LABEL_6:
    LOBYTE(v55) = 0;
    if (!__CFStringIsCF())
    {
      v9 = v7;
      String.init(_nativeStorage:)();
      if (!v10 && [v9 length])
      {
        String.init(_cocoaString:)();
      }

      else
      {
      }

      goto LABEL_19;
    }

    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
LABEL_13:
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v13)
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v7 UTF8String];
    if (!result)
    {
      goto LABEL_74;
    }

    String.init(utf8String:)(result);
    if (v12)
    {
LABEL_7:

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_19:
  v50 = v2;
  v51 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v14 = Hasher._finalize()();

  v15 = v52;
  v16 = -1 << *(v52 + 32);
  v17 = v14 & ~v16;
  if (((*(v52 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
LABEL_67:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *v50;
    v47 = v7;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v47, v17, isUniquelyReferenced_nonNull_native);
    *v50 = v57;
    *v51 = v47;
    return 1;
  }

  v53 = ~v16;
  while (1)
  {
    v18 = *(*(v15 + 48) + 8 * v17);
    v19 = _objc_isTaggedPointer(v18);
    v20 = v18;
    v21 = v20;
    if (!v19)
    {
      goto LABEL_26;
    }

    v22 = _objc_getTaggedPointerTag(v20);
    if (v22)
    {
      break;
    }

    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v29)
    {
      goto LABEL_35;
    }

    [v21 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v23 = v55;
    v25 = v56;
LABEL_40:
    v31 = v7;
    v32 = v7;
    v33 = v32;
    if (v54)
    {
      v34 = _objc_getTaggedPointerTag(v32);
      if (v34)
      {
        if (v34 != 22)
        {
          if (v34 == 2)
          {
            MEMORY[0x1EEE9AC00](v34);
            v35 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v37 = v36;

LABEL_61:
            v15 = v52;
            if (v23 != v35)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          }

          goto LABEL_45;
        }

        result = [v33 UTF8String];
        if (!result)
        {
          goto LABEL_73;
        }

        result = String.init(utf8String:)(result);
        if (!v41)
        {
          goto LABEL_72;
        }
      }

      else
      {
        _CFIndirectTaggedPointerStringGetContents();
        result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v41)
        {
          [v33 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v37 = v56;
          if (v23 != v55)
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }
      }

      v42 = result;
      v37 = v41;

      if (v23 != v42)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }

LABEL_45:
    LOBYTE(v55) = 0;
    if (!__CFStringIsCF())
    {
      v38 = v33;
      v39 = String.init(_nativeStorage:)();
      if (v40)
      {
        v35 = v39;
        v37 = v40;
      }

      else
      {
        if ([v38 length])
        {
          v15 = v52;
          v43 = String.init(_cocoaString:)();
          v37 = v44;
          if (v23 != v43)
          {
            goto LABEL_65;
          }

          goto LABEL_64;
        }

        v35 = 0;
        v37 = 0xE000000000000000;
      }

      goto LABEL_61;
    }

    v37 = 0xE000000000000000;
    if (v23)
    {
      goto LABEL_65;
    }

LABEL_64:
    if (v25 == v37)
    {

LABEL_70:
      v48 = *(*(v15 + 48) + 8 * v17);
      *v51 = v48;
      v49 = v48;
      return 0;
    }

LABEL_65:
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {

      goto LABEL_70;
    }

    v17 = (v17 + 1) & v53;
    v7 = v31;
    if (((*(v52 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_67;
    }
  }

  if (v22 != 22)
  {
    if (v22 == 2)
    {
      MEMORY[0x1EEE9AC00](v22);
      v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v25 = v24;

      goto LABEL_40;
    }

LABEL_26:
    LOBYTE(v55) = 0;
    if (__CFStringIsCF())
    {

LABEL_30:
      v23 = 0;
      v25 = 0xE000000000000000;
      goto LABEL_40;
    }

    v26 = v21;
    v27 = String.init(_nativeStorage:)();
    if (v28)
    {
      v23 = v27;
      v25 = v28;

      goto LABEL_40;
    }

    if (![v26 length])
    {

      goto LABEL_30;
    }

    v23 = String.init(_cocoaString:)();
    v25 = v30;
    goto LABEL_40;
  }

  result = [v21 UTF8String];
  if (!result)
  {
    goto LABEL_71;
  }

  result = String.init(utf8String:)(result);
  if (v29)
  {
LABEL_35:
    v23 = result;
    v25 = v29;

    goto LABEL_40;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
  return result;
}

void *specialized _NativeSet.insertNew(_:at:isUnique:)(void *result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    v9 = *v3;
    goto LABEL_171;
  }

  v137 = v3;
  v131 = result;
  if ((a3 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    if (v8 > v7)
    {
      v40 = static _SetStorage.copy(original:)();
      v9 = v40;
      if (!*(v6 + 16))
      {
LABEL_106:

        *v137 = v9;
        goto LABEL_171;
      }

      v41 = (v40 + 56);
      v42 = v6 + 56;
      v43 = ((1 << *(v9 + 32)) + 63) >> 6;
      if (v9 != v6 || v41 >= v42 + 8 * v43)
      {
        memmove(v41, (v6 + 56), 8 * v43);
      }

      v44 = 0;
      *(v9 + 16) = *(v6 + 16);
      v45 = 1 << *(v6 + 32);
      v46 = *(v6 + 56);
      v47 = -1;
      if (v45 < 64)
      {
        v47 = ~(-1 << v45);
      }

      v48 = v47 & v46;
      v49 = (v45 + 63) >> 6;
      if ((v47 & v46) == 0)
      {
        goto LABEL_55;
      }

      while (1)
      {
        v50 = __clz(__rbit64(v48));
        for (v48 &= v48 - 1; ; v48 = (v52 - 1) & v52)
        {
          v53 = v50 | (v44 << 6);
          v54 = *(*(v6 + 48) + 8 * v53);
          *(*(v9 + 48) + 8 * v53) = v54;
          v55 = v54;
          if (v48)
          {
            break;
          }

LABEL_55:
          v51 = v44;
          do
          {
            v44 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_175;
            }

            if (v44 >= v49)
            {
              goto LABEL_106;
            }

            v52 = *(v42 + 8 * v44);
            ++v51;
          }

          while (!v52);
          v50 = __clz(__rbit64(v52));
        }
      }
    }

    v57 = static _SetStorage.resize(original:capacity:move:)();
    v9 = v57;
    if (!*(v6 + 16))
    {
      goto LABEL_109;
    }

    v58 = 0;
    v59 = v6 + 56;
    v60 = 1 << *(v6 + 32);
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v62 = v61 & *(v6 + 56);
    v130 = (v60 + 63) >> 6;
    v133 = v57;
    v63 = v57 + 56;
    while (1)
    {
      if (v62)
      {
        v65 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
      }

      else
      {
        v66 = v58;
        v9 = v133;
        do
        {
          v58 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_176;
          }

          if (v58 >= v130)
          {
            goto LABEL_109;
          }

          v67 = *(v59 + 8 * v58);
          ++v66;
        }

        while (!v67);
        v65 = __clz(__rbit64(v67));
        v62 = (v67 - 1) & v67;
      }

      v68 = *(*(v6 + 48) + 8 * (v65 | (v58 << 6)));
      isTaggedPointer = _objc_isTaggedPointer(v68);
      v70 = v68;
      v71 = v70;
      if (isTaggedPointer)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v70);
        switch(TaggedPointerTag)
        {
          case 0:
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v78)
            {
              [v71 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_97;
            }

            goto LABEL_96;
          case 0x16:
            v76 = [v71 UTF8String];
            if (!v76)
            {
              goto LABEL_186;
            }

            String.init(utf8String:)(v76);
            if (!v77)
            {
              goto LABEL_185;
            }

LABEL_96:

            goto LABEL_97;
          case 2:
            v73 = v6;
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_86:
            v6 = v73;
            goto LABEL_97;
        }
      }

      LOBYTE(v141) = 0;
      if (__CFStringIsCF())
      {
        goto LABEL_96;
      }

      v73 = v6;
      v74 = v71;
      String.init(_nativeStorage:)();
      if (v75 || ![v74 length])
      {

        goto LABEL_86;
      }

      v6 = v73;
      String.init(_cocoaString:)();
LABEL_97:
      Hasher.init(_seed:)();
      String.hash(into:)();
      v79 = Hasher._finalize()();

      v80 = -1 << *(v133 + 32);
      v81 = v79 & ~v80;
      v82 = v81 >> 6;
      if (((-1 << v81) & ~*(v63 + 8 * (v81 >> 6))) != 0)
      {
        v64 = __clz(__rbit64((-1 << v81) & ~*(v63 + 8 * (v81 >> 6)))) | v81 & 0x7FFFFFFFFFFFFFC0;
        v5 = v131;
      }

      else
      {
        v83 = 0;
        v84 = (63 - v80) >> 6;
        v5 = v131;
        do
        {
          if (++v82 == v84 && (v83 & 1) != 0)
          {
            goto LABEL_177;
          }

          v85 = v82 == v84;
          if (v82 == v84)
          {
            v82 = 0;
          }

          v83 |= v85;
          v86 = *(v63 + 8 * v82);
        }

        while (v86 == -1);
        v64 = __clz(__rbit64(~v86)) + (v82 << 6);
      }

      *(v63 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
      *(*(v133 + 48) + 8 * v64) = v71;
      ++*(v133 + 16);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v10;
  if (!*(v6 + 16))
  {
    goto LABEL_109;
  }

  v11 = 0;
  v12 = (v6 + 56);
  v13 = 1 << *(v6 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v6 + 56);
  v16 = (v13 + 63) >> 6;
  v132 = v10;
  v135 = v6;
  v17 = v10 + 56;
LABEL_12:
  if (v15)
  {
    v19 = __clz(__rbit64(v15));
    v139 = (v15 - 1) & v15;
    goto LABEL_19;
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    if (v11 >= v16)
    {
      break;
    }

    v21 = v12[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v139 = (v21 - 1) & v21;
LABEL_19:
      v22 = *(*(v6 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = _objc_isTaggedPointer(v22);
      v24 = v22;
      v25 = v24;
      if (!v23)
      {
        goto LABEL_24;
      }

      v26 = _objc_getTaggedPointerTag(v24);
      switch(v26)
      {
        case 0:
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v31)
          {
            [v25 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_37;
          }

LABEL_31:

          goto LABEL_37;
        case 0x16:
          v29 = [v25 UTF8String];
          if (!v29)
          {
            goto LABEL_182;
          }

          String.init(utf8String:)(v29);
          if (!v30)
          {
            goto LABEL_183;
          }

          goto LABEL_31;
        case 2:
          MEMORY[0x1EEE9AC00](v26);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_36;
      }

LABEL_24:
      LOBYTE(v141) = 0;
      if (__CFStringIsCF())
      {
        goto LABEL_31;
      }

      v27 = v25;
      String.init(_nativeStorage:)();
      if (v28 || ![v27 length])
      {

LABEL_36:
        v5 = v131;
      }

      else
      {
        v5 = v131;
        String.init(_cocoaString:)();
      }

LABEL_37:
      Hasher.init(_seed:)();
      String.hash(into:)();
      v32 = Hasher._finalize()();

      v33 = -1 << *(v132 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
        v6 = v135;
      }

      else
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v6 = v135;
        do
        {
          if (++v35 == v37 && (v36 & 1) != 0)
          {
            goto LABEL_174;
          }

          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v17 + 8 * v35);
        }

        while (v39 == -1);
        v18 = __clz(__rbit64(~v39)) + (v35 << 6);
      }

      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v132 + 48) + 8 * v18) = v25;
      ++*(v132 + 16);
      v15 = v139;
      goto LABEL_12;
    }
  }

  v56 = 1 << *(v6 + 32);
  if (v56 >= 64)
  {
    bzero(v12, ((v56 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *v12 = -1 << v56;
  }

  v9 = v132;
  *(v6 + 16) = 0;
LABEL_109:

  *v137 = v9;
  v87 = _objc_isTaggedPointer(v5);
  v88 = v5;
  v89 = v88;
  v140 = v87;
  if (!v87)
  {
    goto LABEL_114;
  }

  v90 = _objc_getTaggedPointerTag(v88);
  switch(v90)
  {
    case 0:
      goto LABEL_120;
    case 0x16:
      v93 = [v89 UTF8String];
      if (!v93)
      {
        goto LABEL_184;
      }

      String.init(utf8String:)(v93);
      if (v94)
      {
LABEL_125:

        goto LABEL_127;
      }

      __break(1u);
LABEL_120:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v95)
      {
        [v89 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_127;
      }

      goto LABEL_125;
    case 2:
      MEMORY[0x1EEE9AC00](v90);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_127;
  }

LABEL_114:
  LOBYTE(v141) = 0;
  if (__CFStringIsCF())
  {
    goto LABEL_125;
  }

  v91 = v89;
  String.init(_nativeStorage:)();
  if (!v92 && [v91 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_127:
  Hasher.init(_seed:)();
  String.hash(into:)();
  v96 = Hasher._finalize()();

  v97 = v9 + 56;
  v98 = -1 << *(v9 + 32);
  a2 = v96 & ~v98;
  if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_171;
  }

  v134 = v9;
  v136 = ~v98;
  v138 = v89;
  while (2)
  {
    v99 = *(*(v9 + 48) + 8 * a2);
    v100 = _objc_isTaggedPointer(v99);
    v101 = v99;
    v5 = v101;
    if (!v100)
    {
      goto LABEL_134;
    }

    v102 = _objc_getTaggedPointerTag(v101);
    if (!v102)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v110 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v111)
      {
        [v5 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v103 = v141;
        v105 = v142;
        goto LABEL_147;
      }

      goto LABEL_142;
    }

    if (v102 != 22)
    {
      if (v102 == 2)
      {
        MEMORY[0x1EEE9AC00](v102);
        v103 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v105 = v104;

        goto LABEL_147;
      }

LABEL_134:
      LOBYTE(v141) = 0;
      if (__CFStringIsCF())
      {
        v103 = 0;

        v105 = 0xE000000000000000;
      }

      else
      {
        v106 = v5;
        v107 = String.init(_nativeStorage:)();
        if (v108)
        {
          v103 = v107;
          v105 = v108;
        }

        else if ([v106 length])
        {
          v103 = String.init(_cocoaString:)();
          v105 = v112;
        }

        else
        {

          v103 = 0;
          v105 = 0xE000000000000000;
        }
      }

LABEL_147:
      v113 = v89;
      v114 = v113;
      if (!v140)
      {
        goto LABEL_152;
      }

      v115 = _objc_getTaggedPointerTag(v113);
      if (v115)
      {
        if (v115 != 22)
        {
          if (v115 == 2)
          {
            MEMORY[0x1EEE9AC00](v115);
            v116 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v118 = v117;

            goto LABEL_165;
          }

LABEL_152:
          LOBYTE(v141) = 0;
          if (!__CFStringIsCF())
          {
            v119 = v114;
            v120 = String.init(_nativeStorage:)();
            if (v121)
            {
              v116 = v120;
              v118 = v121;
            }

            else
            {
              if ([v119 length])
              {
                v9 = v134;
                v116 = String.init(_cocoaString:)();
                v118 = v125;
                goto LABEL_166;
              }

              v116 = 0;
              v118 = 0xE000000000000000;
            }

LABEL_165:
            v9 = v134;
            goto LABEL_166;
          }

          v116 = 0;

          v118 = 0xE000000000000000;
LABEL_166:
          type metadata accessor for NSURLResourceKey(0);
          if (v103 == v116 && v105 == v118)
          {
            goto LABEL_187;
          }

          v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v126)
          {
            goto LABEL_188;
          }

          v89 = v138;
          a2 = (a2 + 1) & v136;
          if (((*(v97 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
          {
            v5 = v131;
LABEL_171:
            *(v9 + 8 * (a2 >> 6) + 56) |= 1 << a2;
            *(*(v9 + 48) + 8 * a2) = v5;
            v127 = *(v9 + 16);
            v128 = __OFADD__(v127, 1);
            v129 = v127 + 1;
            if (!v128)
            {
              *(v9 + 16) = v129;
              return result;
            }

LABEL_178:
            __break(1u);
          }

          continue;
        }

        v122 = [v114 UTF8String];
        if (!v122)
        {
          goto LABEL_181;
        }

        v123 = String.init(utf8String:)(v122);
        if (!v124)
        {
          goto LABEL_180;
        }
      }

      else
      {
        _CFIndirectTaggedPointerStringGetContents();
        v123 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v124)
        {
          [v114 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v116 = v141;
          v118 = v142;
          goto LABEL_166;
        }
      }

      v116 = v123;
      v118 = v124;

      goto LABEL_166;
    }

    break;
  }

  v109 = [v5 UTF8String];
  if (!v109)
  {
    goto LABEL_179;
  }

  v110 = String.init(utf8String:)(v109);
  if (v111)
  {
LABEL_142:
    v103 = v110;
    v105 = v111;

    goto LABEL_147;
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:

LABEL_188:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey()
{
  result = lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey;
  if (!lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey)
  {
    type metadata accessor for NSURLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey);
  }

  return result;
}

void URLResourceValues._set(_:newValue:)(void *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = a1;
  specialized Set._Variant.insert(_:)(&v9, v4);

  if (v3 == 2)
  {
    v9 = 0u;
    v10 = 0u;
    v5 = v4;
  }

  else
  {
    v6 = objc_allocWithZone(NSNumber);
    v7 = v4;
    v8 = [v6 initWithBool_];
    *(&v10 + 1) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber, off_1E69EE6D0);
    *&v9 = v8;
    v5 = v7;
  }

  specialized Dictionary.subscript.setter(&v9, v5);
}

id URL.setResourceValues(_:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 432))(ObjectType, v1);
  type metadata accessor for NSURLResourceKey(0);
  lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey();

  v7[0] = 0;
  v4 = [v3 setResourceValues:_NativeDictionary.bridged()() error:v7];

  swift_unknownObjectRelease();
  if (v4)
  {
    return v7[0];
  }

  if (v7[0])
  {
    v7[0];
  }

  else
  {
    if (one-time initialization token for _nilObjCError != -1)
    {
      swift_once();
    }

    v6 = _nilObjCError;
  }

  return swift_willThrow();
}

uint64_t ___generateElements_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [MEMORY[0x1E695DFB0] null];

  return [a3 isEqual:v4];
}

uint64_t NSExtensionMain(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = _MergedGlobals_129;
  v10 = _MergedGlobals_129;
  if (!_MergedGlobals_129)
  {
    v6[0].super.isa = MEMORY[0x1E69E9820];
    v6[1].super.isa = 3221225472;
    v6[2].super.isa = __getEXExtensionMainSymbolLoc_block_invoke;
    v6[3].super.isa = &unk_1E69F6218;
    v6[4].super.isa = &v7;
    __getEXExtensionMainSymbolLoc_block_invoke(v6);
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"int _EXExtensionMain(int stringWithUTF8String:?], @"NSExtensionMain.m", 14, @"%s"", dlerror()];
    __break(1u);
  }

  return v4(a1, a2);
}

void sub_1808B3908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getEXExtensionMainSymbolLoc_block_invoke(NSAssertionHandler *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED43FC98)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __ExtensionFoundationLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E69F6760;
    v8 = 0;
    qword_1ED43FC98 = _sl_dlopen();
  }

  v2 = qword_1ED43FC98;
  if (!qword_1ED43FC98)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void *ExtensionFoundationLibrary(void)"];
    v3 = [(NSAssertionHandler *)a1 handleFailureInFunction:v5 file:@"NSExtensionMain.m" lineNumber:13 description:@"%s", v6[0]];
    __break(1u);
    goto LABEL_7;
  }

  v3 = v6[0];
  if (v6[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "EXExtensionMain");
  *(*(a1[4].super.isa + 1) + 24) = result;
  _MergedGlobals_129 = *(*(a1[4].super.isa + 1) + 24);
  return result;
}

uint64_t type metadata instantiation function for AttributeContainer.Builder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _NSAlgToCompAlg(unint64_t a1)
{
  if (a1 >= 5)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unrecognized compression algorithm value: %ld", a1), 0}]);
  }

  return dword_181321BB8[a1];
}

void protocol witness for _URLProtocol.absoluteURL.getter in conformance _BridgedURL(_OWORD *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) absoluteURL];
  if (v3)
  {
    v4 = v3;
    URL.init(reference:)(v3, &v6);

    v5 = v6;
  }

  else
  {
    v5 = 0uLL;
  }

  *a1 = v5;
}

void *URL.absoluteURL.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 128))(v8, ObjectType, v3);
  v7 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v7 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
  return result;
}

unint64_t Data.subdata(in:)(uint64_t a1, int64_t a2, uint64_t a3, unint64_t a4)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      return 0;
    }
  }

  else if (v4)
  {
    if (a3 == a3 >> 32)
    {
      return 0;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a2 == a1)
  {
    return 0;
  }

  v6 = Data._Representation.subscript.getter(a1, a2, a3, a4);
  v8 = v6;
  v9 = v7;
  v10 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v10 != 2)
    {
      memset(v26, 0, 14);
      v12 = v26;
      v11 = v26;
      goto LABEL_35;
    }

    v13 = *(v6 + 16);
    v14 = *(v6 + 24);
    v15 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v15)
    {
      v16 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v17 = __OFSUB__(v13, v16);
      v18 = v13 - v16;
      if (v17)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v12 = (v18 + v15);
    }

    else
    {
      v12 = 0;
    }

    v17 = __OFSUB__(v14, v13);
    v23 = v14 - v13;
    if (!v17)
    {
      v24 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      if (v24 >= v23)
      {
        v24 = v23;
      }

      v25 = v12 + v24;
      if (v12)
      {
        v11 = v25;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_35;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v10)
  {
    v19 = (v6 >> 32) - v6;
    if (v6 >> 32 >= v6)
    {
      v20 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v20)
      {
        goto LABEL_27;
      }

      v21 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v22 = v6 - v21;
      if (!__OFSUB__(v6, v21))
      {
        if (*((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v19)
        {
          v19 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v12 = (v22 + v20);
        if (v22 + v20)
        {
          v11 = v12 + v19;
          goto LABEL_35;
        }

LABEL_27:
        v12 = 0;
        v11 = 0;
        goto LABEL_35;
      }

LABEL_40:
      __break(1u);
    }

    goto LABEL_37;
  }

  v26[0] = v6;
  LOWORD(v26[1]) = v7;
  BYTE2(v26[1]) = BYTE2(v7);
  BYTE3(v26[1]) = BYTE3(v7);
  BYTE4(v26[1]) = BYTE4(v7);
  BYTE5(v26[1]) = BYTE5(v7);
  v11 = v26 + BYTE6(v7);
  v12 = v26;
LABEL_35:
  closure #1 in Data.subdata(in:)(v12, v11, v27);
  outlined consume of Data._Representation(v8, v9);
  return v27[0];
}

id @objc static NSLocale._newLocaleAsIfCurrent(_:overrides:disableBundleMatching:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a5;
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  v11 = specialized static NSLocale._newLocaleAsIfCurrent(_:overrides:disableBundleMatching:)(v7, v9, a4, v5);

  return v11;
}

uint64_t UUID.init(uuid:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, int a10, int a11)
{
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 12) = a11;
  return result;
}

uint64_t specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(_BYTE *), uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v22 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  if (ObjectType == type metadata accessor for NSFileManager())
  {
    v15 = specialized String.withFileSystemRepresentation<A>(_:)(a3, a4, a1, a2);
    if (!v5)
    {
      v6 = v15;
    }
  }

  else if (swift_stdlib_isStackAllocationSafe())
  {
    v13 = [v7 getFileSystemRepresentation:v21 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v13)
    {
      v14 = v21;
    }

    else
    {
      v14 = 0;
    }

    a3(v14);
    if (v5)
    {
      swift_willThrow();
    }

    else
    {
      v6 = v20;
    }
  }

  else
  {
    v16 = swift_slowAlloc();
    v17 = [v7 getFileSystemRepresentation:v16 maxLength:1026 withPath:String._bridgeToObjectiveCImpl()()];
    swift_unknownObjectRelease();
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    a3(v18);
    if (!v5)
    {
      v6 = v20;
    }

    MEMORY[0x1865D2690](v16, -1, -1);
  }

  return v6 & 1;
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a4 & 0x1000000000000000) != 0)
  {
    v16 = a4;
    v17 = a3;
    isStackAllocationSafe = String.UTF8View._foreignCount()();
    a3 = v17;
    a4 = v16;
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(a4) & 0xF;
  }

  else
  {
    isStackAllocationSafe = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 != (3 * isStackAllocationSafe) >> 63)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v7 < -1)
  {
    __break(1u);
    goto LABEL_21;
  }

  a2 = v7 + 1;
  if (v7 >= 1024)
  {
LABEL_17:
    v18 = a2;
    v19 = a4;
    v20 = a3;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_8;
    }

    v21 = swift_slowAlloc();
    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v21, v18, v20, v19, a1, &v23);
    MEMORY[0x1865D2690](v21, -1, -1);
    if (v4)
    {
      return v14 & 1;
    }

LABEL_21:
    v14 = v23;
    return v14 & 1;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v9 = &v22[-v8];
  if (String._fileSystemRepresentation(into:)(&v22[-v8], v10, v11, v12))
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  a1(v13);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v14 = v22[6];
  }

  return v14 & 1;
}

const char *closure #1 in _FileManagerImpl.changeCurrentDirectoryPath(_:)@<X0>(const char *result@<X0>, BOOL *a2@<X8>)
{
  if (result)
  {
    result = chdir(result);
    v3 = result == 0;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

Swift::UInt8_optional __swiftcall Data.Iterator.next()()
{
  v23[2] = *MEMORY[0x1E69E9840];
  v1 = v0[6];
  v2 = v0[7];
  if (v1 < v2)
  {
    v0[6] = v1 + 1;
    v4 = *v0;
    v5 = v0[1];
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      v7 = 0;
      if (v6 == 2)
      {
        v7 = *(v4 + 16);
      }
    }

    else
    {
      v7 = v4;
      if (!v6)
      {
        v7 = 0;
      }
    }

    v8 = v1 - v7;
    if (__OFSUB__(v1, v7))
    {
      __break(1u);
    }

    else
    {
      v9 = v7 - v1 < 0;
      v10 = (v7 - v1) & 0x1F;
      v11 = v8 & 0x1F;
      if (v9)
      {
        v12 = v11;
      }

      else
      {
        v12 = -v10;
      }

      if (v12)
      {
        goto LABEL_19;
      }

      v13 = *(v0 + 2);
      v21 = *(v0 + 1);
      v22 = v13;
      if (!__OFSUB__(v2, v1))
      {
        v14 = v2;
        if (v2 - v1 >= 33)
        {
          v14 = v1 + 32;
          if (__OFADD__(v1, 32))
          {
LABEL_24:
            __break(1u);
          }
        }

        if (v14 >= v1)
        {
          v23[0] = v4;
          v23[1] = v5;
          v20[0] = v1;
          v20[1] = v14;
          (MEMORY[0x1EEE9AC00])();
          v19[2] = v23;
          v19[3] = v20;
          v19[4] = &v21;
          v19[5] = 32;
          specialized Data._Representation.withUnsafeBytes<A>(_:)(closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)specialized partial apply, v19, v15, v16);
          v17 = v22;
          *(v0 + 1) = v21;
          *(v0 + 2) = v17;
LABEL_19:
          v3 = *(v0 + v12 + 16);
          return (v3 | ((v1 >= v2) << 8));
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v3 = 0;
  return (v3 | ((v1 >= v2) << 8));
}

Swift::UInt8_optional protocol witness for IteratorProtocol.next() in conformance Data.Iterator@<W0>(Swift::UInt8 *a1@<X8>)
{
  result = Data.Iterator.next()();
  *a1 = result.value;
  a1[1] = result.is_nil;
  return result;
}

uint64_t Data._Representation.count.setter(uint64_t __n)
{
  v33 = *MEMORY[0x1E69E9840];
  result = *v1;
  v4 = *(v1 + 8);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (!__n)
      {
        return result;
      }

      if (__n >= 15)
      {
        v21 = v1;
        type metadata accessor for __DataStorage();
        v22 = swift_allocObject();
        __DataStorage.init(length:)(__n);
        if (__n >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v9 = swift_allocObject();
          *(v9 + 16) = 0;
          *(v9 + 24) = __n;
          v10 = v22 | 0x8000000000000000;
        }

        else
        {
          v9 = __n << 32;
          v10 = v22 | 0x4000000000000000;
        }

        v1 = v21;
        goto LABEL_54;
      }

      if ((__n & 0x8000000000000000) == 0)
      {
        v9 = 0;
        v10 = __n << 48;
        goto LABEL_54;
      }

      goto LABEL_58;
    }

    *&v32 = *v1;
    *(&v32 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *(result + 16);
    if (__n)
    {
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = __n <= 14;
      }

      if (v12)
      {
        if ((__n & 0x8000000000000000) == 0)
        {
          v13 = __n << 48;
          *&__dst = 0;
          BYTE14(__dst) = __n;
          WORD6(__dst) = 0;
          DWORD2(__dst) = 0;
          v14 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (v14)
          {
            v15 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
            v16 = __OFSUB__(0, v15);
            v17 = -v15;
            if (v16)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            memcpy(&__dst, (v14 + v17), __n);
            v9 = __dst;
            v13 = DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          }

          else
          {
            v9 = 0;
          }

          v10 = v13 & 0xFFFFFFFFFFFFFFLL;
          goto LABEL_54;
        }

        goto LABEL_57;
      }
    }

    else if (!v11)
    {
      goto LABEL_38;
    }

    v23 = *(result + 24);
    v16 = __OFSUB__(v23, v11);
    v24 = v23 - v11;
    if (!v16)
    {
      if (v24 == __n)
      {
        return result;
      }

      v25 = result;

      outlined consume of Data._Representation(v25, v4);
      *v1 = xmmword_181234410;
      Data.LargeSlice.count.setter(__n);
      v9 = v32;
      v10 = *(&v32 + 1) | 0x8000000000000000;
      goto LABEL_54;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (!v5)
  {
    *&__dst = *v1;
    WORD4(__dst) = v4;
    BYTE10(__dst) = BYTE2(v4);
    BYTE11(__dst) = BYTE3(v4);
    BYTE12(__dst) = BYTE4(v4);
    BYTE13(__dst) = BYTE5(v4);
    if (__n)
    {
      if (__n >= 15)
      {
        v6 = v1;
        v7 = BYTE6(v4);
        *&v32 = __dst;
        *(&v32 + 6) = *(&__dst + 6);
        type metadata accessor for __DataStorage();
        v8 = swift_allocObject();
        __DataStorage.init(bytes:length:)(&v32, v7);
        if (__n >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v27 = swift_allocObject();
          *(v27 + 16) = 0;
          *(v27 + 24) = v7;
          *&v32 = v27;
          *(&v32 + 1) = v8;
          Data.LargeSlice.count.setter(__n);
          v9 = v32;
          v10 = *(&v32 + 1) | 0x8000000000000000;
        }

        else
        {
          LODWORD(v32) = 0;
          DWORD1(v32) = v7;
          *(&v32 + 1) = v8;
          Data.InlineSlice.count.setter(__n);
          v9 = v32;
          v10 = *(&v32 + 1) | 0x4000000000000000;
        }

        v1 = v6;
        goto LABEL_54;
      }

      if (__n == BYTE6(v4))
      {
        return result;
      }

      if (__n > BYTE6(v4))
      {
        BYTE14(__dst) = __n;
        bzero(&__dst + BYTE6(v4), __n - BYTE6(v4));
LABEL_53:
        v9 = __dst;
        v10 = DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        goto LABEL_54;
      }

      if ((__n & 0x8000000000000000) == 0)
      {
        BYTE14(__dst) = __n;
        goto LABEL_53;
      }

LABEL_63:
      __break(1u);
    }

    goto LABEL_38;
  }

  *&v32 = *v1;
  *(&v32 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  if (__n | (result << 32))
  {
    if (result << 32)
    {
      v18 = 0;
    }

    else
    {
      v18 = __n <= 14;
    }

    if (v18)
    {
      v9 = specialized Data.InlineData.init(_:count:)(result, v4 & 0x3FFFFFFFFFFFFFFFLL, __n);
      v10 = v26 & 0xFFFFFFFFFFFFFFLL;
      goto LABEL_54;
    }

    v19 = result;
    if (!__OFADD__(__n, result))
    {
      if (__n + result > 2147483646)
      {
        v28 = v1;
        v29 = result >> 32;
        if (result >> 32 >= result)
        {
          type metadata accessor for Data.RangeReference();
          v30 = swift_allocObject();
          *(v30 + 16) = v19;
          *(v30 + 24) = v29;
          *&__dst = v30;
          *(&__dst + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;

          Data.LargeSlice.count.setter(__n);
          v9 = __dst;
          v10 = *(&__dst + 1) | 0x8000000000000000;
          v1 = v28;
          goto LABEL_54;
        }

LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        if (HIDWORD(result) - result == __n)
        {
          return result;
        }

        v20 = result;

        outlined consume of Data._Representation(v20, v4);
        *v1 = xmmword_181234410;
        Data.InlineSlice.count.setter(__n);
        v9 = v32;
        v10 = *(&v32 + 1) | 0x4000000000000000;
        goto LABEL_54;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    goto LABEL_59;
  }

LABEL_38:
  v9 = 0;
  v10 = 0xC000000000000000;
LABEL_54:
  result = outlined consume of Data._Representation(*v1, *(v1 + 8));
  *v1 = v9;
  *(v1 + 8) = v10;
  return result;
}

void Data.InlineSlice.count.setter(uint64_t a1)
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 - *v1;
  if (__OFSUB__(v4, *v1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = __OFSUB__(a1, v5);
  v7 = a1 - v5;
  if (v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= 1)
  {
    v8 = v4 + v7;
    if (__OFADD__(v4, v7))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v8 < v4)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __DataStorage.resetBytes(in:)(v4, v8);
LABEL_9:
    if (a1 >= 0xFFFFFFFF80000000)
    {
      if (a1 <= 0x7FFFFFFF)
      {
        v10 = v3 + a1;
        if (!__OFADD__(v3, a1))
        {
          if (v10 >= v3)
          {
            *v1 = v3;
            v1[1] = v10;
            return;
          }

          goto LABEL_19;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(*(v1 + 1) + 24);
  if (!__OFADD__(v9, v7))
  {
    __DataStorage.length.setter(v9 + v7);
    goto LABEL_9;
  }

LABEL_22:
  __break(1u);
}

uint64_t URL.hasDirectoryPath.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 304))(ObjectType, v1) & 1;
}

unint64_t lazy protocol witness table accessor for type ICUPatternGenerator.PatternGeneratorInfo and conformance ICUPatternGenerator.PatternGeneratorInfo()
{
  result = lazy protocol witness table cache variable for type ICUPatternGenerator.PatternGeneratorInfo and conformance ICUPatternGenerator.PatternGeneratorInfo;
  if (!lazy protocol witness table cache variable for type ICUPatternGenerator.PatternGeneratorInfo and conformance ICUPatternGenerator.PatternGeneratorInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUPatternGenerator.PatternGeneratorInfo and conformance ICUPatternGenerator.PatternGeneratorInfo);
  }

  return result;
}

uint64_t *ICUPatternGenerator.init(localeIdentifier:calendarIdentifier:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a3;

  Locale.Components.init(identifier:)(__src);
  LOBYTE(__src[12]) = v5;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v17, __src, sizeof(v17));
  outlined init with copy of Locale.Components(__dst, v20);
  Locale.Components.icuIdentifier.getter();
  memcpy(v20, __src, sizeof(v20));
  outlined destroy of Locale.Components(v20);
  outlined destroy of Locale.Components(__dst);

  v17[0] = 0;
  String.utf8CString.getter();

  v6 = udatpg_open();

  v7 = v17[0];
  if (v17[0] >= 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static ICUError.logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      __src[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000018147F910, __src);
      *(v11 + 12) = 2080;
      v13 = ICUError.debugDescription.getter(v7);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, __src);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_18075C000, v9, v10, "%s. Error: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v12, -1, -1);
      MEMORY[0x1865D2690](v11, -1, -1);
    }

    if (v6)
    {
      udatpg_close();
    }

    goto LABEL_10;
  }

  if (!v6)
  {
LABEL_10:
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + 16) = v6;
  return v4;
}

uint64_t one-time initialization function for patternCache(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *a4 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ICUDateFormatter.PatternCacheKey and conformance ICUDateFormatter.PatternCacheKey()
{
  result = lazy protocol witness table cache variable for type ICUDateFormatter.PatternCacheKey and conformance ICUDateFormatter.PatternCacheKey;
  if (!lazy protocol witness table cache variable for type ICUDateFormatter.PatternCacheKey and conformance ICUDateFormatter.PatternCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUDateFormatter.PatternCacheKey and conformance ICUDateFormatter.PatternCacheKey);
  }

  return result;
}

uint64_t Date.FormatStyle.DateFieldCollection.formatterTemplate(overridingDayPeriodWithLocale:)(uint64_t *a1)
{
  v2 = 0xE000000000000000;
  v3 = *v1;
  v4 = 0x4747474747;
  v5 = *a1;
  v6 = a1[1];
  v104 = 0;
  v105 = 0xE000000000000000;
  if (v3 == 2)
  {
    v2 = 0xE500000000000000;
  }

  else
  {
    v4 = 0;
  }

  v7 = 0xE100000000000000;
  v8 = 71;
  if (v3)
  {
    v8 = 1195853639;
    v7 = 0xE400000000000000;
  }

  if (v3 <= 1)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v3 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  MEMORY[0x1865CB0E0](v9, v10);

  v11 = v1[16];
  if (v11 == 255)
  {
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v12 = Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(*(v1 + 1), v11);
    v14 = v13;
  }

  MEMORY[0x1865CB0E0](v12, v14);

  v15 = 0xE000000000000000;
  v16 = v1[17];
  v17 = 1364283729;
  v18 = 0x5151515151;
  if (v16 == 4)
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v18 = 0;
  }

  if (v16 == 3)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v17 = v18;
  }

  v19 = 0xE100000000000000;
  v20 = 81;
  v21 = 0xE200000000000000;
  v22 = 20817;
  if (v16 != 1)
  {
    v22 = 5329233;
    v21 = 0xE300000000000000;
  }

  if (v1[17])
  {
    v20 = v22;
    v19 = v21;
  }

  if (v1[17] <= 2u)
  {
    v23 = v20;
  }

  else
  {
    v23 = v17;
  }

  if (v1[17] <= 2u)
  {
    v24 = v19;
  }

  else
  {
    v24 = v15;
  }

  MEMORY[0x1865CB0E0](v23, v24);

  v25 = 0xE000000000000000;
  v26 = v1[18];
  v27 = 1296911693;
  v28 = 0x4D4D4D4D4DLL;
  if (v26 == 4)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v28 = 0;
  }

  if (v26 == 3)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v27 = v28;
  }

  v29 = 0xE100000000000000;
  v30 = 77;
  v31 = 0xE200000000000000;
  v32 = 19789;
  if (v26 != 1)
  {
    v32 = 5066061;
    v31 = 0xE300000000000000;
  }

  if (v1[18])
  {
    v30 = v32;
    v29 = v31;
  }

  if (v1[18] <= 2u)
  {
    v33 = v30;
  }

  else
  {
    v33 = v27;
  }

  if (v1[18] <= 2u)
  {
    v34 = v29;
  }

  else
  {
    v34 = v25;
  }

  MEMORY[0x1865CB0E0](v33, v34);

  v35 = 0xE000000000000000;
  v36 = 0xE100000000000000;
  v37 = 87;
  if (v1[19] == 2)
  {
    v35 = 0xE100000000000000;
  }

  else
  {
    v37 = 0;
  }

  v38 = 119;
  if (v1[19])
  {
    v38 = 30583;
    v36 = 0xE200000000000000;
  }

  if (v1[19] <= 1u)
  {
    v39 = v38;
  }

  else
  {
    v39 = v37;
  }

  if (v1[19] <= 1u)
  {
    v40 = v36;
  }

  else
  {
    v40 = v35;
  }

  MEMORY[0x1865CB0E0](v39, v40);

  if (v1[33])
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  else
  {
    v43 = *(v1 + 3);
    if (v1[32])
    {
      v44 = 0xE200000000000000;
      v45 = 25700;
      if (v43 != 1)
      {
        v45 = 70;
        v44 = 0xE100000000000000;
      }

      if (v43)
      {
        countAndFlagsBits = v45;
      }

      else
      {
        countAndFlagsBits = 100;
      }

      if (v43)
      {
        object = v44;
      }

      else
      {
        object = 0xE100000000000000;
      }
    }

    else
    {
      if (v43 >= 10)
      {
        v43 = 10;
      }

      if (v43 <= 1)
      {
        v46 = 1;
      }

      else
      {
        v46 = v43;
      }

      v47._countAndFlagsBits = 103;
      v47._object = 0xE100000000000000;
      v48 = String.init(repeating:count:)(v47, v46);
      countAndFlagsBits = v48._countAndFlagsBits;
      object = v48._object;
    }
  }

  MEMORY[0x1865CB0E0](countAndFlagsBits, object);

  v49 = 0xE000000000000000;
  v50 = 4473924;
  if (v1[34] == 2)
  {
    v49 = 0xE300000000000000;
  }

  else
  {
    v50 = 0;
  }

  v51 = 0xE100000000000000;
  v52 = 68;
  if (v1[34])
  {
    v52 = 17476;
    v51 = 0xE200000000000000;
  }

  if (v1[34] <= 1u)
  {
    v53 = v52;
  }

  else
  {
    v53 = v50;
  }

  if (v1[34] <= 1u)
  {
    v54 = v51;
  }

  else
  {
    v54 = v49;
  }

  MEMORY[0x1865CB0E0](v53, v54);

  v55 = 0xE000000000000000;
  v56 = v1[35];
  v57 = 25957;
  if (v56 == 5)
  {
    v55 = 0xE200000000000000;
  }

  else
  {
    v57 = 0;
  }

  v58 = 0xE600000000000000;
  v59 = 0x454545454545;
  if (v56 != 3)
  {
    v59 = 101;
    v58 = 0xE100000000000000;
  }

  if (v1[35] <= 4u)
  {
    v57 = v59;
    v55 = v58;
  }

  v60 = 0xE300000000000000;
  v61 = 4539717;
  v62 = 0xE400000000000000;
  v63 = 1162167621;
  if (v56 != 1)
  {
    v63 = 0x4545454545;
    v62 = 0xE500000000000000;
  }

  if (v1[35])
  {
    v61 = v63;
    v60 = v62;
  }

  if (v1[35] <= 2u)
  {
    v64 = v61;
  }

  else
  {
    v64 = v57;
  }

  if (v1[35] <= 2u)
  {
    v65 = v60;
  }

  else
  {
    v65 = v55;
  }

  MEMORY[0x1865CB0E0](v64, v65);

  v66 = v1[36];
  if (v66 > 4)
  {
    v75 = 0xE000000000000000;
    v76 = 1111638594;
    v77 = 0x4242424242;
    if (v66 == 8)
    {
      v75 = 0xE500000000000000;
    }

    else
    {
      v77 = 0;
    }

    if (v66 == 7)
    {
      v75 = 0xE400000000000000;
    }

    else
    {
      v76 = v77;
    }

    v78 = 0xE500000000000000;
    v79 = 0x6262626262;
    if (v66 != 5)
    {
      v79 = 66;
      v78 = 0xE100000000000000;
    }

    if (v1[36] <= 6u)
    {
      v73 = v79;
    }

    else
    {
      v73 = v76;
    }

    if (v1[36] <= 6u)
    {
      v74 = v78;
    }

    else
    {
      v74 = v75;
    }
  }

  else
  {
    v67 = 0xE500000000000000;
    v68 = 0x6161616161;
    v69 = 0xE100000000000000;
    v70 = 98;
    if (v66 != 3)
    {
      v70 = 1650614882;
      v69 = 0xE400000000000000;
    }

    if (v66 != 2)
    {
      v68 = v70;
      v67 = v69;
    }

    v71 = 0xE100000000000000;
    v72 = 97;
    if (v1[36])
    {
      v72 = 1633771873;
      v71 = 0xE400000000000000;
    }

    if (v1[36] <= 1u)
    {
      v73 = v72;
    }

    else
    {
      v73 = v68;
    }

    if (v1[36] <= 1u)
    {
      v74 = v71;
    }

    else
    {
      v74 = v67;
    }
  }

  MEMORY[0x1865CB0E0](v73, v74);

  v103[0] = v5;
  v103[1] = v6;
  v80 = Date.FormatStyle.DateFieldCollection.preferredHour(withLocale:)(v103);
  v81 = 0xE000000000000000;
  if (v80 == 14)
  {
    v82 = 0;
    v83 = 0xE000000000000000;
  }

  else
  {
    v82 = Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v80);
    v83 = v84;
  }

  MEMORY[0x1865CB0E0](v82, v83);

  v85 = v1[38];
  v86 = 109;
  if (v85)
  {
    v86 = 28013;
    v87 = 0xE200000000000000;
  }

  else
  {
    v87 = 0xE100000000000000;
  }

  if (v85 == 2)
  {
    v88 = 0;
  }

  else
  {
    v88 = v86;
  }

  if (v85 == 2)
  {
    v89 = 0xE000000000000000;
  }

  else
  {
    v89 = v87;
  }

  MEMORY[0x1865CB0E0](v88, v89);

  v90 = v1[39];
  v91 = 115;
  if (v90)
  {
    v91 = 29555;
    v92 = 0xE200000000000000;
  }

  else
  {
    v92 = 0xE100000000000000;
  }

  if (v90 == 2)
  {
    v93 = 0;
  }

  else
  {
    v93 = v91;
  }

  if (v90 == 2)
  {
    v94 = 0xE000000000000000;
  }

  else
  {
    v94 = v92;
  }

  MEMORY[0x1865CB0E0](v93, v94);

  v95 = v1[48];
  if (v95 == 255)
  {
    v96 = 0;
  }

  else
  {
    v96 = Date.FormatStyle.Symbol.SymbolType.SecondFractionOption.rawValue.getter(*(v1 + 5), v95 & 1);
    v81 = v97;
  }

  MEMORY[0x1865CB0E0](v96, v81);

  v98 = v1[49];
  if (v98 == 12)
  {
    v99 = 0;
    v100 = 0xE000000000000000;
  }

  else
  {
    v99 = Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v98);
    v100 = v101;
  }

  MEMORY[0x1865CB0E0](v99, v100);

  return v104;
}

uint64_t Date.FormatStyle.DateFieldCollection.preferredHour(withLocale:)(uint64_t *a1)
{
  v2 = *(v1 + 37);
  if (v2 == 14 || *a1 == 0)
  {
    return 14;
  }

  v4 = a1[1];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 360);
  swift_unknownObjectRetain();
  v6(&v26, ObjectType, v4);
  if (v26 > 1u)
  {
    goto LABEL_17;
  }

  (*(v4 + 352))(v25, ObjectType, v4);
  v21 = v25[2];
  v22 = v25[3];
  v23 = v25[4];
  v24 = v25[5];
  v19 = v25[0];
  v20 = v25[1];
  Locale.Language.languageCode.getter(v18);
  outlined destroy of Locale.Language(v25);
  v7 = v18[0];
  v8 = v18[1];
  v10 = v18[2];
  v9 = v18[3];
  v11 = String.lowercased()();
  if (!v8)
  {
    outlined consume of Locale.LanguageCode?(v7, 0, v10, v9);
    outlined consume of Locale.LanguageCode?(26746, 0xE200000000000000, v11._countAndFlagsBits, v11._object);
    goto LABEL_17;
  }

  if (v10 == v11._countAndFlagsBits && v9 == v11._object)
  {
    outlined copy of Locale.LanguageCode?(v7, v8, v10, v9);
    outlined consume of Locale.LanguageCode?(26746, 0xE200000000000000, v10, v9);

    outlined consume of Locale.LanguageCode?(v7, v8, v10, v9);
    goto LABEL_14;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of Locale.LanguageCode?(v7, v8, v10, v9);
  outlined consume of Locale.LanguageCode?(26746, 0xE200000000000000, v11._countAndFlagsBits, v11._object);

  outlined consume of Locale.LanguageCode?(v7, v8, v10, v9);
  if ((v17 & 1) == 0)
  {
LABEL_17:
    swift_unknownObjectRelease();
    return v2;
  }

LABEL_14:
  (*(v4 + 376))(&v19, ObjectType, v4);
  v12 = v19;
  v13 = v20;
  v14 = String.uppercased()();
  if (*(&v12 + 1))
  {
    if (v13 == v14)
    {
      outlined copy of Locale.LanguageCode?(v12, *(&v12 + 1), v13, *(&v13 + 1));
      swift_unknownObjectRelease();
      outlined consume of Locale.LanguageCode?(22356, 0xE200000000000000, v13, *(&v13 + 1));

      outlined consume of Locale.LanguageCode?(v12, *(&v12 + 1), v13, *(&v13 + 1));
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of Locale.LanguageCode?(v12, *(&v12 + 1), v13, *(&v13 + 1));
      swift_unknownObjectRelease();
      outlined consume of Locale.LanguageCode?(22356, 0xE200000000000000, v14._countAndFlagsBits, v14._object);

      outlined consume of Locale.LanguageCode?(v12, *(&v12 + 1), v13, *(&v13 + 1));
      if ((v16 & 1) == 0)
      {
        return v2;
      }
    }

    if (v2 <= 3)
    {
      if (v2 > 1)
      {
        if (v2 == 2)
        {
          return 10;
        }

        else
        {
          return 11;
        }
      }

      else if (v2)
      {
        return 9;
      }

      else
      {
        return 8;
      }
    }

    else if ((v2 - 6) >= 8)
    {
      if (v2 == 4)
      {
        return 12;
      }

      else
      {
        return 13;
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
    outlined consume of Locale.LanguageCode?(v12, 0, v13, *(&v13 + 1));
    outlined consume of Locale.LanguageCode?(22356, 0xE200000000000000, v14._countAndFlagsBits, v14._object);
  }

  return v2;
}

uint64_t one-time initialization function for _patternGeneratorCache()
{
  static ICUPatternGenerator._patternGeneratorCache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA19ICUPatternGeneratorC07PatternM4InfoVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA19ICUPatternGeneratorC07PatternM4InfoVAHSgG_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA8221B0 = result;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
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

uint64_t one-time initialization function for formatterCache()
{
  static ICUDateFormatter.formatterCache = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA16ICUDateFormatterC14DateFormatInfoVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA16ICUDateFormatterC14DateFormatInfoVAHSgG_GMR);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  qword_1EA822190 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ICUDateFormatter.DateFormatInfo and conformance ICUDateFormatter.DateFormatInfo()
{
  result = lazy protocol witness table cache variable for type ICUDateFormatter.DateFormatInfo and conformance ICUDateFormatter.DateFormatInfo;
  if (!lazy protocol witness table cache variable for type ICUDateFormatter.DateFormatInfo and conformance ICUDateFormatter.DateFormatInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUDateFormatter.DateFormatInfo and conformance ICUDateFormatter.DateFormatInfo);
  }

  return result;
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *a2, *(a2 + 8), *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

{
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(*a1 + 16))
  {
    return 1;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  if (v4)
  {
  }

  else
  {
    return 1;
  }
}

uint64_t partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = v5[3];
  v10[2] = v5[2];
  v10[3] = v6;
  v7 = v5[5];
  v10[4] = v5[4];
  v10[5] = v7;
  v8 = v5[1];
  v10[0] = *v5;
  v10[1] = v8;
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, v10);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

{
  return specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *(v2 + 16), specialized closure #1 in FormatterCache.formatter(for:creator:), a2);
}

{
  return specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *(v2 + 16), a2);
}

{
  return specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *(v2 + 16), a2);
}

{
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, **(v2 + 16), *(*(v2 + 16) + 8), *(*(v2 + 16) + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

{
  memcpy(__dst, *(v2 + 16), sizeof(__dst));
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, __dst);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

{
  v5 = *(v2 + 16);
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v8[2] = v5[2];
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, v8);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

{
  return specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *(v2 + 16), a2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1865CD060](v3);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v3, v6);
}

{
  v3 = a3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v3 & 1);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v3, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = a3;
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v14 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

Swift::String_optional __swiftcall ICUPatternGenerator._patternForSkeleton(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v15[5] = *MEMORY[0x1E69E9840];
  v3 = udatpg_clone();
  v4 = v3;
  if (v3)
  {

    v7 = MEMORY[0x1865CB200](countAndFlagsBits, object);
    if (v7)
    {
      v8 = v7;
      v9 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v7, 0);

      v10 = specialized Sequence._copySequenceContents(initializing:)(v15, (v9 + 4), v8, countAndFlagsBits, object);

      if (v10 != v8)
      {
        __break(1u);
      }
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v11 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v4, v9);
    v13 = v12;

    udatpg_close();
    v6 = v13;
    v5 = v11;
  }

  else
  {
    udatpg_close();
    v5 = 0;
    v6 = 0;
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  v4 = a1;
  isStackAllocationSafe = swift_bridgeObjectRetain_n();
  if (v4 < 513 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v7 = (&v12[-1] - v6);

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v7, a3, v12);
    v8 = v12[0];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v10 = swift_slowAlloc();

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v10, a3, v12);
    MEMORY[0x1865D2690](v10, -1, -1);
    swift_bridgeObjectRelease_n();
    return v12[0];
  }

  return v8;
}

{
  v11[2] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  v3 = a1;
  isStackAllocationSafe = swift_retain_n();
  if (v3 < 513 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = (&v11[-1] - v5);

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v6, v11);
    v7 = v11[0];
  }

  else
  {
    v9 = swift_slowAlloc();

    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v9, v11);
    MEMORY[0x1865D2690](v9, -1, -1);

    return v11[0];
  }

  return v7;
}

uint64_t specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(unsigned __int16 *BestPatternWithOptions@<X0>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v21[1] = 0;
  if (!BestPatternWithOptions)
  {
    goto LABEL_17;
  }

  if (*(a4 + 16) >> 31)
  {
    __break(1u);
    __break(1u);
    v18 = BestPatternWithOptions;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v20 = swift_slowAlloc();

      specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v20, v18, a4, a5);
      if (v5)
      {

        result = MEMORY[0x1865D2690](v20, -1, -1);
        __break(1u);
      }

      else
      {
        MEMORY[0x1865D2690](v20, -1, -1);
        return swift_bridgeObjectRelease_n();
      }

      return result;
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v11 = (v21 - v10);
    v21[0] = 0;
    if (!(*(a4 + 16) >> 31))
    {
      v12 = udatpg_getBestPatternWithOptions();
      v13 = 0;
      v14 = 0;
      if (v21[0] <= 0 && v12 > 0)
      {
        v13 = specialized String.init(_utf16:)(v11, v12);
        v14 = v15;
      }

      goto LABEL_11;
    }

    __break(1u);
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v9 = udatpg_getBestPatternWithOptions();
  if (v9 > 0)
  {
    v13 = specialized String.init(_utf16:)(BestPatternWithOptions, v9);
    v14 = v16;
LABEL_11:
    result = swift_bridgeObjectRelease_n();
    *a5 = v13;
    a5[1] = v14;
    return result;
  }

  result = swift_bridgeObjectRelease_n();
  *a5 = 0;
  a5[1] = 0;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 96 * result);
  v6 = a2[3];
  v5[2] = a2[2];
  v5[3] = v6;
  v7 = a2[5];
  v5[4] = a2[4];
  v5[5] = v7;
  v8 = a2[1];
  *v5 = *a2;
  v5[1] = v8;
  v9 = (a5[7] + 16 * result);
  *v9 = a3;
  v9[1] = a4;
  v10 = a5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v12;
  }

  return result;
}

BOOL specialized UErrorCode.checkSuccessAndLogError(_:)(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000018147F840, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(v1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return v1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  v1 = a1;
  if (a1 >= 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000018147F750, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(v1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return v1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  v1 = a1;
  if (a1 >= 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000018147F810, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(v1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return v1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  v1 = a1;
  if (a1 >= 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000018147F7E0, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(v1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return v1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  v1 = a1;
  if (a1 >= 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000018147F7B0, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(v1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return v1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  v1 = a1;
  if (a1 >= 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x800000018147F770, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(v1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return v1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  v1 = a1;
  if (a1 >= 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x800000018147F710, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(v1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return v1 < U_ILLEGAL_ARGUMENT_ERROR;
}

{
  v1 = a1;
  if (a1 >= 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static ICUError.logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x800000018147F730, &v11);
      *(v5 + 12) = 2080;
      v7 = ICUError.debugDescription.getter(v1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

      *(v5 + 14) = v9;
      _os_log_impl(&dword_18075C000, v3, v4, "%s. Error: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865D2690](v6, -1, -1);
      MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  return v1 < U_ILLEGAL_ARGUMENT_ERROR;
}

void *specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUDateFormatterC14DateFormatInfoVAESgGMd, &_ss18_DictionaryStorageCy10Foundation16ICUDateFormatterC14DateFormatInfoVAESgGMR);
  v53 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v51 = (v5 + 64);
    v52 = v5;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v49 = v3;
    v50 = (v9 + 63) >> 6;
    v12 = v6 + 64;
    v54 = v6;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
LABEL_15:
      v22 = v18 | (v8 << 6);
      v55 = v19;
      if (v53)
      {
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 96 * v22;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = *(v24 + 16);
        v60 = *(v24 + 24);
        v28 = *(v24 + 32);
        v30 = *(v24 + 40);
        v29 = *(v24 + 48);
        v31 = *(v24 + 56);
        v58 = *(v24 + 64);
        v32 = *(v24 + 88);
        v59 = *(v24 + 80);
        v56 = *(v23 + 8 * v22);
        v57 = *(v24 + 72);
      }

      else
      {
        v33 = (*(v5 + 48) + 96 * v22);
        v34 = v33[2];
        v35 = v33[3];
        v36 = v33[5];
        v63 = v33[4];
        v64 = v36;
        v62[3] = v35;
        v37 = v33[1];
        v62[0] = *v33;
        v62[1] = v37;
        v62[2] = v34;
        v38 = *(*(v5 + 56) + 8 * v22);
        v32 = *(&v36 + 1);
        v59 = v36;
        v57 = *(&v63 + 1);
        v58 = v63;
        v31 = BYTE8(v35);
        v30 = *(&v34 + 1);
        v29 = v35;
        v28 = v34;
        v60 = *(&v37 + 1);
        v27 = v37;
        v25 = *(&v62[0] + 1);
        v26 = *&v62[0];
        outlined init with copy of ICUDateFormatter.DateFormatInfo(v62, v61);
        v56 = v38;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x1865CD060](v28);
      MEMORY[0x1865CD060](v30);
      MEMORY[0x1865CD060](v29);
      MEMORY[0x1865CD060](v31);
      String.hash(into:)();
      Hasher._combine(_:)(v59);
      if (v32 == 0.0)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v32;
      }

      MEMORY[0x1865CD090](*&v39);
      v40 = Hasher._finalize()();
      v7 = v54;
      v41 = -1 << *(v54 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v12 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v15 = v26;
        v14 = v27;
        result = v25;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v12 + 8 * v43);
          if (v47 != -1)
          {
            v13 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v42) & ~*(v12 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v15 = v26;
      v14 = v27;
      result = v25;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v17 = *(v54 + 48) + 96 * v13;
      *v17 = v15;
      *(v17 + 8) = result;
      *(v17 + 16) = v14;
      *(v17 + 24) = v60;
      *(v17 + 32) = v28;
      *(v17 + 40) = v30;
      *(v17 + 48) = v29;
      *(v17 + 56) = v31;
      *(v17 + 64) = v58;
      *(v17 + 72) = v57;
      *(v17 + 80) = v59;
      *(v17 + 88) = v32;
      *(*(v54 + 56) + 8 * v13) = v56;
      ++*(v54 + 16);
      v5 = v52;
      v11 = v55;
    }

    v20 = v8;
    result = v51;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v50)
      {
        break;
      }

      v21 = v51[v8];
      ++v20;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v19 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_37;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v49;
    if (v48 >= 64)
    {
      bzero(v51, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICUDateIntervalFormatterC9SignatureVAESgGMd, &_ss18_DictionaryStorageCy10Foundation24ICUDateIntervalFormatterC9SignatureVAESgGMR);
  v68 = v4;
  v101 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (*(v5 + 16))
  {
    v63 = v2;
    v6 = 0;
    result = (v5 + 64);
    v8 = 1 << *(v5 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v5 + 64);
    v64 = (v8 + 63) >> 6;
    v65 = (v5 + 64);
    v66 = v5;
    v67 = v101 + 64;
    while (v10)
    {
      v41 = __clz(__rbit64(v10));
      v42 = (v10 - 1) & v10;
LABEL_15:
      v45 = v41 | (v6 << 6);
      v70 = v42;
      if (v68)
      {
        v46 = *(v5 + 48) + 392 * v45;
        v79 = *v46;
        v80 = *(v46 + 16);
        v81 = *(v46 + 32);
        v82 = *(v46 + 48);
        v83 = *(v46 + 64);
        v84 = *(v46 + 80);
        v47 = *(v46 + 96);
        v85 = *(v46 + 104);
        v86 = *(v46 + 120);
        v87 = *(v46 + 136);
        v88 = *(v46 + 152);
        v89 = *(v46 + 168);
        v90 = *(v46 + 184);
        v48 = *(v46 + 200);
        v49 = *(v46 + 201);
        v91 = *(v46 + 208);
        v92 = *(v46 + 224);
        v93 = *(v46 + 240);
        v94 = *(v46 + 256);
        v95 = *(v46 + 280);
        v96 = *(v46 + 272);
        v51 = *(v46 + 288);
        v50 = *(v46 + 296);
        v97 = *(v46 + 312);
        v98 = *(v46 + 304);
        v73 = *(v46 + 328);
        v99 = *(v46 + 336);
        v100 = *(v46 + 320);
        v52 = *(v46 + 352);
        v75 = *(v46 + 360);
        v74 = *(v46 + 368);
        v76 = *(v46 + 376);
        v77 = *(v46 + 384);
        v71 = *(*(v5 + 56) + 8 * v45);
        v72 = *(v46 + 344);
      }

      else
      {
        memcpy(__dst, (*(v5 + 48) + 392 * v45), 0x188uLL);
        v53 = *(*(v5 + 56) + 8 * v45);
        v76 = *(&__dst[23] + 1);
        v77 = *&__dst[24];
        v74 = *&__dst[23];
        v75 = *(&__dst[22] + 1);
        v52 = LOBYTE(__dst[22]);
        v99 = *&__dst[21];
        v100 = *&__dst[20];
        v72 = *(&__dst[21] + 1);
        v73 = *(&__dst[20] + 1);
        v97 = *(&__dst[19] + 1);
        v98 = *&__dst[19];
        v95 = *(&__dst[17] + 1);
        v96 = *&__dst[17];
        v50 = *(&__dst[18] + 1);
        v51 = *&__dst[18];
        v93 = __dst[15];
        v94 = __dst[16];
        v91 = __dst[13];
        v92 = __dst[14];
        v49 = BYTE9(__dst[12]);
        v48 = BYTE8(__dst[12]);
        v89 = *(&__dst[10] + 8);
        v90 = *(&__dst[11] + 8);
        v87 = *(&__dst[8] + 8);
        v88 = *(&__dst[9] + 8);
        v85 = *(&__dst[6] + 8);
        v86 = *(&__dst[7] + 8);
        v47 = __dst[6];
        v83 = __dst[4];
        v84 = __dst[5];
        v81 = __dst[2];
        v82 = __dst[3];
        v79 = __dst[0];
        v80 = __dst[1];
        outlined init with copy of ICUDateIntervalFormatter.Signature(__dst, v102);
        v71 = v53;
      }

      Hasher.init(_seed:)();
      __dst[0] = v79;
      __dst[1] = v80;
      __dst[2] = v81;
      __dst[3] = v82;
      __dst[4] = v83;
      __dst[5] = v84;
      v69 = v47;
      LOBYTE(__dst[6]) = v47;
      *(&__dst[6] + 8) = v85;
      *(&__dst[7] + 8) = v86;
      *(&__dst[8] + 8) = v87;
      *(&__dst[9] + 8) = v88;
      *(&__dst[10] + 8) = v89;
      *(&__dst[11] + 8) = v90;
      v78 = v48;
      BYTE8(__dst[12]) = v48;
      BYTE9(__dst[12]) = v49;
      __dst[13] = v91;
      __dst[14] = v92;
      __dst[15] = v93;
      __dst[16] = v94;
      *&__dst[17] = v96;
      *(&__dst[17] + 1) = v95;
      *&__dst[18] = v51;
      *(&__dst[18] + 1) = v50;
      *&__dst[19] = v98;
      *(&__dst[19] + 1) = v97;
      *&__dst[20] = v100;
      *(&__dst[20] + 1) = v73;
      *&__dst[21] = v99;
      *(&__dst[21] + 1) = v72;
      Locale.Components.hash(into:)(v102);
      MEMORY[0x1865CD060](v52);
      String.hash(into:)();
      String.hash(into:)();
      v54 = Hasher._finalize()();
      v55 = -1 << *(v101 + 32);
      v56 = v54 & ~v55;
      v57 = v56 >> 6;
      if (((-1 << v56) & ~*(v67 + 8 * (v56 >> 6))) == 0)
      {
        v58 = 0;
        v59 = (63 - v55) >> 6;
        v12 = v76;
        v13 = v74;
        v14 = v99;
        v15 = v100;
        result = v73;
        v17 = v97;
        v16 = v98;
        v19 = v95;
        v18 = v96;
        v21 = v50;
        v20 = v51;
        v23 = v93;
        v22 = v94;
        v25 = v91;
        v24 = v92;
        v27 = v78;
        v26 = v49;
        v29 = v89;
        v28 = v90;
        v31 = v87;
        v30 = v88;
        v33 = v85;
        v32 = v86;
        v35 = v83;
        v34 = v84;
        v37 = v81;
        v36 = v82;
        v39 = v79;
        v38 = v80;
        while (++v57 != v59 || (v58 & 1) == 0)
        {
          v60 = v57 == v59;
          if (v57 == v59)
          {
            v57 = 0;
          }

          v58 |= v60;
          v61 = *(v67 + 8 * v57);
          if (v61 != -1)
          {
            v11 = __clz(__rbit64(~v61)) + (v57 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v56) & ~*(v67 + 8 * (v56 >> 6)))) | v56 & 0x7FFFFFFFFFFFFFC0;
      v12 = v76;
      v13 = v74;
      v14 = v99;
      v15 = v100;
      result = v73;
      v17 = v97;
      v16 = v98;
      v19 = v95;
      v18 = v96;
      v21 = v50;
      v20 = v51;
      v23 = v93;
      v22 = v94;
      v25 = v91;
      v24 = v92;
      v27 = v78;
      v26 = v49;
      v29 = v89;
      v28 = v90;
      v31 = v87;
      v30 = v88;
      v33 = v85;
      v32 = v86;
      v35 = v83;
      v34 = v84;
      v37 = v81;
      v36 = v82;
      v39 = v79;
      v38 = v80;
LABEL_7:
      *(v67 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v40 = *(v101 + 48) + 392 * v11;
      *v40 = v39;
      *(v40 + 16) = v38;
      *(v40 + 32) = v37;
      *(v40 + 48) = v36;
      *(v40 + 64) = v35;
      *(v40 + 80) = v34;
      *(v40 + 96) = v69;
      *(v40 + 120) = v32;
      *(v40 + 104) = v33;
      *(v40 + 152) = v30;
      *(v40 + 136) = v31;
      *(v40 + 184) = v28;
      *(v40 + 168) = v29;
      *(v40 + 200) = v27;
      *(v40 + 201) = v26;
      *(v40 + 208) = v25;
      *(v40 + 224) = v24;
      *(v40 + 240) = v23;
      *(v40 + 256) = v22;
      *(v40 + 272) = v18;
      *(v40 + 280) = v19;
      *(v40 + 288) = v20;
      *(v40 + 296) = v21;
      *(v40 + 304) = v16;
      *(v40 + 312) = v17;
      *(v40 + 320) = v15;
      *(v40 + 328) = result;
      *(v40 + 336) = v14;
      *(v40 + 344) = v72;
      *(v40 + 352) = v52;
      *(v40 + 360) = v75;
      *(v40 + 368) = v13;
      *(v40 + 376) = v12;
      *(v40 + 384) = v77;
      *(*(v101 + 56) + 8 * v11) = v71;
      ++*(v101 + 16);
      result = v65;
      v5 = v66;
      v10 = v70;
    }

    v43 = v6;
    while (1)
    {
      v6 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v6 >= v64)
      {
        break;
      }

      v44 = result[v6];
      ++v43;
      if (v44)
      {
        v41 = __clz(__rbit64(v44));
        v42 = (v44 - 1) & v44;
        goto LABEL_15;
      }
    }

    if ((v68 & 1) == 0)
    {

      v3 = v63;
      goto LABEL_34;
    }

    v62 = 1 << *(v5 + 32);
    v3 = v63;
    if (v62 >= 64)
    {
      bzero(result, ((v62 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *result = -1 << v62;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v101;
  return result;
}