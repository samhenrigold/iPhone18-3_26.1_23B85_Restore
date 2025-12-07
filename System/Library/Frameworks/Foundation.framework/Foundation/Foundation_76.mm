Swift::Int IntegerFormatStyle.Attributed.Style.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  IntegerFormatStyle.Attributed.Style.hash(into:)(v5, a1, v2, v3);
  return Hasher._finalize()();
}

uint64_t IntegerFormatStyle.Attributed.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v62 = a4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd, &_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMR);
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v60 - v11;
  type metadata accessor for IntegerFormatStyle.Attributed.Style.CodingKeys(255, a2, a3, v12);
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for KeyedDecodingContainer();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v67 = a2;
  v71 = a3;
  v69 = type metadata accessor for IntegerFormatStyle.Attributed.Style(0, a2, a3, v16);
  v63 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  v28 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    WitnessTable = v21;
    v75 = v18;
    v60 = v24;
    v61 = v27;
    v30 = v70;
    v31 = v71;
    v32 = KeyedDecodingContainer.allKeys.getter();
    v33 = _ArrayBuffer.requestNativeBuffer()();
    if (!v33)
    {
      v81 = v32;
      type metadata accessor for Array();
      swift_getWitnessTable();
      v33 = _copyCollectionToContiguousArray<A>(_:)();
    }

    v34 = v33;

    v35 = (2 * *(v34 + 16)) | 1;
    v77 = v34;
    v78 = v34 + 32;
    v79 = 0;
    v80 = v35;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    if (v81 == 3 || v79 != v80 >> 1)
    {
      v44 = type metadata accessor for DecodingError();
      swift_allocError();
      v46 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v46 = v69;
      v47 = v73;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      (*(v72 + 8))(v15, v47);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v81)
      {
        v36 = v31;
        if (v81 == 1)
        {
          LOBYTE(v81) = 1;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v37 = v65;
          v38 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v39 = v72;
          v40 = v68;
          type metadata accessor for IntegerFormatStyle.Percent(0, v67, v36, v41);
          swift_getWitnessTable();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v30 + 8))(v37, v40);
          (*(v39 + 8))(v15, v38);
          swift_unknownObjectRelease();
          v42 = WitnessTable;
        }

        else
        {
          LOBYTE(v81) = 2;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v50 = v66;
          v51 = v73;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v52 = v72;
          v53 = v68;
          type metadata accessor for IntegerFormatStyle.Currency(0, v67, v36, v54);
          swift_getWitnessTable();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v30 + 8))(v50, v53);
          (*(v52 + 8))(v15, v51);
          swift_unknownObjectRelease();
          v42 = v75;
        }

        v43 = v69;
      }

      else
      {
        LOBYTE(v81) = 0;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        v49 = v64;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for IntegerFormatStyle(0, v67, v31, v55);
        swift_getWitnessTable();
        v42 = v60;
        v56 = v68;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v57 = v72;
        (*(v30 + 8))(v49, v56);
        (*(v57 + 8))(v15, v73);
        swift_unknownObjectRelease();
        v43 = v69;
      }

      swift_storeEnumTagMultiPayload();
      v58 = *(v63 + 32);
      v59 = v61;
      v58(v61, v42, v43);
      v58(v62, v59, v43);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntegerFormatStyle<A>.Currency.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IntegerFormatStyle<A>.Attributed.Style.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IntegerFormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntegerFormatStyle<A>.Attributed.Style.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntegerFormatStyle<A>.Attributed.Style.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t IntegerFormatStyle.Attributed.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v207 = a4;
  v219 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v202 = type metadata accessor for IntegerFormatStyle.Percent(0, v5, v6, a3);
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v200 = v192 - v7;
  v199 = type metadata accessor for IntegerFormatStyle.Currency(0, v5, v6, v8);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v197 = v192 - v9;
  v196 = type metadata accessor for IntegerFormatStyle(0, v5, v6, v10);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v194 = v192 - v11;
  v13 = type metadata accessor for IntegerFormatStyle.Attributed.Style(0, v5, v6, v12);
  v208 = *(v13 - 8);
  v209 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v192 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v205 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v204 = v192 - v16;
  v17 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v17);
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v203 = v192 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v192 - v23;
  v25 = *(v18 + 16);
  v193 = a1;
  v192[1] = v18 + 16;
  v192[0] = v25;
  v25(v192 - v23, a1, v5, v22);
  v26 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v192[2] = v6;
  if ((v26 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_15;
  }

  *&v216 = 0x8000000000000000;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v27)
    {
      if (v28 > 64)
      {
        goto LABEL_8;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v32 = v203;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v33 = dispatch thunk of static Comparable.< infix(_:_:)();
      v34 = *(v18 + 8);
      v34(v32, v5);
      if (v33)
      {
        v34(v24, v5);
LABEL_20:
        v39 = v204;
        dispatch thunk of BinaryInteger.words.getter();
        v40 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v41 = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v43 = numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(v39, v40 & 1, v41, *(*(AssociatedConformanceWitness + 8) + 8));
        v45 = v44;
        (*(v205 + 8))(v39, v41);
        v46 = 3;
        goto LABEL_27;
      }
    }

    else if (v28 >= 64)
    {
      goto LABEL_15;
    }

LABEL_14:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_15;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    goto LABEL_14;
  }

LABEL_8:
  lazy protocol witness table accessor for type Int64 and conformance Int64();
  v29 = v203;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v30 = dispatch thunk of static Comparable.< infix(_:_:)();
  v31 = *(v18 + 8);
  v31(v29, v5);
  if (v30)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
  {
    goto LABEL_26;
  }

  *&v216 = 0x7FFFFFFFFFFFFFFFLL;
  v35 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v36 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v35)
  {
    if (v36 > 64)
    {
      goto LABEL_18;
    }

LABEL_25:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_26;
  }

  if (v36 <= 63)
  {
    goto LABEL_25;
  }

LABEL_18:
  lazy protocol witness table accessor for type Int64 and conformance Int64();
  v37 = v203;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v38 = dispatch thunk of static Comparable.< infix(_:_:)();
  v31 = *(v18 + 8);
  v31(v37, v5);
  if (v38)
  {
LABEL_19:
    v31(v24, v5);
    goto LABEL_20;
  }

LABEL_26:
  v43 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v18 + 8))(v24, v5);
  v45 = 0;
  v46 = 0;
LABEL_27:
  (*(v208 + 16))(v15, v210, v209);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  AssociatedTypeWitness = v43;
  v205 = v45;
  v204 = v46;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v48 = v200;
      (v201)[4](v200, v15, v202);
      v49 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
      v51 = v50;
      v52 = *(v48 + 1);
      ObjectType = swift_getObjectType();
      v54 = (*(v52 + 472))(ObjectType, v52);
      v55 = v54;
      v57 = v56;
      if (one-time initialization token for cache != -1)
      {
        v54 = swift_once();
      }

      v59 = static ICUPercentNumberFormatter.cache;
      v58 = *algn_1EA7B0228;
      *&v216 = v49;
      *(&v216 + 1) = v51;
      *&v217 = v55;
      *(&v217 + 1) = v57;
      MEMORY[0x1EEE9AC00](v54);
      v192[-2] = &v216;
      os_unfair_lock_lock((v58 + 24));
      closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v58 + 16, &v213);
      os_unfair_lock_unlock((v58 + 24));
      v60 = v213;
      if (v213 != 1)
      {
        goto LABEL_136;
      }

      *&v213 = 0x746E6563726570;
      *(&v213 + 1) = 0xE700000000000000;
      if (String.count.getter() > 0)
      {
        v211 = 32;
        v212 = 0xE100000000000000;
        MEMORY[0x1865CB0E0](v49, v51);
        MEMORY[0x1865CB0E0](v211, v212);
      }

      v62 = *(&v213 + 1);
      v61 = v213;
      type metadata accessor for ICUPercentNumberFormatter();
      swift_allocObject();

      v60 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v61, v62, v55, v57);
      os_unfair_lock_lock((v58 + 24));
      v63 = *(*(v58 + 16) + 16);
      v210 = *(v58 + 16);
      if (v59 >= v63)
      {
      }

      else
      {
        *(v58 + 16) = MEMORY[0x1E69E7CC8];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v213 = *(v58 + 16);
      v71 = v213;
      *(v58 + 16) = 0x8000000000000000;
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v51, v55, v57);
      v94 = *(v71 + 16);
      v95 = (v75 & 1) == 0;
      v96 = v94 + v95;
      if (!__OFADD__(v94, v95))
      {
        if (*(v71 + 24) < v96)
        {
          v97 = v75;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v96, isUniquelyReferenced_nonNull_native);
          v98 = v213;
          v99 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v51, v55, v57);
          if ((v97 & 1) == (v100 & 1))
          {
            v76 = v99;
            if ((v97 & 1) == 0)
            {
              goto LABEL_134;
            }

LABEL_60:
            v108 = v76;

            *(*(v98 + 56) + 8 * v108) = v60;

LABEL_135:
            *(v58 + 16) = v98;

            os_unfair_lock_unlock((v58 + 24));

            outlined consume of ICUNumberFormatter??(1);
LABEL_136:

            if (v60)
            {
              v181 = v204;
              v182 = AssociatedTypeWitness;
              v183 = v205;
              ICUCurrencyNumberFormatter.attributedFormat(_:)(AssociatedTypeWitness, v205, v204 << 32, v207);

              outlined consume of ICUNumberFormatterBase.Value(v182, v183, 0, v181);
              return (v201[1])(v200, v202);
            }

            (v201[1])(v200, v202);
LABEL_151:
            v191 = v207;
            outlined consume of ICUNumberFormatterBase.Value(AssociatedTypeWitness, v205, 0, v204);
            (v192[0])(v203, v193, v5);
            String.init<A>(_:radix:uppercase:)();
            BigString.init(_:)();
            result = AttributedString.init(_:attributes:)(&v213, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v211);
            *v191 = v211;
            return result;
          }

          goto LABEL_155;
        }

LABEL_58:
        if (isUniquelyReferenced_nonNull_native)
        {
          v98 = v71;
          if (v75)
          {
            goto LABEL_60;
          }

LABEL_134:
          specialized _NativeDictionary._insert(at:key:value:)(v76, v49, v51, v55, v57, v60, v98);
          goto LABEL_135;
        }

        goto LABEL_88;
      }

      __break(1u);
      goto LABEL_84;
    }

    v77 = v197;
    (v198)[4](v197, v15, v199);
    v78 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
    v80 = v79;
    v81 = *(v77 + 2);
    v57 = *(v77 + 3);
    v82 = *(v77 + 1);
    v83 = swift_getObjectType();
    v84 = *(v82 + 472);

    v85 = v84(v83, v82);
    v86 = v85;
    *&v216 = v78;
    *(&v216 + 1) = v80;
    v209 = v80;
    v210 = v87;
    *&v217 = v81;
    *(&v217 + 1) = v57;
    *&v218 = v85;
    *(&v218 + 1) = v87;
    if (one-time initialization token for cache != -1)
    {
      v85 = swift_once();
    }

    v88 = static ICUCurrencyNumberFormatter.cache;
    v58 = qword_1EA7B5100;
    v213 = v216;
    v214 = v217;
    v215 = v218;
    MEMORY[0x1EEE9AC00](v85);
    v192[-2] = &v213;
    os_unfair_lock_lock((v58 + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v58 + 16, &v211);
    os_unfair_lock_unlock((v58 + 24));
    v60 = v211;
    v55 = v209;
    if (v211 != 1)
    {
LABEL_142:

      if (v60)
      {
        v185 = v204;
        v186 = AssociatedTypeWitness;
        v187 = v205;
        ICUCurrencyNumberFormatter.attributedFormat(_:)(AssociatedTypeWitness, v205, v204 << 32, v207);

        outlined consume of ICUNumberFormatterBase.Value(v186, v187, 0, v185);
        return (v198[1])(v197, v199);
      }

      (v198[1])(v197, v199);
      goto LABEL_151;
    }

    v89 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v78, v209, v81, v57);
    v91 = v90;
    type metadata accessor for ICUCurrencyNumberFormatter();
    swift_allocObject();
    v71 = v210;

    v60 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v89, v91, v86, v71);
    os_unfair_lock_lock((v58 + 24));
    v92 = *(v58 + 16);
    if (v88 >= *(v92 + 16))
    {

      v51 = v92;
    }

    else
    {
      v51 = *(v58 + 16);
      *(v58 + 16) = MEMORY[0x1E69E7CC8];
    }

    v49 = swift_isUniquelyReferenced_nonNull_native();
    v211 = *(v58 + 16);
    isUniquelyReferenced_nonNull_native = v211;
    *(v58 + 16) = 0x8000000000000000;
    v101 = specialized __RawDictionaryStorage.find<A>(_:)(&v216);
    v102 = *(isUniquelyReferenced_nonNull_native + 16);
    v103 = (v75 & 1) == 0;
    v104 = __OFADD__(v102, v103);
    v105 = v102 + v103;
    if (v104)
    {
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v71 = v75;
    if (*(isUniquelyReferenced_nonNull_native + 24) >= v105)
    {
      if ((v49 & 1) == 0)
      {
        v196 = v101;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
        v142 = static _DictionaryStorage.copy(original:)();
        v106 = v142;
        if (*(isUniquelyReferenced_nonNull_native + 16))
        {
          v143 = (v142 + 64);
          v144 = 1 << *(v106 + 32);
          v200 = (isUniquelyReferenced_nonNull_native + 64);
          v145 = (v144 + 63) >> 6;
          if (v106 != isUniquelyReferenced_nonNull_native || v143 >= &v200[8 * v145])
          {
            memmove(v143, v200, 8 * v145);
          }

          v146 = 0;
          *(v106 + 16) = *(isUniquelyReferenced_nonNull_native + 16);
          v147 = 1 << *(isUniquelyReferenced_nonNull_native + 32);
          v148 = -1;
          if (v147 < 64)
          {
            v148 = ~(-1 << v147);
          }

          v208 = v148 & *(isUniquelyReferenced_nonNull_native + 64);
          v195 = (v147 + 63) >> 6;
          for (i = v208; v208; i = v208)
          {
            v150 = __clz(__rbit64(i));
            v208 = (i - 1) & i;
LABEL_116:
            v153 = v150 | (v146 << 6);
            v154 = *(isUniquelyReferenced_nonNull_native + 56);
            v155 = (*(isUniquelyReferenced_nonNull_native + 48) + 48 * v153);
            v156 = *v155;
            v201 = v155[1];
            v157 = v201;
            v158 = v155[2];
            v202 = v155[3];
            v159 = v202;
            v160 = *(v154 + 8 * v153);
            v161 = v155[4];
            v162 = v155[5];
            v163 = (*(v106 + 48) + 48 * v153);
            *v163 = v156;
            v163[1] = v157;
            v163[2] = v158;
            v163[3] = v159;
            v163[4] = v161;
            v163[5] = v162;
            *(*(v106 + 56) + 8 * v153) = v160;
          }

          v151 = v146;
          while (1)
          {
            v146 = v151 + 1;
            if (__OFADD__(v151, 1))
            {
              break;
            }

            if (v146 >= v195)
            {
              goto LABEL_139;
            }

            v152 = *&v200[8 * v146];
            ++v151;
            if (v152)
            {
              v150 = __clz(__rbit64(v152));
              v208 = (v152 - 1) & v152;
              goto LABEL_116;
            }
          }

LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_156;
        }

LABEL_139:

        v101 = v196;
        if (v71)
        {
          goto LABEL_64;
        }

        goto LABEL_140;
      }

      v106 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, v49);
      v106 = v211;
      v101 = specialized __RawDictionaryStorage.find<A>(_:)(&v216);
      if ((v71 & 1) != (v107 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_58;
      }
    }

    if (v71)
    {
LABEL_64:
      v109 = v101;

      *(*(v106 + 56) + 8 * v109) = v60;

LABEL_141:
      *(v58 + 16) = v106;

      os_unfair_lock_unlock((v58 + 24));

      outlined consume of ICUNumberFormatter??(1);
      goto LABEL_142;
    }

LABEL_140:
    specialized _NativeDictionary._insert(at:key:value:)(v101, &v216, v60, v106);
    goto LABEL_141;
  }

  v64 = v194;
  (*(v195 + 32))(v194, v15, v196);
  v55 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v51 = v65;
  v66 = *(v64 + 1);
  v67 = swift_getObjectType();
  v68 = (*(v66 + 472))(v67, v66);
  v69 = v68;
  v49 = v70;
  if (one-time initialization token for cache != -1)
  {
    v68 = swift_once();
  }

  v71 = static ICUNumberFormatter.cache;
  v58 = *algn_1EA7B1D98;
  *&v213 = v55;
  *(&v213 + 1) = v51;
  *&v214 = v69;
  *(&v214 + 1) = v49;
  MEMORY[0x1EEE9AC00](v68);
  v192[-2] = &v213;
  os_unfair_lock_lock((v58 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v58 + 16, &v216);
  os_unfair_lock_unlock((v58 + 24));
  v60 = v216;
  if (v216 != 1)
  {
LABEL_148:

    if (v60)
    {
      v188 = v204;
      v189 = AssociatedTypeWitness;
      v190 = v205;
      ICUNumberFormatter.attributedFormat(_:)(AssociatedTypeWitness, v205, v204 << 32, v207);

      outlined consume of ICUNumberFormatterBase.Value(v189, v190, 0, v188);
      return (*(v195 + 8))(v194, v196);
    }

    (*(v195 + 8))(v194, v196);
    goto LABEL_151;
  }

  type metadata accessor for ICUNumberFormatter();
  v60 = swift_allocObject();
  v60[3] = v55;
  v60[4] = v51;
  swift_bridgeObjectRetain_n();
  v72 = MEMORY[0x1865CB200](v55, v51);
  if (v72)
  {
    v208 = v49;
    v210 = v71;
    v71 = v69;
    v57 = v72;
    v73 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v72, 0);

    v49 = v55;
    v74 = specialized Sequence._copySequenceContents(initializing:)(&v216, (v73 + 4), v57, v55, v51);

    if (v74 != v57)
    {
LABEL_87:
      __break(1u);
LABEL_88:
      v196 = v76;
      LODWORD(v197) = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v122 = static _DictionaryStorage.copy(original:)();
      v98 = v122;
      if (!*(v71 + 16))
      {
LABEL_133:

        v76 = v196;
        if (v197)
        {
          goto LABEL_60;
        }

        goto LABEL_134;
      }

      v123 = (v122 + 64);
      v124 = 1 << *(v98 + 32);
      v198 = (v71 + 64);
      v125 = (v124 + 63) >> 6;
      if (v98 != v71 || v123 >= &v198[v125])
      {
        memmove(v123, v198, 8 * v125);
      }

      v126 = 0;
      *(v98 + 16) = *(v71 + 16);
      v127 = 1 << *(v71 + 32);
      v128 = -1;
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      v209 = v128 & *(v71 + 64);
      v195 = (v127 + 63) >> 6;
      for (j = v209; v209; j = v209)
      {
        v130 = __clz(__rbit64(j));
        v209 = (j - 1) & j;
LABEL_101:
        v133 = v130 | (v126 << 6);
        v134 = *(v71 + 56);
        v135 = (*(v71 + 48) + 32 * v133);
        v136 = *v135;
        v199 = v135[1];
        v137 = v199;
        v138 = v135[2];
        v208 = v135[3];
        v139 = v208;
        v140 = *(v134 + 8 * v133);
        v141 = (*(v98 + 48) + 32 * v133);
        *v141 = v136;
        v141[1] = v137;
        v141[2] = v138;
        v141[3] = v139;
        *(*(v98 + 56) + 8 * v133) = v140;
      }

      v131 = v126;
      while (1)
      {
        v126 = v131 + 1;
        if (__OFADD__(v131, 1))
        {
          break;
        }

        if (v126 >= v195)
        {
          goto LABEL_133;
        }

        v132 = v198[v126];
        ++v131;
        if (v132)
        {
          v130 = __clz(__rbit64(v132));
          v209 = (v132 - 1) & v132;
          goto LABEL_101;
        }
      }

      __break(1u);
      goto LABEL_153;
    }

    v69 = v71;
    v71 = v210;
    v49 = v208;
  }

  else
  {

    v73 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v216) = 0;
  v57 = v73[2];
  if (v57 >> 31)
  {
    goto LABEL_85;
  }

  v210 = v69;
  String.utf8CString.getter();
  v110 = unumf_openForSkeletonAndLocale();

  if (!v110)
  {
    goto LABEL_70;
  }

  if (v216 >= 1)
  {
    unumf_close();
LABEL_70:

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v60 = 0;
    goto LABEL_72;
  }

  v60[2] = v110;
