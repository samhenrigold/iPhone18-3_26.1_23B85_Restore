uint64_t NSDecimal.formatted<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a2;
  v7[1] = a3;
  v8 = a4;
  return (*(a6 + 48))(v7, a5, a6);
}

uint64_t NSDecimal.FormatStyle.Percent.consuming(_:startingAt:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v109 = a3;
  v103 = a1;
  v104 = a2;
  v6 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v7 = *(v6 - 8);
  v105 = v6;
  v106 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v107 = &v90 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90 - v12;
  v14 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMR);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v90 - v22;
  outlined init with copy of NSDecimal.FormatStyle(v108, &v90 - v22, type metadata accessor for NSDecimal.FormatStyle.Percent);
  v24 = v23;
  v25 = v109;
  *(v24 + *(v21 + 44)) = 0;
  v108 = a5;
  if (v25 >> 14 >= a5 >> 14)
  {
    goto LABEL_11;
  }

  v99 = v24;
  outlined init with copy of NSDecimal.FormatStyle(v24, v16, type metadata accessor for NSDecimal.FormatStyle.Percent);
  outlined init with take of NSDecimal.FormatStyle.Percent(v16 + *(v14 + 20), v19, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v27 = *v16;
  v26 = v16[1];
  v101 = v19;
  outlined init with copy of NSDecimal.FormatStyle(v19, v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v29 = *(v26 + 64);
  swift_unknownObjectRetain();
  v100 = v27;
  v30 = v29(ObjectType, v26);
  v31 = v105;
  v32 = &v13[*(v105 + 20)];
  *v32 = v30;
  v32[1] = v33;
  v13[*(v31 + 24)] = 0;
  v34 = v13;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v35 = static ICULegacyNumberFormatter.cache;
  v36 = qword_1EA7AFFA0;
  v37 = v13;
  v38 = v107;
  outlined init with copy of NSDecimal.FormatStyle(v37, v107, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v39 = (*(v106 + 80) + 16) & ~*(v106 + 80);
  v40 = swift_allocObject();
  v41 = outlined init with take of NSDecimal.FormatStyle.Percent(v38, v40 + v39, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v41);
  *(&v90 - 2) = v34;
  os_unfair_lock_lock((v36 + 24));
  v42 = v110;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v111, v36 + 16);
  if (v42)
  {
LABEL_44:
    os_unfair_lock_unlock((v36 + 24));
    __break(1u);
    goto LABEL_45;
  }

  os_unfair_lock_unlock((v36 + 24));
  if (v111[0])
  {
    v110 = 0;
LABEL_7:
    outlined destroy of NumberFormatStyleConfiguration.Collection(v34, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v43 = String.subscript.getter();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v112 = 0;
    v109 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v43, v44, v46, v48, &v112);
    if ((v50 & 0x100000000) == 0)
    {
      v111[0] = v43;
      v111[1] = v45;
      v111[2] = v47;
      v111[3] = v49;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v51 = String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of NumberFormatStyleConfiguration.Collection(v101, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      outlined destroy of TermOfAddress?(v99, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMR);
      result = v51;
      v53 = 0;
LABEL_12:
      LOBYTE(v111[0]) = v53;
      return result;
    }

    swift_unknownObjectRelease();

    outlined destroy of NumberFormatStyleConfiguration.Collection(v101, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    v24 = v99;
LABEL_11:
    outlined destroy of TermOfAddress?(v24, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMR);
    result = 0;
    v53 = 1;
    goto LABEL_12;
  }

  v98 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
  v110 = 0;
  os_unfair_lock_lock((v36 + 24));
  v54 = *(v36 + 16);
  if (v35 >= *(v54 + 16))
  {
  }

  else
  {
    *(v36 + 16) = MEMORY[0x1E69E7CC8];
  }

  v55 = v102;
  outlined init with copy of NSDecimal.FormatStyle(v34, v102, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v111[0] = *(v36 + 16);
  v57 = v111[0];
  *(v36 + 16) = 0x8000000000000000;
  v59 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
  v60 = v57[2];
  v61 = (v58 & 1) == 0;
  v62 = v60 + v61;
  if (__OFADD__(v60, v61))
  {
    __break(1u);
LABEL_27:
    v91 = v59;
    v96 = v58;
    v92 = v54;
    v105 = v40;
    v93 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
    v97 = static _DictionaryStorage.copy(original:)();
    v95 = v57;
    if (!v57[2])
    {
LABEL_42:

      v40 = v105;
      v34 = v93;
      v55 = v102;
      v66 = v96;
      v59 = v91;
LABEL_20:
      v57 = v97;
      if (v66)
      {
LABEL_21:
        *(v57[7] + 8 * v59) = v98;

LABEL_25:
        outlined destroy of NumberFormatStyleConfiguration.Collection(v55, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(v36 + 16) = v57;

        os_unfair_lock_unlock((v36 + 24));

        goto LABEL_7;
      }

LABEL_24:
      v105 = v40;
      v67 = v107;
      v68 = v57;
      v69 = v59;
      outlined init with copy of NSDecimal.FormatStyle(v55, v107, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v70 = v69;
      v57 = v68;
      specialized _NativeDictionary._insert(at:key:value:)(v70, v67, v98, v68);
      goto LABEL_25;
    }

    v71 = (v97 + 64);
    v72 = 1 << *(v97 + 32);
    v94 = (v95 + 8);
    v73 = (v72 + 63) >> 6;
    if (v97 != v95 || v71 >= &v94[8 * v73])
    {
      memmove(v71, v94, 8 * v73);
    }

    v74 = 0;
    v75 = v95;
    *(v97 + 16) = v95[2];
    v76 = 1 << *(v75 + 32);
    v77 = v75[8];
    v78 = -1;
    if (v76 < 64)
    {
      v78 = ~(-1 << v76);
    }

    v79 = v78 & v77;
    v80 = (v76 + 63) >> 6;
    if ((v78 & v77) != 0)
    {
      do
      {
        v81 = __clz(__rbit64(v79));
        v79 &= v79 - 1;
LABEL_40:
        v84 = v81 | (v74 << 6);
        v85 = v95;
        v86 = v107;
        v87 = *(v106 + 72) * v84;
        outlined init with copy of NSDecimal.FormatStyle(v95[6] + v87, v107, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v88 = *(v85[7] + 8 * v84);
        v89 = v97;
        outlined init with take of NSDecimal.FormatStyle.Percent(v86, *(v97 + 48) + v87, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(*(v89 + 56) + 8 * v84) = v88;
      }

      while (v79);
    }

    v82 = v74;
    while (1)
    {
      v74 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        break;
      }

      if (v74 >= v80)
      {
        goto LABEL_42;
      }

      v83 = *&v94[8 * v74];
      ++v82;
      if (v83)
      {
        v81 = __clz(__rbit64(v83));
        v79 = (v83 - 1) & v83;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v57[3] >= v62)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v58)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v96 = v58;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, isUniquelyReferenced_nonNull_native);
  v97 = v111[0];
  v63 = specialized __RawDictionaryStorage.find<A>(_:)(v55);
  v65 = v64 & 1;
  v66 = v96;
  if ((v96 & 1) == v65)
  {
    v59 = v63;
    goto LABEL_20;
  }

LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance NSDecimal.FormatStyle.Percent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

uint64_t NSDecimal.FormatStyle.Currency.consuming(_:startingAt:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v107 = a3;
  v101 = a1;
  v102 = a2;
  v6 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v7 = *(v6 - 8);
  v103 = v6;
  v104 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v100 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v105 = v89 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v89 - v12;
  v14 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMR);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v89 - v22;
  outlined init with copy of NSDecimal.FormatStyle(v106, v89 - v22, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v24 = v23;
  v25 = v107;
  *(v24 + *(v21 + 44)) = 0;
  v106 = a5;
  if (v25 >> 14 >= a5 >> 14)
  {
    goto LABEL_11;
  }

  v98 = v24;
  outlined init with copy of NSDecimal.FormatStyle(v24, v16, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v26 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR) + 48)];
  outlined init with take of NSDecimal.FormatStyle.Percent(v16 + *(v14 + 24), v19, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  v27 = v16[3];
  *v26 = v16[2];
  *(v26 + 1) = v27;
  swift_storeEnumTagMultiPayload();
  v29 = *v16;
  v28 = v16[1];
  v99 = v19;
  outlined init with copy of NSDecimal.FormatStyle(v19, v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v31 = *(v28 + 64);
  swift_unknownObjectRetain();
  v97 = v29;
  v32 = v31(ObjectType, v28);
  v33 = v103;
  v34 = &v13[*(v103 + 5)];
  *v34 = v32;
  v34[1] = v35;
  v13[*(v33 + 6)] = 0;
  v36 = v13;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v37 = static ICULegacyNumberFormatter.cache;
  v38 = qword_1EA7AFFA0;
  v39 = v105;
  outlined init with copy of NSDecimal.FormatStyle(v13, v105, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v40 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v41 = swift_allocObject();
  v42 = outlined init with take of NSDecimal.FormatStyle.Percent(v39, v41 + v40, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v42);
  v89[-2] = v13;
  os_unfair_lock_lock((v38 + 24));
  v43 = v108;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v109, v38 + 16);
  if (v43)
  {
LABEL_44:
    os_unfair_lock_unlock((v38 + 24));
    __break(1u);
    goto LABEL_45;
  }

  os_unfair_lock_unlock((v38 + 24));
  if (v109[0])
  {
    v108 = 0;
LABEL_7:
    outlined destroy of NumberFormatStyleConfiguration.Collection(v36, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v44 = String.subscript.getter();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v110 = 0;
    v107 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v44, v45, v47, v49, &v110);
    if ((v51 & 0x100000000) == 0)
    {
      v109[0] = v44;
      v109[1] = v46;
      v109[2] = v48;
      v109[3] = v50;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v52 = String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of NumberFormatStyleConfiguration.Collection(v99, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      outlined destroy of TermOfAddress?(v98, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMR);
      result = v52;
      v54 = 0;
LABEL_12:
      LOBYTE(v109[0]) = v54;
      return result;
    }

    swift_unknownObjectRelease();

    outlined destroy of NumberFormatStyleConfiguration.Collection(v99, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    v24 = v98;
LABEL_11:
    outlined destroy of TermOfAddress?(v24, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMR);
    result = 0;
    v54 = 1;
    goto LABEL_12;
  }

  v96 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
  v108 = 0;
  os_unfair_lock_lock((v38 + 24));
  v55 = *(v38 + 16);
  if (v37 >= *(v55 + 16))
  {
  }

  else
  {
    *(v38 + 16) = MEMORY[0x1E69E7CC8];
  }

  v56 = v100;
  outlined init with copy of NSDecimal.FormatStyle(v36, v100, type metadata accessor for ICULegacyNumberFormatter.Signature);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v109[0] = *(v38 + 16);
  v58 = v109[0];
  *(v38 + 16) = 0x8000000000000000;
  v60 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
  v61 = v58[2];
  v62 = (v59 & 1) == 0;
  v63 = v61 + v62;
  if (__OFADD__(v61, v62))
  {
    __break(1u);
LABEL_27:
    v90 = v60;
    v94 = v59;
    v89[1] = v55;
    v91 = v41;
    v92 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
    v95 = static _DictionaryStorage.copy(original:)();
    v103 = v58;
    if (!v58[2])
    {
LABEL_42:

      v36 = v92;
      v56 = v100;
      v67 = v94;
      v60 = v90;
LABEL_20:
      v58 = v95;
      if (v67)
      {
LABEL_21:
        *(v58[7] + 8 * v60) = v96;

LABEL_25:
        outlined destroy of NumberFormatStyleConfiguration.Collection(v56, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(v38 + 16) = v58;

        os_unfair_lock_unlock((v38 + 24));

        goto LABEL_7;
      }

LABEL_24:
      v95 = v58;
      v68 = v105;
      v69 = v60;
      outlined init with copy of NSDecimal.FormatStyle(v56, v105, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v58 = v95;
      specialized _NativeDictionary._insert(at:key:value:)(v69, v68, v96, v95);
      goto LABEL_25;
    }

    v70 = (v95 + 8);
    v71 = 1 << *(v95 + 32);
    v93 = (v103 + 8);
    v72 = (v71 + 63) >> 6;
    if (v95 != v103 || v70 >= &v93[8 * v72])
    {
      memmove(v70, v93, 8 * v72);
    }

    v73 = 0;
    v74 = v103;
    v95[2] = v103[2];
    v75 = 1 << *(v74 + 32);
    v76 = v74[8];
    v77 = -1;
    if (v75 < 64)
    {
      v77 = ~(-1 << v75);
    }

    v78 = v77 & v76;
    v79 = (v75 + 63) >> 6;
    if ((v77 & v76) != 0)
    {
      do
      {
        v80 = __clz(__rbit64(v78));
        v78 &= v78 - 1;
LABEL_40:
        v83 = v80 | (v73 << 6);
        v84 = v103;
        v85 = *(v104 + 72) * v83;
        v86 = v105;
        outlined init with copy of NSDecimal.FormatStyle(v103[6] + v85, v105, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v87 = *(v84[7] + 8 * v83);
        v88 = v95;
        outlined init with take of NSDecimal.FormatStyle.Percent(v86, v95[6] + v85, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(v88[7] + 8 * v83) = v87;
      }

      while (v78);
    }

    v81 = v73;
    while (1)
    {
      v73 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v73 >= v79)
      {
        goto LABEL_42;
      }

      v82 = *&v93[8 * v73];
      ++v81;
      if (v82)
      {
        v80 = __clz(__rbit64(v82));
        v78 = (v82 - 1) & v82;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v58[3] >= v63)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v59)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    goto LABEL_27;
  }

  v94 = v59;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, isUniquelyReferenced_nonNull_native);
  v95 = v109[0];
  v64 = specialized __RawDictionaryStorage.find<A>(_:)(v56);
  v66 = v65 & 1;
  v67 = v94;
  if ((v94 & 1) == v66)
  {
    v60 = v64;
    goto LABEL_20;
  }

LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance NSDecimal.FormatStyle.Currency(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency, &protocol conformance descriptor for NSDecimal.FormatStyle.Currency);

  return MEMORY[0x1EEE6E5F8](a1, v2);
}

uint64_t static RegexComponent<>.localizedCurrency(code:locale:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a3 = *a2;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  v6 = a3 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  v7 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v8 = v7[9];
  v9 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v9 - 8) + 56))(v6 + v8, 1, 1, v9);
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0x1FFFFFFFELL;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 48) = 0;
  *(v6 + 72) = 512;
  *(v6 + 74) = 2;
  *(v6 + 78) = 2;
  v10 = v6 + v7[10];
  *v10 = 0;
  *(v10 + 8) = -1;
  *(v6 + v7[11]) = 1;
  *(v6 + v7[12]) = 3;

  return swift_unknownObjectRetain();
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 2 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 34), 2 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    v10 = *(v9 + 3);
    *a2 = *(v9 + 2);
    *(a2 + 16) = v10;
    *(a2 + 32) = v9[8];
    result = memmove(v9 + 4, v9 + 9, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized static NSDecimal.FormatStyle.Currency.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v8 = *a2;
  v9 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = specialized static Locale.== infix(_:_:)(&v9, &v8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0 || (*(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);

  return static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t specialized static NSDecimal.FormatStyle.Attributed.Style.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  *&v45 = a2;
  v42 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v42);
  v43 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v41 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleV10AttributedV0D0O_AItMd, &_sSo9NSDecimala10FoundationE11FormatStyleV10AttributedV0D0O_AItMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v41 - v18;
  v21 = *(v20 + 56);
  outlined init with copy of NSDecimal.FormatStyle(a1, &v41 - v18, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  outlined init with copy of NSDecimal.FormatStyle(v45, &v19[v21], type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of NSDecimal.FormatStyle(v19, v13, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = &v19[v21];
        v24 = v44;
        outlined init with take of NSDecimal.FormatStyle.Percent(v23, v44, type metadata accessor for NSDecimal.FormatStyle.Currency);
        v25 = *v13;
        v45 = *v24;
        v46 = v45;
        v47 = v25;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v26 = specialized static Locale.== infix(_:_:)(&v47, &v46);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v26 & 1) != 0 && (*(v13 + 2) == *(v24 + 16) && *(v13 + 3) == *(v24 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static CurrencyFormatStyleConfiguration.Collection.== infix(_:_:)(&v13[*(v41 + 24)], v24 + *(v41 + 24)))
        {
          outlined destroy of NumberFormatStyleConfiguration.Collection(v24, type metadata accessor for NSDecimal.FormatStyle.Currency);
          v27 = v13;
          v28 = type metadata accessor for NSDecimal.FormatStyle.Currency;
LABEL_23:
          outlined destroy of NumberFormatStyleConfiguration.Collection(v27, v28);
          outlined destroy of NumberFormatStyleConfiguration.Collection(v19, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
          return 1;
        }

        outlined destroy of NumberFormatStyleConfiguration.Collection(v24, type metadata accessor for NSDecimal.FormatStyle.Currency);
        v35 = v13;
        v36 = type metadata accessor for NSDecimal.FormatStyle.Currency;
        goto LABEL_28;
      }

      v29 = type metadata accessor for NSDecimal.FormatStyle.Currency;
      v30 = v13;
    }

    else
    {
      outlined init with copy of NSDecimal.FormatStyle(v19, v10, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v31 = v43;
        outlined init with take of NSDecimal.FormatStyle.Percent(&v19[v21], v43, type metadata accessor for NSDecimal.FormatStyle.Percent);
        v32 = *v10;
        v45 = *v31;
        v46 = v45;
        v47 = v32;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v33 = specialized static Locale.== infix(_:_:)(&v47, &v46);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v33)
        {
          v34 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v10 + *(v42 + 20), v31 + *(v42 + 20));
          outlined destroy of NumberFormatStyleConfiguration.Collection(v31, type metadata accessor for NSDecimal.FormatStyle.Percent);
          if (v34)
          {
            v28 = type metadata accessor for NSDecimal.FormatStyle.Percent;
            v27 = v10;
            goto LABEL_23;
          }
        }

        else
        {
          outlined destroy of NumberFormatStyleConfiguration.Collection(v31, type metadata accessor for NSDecimal.FormatStyle.Percent);
        }

        v36 = type metadata accessor for NSDecimal.FormatStyle.Percent;
        v35 = v10;
        goto LABEL_28;
      }

      v29 = type metadata accessor for NSDecimal.FormatStyle.Percent;
      v30 = v10;
    }
  }

  else
  {
    outlined init with copy of NSDecimal.FormatStyle(v19, v16, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(&v19[v21], v7, type metadata accessor for NSDecimal.FormatStyle);
      v37 = *v16;
      v45 = *v7;
      v46 = v45;
      v47 = v37;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v38 = specialized static Locale.== infix(_:_:)(&v47, &v46);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v38)
      {
        v39 = static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v16 + *(v5 + 20), v7 + *(v5 + 20));
        outlined destroy of NumberFormatStyleConfiguration.Collection(v7, type metadata accessor for NSDecimal.FormatStyle);
        if (v39)
        {
          v28 = type metadata accessor for NSDecimal.FormatStyle;
          v27 = v16;
          goto LABEL_23;
        }
      }

      else
      {
        outlined destroy of NumberFormatStyleConfiguration.Collection(v7, type metadata accessor for NSDecimal.FormatStyle);
      }

      v36 = type metadata accessor for NSDecimal.FormatStyle;
      v35 = v16;
LABEL_28:
      outlined destroy of NumberFormatStyleConfiguration.Collection(v35, v36);
      outlined destroy of NumberFormatStyleConfiguration.Collection(v19, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      return 0;
    }

    v29 = type metadata accessor for NSDecimal.FormatStyle;
    v30 = v16;
  }

  outlined destroy of NumberFormatStyleConfiguration.Collection(v30, v29);
  outlined destroy of TermOfAddress?(v19, &_sSo9NSDecimala10FoundationE11FormatStyleV10AttributedV0D0O_AItMd, &_sSo9NSDecimala10FoundationE11FormatStyleV10AttributedV0D0O_AItMR);
  return 0;
}

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys);
  }

  return result;
}

uint64_t outlined assign with take of NumberFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Percent(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
  a1[2] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Currency(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency, &protocol conformance descriptor for NSDecimal.FormatStyle.Currency);
  a1[2] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency, &protocol conformance descriptor for NSDecimal.FormatStyle.Currency);
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency, &protocol conformance descriptor for NSDecimal.FormatStyle.Currency);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Attributed(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed and conformance NSDecimal.FormatStyle.Attributed, type metadata accessor for NSDecimal.FormatStyle.Attributed, &protocol conformance descriptor for NSDecimal.FormatStyle.Attributed);
  a1[2] = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed and conformance NSDecimal.FormatStyle.Attributed, type metadata accessor for NSDecimal.FormatStyle.Attributed, &protocol conformance descriptor for NSDecimal.FormatStyle.Attributed);
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed and conformance NSDecimal.FormatStyle.Attributed, type metadata accessor for NSDecimal.FormatStyle.Attributed, &protocol conformance descriptor for NSDecimal.FormatStyle.Attributed);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle, &protocol conformance descriptor for NSDecimal.FormatStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Currency(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency, &protocol conformance descriptor for NSDecimal.FormatStyle.Currency);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.FormatStyle.Percent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent, &protocol conformance descriptor for NSDecimal.FormatStyle.Percent);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for NSDecimal.FormatStyle.Attributed(uint64_t a1)
{
  result = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t specialized NSDecimal.FormatStyle.Currency.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL)
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

unint64_t lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys);
  }

  return result;
}

uint64_t specialized NSDecimal.FormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616D69636564 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6563726570 && a2 == 0xE700000000000000)
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

uint64_t static NSDecimal.ParseStrategy.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v9 = type metadata accessor for NSDecimal.ParseStrategy(0, a3, a4, v8);
    v10 = *(a1 + *(v9 + 36)) ^ *(a2 + *(v9 + 36)) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t NSDecimal.ParseStrategy.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374616D726F66 && a2 == 0xEB00000000656C79;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696E656CLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int NSDecimal.ParseStrategy.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1 & 1);
  return Hasher._finalize()();
}

uint64_t NSDecimal.ParseStrategy.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E65696E656CLL;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.ParseStrategy<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSDecimal.ParseStrategy.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.ParseStrategy<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = NSDecimal.ParseStrategy.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance NSDecimal.ParseStrategy<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for Sequence._customContainsEquatableElement(_:) in conformance AttributedString._InternalRuns();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.ParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.ParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t NSDecimal.ParseStrategy.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  v5 = *(a2 + 24);
  v13 = *(a2 + 16);
  type metadata accessor for NSDecimal.ParseStrategy.CodingKeys(255, v13, v5, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v10 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

Swift::Int NSDecimal.ParseStrategy.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 36)));
  return Hasher._finalize()();
}

uint64_t NSDecimal.ParseStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDecimal.ParseStrategy.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v33 = type metadata accessor for KeyedDecodingContainer();
  v29 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v25 - v11;
  v31 = a3;
  v14 = type metadata accessor for NSDecimal.ParseStrategy(0, a2, a3, v13);
  v27 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = a1;
  v26 = v14;
  v18 = v29;
  v19 = v30;
  v36 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v16;
  (*(v19 + 32))(v16, v32, a2);
  v35 = 1;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v18 + 8))(v12, v33);
  v23 = v26;
  v22 = v27;
  v20[*(v26 + 36)] = v21 & 1;
  (*(v22 + 16))(v28, v20, v23);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return (*(v22 + 8))(v20, v23);
}

void protocol witness for ParseStrategy.parse(_:) in conformance NSDecimal.ParseStrategy<A>(NSDecimal **a1@<X0>, uint64_t a2@<X8>)
{
  NSDecimal.ParseStrategy.parse(_:)(*a1, *a1);
  if (!v6)
  {
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = v5;
  }
}