LABEL_72:
  os_unfair_lock_lock((v58 + 24));
  v111 = *(*(v58 + 16) + 16);
  v209 = *(v58 + 16);
  if (v71 >= v111)
  {
  }

  else
  {
    *(v58 + 16) = MEMORY[0x1E69E7CC8];
  }

  v112 = swift_isUniquelyReferenced_nonNull_native();
  *&v216 = *(v58 + 16);
  v57 = v216;
  *(v58 + 16) = 0x8000000000000000;
  v76 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v51, v210, v49);
  v113 = *(v57 + 16);
  v114 = (v75 & 1) == 0;
  v115 = v113 + v114;
  if (__OFADD__(v113, v114))
  {
    goto LABEL_86;
  }

  v116 = v75;
  if (*(v57 + 24) >= v115)
  {
    if (v112)
    {
      v117 = v57;
      v118 = v210;
      if ((v75 & 1) == 0)
      {
LABEL_146:
        specialized _NativeDictionary._insert(at:key:value:)(v76, v55, v51, v118, v49, v60, v117);
        goto LABEL_147;
      }
    }

    else
    {
      v208 = v49;
      v199 = v55;
      v200 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd, &_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMR);
      v164 = static _DictionaryStorage.copy(original:)();
      v117 = v164;
      if (*(v57 + 16))
      {
        v165 = (v164 + 64);
        v166 = 1 << *(v117 + 32);
        v201 = (v57 + 64);
        v167 = (v166 + 63) >> 6;
        if (v117 != v57 || v165 >= &v201[v167])
        {
          memmove(v165, v201, 8 * v167);
        }

        v168 = 0;
        *(v117 + 16) = *(v57 + 16);
        v169 = 1 << *(v57 + 32);
        v170 = -1;
        if (v169 < 64)
        {
          v170 = ~(-1 << v169);
        }

        v202 = v170 & *(v57 + 64);
        v198 = ((v169 + 63) >> 6);
        while (v202)
        {
          v171 = __clz(__rbit64(v202));
          v202 &= v202 - 1;
LABEL_132:
          v174 = v171 | (v168 << 6);
          v175 = (*(v57 + 48) + 32 * v174);
          v176 = v175[1];
          v177 = v175[2];
          v178 = v175[3];
          v179 = *(*(v57 + 56) + 8 * v174);
          v180 = (*(v117 + 48) + 32 * v174);
          *v180 = *v175;
          v180[1] = v176;
          v180[2] = v177;
          v180[3] = v178;
          *(*(v117 + 56) + 8 * v174) = v179;
        }

        v172 = v168;
        while (1)
        {
          v168 = v172 + 1;
          if (__OFADD__(v172, 1))
          {
            goto LABEL_154;
          }

          if (v168 >= v198)
          {
            break;
          }

          v173 = v201[v168];
          ++v172;
          if (v173)
          {
            v171 = __clz(__rbit64(v173));
            v202 = (v173 - 1) & v173;
            goto LABEL_132;
          }
        }
      }

      v118 = v210;
      v76 = v200;
      v55 = v199;
      v49 = v208;
      if ((v116 & 1) == 0)
      {
        goto LABEL_146;
      }
    }

LABEL_82:
    v121 = v76;

    *(*(v117 + 56) + 8 * v121) = v60;

LABEL_147:
    *(v58 + 16) = v117;

    os_unfair_lock_unlock((v58 + 24));

    outlined consume of ICUNumberFormatter??(1);
    goto LABEL_148;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v115, v112);
  v117 = v216;
  v118 = v210;
  v119 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v51, v210, v49);
  if ((v116 & 1) == (v120 & 1))
  {
    v76 = v119;
    if ((v116 & 1) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_82;
  }

LABEL_156:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t IntegerFormatStyle.Attributed.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for IntegerFormatStyle.Percent(0, v7, v8, a3);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v42 - v10);
  v13 = type metadata accessor for IntegerFormatStyle.Currency(0, v7, v8, v12);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v42 - v14);
  v17 = type metadata accessor for IntegerFormatStyle(0, v7, v8, v16);
  v42 = *(v17 - 8);
  v43 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v42 - v18);
  v21 = type metadata accessor for IntegerFormatStyle.Attributed.Style(0, v7, v8, v20);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  v26 = *a1;
  v48 = a1[1];
  v27 = a4;
  v28 = a4;
  v29 = v49;
  (*(*(a2 - 8) + 16))(v28, v49, a2, v23);
  (*(v22 + 16))(v25, v29, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = (v22 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = v46;
      v32 = v47;
      (*(v46 + 32))(v11, v25, v47);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v34 = v48;
      *v11 = v26;
      v11[1] = v34;
      (*v31)(v27, v21);
      (*(v33 + 16))(v27, v11, v32);
      swift_storeEnumTagMultiPayload();
      return (*(v33 + 8))(v11, v32);
    }

    else
    {
      v40 = v44;
      v39 = v45;
      (*(v44 + 32))(v15, v25, v45);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v41 = v48;
      *v15 = v26;
      v15[1] = v41;
      (*v31)(v27, v21);
      (*(v40 + 16))(v27, v15, v39);
      swift_storeEnumTagMultiPayload();
      return (*(v40 + 8))(v15, v39);
    }
  }

  else
  {
    v37 = v42;
    v36 = v43;
    (*(v42 + 32))(v19, v25, v43);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v38 = v48;
    *v19 = v26;
    v19[1] = v38;
    (*v31)(v27, v21);
    (*(v37 + 16))(v27, v19, v36);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 8))(v19, v36);
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntegerFormatStyle<A>.Attributed.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntegerFormatStyle<A>.Attributed.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t IntegerFormatStyle.Attributed.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v12 = *(a2 + 16);
  type metadata accessor for IntegerFormatStyle.Attributed.CodingKeys(255, v12, v5, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for IntegerFormatStyle.Attributed.Style(0, v12, v5, v10);
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t IntegerFormatStyle.Attributed.hash(into:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v225 = type metadata accessor for IntegerFormatStyle.Currency(0, v7, v6, a4);
  v228 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v222 = &v214 - v8;
  v229 = type metadata accessor for IntegerFormatStyle.Percent(0, v7, v6, v9);
  v227 = *(v229 - 1);
  MEMORY[0x1EEE9AC00](v229);
  v11 = &v214 - v10;
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v230 = *(v12 - 8);
  v231 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v226 = &v214 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v224 = &v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v223 = &v214 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v214 - v19;
  v22 = type metadata accessor for IntegerFormatStyle(0, v7, v6, v21);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v214 - v24;
  v27 = type metadata accessor for IntegerFormatStyle.Attributed.Style(0, v7, v6, v26);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v214 - v29;
  (*(v31 + 16))(&v214 - v29, v4, v27, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v33 = v11;
      (*(v227 + 4))(v11, v30, v229);
      MEMORY[0x1865CD060](1);
      v34 = *(v11 + 1);
      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 48))(ObjectType, v34);
      v38 = v230;
      v37 = v231;
      if (v36)
      {
        v39 = 1;
LABEL_11:
        Hasher._combine(_:)(v39);
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v34 + 64))(ObjectType, v34);
      String.hash(into:)();

      (*(v34 + 464))(&v232, ObjectType, v34);
      v245 = v238;
      v246[0] = v239[0];
      *(v246 + 12) = *(v239 + 12);
      *v242 = v234;
      *&v242[16] = v235;
      v243 = v236;
      v244 = v237;
      v240 = v232;
      v241 = v233;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v240) == 1)
      {
        v39 = 0;
        goto LABEL_11;
      }

      v54 = v232;
      v55 = *(&v232 + 1);
      v56 = *(&v233 + 1);
      v215 = v233;
      v57 = *(&v234 + 1);
      v216 = v234;
      *(&v218 + 1) = *(&v235 + 1);
      *v219 = v236;
      *&v219[16] = v237;
      v220 = v238;
      *&v217 = *(&v239[0] + 1);
      v221 = *&v239[0];
      *(&v217 + 1) = v235;
      v222 = *&v239[1];
      v224 = BYTE8(v239[1]);
      v225 = BYTE9(v239[1]);
      v58 = BYTE10(v239[1]);
      v59 = BYTE11(v239[1]);
      Hasher._combine(_:)(1u);
      if (v54 == 2)
      {
        v60 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v60 = v54 & 1;
      }

      LODWORD(v228) = v59;
      Hasher._combine(_:)(v60);
      if (v55)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v55 + 16));
        v75 = *(v55 + 16);
        if (v75)
        {
          v76 = v55 + 40;
          do
          {

            String.hash(into:)();

            v76 += 16;
            --v75;
          }

          while (v75);
        }

        if (v56)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v56)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_48;
        }
      }

      Hasher._combine(_:)(0);
LABEL_48:
      v38 = v230;
      v37 = v231;
      v82 = *v219;
      LODWORD(v218) = v58;
      if (v57)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v83 = v222;
      v84 = *&v219[16];
      v85 = *(&v217 + 1);
      if (*(&v217 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v85, v86, v87, v88, v89, v90, v91);
        v92 = *(&v218 + 1);
        if (*(&v218 + 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v92 = *(&v218 + 1);
        if (*(&v218 + 1))
        {
LABEL_53:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v92, v93, v94, v95, v96, v97, v98);
          if (v82)
          {
            goto LABEL_54;
          }

          goto LABEL_59;
        }
      }

      Hasher._combine(_:)(0);
      if (v82)
      {
LABEL_54:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v219[8])
        {
          goto LABEL_55;
        }

        goto LABEL_60;
      }

LABEL_59:
      Hasher._combine(_:)(0);
      if (*&v219[8])
      {
LABEL_55:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v84)
        {
LABEL_56:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_62;
        }

LABEL_61:
        Hasher._combine(_:)(0);
LABEL_62:
        v99 = v218;
        if (*&v219[24])
        {
          v100 = v225;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v220)
          {
LABEL_64:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_67;
          }
        }

        else
        {
          v100 = v225;
          Hasher._combine(_:)(0);
          if (v220)
          {
            goto LABEL_64;
          }
        }

        Hasher._combine(_:)(0);
LABEL_67:
        v101 = v100;
        v102 = v99;
        v103 = *(&v220 + 1);
        if (*(&v220 + 1))
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v103);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v104 = v83;
        v105 = v221;
        if (v221)
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v105);
          v106 = v224;
          if (v104)
          {
            goto LABEL_72;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v106 = v224;
          if (v104)
          {
LABEL_72:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            if (v106 == 2)
            {
              goto LABEL_73;
            }

            goto LABEL_78;
          }
        }

        Hasher._combine(_:)(0);
        if (v106 == 2)
        {
LABEL_73:
          Hasher._combine(_:)(0);
          if (v101 != 2)
          {
            goto LABEL_74;
          }

          goto LABEL_79;
        }

LABEL_78:
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v106 & 1);
        if (v101 != 2)
        {
LABEL_74:
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v101 & 1);
          if (v102 != 2)
          {
LABEL_75:
            Hasher._combine(_:)(1u);
            v107 = v102 & 1;
LABEL_81:
            Hasher._combine(_:)(v107);
            v108 = v228;
            if (v228 == 2)
            {
              v109 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v109 = v108 & 1;
            }

            Hasher._combine(_:)(v109);
            outlined destroy of TermOfAddress?(&v232, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_85:
            v110 = &v33[*(v229 + 9)];
            if (v110[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v111 = *v110;
              Hasher._combine(_:)(1u);
              if ((v111 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v112 = v111;
              }

              else
              {
                v112 = 0;
              }

              MEMORY[0x1865CD090](v112);
            }

            v113 = *(v110 + 2);
            v240 = *(v110 + 1);
            v241 = v113;
            *v242 = *(v110 + 3);
            *&v242[9] = *(v110 + 57);
            specialized Optional<A>.hash(into:)();
            v114 = v110[73];
            if (v114 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v114 & 1);
            }

            v115 = *(v110 + 37);
            v116 = v115 | (v110[76] << 16);
            if (v115 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v116 & 1);
              MEMORY[0x1865CD060]((v116 >> 8) & 1);
              MEMORY[0x1865CD060](HIWORD(v116) & 1);
            }

            v117 = v110[77];
            if (v117 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v117 & 1);
            }

            v118 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
            v119 = v223;
            outlined init with copy of FloatingPointRoundingRule?(&v110[v118[9]], v223);
            if ((*(v38 + 48))(v119, 1, v37) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v120 = v226;
              (*(v38 + 32))(v226, v119, v37);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v38 + 8))(v120, v37);
            }

            v121 = &v110[v118[10]];
            v122 = v121[8];
            if (v122 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v123 = *v121;
              Hasher._combine(_:)(1u);
              if (v122)
              {
                MEMORY[0x1865CD060](1);
                if ((v123 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v124 = v123;
                }

                else
                {
                  v124 = 0;
                }

                MEMORY[0x1865CD090](v124);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v123);
              }
            }

            v125 = v110[v118[11]];
            if (v125 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v125);
            }

            return (*(v227 + 1))(v33, v229);
          }

LABEL_80:
          v107 = 0;
          goto LABEL_81;
        }

LABEL_79:
        Hasher._combine(_:)(0);
        if (v102 != 2)
        {
          goto LABEL_75;
        }

        goto LABEL_80;
      }

LABEL_60:
      Hasher._combine(_:)(0);
      if (v84)
      {
        goto LABEL_56;
      }

      goto LABEL_61;
    }

    v44 = v222;
    v45 = v225;
    (*(v228 + 32))(v222, v30, v225);
    MEMORY[0x1865CD060](2);
    v46 = *(v44 + 1);
    v47 = swift_getObjectType();
    v48 = (*(v46 + 48))(v47, v46);
    v50 = v230;
    v49 = v231;
    if (v48)
    {
      v51 = 1;
LABEL_17:
      Hasher._combine(_:)(v51);
      goto LABEL_224;
    }

    Hasher._combine(_:)(0);
    (*(v46 + 64))(v47, v46);
    String.hash(into:)();

    (*(v46 + 464))(&v232, v47, v46);
    v245 = v238;
    v246[0] = v239[0];
    *(v246 + 12) = *(v239 + 12);
    *v242 = v234;
    *&v242[16] = v235;
    v243 = v236;
    v244 = v237;
    v240 = v232;
    v241 = v233;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v240) == 1)
    {
      v51 = 0;
      goto LABEL_17;
    }

    v69 = v232;
    v70 = *(&v232 + 1);
    v71 = *(&v233 + 1);
    v214 = v233;
    v72 = *(&v234 + 1);
    v215 = v234;
    v217 = v235;
    v218 = v236;
    *v219 = v237;
    *&v219[16] = v238;
    v216 = *(&v239[0] + 1);
    *&v220 = *&v239[0];
    v221 = *&v239[1];
    v223 = BYTE8(v239[1]);
    v227 = BYTE9(v239[1]);
    LODWORD(v229) = BYTE10(v239[1]);
    v73 = BYTE11(v239[1]);
    Hasher._combine(_:)(1u);
    if (v69 == 2)
    {
      v74 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v74 = v69 & 1;
    }

    Hasher._combine(_:)(v74);
    if (v70)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v70 + 16));
      v79 = *(v70 + 16);
      if (v79)
      {
        v80 = v70 + 40;
        do
        {

          String.hash(into:)();

          v80 += 16;
          --v79;
        }

        while (v79);
      }

      DWORD2(v220) = v73;
      if (v71)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        v81 = *(&v218 + 1);
        if (v72)
        {
LABEL_45:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_188;
        }

LABEL_187:
        Hasher._combine(_:)(0);
LABEL_188:
        v171 = v231;
        v172 = v225;
        v173 = v217;
        if (v217)
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v173, v174, v175, v176, v177, v178, v179);
          v180 = v81;
          if (*(&v173 + 1))
          {
LABEL_190:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, *(&v173 + 1), v181, v182, v183, v184, v185, v186);
            goto LABEL_193;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v180 = v81;
          if (*(&v173 + 1))
          {
            goto LABEL_190;
          }
        }

        Hasher._combine(_:)(0);
LABEL_193:
        v45 = v172;
        v49 = v171;
        if (v218)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v187 = *&v219[8];
        v50 = v230;
        if (v180)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*v219)
          {
            goto LABEL_198;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (*v219)
          {
LABEL_198:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v187)
            {
              goto LABEL_199;
            }

            goto LABEL_203;
          }
        }

        Hasher._combine(_:)(0);
        if (v187)
        {
LABEL_199:
          v188 = v227;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v189 = *&v219[24];
          if (*&v219[16])
          {
LABEL_200:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_205;
          }

LABEL_204:
          Hasher._combine(_:)(0);
LABEL_205:
          v190 = v188;
          v191 = v221;
          if (v189)
          {
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v189);
            v192 = v220;
            if (v220)
            {
              goto LABEL_207;
            }
          }

          else
          {
            Hasher._combine(_:)(0);
            v192 = v220;
            if (v220)
            {
LABEL_207:
              Hasher._combine(_:)(1u);
              specialized Dictionary<>.hash(into:)(a1, v192);
              v193 = v229;
              if (v191)
              {
LABEL_208:
                Hasher._combine(_:)(1u);
                String.hash(into:)();
                goto LABEL_212;
              }

LABEL_211:
              Hasher._combine(_:)(0);
LABEL_212:
              v194 = v223;
              if (v223 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v194 & 1);
              }

              v195 = DWORD2(v220);
              if (v190 == 2)
              {
                Hasher._combine(_:)(0);
                if (v193 != 2)
                {
LABEL_217:
                  Hasher._combine(_:)(1u);
                  v196 = v193 & 1;
LABEL_220:
                  Hasher._combine(_:)(v196);
                  if (v195 == 2)
                  {
                    v197 = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    v197 = v195 & 1;
                  }

                  Hasher._combine(_:)(v197);
                  outlined destroy of TermOfAddress?(&v232, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_224:
                  String.hash(into:)();
                  v198 = &v44[*(v45 + 40)];
                  if (v198[8] == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v199 = *v198;
                    Hasher._combine(_:)(1u);
                    if ((v199 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v200 = v199;
                    }

                    else
                    {
                      v200 = 0;
                    }

                    MEMORY[0x1865CD090](v200);
                  }

                  v201 = *(v198 + 2);
                  v240 = *(v198 + 1);
                  v241 = v201;
                  *v242 = *(v198 + 3);
                  *&v242[9] = *(v198 + 57);
                  specialized Optional<A>.hash(into:)();
                  v202 = v198[73];
                  if (v202 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v202 & 1);
                  }

                  v203 = *(v198 + 74);
                  if (*(v198 + 74) == 2)
                  {
                    LOBYTE(v204) = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v203 & 1);
                    MEMORY[0x1865CD060]((v203 >> 8) & 1);
                    MEMORY[0x1865CD060](WORD1(v203) & 1);
                    v204 = BYTE3(v203) & 1;
                  }

                  Hasher._combine(_:)(v204);
                  v205 = v198[78];
                  if (v205 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v205 & 1);
                  }

                  v206 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                  v207 = v224;
                  outlined init with copy of FloatingPointRoundingRule?(&v198[v206[9]], v224);
                  if ((*(v50 + 48))(v207, 1, v49) == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v208 = v226;
                    (*(v50 + 32))(v226, v207, v49);
                    Hasher._combine(_:)(1u);
                    dispatch thunk of Hashable.hash(into:)();
                    (*(v50 + 8))(v208, v49);
                  }

                  v209 = &v198[v206[10]];
                  v210 = v209[8];
                  if (v210 == 255)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v211 = *v209;
                    Hasher._combine(_:)(1u);
                    if (v210)
                    {
                      MEMORY[0x1865CD060](1);
                      if ((v211 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v212 = v211;
                      }

                      else
                      {
                        v212 = 0;
                      }

                      MEMORY[0x1865CD090](v212);
                    }

                    else
                    {
                      MEMORY[0x1865CD060](0);
                      MEMORY[0x1865CD060](v211);
                    }
                  }

                  MEMORY[0x1865CD060](v198[v206[11]]);
                  v213 = v198[v206[12]];
                  if (v213 == 3)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v213);
                  }

                  return (*(v228 + 8))(v44, v45);
                }
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v190 & 1);
                if (v193 != 2)
                {
                  goto LABEL_217;
                }
              }

              v196 = 0;
              goto LABEL_220;
            }
          }

          Hasher._combine(_:)(0);
          v193 = v229;
          if (v191)
          {
            goto LABEL_208;
          }

          goto LABEL_211;
        }