uint64_t specialized NSDecimal.ParseStrategy.parse(_:)(unint64_t a1, unint64_t a2)
{
  v284 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v269 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v263 = &v254 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v270 = &v254 - v8;
  v268 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v254 - v11;
  v13 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v254 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v254 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v274 = a1;
  v20 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v20 = 11;
  }

  v271 = a2;
  v272 = v2;
  if (!v19)
  {
    v37 = v273;
    goto LABEL_17;
  }

  v264 = v20;
  v265 = v19;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v2, v15, type metadata accessor for NSDecimal.FormatStyle);
  v262 = v13;
  outlined init with take of ICULegacyNumberFormatter.Signature(v15 + *(v13 + 20), v18, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v21 = *v15;
  v22 = v15[1];
  v23 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMR) + 36));
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v18, v12, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v25 = *(v22 + 64);
  swift_unknownObjectRetain();
  v267 = v21;
  v26 = v25(ObjectType, v22);
  v27 = &v12[*(v5 + 20)];
  *v27 = v26;
  v27[1] = v28;
  v12[*(v5 + 24)] = v23;
  v266 = v18;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v261 = v5;
  v30 = static ICULegacyNumberFormatter.cache;
  v29 = qword_1EA7AFFA0;
  v31 = v270;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v12, v270, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v32 = (*(v269 + 80) + 16) & ~*(v269 + 80);
  v33 = swift_allocObject();
  v34 = outlined init with take of ICULegacyNumberFormatter.Signature(v31, v33 + v32, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v34);
  *(&v254 - 2) = v12;
  os_unfair_lock_lock((v29 + 24));
  v35 = v273;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v282, v29 + 16);
  if (v35)
  {
    goto LABEL_285;
  }

  v36 = v12;
  os_unfair_lock_unlock((v29 + 24));
  a2 = v271;
  if (!v282)
  {
    v67 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
    v273 = 0;
    os_unfair_lock_lock((v29 + 24));
    v68 = *(*(v29 + 16) + 16);
    v260 = *(v29 + 16);
    if (v30 < v68)
    {
      *(v29 + 16) = MEMORY[0x1E69E7CC8];
    }

    else
    {
    }

    v37 = v273;
    v80 = v263;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v12, v263, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v268 = v67;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v282 = *(v29 + 16);
    v82 = v282;
    *(v29 + 16) = 0x8000000000000000;
    v84 = specialized __RawDictionaryStorage.find<A>(_:)(v80);
    v85 = *(v82 + 16);
    v86 = (v83 & 1) == 0;
    v87 = v85 + v86;
    if (__OFADD__(v85, v86))
    {
      goto LABEL_147;
    }

    if (*(v82 + 24) >= v87)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_261;
      }

      if ((v83 & 1) == 0)
      {
        goto LABEL_277;
      }

      goto LABEL_53;
    }

    v88 = isUniquelyReferenced_nonNull_native;
    v89 = v83;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v87, v88);
    v82 = v282;
    v90 = specialized __RawDictionaryStorage.find<A>(_:)(v80);
    if ((v89 & 1) == (v91 & 1))
    {
      v84 = v90;
      if ((v89 & 1) == 0)
      {
        goto LABEL_277;
      }

      goto LABEL_53;
    }

    goto LABEL_288;
  }

  v37 = 0;
  while (1)
  {
    outlined destroy of ICULegacyNumberFormatter.Signature(v36, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v38 = String.subscript.getter();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    *&v279 = 0;
    v45 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v38, v39, v41, v43, &v279);
    if ((v46 & 0x100000000) == 0)
    {
      *&v282 = v38;
      *(&v282 + 1) = v40;
      *&v283 = v42;
      *(&v283 + 1) = v44;
      v47 = v45;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of ICULegacyNumberFormatter.Signature(v266, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      return v47;
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v266, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    swift_unknownObjectRelease();

    v13 = v262;
LABEL_17:
    v282 = 0uLL;
    result = specialized NSDecimal.init(string:locale:)(v274, a2, &v282);
    v36 = v272;
    if ((v49 & 0x100000000) == 0)
    {
      return result;
    }

    specialized NSDecimal.init(_:)(3.14);
    v267 = v50;
    v269 = v51;
    LODWORD(v268) = v52;
    v265 = *(v13 + 20);
    v29 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v54 = v53;
    v56 = *v36;
    v55 = *(v36 + 8);
    v57 = swift_getObjectType();
    v58 = *(v55 + 472);
    v263 = v56;
    v261 = v57;
    v264 = v55;
    v262 = v55 + 472;
    v260 = v58;
    v59 = v58(v57, v55);
    v61 = v60;
    if (one-time initialization token for cache != -1)
    {
      v92 = v59;
      swift_once();
      v59 = v92;
    }

    a2 = *algn_1EA7B1D98;
    v266 = static ICUNumberFormatter.cache;
    *&v279 = v29;
    *(&v279 + 1) = v54;
    v270 = v59;
    v280 = v59;
    v281 = v61;
    MEMORY[0x1EEE9AC00](v59);
    *(&v254 - 2) = &v279;
    os_unfair_lock_lock((a2 + 24));
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(a2 + 16, &v282);
    v273 = v37;
    if (v37)
    {
      break;
    }

    os_unfair_lock_unlock((a2 + 24));
    v62 = v282;
    if (v282 != 1)
    {
      goto LABEL_75;
    }

    type metadata accessor for ICUNumberFormatter();
    v62 = swift_allocObject();
    v62[3] = v29;
    v62[4] = v54;
    swift_bridgeObjectRetain_n();
    v63 = MEMORY[0x1865CB200](v29, v54);
    if (v63)
    {
      v64 = v63;
      v65 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v63, 0);

      v36 = specialized Sequence._copySequenceContents(initializing:)(&v282, (v65 + 4), v64, v29, v54);

      if (v36 != v64)
      {
        goto LABEL_56;
      }
    }

    else
    {

      v65 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v282) = 0;
    if (v65[2] >> 31)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    LOBYTE(v36) = String.utf8CString.getter();
    v69 = unumf_openForSkeletonAndLocale();

    if (!v69)
    {
      goto LABEL_33;
    }

    if (v282 >= 1)
    {
      unumf_close();
LABEL_33:

      type metadata accessor for ICUNumberFormatterBase();
      swift_deallocPartialClassInstance();
      v62 = 0;
      goto LABEL_35;
    }

    v62[2] = v69;
LABEL_35:
    os_unfair_lock_lock((a2 + 24));
    v70 = *(*(a2 + 16) + 16);
    v259 = *(a2 + 16);
    if (v266 < v70)
    {
      *(a2 + 16) = MEMORY[0x1E69E7CC8];
    }

    else
    {
    }

    v71 = swift_isUniquelyReferenced_nonNull_native();
    *&v282 = *(a2 + 16);
    v37 = v282;
    *(a2 + 16) = 0x8000000000000000;
    v66 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v54, v270, v61);
    v73 = *(v37 + 16);
    v74 = (v72 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
      goto LABEL_55;
    }

    LOBYTE(v36) = v72;
    if (*(v37 + 24) < v75)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v75, v71);
      v76 = v282;
      v77 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v54, v270, v61);
      if ((v36 & 1) != (v78 & 1))
      {
        goto LABEL_287;
      }

      v66 = v77;
LABEL_44:
      if ((v36 & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_45;
    }

    if (v71)
    {
      v76 = v37;
      goto LABEL_44;
    }

LABEL_57:
    v256 = v66;
    v254 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
    v93 = static _DictionaryStorage.copy(original:)();
    v76 = v93;
    if (*(v37 + 16))
    {
      v94 = (v93 + 64);
      v95 = 1 << *(v76 + 32);
      v257 = v37 + 64;
      v96 = (v95 + 63) >> 6;
      if (v76 != v37 || v94 >= v257 + 8 * v96)
      {
        memmove(v94, v257, 8 * v96);
      }

      v97 = 0;
      *(v76 + 16) = *(v37 + 16);
      v98 = 1 << *(v37 + 32);
      v99 = -1;
      if (v98 < 64)
      {
        v99 = ~(-1 << v98);
      }

      v258 = v99 & *(v37 + 64);
      v255 = (v98 + 63) >> 6;
      while (v258)
      {
        v100 = __clz(__rbit64(v258));
        v258 &= v258 - 1;
LABEL_71:
        v103 = v100 | (v97 << 6);
        v104 = (*(v37 + 48) + 32 * v103);
        v105 = v104[1];
        v106 = v104[2];
        a2 = v104[3];
        v107 = *(*(v37 + 56) + 8 * v103);
        v108 = (*(v76 + 48) + 32 * v103);
        *v108 = *v104;
        v108[1] = v105;
        v108[2] = v106;
        v108[3] = a2;
        *(*(v76 + 56) + 8 * v103) = v107;
      }

      v101 = v97;
      while (1)
      {
        v97 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          break;
        }

        if (v97 >= v255)
        {
          goto LABEL_72;
        }

        v102 = *(v257 + 8 * v97);
        ++v101;
        if (v102)
        {
          v100 = __clz(__rbit64(v102));
          v258 = (v102 - 1) & v102;
          goto LABEL_71;
        }
      }

      __break(1u);
      goto LABEL_281;
    }

LABEL_72:

    a2 = v254;
    v66 = v256;
    if ((v36 & 1) == 0)
    {
LABEL_73:
      specialized _NativeDictionary._insert(at:key:value:)(v66, v29, v54, v270, v61, v62, v76);
      goto LABEL_74;
    }

LABEL_45:
    v79 = v66;

    *(*(v76 + 56) + 8 * v79) = v62;

LABEL_74:
    *(a2 + 16) = v76;

    os_unfair_lock_unlock((a2 + 24));

    outlined consume of ICUNumberFormatter??(1);
    v36 = v272;
LABEL_75:

    if (!v62)
    {
      v112 = v268;
      v110 = v267;
LABEL_79:
      v111 = v269;
      goto LABEL_80;
    }

    v109 = v62[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_allocObject();
    v110 = v267;
    v111 = v269;
    v112 = v268;
    v113 = v273;
    v114 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v109, v267, v269, v268);
    if (!v113)
    {
      v273 = 0;
      v129 = v114;

      v126 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v129);
      v128 = v130;

      if (v128)
      {
        goto LABEL_119;
      }

      goto LABEL_79;
    }

    v273 = 0;
LABEL_80:
    *&v282 = v110;
    *(&v282 + 1) = v111;
    LODWORD(v283) = v112;
    if (_So9NSDecimala__length_getter(&v282) || (*&v282 = v110, *(&v282 + 1) = v111, LODWORD(v283) = v112, !_So9NSDecimala__isNegative_getter(&v282)))
    {
      *&v282 = v110;
      *(&v282 + 1) = v111;
      LODWORD(v283) = v112;
      if (_So9NSDecimala__length_getter(&v282))
      {
        *&v276 = 0;
        *(&v276 + 1) = 0xE000000000000000;
        *&v282 = v110;
        *(&v282 + 1) = v111;
        LODWORD(v283) = v112;
        v279 = v282;
        LODWORD(v280) = v112;
        if (_So9NSDecimala__exponent_getter(&v279) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v279 = v282;
            LODWORD(v280) = v283;
            v115 = _So9NSDecimala__exponent_getter(&v279);
            _So9NSDecimala__exponent_setter((v115 - 1), &v282);
            v279 = v282;
            LODWORD(v280) = v283;
          }

          while (_So9NSDecimala__exponent_getter(&v279) > 0);
        }

        v279 = v282;
        LODWORD(v280) = v283;
        if (!_So9NSDecimala__exponent_getter(&v279))
        {
          _So9NSDecimala__exponent_setter(1, &v282);
        }

        v279 = v282;
        LODWORD(v280) = v283;
        if (_So9NSDecimala__length_getter(&v279))
        {
          v33 = 3435973837;
          v29 = 10;
          while (1)
          {
            v279 = v282;
            LODWORD(v280) = v283;
            if (!_So9NSDecimala__exponent_getter(&v279))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v279 = v282;
            LODWORD(v280) = v283;
            v116 = _So9NSDecimala__exponent_getter(&v279);
            _So9NSDecimala__exponent_setter((v116 + 1), &v282);
            v31 = v282;
            v270 = WORD2(v282);
            v256 = WORD3(v282);
            v269 = WORD4(v282);
            v268 = WORD5(v282);
            v267 = WORD6(v282);
            v258 = HIWORD(v282);
            LODWORD(v259) = v283;
            LODWORD(v257) = WORD1(v283);
            NSDecimal.asVariableLengthInteger()(v282 | (WORD2(v282) << 32) | (WORD3(v282) << 48), WORD4(v282) | (WORD5(v282) << 16) | (WORD6(v282) << 32) | (HIWORD(v282) << 48), v283 | (WORD1(v283) << 16));
            v118 = v117;
            v119 = *(v117 + 16);
            v80 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v119);
            *&v279 = v80;
            if (v119)
            {
              break;
            }

            v121 = 48;
LABEL_100:
            while (1)
            {
              v122 = *(v80 + 16);
              if (!v122 || *(v80 + 2 * v122 + 30))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v279 + 16) - 1);
              }

              v80 = v279;
            }

            LODWORD(v279) = v31;
            WORD2(v279) = v270;
            WORD3(v279) = v256;
            WORD4(v279) = v269;
            WORD5(v279) = v268;
            WORD6(v279) = v267;
            HIWORD(v279) = v258;
            LOWORD(v280) = v259;
            WORD1(v280) = v257;
            NSDecimal.copyVariableLengthInteger(_:)(v80);
            v273 = v123;
            if (v123)
            {
              goto LABEL_286;
            }

            v82 = *(v80 + 16);

            if (HIDWORD(v82))
            {
              goto LABEL_260;
            }

            _So9NSDecimala__length_setter(v82, &v279);
            v282 = v279;
            LODWORD(v283) = v280;
            *&v277 = v121;
            v124 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v124);

            v277 = v282;
            v278 = v283;
            if (!_So9NSDecimala__length_getter(&v277))
            {
              goto LABEL_107;
            }
          }

          v255 = v31;
          v31 = 0;
          isUniquelyReferenced_nonNull_native = v119 + 15;
          while (isUniquelyReferenced_nonNull_native - 15 <= *(v118 + 16))
          {
            v37 = *(v118 + 2 * isUniquelyReferenced_nonNull_native);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v80 = specialized _ArrayBuffer._consumeAndCreateNew()(v80);
            }

            if (isUniquelyReferenced_nonNull_native - 15 > *(v80 + 16))
            {
              goto LABEL_131;
            }

            v120 = v37 | (v31 << 16);
            *(v80 + 2 * isUniquelyReferenced_nonNull_native) = v120 / 0xA;
            v31 = v120 % 0xA;
            if (--isUniquelyReferenced_nonNull_native == 15)
            {

              *&v279 = v80;
              v121 = v31 | 0x30;
              v36 = v272;
              LODWORD(v31) = v255;
              goto LABEL_100;
            }
          }

          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

LABEL_107:
        v279 = v282;
        LODWORD(v280) = v283;
        if (_So9NSDecimala__exponent_getter(&v279) <= 0)
        {
          while (1)
          {
            v279 = v282;
            LODWORD(v280) = v283;
            if (!_So9NSDecimala__exponent_getter(&v279))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v279 = v282;
            LODWORD(v280) = v283;
            v125 = _So9NSDecimala__exponent_getter(&v279);
            _So9NSDecimala__exponent_setter((v125 + 1), &v282);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v279 = v282;
        LODWORD(v280) = v283;
        if (_So9NSDecimala__isNegative_getter(&v279))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v279 = v276;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v126 = String.init<A>(_:)();
        v128 = v127;
      }

      else
      {
        v128 = 0xE100000000000000;
        v126 = 48;
      }
    }

    else
    {
      v126 = 5136718;
      v128 = 0xE300000000000000;
    }

LABEL_119:
    *&v276 = v126;
    *(&v276 + 1) = v128;
    v255 = v128;
    *&v282 = specialized NSDecimal.init(_:)(0x3039uLL);
    *(&v282 + 1) = v131;
    LODWORD(v283) = v132;
    _So9NSDecimala__isNegative_setter(1, &v282);
    v270 = v282;
    v259 = WORD2(v282);
    v258 = WORD3(v282);
    v257 = WORD4(v282);
    v267 = WORD5(v282);
    v80 = WORD6(v282);
    v256 = HIWORD(v282);
    LODWORD(v269) = v283;
    LODWORD(v268) = WORD1(v283);
    v33 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    isUniquelyReferenced_nonNull_native = v133;
    v134 = v260(v261, v264);
    v37 = v135;
    v29 = &v254;
    *&v279 = v33;
    *(&v279 + 1) = isUniquelyReferenced_nonNull_native;
    v272 = v134;
    v280 = v134;
    v281 = v135;
    MEMORY[0x1EEE9AC00](v134);
    *(&v254 - 2) = &v279;
    os_unfair_lock_lock((a2 + 24));
    v136 = v273;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(a2 + 16, &v282);
    v273 = v136;
    if (v136)
    {
      break;
    }

    os_unfair_lock_unlock((a2 + 24));
    v31 = v282;
    if (v282 == 1)
    {
      type metadata accessor for ICUNumberFormatter();
      v31 = swift_allocObject();
      *(v31 + 24) = v33;
      *(v31 + 32) = isUniquelyReferenced_nonNull_native;
      swift_bridgeObjectRetain_n();
      v137 = MEMORY[0x1865CB200](v33, isUniquelyReferenced_nonNull_native);
      v265 = v37;
      if (v137)
      {
        v37 = v31;
        v31 = a2;
        a2 = v80;
        v138 = v137;
        v139 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v137, 0);

        v36 = specialized Sequence._copySequenceContents(initializing:)(&v282, (v139 + 4), v138, v33, isUniquelyReferenced_nonNull_native);

        if (v36 == v138)
        {

          a2 = v31;
          v31 = v37;
          v37 = v265;
          goto LABEL_125;
        }

LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        v262 = v84;
        v263 = v33;
        v261 = v31;
        v254 = a2;
        v266 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
        v150 = static _DictionaryStorage.copy(original:)();
        v146 = v150;
        if (*(v36 + 16))
        {
          v151 = (v150 + 64);
          v152 = v36 + 64;
          v153 = ((1 << *(v146 + 32)) + 63) >> 6;
          if (v146 != v36 || v151 >= v152 + 8 * v153)
          {
            memmove(v151, (v36 + 64), 8 * v153);
          }

          v29 = 0;
          *(v146 + 16) = *(v36 + 16);
          v154 = 1 << *(v36 + 32);
          v155 = *(v36 + 64);
          v156 = -1;
          if (v154 < 64)
          {
            v156 = ~(-1 << v154);
          }

          v157 = v156 & v155;
          v158 = (v154 + 63) >> 6;
          if ((v156 & v155) != 0)
          {
            do
            {
              v159 = __clz(__rbit64(v157));
              v157 &= v157 - 1;
LABEL_161:
              v162 = v159 | (v29 << 6);
              v163 = (*(v36 + 48) + 32 * v162);
              v164 = v163[1];
              v165 = v163[2];
              a2 = v163[3];
              v166 = *(*(v36 + 56) + 8 * v162);
              v167 = (*(v146 + 48) + 32 * v162);
              *v167 = *v163;
              v167[1] = v164;
              v167[2] = v165;
              v167[3] = a2;
              *(*(v146 + 56) + 8 * v162) = v166;
            }

            while (v157);
          }

          v160 = v29;
          while (1)
          {
            v29 = v160 + 1;
            if (__OFADD__(v160, 1))
            {
              break;
            }

            if (v29 >= v158)
            {
              goto LABEL_163;
            }

            v161 = *(v152 + 8 * v29);
            ++v160;
            if (v161)
            {
              v159 = __clz(__rbit64(v161));
              v157 = (v161 - 1) & v161;
              goto LABEL_161;
            }
          }

LABEL_281:
          __break(1u);
          goto LABEL_282;
        }

LABEL_163:

        v80 = v266;
        a2 = v254;
        v31 = v261;
        v33 = v263;
        v84 = v262;
        if ((v37 & 1) == 0)
        {
          goto LABEL_164;
        }

LABEL_143:
        v149 = v84;

        *(*(v146 + 56) + 8 * v149) = v31;

        goto LABEL_165;
      }

      v139 = MEMORY[0x1E69E7CC0];
LABEL_125:
      LODWORD(v282) = 0;
      if (v139[2] >> 31)
      {
        __break(1u);
        goto LABEL_145;
      }

      String.utf8CString.getter();
      v29 = unumf_openForSkeletonAndLocale();

      if (!v29)
      {
        goto LABEL_129;
      }

      if (v282 >= 1)
      {
        unumf_close();
LABEL_129:

        type metadata accessor for ICUNumberFormatterBase();
        swift_deallocPartialClassInstance();
        v31 = 0;
LABEL_133:
        os_unfair_lock_lock((a2 + 24));
        v140 = *(*(a2 + 16) + 16);
        v264 = *(a2 + 16);
        if (v266 < v140)
        {
          *(a2 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        v141 = swift_isUniquelyReferenced_nonNull_native();
        *&v282 = *(a2 + 16);
        v36 = v282;
        *(a2 + 16) = 0x8000000000000000;
        v84 = specialized __RawDictionaryStorage.find<A>(_:)(v33, isUniquelyReferenced_nonNull_native, v272, v37);
        v143 = *(v36 + 16);
        v144 = (v142 & 1) == 0;
        v145 = v143 + v144;
        if (!__OFADD__(v143, v144))
        {
          LOBYTE(v37) = v142;
          if (*(v36 + 24) >= v145)
          {
            if ((v141 & 1) == 0)
            {
              goto LABEL_148;
            }

            v146 = v36;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v145, v141);
            v146 = v282;
            v147 = specialized __RawDictionaryStorage.find<A>(_:)(v33, isUniquelyReferenced_nonNull_native, v272, v265);
            if ((v37 & 1) != (v148 & 1))
            {
              goto LABEL_287;
            }

            v84 = v147;
          }

          if (v37)
          {
            goto LABEL_143;
          }

LABEL_164:
          specialized _NativeDictionary._insert(at:key:value:)(v84, v33, isUniquelyReferenced_nonNull_native, v272, v265, v31, v146);
LABEL_165:
          *(a2 + 16) = v146;

          os_unfair_lock_unlock((a2 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_166;
        }

LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

LABEL_132:
      *(v31 + 16) = v29;
      goto LABEL_133;
    }

LABEL_166:

    if (v31)
    {
      v168 = v256;
      v169 = v80;
      v170 = *(v31 + 16);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_allocObject();
      v171 = v259;
      v29 = v258;
      v172 = v257;
      v173 = v267;
      v266 = v169;
      v174 = v273;
      v175 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v170, v270 | (v259 << 32) | (v258 << 48), v257 | (v267 << 16) | (v169 << 32) | (v168 << 48), v269 | (v268 << 16));
      v273 = v174;
      if (v174)
      {

        v273 = 0;
      }

      else
      {
        v197 = v175;

        v195 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v197);
        v196 = v198;

        if (v196)
        {
          goto LABEL_212;
        }

        v173 = v267;
      }

      LOWORD(v80) = v266;
    }

    else
    {
      v171 = v259;
      v29 = v258;
      v172 = v257;
      v173 = v267;
      LOWORD(v168) = v256;
    }

    v176 = v270;
    LODWORD(v282) = v270;
    WORD2(v282) = v171;
    WORD3(v282) = v29;
    WORD4(v282) = v172;
    WORD5(v282) = v173;
    WORD6(v282) = v80;
    HIWORD(v282) = v168;
    v177 = v269;
    LOWORD(v283) = v269;
    v178 = v268;
    WORD1(v283) = v268;
    if (_So9NSDecimala__length_getter(&v282) || (LODWORD(v282) = v176, WORD2(v282) = v171, WORD3(v282) = v29, WORD4(v282) = v172, WORD5(v282) = v173, WORD6(v282) = v80, HIWORD(v282) = v168, LOWORD(v283) = v177, WORD1(v283) = v178, !_So9NSDecimala__isNegative_getter(&v282)))
    {
      LODWORD(v282) = v176;
      WORD2(v282) = v171;
      WORD3(v282) = v29;
      WORD4(v282) = v172;
      WORD5(v282) = v173;
      WORD6(v282) = v80;
      HIWORD(v282) = v168;
      LOWORD(v283) = v177;
      WORD1(v283) = v178;
      if (_So9NSDecimala__length_getter(&v282))
      {
        *&v275[1] = 0;
        *&v275[9] = 0xE000000000000000;
        LODWORD(v282) = v176;
        WORD2(v282) = v171;
        WORD3(v282) = v29;
        WORD4(v282) = v172;
        WORD5(v282) = v173;
        WORD6(v282) = v80;
        HIWORD(v282) = v168;
        LOWORD(v283) = v177;
        WORD1(v283) = v178;
        v279 = v282;
        LODWORD(v280) = v283;
        if (_So9NSDecimala__exponent_getter(&v279) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v279 = v282;
            LODWORD(v280) = v283;
            v179 = _So9NSDecimala__exponent_getter(&v279);
            _So9NSDecimala__exponent_setter((v179 - 1), &v282);
            v279 = v282;
            LODWORD(v280) = v283;
          }

          while (_So9NSDecimala__exponent_getter(&v279) > 0);
        }

        v279 = v282;
        LODWORD(v280) = v283;
        if (!_So9NSDecimala__exponent_getter(&v279))
        {
          _So9NSDecimala__exponent_setter(1, &v282);
        }

        v279 = v282;
        LODWORD(v280) = v283;
        if (_So9NSDecimala__length_getter(&v279))
        {
          v180 = 3435973837;
          v29 = 10;
          while (1)
          {
            v279 = v282;
            LODWORD(v280) = v283;
            if (!_So9NSDecimala__exponent_getter(&v279))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v279 = v282;
            LODWORD(v280) = v283;
            v181 = _So9NSDecimala__exponent_getter(&v279);
            _So9NSDecimala__exponent_setter((v181 + 1), &v282);
            v182 = WORD3(v282);
            v272 = v282;
            v270 = WORD2(v282);
            v269 = WORD4(v282);
            v268 = WORD5(v282);
            v267 = WORD6(v282);
            v265 = HIWORD(v282);
            LODWORD(v266) = v283;
            LODWORD(v264) = WORD1(v283);
            NSDecimal.asVariableLengthInteger()(v282 | (WORD2(v282) << 32) | (WORD3(v282) << 48), WORD4(v282) | (WORD5(v282) << 16) | (WORD6(v282) << 32) | (HIWORD(v282) << 48), v283 | (WORD1(v283) << 16));
            v184 = v183;
            v185 = *(v183 + 16);
            v186 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v185);
            *&v279 = v186;
            if (v185)
            {
              break;
            }

            v190 = 48;
LABEL_189:
            for (i = v186[1].i64[0]; i; i = *(v279 + 16))
            {
              if (v186[1].i16[i + 7])
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v279 + 16) - 1);
              }

              v186 = v279;
            }

            LODWORD(v279) = v272;
            WORD2(v279) = v270;
            WORD3(v279) = v182;
            WORD4(v279) = v269;
            WORD5(v279) = v268;
            WORD6(v279) = v267;
            HIWORD(v279) = v265;
            LOWORD(v280) = v266;
            WORD1(v280) = v264;
            NSDecimal.copyVariableLengthInteger(_:)(v186);
            v273 = v192;
            if (v192)
            {
              goto LABEL_286;
            }

            v193 = v186[1].u64[0];

            if (HIDWORD(v193))
            {
              __break(1u);
            }

            _So9NSDecimala__length_setter(v193, &v279);
            v282 = v279;
            LODWORD(v283) = v280;
            *&v277 = v190;
            v194 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v194);

            v277 = v282;
            v278 = v283;
            if (!_So9NSDecimala__length_getter(&v277))
            {
              goto LABEL_204;
            }
          }

          a2 = 0;
          v187 = v185 + 15;
          while ((v187 - 15) <= *(v184 + 16))
          {
            v188 = *(v184 + 2 * v187);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v186 = specialized _ArrayBuffer._consumeAndCreateNew()(v186);
            }

            if ((v187 - 15) > v186[1].i64[0])
            {
              goto LABEL_225;
            }

            v189 = v188 | (a2 << 16);
            v186->i16[v187] = v189 / 0xA;
            a2 = v189 % 0xA;
            if (--v187 == 15)
            {

              *&v279 = v186;
              v190 = a2 | 0x30;
              goto LABEL_189;
            }
          }

          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:

          v205 = 0xE000000000000000;
          goto LABEL_249;
        }

LABEL_204:
        v279 = v282;
        LODWORD(v280) = v283;
        if (_So9NSDecimala__exponent_getter(&v279) <= 0)
        {
          while (1)
          {
            v279 = v282;
            LODWORD(v280) = v283;
            if (!_So9NSDecimala__exponent_getter(&v279))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v279 = v282;
            LODWORD(v280) = v283;
            v199 = _So9NSDecimala__exponent_getter(&v279);
            _So9NSDecimala__exponent_setter((v199 + 1), &v282);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v279 = v282;
        LODWORD(v280) = v283;
        if (_So9NSDecimala__isNegative_getter(&v279))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v279 = *&v275[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v195 = String.init<A>(_:)();
        v196 = v200;
      }

      else
      {
        v196 = 0xE100000000000000;
        v195 = 48;
      }
    }

    else
    {
      v195 = 5136718;
      v196 = 0xE300000000000000;
    }

LABEL_212:
    *&v279 = v195;
    *(&v279 + 1) = v196;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v180 = swift_allocObject();
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v202 = @"NSDebugDescription";
    v186 = v202;
    a2 = MEMORY[0x1E69E7CA0];
    if (!isTaggedPointer)
    {
      goto LABEL_217;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v202);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v254 - 2) = v186;
          v184 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v205 = v204;

          goto LABEL_249;
        }

LABEL_217:
        LOBYTE(v277) = 0;
        *&v282 = 0;
        *v275 = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          v184 = v282;
          if (!v282)
          {
            goto LABEL_226;
          }

          if (v275[0] == 1)
          {
            if (v277)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v213 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_248;
          }

          if (v275[1])
          {
            if (v277 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              *(&v254 - 4) = v186;
              *(&v254 - 3) = &v282;
              *(&v254 - 4) = 1536;
              *(&v254 - 1) = v184;
            }

            else
            {
              v215 = [(int16x8_t *)v186 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v215);
              *(&v254 - 4) = v186;
              *(&v254 - 3) = &v282;
              *(&v254 - 4) = 134217984;
              *(&v254 - 1) = v216;
            }

            v217 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v205 = v218;
            v219 = HIBYTE(v218) & 0xF;
            if ((v218 & 0x2000000000000000) == 0)
            {
              v219 = v217 & 0xFFFFFFFFFFFFLL;
            }

            if (v219)
            {
              v184 = v217;
              goto LABEL_232;
            }
          }
        }

        else
        {
          v207 = v186;
          v208 = String.init(_nativeStorage:)();
          if (v209)
          {
            v184 = v208;
            v205 = v209;

            goto LABEL_249;
          }

          *&v282 = [(int16x8_t *)v207 length];
          if (!v282)
          {

            v184 = 0;
            v205 = 0xE000000000000000;
            goto LABEL_249;
          }
        }

        v213 = String.init(_cocoaString:)();
LABEL_248:
        v184 = v213;
        v205 = v214;
        goto LABEL_249;
      }

      v210 = [(int16x8_t *)v186 UTF8String];
      if (!v210)
      {
        goto LABEL_283;
      }

      v211 = String.init(utf8String:)(v210);
      if (v212)
      {
LABEL_231:
        v184 = v211;
        v205 = v212;
LABEL_232:

        goto LABEL_249;
      }

      __break(1u);
    }

    *&v275[1] = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v211 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v212)
    {
      goto LABEL_231;
    }

    [(int16x8_t *)v186 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v205 = *(&v277 + 1);
    v184 = v277;
LABEL_249:
    *(v180 + 32) = v184;
    *(v180 + 40) = v205;
    *&v282 = 0;
    *(&v282 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v274, v271);
    MEMORY[0x1865CB0E0](0xD000000000000039, 0x800000018147EC30);
    v220 = MEMORY[0x1E69E6158];
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0x2220726F2022, 0xE600000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](34, 0xE100000000000000);
    v221 = v282;
    *(v180 + 72) = v220;
    *(v180 + 48) = v221;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v82 = static _DictionaryStorage.allocate(capacity:)();
    v36 = &v282;
    outlined init with copy of (String, Any)(v180 + 32, &v282);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?(v180 + 32, &_sSS_yptMd, &_sSS_yptMR);
    swift_deallocClassInstance();
    v222 = v282;
    v223 = specialized __RawDictionaryStorage.find<A>(_:)(v282, *(&v282 + 1));
    v29 = v224;

    if (v29)
    {
      __break(1u);
LABEL_258:
      __break(1u);
      goto LABEL_259;
    }

    *(v82 + 8 * (v223 >> 6) + 64) |= 1 << v223;
    *(*(v82 + 48) + 16 * v223) = v222;
    outlined init with take of Any(&v283, (*(v82 + 56) + 32 * v223));
    v225 = *(v82 + 16);
    v226 = __OFADD__(v225, 1);
    v227 = v225 + 1;
    if (v226)
    {
      goto LABEL_258;
    }

    *(v82 + 16) = v227;
    static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
    v29 = objc_allocWithZone(NSError);
    v228 = String._bridgeToObjectiveCImpl()();

    v229 = [v29 initWithDomain:v228 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v230 = [v229 domain];
    v231 = static String._unconditionallyBridgeFromObjectiveC(_:)(v230);
    v82 = v232;

    if (v231 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v82 == v233)
    {

LABEL_255:
      swift_willThrow();
    }

    v234 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v234)
    {
      goto LABEL_255;
    }

LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    v235 = v82;
    v257 = v84;
    LODWORD(v258) = v83;
    v256 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
    v236 = static _DictionaryStorage.copy(original:)();
    v82 = v236;
    v261 = v235;
    if (v235[2])
    {
      v237 = (v236 + 64);
      v238 = 1 << *(v82 + 32);
      v259 = (v261 + 8);
      v239 = (v238 + 63) >> 6;
      if (v82 != v261 || v237 >= v259 + 8 * v239)
      {
        memmove(v237, v259, 8 * v239);
      }

      v240 = 0;
      v241 = v261;
      *(v82 + 16) = v261[2];
      v242 = 1 << *(v241 + 32);
      v243 = v241[8];
      v244 = -1;
      if (v242 < 64)
      {
        v244 = ~(-1 << v242);
      }

      v245 = v244 & v243;
      v255 = (v242 + 63) >> 6;
      if ((v244 & v243) != 0)
      {
        do
        {
          v246 = __clz(__rbit64(v245));
          v245 &= v245 - 1;
LABEL_274:
          v249 = v246 | (v240 << 6);
          v250 = v261;
          v251 = *(v269 + 72) * v249;
          a2 = v270;
          outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v261[6] + v251, v270, type metadata accessor for ICULegacyNumberFormatter.Signature);
          v252 = *(v250[7] + 8 * v249);
          outlined init with take of ICULegacyNumberFormatter.Signature(a2, *(v82 + 48) + v251, type metadata accessor for ICULegacyNumberFormatter.Signature);
          *(*(v82 + 56) + 8 * v249) = v252;
        }

        while (v245);
      }

      v247 = v240;
      while (1)
      {
        v240 = v247 + 1;
        if (__OFADD__(v247, 1))
        {
          break;
        }

        if (v240 >= v255)
        {
          goto LABEL_276;
        }

        v248 = *(v259 + 8 * v240);
        ++v247;
        if (v248)
        {
          v246 = __clz(__rbit64(v248));
          v245 = (v248 - 1) & v248;
          goto LABEL_274;
        }
      }

LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
      break;
    }

LABEL_276:

    a2 = v271;
    v37 = v273;
    v80 = v263;
    v31 = v270;
    v36 = v256;
    v84 = v257;
    if (v258)
    {
LABEL_53:
      *(*(v82 + 56) + 8 * v84) = v268;
    }

    else
    {
LABEL_277:
      v253 = v84;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v80, v31, type metadata accessor for ICULegacyNumberFormatter.Signature);
      specialized _NativeDictionary._insert(at:key:value:)(v253, v31, v268, v82);
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v80, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v29 + 16) = v82;

    os_unfair_lock_unlock((v29 + 24));
  }

  os_unfair_lock_unlock((a2 + 24));
  __break(1u);
LABEL_285:
  os_unfair_lock_unlock((v29 + 24));
  __break(1u);
LABEL_286:

  swift_unexpectedError();
  __break(1u);