LABEL_203:
        v188 = v227;
        Hasher._combine(_:)(0);
        v189 = *&v219[24];
        if (*&v219[16])
        {
          goto LABEL_200;
        }

        goto LABEL_204;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      DWORD2(v220) = v73;
      if (v71)
      {
        goto LABEL_44;
      }
    }

    Hasher._combine(_:)(0);
    v81 = *(&v218 + 1);
    if (v72)
    {
      goto LABEL_45;
    }

    goto LABEL_187;
  }

  v229 = v20;
  (*(v23 + 32))(v25, v30, v22);
  MEMORY[0x1865CD060](0);
  v40 = *(v25 + 1);
  v41 = swift_getObjectType();
  v42 = (*(v40 + 48))(v41, v40);
  v221 = v23;
  if (v42)
  {
    v43 = 1;
LABEL_14:
    Hasher._combine(_:)(v43);
    v53 = v230;
    v52 = v231;
    goto LABEL_155;
  }

  Hasher._combine(_:)(0);
  (*(v40 + 64))(v41, v40);
  String.hash(into:)();

  (*(v40 + 464))(&v232, v41, v40);
  v245 = v238;
  v246[0] = v239[0];
  *(v246 + 12) = *(v239 + 12);
  *v242 = v234;
  *&v242[16] = v235;
  v243 = v236;
  v244 = v237;
  v240 = v232;
  v241 = v233;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v240) == 1)
  {
    v43 = 0;
    goto LABEL_14;
  }

  v227 = v25;
  v228 = v22;
  v61 = v232;
  v62 = *(&v232 + 1);
  v63 = *(&v233 + 1);
  v214 = v233;
  v64 = *(&v234 + 1);
  v215 = v234;
  v217 = v235;
  v218 = v236;
  v65 = v238;
  *&v219[8] = v237;
  *(&v220 + 1) = *(&v238 + 1);
  v216 = *(&v239[0] + 1);
  v222 = *&v239[0];
  v223 = *&v239[1];
  v224 = BYTE8(v239[1]);
  v225 = BYTE9(v239[1]);
  v66 = BYTE10(v239[1]);
  v67 = BYTE11(v239[1]);
  Hasher._combine(_:)(1u);
  if (v61 == 2)
  {
    v68 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v68 = v61 & 1;
  }

  *&v220 = v65;
  Hasher._combine(_:)(v68);
  if (v62)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v62 + 16));
    v77 = *(v62 + 16);
    if (v77)
    {
      v78 = v62 + 40;
      do
      {

        String.hash(into:)();

        v78 += 16;
        --v77;
      }

      while (v77);
    }

    *v219 = v67;
    if (v63)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    *v219 = v67;
    if (v63)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v53 = v230;
  v52 = v231;
  v127 = *(&v218 + 1);
  v128 = *(&v217 + 1);
  *&v219[24] = v66;
  if (v64)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v25 = v227;
  v22 = v228;
  v129 = v217;
  if (v217)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v129, v130, v131, v132, v133, v134, v135);
    if (v128)
    {
      goto LABEL_122;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v128)
    {
LABEL_122:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v128, v136, v137, v138, v139, v140, v141);
      if (v218)
      {
        goto LABEL_123;
      }

      goto LABEL_129;
    }
  }

  Hasher._combine(_:)(0);
  if (v218)
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v127)
    {
      goto LABEL_124;
    }

    goto LABEL_130;
  }

LABEL_129:
  Hasher._combine(_:)(0);
  if (v127)
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v219[8])
    {
      goto LABEL_125;
    }

LABEL_131:
    v142 = v223;
    Hasher._combine(_:)(0);
    if (*&v219[16])
    {
      goto LABEL_126;
    }

    goto LABEL_132;
  }

LABEL_130:
  Hasher._combine(_:)(0);
  if (!*&v219[8])
  {
    goto LABEL_131;
  }

LABEL_125:
  v142 = v223;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (*&v219[16])
  {
LABEL_126:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_133;
  }

LABEL_132:
  Hasher._combine(_:)(0);
LABEL_133:
  v143 = v142;
  if (v220)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation30NumberFormatStyleConfigurationO10CollectionVAESEAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef, &protocol conformance descriptor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v144 = *(&v220 + 1);
    if (*(&v220 + 1))
    {
      goto LABEL_135;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v144 = *(&v220 + 1);
    if (*(&v220 + 1))
    {
LABEL_135:
      v145 = *v219;
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v144);
      v146 = v222;
      if (v222)
      {
        goto LABEL_136;
      }

LABEL_140:
      Hasher._combine(_:)(0);
      if (v143)
      {
        goto LABEL_137;
      }

LABEL_141:
      Hasher._combine(_:)(0);
      goto LABEL_142;
    }
  }

  v145 = *v219;
  Hasher._combine(_:)(0);
  v146 = v222;
  if (!v222)
  {
    goto LABEL_140;
  }

LABEL_136:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v146);
  if (!v143)
  {
    goto LABEL_141;
  }

LABEL_137:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_142:
  v147 = v224;
  if (v224 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v147 & 1);
  }

  v148 = v225;
  if (v225 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v148 & 1);
  }

  v149 = v219[24];
  if (*&v219[24] == 2)
  {
    v150 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v150 = v149 & 1;
  }

  Hasher._combine(_:)(v150);
  if (v145 == 2)
  {
    v151 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v151 = v145 & 1;
  }

  Hasher._combine(_:)(v151);
  outlined destroy of TermOfAddress?(&v232, &_s10Foundation17LocalePreferencesVSgMd, &_s10Foundation17LocalePreferencesVSgMR);
LABEL_155:
  v152 = &v25[*(v22 + 36)];
  if (v152[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v153 = *v152;
    Hasher._combine(_:)(1u);
    if ((v153 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v154 = v153;
    }

    else
    {
      v154 = 0;
    }

    MEMORY[0x1865CD090](v154);
  }

  v155 = *(v152 + 2);
  v240 = *(v152 + 1);
  v241 = v155;
  *v242 = *(v152 + 3);
  *&v242[9] = *(v152 + 57);
  specialized Optional<A>.hash(into:)();
  v156 = v152[73];
  if (v156 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v156 & 1);
  }

  v157 = *(v152 + 37);
  v158 = v157 | (v152[76] << 16);
  if (v157 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v158 & 1);
    MEMORY[0x1865CD060]((v158 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v158) & 1);
  }

  v159 = v152[77];
  if (v159 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v159 & 1);
  }

  v160 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v161 = v229;
  outlined init with copy of FloatingPointRoundingRule?(&v152[v160[9]], v229);
  if ((*(v53 + 48))(v161, 1, v52) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v162 = v22;
    v163 = v226;
    (*(v53 + 32))(v226, v161, v52);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    v164 = v163;
    v22 = v162;
    (*(v53 + 8))(v164, v52);
  }

  v165 = v221;
  v166 = &v152[v160[10]];
  v167 = v166[8];
  if (v167 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v168 = *v166;
    Hasher._combine(_:)(1u);
    if (v167)
    {
      MEMORY[0x1865CD060](1);
      if ((v168 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v169 = v168;
      }

      else
      {
        v169 = 0;
      }

      MEMORY[0x1865CD090](v169);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v168);
    }
  }

  v170 = v152[v160[11]];
  if (v170 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v170);
  }

  return (*(v165 + 8))(v25, v22);
}

Swift::Int IntegerFormatStyle.Attributed.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  IntegerFormatStyle.Attributed.hash(into:)(v5, a1, v2, v3);
  return Hasher._finalize()();
}

uint64_t IntegerFormatStyle.Attributed.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v27 = a4;
  v8 = type metadata accessor for IntegerFormatStyle.Attributed.Style(0, a2, a3, a5);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v25 - v9;
  type metadata accessor for IntegerFormatStyle.Attributed.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v11 = type metadata accessor for KeyedDecodingContainer();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v15 = type metadata accessor for IntegerFormatStyle.Attributed(0, a2, a3, v14);
  v26 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v25 = v17;
    v33 = v15;
    v19 = v28;
    v21 = v30;
    v20 = v31;
    swift_getWitnessTable();
    v22 = v29;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v13, v22);
    v23 = v25;
    (*(v21 + 32))(v25, v32, v20);
    (*(v26 + 32))(v27, v23, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntegerFormatStyle<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  Hasher.init(_seed:)();
  a4(v7, a2);
  return Hasher._finalize()();
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance IntegerFormatStyle<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance IntegerFormatStyle<A>.Percent(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t IntegerFormatStyle.consuming(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, char *a8@<X8>)
{
  v33 = a1;
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v31 = a8;
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for IntegerParseStrategy(0, a6, WitnessTable, *(a6 + 24));
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = *(a6 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v30 - v19);
  (*(*(a6 - 8) + 16))(v13, v32, a6, v18);
  v13[*(v10 + 44)] = 0;
  v21 = v38;
  IntegerParseStrategy.parse(_:startingAt:in:)(v33, v34, v35, v37, v10, v20);
  if (v21)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v11 + 8))(v13, v10);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v23 = swift_getTupleTypeMetadata2();
    return (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  }

  else
  {
    v24 = *v20;
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = v14;
    v27 = swift_getTupleTypeMetadata2();
    v28 = *(v27 + 48);
    v29 = v31;
    *v31 = v24;
    (*(*(v26 - 8) + 32))(&v29[v28], v20 + v25, v26);
    return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
  }
}

uint64_t protocol witness for RegexComponent.regex.getter in conformance IntegerFormatStyle<A>.Currency(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6E5F8](a1, WitnessTable);
}

uint64_t static RegexComponent<>.localizedInteger(locale:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd, &_s10Foundation18IntegerFormatStyleVySiGMR) + 36);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  *a2 = v10;

  return swift_unknownObjectRetain();
}

uint64_t static RegexComponent<>.localizedIntegerPercentage(locale:)@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMR) + 36);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *v4 = 0x3FF0000000000000;
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  *a2 = v10;

  return swift_unknownObjectRetain();
}