LABEL_287:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_288:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v5 = v2;
  v298 = *MEMORY[0x1E69E9840];
  v283 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v284 = *(v283 - 8);
  v8 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v283);
  v276 = &v269 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v285 = &v269 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v269 - v12;
  v14 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v269 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v269 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v21 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v21 = 11;
  }

  v286 = v5;
  v287 = a2;
  v288 = a1;
  if (!v20)
  {
    v38 = v14;
    goto LABEL_17;
  }

  v277 = v21;
  v278 = v20;
  v289 = v3;
  v22 = v19;
  v23 = v5;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v5, v16, type metadata accessor for NSDecimal.FormatStyle.Percent);
  v281 = v14;
  outlined init with take of ICULegacyNumberFormatter.Signature(v16 + *(v14 + 20), v22, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  swift_storeEnumTagMultiPayload();
  v24 = *v16;
  v25 = v16[1];
  LOBYTE(v23) = *(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMR) + 36));
  v280 = v22;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v22, v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v27 = *(v25 + 64);
  swift_unknownObjectRetain();
  v279 = v24;
  v28 = v27(ObjectType, v25);
  v29 = v283;
  v30 = (v13 + *(v283 + 20));
  *v30 = v28;
  v30[1] = v31;
  *(v13 + *(v29 + 24)) = v23;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v33 = static ICULegacyNumberFormatter.cache;
  v32 = qword_1EA7AFFA0;
  v34 = v285;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v13, v285, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v35 = (*(v284 + 80) + 16) & ~*(v284 + 80);
  v282 = swift_allocObject();
  v36 = outlined init with take of ICULegacyNumberFormatter.Signature(v34, v282 + v35, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v36);
  *(&v269 - 2) = v13;
  os_unfair_lock_lock((v32 + 24));
  v37 = v289;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v296, v32 + 16);
  if (v37)
  {
    goto LABEL_301;
  }

  os_unfair_lock_unlock((v32 + 24));
  a2 = v287;
  v38 = v281;
  if (!v296)
  {
    v136 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
    v137 = 0;
    os_unfair_lock_lock((v32 + 24));
    v75 = *(v32 + 16);
    if (v33 < *(v75 + 16))
    {
      *(v32 + 16) = MEMORY[0x1E69E7CC8];
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  v289 = 0;
  while (1)
  {
    outlined destroy of ICULegacyNumberFormatter.Signature(v13, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    a1 = v288;
    v39 = String.subscript.getter();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    *&v294 = 0;
    v46 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v39, v40, v42, v44, &v294);
    if ((v47 & 0x100000000) == 0)
    {
      *&v296 = v39;
      *(&v296 + 1) = v41;
      *&v297 = v43;
      *(&v297 + 1) = v45;
      v48 = v46;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of ICULegacyNumberFormatter.Signature(v280, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      return v48;
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v280, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    swift_unknownObjectRelease();

    v4 = v289;
LABEL_17:
    v296 = 0uLL;
    result = specialized NSDecimal.init(string:locale:)(a1, a2, &v296);
    if ((v50 & 0x100000000) == 0)
    {
      return result;
    }

    v289 = v4;
    specialized NSDecimal.init(_:)(3.14);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v286;
    v285 = *(v38 + 20);
    v58 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v60 = v59;
    v61 = *v57;
    v62 = v57[1];
    v63 = swift_getObjectType();
    v64 = *(v62 + 472);
    v283 = v61;
    v281 = v63;
    v284 = v62;
    v282 = v62 + 472;
    v280 = v64;
    v65 = v64(v63, v62);
    v67 = specialized static ICUPercentNumberFormatter._create(with:)(v58, v60, v65, v66);

    if (v67)
    {
      v68 = *(v67 + 2);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_allocObject();
      v69 = v289;
      v70 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v68, v52, v54, v56);
      if (v69)
      {

        v289 = 0;
      }

      else
      {
        v89 = v70;
        v289 = 0;

        v86 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v89);
        v88 = v90;

        if (v88)
        {
          goto LABEL_60;
        }
      }
    }

    *&v296 = v52;
    *(&v296 + 1) = v54;
    LODWORD(v297) = v56;
    if (!_So9NSDecimala__length_getter(&v296))
    {
      *&v296 = v52;
      *(&v296 + 1) = v54;
      LODWORD(v297) = v56;
      if (_So9NSDecimala__isNegative_getter(&v296))
      {
        v86 = 5136718;
        v88 = 0xE300000000000000;
        goto LABEL_60;
      }
    }

    *&v296 = v52;
    *(&v296 + 1) = v54;
    LODWORD(v297) = v56;
    if (!_So9NSDecimala__length_getter(&v296))
    {
      v88 = 0xE100000000000000;
      v86 = 48;
      goto LABEL_60;
    }

    *&v291 = 0;
    *(&v291 + 1) = 0xE000000000000000;
    *&v296 = v52;
    *(&v296 + 1) = v54;
    LODWORD(v297) = v56;
    v294 = v296;
    v295 = v56;
    if (_So9NSDecimala__exponent_getter(&v294) >= 1)
    {
      do
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v294 = v296;
        v295 = v297;
        v71 = _So9NSDecimala__exponent_getter(&v294);
        _So9NSDecimala__exponent_setter((v71 - 1), &v296);
        v294 = v296;
        v295 = v297;
      }

      while (_So9NSDecimala__exponent_getter(&v294) > 0);
    }

    v294 = v296;
    v295 = v297;
    if (!_So9NSDecimala__exponent_getter(&v294))
    {
      _So9NSDecimala__exponent_setter(1, &v296);
    }

    v294 = v296;
    v295 = v297;
    if (!_So9NSDecimala__length_getter(&v294))
    {
LABEL_48:
      v294 = v296;
      v295 = v297;
      if (_So9NSDecimala__exponent_getter(&v294) <= 0)
      {
        while (1)
        {
          v294 = v296;
          v295 = v297;
          if (!_So9NSDecimala__exponent_getter(&v294))
          {
            break;
          }

          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v294 = v296;
          v295 = v297;
          v85 = _So9NSDecimala__exponent_getter(&v294);
          _So9NSDecimala__exponent_setter((v85 + 1), &v296);
        }

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      }

      v294 = v296;
      v295 = v297;
      if (_So9NSDecimala__isNegative_getter(&v294))
      {
        MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      }

      v294 = v291;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
      lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
      v86 = String.init<A>(_:)();
      v88 = v87;
LABEL_60:
      *&v291 = v86;
      *(&v291 + 1) = v88;
      v273 = v88;
      *&v296 = specialized NSDecimal.init(_:)(0x3039uLL);
      *(&v296 + 1) = v91;
      LODWORD(v297) = v92;
      _So9NSDecimala__isNegative_setter(1, &v296);
      v286 = v296;
      v93 = WORD2(v296);
      v279 = WORD3(v296);
      v94 = WORD4(v296);
      v278 = WORD5(v296);
      v95 = WORD6(v296);
      v96 = HIWORD(v296);
      v97 = v297;
      v98 = WORD1(v297);
      v99 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
      v101 = v100;
      v102 = (v280)(v281, v284);
      v104 = specialized static ICUPercentNumberFormatter._create(with:)(v99, v101, v102, v103);

      v277 = v94;
      v276 = v93;
      v275 = v96;
      LODWORD(v274) = v98;
      if (v104)
      {
        v105 = *(v104 + 2);
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_allocObject();
        v106 = v286 | (v93 << 32);
        v107 = v279;
        v108 = v278;
        v109 = v289;
        v110 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v105, v106 | (v279 << 48), v94 | (v278 << 16) | (v95 << 32) | (v96 << 48), v97 | (v98 << 16));
        v111 = v108;
        v112 = v97;
        if (v109)
        {

          v113 = 0;
        }

        else
        {
          v289 = 0;
          v138 = v110;

          v134 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v138);
          v140 = v139;

          if (v140)
          {
            v75 = v140;
            goto LABEL_105;
          }

          v113 = v289;
          v112 = v97;
        }
      }

      else
      {
        v113 = v289;
        v107 = v279;
        v111 = v278;
        v112 = v97;
      }

      LODWORD(v296) = v286;
      v114 = v276;
      WORD2(v296) = v276;
      WORD3(v296) = v107;
      v75 = v277;
      WORD4(v296) = v277;
      WORD5(v296) = v111;
      WORD6(v296) = v95;
      v115 = v275;
      HIWORD(v296) = v275;
      LOWORD(v297) = v112;
      v116 = v274;
      WORD1(v297) = v274;
      if (_So9NSDecimala__length_getter(&v296) || (LODWORD(v296) = v286, WORD2(v296) = v114, WORD3(v296) = v107, WORD4(v296) = v75, WORD5(v296) = v111, WORD6(v296) = v95, HIWORD(v296) = v115, LOWORD(v297) = v112, WORD1(v297) = v116, !_So9NSDecimala__isNegative_getter(&v296)))
      {
        LODWORD(v296) = v286;
        WORD2(v296) = v114;
        WORD3(v296) = v107;
        WORD4(v296) = v75;
        WORD5(v296) = v111;
        WORD6(v296) = v95;
        HIWORD(v296) = v115;
        LOWORD(v297) = v112;
        WORD1(v297) = v116;
        if (_So9NSDecimala__length_getter(&v296))
        {
          *&v290[1] = 0;
          *&v290[9] = 0xE000000000000000;
          LODWORD(v296) = v286;
          WORD2(v296) = v114;
          WORD3(v296) = v107;
          WORD4(v296) = v75;
          WORD5(v296) = v111;
          WORD6(v296) = v95;
          HIWORD(v296) = v115;
          LOWORD(v297) = v112;
          WORD1(v297) = v116;
          v294 = v296;
          v295 = v297;
          if (_So9NSDecimala__exponent_getter(&v294) >= 1)
          {
            do
            {
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v294 = v296;
              v295 = v297;
              v117 = _So9NSDecimala__exponent_getter(&v294);
              _So9NSDecimala__exponent_setter((v117 - 1), &v296);
              v294 = v296;
              v295 = v297;
            }

            while (_So9NSDecimala__exponent_getter(&v294) > 0);
          }

          v294 = v296;
          v295 = v297;
          v118 = _So9NSDecimala__exponent_getter(&v294);
          v32 = v288;
          if (!v118)
          {
            _So9NSDecimala__exponent_setter(1, &v296);
          }

          v294 = v296;
          v295 = v297;
          if (_So9NSDecimala__length_getter(&v294))
          {
            while (1)
            {
              v289 = v113;
              v294 = v296;
              v295 = v297;
              if (!_So9NSDecimala__exponent_getter(&v294))
              {
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              }

              v294 = v296;
              v295 = v297;
              v119 = _So9NSDecimala__exponent_getter(&v294);
              _So9NSDecimala__exponent_setter((v119 + 1), &v296);
              v120 = WORD3(v296);
              v286 = v296;
              v285 = WORD2(v296);
              v284 = WORD4(v296);
              v283 = WORD5(v296);
              v282 = WORD6(v296);
              v280 = HIWORD(v296);
              LODWORD(v281) = v297;
              LODWORD(v279) = WORD1(v297);
              NSDecimal.asVariableLengthInteger()(v296 | (WORD2(v296) << 32) | (WORD3(v296) << 48), WORD4(v296) | (WORD5(v296) << 16) | (WORD6(v296) << 32) | (HIWORD(v296) << 48), v297 | (WORD1(v297) << 16));
              v122 = v121;
              v123 = *(v121 + 16);
              v124 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v123);
              *&v294 = v124;
              if (v123)
              {
                break;
              }

              v127 = 48;
LABEL_83:
              while (1)
              {
                v128 = v124[1].i64[0];
                if (!v128 || v124[1].i16[v128 + 7])
                {
                  break;
                }

                if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
                {
                  specialized Array.remove(at:)(*(v294 + 16) - 1);
                }

                v124 = v294;
              }

              LODWORD(v294) = v286;
              WORD2(v294) = v285;
              WORD3(v294) = v120;
              WORD4(v294) = v284;
              WORD5(v294) = v283;
              WORD6(v294) = v282;
              HIWORD(v294) = v280;
              LOWORD(v295) = v281;
              HIWORD(v295) = v279;
              NSDecimal.copyVariableLengthInteger(_:)(v124);
              if (v129)
              {
                goto LABEL_302;
              }

              v130 = v124[1].u64[0];

              if (HIDWORD(v130))
              {
                __break(1u);
              }

              _So9NSDecimala__length_setter(v130, &v294);
              v296 = v294;
              LODWORD(v297) = v295;
              *&v292 = v127;
              v131 = static String._uncheckedFromUTF8(_:)();
              MEMORY[0x1865CB0E0](v131);

              v292 = v296;
              v293 = v297;
              v132 = _So9NSDecimala__length_getter(&v292);
              v113 = 0;
              v32 = v288;
              if (!v132)
              {
                goto LABEL_90;
              }
            }

            v125 = 0;
            v32 = v123 + 15;
            while (v32 - 15 <= *(v122 + 16))
            {
              v75 = *(v122 + 2 * v32);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v124 = specialized _ArrayBuffer._consumeAndCreateNew()(v124);
              }

              if (v32 - 15 > v124[1].i64[0])
              {
                goto LABEL_131;
              }

              v126 = v75 | (v125 << 16);
              v124->i16[v32] = v126 / 0xA;
              v125 = v126 % 0xA;
              if (--v32 == 15)
              {

                *&v294 = v124;
                v127 = v125 | 0x30;
                goto LABEL_83;
              }
            }

            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

LABEL_90:
          v294 = v296;
          v295 = v297;
          if (_So9NSDecimala__exponent_getter(&v294) <= 0)
          {
            while (1)
            {
              v294 = v296;
              v295 = v297;
              if (!_So9NSDecimala__exponent_getter(&v294))
              {
                break;
              }

              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v294 = v296;
              v295 = v297;
              v133 = _So9NSDecimala__exponent_getter(&v294);
              _So9NSDecimala__exponent_setter((v133 + 1), &v296);
            }

            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          }

          v289 = v113;
          v294 = v296;
          v295 = v297;
          if (_So9NSDecimala__isNegative_getter(&v294))
          {
            MEMORY[0x1865CB0E0](45, 0xE100000000000000);
          }

          v294 = *&v290[1];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
          lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
          v134 = String.init<A>(_:)();
          v75 = v135;
LABEL_106:
          *&v294 = v134;
          *(&v294 + 1) = v75;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
          v125 = swift_allocObject();
          isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
          v142 = @"NSDebugDescription";
          v124 = v142;
          if (!isTaggedPointer)
          {
LABEL_111:
            LOBYTE(v292) = 0;
            *&v296 = 0;
            *v290 = 0;
            IsCF = __CFStringIsCF();
            if (!IsCF)
            {
              v150 = v124;
              v151 = String.init(_nativeStorage:)();
              if (v152)
              {
                v145 = v151;
                v147 = v152;

                goto LABEL_157;
              }

              *&v296 = [(int16x8_t *)v150 length];
              if (v296)
              {
                goto LABEL_155;
              }

LABEL_133:
              v145 = 0;
              v147 = 0xE000000000000000;
              goto LABEL_157;
            }

            v149 = v296;
            if (v296)
            {
              if (v290[0] == 1)
              {
                if (v292)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                v168 = String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_156;
              }

              if (v290[1])
              {
                if (v292 == 1)
                {
                  MEMORY[0x1EEE9AC00](IsCF);
                  *(&v269 - 4) = v124;
                  *(&v269 - 3) = &v296;
                  *(&v269 - 4) = 1536;
                  *(&v269 - 1) = v149;
                }

                else
                {
                  v170 = [(int16x8_t *)v124 lengthOfBytesUsingEncoding:4];
                  MEMORY[0x1EEE9AC00](v170);
                  *(&v269 - 4) = v124;
                  *(&v269 - 3) = &v296;
                  *(&v269 - 4) = 134217984;
                  *(&v269 - 1) = v171;
                }

                v172 = v289;
                v173 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v147 = v174;
                v289 = v172;
                v175 = HIBYTE(v174) & 0xF;
                if ((v174 & 0x2000000000000000) == 0)
                {
                  v175 = v173 & 0xFFFFFFFFFFFFLL;
                }

                if (v175)
                {
                  v145 = v173;

                  goto LABEL_153;
                }

                v32 = v288;
              }

LABEL_155:
              v168 = String.init(_cocoaString:)();
LABEL_156:
              v145 = v168;
              v147 = v169;
LABEL_157:
              *(v125 + 32) = v145;
              *(v125 + 40) = v147;
              *&v296 = 0;
              *(&v296 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(83);
              MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
              MEMORY[0x1865CB0E0](v32, v287);
              MEMORY[0x1865CB0E0](0xD000000000000039, 0x800000018147EC30);
              v176 = MEMORY[0x1E69E6158];
              _print_unlocked<A, B>(_:_:)();
              MEMORY[0x1865CB0E0](0x2220726F2022, 0xE600000000000000);
              _print_unlocked<A, B>(_:_:)();
              MEMORY[0x1865CB0E0](34, 0xE100000000000000);
              v177 = v296;
              *(v125 + 72) = v176;
              *(v125 + 48) = v177;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
              v13 = static _DictionaryStorage.allocate(capacity:)();
              outlined init with copy of (String, Any)(v125 + 32, &v296);
              swift_setDeallocating();

              outlined destroy of TermOfAddress?(v125 + 32, &_sSS_yptMd, &_sSS_yptMR);
              swift_deallocClassInstance();
              v178 = v296;
              v81 = specialized __RawDictionaryStorage.find<A>(_:)(v296, *(&v296 + 1));
              v32 = v179;

              if (v32)
              {
                __break(1u);
              }

              else
              {
                *(v13 + 8 * (v81 >> 6) + 64) |= 1 << v81;
                *(*(v13 + 48) + 16 * v81) = v178;
                outlined init with take of Any(&v297, (*(v13 + 56) + 32 * v81));
                v180 = *(v13 + 16);
                v181 = __OFADD__(v180, 1);
                v182 = v180 + 1;
                if (!v181)
                {
                  *(v13 + 16) = v182;
                  v183 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
                  v184 = @"NSCocoaErrorDomain";
                  v185 = v184;
                  if (!v183)
                  {
                    goto LABEL_164;
                  }

                  TaggedPointerTag = _objc_getTaggedPointerTag(v184);
                  if (TaggedPointerTag)
                  {
                    if (TaggedPointerTag != 22)
                    {
                      if (TaggedPointerTag == 2)
                      {
                        MEMORY[0x1EEE9AC00](TaggedPointerTag);
                        *(&v269 - 2) = v185;
                        v187 = v289;
                        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v289 = v187;

                        goto LABEL_193;
                      }

LABEL_164:
                      LOBYTE(v292) = 0;
                      *&v296 = 0;
                      *v290 = 0;
                      v188 = __CFStringIsCF();
                      if (v188)
                      {
                        v189 = v296;
                        if (!v296)
                        {
LABEL_190:

                          goto LABEL_193;
                        }

                        if (v290[0] == 1)
                        {
                          if (v292)
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_193:
                          v32 = objc_allocWithZone(NSError);
                          v201 = String._bridgeToObjectiveCImpl()();

                          v13 = [v32 initWithDomain:v201 code:2048 userInfo:_NativeDictionary.bridged()()];
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();
                          v202 = [v13 domain];
                          if (!v202)
                          {
                            goto LABEL_204;
                          }

                          v203 = v202;
                          v32 = _objc_isTaggedPointer(v202);
                          v204 = v203;
                          v205 = v204;
                          if (!v32)
                          {
LABEL_199:
                            LOBYTE(v292) = 0;
                            *&v296 = 0;
                            *v290 = 0;
                            v211 = __CFStringIsCF();
                            if (!v211)
                            {
                              v32 = v75;
                              v213 = v205;
                              v214 = String.init(_nativeStorage:)();
                              if (v215)
                              {
                                v208 = v214;
                                v210 = v215;

                                v75 = v32;
                                goto LABEL_233;
                              }

                              *&v296 = [v213 length];
                              if (!v296)
                              {

                                v208 = 0;
                                v210 = 0xE000000000000000;
                                v75 = v32;
                                goto LABEL_233;
                              }

                              v75 = v32;
                              goto LABEL_230;
                            }

                            v212 = v296;
                            if (v296)
                            {
                              if (v290[0] == 1)
                              {
                                if (v292)
                                {
                                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                }

                                else
                                {
                                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                }

                                v219 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                goto LABEL_231;
                              }

                              if (v290[1])
                              {
                                if (v292 == 1)
                                {
                                  v32 = &v269;
                                  MEMORY[0x1EEE9AC00](v211);
                                  *(&v269 - 4) = v205;
                                  *(&v269 - 3) = &v296;
                                  *(&v269 - 4) = 1536;
                                  *(&v269 - 1) = v212;
                                }

                                else
                                {
                                  v221 = [v205 lengthOfBytesUsingEncoding_];
                                  v32 = &v269;
                                  MEMORY[0x1EEE9AC00](v221);
                                  *(&v269 - 4) = v205;
                                  *(&v269 - 3) = &v296;
                                  *(&v269 - 4) = 134217984;
                                  *(&v269 - 1) = v222;
                                }

                                v223 = v289;
                                v224 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                v210 = v225;
                                v289 = v223;
                                v226 = HIBYTE(v225) & 0xF;
                                if ((v225 & 0x2000000000000000) == 0)
                                {
                                  v226 = v224 & 0xFFFFFFFFFFFFLL;
                                }

                                if (v226)
                                {
                                  v208 = v224;
                                  goto LABEL_213;
                                }
                              }

LABEL_230:
                              v219 = String.init(_cocoaString:)();
LABEL_231:
                              v208 = v219;
                              v210 = v220;
                              goto LABEL_232;
                            }

LABEL_204:
                            v208 = 0;
                            v210 = 0xE000000000000000;
                            goto LABEL_233;
                          }

                          v206 = _objc_getTaggedPointerTag(v204);
                          if (v206)
                          {
                            if (v206 != 22)
                            {
                              if (v206 == 2)
                              {
                                v32 = &v269;
                                MEMORY[0x1EEE9AC00](v206);
                                *(&v269 - 2) = v205;
                                v207 = v289;
                                v208 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                v210 = v209;
                                v289 = v207;

                                goto LABEL_233;
                              }

                              goto LABEL_199;
                            }

                            v216 = [v205 UTF8String];
                            if (!v216)
                            {
                              goto LABEL_300;
                            }

                            v217 = String.init(utf8String:)(v216);
                            if (v218)
                            {
LABEL_212:
                              v208 = v217;
                              v210 = v218;
LABEL_213:

LABEL_232:
LABEL_233:
                              v227 = v185;
                              v228 = v227;
                              if (!v183)
                              {
                                goto LABEL_238;
                              }

                              v229 = _objc_getTaggedPointerTag(v227);
                              if (v229)
                              {
                                if (v229 != 22)
                                {
                                  if (v229 == 2)
                                  {
                                    v32 = &v269;
                                    MEMORY[0x1EEE9AC00](v229);
                                    *(&v269 - 2) = v228;
                                    v230 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                    v81 = v231;

                                    goto LABEL_267;
                                  }

LABEL_238:
                                  LOBYTE(v292) = 0;
                                  *&v296 = 0;
                                  *v290 = 0;
                                  v232 = __CFStringIsCF();
                                  if (v232)
                                  {
                                    v233 = v296;
                                    if (!v296)
                                    {

                                      v230 = 0;
                                      v81 = 0xE000000000000000;
                                      goto LABEL_267;
                                    }

                                    if (v290[0] == 1)
                                    {
                                      if (v292)
                                      {
                                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                      }

                                      else
                                      {
                                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                      }

                                      v230 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                      v81 = v241;
                                      goto LABEL_267;
                                    }

                                    v234 = v75;
                                    if (v290[1])
                                    {
                                      if (v292 == 1)
                                      {
                                        v32 = &v269;
                                        MEMORY[0x1EEE9AC00](v232);
                                        *(&v269 - 4) = v228;
                                        *(&v269 - 3) = &v296;
                                        *(&v269 - 4) = 1536;
                                        *(&v269 - 1) = v233;
                                      }

                                      else
                                      {
                                        v242 = [(__CFString *)v228 lengthOfBytesUsingEncoding:4];
                                        v32 = &v269;
                                        MEMORY[0x1EEE9AC00](v242);
                                        *(&v269 - 4) = v228;
                                        *(&v269 - 3) = &v296;
                                        *(&v269 - 4) = 134217984;
                                        *(&v269 - 1) = v243;
                                      }

                                      v244 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                      v81 = v245;
                                      v246 = HIBYTE(v245) & 0xF;
                                      if ((v245 & 0x2000000000000000) == 0)
                                      {
                                        v246 = v244 & 0xFFFFFFFFFFFFLL;
                                      }

                                      if (v246)
                                      {
                                        v230 = v244;

                                        goto LABEL_267;
                                      }
                                    }

                                    goto LABEL_265;
                                  }

                                  v234 = v75;
                                  v235 = v228;
                                  v236 = String.init(_nativeStorage:)();
                                  if (v237)
                                  {
                                    v230 = v236;
                                    v81 = v237;
                                  }

                                  else
                                  {
                                    *&v296 = [(__CFString *)v235 length];
                                    if (v296)
                                    {
LABEL_265:
                                      v230 = String.init(_cocoaString:)();
                                      v81 = v247;
                                      goto LABEL_266;
                                    }

                                    v230 = 0;
                                    v81 = 0xE000000000000000;
                                  }

LABEL_266:
                                  v75 = v234;
LABEL_267:
                                  if (v208 == v230 && v210 == v81)
                                  {

LABEL_271:
                                    swift_willThrow();
                                  }

                                  v248 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                  if (v248)
                                  {
                                    goto LABEL_271;
                                  }

                                  goto LABEL_275;
                                }

                                v238 = [(__CFString *)v228 UTF8String];
                                if (!v238)
                                {
                                  goto LABEL_299;
                                }

                                v239 = String.init(utf8String:)(v238);
                                if (v240)
                                {
LABEL_250:
                                  v230 = v239;
                                  v81 = v240;

                                  goto LABEL_267;
                                }

                                __break(1u);
                              }

                              *&v290[1] = 0;
                              _CFIndirectTaggedPointerStringGetContents();
                              v239 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                              if (!v240)
                              {
                                [(__CFString *)v228 mutableCopy];
                                _bridgeAnyObjectToAny(_:)();

                                swift_unknownObjectRelease();
                                swift_dynamicCast();
                                v81 = *(&v292 + 1);
                                v230 = v292;
                                goto LABEL_267;
                              }

                              goto LABEL_250;
                            }

                            __break(1u);
                          }

                          *&v290[1] = 0;
                          _CFIndirectTaggedPointerStringGetContents();
                          v217 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                          if (!v218)
                          {
                            v32 = [v205 mutableCopy];
                            _bridgeAnyObjectToAny(_:)();

                            swift_unknownObjectRelease();
                            swift_dynamicCast();
                            v210 = *(&v292 + 1);
                            v208 = v292;
                            goto LABEL_232;
                          }

                          goto LABEL_212;
                        }

                        if (v290[1])
                        {
                          if (v292 == 1)
                          {
                            MEMORY[0x1EEE9AC00](v188);
                            *(&v269 - 4) = v185;
                            *(&v269 - 3) = &v296;
                            *(&v269 - 4) = 1536;
                            *(&v269 - 1) = v189;
                          }

                          else
                          {
                            v195 = [(__CFString *)v185 lengthOfBytesUsingEncoding:4];
                            MEMORY[0x1EEE9AC00](v195);
                            *(&v269 - 4) = v185;
                            *(&v269 - 3) = &v296;
                            *(&v269 - 4) = 134217984;
                            *(&v269 - 1) = v196;
                          }

                          v197 = v289;
                          v198 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v289 = v197;
                          v200 = HIBYTE(v199) & 0xF;
                          if ((v199 & 0x2000000000000000) == 0)
                          {
                            v200 = v198 & 0xFFFFFFFFFFFFLL;
                          }

                          if (v200)
                          {
                            goto LABEL_190;
                          }
                        }
                      }

                      else
                      {
                        v190 = v185;
                        String.init(_nativeStorage:)();
                        if (v191 || (*&v296 = [(__CFString *)v190 length], !v296))
                        {

                          goto LABEL_193;
                        }
                      }

                      String.init(_cocoaString:)();
                      goto LABEL_193;
                    }

                    v192 = [(__CFString *)v185 UTF8String];
                    if (!v192)
                    {
                      goto LABEL_298;
                    }

                    String.init(utf8String:)(v192);
                    if (v193)
                    {
                      goto LABEL_190;
                    }

                    __break(1u);
                  }

                  *&v290[1] = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v194)
                  {
                    [(__CFString *)v185 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    goto LABEL_193;
                  }

                  goto LABEL_190;
                }
              }

              __break(1u);
LABEL_275:
              __break(1u);
LABEL_276:
              __break(1u);
LABEL_277:
              __break(1u);
              goto LABEL_278;
            }

LABEL_132:

            goto LABEL_133;
          }

          v143 = _objc_getTaggedPointerTag(v142);
          if (v143)
          {
            if (v143 != 22)
            {
              if (v143 == 2)
              {
                MEMORY[0x1EEE9AC00](v143);
                *(&v269 - 2) = v124;
                v144 = v289;
                v145 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v147 = v146;
                v289 = v144;

LABEL_153:
                v32 = v288;
                goto LABEL_157;
              }

              goto LABEL_111;
            }

            v165 = [(int16x8_t *)v124 UTF8String];
            if (!v165)
            {
              goto LABEL_297;
            }

            v166 = String.init(utf8String:)(v165);
            if (v167)
            {
LABEL_138:
              v145 = v166;
              v147 = v167;

              goto LABEL_157;
            }

            __break(1u);
          }

          *&v290[1] = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v166 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v167)
          {
            [(int16x8_t *)v124 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v147 = *(&v292 + 1);
            v145 = v292;
            goto LABEL_157;
          }

          goto LABEL_138;
        }

        v289 = v113;
        v75 = 0xE100000000000000;
        v134 = 48;
      }

      else
      {
        v289 = v113;
        v134 = 5136718;
        v75 = 0xE300000000000000;
      }

LABEL_105:
      v32 = v288;
      goto LABEL_106;
    }

    v13 = 10;
    while (1)
    {
      v294 = v296;
      v295 = v297;
      if (!_So9NSDecimala__exponent_getter(&v294))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v294 = v296;
      v295 = v297;
      v72 = _So9NSDecimala__exponent_getter(&v294);
      _So9NSDecimala__exponent_setter((v72 + 1), &v296);
      v73 = v296;
      v74 = WORD2(v296);
      v38 = WORD4(v296);
      v75 = WORD5(v296);
      v275 = WORD3(v296);
      v279 = WORD6(v296);
      v277 = HIWORD(v296);
      LODWORD(v278) = v297;
      LODWORD(v276) = WORD1(v297);
      NSDecimal.asVariableLengthInteger()(v296 | (WORD2(v296) << 32) | (WORD3(v296) << 48), WORD4(v296) | (WORD5(v296) << 16) | (WORD6(v296) << 32) | (HIWORD(v296) << 48), v297 | (WORD1(v297) << 16));
      v136 = v76;
      v77 = *(v76 + 16);
      v137 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v77);
      *&v294 = v137;
      if (v77)
      {
        break;
      }

      v32 = 48;
LABEL_41:
      while (1)
      {
        v79 = v137[1].i64[0];
        if (!v79 || v137[1].i16[v79 + 7])
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v294 + 16) - 1);
        }

        v137 = v294;
      }

      LODWORD(v294) = v73;
      WORD2(v294) = v74;
      WORD3(v294) = v275;
      WORD4(v294) = v38;
      WORD5(v294) = v75;
      WORD6(v294) = v279;
      HIWORD(v294) = v277;
      LOWORD(v295) = v278;
      HIWORD(v295) = v276;
      NSDecimal.copyVariableLengthInteger(_:)(v137);
      v289 = v80;
      if (v80)
      {
        goto LABEL_302;
      }

      v81 = v137[1].u64[0];

      if (HIDWORD(v81))
      {
        goto LABEL_277;
      }

      _So9NSDecimala__length_setter(v81, &v294);
      v296 = v294;
      LODWORD(v297) = v295;
      *&v292 = v32;
      v84 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v84);

      v292 = v296;
      v293 = v297;
      if (!_So9NSDecimala__length_getter(&v292))
      {
        goto LABEL_48;
      }
    }

    v272 = v75;
    v273 = v38;
    v274 = v74;
    a2 = v73;
    v75 = 0;
    v32 = v77 + 15;
    while (v32 - 15 <= *(v136 + 16))
    {
      v38 = *(v136 + 2 * v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = specialized _ArrayBuffer._consumeAndCreateNew()(v137);
      }

      if (v32 - 15 > v137[1].i64[0])
      {
        goto LABEL_119;
      }

      v78 = v38 | (v75 << 16);
      v137->i16[v32] = v78 / 0xA;
      v75 = v78 % 0xA;
      if (--v32 == 15)
      {

        *&v294 = v137;
        v32 = v75 | 0x30;
        LOWORD(v74) = v274;
        LOWORD(v38) = v273;
        v75 = v272;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:

LABEL_121:
    v153 = v276;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v13, v276, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v275 = v136;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v296 = *(v32 + 16);
    v81 = v296;
    *(v32 + 16) = 0x8000000000000000;
    v83 = specialized __RawDictionaryStorage.find<A>(_:)(v153);
    v155 = *(v81 + 16);
    v156 = (v82 & 1) == 0;
    v157 = v155 + v156;
    if (__OFADD__(v155, v156))
    {
      goto LABEL_276;
    }

    v158 = *(v81 + 24);
    v289 = v137;
    if (v158 >= v157)
    {
      break;
    }

    v159 = isUniquelyReferenced_nonNull_native;
    v160 = v82;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v157, v159);
    v81 = v296;
    v161 = specialized __RawDictionaryStorage.find<A>(_:)(v153);
    if ((v160 & 1) != (v162 & 1))
    {
      goto LABEL_303;
    }

    v83 = v161;
    if ((v160 & 1) == 0)
    {
LABEL_125:
      v163 = v285;
      v164 = v83;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v153, v285, type metadata accessor for ICULegacyNumberFormatter.Signature);
      specialized _NativeDictionary._insert(at:key:value:)(v164, v163, v275, v81);
      goto LABEL_129;
    }

LABEL_128:
    *(*(v81 + 56) + 8 * v83) = v275;

LABEL_129:
    outlined destroy of ICULegacyNumberFormatter.Signature(v153, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v32 + 16) = v81;

    os_unfair_lock_unlock((v32 + 24));
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v82 & 1) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_128;
  }

LABEL_278:
  v249 = v81;
  v271 = v83;
  LODWORD(v272) = v82;
  v273 = v75;
  v270 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
  v250 = static _DictionaryStorage.copy(original:)();
  v81 = v250;
  v283 = v249;
  if (!*(v249 + 16))
  {
LABEL_293:

    a2 = v287;
    v38 = v281;
    v153 = v276;
    v13 = v270;
    v83 = v271;
    if ((v272 & 1) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_128;
  }

  v251 = (v250 + 64);
  v252 = 1 << *(v81 + 32);
  v274 = (v283 + 64);
  v253 = (v252 + 63) >> 6;
  if (v81 != v283 || v251 >= &v274[8 * v253])
  {
    memmove(v251, v274, 8 * v253);
  }

  v254 = 0;
  v255 = v283;
  *(v81 + 16) = *(v283 + 16);
  v256 = 1 << *(v255 + 32);
  v257 = *(v255 + 64);
  v258 = -1;
  if (v256 < 64)
  {
    v258 = ~(-1 << v256);
  }

  v259 = v258 & v257;
  v260 = (v256 + 63) >> 6;
  if ((v258 & v257) != 0)
  {
    do
    {
      v261 = __clz(__rbit64(v259));
      v259 &= v259 - 1;
LABEL_291:
      v264 = v261 | (v254 << 6);
      v265 = v283;
      v266 = *(v284 + 72) * v264;
      v267 = v285;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(*(v283 + 48) + v266, v285, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v268 = *(*(v265 + 56) + 8 * v264);
      outlined init with take of ICULegacyNumberFormatter.Signature(v267, *(v81 + 48) + v266, type metadata accessor for ICULegacyNumberFormatter.Signature);
      *(*(v81 + 56) + 8 * v264) = v268;
    }

    while (v259);
  }

  v262 = v254;
  while (1)
  {
    v254 = v262 + 1;
    if (__OFADD__(v262, 1))
    {
      break;
    }

    if (v254 >= v260)
    {
      goto LABEL_293;
    }

    v263 = *&v274[8 * v254];
    ++v262;
    if (v263)
    {
      v261 = __clz(__rbit64(v263));
      v259 = (v263 - 1) & v263;
      goto LABEL_291;
    }
  }

  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  os_unfair_lock_unlock((v32 + 24));
  __break(1u);
LABEL_302:

  swift_unexpectedError();
  __break(1u);
LABEL_303:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = v2;
  v299 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v7 = *(v6 - 8);
  v280 = v6;
  v281 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v9);
  v282 = &v265 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v265 - v12;
  v286 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v286);
  v15 = (&v265 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v284 = a1;
  v285 = a2;
  v20 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v20 = 11;
  }

  v283 = v2;
  if (!v19)
  {
    goto LABEL_15;
  }

  v275 = v20;
  v276 = v19;
  v274 = &v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v18;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v2, v15, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR) + 48));
  outlined init with take of ICULegacyNumberFormatter.Signature(v15 + *(v286 + 24), v21, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  v23 = v15[3];
  *v22 = v15[2];
  v22[1] = v23;
  swift_storeEnumTagMultiPayload();
  v24 = *v15;
  v25 = v15[1];
  LOBYTE(v22) = *(v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMR) + 36));
  v278 = v21;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v21, v13, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v27 = *(v25 + 64);
  swift_unknownObjectRetain();
  v277 = v24;
  v28 = v27(ObjectType, v25);
  v29 = v280;
  v30 = &v13[*(v280 + 20)];
  *v30 = v28;
  v30[1] = v31;
  v13[*(v29 + 24)] = v22;
  v32 = v13;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v33 = static ICULegacyNumberFormatter.cache;
  v34 = qword_1EA7AFFA0;
  v35 = v13;
  v36 = v282;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v35, v282, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v37 = (*(v281 + 80) + 16) & ~*(v281 + 80);
  v38 = swift_allocObject();
  v39 = outlined init with take of ICULegacyNumberFormatter.Signature(v36, v38 + v37, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v39);
  *(&v265 - 2) = v32;
  os_unfair_lock_lock(v34 + 6);
  v40 = v287;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v297, &v34[4]);
  if (v40)
  {
    goto LABEL_302;
  }

  os_unfair_lock_unlock(v34 + 6);
  v279 = v297;
  if (!v297)
  {
    v279 = implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)partial apply();
    v287 = 0;
    os_unfair_lock_lock(v34 + 6);
    v142 = *&v34[4]._os_unfair_lock_opaque;
    if (v33 >= *(v142 + 16))
    {
    }

    else
    {
      *&v34[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
    }

    v157 = v274;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v32, v274, type metadata accessor for ICULegacyNumberFormatter.Signature);

    LODWORD(v273) = swift_isUniquelyReferenced_nonNull_native();
    *&v297 = *&v34[4]._os_unfair_lock_opaque;
    v79 = v297;
    *&v34[4]._os_unfair_lock_opaque = 0x8000000000000000;
    v92 = specialized __RawDictionaryStorage.find<A>(_:)(v157);
    v159 = *(v79 + 16);
    v160 = (v158 & 1) == 0;
    v161 = v159 + v160;
    if (__OFADD__(v159, v160))
    {
      goto LABEL_275;
    }

    LODWORD(v33) = v158;
    v162 = *(v79 + 24);
    v272 = v142;
    if (v162 >= v161)
    {
      if ((v273 & 1) == 0)
      {
        goto LABEL_277;
      }

      v163 = v79;
      if ((v158 & 1) == 0)
      {
        goto LABEL_293;
      }

      goto LABEL_130;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v161, v273);
    v163 = v297;
    v164 = specialized __RawDictionaryStorage.find<A>(_:)(v274);
    if ((v33 & 1) == (v165 & 1))
    {
      v92 = v164;
      if ((v33 & 1) == 0)
      {
        goto LABEL_293;
      }

      goto LABEL_130;
    }

    goto LABEL_304;
  }

  v287 = 0;
  while (1)
  {
    outlined destroy of ICULegacyNumberFormatter.Signature(v32, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v41 = String.subscript.getter();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    *&v295 = 0;
    v48 = specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v41, v42, v44, v46, &v295);
    if ((v49 & 0x100000000) == 0)
    {
      *&v297 = v41;
      *(&v297 + 1) = v43;
      *&v298 = v45;
      *(&v298 + 1) = v47;
      v50 = v48;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of ICULegacyNumberFormatter.Signature(v278, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      return v50;
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v278, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    swift_unknownObjectRelease();

LABEL_15:
    v53 = v286;
    v52 = v287;
    v297 = 0uLL;
    result = specialized NSDecimal.init(string:locale:)(v284, v285, &v297);
    if ((v54 & 0x100000000) == 0)
    {
      return result;
    }

    v287 = v52;
    specialized NSDecimal.init(_:)(3.14);
    v281 = v56;
    v282 = v55;
    LODWORD(v280) = v57;
    v58 = v283;
    v277 = *(v53 + 24);
    v59 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    v61 = v60;
    v62 = v58[2];
    v63 = v58[3];
    v64 = *v58;
    v65 = v58[1];
    v66 = swift_getObjectType();
    v67 = *(v65 + 472);

    v275 = v64;
    v276 = v65;
    v273 = v66;
    v274 = v65 + 472;
    v272 = v67;
    v68 = v67(v66, v65);
    v292[0] = v59;
    v292[1] = v61;
    v278 = v62;
    v292[2] = v62;
    v292[3] = v63;
    v292[4] = v68;
    v292[5] = v69;

    v70 = specialized static ICUCurrencyNumberFormatter._create(with:)(v292);

    v279 = v63;

    if (v70)
    {
      v71 = *(v70 + 2);
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_allocObject();
      v73 = v281;
      v72 = v282;
      v74 = v280;
      v75 = v287;
      v76 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v71, v282, v281, v280);
      v77 = v75;
      if (v75)
      {

        v77 = 0;
      }

      else
      {
        v98 = v76;

        v95 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v98);
        v97 = v99;

        if (v97)
        {
          v287 = 0;
          goto LABEL_62;
        }
      }
    }

    else
    {
      v77 = v287;
      v74 = v280;
      v73 = v281;
      v72 = v282;
    }

    *&v297 = v72;
    *(&v297 + 1) = v73;
    LODWORD(v298) = v74;
    if (!_So9NSDecimala__length_getter(&v297))
    {
      *&v297 = v72;
      *(&v297 + 1) = v73;
      LODWORD(v298) = v74;
      if (_So9NSDecimala__isNegative_getter(&v297))
      {
        v287 = v77;
        v95 = 5136718;
        v97 = 0xE300000000000000;
        goto LABEL_62;
      }
    }

    *&v297 = v72;
    *(&v297 + 1) = v73;
    LODWORD(v298) = v74;
    if (_So9NSDecimala__length_getter(&v297))
    {
      *&v290 = 0;
      *(&v290 + 1) = 0xE000000000000000;
      *&v297 = v72;
      *(&v297 + 1) = v73;
      LODWORD(v298) = v74;
      v295 = v297;
      j = v74;
      if (_So9NSDecimala__exponent_getter(&v295) >= 1)
      {
        do
        {
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v295 = v297;
          j = v298;
          v78 = _So9NSDecimala__exponent_getter(&v295);
          _So9NSDecimala__exponent_setter((v78 - 1), &v297);
          v295 = v297;
          j = v298;
        }

        while (_So9NSDecimala__exponent_getter(&v295) > 0);
      }

      v295 = v297;
      j = v298;
      if (!_So9NSDecimala__exponent_getter(&v295))
      {
        _So9NSDecimala__exponent_setter(1, &v297);
      }

      v295 = v297;
      j = v298;
      if (_So9NSDecimala__length_getter(&v295))
      {
        LODWORD(v33) = -858993459;
        v79 = 10;
        do
        {
          v295 = v297;
          j = v298;
          if (!_So9NSDecimala__exponent_getter(&v295))
          {
            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          }

          v295 = v297;
          j = v298;
          v80 = _So9NSDecimala__exponent_getter(&v295);
          _So9NSDecimala__exponent_setter((v80 + 1), &v297);
          v32 = v297;
          v286 = WORD2(v297);
          v268 = WORD3(v297);
          v281 = WORD5(v297);
          v282 = WORD4(v297);
          v280 = WORD6(v297);
          v270 = HIWORD(v297);
          LODWORD(v271) = v298;
          LODWORD(v269) = WORD1(v298);
          NSDecimal.asVariableLengthInteger()(v297 | (WORD2(v297) << 32) | (WORD3(v297) << 48), WORD4(v297) | (WORD5(v297) << 16) | (WORD6(v297) << 32) | (HIWORD(v297) << 48), v298 | (WORD1(v298) << 16));
          v82 = v81;
          v83 = *(v81 + 16);
          v84 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v83);
          *&v295 = v84;
          if (v83)
          {
            v267 = v32;
            v287 = v77;
            v32 = 0;
            v85 = v83 + 15;
            do
            {
              v34 = (v85 - 15);
              if ((v85 - 15) > *(v82 + 16))
              {
                __break(1u);
LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

              v86 = *(v82 + 2 * v85);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v84 = specialized _ArrayBuffer._consumeAndCreateNew()(v84);
              }

              if (v34 > v84[1].i64[0])
              {
                goto LABEL_102;
              }

              v87 = v86 | (v32 << 16);
              v84->i16[v85] = v87 / 0xA;
              v32 = v87 % 0xA;
              --v85;
            }

            while (v85 != 15);

            *&v295 = v84;
            v88 = v32 | 0x30;
            v32 = v267;
            v89 = v84[1].i64[0];
            if (!v89)
            {
              goto LABEL_45;
            }
          }

          else
          {

            v88 = 48;
            v89 = v84[1].i64[0];
            if (!v89)
            {
LABEL_45:
              v34 = &v293;
              goto LABEL_46;
            }
          }

          v34 = &v293;
          do
          {
            if (v84[1].i16[v89 + 7])
            {
              break;
            }

            if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
            {
              specialized Array.remove(at:)(*(v295 + 16) - 1);
            }

            v84 = v295;
            v89 = *(v295 + 16);
          }

          while (v89);
LABEL_46:
          LODWORD(v295) = v32;
          WORD2(v295) = v286;
          WORD3(v295) = v268;
          WORD4(v295) = v282;
          WORD5(v295) = v281;
          WORD6(v295) = v280;
          HIWORD(v295) = v270;
          LOWORD(j) = v271;
          HIWORD(j) = v269;
          NSDecimal.copyVariableLengthInteger(_:)(v84);
          v77 = v90;
          if (v90)
          {
            goto LABEL_303;
          }

          v91 = v84[1].u64[0];

          if (HIDWORD(v91))
          {
            goto LABEL_276;
          }

          _So9NSDecimala__length_setter(v91, &v295);
          v297 = v295;
          LODWORD(v298) = j;
          *&v293 = v88;
          v93 = static String._uncheckedFromUTF8(_:)();
          MEMORY[0x1865CB0E0](v93);

          v293 = v297;
          v294 = v298;
        }

        while (_So9NSDecimala__length_getter(&v293));
      }

      v295 = v297;
      j = v298;
      if (_So9NSDecimala__exponent_getter(&v295) <= 0)
      {
        while (1)
        {
          v295 = v297;
          j = v298;
          if (!_So9NSDecimala__exponent_getter(&v295))
          {
            break;
          }

          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          v295 = v297;
          j = v298;
          v94 = _So9NSDecimala__exponent_getter(&v295);
          _So9NSDecimala__exponent_setter((v94 + 1), &v297);
        }

        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      }

      v295 = v297;
      j = v298;
      if (_So9NSDecimala__isNegative_getter(&v295))
      {
        MEMORY[0x1865CB0E0](45, 0xE100000000000000);
      }

      v287 = v77;
      v295 = v290;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
      lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
      v95 = String.init<A>(_:)();
      v97 = v96;
    }

    else
    {
      v287 = v77;
      v97 = 0xE100000000000000;
      v95 = 48;
    }

LABEL_62:
    *&v290 = v95;
    *(&v290 + 1) = v97;
    v269 = v97;
    *&v297 = specialized NSDecimal.init(_:)(0x3039uLL);
    *(&v297 + 1) = v100;
    LODWORD(v298) = v101;
    _So9NSDecimala__isNegative_setter(1, &v297);
    v280 = v297;
    v283 = WORD2(v297);
    v102 = WORD3(v297);
    v281 = WORD4(v297);
    v286 = WORD5(v297);
    v103 = WORD6(v297);
    v282 = HIWORD(v297);
    v104 = v298;
    v105 = WORD1(v298);
    v106 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    v108 = v107;
    v109 = v272(v273, v276);
    v291[0] = v106;
    v291[1] = v108;
    v291[2] = v278;
    v291[3] = v279;
    v291[4] = v109;
    v291[5] = v110;
    v111 = specialized static ICUCurrencyNumberFormatter._create(with:)(v291);

    LODWORD(v271) = v105;
    v270 = v103;
    if (!v111)
    {
      LODWORD(v279) = v104;
      v115 = v280;
      v120 = v283;
LABEL_66:
      v114 = v281;
      v121 = v286;
      goto LABEL_67;
    }

    v278 = v111;
    v112 = *(v111 + 2);
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_allocObject();
    v113 = v103;
    v115 = v280;
    v114 = v281;
    v116 = v283;
    v117 = v104;
    v34 = v286;
    v118 = v287;
    v119 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v112, v280 | (v283 << 32) | (v102 << 48), v281 | (v286 << 16) | (v113 << 32) | (v282 << 48), v117 | (v105 << 16));
    v120 = v116;
    if (!v118)
    {
      v287 = 0;
      v143 = v119;

      v140 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v143);
      v141 = v144;

      if (v141)
      {
        goto LABEL_100;
      }

      LODWORD(v279) = v117;
      goto LABEL_66;
    }

    v121 = v34;
    LODWORD(v279) = v117;

    v287 = 0;
LABEL_67:
    LODWORD(v297) = v115;
    WORD2(v297) = v120;
    WORD3(v297) = v102;
    WORD4(v297) = v114;
    WORD5(v297) = v121;
    v34 = v270;
    WORD6(v297) = v270;
    v122 = v282;
    HIWORD(v297) = v282;
    v123 = v279;
    LOWORD(v298) = v279;
    v124 = v271;
    WORD1(v298) = v271;
    if (!_So9NSDecimala__length_getter(&v297))
    {
      LODWORD(v297) = v115;
      WORD2(v297) = v283;
      WORD3(v297) = v102;
      WORD4(v297) = v114;
      WORD5(v297) = v286;
      WORD6(v297) = v34;
      HIWORD(v297) = v122;
      LOWORD(v298) = v123;
      WORD1(v298) = v124;
      if (_So9NSDecimala__isNegative_getter(&v297))
      {
        v140 = 5136718;
        v141 = 0xE300000000000000;
LABEL_100:
        v32 = v287;
        goto LABEL_110;
      }
    }

    LODWORD(v297) = v115;
    WORD2(v297) = v283;
    WORD3(v297) = v102;
    WORD4(v297) = v114;
    WORD5(v297) = v286;
    WORD6(v297) = v34;
    HIWORD(v297) = v122;
    LOWORD(v298) = v123;
    WORD1(v298) = v124;
    if (!_So9NSDecimala__length_getter(&v297))
    {
      v141 = 0xE100000000000000;
      v140 = 48;
      goto LABEL_100;
    }

    *&v289 = 0;
    *(&v289 + 1) = 0xE000000000000000;
    LODWORD(v297) = v115;
    WORD2(v297) = v283;
    WORD3(v297) = v102;
    WORD4(v297) = v114;
    WORD5(v297) = v286;
    WORD6(v297) = v34;
    HIWORD(v297) = v122;
    LOWORD(v298) = v123;
    WORD1(v298) = v124;
    v295 = v297;
    j = v298;
    if (_So9NSDecimala__exponent_getter(&v295) >= 1)
    {
      do
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v295 = v297;
        j = v298;
        v125 = _So9NSDecimala__exponent_getter(&v295);
        _So9NSDecimala__exponent_setter((v125 - 1), &v297);
        v295 = v297;
        j = v298;
      }

      while (_So9NSDecimala__exponent_getter(&v295) > 0);
    }

    v295 = v297;
    j = v298;
    v126 = _So9NSDecimala__exponent_getter(&v295);
    v32 = v287;
    if (!v126)
    {
      _So9NSDecimala__exponent_setter(1, &v297);
    }

    v295 = v297;
    j = v298;
    if (_So9NSDecimala__length_getter(&v295))
    {
      while (1)
      {
        v295 = v297;
        j = v298;
        if (!_So9NSDecimala__exponent_getter(&v295))
        {
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        }

        v287 = v32;
        v295 = v297;
        j = v298;
        v127 = _So9NSDecimala__exponent_getter(&v295);
        _So9NSDecimala__exponent_setter((v127 + 1), &v297);
        v286 = v297;
        v282 = WORD4(v297);
        v283 = WORD2(v297);
        v276 = WORD3(v297);
        v280 = WORD6(v297);
        v281 = WORD5(v297);
        v278 = HIWORD(v297);
        LODWORD(v279) = v298;
        LODWORD(v277) = WORD1(v298);
        NSDecimal.asVariableLengthInteger()(v297 | (WORD2(v297) << 32) | (WORD3(v297) << 48), WORD4(v297) | (WORD5(v297) << 16) | (WORD6(v297) << 32) | (HIWORD(v297) << 48), v298 | (WORD1(v298) << 16));
        v129 = v128;
        data = v128->data;
        v131 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, data);
        *&v295 = v131;
        if (data)
        {
          break;
        }

        v135 = 48;
LABEL_84:
        for (i = v131[1].i64[0]; i; i = *(v295 + 16))
        {
          if (v131[1].i16[i + 7])
          {
            break;
          }

          if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
          {
            specialized Array.remove(at:)(*(v295 + 16) - 1);
          }

          v131 = v295;
        }

        LODWORD(v295) = v286;
        WORD2(v295) = v283;
        WORD3(v295) = v276;
        WORD4(v295) = v282;
        WORD5(v295) = v281;
        WORD6(v295) = v280;
        HIWORD(v295) = v278;
        LOWORD(j) = v279;
        HIWORD(j) = v277;
        NSDecimal.copyVariableLengthInteger(_:)(v131);
        v32 = v137;
        if (v137)
        {
          goto LABEL_303;
        }

        v138 = v131[1].u64[0];

        if (HIDWORD(v138))
        {
          __break(1u);
        }

        _So9NSDecimala__length_setter(v138, &v295);
        v34 = &v293;
        v297 = v295;
        LODWORD(v298) = j;
        *&v293 = v135;
        v139 = static String._uncheckedFromUTF8(_:)();
        MEMORY[0x1865CB0E0](v139);

        v293 = v297;
        v294 = v298;
        if (!_So9NSDecimala__length_getter(&v293))
        {
          goto LABEL_103;
        }
      }

      v32 = 0;
      v132 = data + 15;
      while (v132 - 15 <= v129->data)
      {
        v133 = *(&v129->isa + v132);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew()(v131);
        }

        if (v132 - 15 > v131[1].i64[0])
        {
          goto LABEL_132;
        }

        v134 = v133 | (v32 << 16);
        v131->i16[v132] = v134 / 0xA;
        v32 = v134 % 0xA;
        if (--v132 == 15)
        {

          *&v295 = v131;
          v135 = v32 | 0x30;
          goto LABEL_84;
        }
      }

      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:

LABEL_134:
      v33 = 0;
      v151 = 0xE000000000000000;
      goto LABEL_158;
    }

LABEL_103:
    v295 = v297;
    j = v298;
    if (_So9NSDecimala__exponent_getter(&v295) <= 0)
    {
      v295 = v297;
      for (j = v298; _So9NSDecimala__exponent_getter(&v295); j = v298)
      {
        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v295 = v297;
        j = v298;
        v145 = _So9NSDecimala__exponent_getter(&v295);
        _So9NSDecimala__exponent_setter((v145 + 1), &v297);
        v295 = v297;
      }

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
    }

    v295 = v297;
    j = v298;
    if (_So9NSDecimala__isNegative_getter(&v295))
    {
      MEMORY[0x1865CB0E0](45, 0xE100000000000000);
    }

    v295 = v289;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
    lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
    v140 = String.init<A>(_:)();
    v141 = v146;
LABEL_110:
    *&v295 = v140;
    *(&v295 + 1) = v141;
    v287 = v141;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v132 = swift_allocObject();
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v148 = @"NSDebugDescription";
    v129 = v148;
    if (!isTaggedPointer)
    {
      goto LABEL_115;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v148);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v265 - 2) = v129;
          v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v151 = v150;

          goto LABEL_158;
        }

LABEL_115:
        LOBYTE(v293) = 0;
        *&v297 = 0;
        LOBYTE(v289) = 0;
        v288 = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          v153 = v297;
          if (!v297)
          {
            goto LABEL_133;
          }

          if (v288 == 1)
          {
            if (v293)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v170 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_157;
          }

          if (v289)
          {
            if (v293 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              *(&v265 - 4) = v129;
              *(&v265 - 3) = &v297;
              *(&v265 - 4) = 1536;
              *(&v265 - 1) = v153;
            }

            else
            {
              v172 = [(__CFString *)v129 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v172);
              *(&v265 - 4) = v129;
              *(&v265 - 3) = &v297;
              *(&v265 - 4) = 134217984;
              *(&v265 - 1) = v173;
            }

            v174 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v151 = v175;
            v176 = HIBYTE(v175) & 0xF;
            if ((v175 & 0x2000000000000000) == 0)
            {
              v176 = v174 & 0xFFFFFFFFFFFFLL;
            }

            if (v176)
            {
              v33 = v174;
              goto LABEL_140;
            }
          }
        }

        else
        {
          v154 = v129;
          v155 = String.init(_nativeStorage:)();
          if (v156)
          {
            v33 = v155;
            v151 = v156;

            goto LABEL_158;
          }

          *&v297 = [(__CFString *)v154 length];
          if (!v297)
          {

            goto LABEL_134;
          }
        }

        v170 = String.init(_cocoaString:)();