uint64_t static RegexComponent<>.localizedIntegerCurrency(code:locale:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  *a3 = *a2;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMR) + 40);
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

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t outlined init with take of CurrencyFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of ICUNumberFormatterBase.Value(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for IntegerFormatStyle<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for IntegerFormatStyle<A>.Currency(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for IntegerFormatStyle<A>.Percent(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for IntegerFormatStyle.Attributed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IntegerFormatStyle.Attributed.Style(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for IntegerFormatStyle.Attributed.Style(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for IntegerFormatStyle(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for IntegerFormatStyle.Percent(319, v4, v5, v7);
    if (v10 <= 0x3F)
    {
      result = type metadata accessor for IntegerFormatStyle.Currency(319, v4, v5, v9);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t IntegerParseStrategy.init<A>(format:lenient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return IntegerParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for IntegerFormatStyle, a5);
}

{
  return IntegerParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for IntegerFormatStyle.Percent, a5);
}

{
  return IntegerParseStrategy.init<A>(format:lenient:)(a1, a2, a3, a4, type metadata accessor for IntegerFormatStyle.Currency, a5);
}

id IntegerParseStrategy.parse(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v141 = a4;
  v158[6] = *MEMORY[0x1E69E9840];
  v8 = a3[2];
  v7 = a3[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v149 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v142 = &v135 - v10;
  v140 = *(*(a3[4] + 24) + 16);
  v139 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v135 - v11;
  v144 = v7;
  v143 = v8;
  v148 = swift_getAssociatedTypeWitness();
  v136 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v135 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = type metadata accessor for Optional();
  v137 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = (&v135 - v15);
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v135 - v23;
  v25 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  v146 = a2;
  v145 = v22;
  if (v25)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v22, a2);
    v26 = String.init(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26;
  }

  v30 = 7;
  if (((v28 >> 60) & ((v26 & 0x800000000000000) == 0)) != 0)
  {
    v30 = 11;
  }

  v31 = v150;
  IntegerParseStrategy.parse(_:startingAt:in:)(v26, v28, 0xFuLL, v30 | (v29 << 16), a3, v16);
  if (v31)
  {
  }

  if ((*(v17 + 48))(v16, 1, TupleTypeMetadata2) != 1)
  {
    v43 = *(v17 + 32);
    v43(v24, v16, TupleTypeMetadata2);
    v43(v20, v24, TupleTypeMetadata2);
    return (*(v149 + 32))(v141, &v20[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
  }

  v150 = 0;
  (*(v137 + 8))(v16, v14);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v33 = v142;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v34 = v147;
  (*(v144 + 48))(v33, v143);
  (*(v149 + 8))(v33, AssociatedTypeWitness);
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v36 = @"NSDebugDescription";
  v37 = v36;
  if (!isTaggedPointer)
  {
    goto LABEL_19;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v36);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_31;
    case 0x16:
      result = [(__CFString *)v37 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_170;
      }

      v49 = String.init(utf8String:)(result);
      if (v50)
      {
LABEL_32:
        v40 = v49;
        v42 = v50;
LABEL_33:

        goto LABEL_50;
      }

      __break(1u);
LABEL_31:
      v153 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v49 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v50)
      {
        [(__CFString *)v37 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v40 = v151;
        v42 = v152;
        goto LABEL_50;
      }

      goto LABEL_32;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v135 - 2) = v37;
      v39 = v150;
      v40 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v42 = v41;
      v150 = v39;

      goto LABEL_50;
  }

LABEL_19:
  LOBYTE(v151) = 0;
  v155 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v46 = v37;
    v47 = String.init(_nativeStorage:)();
    if (v48)
    {
      v40 = v47;
      v42 = v48;

      goto LABEL_50;
    }

    v155 = [(__CFString *)v46 length];
    if (v155)
    {
      goto LABEL_48;
    }

LABEL_27:
    v40 = 0;
    v42 = 0xE000000000000000;
    goto LABEL_50;
  }

  v45 = v155;
  if (!v155)
  {

    goto LABEL_27;
  }

  if (v154 == 1)
  {
    if (v151)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v51 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_49;
  }

  if (v153)
  {
    if (v151 == 1)
    {
      MEMORY[0x1EEE9AC00](IsCF);
      *(&v135 - 4) = v37;
      *(&v135 - 3) = &v155;
      *(&v135 - 4) = 1536;
      *(&v135 - 1) = v45;
    }

    else
    {
      v53 = [(__CFString *)v37 lengthOfBytesUsingEncoding:4];
      MEMORY[0x1EEE9AC00](v53);
      *(&v135 - 4) = v37;
      *(&v135 - 3) = &v155;
      *(&v135 - 4) = 134217984;
      *(&v135 - 1) = v54;
    }

    v55 = v150;
    v56 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v42 = v57;
    v150 = v55;
    v58 = HIBYTE(v57) & 0xF;
    if ((v57 & 0x2000000000000000) == 0)
    {
      v58 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v58)
    {
      v40 = v56;
      goto LABEL_33;
    }
  }

LABEL_48:
  v51 = String.init(_cocoaString:)();
LABEL_49:
  v40 = v51;
  v42 = v52;
LABEL_50:
  v158[0] = v40;
  v158[1] = v42;
  v155 = 0;
  v156 = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
  MEMORY[0x1865CB0E0](v145, v146);
  MEMORY[0x1865CB0E0](0xD000000000000038, 0x800000018147EBF0);
  _print_unlocked<A, B>(_:_:)();
  v158[5] = MEMORY[0x1E69E6158];
  v158[2] = v155;
  v158[3] = v156;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v59 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v158, &v155);

  outlined destroy of (String, Any)(v158);
  v60 = v155;
  v61 = v156;
  v62 = specialized __RawDictionaryStorage.find<A>(_:)(v155, v156);
  v64 = v63;

  if (v64)
  {
    __break(1u);
    goto LABEL_167;
  }

  v59[(v62 >> 6) + 8] |= 1 << v62;
  v65 = (v59[6] + 16 * v62);
  *v65 = v60;
  v65[1] = v61;
  outlined init with take of Any(&v157, (v59[7] + 32 * v62));
  v66 = v59[2];
  v67 = __OFADD__(v66, 1);
  v68 = v66 + 1;
  if (v67)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v59[2] = v68;
  v69 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v70 = @"NSCocoaErrorDomain";
  v71 = v70;
  if (!v69)
  {
    goto LABEL_57;
  }

  v72 = _objc_getTaggedPointerTag(v70);
  switch(v72)
  {
    case 0:
LABEL_68:
      v153 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v79)
      {
        [(__CFString *)v71 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_85;
      }

      goto LABEL_82;
    case 0x16:
      result = [(__CFString *)v71 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v78)
        {
          goto LABEL_82;
        }

        __break(1u);
        goto LABEL_68;
      }

LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    case 2:
      MEMORY[0x1EEE9AC00](v72);
      *(&v135 - 2) = v71;
      v73 = v150;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v150 = v73;

      goto LABEL_85;
  }

LABEL_57:
  LOBYTE(v151) = 0;
  v155 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  v74 = __CFStringIsCF();
  if (!v74)
  {
    v76 = v71;
    String.init(_nativeStorage:)();
    if (v77 || (v155 = [(__CFString *)v76 length]) == 0)
    {

      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v75 = v155;
  if (!v155)
  {
LABEL_82:

    goto LABEL_85;
  }

  if (v154 != 1)
  {
    if (v153)
    {
      if (v151 == 1)
      {
        MEMORY[0x1EEE9AC00](v74);
        *(&v135 - 4) = v71;
        *(&v135 - 3) = &v155;
        *(&v135 - 4) = 1536;
        *(&v135 - 1) = v75;
      }

      else
      {
        v80 = [(__CFString *)v71 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v80);
        *(&v135 - 4) = v71;
        *(&v135 - 3) = &v155;
        *(&v135 - 4) = 134217984;
        *(&v135 - 1) = v81;
      }

      v82 = v150;
      v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v150 = v82;
      v85 = HIBYTE(v84) & 0xF;
      if ((v84 & 0x2000000000000000) == 0)
      {
        v85 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (v85)
      {
        goto LABEL_82;
      }
    }

LABEL_84:
    String.init(_cocoaString:)();
    goto LABEL_85;
  }

  if (v151)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_85:
  v86 = objc_allocWithZone(NSError);
  v87 = String._bridgeToObjectiveCImpl()();

  v88 = [v86 initWithDomain:v87 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v89 = [v88 domain];
  if (!v89)
  {
    v96 = 0;
    v98 = 0xE000000000000000;
LABEL_126:
    v114 = v71;
    v115 = v114;
    if (!v69)
    {
      goto LABEL_131;
    }

    v116 = _objc_getTaggedPointerTag(v114);
    if (!v116)
    {
      goto LABEL_143;
    }

    if (v116 != 22)
    {
      if (v116 == 2)
      {
        MEMORY[0x1EEE9AC00](v116);
        *(&v135 - 2) = v115;
        v117 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v119 = v118;

        goto LABEL_161;
      }

LABEL_131:
      LOBYTE(v151) = 0;
      v155 = 0;
      LOBYTE(v153) = 0;
      v154 = 0;
      v120 = __CFStringIsCF();
      if (v120)
      {
        v121 = v155;
        if (v155)
        {
          if (v154 == 1)
          {
            if (v151)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v127 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_160;
          }

          if (v153)
          {
            if (v151 == 1)
            {
              MEMORY[0x1EEE9AC00](v120);
              *(&v135 - 4) = v115;
              *(&v135 - 3) = &v155;
              *(&v135 - 4) = 1536;
              *(&v135 - 1) = v121;
            }

            else
            {
              v129 = [(__CFString *)v115 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v129);
              *(&v135 - 4) = v115;
              *(&v135 - 3) = &v155;
              *(&v135 - 4) = 134217984;
              *(&v135 - 1) = v130;
            }

            v131 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v119 = v132;
            v133 = HIBYTE(v132) & 0xF;
            if ((v132 & 0x2000000000000000) == 0)
            {
              v133 = v131 & 0xFFFFFFFFFFFFLL;
            }

            if (v133)
            {
              v117 = v131;

              goto LABEL_161;
            }
          }

LABEL_159:
          v127 = String.init(_cocoaString:)();
LABEL_160:
          v117 = v127;
          v119 = v128;
LABEL_161:
          if (v96 == v117 && v98 == v119)
          {

LABEL_165:
            swift_willThrow();
            return (*(v136 + 8))(v34, v148);
          }

          v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v134)
          {
            goto LABEL_165;
          }

LABEL_168:
          __break(1u);
        }
      }

      else
      {
        v122 = v115;
        v123 = String.init(_nativeStorage:)();
        if (v124)
        {
          v117 = v123;
          v119 = v124;

          goto LABEL_161;
        }

        v155 = [(__CFString *)v122 length];
        if (v155)
        {
          goto LABEL_159;
        }
      }

      v117 = 0;
      v119 = 0xE000000000000000;
      goto LABEL_161;
    }

    result = [(__CFString *)v115 UTF8String];
    if (result)
    {
      v125 = String.init(utf8String:)(result);
      if (v126)
      {
        goto LABEL_144;
      }

      __break(1u);
LABEL_143:
      v153 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v125 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v126)
      {
        [(__CFString *)v115 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v117 = v151;
        v119 = v152;
        goto LABEL_161;
      }

LABEL_144:
      v117 = v125;
      v119 = v126;

      goto LABEL_161;
    }

    goto LABEL_171;
  }

  v90 = v89;
  v91 = _objc_isTaggedPointer(v89);
  v92 = v90;
  v93 = v92;
  if ((v91 & 1) == 0)
  {
    goto LABEL_91;
  }

  v94 = _objc_getTaggedPointerTag(v92);
  if (!v94)
  {
    goto LABEL_104;
  }

  if (v94 != 22)
  {
    if (v94 == 2)
    {
      MEMORY[0x1EEE9AC00](v94);
      *(&v135 - 2) = v93;
      v95 = v150;
      v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v98 = v97;
      v150 = v95;

LABEL_125:
      v34 = v147;
      goto LABEL_126;
    }

LABEL_91:
    LOBYTE(v151) = 0;
    v155 = 0;
    LOBYTE(v153) = 0;
    v154 = 0;
    v99 = __CFStringIsCF();
    if (v99)
    {
      v100 = v155;
      if (v155)
      {
        if (v154 == 1)
        {
          if (v151)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v109 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_123;
        }

        if (v153)
        {
          if (v151 == 1)
          {
            MEMORY[0x1EEE9AC00](v99);
            *(&v135 - 4) = v93;
            *(&v135 - 3) = &v155;
            *(&v135 - 4) = 1536;
            *(&v135 - 1) = v100;
          }

          else
          {
            v111 = [v93 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v111);
            *(&v135 - 4) = v93;
            *(&v135 - 3) = &v155;
            *(&v135 - 4) = 134217984;
            *(&v135 - 1) = v112;
          }

          v106 = v150;
          v107 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v98 = v108;
          v150 = v106;
          v113 = HIBYTE(v108) & 0xF;
          if ((v108 & 0x2000000000000000) == 0)
          {
            v113 = v107 & 0xFFFFFFFFFFFFLL;
          }

          if (v113)
          {
            v96 = v107;
            goto LABEL_106;
          }
        }

LABEL_122:
        v109 = String.init(_cocoaString:)();
LABEL_123:
        v96 = v109;
        v98 = v110;
        goto LABEL_124;
      }
    }

    else
    {
      v101 = v93;
      v102 = String.init(_nativeStorage:)();
      if (v103)
      {
        v96 = v102;
        v98 = v103;

        goto LABEL_125;
      }

      v155 = [v101 length];
      if (v155)
      {
        goto LABEL_122;
      }
    }

    v96 = 0;
    v98 = 0xE000000000000000;
    goto LABEL_125;
  }

  result = [v93 UTF8String];
  if (result)
  {
    v104 = String.init(utf8String:)(result);
    if (v105)
    {
LABEL_105:
      v96 = v104;
      v98 = v105;
LABEL_106:

LABEL_124:
      goto LABEL_125;
    }

    __break(1u);
LABEL_104:
    v153 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v104 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v105)
    {
      [v93 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v96 = v151;
      v98 = v152;
      goto LABEL_124;
    }

    goto LABEL_105;
  }

LABEL_172:
  __break(1u);
  return result;
}

uint64_t IntegerParseStrategy.init<A>(format:lenient:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a7@<X8>)
{
  v11 = a5(0, a3, a4);
  (*(*(v11 - 8) + 32))(a7, a1, v11);
  WitnessTable = swift_getWitnessTable();
  result = type metadata accessor for IntegerParseStrategy(0, v11, WitnessTable, a4);
  *(a7 + *(result + 44)) = a2;
  return result;
}

uint64_t specialized ICULegacyNumberFormatter.parseAsInt<A>(_:upperBound:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v10 = String.UTF16View.distance(from:to:)();
  if (v10)
  {
    v11 = v10;
    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v10, 0);
    v13 = specialized Sequence._copySequenceContents(initializing:)(v16, (v12 + 4), v11, a1, a2, a3, a4);
    swift_bridgeObjectRetain_n();

    if (v13 != v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v16[0]) = 0;
  if (v12[2] >> 31)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v14 = unum_parseInt64();

  if (SLODWORD(v16[0]) > 0)
  {
    return 0;
  }

  *a5 = 0;
  return v14;
}

uint64_t IntegerParseStrategy.parse(_:startingAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  v430 = a4;
  v429 = a3;
  v417 = a2;
  v416 = a1;
  v426 = a6;
  v440[6] = *MEMORY[0x1E69E9840];
  v7 = a5[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v400 = type metadata accessor for Optional();
  v399 = *(v400 - 8);
  MEMORY[0x1EEE9AC00](v400);
  v395 = &v390 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v409 = &v390 - v11;
  v418 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v394 = &v390 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v398 = &v390 - v15;
  v422 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  v423 = *(v422 - 8);
  MEMORY[0x1EEE9AC00](v422);
  v408 = &v390 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v424 = &v390 - v18;
  v420 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v428 = &v390 - v21;
  v421 = a5;
  v22 = a5[4];
  v24 = type metadata accessor for IntegerFormatStyle.Currency(255, AssociatedTypeWitness, v22, v23);
  v397 = type metadata accessor for Optional();
  v396 = *(v397 - 8);
  MEMORY[0x1EEE9AC00](v397);
  v406 = &v390 - v25;
  v407 = v24;
  v405 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v390 - v27;
  v30 = type metadata accessor for IntegerFormatStyle.Percent(255, AssociatedTypeWitness, v22, v29);
  v404 = type metadata accessor for Optional();
  v403 = *(v404 - 8);
  MEMORY[0x1EEE9AC00](v404);
  v414 = &v390 - v31;
  v415 = v30;
  v413 = *(v30 - 1);
  MEMORY[0x1EEE9AC00](v32);
  v402 = &v390 - v33;
  v410 = v22;
  v35 = type metadata accessor for IntegerFormatStyle(255, AssociatedTypeWitness, v22, v34);
  v412 = type metadata accessor for Optional();
  v411 = *(v412 - 8);
  MEMORY[0x1EEE9AC00](v412);
  v37 = &v390 - v36;
  v425 = v7;
  v38 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v39);
  v401 = &v390 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v390 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v390 - v45;
  v47 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = (&v390 - v49);
  v51 = type metadata accessor for ICULegacyNumberFormatter.NumberFormatType(0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v431 = (&v390 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v429 >> 14 >= v430 >> 14)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v63 = *(*(TupleTypeMetadata2 - 8) + 56);
    v64 = v426;
    return v63(v64, 1, 1, TupleTypeMetadata2);
  }

  v393 = v52;
  v390 = v28;
  v392 = AssociatedTypeWitness;
  v55 = v419;
  v391 = *(v38 + 16);
  v391(v46, v419, v425, v53);
  v56 = swift_dynamicCast();
  v57 = *(v47 + 56);
  v58 = v55;
  if (v56)
  {
    v57(v37, 0, 1, v35);
    (*(v47 + 32))(v50, v37, v35);
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v50 + *(v35 + 36), v431, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    swift_storeEnumTagMultiPayload();
    v59 = v50[1];
    inited = *v50;
    v61 = v428;
  }

  else
  {
    v57(v37, 1, 1, v35);
    (*(v411 + 8))(v37, v412);
    v66 = v391;
    (v391)(v43, v55, v425);
    v67 = v414;
    v68 = v415;
    v69 = swift_dynamicCast();
    v70 = v413;
    v71 = *(v413 + 56);
    v61 = v428;
    if (!v69)
    {
      v71(v67, 1, 1, v68);
      (*(v403 + 8))(v67, v404);
      v74 = v58;
      v66(v401, v58, v425);
      v75 = v406;
      v76 = v407;
      v77 = swift_dynamicCast();
      v78 = v405;
      v79 = *(v405 + 56);
      v73 = v422;
      if (v77)
      {
        v79(v75, 0, 1, v76);
        v80 = v390;
        (*(v78 + 32))(v390, v75, v76);
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMd, &_s10Foundation32CurrencyFormatStyleConfigurationO10CollectionV_SS12currencyCodetMR);
        v82 = (v431 + *(v81 + 48));
        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v80 + *(v76 + 40), v431, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
        v83 = v80[3];
        *v82 = v80[2];
        v82[1] = v83;
        swift_storeEnumTagMultiPayload();
        inited = *v80;
        v59 = v80[1];
      }

      else
      {
        v79(v75, 1, 1, v76);
        (*(v396 + 8))(v75, v397);
        v84 = v431;
        *v431 = 0;
        *(v84 + 8) = 1;
        v84[2] = 0;
        v84[3] = 0;
        v84[4] = 0;
        v84[5] = 0x1FFFFFFFELL;
        v84[7] = 0;
        v84[8] = 0;
        v84[6] = 0;
        *(v84 + 18) = 131584;
        *(v84 + 38) = 512;
        v85 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
        v86 = v85[9];
        v87 = type metadata accessor for FloatingPointRoundingRule();
        (*(*(v87 - 8) + 56))(v84 + v86, 1, 1, v87);
        v88 = v84 + v85[10];
        *v88 = 0;
        v88[8] = -1;
        *(v84 + v85[11]) = 3;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _LocaleAutoupdating();
        inited = swift_initStaticObject();
        v59 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
      }

      v58 = v74;
      goto LABEL_13;
    }

    v71(v67, 0, 1, v68);
    v72 = v402;
    (*(v70 + 32))(v402, v67, v68);
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v72 + v68[9], v431, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    swift_storeEnumTagMultiPayload();
    inited = *v72;
    v59 = v72[1];
  }

  v73 = v422;
LABEL_13:
  v89 = *(v58 + *(v421 + 11));
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v431, v61, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
  ObjectType = swift_getObjectType();
  v91 = *(v59 + 64);
  swift_unknownObjectRetain();
  v92 = v91(ObjectType, v59);
  v93 = (v61 + *(v73 + 20));
  *v93 = v92;
  v93[1] = v94;
  *(v61 + *(v73 + 24)) = v89;
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_339;
  }

LABEL_14:
  v95 = static ICULegacyNumberFormatter.cache;
  v96 = qword_1EA7AFFA0;
  v97 = v424;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v61, v424, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v98 = (*(v423 + 80) + 16) & ~*(v423 + 80);
  v99 = swift_allocObject();
  v100 = _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v97, v99 + v98, type metadata accessor for ICULegacyNumberFormatter.Signature);
  MEMORY[0x1EEE9AC00](v100);
  *(&v390 - 2) = v61;
  os_unfair_lock_lock((v96 + 24));
  v101 = v427;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v437, v96 + 16);
  if (v101)
  {
    goto LABEL_376;
  }

  os_unfair_lock_unlock((v96 + 24));
  v102 = v437;
  if (v437)
  {
    v427 = 0;
    goto LABEL_17;
  }

  v146 = partial apply for implicit closure #2 in implicit closure #1 in static ICULegacyNumberFormatter.formatter(for:locale:lenient:)();
  os_unfair_lock_lock((v96 + 24));
  v147 = *(v96 + 16);
  v148 = *(v147 + 16);
  v149 = v428;
  v427 = 0;
  if (v95 < v148)
  {
    *(v96 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  v161 = v408;
  _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v149, v408, type metadata accessor for ICULegacyNumberFormatter.Signature);
  v425 = v146;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v437 = *(v96 + 16);
  v163 = v437;
  *(v96 + 16) = 0x8000000000000000;
  v164 = specialized __RawDictionaryStorage.find<A>(_:)(v161);
  v166 = v163[2];
  v167 = (v165 & 1) == 0;
  v168 = __OFADD__(v166, v167);
  v169 = v166 + v167;
  if (!v168)
  {
    v170 = v163[3];
    v422 = v147;
    if (v170 >= v169)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_345;
      }

      v174 = v163;
      v102 = v425;
      if (v165)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v171 = v165;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v169, isUniquelyReferenced_nonNull_native);
      v172 = v437;
      v164 = specialized __RawDictionaryStorage.find<A>(_:)(v408);
      if ((v171 & 1) != (v173 & 1))
      {
        goto LABEL_377;
      }

      v102 = v425;
      v174 = v172;
      if (v171)
      {
        goto LABEL_55;
      }
    }

LABEL_361:
    v386 = v164;
    v175 = v408;
    v387 = inited;
    v388 = v424;
    _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v408, v424, type metadata accessor for ICULegacyNumberFormatter.Signature);
    v389 = v388;
    inited = v387;
    specialized _NativeDictionary._insert(at:key:value:)(v386, v389, v102, v174);
    goto LABEL_362;
  }

LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
  do
  {
    __break(1u);
LABEL_345:
    LODWORD(v413) = v165;
    v421 = inited;
    v414 = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMd, &_ss18_DictionaryStorageCy10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVAEGMR);
    v419 = static _DictionaryStorage.copy(original:)();
    if (v163[2])
    {
      v372 = (v419 + 64);
      v373 = 1 << *(v419 + 32);
      v415 = (v163 + 8);
      v374 = (v373 + 63) >> 6;
      if (v419 != v163 || v372 >= &v415[8 * v374])
      {
        memmove(v372, v415, 8 * v374);
      }

      v375 = 0;
      *(v419 + 16) = v163[2];
      v376 = 1 << *(v163 + 32);
      v377 = -1;
      if (v376 < 64)
      {
        v377 = ~(-1 << v376);
      }

      v420 = v377 & v163[8];
      v412 = (v376 + 63) >> 6;
      while (v420)
      {
        v378 = __clz(__rbit64(v420));
        v420 &= v420 - 1;
LABEL_359:
        v381 = v378 | (v375 << 6);
        v382 = *(v423 + 72) * v381;
        v383 = v424;
        _s10Foundation24ICULegacyNumberFormatterC0C10FormatTypeOWOcTm_0(v163[6] + v382, v424, type metadata accessor for ICULegacyNumberFormatter.Signature);
        v384 = *(v163[7] + 8 * v381);
        v385 = v419;
        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWObTm_0(v383, *(v419 + 48) + v382, type metadata accessor for ICULegacyNumberFormatter.Signature);
        *(*(v385 + 56) + 8 * v381) = v384;
      }

      v379 = v375;
      while (1)
      {
        v375 = v379 + 1;
        if (__OFADD__(v379, 1))
        {
          break;
        }

        if (v375 >= v412)
        {
          goto LABEL_360;
        }

        v380 = *&v415[8 * v375];
        ++v379;
        if (v380)
        {
          v378 = __clz(__rbit64(v380));
          v420 = (v380 - 1) & v380;
          goto LABEL_359;
        }
      }

      __break(1u);
      goto LABEL_366;
    }

LABEL_360:

    v164 = v414;
    inited = v421;
    v102 = v425;
    v174 = v419;
    if ((v413 & 1) == 0)
    {
      goto LABEL_361;
    }

LABEL_55:
    *(v174[7] + 8 * v164) = v102;

    v175 = v408;
LABEL_362:
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v175, type metadata accessor for ICULegacyNumberFormatter.Signature);
    *(v96 + 16) = v174;

    os_unfair_lock_unlock((v96 + 24));

LABEL_17:
    _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v428, type metadata accessor for ICULegacyNumberFormatter.Signature);
    swift_unknownObjectRelease();

    v103 = String.subscript.getter();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v436 = 0;
    v110 = specialized ICULegacyNumberFormatter.parseAsInt<A>(_:upperBound:)(v103, v104, v106, v108, &v436);
    if ((v111 & 1) == 0)
    {
      v425 = v102;
      v96 = v110;
      v437 = v110;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      v114 = v409;
      v115 = v392;
      dispatch thunk of Numeric.init<A>(exactly:)();
      v116 = v418;
      if ((*(v418 + 48))(v114, 1, v115) != 1)
      {
        v138 = v115;
        v139 = *(v116 + 32);
        v418 = v116 + 32;
        v140 = v114;
        v141 = v398;
        v139(v398, v140, v138);
        v437 = v103;
        v438 = v105;
        *&v439 = v107;
        *(&v439 + 1) = v109;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        v142 = String.Index.init<A>(utf16Offset:in:)();
        swift_unknownObjectRelease();

        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v431, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
        v143 = swift_getTupleTypeMetadata2();
        v144 = *(v143 + 48);
        v145 = v426;
        *v426 = v142;
        v139(v145 + v144, v141, v138);
        return (*(*(v143 - 8) + 56))(v145, 0, 1, v143);
      }

      (*(v399 + 8))(v114, v400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v117 = swift_allocObject();
      isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
      v119 = @"NSDebugDescription";
      v120 = v119;
      if (!isTaggedPointer)
      {
        goto LABEL_38;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v119);
      switch(TaggedPointerTag)
      {
        case 0:
          goto LABEL_74;
        case 0x16:
          v187 = [(__CFString *)v120 UTF8String];
          if (v187)
          {
            v188 = String.init(utf8String:)(v187);
            if (!v189)
            {
              __break(1u);
LABEL_74:
              v434 = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v188 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v189)
              {
                [(__CFString *)v120 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v123 = v432;
                v125 = v433;
                goto LABEL_125;
              }
            }

            v123 = v188;
            v125 = v189;
LABEL_76:

            goto LABEL_125;
          }

LABEL_366:
          __break(1u);
LABEL_367:
          __break(1u);
LABEL_368:
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
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
LABEL_376:
          os_unfair_lock_unlock((v96 + 24));
          __break(1u);
LABEL_377:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          *(&v390 - 2) = v120;
          v122 = v427;
          v123 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v125 = v124;
          v427 = v122;

          goto LABEL_125;
      }

LABEL_38:
      LOBYTE(v432) = 0;
      v437 = 0;
      LOBYTE(v434) = 0;
      v435 = 0;
      IsCF = __CFStringIsCF();
      if (!IsCF)
      {
        v182 = v120;
        v183 = String.init(_nativeStorage:)();
        if (v184)
        {
          v123 = v183;
          v125 = v184;

          goto LABEL_125;
        }

        v437 = [(__CFString *)v182 length];
        if (!v437)
        {

          goto LABEL_70;
        }

LABEL_123:
        v196 = String.init(_cocoaString:)();
        goto LABEL_124;
      }

      v151 = v437;
      if (!v437)
      {

LABEL_70:
        v123 = 0;
        v125 = 0xE000000000000000;
        goto LABEL_125;
      }

      if (v435 != 1)
      {
        if (v434)
        {
          if (v432 == 1)
          {
            MEMORY[0x1EEE9AC00](IsCF);
            *(&v390 - 4) = v120;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 1536;
            *(&v390 - 1) = v151;
          }

          else
          {
            v206 = [(__CFString *)v120 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v206);
            *(&v390 - 4) = v120;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 134217984;
            *(&v390 - 1) = v207;
          }

          v208 = v427;
          v209 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v125 = v210;
          v427 = v208;
          v211 = HIBYTE(v210) & 0xF;
          if ((v210 & 0x2000000000000000) == 0)
          {
            v211 = v209 & 0xFFFFFFFFFFFFLL;
          }

          if (v211)
          {
            v123 = v209;
            goto LABEL_76;
          }
        }

        goto LABEL_123;
      }

      if (v432)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v196 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_124:
      v123 = v196;
      v125 = v197;
LABEL_125:
      v117[4] = v123;
      v117[5] = v125;
      v437 = 0;
      v438 = 0xE000000000000000;
      _StringGuts.grow(_:)(94);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      v432 = v96;
      v212 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v212);

      MEMORY[0x1865CB0E0](0xD00000000000004FLL, 0x800000018147EF40);
      v213 = v437;
      v214 = v438;
      v117[9] = MEMORY[0x1E69E6158];
      v117[6] = v213;
      v117[7] = v214;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
      v215 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)((v117 + 4), &v437);
      swift_setDeallocating();

      outlined destroy of (String, Any)((v117 + 4));
      swift_deallocClassInstance();
      v216 = v437;
      v217 = v438;
      v218 = specialized __RawDictionaryStorage.find<A>(_:)(v437, v438);
      v163 = v219;

      if (v163)
      {
        __break(1u);
LABEL_341:
        __break(1u);
        goto LABEL_342;
      }

      v215[(v218 >> 6) + 8] |= 1 << v218;
      v220 = (v215[6] + 16 * v218);
      *v220 = v216;
      v220[1] = v217;
      v164 = outlined init with take of Any(&v439, (v215[7] + 32 * v218));
      v221 = v215[2];
      v168 = __OFADD__(v221, 1);
      v222 = v221 + 1;
      if (v168)
      {
        goto LABEL_341;
      }

      v215[2] = v222;
      v223 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v224 = @"NSCocoaErrorDomain";
      v225 = v224;
      v226 = v427;
      if (!v223)
      {
        goto LABEL_132;
      }

      v227 = _objc_getTaggedPointerTag(v224);
      switch(v227)
      {
        case 0:
          goto LABEL_143;
        case 0x16:
          v232 = [(__CFString *)v225 UTF8String];
          if (!v232)
          {
            goto LABEL_367;
          }

          String.init(utf8String:)(v232);
          if (!v233)
          {
            __break(1u);
LABEL_143:
            v434 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v234)
            {
              [(__CFString *)v225 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_160;
            }
          }

LABEL_157:

          goto LABEL_160;
        case 2:
          MEMORY[0x1EEE9AC00](v227);
          *(&v390 - 2) = v225;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v427 = v226;

          goto LABEL_160;
      }

LABEL_132:
      LOBYTE(v432) = 0;
      v437 = 0;
      LOBYTE(v434) = 0;
      v435 = 0;
      v228 = __CFStringIsCF();
      if (!v228)
      {
        v230 = v225;
        String.init(_nativeStorage:)();
        if (v231 || (v437 = [(__CFString *)v230 length]) == 0)
        {

          goto LABEL_160;
        }

        goto LABEL_159;
      }

      v229 = v437;
      if (!v437)
      {
        goto LABEL_157;
      }

      if (v435 != 1)
      {
        if (v434)
        {
          if (v432 == 1)
          {
            MEMORY[0x1EEE9AC00](v228);
            *(&v390 - 4) = v225;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 1536;
            *(&v390 - 1) = v229;
          }

          else
          {
            v235 = [(__CFString *)v225 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v235);
            *(&v390 - 4) = v225;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 134217984;
            *(&v390 - 1) = v236;
          }

          v237 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v427 = v226;
          v239 = HIBYTE(v238) & 0xF;
          if ((v238 & 0x2000000000000000) == 0)
          {
            v239 = v237 & 0xFFFFFFFFFFFFLL;
          }

          if (v239)
          {
            goto LABEL_157;
          }
        }

LABEL_159:
        String.init(_cocoaString:)();
        goto LABEL_160;
      }

      if (v432)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_160:
      v240 = objc_allocWithZone(NSError);
      v241 = String._bridgeToObjectiveCImpl()();

      v242 = [v240 initWithDomain:v241 code:2048 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v96 = v242;
      v243 = [v242 domain];
      if (!v243)
      {
        goto LABEL_174;
      }

      v244 = v243;
      v245 = _objc_isTaggedPointer(v243);
      v246 = v244;
      v247 = v246;
      if ((v245 & 1) == 0)
      {
        goto LABEL_166;
      }

      v248 = _objc_getTaggedPointerTag(v246);
      switch(v248)
      {
        case 0:
          goto LABEL_178;
        case 0x16:
          v258 = [v247 UTF8String];
          if (!v258)
          {
            goto LABEL_369;
          }

          v259 = String.init(utf8String:)(v258);
          if (!v260)
          {
            __break(1u);
LABEL_178:
            v434 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v259 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v260)
            {
              [v247 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v250 = v432;
              v252 = v433;
              goto LABEL_207;
            }
          }

          v250 = v259;
          v252 = v260;
LABEL_180:

          goto LABEL_207;
        case 2:
          MEMORY[0x1EEE9AC00](v248);
          *(&v390 - 2) = v247;
          v249 = v427;
          v250 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v252 = v251;
          v427 = v249;

          goto LABEL_208;
      }

LABEL_166:
      LOBYTE(v432) = 0;
      v437 = 0;
      LOBYTE(v434) = 0;
      v435 = 0;
      v253 = __CFStringIsCF();
      if (!v253)
      {
        v255 = v247;
        v256 = String.init(_nativeStorage:)();
        if (v257)
        {
          v250 = v256;
          v252 = v257;

          goto LABEL_208;
        }

        v437 = [v255 length];
        if (!v437)
        {

          goto LABEL_174;
        }

LABEL_205:
        v261 = String.init(_cocoaString:)();
        goto LABEL_206;
      }

      v254 = v437;
      if (!v437)
      {

LABEL_174:
        v250 = 0;
        v252 = 0xE000000000000000;
        goto LABEL_208;
      }

      if (v435 != 1)
      {
        if (v434)
        {
          if (v432 == 1)
          {
            MEMORY[0x1EEE9AC00](v253);
            *(&v390 - 4) = v247;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 1536;
            *(&v390 - 1) = v254;
          }

          else
          {
            v263 = [v247 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v263);
            *(&v390 - 4) = v247;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 134217984;
            *(&v390 - 1) = v264;
          }

          v265 = v427;
          v266 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v252 = v267;
          v427 = v265;
          v268 = HIBYTE(v267) & 0xF;
          if ((v267 & 0x2000000000000000) == 0)
          {
            v268 = v266 & 0xFFFFFFFFFFFFLL;
          }

          if (v268)
          {
            v250 = v266;
            goto LABEL_180;
          }
        }

        goto LABEL_205;
      }

      if (v432)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v261 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_206:
      v250 = v261;
      v252 = v262;
LABEL_207:

LABEL_208:
      v277 = v225;
      v278 = v277;
      if (!v223)
      {
        goto LABEL_213;
      }

      v279 = _objc_getTaggedPointerTag(v277);
      switch(v279)
      {
        case 0:
          goto LABEL_225;
        case 0x16:
          v287 = [(__CFString *)v278 UTF8String];
          if (!v287)
          {
            goto LABEL_368;
          }

          v288 = String.init(utf8String:)(v287);
          if (!v289)
          {
            __break(1u);
LABEL_225:
            v434 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v288 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v289)
            {
              [(__CFString *)v278 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v280 = v432;
              v129 = v433;
              goto LABEL_242;
            }
          }

          v280 = v288;
          v129 = v289;

          goto LABEL_242;
        case 2:
          MEMORY[0x1EEE9AC00](v279);
          *(&v390 - 2) = v278;
          v280 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v129 = v281;

          goto LABEL_242;
      }

LABEL_213:
      LOBYTE(v432) = 0;
      v437 = 0;
      LOBYTE(v434) = 0;
      v435 = 0;
      v282 = __CFStringIsCF();
      if (!v282)
      {
        v284 = v278;
        v285 = String.init(_nativeStorage:)();
        if (v286)
        {
          v280 = v285;
          v129 = v286;

          goto LABEL_242;
        }

        v437 = [(__CFString *)v284 length];
        if (!v437)
        {

          goto LABEL_221;
        }

LABEL_241:
        v280 = String.init(_cocoaString:)();
        v129 = v296;
        goto LABEL_242;
      }

      v283 = v437;
      if (!v437)
      {

LABEL_221:
        v280 = 0;
        v129 = 0xE000000000000000;
        goto LABEL_242;
      }

      if (v435 != 1)
      {
        if (v434)
        {
          if (v432 == 1)
          {
            MEMORY[0x1EEE9AC00](v282);
            *(&v390 - 4) = v278;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 1536;
            *(&v390 - 1) = v283;
          }

          else
          {
            v291 = [(__CFString *)v278 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v291);
            *(&v390 - 4) = v278;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 134217984;
            *(&v390 - 1) = v292;
          }

          v293 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v129 = v294;
          v295 = HIBYTE(v294) & 0xF;
          if ((v294 & 0x2000000000000000) == 0)
          {
            v295 = v293 & 0xFFFFFFFFFFFFLL;
          }

          if (v295)
          {
            v280 = v293;

            goto LABEL_242;
          }
        }

        goto LABEL_241;
      }

      if (v432)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      v280 = String.init<A>(_immortalCocoaString:count:encoding:)();
      v129 = v290;
LABEL_242:
      if (v250 == v280 && v252 == v129)
      {
        goto LABEL_335;
      }

      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v132)
      {
        goto LABEL_336;
      }

      __break(1u);
LABEL_246:
      [v132 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v135 = v432;
      v137 = v433;
LABEL_297:
      v129[4] = v135;
      v129[5] = v137;
      v437 = 0;
      v438 = 0xE000000000000000;
      _StringGuts.grow(_:)(94);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      Double.write<A>(to:)();
      MEMORY[0x1865CB0E0](0xD00000000000004FLL, 0x800000018147EF40);
      v336 = v437;
      v337 = v438;
      v129[9] = MEMORY[0x1E69E6158];
      v129[6] = v336;
      v129[7] = v337;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
      v338 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (String, Any)((v129 + 4), &v437);
      swift_setDeallocating();

      outlined destroy of (String, Any)((v129 + 4));
      swift_deallocClassInstance();
      v339 = v437;
      v340 = v438;
      v341 = specialized __RawDictionaryStorage.find<A>(_:)(v437, v438);
      v343 = v342;

      if (v343)
      {
        __break(1u);
LABEL_364:
        __break(1u);
      }

      v338[(v341 >> 6) + 8] |= 1 << v341;
      v344 = (v338[6] + 16 * v341);
      *v344 = v339;
      v344[1] = v340;
      outlined init with take of Any(&v439, (v338[7] + 32 * v341));
      v345 = v338[2];
      v168 = __OFADD__(v345, 1);
      v346 = v345 + 1;
      if (v168)
      {
        goto LABEL_364;
      }

      v338[2] = v346;
      v347 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
      v348 = @"NSCocoaErrorDomain";
      v349 = v348;
      if (!v347)
      {
        goto LABEL_304;
      }

      v350 = _objc_getTaggedPointerTag(v348);
      switch(v350)
      {
        case 0:
          v434 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          v61 = v96;
          if (v357)
          {
          }

          else
          {
            [(__CFString *)v349 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
          }

          goto LABEL_333;
        case 0x16:
          v355 = [(__CFString *)v349 UTF8String];
          if (!v355)
          {
            goto LABEL_374;
          }

          String.init(utf8String:)(v355);
          if (v356)
          {
            v61 = v96;

            goto LABEL_333;
          }

          goto LABEL_375;
        case 2:
          MEMORY[0x1EEE9AC00](v350);
          *(&v390 - 2) = v349;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_332;
      }

LABEL_304:
      LOBYTE(v432) = 0;
      v437 = 0;
      LOBYTE(v434) = 0;
      v435 = 0;
      v351 = __CFStringIsCF();
      if (!v351)
      {
        v353 = v349;
        String.init(_nativeStorage:)();
        if (v354 || (v437 = [(__CFString *)v353 length]) == 0)
        {

LABEL_332:
          v61 = v96;
          goto LABEL_333;
        }

LABEL_331:
        String.init(_cocoaString:)();
        goto LABEL_332;
      }

      v352 = v437;
      if (!v437)
      {
        goto LABEL_329;
      }

      if (v435 != 1)
      {
        if (v434)
        {
          if (v432 == 1)
          {
            MEMORY[0x1EEE9AC00](v351);
            *(&v390 - 4) = v349;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 1536;
            *(&v390 - 1) = v352;
          }

          else
          {
            v358 = [(__CFString *)v349 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v358);
            *(&v390 - 4) = v349;
            *(&v390 - 3) = &v437;
            *(&v390 - 4) = 134217984;
            *(&v390 - 1) = v359;
          }

          v360 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v362 = HIBYTE(v361) & 0xF;
          if ((v361 & 0x2000000000000000) == 0)
          {
            v362 = v360 & 0xFFFFFFFFFFFFLL;
          }

          if (v362)
          {
LABEL_329:

            goto LABEL_332;
          }
        }

        goto LABEL_331;
      }

      v61 = v96;
      if (v432)
      {
        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
      }

      else
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
      }

      String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_333:
      v363 = objc_allocWithZone(NSError);
      v364 = String._bridgeToObjectiveCImpl()();

      v365 = [v363 initWithDomain:v364 code:2048 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v366 = [v365 domain];
      v367 = static String._unconditionallyBridgeFromObjectiveC(_:)(v366);
      v369 = v368;

      if (v367 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v369 == v370)
      {
LABEL_335:

        goto LABEL_336;
      }

      v371 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v371)
      {
        goto LABEL_336;
      }

      __break(1u);
LABEL_339:
      swift_once();
      goto LABEL_14;
    }

    v112 = specialized ICULegacyNumberFormatter.parseAsDouble<A>(_:upperBound:)(v103, v105, v107, v109, &v436);
    v96 = v426;
    if (v113)
    {
      _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v431, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
      swift_unknownObjectRelease();

      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v63 = *(*(TupleTypeMetadata2 - 8) + 56);
      v64 = v96;
      return v63(v64, 1, 1, TupleTypeMetadata2);
    }

    if (fabs(*&v112) < 9.00719925e15)
    {
      v421 = inited;
      v437 = v112;
      lazy protocol witness table accessor for type Double and conformance Double();
      v126 = v395;
      v127 = v392;
      dispatch thunk of BinaryInteger.init<A>(exactly:)();
      v128 = v418;
      if ((*(v418 + 48))(v126, 1, v127) != 1)
      {
        v425 = v102;
        v178 = *(v128 + 32);
        v178(v394, v126, v127);
        v437 = v103;
        v438 = v105;
        *&v439 = v107;
        *(&v439 + 1) = v109;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        v179 = String.Index.init<A>(utf16Offset:in:)();
        swift_unknownObjectRelease();

        _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v431, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
        v180 = swift_getTupleTypeMetadata2();
        v181 = *(v180 + 48);
        *v96 = v179;
        v178((v96 + v181), v394, v127);
        return (*(*(v180 - 8) + 56))(v96, 0, 1, v180);
      }

      (*(v399 + 8))(v126, v400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v129 = swift_allocObject();
      v130 = _objc_isTaggedPointer(@"NSDebugDescription");
      v131 = @"NSDebugDescription";
      v132 = v131;
      if (!v130)
      {
LABEL_64:
        LOBYTE(v432) = 0;
        v437 = 0;
        LOBYTE(v434) = 0;
        v435 = 0;
        v185 = __CFStringIsCF();
        if (v185)
        {
          v186 = v437;
          inited = v421;
          if (v437)
          {
            if (v435 != 1)
            {
              if (v434)
              {
                v96 = v102;
                if (v432 != 1)
                {
                  goto LABEL_289;
                }

                MEMORY[0x1EEE9AC00](v185);
                *(&v390 - 4) = v132;
                *(&v390 - 3) = &v437;
                *(&v390 - 4) = 1536;
                *(&v390 - 1) = v186;
                goto LABEL_290;
              }

              v96 = v102;
              goto LABEL_295;
            }

            v96 = v102;
            if (v432)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v269 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_296:
            v135 = v269;
            v137 = v270;
            goto LABEL_297;
          }

          v96 = v102;
        }

        else
        {
          v96 = v102;
          v198 = v132;
          v199 = String.init(_nativeStorage:)();
          inited = v421;
          if (v200)
          {
            v135 = v199;
            v137 = v200;

            goto LABEL_297;
          }

          v437 = [v198 length];
          if (v437)
          {
            goto LABEL_295;
          }
        }

        v135 = 0;
        v137 = 0xE000000000000000;
        goto LABEL_297;
      }

      v133 = _objc_getTaggedPointerTag(v131);
      if (v133)
      {
        if (v133 != 22)
        {
          if (v133 == 2)
          {
            v96 = v102;
            MEMORY[0x1EEE9AC00](v133);
            *(&v390 - 2) = v132;
            v134 = v427;
            v135 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v137 = v136;
            v427 = v134;

            inited = v421;
            goto LABEL_297;
          }

          goto LABEL_64;
        }

        v201 = [v132 UTF8String];
        if (!v201)
        {
          goto LABEL_373;
        }

        v96 = v102;
        v202 = String.init(utf8String:)(v201);
        inited = v421;
        if (!v203)
        {
          __break(1u);
          goto LABEL_107;
        }
      }

      else
      {
LABEL_107:
        v96 = v102;
        v434 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v202 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        inited = v421;
        if (!v203)
        {
          goto LABEL_246;
        }
      }

      v135 = v202;
      v137 = v203;
LABEL_109:

      goto LABEL_297;
    }

    v152 = _objc_isTaggedPointer(@"NSDebugDescription");
    v153 = @"NSDebugDescription";
    v154 = v153;
    v155 = v427;
    if (!v152)
    {
      goto LABEL_56;
    }

    v156 = _objc_getTaggedPointerTag(v153);
    if (v156)
    {
      if (v156 != 22)
      {
        if (v156 == 2)
        {
          v96 = v102;
          MEMORY[0x1EEE9AC00](v156);
          *(&v390 - 2) = v154;
          v157 = v155;
          v158 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v160 = v159;
          v427 = v157;

          goto LABEL_250;
        }

LABEL_56:
        LOBYTE(v432) = 0;
        v437 = 0;
        LOBYTE(v434) = 0;
        v435 = 0;
        v176 = __CFStringIsCF();
        if (v176)
        {
          v177 = v437;
          if (!v437)
          {
            v96 = v102;

LABEL_85:
            v158 = 0;
            v160 = 0xE000000000000000;
            goto LABEL_250;
          }

          if (v435 == 1)
          {
            v96 = v102;
            if (v432)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v204 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_249;
          }

          if (v434)
          {
            v96 = v102;
            if (v432 == 1)
            {
              MEMORY[0x1EEE9AC00](v176);
              *(&v390 - 4) = v154;
              *(&v390 - 3) = &v437;
              *(&v390 - 4) = 1536;
              *(&v390 - 1) = v177;
            }

            else
            {
              v271 = [(__CFString *)v154 lengthOfBytesUsingEncoding:4];
              MEMORY[0x1EEE9AC00](v271);
              *(&v390 - 4) = v154;
              *(&v390 - 3) = &v437;
              *(&v390 - 4) = 134217984;
              *(&v390 - 1) = v272;
            }

            v273 = v155;
            v274 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v160 = v275;
            v276 = HIBYTE(v275) & 0xF;
            if ((v275 & 0x2000000000000000) == 0)
            {
              v276 = v274 & 0xFFFFFFFFFFFFLL;
            }

            if (v276)
            {
              v158 = v274;
              v427 = v273;
              goto LABEL_91;
            }

            v427 = v155;
          }

          else
          {
            v96 = v102;
          }
        }

        else
        {
          v96 = v102;
          v190 = v154;
          v191 = String.init(_nativeStorage:)();
          if (v192)
          {
            v158 = v191;
            v160 = v192;

            goto LABEL_250;
          }

          v437 = [(__CFString *)v190 length];
          if (!v437)
          {

            goto LABEL_85;
          }
        }

        v204 = String.init(_cocoaString:)();
LABEL_249:
        v158 = v204;
        v160 = v205;
        goto LABEL_250;
      }

      v193 = [(__CFString *)v154 UTF8String];
      if (!v193)
      {
        goto LABEL_370;
      }

      v96 = v102;
      v194 = String.init(utf8String:)(v193);
      if (v195)
      {
LABEL_90:
        v158 = v194;
        v160 = v195;
LABEL_91:

        goto LABEL_250;
      }

      __break(1u);
    }

    v96 = v102;
    v434 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v194 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v195)
    {
      goto LABEL_90;
    }

    [(__CFString *)v154 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v158 = v432;
    v160 = v433;
LABEL_250:
    v440[0] = v158;
    v440[1] = v160;
    v437 = 0;
    v438 = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    Double.write<A>(to:)();
    MEMORY[0x1865CB0E0](0xD000000000000043, 0x800000018147EEF0);
    v440[5] = MEMORY[0x1E69E6158];
    v440[2] = v437;
    v440[3] = v438;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v297 = static _DictionaryStorage.allocate(capacity:)();
    outlined init with copy of (String, Any)(v440, &v437);

    outlined destroy of (String, Any)(v440);
    v298 = v437;
    v299 = v438;
    v300 = specialized __RawDictionaryStorage.find<A>(_:)(v437, v438);
    v163 = v301;

    if (v163)
    {
      goto LABEL_343;
    }

    v297[(v300 >> 6) + 8] |= 1 << v300;
    v302 = (v297[6] + 16 * v300);
    *v302 = v298;
    v302[1] = v299;
    v164 = outlined init with take of Any(&v439, (v297[7] + 32 * v300));
    v303 = v297[2];
    v168 = __OFADD__(v303, 1);
    v304 = v303 + 1;
  }

  while (v168);
  v297[2] = v304;
  v305 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v306 = @"NSCocoaErrorDomain";
  v307 = v306;
  if (!v305)
  {
    goto LABEL_257;
  }

  v308 = _objc_getTaggedPointerTag(v306);
  switch(v308)
  {
    case 0:
      v434 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v315)
      {
        [(__CFString *)v307 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_285;
      }

      goto LABEL_282;
    case 0x16:
      v313 = [(__CFString *)v307 UTF8String];
      if (!v313)
      {
        goto LABEL_371;
      }

      String.init(utf8String:)(v313);
      if (!v314)
      {
        goto LABEL_372;
      }

      goto LABEL_282;
    case 2:
      MEMORY[0x1EEE9AC00](v308);
      *(&v390 - 2) = v307;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_285;
  }