LABEL_157:
        v33 = v170;
        v151 = v171;
        goto LABEL_158;
      }

      v167 = [(__CFString *)v129 UTF8String];
      if (!v167)
      {
        goto LABEL_297;
      }

      v168 = String.init(utf8String:)(v167);
      if (v169)
      {
LABEL_139:
        v33 = v168;
        v151 = v169;
LABEL_140:

        goto LABEL_158;
      }

      __break(1u);
    }

    LOWORD(v289) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v168 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v169)
    {
      goto LABEL_139;
    }

    [(__CFString *)v129 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v151 = *(&v293 + 1);
    v33 = v293;
LABEL_158:
    *(v132 + 32) = v33;
    *(v132 + 40) = v151;
    *&v297 = 0;
    *(&v297 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v284, v285);
    MEMORY[0x1865CB0E0](0xD000000000000039, 0x800000018147EC30);
    v177 = MEMORY[0x1E69E6158];
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0x2220726F2022, 0xE600000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](34, 0xE100000000000000);
    v178 = v297;
    *(v132 + 72) = v177;
    *(v132 + 48) = v178;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v79 = static _DictionaryStorage.allocate(capacity:)();
    v34 = &v297;
    outlined init with copy of (String, Any)(v132 + 32, &v297);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?(v132 + 32, &_sSS_yptMd, &_sSS_yptMR);
    swift_deallocClassInstance();
    v179 = v297;
    v180 = specialized __RawDictionaryStorage.find<A>(_:)(v297, *(&v297 + 1));
    LODWORD(v33) = v181;

    if (v33)
    {
      __break(1u);
LABEL_273:
      __break(1u);
      goto LABEL_274;
    }

    *(v79 + 8 * (v180 >> 6) + 64) |= 1 << v180;
    *(*(v79 + 48) + 16 * v180) = v179;
    outlined init with take of Any(&v298, (*(v79 + 56) + 32 * v180));
    v182 = *(v79 + 16);
    v183 = __OFADD__(v182, 1);
    v184 = v182 + 1;
    if (v183)
    {
      goto LABEL_273;
    }

    *(v79 + 16) = v184;
    v185 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v186 = @"NSCocoaErrorDomain";
    v187 = v186;
    if (v185)
    {
      v188 = _objc_getTaggedPointerTag(v186);
      switch(v188)
      {
        case 0:
          goto LABEL_176;
        case 0x16:
          v193 = [(__CFString *)v187 UTF8String];
          if (!v193)
          {
            goto LABEL_298;
          }

          String.init(utf8String:)(v193);
          if (!v194)
          {
            __break(1u);
LABEL_176:
            LOWORD(v289) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v195)
            {
              [(__CFString *)v187 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_193;
            }
          }

LABEL_190:

          goto LABEL_193;
        case 2:
          MEMORY[0x1EEE9AC00](v188);
          *(&v265 - 2) = v187;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_193;
      }
    }

    LOBYTE(v293) = 0;
    *&v297 = 0;
    LOBYTE(v289) = 0;
    v288 = 0;
    v189 = __CFStringIsCF();
    if (!v189)
    {
      v191 = v187;
      String.init(_nativeStorage:)();
      if (v192 || (*&v297 = [(__CFString *)v191 length], !v297))
      {

        goto LABEL_193;
      }

LABEL_192:
      String.init(_cocoaString:)();
      goto LABEL_193;
    }

    v190 = v297;
    if (!v297)
    {
      goto LABEL_190;
    }

    if (v288 != 1)
    {
      if (v289)
      {
        if (v293 == 1)
        {
          MEMORY[0x1EEE9AC00](v189);
          *(&v265 - 4) = v187;
          *(&v265 - 3) = &v297;
          *(&v265 - 4) = 1536;
          *(&v265 - 1) = v190;
        }

        else
        {
          v196 = [(__CFString *)v187 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v196);
          *(&v265 - 4) = v187;
          *(&v265 - 3) = &v297;
          *(&v265 - 4) = 134217984;
          *(&v265 - 1) = v197;
        }

        v198 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v200 = HIBYTE(v199) & 0xF;
        if ((v199 & 0x2000000000000000) == 0)
        {
          v200 = v198 & 0xFFFFFFFFFFFFLL;
        }

        if (v200)
        {
          goto LABEL_190;
        }
      }

      goto LABEL_192;
    }

    if (v293)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_193:
    v34 = objc_allocWithZone(NSError);
    v201 = String._bridgeToObjectiveCImpl()();

    v79 = [(os_unfair_lock_s *)v34 initWithDomain:v201 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v202 = [v79 domain];
    if (!v202)
    {
      goto LABEL_207;
    }

    v203 = v202;
    v204 = _objc_isTaggedPointer(v202);
    v205 = v203;
    v206 = v205;
    if (!v204)
    {
      goto LABEL_199;
    }

    v207 = _objc_getTaggedPointerTag(v205);
    if (!v207)
    {
      goto LABEL_211;
    }

    if (v207 != 22)
    {
      if (v207 == 2)
      {
        MEMORY[0x1EEE9AC00](v207);
        *(&v265 - 2) = v206;
        v34 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v209 = v208;

        goto LABEL_232;
      }

LABEL_199:
      LOBYTE(v293) = 0;
      *&v297 = 0;
      LOBYTE(v289) = 0;
      v288 = 0;
      v210 = __CFStringIsCF();
      if (!v210)
      {
        v212 = v32;
        v213 = v206;
        v214 = String.init(_nativeStorage:)();
        if (v215)
        {
          v34 = v214;
          v209 = v215;

          v32 = v212;
          goto LABEL_232;
        }

        *&v297 = [v213 length];
        if (!v297)
        {

          v34 = 0;
          v209 = 0xE000000000000000;
          v32 = v212;
          goto LABEL_232;
        }

        v32 = v212;
LABEL_229:
        v219 = String.init(_cocoaString:)();
LABEL_230:
        v34 = v219;
        v209 = v220;
        goto LABEL_231;
      }

      v211 = v297;
      if (!v297)
      {

LABEL_207:
        v34 = 0;
        v209 = 0xE000000000000000;
        goto LABEL_232;
      }

      if (v288 == 1)
      {
        if (v293)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v219 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_230;
      }

      if ((v289 & 1) == 0)
      {
        goto LABEL_229;
      }

      if (v293 == 1)
      {
        MEMORY[0x1EEE9AC00](v210);
        *(&v265 - 4) = v206;
        *(&v265 - 3) = &v297;
        *(&v265 - 4) = 1536;
        *(&v265 - 1) = v211;
      }

      else
      {
        v221 = [v206 lengthOfBytesUsingEncoding_];
        MEMORY[0x1EEE9AC00](v221);
        *(&v265 - 4) = v206;
        *(&v265 - 3) = &v297;
        *(&v265 - 4) = 134217984;
        *(&v265 - 1) = v222;
      }

      v223 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v209 = v224;
      v225 = HIBYTE(v224) & 0xF;
      if ((v224 & 0x2000000000000000) == 0)
      {
        v225 = v223 & 0xFFFFFFFFFFFFLL;
      }

      if (!v225)
      {

        goto LABEL_229;
      }

      v34 = v223;
      goto LABEL_213;
    }

    v216 = [v206 UTF8String];
    if (!v216)
    {
      goto LABEL_301;
    }

    v217 = String.init(utf8String:)(v216);
    if (!v218)
    {
      __break(1u);
LABEL_211:
      LOWORD(v289) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v217 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v218)
      {
        [v206 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v209 = *(&v293 + 1);
        v34 = v293;
        goto LABEL_231;
      }
    }

    v34 = v217;
    v209 = v218;
LABEL_213:

LABEL_231:
LABEL_232:
    v226 = v187;
    v227 = v226;
    if (v185)
    {
      v228 = _objc_getTaggedPointerTag(v226);
      switch(v228)
      {
        case 0:
          LOWORD(v289) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v236 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v237)
          {
            goto LABEL_248;
          }

          [(__CFString *)v227 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v230 = *(&v293 + 1);
          v33 = v293;
          goto LABEL_266;
        case 0x16:
          v235 = [(__CFString *)v227 UTF8String];
          if (!v235)
          {
            goto LABEL_299;
          }

          v236 = String.init(utf8String:)(v235);
          if (!v237)
          {
            goto LABEL_300;
          }

LABEL_248:
          v33 = v236;
          v230 = v237;

          goto LABEL_266;
        case 2:
          MEMORY[0x1EEE9AC00](v228);
          *(&v265 - 2) = v227;
          v33 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v230 = v229;

          goto LABEL_266;
      }
    }

    LOBYTE(v293) = 0;
    *&v297 = 0;
    LOBYTE(v289) = 0;
    v288 = 0;
    v231 = __CFStringIsCF();
    if (v231)
    {
      v232 = v297;
      if (!v297)
      {

LABEL_245:
        v33 = 0;
        v230 = 0xE000000000000000;
        goto LABEL_266;
      }

      if (v288 == 1)
      {
        if (v293)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v33 = String.init<A>(_immortalCocoaString:count:encoding:)();
        v230 = v238;
        goto LABEL_266;
      }

      if (v289)
      {
        if (v293 == 1)
        {
          MEMORY[0x1EEE9AC00](v231);
          *(&v265 - 4) = v227;
          *(&v265 - 3) = &v297;
          *(&v265 - 4) = 1536;
          *(&v265 - 1) = v232;
        }

        else
        {
          v239 = [(__CFString *)v227 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v239);
          *(&v265 - 4) = v227;
          *(&v265 - 3) = &v297;
          *(&v265 - 4) = 134217984;
          *(&v265 - 1) = v240;
        }

        v241 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v230 = v242;
        v243 = HIBYTE(v242) & 0xF;
        if ((v242 & 0x2000000000000000) == 0)
        {
          v243 = v241 & 0xFFFFFFFFFFFFLL;
        }

        if (v243)
        {
          v33 = v241;

          goto LABEL_266;
        }
      }
    }

    else
    {
      v32 = v227;
      v233 = String.init(_nativeStorage:)();
      if (v234)
      {
        v33 = v233;
        v230 = v234;

        goto LABEL_266;
      }

      *&v297 = [v32 length];
      if (!v297)
      {

        goto LABEL_245;
      }
    }

    v33 = String.init(_cocoaString:)();
    v230 = v244;
LABEL_266:
    if (v34 == v33 && v209 == v230)
    {

LABEL_270:
      swift_willThrow();
    }

    v245 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v245)
    {
      goto LABEL_270;
    }

LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    v267 = v92;
    LODWORD(v268) = v33;
    v269 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
    v273 = static _DictionaryStorage.copy(original:)();
    v271 = v79;
    if (*(v79 + 16))
    {
      break;
    }

LABEL_292:

    v32 = v269;
    v92 = v267;
    v163 = v273;
    if (v268)
    {
LABEL_130:
      *(v163[7] + 8 * v92) = v279;

      v166 = v274;
    }

    else
    {
LABEL_293:
      v166 = v274;
      v263 = v282;
      v264 = v92;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v274, v282, type metadata accessor for ICULegacyNumberFormatter.Signature);
      specialized _NativeDictionary._insert(at:key:value:)(v264, v263, v279, v163);
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v166, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *&v34[4]._os_unfair_lock_opaque = v163;

    os_unfair_lock_unlock(v34 + 6);
  }

  v246 = (v273 + 64);
  v247 = 1 << *(v273 + 32);
  v270 = (v271 + 8);
  v248 = (v247 + 63) >> 6;
  if (v273 != v271 || v246 >= &v270[2 * v248])
  {
    memmove(v246, v270, 8 * v248);
  }

  v249 = 0;
  v250 = v271;
  *(v273 + 16) = v271[2];
  v251 = 1 << *(v250 + 32);
  v252 = v250[8];
  v253 = -1;
  if (v251 < 64)
  {
    v253 = ~(-1 << v251);
  }

  v280 = v253 & v252;
  v266 = (v251 + 63) >> 6;
  if ((v253 & v252) != 0)
  {
    do
    {
      v254 = __clz(__rbit64(v280));
      v280 &= v280 - 1;
LABEL_290:
      v257 = v254 | (v249 << 6);
      v258 = v271;
      v259 = v282;
      v260 = *(v281 + 72) * v257;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v271[6] + v260, v282, type metadata accessor for ICULegacyNumberFormatter.Signature);
      v261 = *(v258[7] + 8 * v257);
      v262 = v273;
      outlined init with take of ICULegacyNumberFormatter.Signature(v259, *(v273 + 48) + v260, type metadata accessor for ICULegacyNumberFormatter.Signature);
      *(*(v262 + 56) + 8 * v257) = v261;
    }

    while (v280);
  }

  v255 = v249;
  while (1)
  {
    v249 = v255 + 1;
    if (__OFADD__(v255, 1))
    {
      break;
    }

    if (v249 >= v266)
    {
      goto LABEL_292;
    }

    v256 = *&v270[2 * v249]._os_unfair_lock_opaque;
    ++v255;
    if (v256)
    {
      v254 = __clz(__rbit64(v256));
      v280 = (v256 - 1) & v256;
      goto LABEL_290;
    }
  }

  __break(1u);
LABEL_297:
  __break(1u);
LABEL_298:
  __break(1u);
LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  os_unfair_lock_unlock(v34 + 6);
  __break(1u);
LABEL_303:

  swift_unexpectedError();
  __break(1u);