LABEL_257:
  LOBYTE(v432) = 0;
  v437 = 0;
  LOBYTE(v434) = 0;
  v435 = 0;
  v309 = __CFStringIsCF();
  if (!v309)
  {
    v311 = v307;
    String.init(_nativeStorage:)();
    if (v312 || (v437 = [(__CFString *)v311 length]) == 0)
    {

      goto LABEL_285;
    }

    goto LABEL_284;
  }

  v310 = v437;
  if (!v437)
  {
LABEL_282:

    goto LABEL_285;
  }

  if (v435 != 1)
  {
    if (v434)
    {
      if (v432 == 1)
      {
        MEMORY[0x1EEE9AC00](v309);
        *(&v390 - 4) = v307;
        *(&v390 - 3) = &v437;
        *(&v390 - 4) = 1536;
        *(&v390 - 1) = v310;
      }

      else
      {
        v316 = [(__CFString *)v307 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v316);
        *(&v390 - 4) = v307;
        *(&v390 - 3) = &v437;
        *(&v390 - 4) = 134217984;
        *(&v390 - 1) = v317;
      }

      v318 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v320 = HIBYTE(v319) & 0xF;
      if ((v319 & 0x2000000000000000) == 0)
      {
        v320 = v318 & 0xFFFFFFFFFFFFLL;
      }

      if (v320)
      {
        goto LABEL_282;
      }
    }

LABEL_284:
    String.init(_cocoaString:)();
    goto LABEL_285;
  }

  if (v432)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_285:
  v321 = objc_allocWithZone(NSError);
  v322 = String._bridgeToObjectiveCImpl()();

  v323 = [v321 initWithDomain:v322 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v96 = v323;
  v324 = [v323 domain];
  v325 = static String._unconditionallyBridgeFromObjectiveC(_:)(v324);
  v327 = v326;

  v328 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
  v129 = v329;
  if (v325 == v328 && v327 == v329)
  {
    goto LABEL_335;
  }

  v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v132 & 1) == 0)
  {
    __break(1u);
LABEL_289:
    v330 = [v132 lengthOfBytesUsingEncoding_];
    MEMORY[0x1EEE9AC00](v330);
    *(&v390 - 4) = v132;
    *(&v390 - 3) = &v437;
    *(&v390 - 4) = 134217984;
    *(&v390 - 1) = v331;
LABEL_290:
    v332 = v427;
    v333 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v137 = v334;
    v427 = v332;
    v335 = HIBYTE(v334) & 0xF;
    if ((v334 & 0x2000000000000000) == 0)
    {
      v335 = v333 & 0xFFFFFFFFFFFFLL;
    }

    if (v335)
    {
      v135 = v333;
      goto LABEL_109;
    }

LABEL_295:
    v269 = String.init(_cocoaString:)();
    goto LABEL_296;
  }

LABEL_336:
  swift_willThrow();
  swift_unknownObjectRelease();

  return _s10Foundation24ICULegacyNumberFormatterC9Signature33_ADC49A1B068F5C8BE74334B016A6B679LLVWOhTm_0(v431, type metadata accessor for ICULegacyNumberFormatter.NumberFormatType);
}

uint64_t static IntegerParseStrategy.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v10 = type metadata accessor for IntegerParseStrategy(0, a3, a4, a5);
    v11 = *(a1 + *(v10 + 44)) ^ *(a2 + *(v10 + 44)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntegerParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntegerParseStrategy<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t IntegerParseStrategy.encode(to:)(void *a1, void *a2)
{
  v11 = a2[2];
  v3 = a2[4];
  v10 = a2[3];
  type metadata accessor for IntegerParseStrategy.CodingKeys(255, v11, v10, v3);
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  v8 = v12;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v8)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

Swift::Int IntegerParseStrategy.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 44)));
  return Hasher._finalize()();
}

uint64_t IntegerParseStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegerParseStrategy.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v39 = type metadata accessor for KeyedDecodingContainer();
  v34 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v14 = &v29 - v13;
  v36 = a2;
  v37 = a3;
  v15 = type metadata accessor for IntegerParseStrategy(0, a2, a3, a4);
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v15;
  v31 = v17;
  v40 = a1;
  v19 = v34;
  v20 = v35;
  v42 = 0;
  v21 = v38;
  v22 = v36;
  v23 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v31;
  (*(v20 + 32))(v31, v21, v22);
  v41 = 1;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v19 + 8))(v14, v23);
  v26 = v30;
  v24[*(v30 + 44)] = v25 & 1;
  v27 = v32;
  (*(v32 + 16))(v33, v24, v26);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return (*(v27 + 8))(v24, v26);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntegerParseStrategy<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  IntegerParseStrategy.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t instantiation function for generic protocol witness table for IntegerParseStrategy<A>(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t AttributeScopes.FoundationAttributes.MeasurementAttribute.Component.init(unumberFormatField:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0xB)
  {
    *a2 = 2;
  }

  else
  {
    *a2 = byte_181227DD8[result];
  }

  return result;
}

uint64_t CurrencyFormatStyleConfiguration.Collection.skeleton.getter()
{
  v1 = v0;
  v2 = 0xD000000000000010;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v80 - v4;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  v12 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  if (*(v0 + *(v12 + 44)) > 1u)
  {
    if (*(v0 + *(v12 + 44)) == 2)
    {
      v14 = "sign-accounting-always";
      v13 = 0xD000000000000013;
    }

    else
    {
      v14 = "Invalid Precision";
      v13 = 0xD000000000000014;
    }
  }

  else if (*(v0 + *(v12 + 44)))
  {
    v14 = "unit-width-iso-code";
    v13 = 0xD000000000000010;
  }

  else
  {
    v13 = 0xD000000000000011;
    v14 = "unit-width-short";
  }

  *&v102 = v13;
  *(&v102 + 1) = v14 | 0x8000000000000000;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);

  v109 = v102;
  if ((*(v0 + 8) & 1) == 0)
  {
    v15 = *v0;
    *&v101 = 0x2F656C616373;
    *(&v101 + 1) = 0xE600000000000000;
    specialized NSDecimal.init(_:)(v15);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    *&v102 = v16;
    *(&v102 + 1) = v18;
    LODWORD(v103) = v20;
    if (_So9NSDecimala__length_getter(&v102) || (*&v102 = v17, *(&v102 + 1) = v19, LODWORD(v103) = v21, !_So9NSDecimala__isNegative_getter(&v102)))
    {
      *&v102 = v17;
      *(&v102 + 1) = v19;
      LODWORD(v103) = v21;
      if (_So9NSDecimala__length_getter(&v102))
      {
        *&v100 = 0;
        *(&v100 + 1) = 0xE000000000000000;
        *&v102 = v17;
        *(&v102 + 1) = v19;
        LODWORD(v103) = v21;
        v98 = v102;
        v99 = v21;
        if (_So9NSDecimala__exponent_getter(&v98) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v98 = v102;
            v99 = v103;
            v22 = _So9NSDecimala__exponent_getter(&v98);
            _So9NSDecimala__exponent_setter((v22 - 1), &v102);
            v98 = v102;
            v99 = v103;
          }

          while (_So9NSDecimala__exponent_getter(&v98) > 0);
        }

        v92 = v11;
        v93 = v12;
        v94 = v7;
        v98 = v102;
        v99 = v103;
        if (!_So9NSDecimala__exponent_getter(&v98))
        {
          _So9NSDecimala__exponent_setter(1, &v102);
        }

        v98 = v102;
        v99 = v103;
        if (_So9NSDecimala__length_getter(&v98))
        {
          v11 = 3435973837;
          v12 = 10;
          v81 = v6;
          while (1)
          {
            v98 = v102;
            v99 = v103;
            if (!_So9NSDecimala__exponent_getter(&v98))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v98 = v102;
            v99 = v103;
            v23 = _So9NSDecimala__exponent_getter(&v98);
            _So9NSDecimala__exponent_setter((v23 + 1), &v102);
            v91 = v102;
            v90 = WORD2(v102);
            v83 = WORD3(v102);
            v89 = WORD4(v102);
            v88 = WORD5(v102);
            v87 = WORD6(v102);
            v85 = HIWORD(v102);
            v86 = v103;
            v84 = WORD1(v103);
            NSDecimal.asVariableLengthInteger()(v102 | (WORD2(v102) << 32) | (WORD3(v102) << 48), WORD4(v102) | (WORD5(v102) << 16) | (WORD6(v102) << 32) | (HIWORD(v102) << 48), v103 | (WORD1(v103) << 16));
            v25 = v24;
            v26 = *(v24 + 16);
            v27 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v26);
            v28 = v27;
            *&v98 = v27;
            if (v26)
            {
              break;
            }

            v31 = 48;
LABEL_29:
            while (1)
            {
              v32 = *(v28 + 16);
              if (!v32 || *(v28 + 2 * v32 + 30))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v98 + 16) - 1);
              }

              v28 = v98;
            }

            LODWORD(v98) = v91;
            WORD2(v98) = v90;
            WORD3(v98) = v83;
            WORD4(v98) = v89;
            WORD5(v98) = v88;
            WORD6(v98) = v87;
            HIWORD(v98) = v85;
            LOWORD(v99) = v86;
            HIWORD(v99) = v84;
            NSDecimal.copyVariableLengthInteger(_:)(v28);
            if (v33)
            {
              goto LABEL_123;
            }

            v34 = *(v28 + 16);

            if (HIDWORD(v34))
            {
              __break(1u);
LABEL_123:

              result = swift_unexpectedError();
              __break(1u);
              return result;
            }

            _So9NSDecimala__length_setter(v34, &v98);
            v102 = v98;
            LODWORD(v103) = v99;
            *&v96 = v31;
            v35 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v35);

            v96 = v102;
            v97 = v103;
            v2 = 0xD000000000000010;
            if (!_So9NSDecimala__length_getter(&v96))
            {
              goto LABEL_36;
            }
          }

          v82 = 0;
          v29 = 0;
          v2 = v26 + 15;
          while (1)
          {
            v6 = v2 - 15;
            if ((v2 - 15) > *(v25 + 16))
            {
              break;
            }

            v7 = *(v25 + 2 * v2);
            LODWORD(v27) = swift_isUniquelyReferenced_nonNull_native();
            if ((v27 & 1) == 0)
            {
              v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
              v28 = v27;
            }

            if (v6 > *(v28 + 16))
            {
              goto LABEL_114;
            }

            v30 = v7 | (v29 << 16);
            *(v28 + 2 * v2) = v30 / 0xA;
            v29 = v30 % 0xA;
            if (--v2 == 15)
            {

              *&v98 = v28;
              v31 = v29 | 0x30;
              v6 = v81;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

LABEL_36:
        v98 = v102;
        v99 = v103;
        v36 = _So9NSDecimala__exponent_getter(&v98);
        v7 = v94;
        v12 = v93;
        v11 = v92;
        if (v36 <= 0)
        {
          while (1)
          {
            v98 = v102;
            v99 = v103;
            if (!_So9NSDecimala__exponent_getter(&v98))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v98 = v102;
            v99 = v103;
            v37 = _So9NSDecimala__exponent_getter(&v98);
            _So9NSDecimala__exponent_setter((v37 + 1), &v102);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v98 = v102;
        v99 = v103;
        if (_So9NSDecimala__isNegative_getter(&v98))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v98 = v100;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v38 = String.init<A>(_:)();
        v40 = v39;
      }

      else
      {
        v40 = 0xE100000000000000;
        v38 = 48;
      }
    }

    else
    {
      v40 = 0xE300000000000000;
      v38 = 5136718;
    }

    MEMORY[0x1865CB0E0](v38, v40);

    v102 = v101;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v102, *(&v102 + 1));
  }

  v42 = *(v1 + 40);
  v41 = *(v1 + 48);
  v44 = *(v1 + 56);
  v43 = *(v1 + 64);
  v45 = *(v1 + 72);
  v46 = v1 + *(v12 + 40);
  v47 = *(v46 + 8);
  if (v42 >> 1 == 0xFFFFFFFF && v44 <= 1 && v45 < 2)
  {
    if (v47 == 255)
    {
      goto LABEL_57;
    }

    *&v102 = NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(*v46, v47 & 1);
    *(&v102 + 1) = v48;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    object = *(&v102 + 1);
    countAndFlagsBits = v102;
  }

  else if (v47 == 255)
  {
    v102 = *(v1 + 16);
    v103 = *(v1 + 32);
    v104 = v42;
    v105 = v41;
    v106 = v44;
    v107 = v43;
    v108 = v45;
    *&v98 = NumberFormatStyleConfiguration.Precision.skeleton.getter();
    *(&v98 + 1) = v54;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    object = *(&v98 + 1);
    countAndFlagsBits = v98;
  }

  else
  {
    v51 = *v46;
    v102 = *(v1 + 16);
    v103 = *(v1 + 32);
    v104 = v42;
    v105 = v41;
    v106 = v44;
    v107 = v43;
    v108 = v45;
    v52._countAndFlagsBits = NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(v51, v47 & 1);
    v53 = NumberFormatStyleConfiguration.Precision.skeletonWithRoundingIncrement(stem:)(v52);
    object = v53._object;

    countAndFlagsBits = v53._countAndFlagsBits;
    v2 = 0xD000000000000010;
  }

  MEMORY[0x1865CB0E0](countAndFlagsBits, object);

LABEL_57:
  v55 = *(v1 + 73);
  if (v55 != 2)
  {
    if (v55)
    {
      v56 = 0x666F2D70756F7267;
    }

    else
    {
      v56 = 0;
    }

    if (v55)
    {
      v57 = 0xE900000000000066;
    }

    else
    {
      v57 = 0xE000000000000000;
    }

    MEMORY[0x1865CB0E0](v56, v57);
  }

  v29 = 0xEA00000000006369;
  v58 = *(v1 + 74);
  if (v58 != 2)
  {
    v59 = 0x76656E2D6E676973;
    if ((v58 & 0x100) == 0)
    {
      v59 = 0x7475612D6E676973;
    }

    v60 = 0xE90000000000006FLL;
    if ((v58 & 0x100) != 0)
    {
      v60 = 0xEA00000000007265;
    }

    v61 = 0xEB00000000737961;
    v62 = 0x776C612D6E676973;
    if ((v58 & 0x10000) != 0)
    {
      v62 = 0xD000000000000010;
      v61 = 0x800000018147F0D0;
    }

    if ((v58 & 1) == 0)
    {
      v59 = v62;
      v60 = v61;
    }

    v63 = 0xEF676E69746E756FLL;
    v64 = 0x6363612D6E676973;
    v65 = 0x800000018147F0F0;
    v66 = 0xD00000000000001BLL;
    if ((v58 & 0x10000) == 0)
    {
      v66 = 0xD000000000000016;
      v65 = 0x800000018147F110;
    }

    if ((v58 & 1) == 0)
    {
      v64 = v66;
      v63 = v65;
    }

    v67 = (v58 & 0x1000000) == 0;
    if ((v58 & 0x1000000) != 0)
    {
      v68 = v64;
    }

    else
    {
      v68 = v59;
    }

    if (v67)
    {
      v69 = v60;
    }

    else
    {
      v69 = v63;
    }

    *&v102 = v68;
    *(&v102 + 1) = v69;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v102, *(&v102 + 1));
  }

  v70 = *(v1 + 78);
  if (v70 != 2)
  {
    if (v70)
    {
      v71 = 0xEE00737961776C61;
    }

    else
    {
      v71 = 0xEC0000006F747561;
    }

    *&v102 = 0x2D6C616D69636564;
    *(&v102 + 1) = v71;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v102, *(&v102 + 1));
  }

  outlined init with copy of FloatingPointRoundingRule?(v1 + *(v12 + 36), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of TermOfAddress?(v5, &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
    goto LABEL_98;
  }

  (*(v7 + 32))(v11, v5, v6);
  v72 = v95;
  (*(v7 + 16))(v95, v11, v6);
  LODWORD(v27) = (*(v7 + 88))(v72, v6);
  if (v27 != *MEMORY[0x1E69E7038])
  {
    if (v27 == *MEMORY[0x1E69E7030])
    {
      v73 = v11;
      v75 = 0x800000018147F070;
      v2 = 0xD000000000000017;
      goto LABEL_97;
    }

    if (v27 == *MEMORY[0x1E69E7040])
    {
      v73 = v11;
      v74 = "rounding-mode-ceiling";
      goto LABEL_94;
    }

LABEL_115:
    if (v27 == *MEMORY[0x1E69E7048])
    {
      v73 = v11;
      v75 = 0x800000018147F030;
      v2 += 3;
    }

    else
    {
      v73 = v11;
      if (v27 == *MEMORY[0x1E69E7020])
      {
        v75 = 0x800000018147F010;
        v2 += 2;
      }

      else if (v27 == *MEMORY[0x1E69E7028])
      {
        v75 = 0x800000018147F0B0;
      }

      else
      {
        (*(v7 + 8))(v95, v6);
        v2 = 0;
        v75 = 0xE000000000000000;
      }
    }

    goto LABEL_97;
  }

  v73 = v11;
  v74 = "rounding-mode-half-up";
LABEL_94:
  v75 = (v74 - 32) | 0x8000000000000000;
  v2 = 0xD000000000000015;
LABEL_97:
  *&v102 = v2;
  *(&v102 + 1) = v75;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);

  MEMORY[0x1865CB0E0](v102, *(&v102 + 1));

  (*(v7 + 8))(v73, v6);
LABEL_98:
  if (*(v1 + *(v12 + 48)) <= 1u)
  {
    if (*(v1 + *(v12 + 48)))
    {
      v76 = 0x6669746E65696373;
    }

    else
    {
      v76 = 0;
      v29 = 0xE000000000000000;
    }

    goto LABEL_104;
  }

  if (*(v1 + *(v12 + 48)) == 2)
  {
    v29 = 0xED000074726F6873;
    v76 = 0x2D746361706D6F63;
LABEL_104:
    *&v102 = v76;
    *(&v102 + 1) = v29;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v102, *(&v102 + 1));
  }

  v77 = HIBYTE(*(&v109 + 1)) & 0xFLL;
  if ((*(&v109 + 1) & 0x2000000000000000) == 0)
  {
    v77 = v109 & 0xFFFFFFFFFFFFLL;
  }

  if (v77)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v109, *(&v109 + 1));
    v78 = String.init(_:)();
  }

  else
  {

    return 0;
  }

  return v78;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FormatStyleCapitalizationContext.Option@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FormatStyleCapitalizationContext.Option.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FormatStyleCapitalizationContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FormatStyleCapitalizationContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatStyleCapitalizationContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation32FormatStyleCapitalizationContextV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation32FormatStyleCapitalizationContextV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option()
{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option;
  if (!lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option);
  }

  return result;
}

uint64_t FormatStyleCapitalizationContext.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation32FormatStyleCapitalizationContextV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation32FormatStyleCapitalizationContextV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FormatStyleCapitalizationContext.CodingKeys and conformance FormatStyleCapitalizationContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type FormatStyleCapitalizationContext.Option and conformance FormatStyleCapitalizationContext.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NumberFormatStyleConfiguration.Collection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection.CodingKeys and conformance NumberFormatStyleConfiguration.Collection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v17 = *(v3 + 16);
    v18 = v9;
    *v19 = *(v3 + 48);
    *&v19[9] = *(v3 + 57);
    v16 = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision and conformance NumberFormatStyleConfiguration.Precision();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + 73);
    v16 = 2;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping and conformance NumberFormatStyleConfiguration.Grouping();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 74);
    BYTE2(v17) = *(v3 + 76);
    LOWORD(v17) = v10;
    v16 = 3;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + 77);
    v16 = 4;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    LOBYTE(v17) = 5;
    type metadata accessor for FloatingPointRoundingRule();
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050], &protocol conformance descriptor for FloatingPointRoundingRule);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = (v3 + *(v11 + 40));
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    *&v17 = v13;
    BYTE8(v17) = v12;
    v16 = 6;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement and conformance NumberFormatStyleConfiguration.RoundingIncrement();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v17) = *(v3 + *(v11 + 44));
    v16 = 7;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation and conformance NumberFormatStyleConfiguration.Notation();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NumberFormatStyleConfiguration.Collection.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *v1;
    Hasher._combine(_:)(1u);
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1865CD090](v10);
  }

  v11 = *(v1 + 2);
  v22[0] = *(v1 + 1);
  v22[1] = v11;
  v23[0] = *(v1 + 3);
  *(v23 + 9) = *(v1 + 57);
  specialized Optional<A>.hash(into:)();
  v12 = *(v1 + 73);
  if (v12 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v12 & 1);
  }

  v13 = *(v1 + 37);
  v14 = v13 | (*(v1 + 76) << 16);
  if (v13 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v14 & 1);
    MEMORY[0x1865CD060]((v14 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v14) & 1);
  }

  v15 = *(v1 + 77);
  if (v15 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v15 & 1);
  }

  v16 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v1 + v16[9], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  v17 = (v1 + v16[10]);
  v18 = *(v17 + 8);
  if (v18 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = *v17;
    Hasher._combine(_:)(1u);
    if (v18)
    {
      MEMORY[0x1865CD060](1);
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      MEMORY[0x1865CD090](v20);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v19);
    }
  }

  v21 = *(v1 + v16[11]);
  if (v21 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v21);
  }
}