LABEL_304:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NSDecimal.ParseStrategy.parse(_:)(NSDecimal *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v268 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v245 = v2;
  v243 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v241 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v250 = &v227 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v251 = &v227 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleV8CurrencyVSgMd, &_sSo9NSDecimala10FoundationE11FormatStyleV8CurrencyVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v234 = &v227 - v10;
  v235 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  v233 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v228 = (&v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v246 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v247 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v236 = &v227 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v248 = &v227 - v14;
  v244 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v253 = &v227 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleV7PercentVSgMd, &_sSo9NSDecimala10FoundationE11FormatStyleV7PercentVSgMR);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v240 = &v227 - v19;
  v239 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  v238 = *(v239 - 1);
  MEMORY[0x1EEE9AC00](v239);
  v232 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE11FormatStyleVSgMd, &_sSo9NSDecimala10FoundationE11FormatStyleVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v227 - v22;
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v231 = &v227 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v227 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v227 - v31;
  v33 = type metadata accessor for NSDecimal.FormatStyle(0);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  v39.n128_f64[0] = MEMORY[0x1EEE9AC00](v37);
  v252 = (&v227 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((object & 0x2000000000000000) != 0)
  {
    v41 = HIBYTE(object) & 0xF;
  }

  else
  {
    v41 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v255 = object;
  v42 = 7;
  if (((object >> 60) & ((countAndFlagsBits & 0x800000000000000) == 0)) != 0)
  {
    v42 = 11;
  }

  v242 = v5;
  if (!v41)
  {
    v77 = v250;
    goto LABEL_24;
  }

  v237 = v38;
  v229 = v42;
  v230 = v41;
  v43 = v24 + 16;
  v44 = *(v24 + 16);
  v45 = v254;
  v227 = v43;
  v44(v32, v254, v5, v39);
  v46 = swift_dynamicCast();
  v47 = *(v34 + 56);
  if (v46)
  {
    v47(v23, 0, 1, v33);
    outlined init with take of ICULegacyNumberFormatter.Signature(v23, v36, type metadata accessor for NSDecimal.FormatStyle);
    v48 = v252;
    outlined init with take of ICULegacyNumberFormatter.Signature(&v36[*(v33 + 20)], v252, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    swift_storeEnumTagMultiPayload();
    v49 = *(v36 + 1);
  }

  else
  {
    v47(v23, 1, 1, v33);
    outlined destroy of TermOfAddress?(v23, &_sSo9NSDecimala10FoundationE11FormatStyleVSgMd, &_sSo9NSDecimala10FoundationE11FormatStyleVSgMR);
    (v44)(v29, v45, v5);
    v50 = v240;
    v51 = v239;
    v52 = swift_dynamicCast();
    v53 = *(v238 + 56);
    if (v52)
    {
      v53(v50, 0, 1, v51);
      v54 = v50;
      v55 = v232;
      outlined init with take of ICULegacyNumberFormatter.Signature(v54, v232, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v48 = v252;
      outlined init with take of ICULegacyNumberFormatter.Signature(v55 + *(v51 + 5), v252, type metadata accessor for NumberFormatStyleConfiguration.Collection);
      swift_storeEnumTagMultiPayload();
      v49 = *(v55 + 8);
    }

    else
    {
      v53(v50, 1, 1, v51);
      outlined destroy of TermOfAddress?(v50, &_sSo9NSDecimala10FoundationE11FormatStyleV7PercentVSgMd, &_sSo9NSDecimala10FoundationE11FormatStyleV7PercentVSgMR);
      (v44)(v231, v45, v5);
      v56 = v234;
      v57 = v235;
      v58 = swift_dynamicCast();
      v59 = *(v233 + 56);
      if (v58)
      {
        v59(v56, 0, 1, v57);
        v60 = v228;
        outlined init with take of ICULegacyNumberFormatter.Signature(v56, v228, type metadata accessor for NSDecimal.FormatStyle.Currency);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR);
        v48 = v252;
        v62 = (v252 + *(v61 + 48));
        outlined init with take of ICULegacyNumberFormatter.Signature(v60 + *(v57 + 24), v252, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
        v63 = v60[3];
        *v62 = v60[2];
        v62[1] = v63;
        swift_storeEnumTagMultiPayload();
        v49 = v60[1];
      }

      else
      {
        v59(v56, 1, 1, v57);
        outlined destroy of TermOfAddress?(v56, &_sSo9NSDecimala10FoundationE11FormatStyleV8CurrencyVSgMd, &_sSo9NSDecimala10FoundationE11FormatStyleV8CurrencyVSgMR);
        v48 = v252;
        *v252 = 0;
        *(v48 + 8) = 1;
        v48[2] = 0;
        v48[3] = 0;
        v48[4] = 0;
        v48[5] = 0x1FFFFFFFELL;
        v48[7] = 0;
        v48[8] = 0;
        v48[6] = 0;
        *(v48 + 18) = 131584;
        *(v48 + 38) = 512;
        v64 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
        v65 = v64[9];
        v66 = type metadata accessor for FloatingPointRoundingRule();
        (*(*(v66 - 8) + 56))(v48 + v65, 1, 1, v66);
        v67 = v48 + v64[10];
        *v67 = 0;
        v67[8] = -1;
        *(v48 + v64[11]) = 3;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _LocaleAutoupdating();
        swift_initStaticObject();
        v49 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
      }
    }
  }

  v68 = *(v45 + *(v245 + 36));
  v69 = v253;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v48, v253, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v71 = *(v49 + 64);
  swift_unknownObjectRetain();
  v72 = v71(ObjectType, v49);
  v73 = v246;
  v74 = (v69 + *(v246 + 20));
  *v74 = v72;
  v74[1] = v75;
  *(v69 + *(v73 + 24)) = v68;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v76 = static ICULegacyNumberFormatter.cache;
  v77 = qword_1EA7AFFA0;
  v78 = v248;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v69, v248, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v79 = (*(v247 + 80) + 16) & ~*(v247 + 80);
  v80 = swift_allocObject();
  v81 = outlined init with take of ICULegacyNumberFormatter.Signature(v78, v80 + v79, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v81);
  *(&v227 - 2) = v69;
  os_unfair_lock_lock((v77 + 24));
  v82 = v256;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v262, v77 + 16);
  if (v82)
  {
    goto LABEL_213;
  }

  os_unfair_lock_unlock((v77 + 24));
  if (!v262)
  {
    v112 = partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
    v256 = 0;
    os_unfair_lock_lock((v77 + 24));
    if (v76 >= *(*(v77 + 16) + 16))
    {
    }

    else
    {
      *(v77 + 16) = MEMORY[0x1E69E7CC8];
    }

    v116 = v236;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v253, v236, type metadata accessor for ICULegacyNumberFormatter.Signature);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v262 = *(v77 + 16);
    v118 = v262;
    *(v77 + 16) = 0x8000000000000000;
    v119 = specialized __RawDictionaryStorage.find<A>(_:)(v116);
    v121 = *(v118 + 16);
    v122 = (v120 & 1) == 0;
    v123 = __OFADD__(v121, v122);
    v124 = v121 + v122;
    if (v123)
    {
      goto LABEL_191;
    }

    LOBYTE(v116) = v120;
    if (*(v118 + 24) >= v124)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_192;
      }

      v125 = v118;
      goto LABEL_59;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v124, isUniquelyReferenced_nonNull_native);
    v125 = v262;
    v126 = v236;
    v119 = specialized __RawDictionaryStorage.find<A>(_:)(v236);
    if ((v116 & 1) == (v127 & 1))
    {
      if ((v116 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

    goto LABEL_214;
  }

  v256 = 0;
  while (1)
  {
    outlined destroy of ICULegacyNumberFormatter.Signature(v253, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v83 = String.subscript.getter();
    v85 = v84;
    v87 = v86;
    v89 = v88;
    *&v260 = 0;
    specialized ICULegacyNumberFormatter.parseAsDecimal<A>(_:upperBound:)(v83, v84, v86, v88, &v260);
    v77 = v250;
    if ((v90 & 0x100000000) == 0)
    {
      *&v262 = v83;
      *(&v262 + 1) = v85;
      *&v263 = v87;
      *(&v263 + 1) = v89;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.Index.init<A>(utf16Offset:in:)();
      swift_unknownObjectRelease();

      outlined destroy of ICULegacyNumberFormatter.Signature(v252, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      return;
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v252, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
    swift_unknownObjectRelease();

LABEL_24:
    specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(countAndFlagsBits, v255, 0x2EuLL, 0xE100000000000000, 0, v267);
    if ((v267[32] & 1) == 0)
    {
      return;
    }

    specialized NSDecimal.init(_:)(3.14);
    *&v262 = v91;
    *(&v262 + 1) = v92;
    LODWORD(v263) = v93;
    v94 = v243;
    v95 = *(v243 + 48);
    v96 = v242;
    v95(&v262, v242, v243);
    *&v262 = specialized NSDecimal.init(_:)(0x3039uLL);
    *(&v262 + 1) = v97;
    LODWORD(v263) = v98;
    _So9NSDecimala__isNegative_setter(1, &v262);
    v260 = v262;
    v261 = v263;
    v95(&v260, v96, v94);
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v100 = @"NSDebugDescription";
    v101 = v100;
    v112 = MEMORY[0x1E69E7CA0];
    if (!isTaggedPointer)
    {
      goto LABEL_31;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v100);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v227 - 2) = v101;
          v103 = v256;
          v104 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v106 = v105;
          v256 = v103;

          goto LABEL_75;
        }

LABEL_31:
        LOBYTE(v260) = 0;
        *&v262 = 0;
        LOBYTE(v258) = 0;
        v259 = 0;
        IsCF = __CFStringIsCF();
        if (IsCF)
        {
          v108 = v262;
          if (!v262)
          {

LABEL_41:
            v104 = 0;
            v106 = 0xE000000000000000;
            goto LABEL_75;
          }

          if (v259 == 1)
          {
            if (v260)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v130 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_74;
          }

          if (v258)
          {
            if (v260 == 1)
            {
              MEMORY[0x1EEE9AC00](IsCF);
              *(&v227 - 4) = v101;
              *(&v227 - 3) = &v262;
              *(&v227 - 4) = 1536;
              *(&v227 - 1) = v108;
            }

            else
            {
              v132 = [(__CFString *)v101 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v132);
              *(&v227 - 4) = v101;
              *(&v227 - 3) = &v262;
              *(&v227 - 4) = 134217984;
              *(&v227 - 1) = v133;
            }

            v134 = v256;
            v135 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v106 = v136;
            v256 = v134;
            v137 = HIBYTE(v136) & 0xF;
            if ((v136 & 0x2000000000000000) == 0)
            {
              v137 = v135 & 0xFFFFFFFFFFFFLL;
            }

            if (v137)
            {
              v104 = v135;
              goto LABEL_47;
            }
          }
        }

        else
        {
          v109 = v101;
          v110 = String.init(_nativeStorage:)();
          if (v111)
          {
            v104 = v110;
            v106 = v111;

            goto LABEL_75;
          }

          *&v262 = [(__CFString *)v109 length];
          if (!v262)
          {

            goto LABEL_41;
          }
        }

        v130 = String.init(_cocoaString:)();
LABEL_74:
        v104 = v130;
        v106 = v131;
        goto LABEL_75;
      }

      v113 = [(__CFString *)v101 UTF8String];
      if (!v113)
      {
        goto LABEL_209;
      }

      v114 = String.init(utf8String:)(v113);
      if (v115)
      {
LABEL_46:
        v104 = v114;
        v106 = v115;
LABEL_47:

        goto LABEL_75;
      }

      __break(1u);
    }

    v258 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v114 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v115)
    {
      goto LABEL_46;
    }

    [(__CFString *)v101 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v106 = *(&v260 + 1);
    v104 = v260;
LABEL_75:
    v264[0] = v104;
    v264[1] = v106;
    *&v262 = 0;
    *(&v262 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](countAndFlagsBits, v255);
    MEMORY[0x1865CB0E0](0xD000000000000039, 0x800000018147EC30);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0x2220726F2022, 0xE600000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](34, 0xE100000000000000);
    v266 = MEMORY[0x1E69E6158];
    v265 = v262;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v138 = static _DictionaryStorage.allocate(capacity:)();
    outlined init with copy of (String, Any)(v264, &v262);

    outlined destroy of TermOfAddress?(v264, &_sSS_yptMd, &_sSS_yptMR);
    v118 = *(&v262 + 1);
    v116 = v262;
    v139 = specialized __RawDictionaryStorage.find<A>(_:)(v262, *(&v262 + 1));
    v141 = v140;

    if (v141)
    {
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    v138[(v139 >> 6) + 8] |= 1 << v139;
    v142 = (v138[6] + 16 * v139);
    *v142 = v116;
    v142[1] = v118;
    v119 = outlined init with take of Any(&v263, (v138[7] + 32 * v139));
    v143 = v138[2];
    v123 = __OFADD__(v143, 1);
    v144 = v143 + 1;
    if (v123)
    {
      goto LABEL_189;
    }

    v138[2] = v144;
    v145 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v146 = @"NSCocoaErrorDomain";
    v147 = v146;
    if (v145)
    {
      v148 = _objc_getTaggedPointerTag(v146);
      switch(v148)
      {
        case 0:
          goto LABEL_93;
        case 0x16:
          v154 = [(__CFString *)v147 UTF8String];
          if (!v154)
          {
            goto LABEL_210;
          }

          String.init(utf8String:)(v154);
          if (!v155)
          {
            __break(1u);
LABEL_93:
            v258 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v156)
            {
              [(__CFString *)v147 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_110;
            }
          }

LABEL_107:

          goto LABEL_110;
        case 2:
          MEMORY[0x1EEE9AC00](v148);
          *(&v227 - 2) = v147;
          v149 = v256;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v256 = v149;

          goto LABEL_110;
      }
    }

    LOBYTE(v260) = 0;
    *&v262 = 0;
    LOBYTE(v258) = 0;
    v259 = 0;
    v150 = __CFStringIsCF();
    if (!v150)
    {
      v152 = v147;
      String.init(_nativeStorage:)();
      if (v153 || (*&v262 = [(__CFString *)v152 length], !v262))
      {

        goto LABEL_110;
      }

LABEL_109:
      String.init(_cocoaString:)();
      goto LABEL_110;
    }

    v151 = v262;
    if (!v262)
    {
      goto LABEL_107;
    }

    if (v259 != 1)
    {
      if (v258)
      {
        if (v260 == 1)
        {
          MEMORY[0x1EEE9AC00](v150);
          *(&v227 - 4) = v147;
          *(&v227 - 3) = &v262;
          *(&v227 - 4) = 1536;
          *(&v227 - 1) = v151;
        }

        else
        {
          v157 = [(__CFString *)v147 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v157);
          *(&v227 - 4) = v147;
          *(&v227 - 3) = &v262;
          *(&v227 - 4) = 134217984;
          *(&v227 - 1) = v158;
        }

        v159 = v256;
        v160 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v256 = v159;
        v162 = HIBYTE(v161) & 0xF;
        if ((v161 & 0x2000000000000000) == 0)
        {
          v162 = v160 & 0xFFFFFFFFFFFFLL;
        }

        if (v162)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_109;
    }

    if (v260)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_110:
    v163 = objc_allocWithZone(NSError);
    v164 = String._bridgeToObjectiveCImpl()();

    v165 = [v163 initWithDomain:v164 code:2048 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v166 = [v165 domain];
    if (!v166)
    {
      goto LABEL_124;
    }

    v167 = v166;
    v168 = _objc_isTaggedPointer(v166);
    v169 = v167;
    v170 = v169;
    if ((v168 & 1) == 0)
    {
      goto LABEL_116;
    }

    v171 = _objc_getTaggedPointerTag(v169);
    if (!v171)
    {
      goto LABEL_128;
    }

    if (v171 != 22)
    {
      if (v171 == 2)
      {
        MEMORY[0x1EEE9AC00](v171);
        *(&v227 - 2) = v170;
        v172 = v256;
        v173 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v116 = v174;
        v256 = v172;

        goto LABEL_148;
      }

LABEL_116:
      LOBYTE(v260) = 0;
      *&v262 = 0;
      LOBYTE(v258) = 0;
      v259 = 0;
      v175 = __CFStringIsCF();
      if (v175)
      {
        v176 = v262;
        if (v262)
        {
          if (v259 == 1)
          {
            if (v260)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v183 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_146;
          }

          if ((v258 & 1) == 0)
          {
            goto LABEL_145;
          }

          if (v260 == 1)
          {
            MEMORY[0x1EEE9AC00](v175);
            *(&v227 - 4) = v170;
            *(&v227 - 3) = &v262;
            *(&v227 - 4) = 1536;
            *(&v227 - 1) = v176;
          }

          else
          {
            v185 = [v170 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v185);
            *(&v227 - 4) = v170;
            *(&v227 - 3) = &v262;
            *(&v227 - 4) = 134217984;
            *(&v227 - 1) = v186;
          }

          v187 = v256;
          v188 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v116 = v189;
          v256 = v187;
          v190 = HIBYTE(v189) & 0xF;
          if ((v189 & 0x2000000000000000) == 0)
          {
            v190 = v188 & 0xFFFFFFFFFFFFLL;
          }

          if (!v190)
          {

            goto LABEL_145;
          }

          v173 = v188;
          goto LABEL_130;
        }
      }

      else
      {
        v177 = v170;
        v178 = String.init(_nativeStorage:)();
        if (v179)
        {
          v173 = v178;
          v116 = v179;

          goto LABEL_148;
        }

        *&v262 = [v177 length];
        if (v262)
        {
LABEL_145:
          v183 = String.init(_cocoaString:)();
LABEL_146:
          v173 = v183;
          v116 = v184;
          goto LABEL_147;
        }
      }

LABEL_124:
      v173 = 0;
      v116 = 0xE000000000000000;
      goto LABEL_148;
    }

    v180 = [v170 UTF8String];
    if (!v180)
    {
      goto LABEL_212;
    }

    v181 = String.init(utf8String:)(v180);
    if (!v182)
    {
      __break(1u);
LABEL_128:
      v258 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v181 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v182)
      {
        [v170 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v116 = *(&v260 + 1);
        v173 = v260;
        goto LABEL_147;
      }
    }

    v173 = v181;
    v116 = v182;
LABEL_130:

LABEL_147:
LABEL_148:
    v191 = v147;
    v192 = v191;
    if (!v145)
    {
      goto LABEL_153;
    }

    v193 = _objc_getTaggedPointerTag(v191);
    if (v193)
    {
      if (v193 != 22)
      {
        if (v193 == 2)
        {
          MEMORY[0x1EEE9AC00](v193);
          *(&v227 - 2) = v192;
          v194 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v118 = v195;

          goto LABEL_183;
        }

LABEL_153:
        LOBYTE(v260) = 0;
        *&v262 = 0;
        LOBYTE(v258) = 0;
        v259 = 0;
        v196 = __CFStringIsCF();
        if (v196)
        {
          v197 = v262;
          if (!v262)
          {

LABEL_161:
            v194 = 0;
            v118 = 0xE000000000000000;
            goto LABEL_183;
          }

          if (v259 == 1)
          {
            if (v260)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v204 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_182;
          }

          if (v258)
          {
            if (v260 == 1)
            {
              MEMORY[0x1EEE9AC00](v196);
              *(&v227 - 4) = v192;
              *(&v227 - 3) = &v262;
              *(&v227 - 4) = 1536;
              *(&v227 - 1) = v197;
            }

            else
            {
              v206 = [(__CFString *)v192 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v206);
              *(&v227 - 4) = v192;
              *(&v227 - 3) = &v262;
              *(&v227 - 4) = 134217984;
              *(&v227 - 1) = v207;
            }

            v208 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v118 = v209;
            v210 = HIBYTE(v209) & 0xF;
            if ((v209 & 0x2000000000000000) == 0)
            {
              v210 = v208 & 0xFFFFFFFFFFFFLL;
            }

            if (v210)
            {
              v194 = v208;

              goto LABEL_183;
            }
          }
        }

        else
        {
          v198 = v192;
          v199 = String.init(_nativeStorage:)();
          if (v200)
          {
            v194 = v199;
            v118 = v200;

            goto LABEL_183;
          }

          *&v262 = [(__CFString *)v198 length];
          if (!v262)
          {

            goto LABEL_161;
          }
        }

        v204 = String.init(_cocoaString:)();
LABEL_182:
        v194 = v204;
        v118 = v205;
        goto LABEL_183;
      }

      v201 = [(__CFString *)v192 UTF8String];
      if (!v201)
      {
        goto LABEL_211;
      }

      v202 = String.init(utf8String:)(v201);
      if (v203)
      {
LABEL_166:
        v194 = v202;
        v118 = v203;

        goto LABEL_183;
      }

      __break(1u);
    }

    v258 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v202 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v203)
    {
      goto LABEL_166;
    }

    [(__CFString *)v192 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v118 = *(&v260 + 1);
    v194 = v260;
LABEL_183:
    if (v173 == v194 && v116 == v118)
    {

LABEL_187:
      swift_willThrow();
      v212 = *(v241 + 8);
      v213 = AssociatedTypeWitness;
      v212(v77, AssociatedTypeWitness);
      v212(v251, v213);
      return;
    }

    v211 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v211)
    {
      goto LABEL_187;
    }

LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    v238 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
    v214 = static _DictionaryStorage.copy(original:)();
    v125 = v214;
    if (*(v118 + 16))
    {
      break;
    }

LABEL_207:

    v119 = v238;
LABEL_59:
    v126 = v236;
    if (v116)
    {
LABEL_56:
      *(*(v125 + 56) + 8 * v119) = v112;
    }

    else
    {
LABEL_60:
      v128 = v119;
      v129 = v248;
      outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v126, v248, type metadata accessor for ICULegacyNumberFormatter.Signature);
      specialized _NativeDictionary._insert(at:key:value:)(v128, v129, v112, v125);
    }

    outlined destroy of ICULegacyNumberFormatter.Signature(v126, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v77 + 16) = v125;

    os_unfair_lock_unlock((v77 + 24));
  }

  v215 = (v214 + 64);
  v216 = 1 << *(v125 + 32);
  v239 = (v118 + 64);
  v217 = (v216 + 63) >> 6;
  if (v125 != v118 || v215 >= &v239[v217])
  {
    memmove(v215, v239, 8 * v217);
  }

  v218 = 0;
  *(v125 + 16) = *(v118 + 16);
  v219 = 1 << *(v118 + 32);
  v220 = -1;
  if (v219 < 64)
  {
    v220 = ~(-1 << v219);
  }

  v246 = v220 & *(v118 + 64);
  v237 = (v219 + 63) >> 6;
  while (v246)
  {
    v221 = __clz(__rbit64(v246));
    v246 &= v246 - 1;
LABEL_206:
    v224 = v221 | (v218 << 6);
    v225 = *(v118 + 48);
    v226 = *(v247 + 72);
    v245 = v224;
    v240 = v226 * v224;
    outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(v225 + v226 * v224, v248, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v244 = *(*(v118 + 56) + 8 * v245);
    outlined init with take of ICULegacyNumberFormatter.Signature(v248, *(v125 + 48) + v240, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(*(v125 + 56) + 8 * v245) = v244;
  }

  v222 = v218;
  while (1)
  {
    v218 = v222 + 1;
    if (__OFADD__(v222, 1))
    {
      break;
    }

    if (v218 >= v237)
    {
      goto LABEL_207;
    }

    v223 = v239[v218];
    ++v222;
    if (v223)
    {
      v221 = __clz(__rbit64(v223));
      v246 = (v223 - 1) & v223;
      goto LABEL_206;
    }
  }

  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  os_unfair_lock_unlock((v77 + 24));
  __break(1u);
LABEL_214:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.ParseStrategy<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NSDecimal.ParseStrategy.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t NSDecimal.init<A>(_:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 48))(&v10, a1, a3, a4);
  (*(*(a3 - 8) + 8))(a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4)
  {
    return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v10;
}

uint64_t NSDecimal.init(_:format:lenient:)(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMR);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(a3, v14 - v10, type metadata accessor for NSDecimal.FormatStyle);
  v11[*(v9 + 44)] = a4;
  v12 = specialized NSDecimal.ParseStrategy.parse(_:)(a1, a2);

  outlined destroy of ICULegacyNumberFormatter.Signature(a3, type metadata accessor for NSDecimal.FormatStyle);
  outlined destroy of TermOfAddress?(v11, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMR);
  return v12;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMR);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(a3, v14 - v10, type metadata accessor for NSDecimal.FormatStyle.Percent);
  v11[*(v9 + 44)] = a4;
  v12 = specialized NSDecimal.ParseStrategy.parse(_:)(a1, a2);

  outlined destroy of ICULegacyNumberFormatter.Signature(a3, type metadata accessor for NSDecimal.FormatStyle.Percent);
  outlined destroy of TermOfAddress?(v11, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMR);
  return v12;
}

{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMR);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  outlined init with copy of ICULegacyNumberFormatter.NumberFormatType(a3, v14 - v10, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v11[*(v9 + 44)] = a4;
  v12 = specialized NSDecimal.ParseStrategy.parse(_:)(a1, a2);

  outlined destroy of ICULegacyNumberFormatter.Signature(a3, type metadata accessor for NSDecimal.FormatStyle.Currency);
  outlined destroy of TermOfAddress?(v11, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV8CurrencyVGMR);
  return v12;
}

uint64_t NSDecimal.ParseStrategy<>.init(format:lenient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return NSDecimal.ParseStrategy<>.init(format:lenient:)(a1, a2, type metadata accessor for NSDecimal.FormatStyle, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleVGMR, a3);
}

{
  return NSDecimal.ParseStrategy<>.init(format:lenient:)(a1, a2, type metadata accessor for NSDecimal.FormatStyle.Percent, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMd, &_sSo9NSDecimala10FoundationE13ParseStrategyVy_AbCE11FormatStyleV7PercentVGMR, a3);
}

uint64_t NSDecimal.ParseStrategy<>.init(format:lenient:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  outlined init with take of ICULegacyNumberFormatter.Signature(a1, a6, a3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(a6 + *(result + 36)) = a2;
  return result;
}

uint64_t specialized skipWhiteSpaces #1 <A>(from:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = a2 + a3;
  if (a2 + a3 == result)
  {
    return v3;
  }

  v5 = result - a2;
  v6 = a3 + a2 - result;
  while ((v5 & 0x8000000000000000) == 0)
  {
    if (v6-- < 1)
    {
      break;
    }

    static String._uncheckedFromUTF8(_:)();
    v8 = Character.isWhitespace.getter();

    if (v8)
    {
      ++v3;
      ++v5;
      if (v3 != v4)
      {
        continue;
      }
    }

    return v3;
  }

  __break(1u);
  return result;
}

BOOL specialized stringViewContainsDecimalSeparator #1 <A>(at:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  for (; v8; a5 = v23)
  {
    v9 = 0;
    v10 = (a2 >> 59) & 1;
    if ((a3 & 0x1000000000000000) == 0)
    {
      LOBYTE(v10) = 1;
    }

    v11 = 4;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v25 = 4 << v10;
    v13 = v8 - 1;
    v14 = a5 + a4 - a1;
    v15 = a1 - a4;
    while (1)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v16 = MEMORY[0x1865CB180](15, v9, a2, a3);
      }

      else
      {
        v16 = v11;
        if (v12 < v9)
        {
          goto LABEL_35;
        }
      }

      if ((v15 + v9) < 0)
      {
        break;
      }

      if (v14-- < 1)
      {
        break;
      }

      v7 = *(a1 + v9);
      if ((v16 & 0xC) == v25)
      {
        v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, a2, a3);
      }

      v18 = v16 >> 16;
      if (v16 >> 16 >= v12)
      {
        goto LABEL_34;
      }

      if ((a3 & 0x1000000000000000) != 0)
      {
        v20 = String.UTF8View._foreignSubscript(position:)();
      }

      else if ((a3 & 0x2000000000000000) != 0)
      {
        v27[0] = a2;
        v27[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        v20 = *(v27 + v18);
      }

      else
      {
        v19 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a2 & 0x1000000000000000) == 0)
        {
          v19 = _StringObject.sharedUTF8.getter();
        }

        v20 = *(v19 + v18);
      }

      v21 = v7 == v20;
      result = v21;
      if (v21)
      {
        v11 += 0x10000;
        v21 = v13 == v9++;
        if (!v21)
        {
          continue;
        }
      }

      return result;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v23 = a5;
    v24 = a4;
    v8 = String.UTF8View._foreignCount()();
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    a4 = v24;
  }

  return 1;
}