uint64_t NumberFormatStyleConfiguration.Collection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v30 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v34 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v30 - v5;
  v7 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  v10[8] = 1;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0x1FFFFFFFELL;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0;
  *(v10 + 18) = 131584;
  *(v10 + 38) = 512;
  v11 = v8[11];
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(*(v12 - 8) + 56);
  v33 = v11;
  v13(&v10[v11], 1, 1, v12);
  v14 = &v10[v8[12]];
  *v14 = 0;
  v14[8] = -1;
  v15 = v8[13];
  v10[v15] = 3;
  v16 = a1;
  v17 = a1[3];
  v39 = v16;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection.CodingKeys and conformance NumberFormatStyleConfiguration.Collection.CodingKeys();
  v36 = v6;
  v18 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v38 = v14;
    v31 = v15;
    v19 = v34;
    v20 = v35;
    LOBYTE(v42) = 0;
    v21 = v36;
    v22 = v37;
    *v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10[8] = v23 & 1;
    v46 = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision and conformance NumberFormatStyleConfiguration.Precision();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = v43;
    *(v10 + 1) = v42;
    *(v10 + 2) = v24;
    *(v10 + 3) = v44[0];
    *(v10 + 57) = *(v44 + 9);
    v45 = 2;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping and conformance NumberFormatStyleConfiguration.Grouping();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10[73] = v40;
    v45 = 3;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy and conformance NumberFormatStyleConfiguration.SignDisplayStrategy();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v40;
    v10[76] = BYTE2(v40);
    *(v10 + 37) = v26;
    v45 = 4;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10[77] = v40;
    LOBYTE(v40) = 5;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050], &protocol conformance descriptor for FloatingPointRoundingRule);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of FloatingPointRoundingRule?(v20, &v10[v33]);
    v45 = 6;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement and conformance NumberFormatStyleConfiguration.RoundingIncrement();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v41;
    v28 = v38;
    *v38 = v40;
    v28[8] = v27;
    v45 = 7;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation and conformance NumberFormatStyleConfiguration.Notation();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v19 + 8))(v21, v22);
    v29 = v32;
    v10[v31] = v40;
    outlined init with copy of NumberFormatStyleConfiguration.Collection(v10, v29, type metadata accessor for NumberFormatStyleConfiguration.Collection);
  }

  __swift_destroy_boxed_opaque_existential_1(v39);
  return _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_1(v10, type metadata accessor for NumberFormatStyleConfiguration.Collection);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NumberFormatStyleConfiguration.Collection.CodingKeys()
{
  v1 = *v0;
  v2 = 0x656C616373;
  v3 = 0x6E6F697461746F6ELL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0x676E69646E756F72;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 2)
  {
    v5 = 0x70756F7267;
  }

  if (*v0)
  {
    v2 = 0x6F69736963657270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NumberFormatStyleConfiguration.Collection.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NumberFormatStyleConfiguration.Collection.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection.CodingKeys and conformance NumberFormatStyleConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection.CodingKeys and conformance NumberFormatStyleConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Grouping.description.getter()
{
  if (*v0)
  {
    return 0x726576656ELL;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Grouping.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Grouping.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Grouping.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO8GroupingV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO8GroupingV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option()
{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option;
  if (!lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option);
  }

  return result;
}

uint64_t NumberFormatStyleConfiguration.Grouping.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO8GroupingV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO8GroupingV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.CodingKeys and conformance NumberFormatStyleConfiguration.Grouping.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping.Option and conformance NumberFormatStyleConfiguration.Grouping.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Grouping()
{
  if (*v0)
  {
    return 0x726576656ELL;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t static NumberFormatStyleConfiguration.Precision.significantDigits<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = RangeExpression.clampedLowerAndUpperBounds(_:)(1, 999, a1);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = result;
  }

  *a2 = v7;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.significantDigits(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 40) = 0;
  *(a2 + 56) = 0;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.integerAndFractionLength(integer:fraction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  *(a3 + 32) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
  *(a3 + 56) = 0x80;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.integerLength<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = RangeExpression.clampedLowerAndUpperBounds(_:)(0, 999, a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5 & 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = -127;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.integerLength(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = -127;
  return result;
}

uint64_t static NumberFormatStyleConfiguration.Precision.fractionLength(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = result;
  *(a2 + 56) = 0x80;
  return result;
}

BOOL static NumberFormatStyleConfiguration.Precision.== infix(_:_:)(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return specialized static NumberFormatStyleConfiguration.Precision.Option.== infix(_:_:)(v5, v7);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Precision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Precision.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Precision.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO9PrecisionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO9PrecisionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[1];
  v10[0] = *v2;
  v10[1] = v8;
  v11[0] = v2[2];
  *(v11 + 9) = *(v2 + 41);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option and conformance NumberFormatStyleConfiguration.Precision.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void NumberFormatStyleConfiguration.Precision.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 56);
  if (v4 < 0)
  {
    v9 = *(v0 + 24);
    v10 = *(v0 + 40);
    v14 = v0[4];
    v15 = v0[6];
    v11 = *(v0 + 23);
    v12 = *(v0 + 21);
    v13 = *(v0 + 17);
    MEMORY[0x1865CD060](1);
    if (v2)
    {
      Hasher._combine(_:)(0);
      if ((v9 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v1);
      if ((v9 & 1) == 0)
      {
LABEL_6:
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060]((v13 << 8) | ((v12 | (v11 << 16)) << 40) | v3);
        if ((v10 & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    Hasher._combine(_:)(0);
    if ((v10 & 1) == 0)
    {
LABEL_7:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v14);
      if (v4)
      {
        goto LABEL_13;
      }

LABEL_8:
      Hasher._combine(_:)(1u);
      v8 = v15;
      goto LABEL_9;
    }

LABEL_12:
    Hasher._combine(_:)(0);
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v5 = *(v0 + 15);
  v6 = *(v0 + 13);
  v7 = *(v0 + 9);
  MEMORY[0x1865CD060](0);
  MEMORY[0x1865CD060](v1);
  if ((v3 & 1) == 0)
  {
    Hasher._combine(_:)(1u);
    v8 = v2 | ((v7 | ((v6 | (v5 << 16)) << 32)) << 8);
LABEL_9:
    MEMORY[0x1865CD060](v8);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
}

Swift::Int NumberFormatStyleConfiguration.Precision.hashValue.getter()
{
  Hasher.init(_seed:)();
  NumberFormatStyleConfiguration.Precision.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NumberFormatStyleConfiguration.Precision.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO9PrecisionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO9PrecisionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option and conformance NumberFormatStyleConfiguration.Precision.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v11[1];
    *a2 = v11[0];
    a2[1] = v9;
    a2[2] = v12[0];
    *(a2 + 41) = *(v12 + 9);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NumberFormatStyleConfiguration.Precision.Option(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NumberFormatStyleConfiguration.Precision.Option(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.description.getter()
{
  if (*v0)
  {
    return 0x737961776C61;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO31DecimalSeparatorDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO31DecimalSeparatorDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.Option and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO31DecimalSeparatorDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO31DecimalSeparatorDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.Option and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy()
{
  if (*v0)
  {
    return 0x737961776C61;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t static NumberFormatStyleConfiguration.SignDisplayStrategy.always(includingZero:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = result ^ 1;
  return result;
}

uint64_t NumberFormatStyleConfiguration.SignDisplayStrategy.description.getter()
{
  if (*v0)
  {
    if (v0[1])
    {
      return 0x726576656ELL;
    }

    else
    {
      return 0x6974616D6F747561;
    }
  }

  else if (v0[2])
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys()
{
  v1 = 0x657669746167656ELL;
  if (*v0 != 1)
  {
    v1 = 1869768058;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697469736F70;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.SignDisplayStrategy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v8;
  v19 = 0;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.Option and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v13;
  v18 = v14;
  v17 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v16 = v10;
  v15 = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t NumberFormatStyleConfiguration.SignDisplayStrategy.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v1);
  return MEMORY[0x1865CD060](v2);
}

Swift::Int NumberFormatStyleConfiguration.SignDisplayStrategy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  return Hasher._finalize()();
}

uint64_t NumberFormatStyleConfiguration.SignDisplayStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.SignDisplayStrategy.Option and conformance NumberFormatStyleConfiguration.SignDisplayStrategy.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v19;
    v16 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v17;
    v14 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v11 = v15;
    *a2 = v9;
    a2[1] = v13;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NumberFormatStyleConfiguration.SignDisplayStrategy(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  MEMORY[0x1865CD060](v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.SignDisplayStrategy()
{
  if (*v0)
  {
    if (v0[1])
    {
      return 0x726576656ELL;
    }

    else
    {
      return 0x6974616D6F747561;
    }
  }

  else if (v0[2])
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t NumberFormatStyleConfiguration.Notation.description.getter()
{
  v1 = 0x6669746E65696373;
  if (*v0 != 1)
  {
    v1 = 0x20746361706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Notation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.CodingKeys and conformance NumberFormatStyleConfiguration.Notation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Notation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.CodingKeys and conformance NumberFormatStyleConfiguration.Notation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Notation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO8NotationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO8NotationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.CodingKeys and conformance NumberFormatStyleConfiguration.Notation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.Option and conformance NumberFormatStyleConfiguration.Notation.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t NumberFormatStyleConfiguration.Notation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO8NotationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation30NumberFormatStyleConfigurationO8NotationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.CodingKeys and conformance NumberFormatStyleConfiguration.Notation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation.Option and conformance NumberFormatStyleConfiguration.Notation.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Notation()
{
  v1 = 0x6669746E65696373;
  if (*v0 != 1)
  {
    v1 = 0x20746361706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

Swift::Int NumberFormatStyleConfiguration.RoundingIncrement.hashValue.getter(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x1865CD060](1);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1865CD090](v4);
  }

  else
  {
    MEMORY[0x1865CD060](0);
    MEMORY[0x1865CD060](a1);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NumberFormatStyleConfiguration.RoundingIncrement()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    MEMORY[0x1865CD060](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1865CD090](v2);
  }

  else
  {
    MEMORY[0x1865CD060](0);
    return MEMORY[0x1865CD060](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NumberFormatStyleConfiguration.RoundingIncrement(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    MEMORY[0x1865CD060](1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1865CD090](v4);
  }

  else
  {
    MEMORY[0x1865CD060](0);
    MEMORY[0x1865CD060](v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.RoundingIncrement(uint64_t a1)
{
  if (*(v1 + 8) != 1)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return Double.description.getter();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance NumberFormatStyleConfiguration.RoundingIncrement(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a1 == *a2;
  if ((v2 & 1) == 0)
  {
    v3 = 0;
  }

  if (*(a1 + 8) == 1)
  {
    return v3;
  }

  else
  {
    return (*a1 == *a2) & ~v2;
  }
}

uint64_t CurrencyFormatStyleConfiguration.Collection.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x656C616373;
    v5 = 0x70756F7267;
    if (a1 != 2)
    {
      v5 = 0xD000000000000013;
    }

    if (a1)
    {
      v4 = 0x6F69736963657270;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x61746E6573657270;
    if (a1 != 7)
    {
      v1 = 0x6E6F697461746F6ELL;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD000000000000018;
    if (a1 != 4)
    {
      v2 = 0x676E69646E756F72;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t CurrencyFormatStyleConfiguration.Collection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Collection.CodingKeys and conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v16 = *(v3 + 16);
    v17 = v9;
    *v18 = *(v3 + 48);
    *&v18[9] = *(v3 + 57);
    v15 = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision and conformance NumberFormatStyleConfiguration.Precision();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + 73);
    v15 = 2;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping and conformance NumberFormatStyleConfiguration.Grouping();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LODWORD(v16) = *(v3 + 74);
    v15 = 3;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + 78);
    v15 = 4;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    LOBYTE(v16) = 5;
    type metadata accessor for FloatingPointRoundingRule();
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050], &protocol conformance descriptor for FloatingPointRoundingRule);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = (v3 + v10[10]);
    v12 = *v11;
    LOBYTE(v11) = *(v11 + 8);
    *&v16 = v12;
    BYTE8(v16) = v11;
    v15 = 6;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement and conformance NumberFormatStyleConfiguration.RoundingIncrement();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + v10[11]);
    v15 = 7;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation and conformance CurrencyFormatStyleConfiguration.Presentation();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = *(v3 + v10[12]);
    v15 = 8;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation and conformance NumberFormatStyleConfiguration.Notation();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void CurrencyFormatStyleConfiguration.Collection.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *v1;
    Hasher._combine(_:)(1u);
    if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x1865CD090](v10);
  }

  v11 = *(v1 + 2);
  v22[0] = *(v1 + 1);
  v22[1] = v11;
  v23[0] = *(v1 + 3);
  *(v23 + 9) = *(v1 + 57);
  specialized Optional<A>.hash(into:)();
  v12 = *(v1 + 73);
  if (v12 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v12 & 1);
  }

  v13 = *(v1 + 74);
  if (*(v1 + 74) == 2)
  {
    LOBYTE(v14) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v13 & 1);
    MEMORY[0x1865CD060]((v13 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v13) & 1);
    v14 = BYTE3(v13) & 1;
  }

  Hasher._combine(_:)(v14);
  v15 = *(v1 + 78);
  if (v15 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v15 & 1);
  }

  v16 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v1 + v16[9], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  v17 = (v1 + v16[10]);
  v18 = *(v17 + 8);
  if (v18 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = *v17;
    Hasher._combine(_:)(1u);
    if (v18)
    {
      MEMORY[0x1865CD060](1);
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      MEMORY[0x1865CD090](v20);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v19);
    }
  }

  MEMORY[0x1865CD060](*(v1 + v16[11]));
  v21 = *(v1 + v16[12]);
  if (v21 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v21);
  }
}

uint64_t CurrencyFormatStyleConfiguration.Collection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v28 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v28 - v5;
  v7 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0x1FFFFFFFELL;
  *(v9 + 6) = 0;
  *(v9 + 7) = 0;
  *(v9 + 8) = 0;
  *(v9 + 36) = 512;
  *(v9 + 74) = 2;
  v9[78] = 2;
  v11 = *(v10 + 36);
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(*(v12 - 8) + 56);
  v34 = v11;
  v13(&v9[v11], 1, 1, v12);
  v14 = v7[12];
  v9[v14] = 3;
  v15 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Collection.CodingKeys and conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys();
  v32 = v6;
  v16 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    v22 = v34;
    __swift_destroy_boxed_opaque_existential_1(v35);
    return outlined destroy of TermOfAddress?(&v9[v22], &_ss25FloatingPointRoundingRuleOSgMd, &_ss25FloatingPointRoundingRuleOSgMR);
  }

  else
  {
    v33 = v12;
    v17 = v29;
    v18 = v30;
    LOBYTE(v38) = 0;
    v19 = v31;
    *v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9[8] = v20 & 1;
    v42 = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision and conformance NumberFormatStyleConfiguration.Precision();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = v39;
    *(v9 + 1) = v38;
    *(v9 + 2) = v21;
    *(v9 + 3) = v40[0];
    *(v9 + 57) = *(v40 + 9);
    v41 = 2;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Grouping and conformance NumberFormatStyleConfiguration.Grouping();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9[73] = v36;
    v41 = 3;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v34;
    *(v9 + 74) = v36;
    v41 = 4;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy and conformance NumberFormatStyleConfiguration.DecimalSeparatorDisplayStrategy();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v9[78] = v36;
    LOBYTE(v36) = 5;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule, MEMORY[0x1E69E7050], &protocol conformance descriptor for FloatingPointRoundingRule);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of FloatingPointRoundingRule?(v18, &v9[v23]);
    v41 = 6;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement and conformance NumberFormatStyleConfiguration.RoundingIncrement();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = &v9[v7[10]];
    v25 = v37;
    *v24 = v36;
    v24[8] = v25;
    v41 = 7;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation and conformance CurrencyFormatStyleConfiguration.Presentation();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9[v7[11]] = v36;
    v41 = 8;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Notation and conformance NumberFormatStyleConfiguration.Notation();
    v26 = v32;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v17 + 8))(v26, v19);
    v9[v14] = v36;
    outlined init with copy of NumberFormatStyleConfiguration.Collection(v9, v28, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return _s10Foundation30NumberFormatStyleConfigurationO10CollectionVWOhTm_1(v9, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CurrencyFormatStyleConfiguration.Collection.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Collection.CodingKeys and conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Collection.CodingKeys and conformance CurrencyFormatStyleConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NumberFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NumberFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

double static CurrencyFormatStyleConfiguration.SignDisplayStrategy.automatic.getter@<D0>(_DWORD *a1@<X8>)
{
  *&result = 0x1000100010001;
  *a1 = 65537;
  return result;
}

double static CurrencyFormatStyleConfiguration.SignDisplayStrategy.never.getter@<D0>(_DWORD *a1@<X8>)
{
  *&result = 65793;
  *a1 = 65793;
  return result;
}

uint64_t static CurrencyFormatStyleConfiguration.SignDisplayStrategy.always(showZero:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = result ^ 1;
  *(a2 + 3) = 0;
  return result;
}

double static CurrencyFormatStyleConfiguration.SignDisplayStrategy.accounting.getter@<D0>(_DWORD *a1@<X8>)
{
  *&result = 16842753;
  *a1 = 16842753;
  return result;
}

uint64_t static CurrencyFormatStyleConfiguration.SignDisplayStrategy.accountingAlways(showZero:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = result ^ 1;
  *(a2 + 3) = 1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys()
{
  v1 = 0x6576697469736F70;
  v2 = 1869768058;
  if (*v0 != 2)
  {
    v2 = 0x69746E756F636361;
  }

  if (*v0)
  {
    v1 = 0x657669746167656ELL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrencyFormatStyleConfiguration.SignDisplayStrategy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v14 = v9;
  v12[1] = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = v8;
  v20 = 0;
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.Option and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v10 = v13;
  v19 = v14;
  v18 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v17 = v10;
  v16 = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v15 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void CurrencyFormatStyleConfiguration.SignDisplayStrategy.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  Hasher._combine(_:)(v3);
}

Swift::Int CurrencyFormatStyleConfiguration.SignDisplayStrategy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t CurrencyFormatStyleConfiguration.SignDisplayStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO19SignDisplayStrategyV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = 0;
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.SignDisplayStrategy.Option and conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v21;
    v18 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v9;
    LOBYTE(v9) = v19;
    v16 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v9;
    LOBYTE(v9) = v17;
    v15 = 3;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v14;
    a2[1] = v10;
    a2[2] = v9;
    a2[3] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void protocol witness for Hashable.hash(into:) in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1865CD060](*v0);
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CurrencyFormatStyleConfiguration.SignDisplayStrategy(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  MEMORY[0x1865CD060](v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.CodingKeys and conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.CodingKeys and conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrencyFormatStyleConfiguration.Presentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.CodingKeys and conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.Option and conformance CurrencyFormatStyleConfiguration.Presentation.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CurrencyFormatStyleConfiguration.Presentation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation32CurrencyFormatStyleConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.CodingKeys and conformance CurrencyFormatStyleConfiguration.Presentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type CurrencyFormatStyleConfiguration.Presentation.Option and conformance CurrencyFormatStyleConfiguration.Presentation.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DescriptiveNumberFormatConfiguration.Presentation.Option@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DescriptiveNumberFormatConfiguration.Presentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.Option and conformance DescriptiveNumberFormatConfiguration.Presentation.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int DescriptiveNumberFormatConfiguration.Presentation.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1 + 1);
  return Hasher._finalize()();
}

uint64_t DescriptiveNumberFormatConfiguration.Presentation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO12PresentationV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Presentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation.Option and conformance DescriptiveNumberFormatConfiguration.Presentation.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DescriptiveNumberFormatConfiguration.Presentation.Option()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DescriptiveNumberFormatConfiguration.Presentation.Option(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2 + 1);
  return Hasher._finalize()();
}

uint64_t DescriptiveNumberFormatConfiguration.Collection.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v8;
  v14 = 0;
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation and conformance DescriptiveNumberFormatConfiguration.Presentation();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    lazy protocol witness table accessor for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t DescriptiveNumberFormatConfiguration.Collection.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedDecodingContainerVy10Foundation36DescriptiveNumberFormatConfigurationO10CollectionV10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = 0;
    lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Presentation and conformance DescriptiveNumberFormatConfiguration.Presentation();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v16;
    v13 = 1;
    lazy protocol witness table accessor for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x61746E6573657270;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018147CDF0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DescriptiveNumberFormatConfiguration.Collection.CodingKeys and conformance DescriptiveNumberFormatConfiguration.Collection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DescriptiveNumberFormatConfiguration.Collection()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1 + 1);
  if (v2 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v2);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DescriptiveNumberFormatConfiguration.Collection()
{
  v1 = v0[1];
  MEMORY[0x1865CD060](*v0 + 1);
  if (v1 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DescriptiveNumberFormatConfiguration.Collection(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v2 + 1);
  if (v3 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v3);
  }

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance FloatingPointRoundingRule.CodingValue@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FloatingPointRoundingRule.CodingValue.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t FloatingPointRoundingRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    lazy protocol witness table accessor for type FloatingPointRoundingRule.CodingValue and conformance FloatingPointRoundingRule.CodingValue();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(v6 + 104))(v8, **(&unk_1E69F0CD0 + v12), v5);
    __swift_destroy_boxed_opaque_existential_1(v11);
    (*(v6 + 32))(a2, v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FloatingPointRoundingRule.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69E7038])
  {
    v10 = 0;
  }

  else
  {
    if (v9 != *MEMORY[0x1E69E7030])
    {
      if (v9 == *MEMORY[0x1E69E7040])
      {
        v10 = 2;
        goto LABEL_13;
      }

      if (v9 == *MEMORY[0x1E69E7048])
      {
        v10 = 3;
        goto LABEL_13;
      }

      if (v9 == *MEMORY[0x1E69E7020])
      {
        v10 = 4;
        goto LABEL_13;
      }

      if (v9 == *MEMORY[0x1E69E7028])
      {
        v10 = 5;
        goto LABEL_13;
      }

      (*(v5 + 8))(v8, v4);
    }

    v10 = 1;
  }

LABEL_13:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v12[7] = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  lazy protocol witness table accessor for type FloatingPointRoundingRule.CodingValue and conformance FloatingPointRoundingRule.CodingValue();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys()
{
  if (*v0)
  {
    return 0x676E6974616F6C66;
  }

  else
  {
    return 0x72656765746E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72656765746E69 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E6974616F6C66 && a2 == 0xED0000746E696F50)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys and conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys and conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.RoundingIncrement.encode(to:)(void *a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO17RoundingIncrementO10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO17RoundingIncrementO10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys and conformance NumberFormatStyleConfiguration.RoundingIncrement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a3)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  else
  {
    v11 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for Decodable.init(from:) in conformance NumberFormatStyleConfiguration.RoundingIncrement@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized NumberFormatStyleConfiguration.RoundingIncrement.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  if (v2 == 3)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized NumberFormatStyleConfiguration.Precision.Option.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NumberFormatStyleConfiguration.Precision.Option.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO9PrecisionV6OptionO10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMd, &_ss22KeyedEncodingContainerVy10Foundation30NumberFormatStyleConfigurationO9PrecisionV6OptionO10CodingKeys33_7052156219470F75D5F20BC0C8A29F87LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Precision.Option.CodingKeys and conformance NumberFormatStyleConfiguration.Precision.Option.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *v3;
  v10 = *(v3 + 8);
  v31 = *(v3 + 16);
  v11 = *(v3 + 56);
  if (v11 < 0)
  {
    v15 = *(v3 + 23);
    v24 = *(v3 + 21);
    v25 = v15;
    v26 = *(v3 + 17);
    v27 = *(v3 + 24);
    v23 = v3[4];
    v16 = *(v3 + 40);
    v17 = v3[6];
    v29 = v9;
    v30 = v10 & 1;
    v32 = 2;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    lazy protocol witness table accessor for type Int? and conformance <A> A?();
    v28 = v18;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v22 = v16;
    v21 = v17;
    LOBYTE(v29) = v31;
    HIBYTE(v29) = (v26 | ((v24 | (v25 << 16)) << 32)) >> 48;
    *(&v29 + 5) = (v26 | ((v24 | (v25 << 16)) << 32)) >> 32;
    *(&v29 + 1) = v26;
    v30 = v27 & 1;
    v32 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v23;
    v30 = v22 & 1;
    v32 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = v21;
    v30 = v11 & 1;
    v32 = 5;
    goto LABEL_4;
  }

  v12 = *(v3 + 15);
  v13 = *(v3 + 13);
  v14 = *(v3 + 9);
  LOBYTE(v29) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v29) = v10;
    *(&v29 + 1) = v14;
    HIBYTE(v29) = (v14 | ((v13 | (v12 << 16)) << 32)) >> 48;
    *(&v29 + 5) = (v14 | ((v13 | (v12 << 16)) << 32)) >> 32;
    v30 = v31 & 1;
    v32 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    lazy protocol witness table accessor for type Int? and conformance <A> A?();
LABEL_4:
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double protocol witness for Decodable.init(from:) in conformance NumberFormatStyleConfiguration.Precision.Option@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized NumberFormatStyleConfiguration.Precision.Option.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    a1[2] = v7[0];
    result = *(v7 + 9);
    *(a1 + 41) = *(v7 + 9);
  }

  return result;
}

unint64_t NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (a1 >= 1)
    {
      _StringGuts.grow(_:)(22);

      v79 = 0xD000000000000014;
      v80 = 0x800000018147F1B0;
      v27 = specialized NSDecimal.init(_:)(a1);
      v29 = v28;
      v31 = v30;
      *&v77 = v27;
      *(&v77 + 1) = v28;
      v78 = v30;
      if (!_So9NSDecimala__length_getter(&v77))
      {
        *&v77 = v27;
        *(&v77 + 1) = v29;
        v78 = v31;
        if (_So9NSDecimala__isNegative_getter(&v77))
        {
          goto LABEL_67;
        }
      }

      *&v77 = v27;
      *(&v77 + 1) = v29;
      v78 = v31;
      if (_So9NSDecimala__length_getter(&v77))
      {
        *&v76 = 0;
        *(&v76 + 1) = 0xE000000000000000;
        *&v77 = v27;
        *(&v77 + 1) = v29;
        v78 = v31;
        v74 = v77;
        v75 = v31;
        if (_So9NSDecimala__exponent_getter(&v74) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v74 = v77;
            v75 = v78;
            v32 = _So9NSDecimala__exponent_getter(&v74);
            _So9NSDecimala__exponent_setter((v32 - 1), &v77);
            v74 = v77;
            v75 = v78;
          }

          while (_So9NSDecimala__exponent_getter(&v74) > 0);
        }

        v74 = v77;
        v75 = v78;
        if (!_So9NSDecimala__exponent_getter(&v74))
        {
          _So9NSDecimala__exponent_setter(1, &v77);
        }

        v74 = v77;
        v75 = v78;
        if (_So9NSDecimala__length_getter(&v74))
        {
          while (1)
          {
            v74 = v77;
            v75 = v78;
            if (!_So9NSDecimala__exponent_getter(&v74))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v74 = v77;
            v75 = v78;
            v33 = _So9NSDecimala__exponent_getter(&v74);
            _So9NSDecimala__exponent_setter((v33 + 1), &v77);
            v34 = v77;
            v35 = WORD2(v77);
            v36 = WORD4(v77);
            v37 = WORD5(v77);
            v64 = WORD3(v77);
            v71 = WORD6(v77);
            v68 = HIWORD(v77);
            v70 = v78;
            v66 = HIWORD(v78);
            NSDecimal.asVariableLengthInteger()(v77 | (WORD2(v77) << 32) | (WORD3(v77) << 48), WORD4(v77) | (WORD5(v77) << 16) | (WORD6(v77) << 32) | (HIWORD(v77) << 48), v78 | (HIWORD(v78) << 16));
            v39 = v38;
            v40 = *(v38 + 16);
            v41 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v40);
            *&v74 = v41;
            if (v40)
            {
              break;
            }

            v47 = 48;
LABEL_50:
            while (1)
            {
              v48 = v41[1].i64[0];
              if (!v48 || v41[1].i16[v48 + 7])
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v74 + 16) - 1);
              }

              v41 = v74;
            }

            LODWORD(v74) = v34;
            WORD2(v74) = v35;
            WORD3(v74) = v64;
            WORD4(v74) = v36;
            WORD5(v74) = v37;
            WORD6(v74) = v71;
            HIWORD(v74) = v68;
            LOWORD(v75) = v70;
            HIWORD(v75) = v66;
            NSDecimal.copyVariableLengthInteger(_:)(v41);
            if (v49)
            {
              goto LABEL_83;
            }

            v50 = v41[1].u64[0];

            if (HIDWORD(v50))
            {
              goto LABEL_81;
            }

            _So9NSDecimala__length_setter(v50, &v74);
            v77 = v74;
            v78 = v75;
            *&v72 = v47;
            v51 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v51);

            v72 = v77;
            v73 = v78;
            if (!_So9NSDecimala__length_getter(&v72))
            {
              goto LABEL_57;
            }
          }

          v59 = v37;
          v62 = v35;
          v42 = v34;
          v43 = 0;
          v44 = v40 + 15;
          while ((v44 - 15) <= *(v39 + 16))
          {
            v45 = *(v39 + 2 * v44);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
            }

            if ((v44 - 15) > v41[1].i64[0])
            {
              goto LABEL_78;
            }

            v46 = v45 | (v43 << 16);
            v41->i16[v44] = v46 / 0xA;
            v43 = v46 % 0xA;
            if (--v44 == 15)
            {

              *&v74 = v41;
              v47 = v43 | 0x30;
              v34 = v42;
              v35 = v62;
              v37 = v59;
              goto LABEL_50;
            }
          }

          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_57:
        v74 = v77;
        v75 = v78;
        if (_So9NSDecimala__exponent_getter(&v74) <= 0)
        {
          while (1)
          {
            v74 = v77;
            v75 = v78;
            if (!_So9NSDecimala__exponent_getter(&v74))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v74 = v77;
            v75 = v78;
            v53 = _So9NSDecimala__exponent_getter(&v74);
            _So9NSDecimala__exponent_setter((v53 + 1), &v77);
          }

          goto LABEL_72;
        }

LABEL_73:
        v74 = v77;
        v75 = v78;
        if (_So9NSDecimala__isNegative_getter(&v74))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v74 = v76;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd, &_ss18ReversedCollectionVySSGMR);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v55 = String.init<A>(_:)();
        v54 = v57;
        goto LABEL_76;
      }

LABEL_63:
      v54 = 0xE100000000000000;
      v55 = 48;
LABEL_76:
      MEMORY[0x1865CB0E0](v55, v54);

      return v79;
    }

    return 0;
  }

  if (*&a1 <= 0.0)
  {
    return 0;
  }

  _StringGuts.grow(_:)(22);

  v79 = 0xD000000000000014;
  v80 = 0x800000018147F1B0;
  specialized NSDecimal.init(_:)(*&a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *&v77 = v3;
  *(&v77 + 1) = v5;
  v78 = v7;
  if (!_So9NSDecimala__length_getter(&v77))
  {
    *&v77 = v4;
    *(&v77 + 1) = v6;
    v78 = v8;
    if (_So9NSDecimala__isNegative_getter(&v77))
    {
LABEL_67:
      v55 = 5136718;
      v54 = 0xE300000000000000;
      goto LABEL_76;
    }
  }

  *&v77 = v4;
  *(&v77 + 1) = v6;
  v78 = v8;
  if (!_So9NSDecimala__length_getter(&v77))
  {
    goto LABEL_63;
  }

  *&v76 = 0;
  *(&v76 + 1) = 0xE000000000000000;
  *&v77 = v4;
  *(&v77 + 1) = v6;
  v78 = v8;
  v74 = v77;
  v75 = v8;
  if (_So9NSDecimala__exponent_getter(&v74) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v74 = v77;
      v75 = v78;
      v9 = _So9NSDecimala__exponent_getter(&v74);
      _So9NSDecimala__exponent_setter((v9 - 1), &v77);
      v74 = v77;
      v75 = v78;
    }

    while (_So9NSDecimala__exponent_getter(&v74) > 0);
  }

  v74 = v77;
  v75 = v78;
  if (!_So9NSDecimala__exponent_getter(&v74))
  {
    _So9NSDecimala__exponent_setter(1, &v77);
  }

  v74 = v77;
  v75 = v78;
  if (!_So9NSDecimala__length_getter(&v74))
  {
LABEL_68:
    v74 = v77;
    v75 = v78;
    if (_So9NSDecimala__exponent_getter(&v74) <= 0)
    {
      while (1)
      {
        v74 = v77;
        v75 = v78;
        if (!_So9NSDecimala__exponent_getter(&v74))
        {
          break;
        }

        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v74 = v77;
        v75 = v78;
        v56 = _So9NSDecimala__exponent_getter(&v74);
        _So9NSDecimala__exponent_setter((v56 + 1), &v77);
      }

LABEL_72:
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      goto LABEL_73;
    }

    goto LABEL_73;
  }

  while (1)
  {
    v74 = v77;
    v75 = v78;
    if (!_So9NSDecimala__exponent_getter(&v74))
    {
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    }

    v74 = v77;
    v75 = v78;
    v10 = _So9NSDecimala__exponent_getter(&v74);
    _So9NSDecimala__exponent_setter((v10 + 1), &v77);
    v11 = WORD3(v77);
    v67 = WORD2(v77);
    v69 = v77;
    v63 = WORD5(v77);
    v65 = WORD4(v77);
    v61 = WORD6(v77);
    v12 = HIWORD(v78);
    v58 = HIWORD(v77);
    v60 = v78;
    NSDecimal.asVariableLengthInteger()(v77 | (WORD2(v77) << 32) | (WORD3(v77) << 48), WORD4(v77) | (WORD5(v77) << 16) | (WORD6(v77) << 32) | (HIWORD(v77) << 48), v78 | (HIWORD(v78) << 16));
    v14 = v13;
    v15 = *(v13 + 16);
    v16 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v15);
    *&v74 = v16;
    if (v15)
    {
      break;
    }

    v21 = 48;
LABEL_20:
    for (i = v16[1].i64[0]; i; i = *(v74 + 16))
    {
      if (v16[1].i16[i + 7])
      {
        break;
      }

      if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
      {
        specialized Array.remove(at:)(*(v74 + 16) - 1);
      }

      v16 = v74;
    }

    LODWORD(v74) = v69;
    WORD2(v74) = v67;
    WORD3(v74) = v11;
    WORD4(v74) = v65;
    WORD5(v74) = v63;
    WORD6(v74) = v61;
    HIWORD(v74) = v58;
    LOWORD(v75) = v60;
    HIWORD(v75) = v12;
    NSDecimal.copyVariableLengthInteger(_:)(v16);
    if (v23)
    {
      goto LABEL_83;
    }

    v24 = v16[1].u64[0];

    if (HIDWORD(v24))
    {
      goto LABEL_82;
    }

    _So9NSDecimala__length_setter(v24, &v74);
    v77 = v74;
    v78 = v75;
    *&v72 = v21;
    v25 = static String._uncheckedFromUTF8(_:)();
    MEMORY[0x1865CB0E0](v25);

    v72 = v77;
    v73 = v78;
    if (!_So9NSDecimala__length_getter(&v72))
    {
      goto LABEL_68;
    }
  }

  v17 = 0;
  v18 = v15 + 15;
  while ((v18 - 15) <= *(v14 + 16))
  {
    v19 = *(v14 + 2 * v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    }

    if ((v18 - 15) > v16[1].i64[0])
    {
      goto LABEL_80;
    }

    v20 = v19 | (v17 << 16);
    v16->i16[v18] = v20 / 0xA;
    v17 = v20 % 0xA;
    if (--v18 == 15)
    {

      *&v74 = v16;
      v21 = v17 | 0x30;
      goto LABEL_20;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::String __swiftcall NumberFormatStyleConfiguration.Precision.skeletonWithRoundingIncrement(stem:)(Swift::String stem)
{
  object = stem._object;
  countAndFlagsBits = stem._countAndFlagsBits;
  v39 = *v1;
  v4 = *(v1 + 9) | ((*(v1 + 13) | (*(v1 + 15) << 16)) << 32);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v40 = *(v1 + 8);
  v41 = v6;
  v7 = *(v1 + 25) | ((*(v1 + 29) | (*(v1 + 31) << 16)) << 32);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 41) | ((*(v1 + 45) | (*(v1 + 47) << 16)) << 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  if (String.count.getter() < 1)
  {
    v44 = v39;
    LOBYTE(v45) = v40;
    *(&v45 + 1) = v4;
    HIBYTE(v45) = BYTE6(v4);
    *(&v45 + 5) = WORD2(v4);
    v46 = v5;
    v47 = v41;
    v48 = v7;
    v50 = BYTE6(v7);
    v49 = WORD2(v7);
    v51 = v8;
    v52 = v9;
    v53 = v10;
    v55 = BYTE6(v10);
    v54 = WORD2(v10);
    v56 = v11;
    v57 = v12;
    v13 = NumberFormatStyleConfiguration.Precision.skeleton.getter();
  }

  else
  {
    v34 = v4;
    v35 = v7;
    v36 = v10;
    v37 = v11;
    v38 = v9;
    v42 = countAndFlagsBits;
    v43 = object;
    if ((v12 & 0x80000000) == 0)
    {

LABEL_19:
      v13 = v42;
      v14 = v43;
      goto LABEL_22;
    }

    v15 = v38;
    if (v38)
    {

      v16 = v5;
      goto LABEL_14;
    }

    v17 = v12;
    v33 = v5;
    v44 = 46;
    v45 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](object);
    v32[2] = &v44;
    v19 = v18;

    specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v32, countAndFlagsBits, v19);
    if (v20)
    {
      v21._countAndFlagsBits = 48;
      v21._object = 0xE100000000000000;
      v22 = String.init(repeating:count:)(v21, v8)._countAndFlagsBits;
      v44 = 46;
      v45 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v22);

      v23 = v44;
      v24 = v45;
LABEL_12:
      MEMORY[0x1865CB0E0](v23, v24);
      goto LABEL_13;
    }

    v25 = String.index(after:)();
    specialized Collection.suffix(from:)(v25, countAndFlagsBits, v19);

    if (Substring.distance(from:to:)() >= v8)
    {
LABEL_13:

      v16 = v33;
      LOBYTE(v12) = v17;
      v15 = v38;
LABEL_14:
      if (v40)
      {
        if (v41)
        {
          goto LABEL_19;
        }

        v29 = 0;
      }

      else
      {
        v29 = v39;
      }

      v44 = v39;
      LOBYTE(v45) = v40;
      *(&v45 + 1) = v34;
      HIBYTE(v45) = BYTE6(v34);
      *(&v45 + 5) = WORD2(v34);
      v46 = v16;
      v47 = v41;
      v48 = v35;
      v50 = BYTE6(v35);
      v49 = WORD2(v35);
      v51 = v8;
      v52 = v15;
      v53 = v36;
      v55 = BYTE6(v36);
      v54 = WORD2(v36);
      v56 = v37;
      v57 = v12;
      v30 = NumberFormatStyleConfiguration.Precision.integerStem(min:max:)(v29, v16, v41 & 1);
      v44 = 32;
      v45 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v30);

      MEMORY[0x1865CB0E0](v44, v45);

      goto LABEL_19;
    }

    v26 = Substring.distance(from:to:)();

    if (!__OFSUB__(v8, v26))
    {
      v27._countAndFlagsBits = 48;
      v27._object = 0xE100000000000000;
      v28 = String.init(repeating:count:)(v27, v8 - v26);
      v24 = v28._object;
      v23 = v28._countAndFlagsBits;
      goto LABEL_12;
    }

    __break(1u);
  }

LABEL_22:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

BOOL specialized static NumberFormatStyleConfiguration.Precision.Option.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  if ((v5 & 0x80000000) == 0)
  {
    if ((*(a2 + 56) & 0x80000000) == 0 && v2 == *a2)
    {
      if (v4)
      {
        return (*(a2 + 16) & 1) != 0;
      }

      if ((*(a2 + 16) & 1) == 0 && ((*(a1 + 9) << 8) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 40) | v3) == *(a2 + 8))
      {
        return 1;
      }
    }

    return 0;
  }

  v7 = *(a2 + 56);
  if ((v7 & 0x80000000) == 0)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = a1[4];
  v10 = *(a1 + 40);
  v11 = a1[6];
  v12 = *(a1 + 23);
  v13 = *(a1 + 21);
  v14 = *(a1 + 17);
  if (v3)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 8) & 1) != 0 || v2 != *a2)
    {
      return result;
    }
  }

  if (v8)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 24) & 1) != 0 || ((v14 << 8) | ((v13 | (v12 << 16)) << 40) | v4) != *(a2 + 16))
    {
      return result;
    }
  }

  if (v10)
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }

LABEL_27:
    if (v5)
    {
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v7 & 1) != 0 || v11 != *(a2 + 48))
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((*(a2 + 40) & 1) == 0 && v9 == *(a2 + 32))
  {
    goto LABEL_27;
  }

  return result;
}