uint64_t outlined init with take of ICULegacyNumberFormatter.Signature(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ICULegacyNumberFormatter.Signature(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for NSDecimal.ParseStrategy<A>(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NSDecimal.ParseStrategy(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for NSDecimal.ParseStrategy(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

void specialized static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v62 = 0uLL;
  v63 = 0;
  v11 = specialized skipWhiteSpaces #1 <A>(from:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(a1, a1, a2);
  v12 = v11;
  v60 = a2;
  v13 = (a1 + a2);
  if ((a1 + a2) != v11)
  {
    if (&v11[-a1] < 0 || a1 + a2 - v11 < 1)
    {
      goto LABEL_120;
    }

    v14 = *v11;
    if (v14 == 45 || v14 == 43)
    {
      _So9NSDecimala__isNegative_setter(v14 == 45, &v62);
      ++v12;
    }
  }

  v56 = a3;
  v57 = a4;
  v59 = a6;
  if (v13 == v12)
  {
    LOBYTE(a3) = 0;
    goto LABEL_26;
  }

  a3 = 0;
  v55 = xmmword_18121B2B0;
LABEL_9:
  v15 = 1 - a1 + v12;
  v16 = v60 + a1 - 1 - v12;
  v17 = a3;
  while (1)
  {
    if ((v12 - a1) < 0 || &v13[-v12] < 1)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v18 = *v12;
    if ((v18 - 58) < 0xF6u)
    {
      goto LABEL_45;
    }

    if (v17)
    {
      break;
    }

    NSDecimal._multiply(byShort:)(v17, 0xAu);
    if (v19 || (NSDecimal._add(_:)((v18 - 48), (v18 - 48)), v19))
    {

      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      if (_So9NSDecimala__exponent_getter(v61) == 127)
      {
        *(v61 + 12) = 0;
        *(v61 + 4) = 0;
        _So9NSDecimala__exponent_setter(0, v61);
        _So9NSDecimala__length_setter(0, v61);
        _So9NSDecimala__isNegative_setter(1, v61);
        _So9NSDecimala__isCompact_setter(v61);
        _So9NSDecimala__reserved_setter(v61);
        v62 = v61[0];
        v63 = v61[1];
      }

      else
      {
        v61[0] = v62;
        LODWORD(v61[1]) = v63;
        v23 = _So9NSDecimala__exponent_getter(v61);
        _So9NSDecimala__exponent_setter((v23 + 1), &v62);
      }

      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      if (!_So9NSDecimala__length_getter(v61))
      {
        v61[0] = v62;
        LODWORD(v61[1]) = v63;
        if (_So9NSDecimala__isNegative_getter(v61))
        {
          goto LABEL_88;
        }
      }

      ++v12;
      a3 = 1;
      if (v12 == v13)
      {
LABEL_26:
        if (v12 < v13)
        {
          goto LABEL_46;
        }

LABEL_64:
        v28 = v12;
        goto LABEL_65;
      }

      goto LABEL_9;
    }

    v17 = 0;
    *&v62 = v20;
    *(&v62 + 1) = v21;
    ++v12;
    v63 = v22;
    ++v15;
    --v16;
    if (v12 == v13)
    {
      goto LABEL_45;
    }
  }

  v61[0] = v62;
  LODWORD(v61[1]) = v63;
  if (_So9NSDecimala__exponent_getter(v61) == 127)
  {
    *(v61 + 12) = 0;
    *(v61 + 4) = 0;
    _So9NSDecimala__exponent_setter(0, v61);
    _So9NSDecimala__length_setter(0, v61);
    _So9NSDecimala__isNegative_setter(1, v61);
    _So9NSDecimala__isCompact_setter(v61);
    _So9NSDecimala__reserved_setter(v61);
    v62 = v61[0];
    v63 = v61[1];
  }

  else
  {
    v61[0] = v62;
    LODWORD(v61[1]) = v63;
    v24 = _So9NSDecimala__exponent_getter(v61);
    _So9NSDecimala__exponent_setter((v24 + 1), &v62);
  }

  v61[0] = v62;
  LODWORD(v61[1]) = v63;
  if (!_So9NSDecimala__length_getter(v61))
  {
    v61[0] = v62;
    LODWORD(v61[1]) = v63;
    if (_So9NSDecimala__isNegative_getter(v61))
    {
LABEL_88:
      v49 = 0;
      v50 = 0;
      LOBYTE(v38) = 1;
      v44 = v55;
      goto LABEL_112;
    }
  }

  ++v12;
  while (v12 != v13)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    v25 = v16-- < 1;
    if (v25)
    {
      goto LABEL_116;
    }

    if (*v12 - 58 < 0xFFFFFFF6)
    {
      goto LABEL_45;
    }

    v61[0] = v62;
    LODWORD(v61[1]) = v63;
    if (_So9NSDecimala__exponent_getter(v61) == 127)
    {
      *(v61 + 12) = 0;
      *(v61 + 4) = 0;
      _So9NSDecimala__exponent_setter(0, v61);
      _So9NSDecimala__length_setter(0, v61);
      _So9NSDecimala__isNegative_setter(1, v61);
      _So9NSDecimala__isCompact_setter(v61);
      _So9NSDecimala__reserved_setter(v61);
      v62 = v61[0];
      v63 = v61[1];
    }

    else
    {
      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      v26 = _So9NSDecimala__exponent_getter(v61);
      _So9NSDecimala__exponent_setter((v26 + 1), &v62);
    }

    v61[0] = v62;
    LODWORD(v61[1]) = v63;
    if (!_So9NSDecimala__length_getter(v61))
    {
      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      if (_So9NSDecimala__isNegative_getter(v61))
      {
        goto LABEL_88;
      }
    }

    ++v12;
    ++v15;
  }

  v12 = v13;
LABEL_45:
  if (v12 >= v13)
  {
    goto LABEL_64;
  }

LABEL_46:
  if (!specialized stringViewContainsDecimalSeparator #1 <A>(at:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(v12, v56, v57, a1, v60))
  {
    goto LABEL_64;
  }

  if ((v57 & 0x1000000000000000) != 0)
  {
    goto LABEL_122;
  }

  if ((v57 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v57) & 0xF;
  }

  else
  {
    v27 = v56 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v28 = (v12 + v27);
    if (v13 != (v12 + v27))
    {
      v29 = v27 + v12 - a1 + 1;
      v12 = ~v27 + v60 + a1 - v12;
      v55 = xmmword_18121B2B0;
      while (&v28[-a1] >= 0 && v13 - v28 >= 1)
      {
        v30 = *v28;
        v31 = (v30 - 58);
        if (v31 < 0xF6)
        {
          goto LABEL_65;
        }

        if (a3)
        {
          if (++v28 == v13)
          {
LABEL_96:
            v28 = v13;
            goto LABEL_65;
          }

          while ((v29 & 0x8000000000000000) == 0)
          {
            v25 = v12-- < 1;
            if (v25)
            {
              break;
            }

            if (*v28 - 58 < 0xFFFFFFF6)
            {
              goto LABEL_65;
            }

            ++v28;
            ++v29;
            if (v28 == v13)
            {
              goto LABEL_96;
            }
          }

          break;
        }

        NSDecimal._multiply(byShort:)(v31, 0xAu);
        if (v32 || (NSDecimal._add(_:)((v30 - 48), (v30 - 48)), v32))
        {

          LOBYTE(a3) = 1;
        }

        else
        {
          *&v62 = v33;
          *(&v62 + 1) = v34;
          v63 = v35;
          v61[0] = v62;
          LODWORD(v61[1]) = v35;
          if (_So9NSDecimala__exponent_getter(v61) == -128)
          {
            goto LABEL_88;
          }

          v61[0] = v62;
          LODWORD(v61[1]) = v63;
          v36 = _So9NSDecimala__exponent_getter(v61);
          _So9NSDecimala__exponent_setter((v36 - 1), &v62);
          LOBYTE(a3) = 0;
        }

        ++v28;
        ++v29;
        --v12;
        if (v28 == v13)
        {
          goto LABEL_65;
        }
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

LABEL_65:
    if (v28 >= v13)
    {
      goto LABEL_83;
    }

    if ((&v28[-a1] & 0x8000000000000000) == 0 && v13 - v28 >= 1)
    {
      break;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    v27 = String.UTF8View._foreignCount()();
  }

  if ((*v28 | 0x20) != 0x65)
  {
LABEL_83:
    v48 = v28;
    if ((a5 & 1) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_84;
  }

  v37 = v28 + 1;
  v38 = v13 - (v28 + 1);
  if (v13 == v28 + 1)
  {
    v50 = &v37[-a1];
LABEL_109:
    v44 = v62;
    v49 = v63;
    goto LABEL_112;
  }

  if (&v37[-a1] < 0 || v38 < 1)
  {
    __break(1u);
    goto LABEL_124;
  }

  v39 = *v37;
  if (v39 == 43 || v39 == 45)
  {
    v40 = v39 == 45;
    v37 = v28 + 2;
    if (v13 == v28 + 2)
    {
      goto LABEL_90;
    }

LABEL_75:
    v41 = 0;
    v42 = &v37[-a1];
    v43 = a1 + v60 - v37;
    v44 = xmmword_18121B2B0;
    while ((v42 & 0x8000000000000000) == 0)
    {
      v25 = v43-- < 1;
      if (v25)
      {
        break;
      }

      if ((*v37 - 58) < 0xF6u)
      {
        v47 = v37;
        goto LABEL_98;
      }

      v45 = (v41 * 10) >> 64;
      v46 = 10 * v41;
      if (v45 != v46 >> 63)
      {
        goto LABEL_119;
      }

      v41 = v46 + (*v37 - 48);
      if (v41 > 254)
      {
        v49 = 0;
        v50 = 0;
        goto LABEL_111;
      }

      ++v37;
      ++v42;
      if (v37 == v13)
      {
        v47 = (a1 + v60);
        goto LABEL_98;
      }
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v40 = 0;
  if (v13 != v37)
  {
    goto LABEL_75;
  }

LABEL_90:
  v47 = v37;
  v41 = 0;
LABEL_98:
  if (v40)
  {
    v51 = -v41;
  }

  else
  {
    v51 = v41;
  }

  v61[0] = v62;
  LODWORD(v61[1]) = v63;
  v52 = _So9NSDecimala__exponent_getter(v61);
  v53 = __OFADD__(v51, v52);
  v54 = v51 + v52;
  if (v53)
  {
LABEL_124:
    __break(1u);
  }

  else
  {
    if (v54 != v54)
    {
      v49 = 0;
      v50 = 0;
      v44 = xmmword_18121B2B0;
      goto LABEL_111;
    }

    _So9NSDecimala__exponent_setter(v54, &v62);
    v48 = v47;
    if ((a5 & 1) == 0)
    {
LABEL_105:
      v13 = v48;
      goto LABEL_106;
    }

LABEL_84:
    if (v13 != specialized skipWhiteSpaces #1 <A>(from:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(v48, a1, v60))
    {
      v49 = 0;
      v50 = 0;
      v44 = 0uLL;
      goto LABEL_111;
    }

LABEL_106:
    v44 = 0uLL;
    v50 = &v13[-a1];
    if (v13 == a1)
    {
      v49 = 0;
LABEL_111:
      LOBYTE(v38) = 1;
    }

    else
    {
      NSDecimal.compact()();
      v61[0] = v62;
      LODWORD(v61[1]) = v63;
      if (_So9NSDecimala__length_getter(v61) || (v61[0] = v62, LODWORD(v61[1]) = v63, !_So9NSDecimala__isNegative_getter(v61)))
      {
        LOBYTE(v38) = 0;
        goto LABEL_109;
      }

      v49 = 0;
      LOBYTE(v38) = 0;
      v44 = 0uLL;
    }

LABEL_112:
    *v59 = v44;
    *(v59 + 16) = v49;
    *(v59 + 24) = v50;
    *(v59 + 32) = v38;
  }
}

uint64_t FloatingPointFormatStyle.Currency.format(_:)(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v82 = *(a2 + 16);
  v79 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v80 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v4;
  v5 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
  v7 = v6;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[1];
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 472);

  v13 = v12(ObjectType, v10);
  v14 = v13;
  *&v87 = v5;
  *(&v87 + 1) = v7;
  *&v88 = v8;
  *(&v88 + 1) = v9;
  v15 = v9;
  *&v89 = v13;
  *(&v89 + 1) = v16;
  v84 = v16;
  if (one-time initialization token for cache != -1)
  {
    v13 = swift_once();
  }

  v17 = qword_1EA7B5100;
  v78 = static ICUCurrencyNumberFormatter.cache;
  v86[0] = v87;
  v86[1] = v88;
  v86[2] = v89;
  MEMORY[0x1EEE9AC00](v13);
  v73[-2] = v86;
  os_unfair_lock_lock((v17 + 24));
  v18 = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v17 + 16, &v85);
  os_unfair_lock_unlock((v17 + 24));
  v19 = v85;
  v20 = v84;
  if (v85 != 1)
  {
    goto LABEL_34;
  }

  v77 = 0;
  v21 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v5, v7, v8, v15);
  v23 = v22;
  type metadata accessor for ICUCurrencyNumberFormatter();
  v24 = swift_allocObject();

  v19 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v21, v23, v14, v20);
  os_unfair_lock_lock((v17 + 24));
  v25 = *(v17 + 16);
  if (v78 >= *(v25 + 16))
  {
  }

  else
  {
    *(v17 + 16) = MEMORY[0x1E69E7CC8];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(v17 + 16);
  v27 = v85;
  *(v17 + 16) = 0x8000000000000000;
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(&v87);
  v30 = *(v27 + 16);
  v31 = (v28 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v28;
  if (*(v27 + 24) >= v32)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = v27;
      if (v28)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

LABEL_16:
    v73[0] = v29;
    v73[1] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
    v37 = static _DictionaryStorage.copy(original:)();
    v33 = v37;
    if (*(v27 + 16))
    {
      v38 = (v37 + 64);
      v39 = 1 << *(v33 + 32);
      v74 = (v27 + 64);
      v40 = (v39 + 63) >> 6;
      if (v33 != v27 || v38 >= &v74[8 * v40])
      {
        memmove(v38, v74, 8 * v40);
      }

      v41 = 0;
      *(v33 + 16) = *(v27 + 16);
      v42 = 1 << *(v27 + 32);
      v43 = -1;
      if (v42 < 64)
      {
        v43 = ~(-1 << v42);
      }

      v44 = v43 & *(v27 + 64);
      v45 = (v42 + 63) >> 6;
      v75 = v45;
      if (v44)
      {
        do
        {
          v46 = __clz(__rbit64(v44));
          v78 = (v44 - 1) & v44;
LABEL_29:
          v49 = v46 | (v41 << 6);
          v50 = *(v27 + 56);
          v51 = (*(v27 + 48) + 48 * v49);
          v52 = *v51;
          v53 = v51[1];
          v54 = v51[2];
          v76 = v51[3];
          v55 = v76;
          v56 = *(v50 + 8 * v49);
          v57 = v51[4];
          v58 = v51[5];
          v59 = (*(v33 + 48) + 48 * v49);
          *v59 = v52;
          v59[1] = v53;
          v59[2] = v54;
          v59[3] = v55;
          v59[4] = v57;
          v59[5] = v58;
          *(*(v33 + 56) + 8 * v49) = v56;

          v45 = v75;
          v44 = v78;
        }

        while (v78);
      }

      v47 = v41;
      while (1)
      {
        v41 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v41 >= v45)
        {
          goto LABEL_31;
        }

        v48 = *&v74[8 * v41];
        ++v47;
        if (v48)
        {
          v46 = __clz(__rbit64(v48));
          v78 = (v48 - 1) & v48;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_31:

    v29 = v73[0];
    if (v24)
    {
      goto LABEL_14;
    }

LABEL_32:
    specialized _NativeDictionary._insert(at:key:value:)(v29, &v87, v19, v33);
    goto LABEL_33;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native);
  v33 = v85;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(&v87);
  if ((v24 & 1) != (v35 & 1))
  {
LABEL_42:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v29 = v34;
  if ((v24 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  v36 = v29;

  *(*(v33 + 56) + 8 * v36) = v19;

LABEL_33:
  *(v17 + 16) = v33;

  os_unfair_lock_unlock((v17 + 24));

  outlined consume of ICUNumberFormatter??(1);
  v18 = v77;
LABEL_34:

  if (!v19)
  {
    v60 = *(v79 + 16);
    v64 = v83;
    v63 = v82;
    v62 = v81;
    v61 = v80;
    goto LABEL_38;
  }

  v60 = *(v79 + 16);
  v61 = v80;
  v62 = v81;
  v63 = v82;
  v60(v80, v81, v82);
  v64 = v83;
  v65 = specialized BinaryFloatingPoint.init<A>(_:)(v61, v63, *(v83 + 24));
  v66 = v19[2];
  type metadata accessor for ICUNumberFormatterBase.FormatResult();
  swift_initStackObject();
  v67 = ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v66, v65);
  if (v18)
  {

LABEL_38:
    v60(v61, v62, v63);
    specialized BinaryFloatingPoint.init<A>(_:)(v61, v63, *(v64 + 24));
    return Double.description.getter();
  }

  v69 = v67;

  v70 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v69);
  v72 = v71;

  if (!v72)
  {
    goto LABEL_38;
  }

  return v70;
}

__n128 FloatingPointFormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t FloatingPointFormatStyle.attributed.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  return FloatingPointFormatStyle.attributed.getter(a1, a3);
}

{
  v4 = v3;
  (*(*(a1 - 8) + 16))(a3, v4, a1);
  type metadata accessor for FloatingPointFormatStyle.Attributed.Style(0, *(a1 + 16), *(a1 + 24), v6);

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FloatingPointFormatStyle.CodingKeys(255, a2, a3, v9);
  WitnessTable = swift_getWitnessTable();
  v33 = type metadata accessor for KeyedDecodingContainer();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v28 - v10;
  v13 = type metadata accessor for FloatingPointFormatStyle(0, a2, a3, v12);
  v28 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v28 - v14);
  v17 = &v28 + *(v16 + 36) - v14;
  *v17 = 0;
  v17[8] = 1;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 4) = 0;
  *(v17 + 5) = 0x1FFFFFFFELL;
  *(v17 + 7) = 0;
  *(v17 + 8) = 0;
  *(v17 + 6) = 0;
  *(v17 + 18) = 131584;
  *(v17 + 38) = 512;
  v18 = v7[9];
  v19 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = &v17[v7[10]];
  *v20 = 0;
  v20[8] = -1;
  v17[v7[11]] = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v11;
  v21 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_0(v17, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  else
  {
    v35 = v13;
    v22 = v30;
    v23 = v31;
    v37 = 0;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v15;
    *v15 = v36;
    LOBYTE(v36) = 1;
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection, &protocol conformance descriptor for NumberFormatStyleConfiguration.Collection);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v22 + 8))(v32, v33);
    outlined assign with take of NumberFormatStyleConfiguration.Collection(v23, v17);
    v25 = v28;
    v26 = v35;
    (*(v28 + 16))(v29, v24, v35);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return (*(v25 + 8))(v24, v26);
  }
}

uint64_t FloatingPointFormatStyle.grouping(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 36) + 73) = v6;
  return result;
}

uint64_t FloatingPointFormatStyle.decimalSeparator(strategy:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  result = (*(*(a2 - 8) + 16))(a3, v3, a2);
  *(a3 + *(a2 + 36) + 77) = v6;
  return result;
}

uint64_t FloatingPointFormatStyle.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  (*(*(a4 - 8) + 16))(a5, v6, a4);
  v12 = a5 + *(a4 + 36);
  v13 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v14 = *(v13 + 36);
  outlined destroy of TermOfAddress?(v12 + v14, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  v15 = type metadata accessor for FloatingPointRoundingRule();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v12 + v14, a1, v15);
  result = (*(v16 + 56))(v12 + v14, 0, 1, v15);
  if ((a3 & 1) == 0)
  {
    v18 = v12 + *(v13 + 40);
    *v18 = a2;
    *(v18 + 8) = 1;
  }

  return result;
}

uint64_t FloatingPointFormatStyle.scale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  result = (*(*(a1 - 8) + 16))(a2, v4, a1);
  v9 = a2 + *(a1 + 36);
  *v9 = a3;
  *(v9 + 8) = 0;
  return result;
}

uint64_t static FloatingPointFormatStyle.== infix(_:_:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v10 = *a1;
  v14 = *a2;
  v15 = v10;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = specialized static Locale.== infix(_:_:)(&v15, &v14);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(a5(0, a3, a4) + 36);

  return static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v12, a2 + v12);
}

uint64_t FloatingPointFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FloatingPointFormatStyle<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FloatingPointFormatStyle<A>.Percent.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FloatingPointFormatStyle<A>.Percent.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FloatingPointFormatStyle.encode(to:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void), uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v15[1] = a2;
  a3(255, v8, *(a2 + 24));
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedEncodingContainer();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v5;
  v18 = v16;
  v19 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  v13 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  if (!v13)
  {
    LOBYTE(v18) = 1;
    type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection, &protocol conformance descriptor for NumberFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

void FloatingPointFormatStyle.hash(into:)(Swift::Int a1, uint64_t a2)
{
  v72 = a2;
  v73 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  v9 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v9 + 48))(ObjectType, v9) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v9 + 64))(ObjectType, v9);
    String.hash(into:)();

    (*(v9 + 464))(&v74, ObjectType, v9);
    v87 = v80;
    v88[0] = v81[0];
    *(v88 + 12) = *(v81 + 12);
    *v84 = v76;
    *&v84[16] = v77;
    v85 = v78;
    v86 = v79;
    v82 = v74;
    v83 = v75;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v82) == 1)
    {
      v11 = 0;
      goto LABEL_5;
    }

    v14 = v74;
    v15 = *(&v74 + 1);
    v16 = *(&v75 + 1);
    v59[0] = v75;
    v60 = *(&v76 + 1);
    v59[1] = v76;
    v61 = v77;
    v62 = v78;
    v63 = v79;
    v64 = v80;
    v59[2] = *(&v81[0] + 1);
    v65 = *&v81[0];
    v66 = *&v81[1];
    v67 = BYTE8(v81[1]);
    v68 = BYTE9(v81[1]);
    v69 = BYTE10(v81[1]);
    v70 = BYTE11(v81[1]);
    Hasher._combine(_:)(1u);
    if (v14 == 2)
    {
      v17 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v17 = v14 & 1;
    }

    Hasher._combine(_:)(v17);
    if (v15)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v15 + 16));
      v18 = *(v15 + 16);
      if (v18)
      {
        v19 = v15 + 40;
        do
        {

          String.hash(into:)();

          v19 += 16;
          --v18;
        }

        while (v18);
      }

      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v16)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v12 = v4;
    v20 = *(&v62 + 1);
    v21 = *(&v61 + 1);
    v13 = v73;
    if (v60)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v22 = v61;
      if (v61)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v22 = v61;
      if (v61)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v22, v23, v24, v25, v26, v27, v28);
        v29 = v20;
        if (v21)
        {
LABEL_20:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v21, v30, v31, v32, v33, v34, v35);
          goto LABEL_24;
        }

LABEL_23:
        Hasher._combine(_:)(0);
LABEL_24:
        if (v62)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v29)
          {
            goto LABEL_26;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v29)
          {
LABEL_26:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v63)
            {
              goto LABEL_27;
            }

            goto LABEL_35;
          }
        }

        Hasher._combine(_:)(0);
        if (v63)
        {
LABEL_27:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v63 + 1))
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

LABEL_35:
        Hasher._combine(_:)(0);
        if (*(&v63 + 1))
        {
LABEL_28:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v64)
          {
            goto LABEL_29;
          }

          goto LABEL_37;
        }

LABEL_36:
        Hasher._combine(_:)(0);
        if (v64)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v36 = *(&v64 + 1);
          if (*(&v64 + 1))
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_37:
        Hasher._combine(_:)(0);
        v36 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v36);
          v37 = v65;
          if (v65)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }

LABEL_38:
        Hasher._combine(_:)(0);
        v37 = v65;
        if (v65)
        {
LABEL_31:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v37);
          if (v66)
          {
LABEL_32:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_41:
            v38 = v67;
            if (v67 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v38 & 1);
            }

            v39 = v68;
            if (v68 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v69;
            if (v69 == 2)
            {
              v41 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v41 = v40 & 1;
            }

            v42 = v70;
            Hasher._combine(_:)(v41);
            if (v42 == 2)
            {
              v43 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v43 = v42 & 1;
            }

            Hasher._combine(_:)(v43);
            outlined destroy of TermOfAddress?(&v74, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            goto LABEL_54;
          }

LABEL_40:
          Hasher._combine(_:)(0);
          goto LABEL_41;
        }

LABEL_39:
        Hasher._combine(_:)(0);
        if (v66)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    Hasher._combine(_:)(0);
    v29 = v20;
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v11 = 1;
LABEL_5:
  Hasher._combine(_:)(v11);
  v12 = v4;
  v13 = v73;
LABEL_54:
  v44 = (v2 + *(v72 + 36));
  if (v44[1])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v82 = *(v44 + 1);
  v83 = v47;
  *v84 = *(v44 + 3);
  *&v84[9] = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 37);
  v50 = v49 | (*(v44 + 76) << 16);
  if (v49 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
    MEMORY[0x1865CD060]((v50 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v50) & 1);
  }

  v51 = *(v44 + 77);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v8, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v12 + 48))(v8, 1, v13) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v71;
    (*(v12 + 32))(v71, v8, v13);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v12 + 8))(v53, v13);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  v58 = *(v44 + v52[11]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }
}

Swift::Int FloatingPointFormatStyle.hashValue.getter(uint64_t a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v72 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  Hasher.init(_seed:)();
  v9 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v9 + 48))(ObjectType, v9) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v9 + 64))(ObjectType, v9);
    String.hash(into:)();

    (*(v9 + 464))(&v73, ObjectType, v9);
    v83[4] = v79;
    v84[0] = v80[0];
    *(v84 + 12) = *(v80 + 12);
    v83[0] = v75;
    v83[1] = v76;
    v83[2] = v77;
    v83[3] = v78;
    v81 = v73;
    v82 = v74;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v81) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_5;
    }

    v12 = v73;
    v13 = *(&v73 + 1);
    v59[1] = v74;
    v59[2] = v75;
    v60 = *(&v74 + 1);
    v61 = *(&v75 + 1);
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v59[3] = *(&v80[0] + 1);
    v66 = *&v80[0];
    v67 = *&v80[1];
    v68 = BYTE8(v80[1]);
    v69 = BYTE9(v80[1]);
    v70 = BYTE10(v80[1]);
    v14 = BYTE11(v80[1]);
    Hasher._combine(_:)(1u);
    if (v12 == 2)
    {
      v15 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v15 = v12 & 1;
    }

    v71 = v14;
    Hasher._combine(_:)(v15);
    if (v13)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v13 + 16));
      v16 = *(v13 + 16);
      if (v16)
      {
        v17 = v13 + 40;
        do
        {

          String.hash(into:)();

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      if (v60)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v60)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v11 = v8;
    v18 = *(&v63 + 1);
    v19 = *(&v62 + 1);
    if (v61)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v20 = v62;
      if (v62)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v20 = v62;
      if (v62)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v85, v20, v21, v22, v23, v24, v25, v26);
        if (v19)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    Hasher._combine(_:)(0);
    if (v19)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v85, v19, v27, v28, v29, v30, v31, v32);
      if (v63)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    if (v63)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v18)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_28;
      }

LABEL_27:
      Hasher._combine(_:)(0);
LABEL_28:
      v33 = v65;
      if (v64)
      {
        v34 = v66;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_33;
        }
      }

      else
      {
        v34 = v66;
        Hasher._combine(_:)(0);
        if (*(&v64 + 1))
        {
          goto LABEL_30;
        }
      }

      Hasher._combine(_:)(0);
LABEL_33:
      v35 = v34;
      if (v33)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v36 = *(&v65 + 1);
      if (*(&v65 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v85, v36);
        v37 = v68;
        if (v35)
        {
          goto LABEL_38;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v37 = v68;
        if (v35)
        {
LABEL_38:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v85, v35);
          if (v67)
          {
LABEL_39:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_43:
            v38 = v70;
            if (v37 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v37 & 1);
            }

            v39 = v69;
            if (v69 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v71;
            if (v38 == 2)
            {
              v41 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v41 = v38 & 1;
            }

            Hasher._combine(_:)(v41);
            if (v40 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v40 & 1;
            }

            Hasher._combine(_:)(v42);
            outlined destroy of TermOfAddress?(&v73, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
            goto LABEL_56;
          }

LABEL_42:
          Hasher._combine(_:)(0);
          goto LABEL_43;
        }
      }

      Hasher._combine(_:)(0);
      if (v67)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }

LABEL_26:
    Hasher._combine(_:)(0);
    if (v18)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  Hasher._combine(_:)(1u);
LABEL_5:
  v11 = v8;
LABEL_56:
  v43 = (v1 + *(a1 + 36));
  if (*(v43 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v44 = *v43;
    Hasher._combine(_:)(1u);
    if ((v44 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    MEMORY[0x1865CD090](v45);
  }

  v46 = *(v43 + 2);
  v81 = *(v43 + 1);
  v82 = v46;
  v83[0] = *(v43 + 3);
  *(v83 + 9) = *(v43 + 57);
  specialized Optional<A>.hash(into:)();
  v47 = *(v43 + 73);
  if (v47 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v47 & 1);
  }

  v48 = *(v43 + 37);
  v49 = v48 | (*(v43 + 76) << 16);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v49 & 1);
    MEMORY[0x1865CD060]((v49 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v49) & 1);
  }

  v50 = *(v43 + 77);
  if (v50 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
  }

  v51 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v43 + v51[9], v11, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v52 = v72;
    (*(v4 + 32))(v72, v11, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v52, v3);
  }

  v53 = (v43 + v51[10]);
  v54 = *(v53 + 8);
  if (v54 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v55 = *v53;
    Hasher._combine(_:)(1u);
    if (v54)
    {
      MEMORY[0x1865CD060](1);
      if ((v55 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 0;
      }

      MEMORY[0x1865CD090](v56);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v55);
    }
  }

  v57 = *(v43 + v51[11]);
  if (v57 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v57);
  }

  return Hasher._finalize()();
}