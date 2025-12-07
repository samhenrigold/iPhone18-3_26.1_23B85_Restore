uint64_t outlined init with copy of Symbol(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s19TokenGenerationCore6SymbolOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static CharacterSet.swiftIdentifierHead.getter()
{
  CharacterSet.init(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  v0._object = 0x80000001A8FD8CF0;
  v0._countAndFlagsBits = 0x100000000000001FLL;
  CharacterSet.insert(charactersIn:)(v0);
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  v1._countAndFlagsBits = 9732578;
  v1._object = 0xA300000000000000;
  CharacterSet.insert(charactersIn:)(v1);
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  return CharacterSet.insert(charactersIn:)();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay19TokenGenerationCore6ChoiceVG_AHs5NeverOTg504_s19de178Core15wholeNumberRule33_77ABCD41F000EB3C4AAEC3BD7ED6ED2FLL3min3maxAA0F0V4root_ShyAGG12dependenciestSiSg_AKtF011nDigitWholeE16BetweenInclusiveL_0O6Digits0pW0AgH_AiJtSaySiG_AOtFAA6G8VAQXEfU_SayAF6SymbolOGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v21 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v21;
  for (i = (a1 + 32); ; ++i)
  {
    v8 = *i;
    v9 = *a2;
    v10 = *(*i + 16);
    v11 = *(*a2 + 16);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v12 <= v9[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v18 = v11 + v10;
      }

      else
      {
        v18 = v11;
      }

      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18, 1, v9);
      if (*(v8 + 16))
      {
LABEL_7:
        v14 = (v9[3] >> 1) - v9[2];
        result = type metadata accessor for Symbol(0);
        if (v14 < v10)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v15 = v9[2];
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_23;
          }

          v9[2] = v17;
        }

        goto LABEL_16;
      }
    }

    if (v10)
    {
      goto LABEL_21;
    }

LABEL_16:
    v20 = *(v21 + 16);
    v19 = *(v21 + 24);
    if (v20 >= v19 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
    }

    *(v21 + 16) = v20 + 1;
    *(v21 + 8 * v20 + 32) = v9;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + 24 * (v9 | (v8 << 6)));
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];

      specialized Set._Variant.insert(_:)(v14, v11, v12, v13);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5 = *(v2 - 2);

      specialized Set._Variant.insert(_:)(&v6, v5, v4, v3);

      v2 += 3;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t wholeNumberRule(min:max:)(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = a1;
  if (a3)
  {
    if (a5)
    {
      if (one-time initialization token for baseIntegerRules == -1)
      {
LABEL_4:
        rawValue = baseIntegerRules._rawValue;
        v10 = *(baseIntegerRules._rawValue + 2);
        if (v10)
        {
          v11 = *(baseIntegerRules._rawValue + 4);
          v13 = *(baseIntegerRules._rawValue + 5);
          v12 = baseIntegerRules._rawValue + 32;
          v14 = *(baseIntegerRules._rawValue + 6);
          v15 = (2 * v10) | 1;

          result = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_s10ArraySliceVyAFGTt0g5Tf4gX_n(v12, 1, v15);
          *v8 = v11;
          v8[1] = v13;
          v8[2] = v14;
          return result;
        }

        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

LABEL_87:
      swift_once();
      goto LABEL_4;
    }

    v17 = 0xD000000000000014;
    _StringGuts.grow(_:)(28);

    v161 = 0xD00000000000001ALL;
    *&v162 = 0x80000001A8FD8D90;
    v163 = a4;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v22);

    *&v157 = 0x80000001A8FD8D90;
    *&v155 = 0xD00000000000001ALL;
    if ((a4 & 0x8000000000000000) == 0)
    {
      v160 = v8;
      v148 = wholeNumberRule(min:max:)(&v161, 0, 0, a4, 0);
      v6 = v161;
      v153 = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      rawValue = swift_allocObject();
      *(rawValue + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v23 = *(type metadata accessor for Symbol(0) - 8);
      v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v25 = swift_allocObject();
      v150 = xmmword_1A8FC9400;
      *(v25 + 16) = xmmword_1A8FC9400;
      v26 = (v25 + v24);
      *v26 = v6;
      v26[1] = v153;
      swift_storeEnumTagMultiPayload();
      *(rawValue + 32) = v25;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1A8FC9400;
      v28 = (v27 + v24);
      *v28 = 0xD000000000000011;
      v28[1] = 0x80000001A8FD8DB0;
      swift_storeEnumTagMultiPayload();
      *(rawValue + 40) = v27;
      v29 = one-time initialization token for baseIntegerRules;

      if (v29 == -1)
      {
LABEL_12:

        v31 = specialized Set.union<A>(_:)(v30, v148);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v150;
        *(inited + 32) = v6;
        v33 = inited + 32;
        *(inited + 40) = v153;
        a4 = specialized Set.union<A>(_:)(inited, v31);
        swift_setDeallocating();
        outlined destroy of Rule(v33);
        v34 = v160;
        *v160 = v155;
        v35 = v157;
LABEL_36:
        v34[1] = v35;
        v34[2] = rawValue;
        return a4;
      }

LABEL_90:
      swift_once();
      goto LABEL_12;
    }

    if (!__OFSUB__(0, a4))
    {
      v62 = v8;
      v63 = wholeNumberRule(min:max:)(&v161, -a4, 0, 0, 1);
      v64 = v161;
      v154 = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v66 = *(type metadata accessor for Symbol(0) - 8);
      v67 = *(v66 + 72);
      v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_1A8FC9410;
      v70 = (v69 + v68);
      *v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v71 = (v70 + v67);
      *v71 = v64;
      v71[1] = v154;
      swift_storeEnumTagMultiPayload();
      *(v65 + 32) = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v72 = swift_initStackObject();
      *(v72 + 16) = xmmword_1A8FC9400;
      *(v72 + 32) = v64;
      *(v72 + 40) = v154;

      a4 = specialized Set.union<A>(_:)(v72, v63);
      swift_setDeallocating();
      outlined destroy of Rule(v72 + 32);
      *v62 = 0xD00000000000001ALL;
      v62[1] = 0x80000001A8FD8D90;
      v62[2] = v65;
      return a4;
    }

    goto LABEL_93;
  }

  v5 = a2;
  v17 = 0xD000000000000014;
  v160 = a1;
  if (a5)
  {
    _StringGuts.grow(_:)(31);

    v161 = 0xD00000000000001DLL;
    *&v162 = 0x80000001A8FD8DD0;
    v163 = v5;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v18);

    *&v155 = 0x80000001A8FD8DD0;
    *&v153 = 0xD00000000000001DLL;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v19 = digits #1 (in:) in wholeNumberRule(min:max:)(v5);
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v21 + 16) = v20;
        memset_pattern16((v21 + 32), &unk_1A8FCB650, 8 * v20);
      }

      else
      {
        v21 = MEMORY[0x1E69E7CC0];
      }

      nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(&v161, v19, v21);
      v149 = v73;

      v74 = v161;
      v158 = v162;
      v147 = nOrGreaterDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(&v161, v20 + 1);
      v75 = v161;
      v151 = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v77 = *(type metadata accessor for Symbol(0) - 8);
      v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1A8FC9400;
      v80 = (v79 + v78);
      *v80 = v74;
      v80[1] = v158;
      swift_storeEnumTagMultiPayload();
      *(v76 + 32) = v79;
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1A8FC9400;
      v82 = (v81 + v78);
      *v82 = v75;
      v82[1] = v151;
      swift_storeEnumTagMultiPayload();
      *(v76 + 40) = v81;

      v83 = specialized Set.union<A>(_:)(v147, v149);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v84 = swift_initStackObject();
      *(v84 + 16) = xmmword_1A8FC9410;
      *(v84 + 32) = v74;
      *(v84 + 40) = v158;
      *(v84 + 56) = v75;
      *(v84 + 64) = v151;
      a4 = specialized Set.union<A>(_:)(v84, v83);
      swift_setDeallocating();
      swift_arrayDestroy();
      *v160 = 0xD00000000000001DLL;
      v160[1] = 0x80000001A8FD8DD0;
      v160[2] = v76;
      return a4;
    }

    if (!__OFSUB__(0, v5))
    {
      v142 = wholeNumberRule(min:max:)(&v161, 0, 0, -v5, 0);
      v148 = v161;
      a4 = 0x80000001A8FD8DF0;
      v150 = v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v6 = swift_allocObject();
      *&v157 = 2;
      *(v6 + 16) = xmmword_1A8FC9410;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v49 = *(type metadata accessor for Symbol(0) - 8);
      v50 = *(v49 + 72);
      v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1A8FC9410;

      *(v52 + v51) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v53 = (v52 + v51 + v50);
      *v53 = v148;
      v53[1] = v150;
      swift_storeEnumTagMultiPayload();
      *(v6 + 32) = v52;
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1A8FC9400;
      v55 = (v54 + v51);
      v5 = v6;
      *v55 = 0xD000000000000014;
      v55[1] = 0x80000001A8FD8DF0;
      swift_storeEnumTagMultiPayload();
      *(v6 + 40) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v8 = swift_initStackObject();
      *(v8 + 1) = xmmword_1A8FC9410;
      v8[4] = v148;
      *(v8 + 5) = v150;
      v56 = one-time initialization token for baseIntegerRules;

      if (v56 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_94;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    swift_once();
LABEL_22:
    v57 = (baseIntegerRules._rawValue + 48);
    v58 = *(baseIntegerRules._rawValue + 2) + 1;
    while (--v58)
    {
      v6 = *(v57 - 2);
      v59 = *(v57 - 1);
      v60 = *v57;
      if (v6 != v17 || a4 != v59)
      {
        v57 += 3;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      v8[7] = v6;
      v8[8] = v59;
      v8[9] = v60;
      a4 = specialized Set.union<A>(_:)(v8, v142);
      swift_setDeallocating();
      swift_arrayDestroy();
      *v160 = v153;
      v160[1] = v155;
      v160[2] = v5;
      return a4;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  _StringGuts.grow(_:)(32);

  v161 = 0xD000000000000010;
  *&v162 = 0x80000001A8FD8E10;
  v36 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v36);

  MEMORY[0x1AC57C120](6581825, 0xE300000000000000);
  v163 = a4;
  v37 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v37);

  result = MEMORY[0x1AC57C120](0x766973756C636E49, 0xE900000000000065);
  if (v5 == a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1A8FC9400;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v39 = *(type metadata accessor for Symbol(0) - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1A8FC9400;
    v161 = v5;
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    *(v41 + v40) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v42, v43);
    swift_storeEnumTagMultiPayload();

    *(v38 + 32) = v41;
    *v160 = 0xD000000000000010;
    v160[1] = 0x80000001A8FD8E10;
    v160[2] = v38;
    return MEMORY[0x1E69E7CD0];
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      v44 = *(digits #1 (in:) in wholeNumberRule(min:max:)(v5) + 16);

      v45 = *(digits #1 (in:) in wholeNumberRule(min:max:)(a4) + 16);

      if (v44 < v45)
      {
        v46 = digits #1 (in:) in wholeNumberRule(min:max:)(v5);
        v47 = *(v46 + 16);
        if (v47)
        {
          v48 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v48 + 16) = v47;
          memset_pattern16((v48 + 32), &unk_1A8FCB650, 8 * v47);
        }

        else
        {
          v48 = MEMORY[0x1E69E7CC0];
        }

        nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(&v161, v46, v48);
        v146 = v114;

        v115 = v161;
        v155 = v162;
        v143 = nDigitWholeNumberLessThanOrEqualTo #1 (_:) in wholeNumberRule(min:max:)(&v161, a4);
        v116 = v161;
        v163 = MEMORY[0x1E69E7CD0];
        v117 = v44 + 1;
        v17 = MEMORY[0x1E69E7CC0];
        v148 = 0x80000001A8FD8E10;
        v153 = v162;
        if (v45 > v117)
        {
          v140 = v161;
          *&v150 = v115;
          v6 = 2 - v45;
          v118 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            v8 = nDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(&v161, v117);
            v119 = v161;
            v157 = v162;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
            }

            v121 = *(v118 + 2);
            v120 = *(v118 + 3);
            if (v121 >= v120 >> 1)
            {
              v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v118);
            }

            *(v118 + 2) = v121 + 1;
            v122 = &v118[24 * v121];
            *(v122 + 4) = v119;
            *(v122 + 40) = v157;
            specialized Set.formUnion<A>(_:)(v8);
            if (v6 + v117 == 1)
            {
              break;
            }

            v109 = __OFADD__(v117++, 1);
            if (v109)
            {
              goto LABEL_84;
            }
          }

          v17 = MEMORY[0x1E69E7CC0];
          v116 = v140;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
        v123 = swift_initStackObject();
        *(v123 + 16) = xmmword_1A8FC9410;
        *(v123 + 32) = v115;
        *(v123 + 40) = v155;
        *(v123 + 56) = v116;
        *(v123 + 64) = v153;
        v161 = v123;

        specialized Array.append<A>(contentsOf:)(v124);
        v125 = v161;
        v126 = *(v161 + 16);
        if (v126)
        {
          v161 = v17;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v126, 0);
          v17 = v161;
          v127 = *(type metadata accessor for Symbol(0) - 8);
          v128 = (*(v127 + 80) + 32) & ~*(v127 + 80);
          v141 = v125;
          v129 = (v125 + 40);
          do
          {
            v131 = *(v129 - 1);
            v130 = *v129;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
            v132 = swift_allocObject();
            *(v132 + 16) = xmmword_1A8FC9400;
            v133 = (v132 + v128);
            *v133 = v131;
            v133[1] = v130;
            swift_storeEnumTagMultiPayload();
            v161 = v17;
            v134 = *(v17 + 16);
            v135 = *(v17 + 24);

            if (v134 >= v135 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v134 + 1, 1);
              v17 = v161;
            }

            *(v17 + 16) = v134 + 1;
            *(v17 + 8 * v134 + 32) = v132;
            v129 += 3;
            --v126;
          }

          while (v126);

          v125 = v141;
        }

        else
        {
        }

        v136 = specialized Set.union<A>(_:)(v146, v163);
        v137 = specialized Set.union<A>(_:)(v143, v136);
        a4 = specialized Set.union<A>(_:)(v125, v137);

        v138 = v160;
        *v160 = 0xD000000000000010;
LABEL_82:
        v138[1] = 0x80000001A8FD8E10;
        v138[2] = v17;
        return a4;
      }

      v96 = *(digits #1 (in:) in wholeNumberRule(min:max:)(v5) + 16);

      v97 = *(digits #1 (in:) in wholeNumberRule(min:max:)(a4) + 16);

      if (v96 == v97)
      {
        v98 = digits #1 (in:) in wholeNumberRule(min:max:)(v5);
        v99 = digits #1 (in:) in wholeNumberRule(min:max:)(a4);
        nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(&v161, v98, v99);
        a4 = v100;

        v101 = v162;
        *v160 = v161;
        *(v160 + 1) = v101;
        return a4;
      }

      __break(1u);
      goto LABEL_96;
    }

LABEL_35:
    v152 = wholeNumberRule(min:max:)(&v161, v5, 0, -1, 0);
    v85 = v161;
    v139 = v161;
    v159 = v162;
    v144 = wholeNumberRule(min:max:)(&v161, 0, 0, a4, 0);
    v86 = v161;
    v156 = v162;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    rawValue = swift_allocObject();
    *(rawValue + 16) = xmmword_1A8FCB600;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v87 = *(type metadata accessor for Symbol(0) - 8);
    v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_1A8FC9400;
    v90 = (v89 + v88);
    *v90 = v85;
    v90[1] = v159;
    swift_storeEnumTagMultiPayload();
    *(rawValue + 32) = v89;
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1A8FC9400;
    v92 = (v91 + v88);
    *v92 = v86;
    v92[1] = v156;
    swift_storeEnumTagMultiPayload();
    *(rawValue + 40) = v91;
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1A8FC9400;

    *(v93 + v88) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x302DuLL, 0xE200000000000000);
    swift_storeEnumTagMultiPayload();
    *(rawValue + 48) = v93;
    v94 = specialized Set.union<A>(_:)(v144, v152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1A8FC9410;
    *(v95 + 32) = v139;
    *(v95 + 40) = v159;
    *(v95 + 56) = v86;
    *(v95 + 64) = v156;
    a4 = specialized Set.union<A>(_:)(v95, v94);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v34 = v160;
    v35 = 0x80000001A8FD8E10;
    *v160 = 0xD000000000000010;
    goto LABEL_36;
  }

  if ((a4 & 0x8000000000000000) == 0)
  {
    goto LABEL_35;
  }

  if (__OFSUB__(0, a4))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (!__OFSUB__(0, v5))
  {
    a4 = wholeNumberRule(min:max:)(&v161, -a4, 0, -v5, 0);
    v102 = *(&v162 + 1);

    v8 = *(v102 + 16);
    if (!v8)
    {

      v17 = MEMORY[0x1E69E7CC0];
LABEL_81:

      v138 = v160;
      *v160 = 0xD000000000000010;
      goto LABEL_82;
    }

    v145 = a4;
    v148 = 0x80000001A8FD8E10;
    v161 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v17 = v161;
    *&v157 = type metadata accessor for Symbol(0);
    *&v155 = *(*(v157 - 8) + 72);
    *&v153 = *(*(v157 - 8) + 80);
    v5 = (v153 + 32) & ~v153;
    v6 = 32;
    v150 = xmmword_1A8FC9400;
    while (1)
    {
      rawValue = *(v102 + v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1A8FC9400;

      *(v103 + v5) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v104 = *(rawValue + 16);
      v105 = *(v103 + 16);
      v106 = v105 + v104;
      if (__OFADD__(v105, v104))
      {
        goto LABEL_85;
      }

      v107 = *(v103 + 24) >> 1;
      if (v107 < v106)
      {
        if (v105 <= v106)
        {
          v111 = v105 + v104;
        }

        else
        {
          v111 = *(v103 + 16);
        }

        v103 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v111, 1, v103);
        v105 = *(v103 + 16);
        v107 = *(v103 + 24) >> 1;
        if (!*(rawValue + 16))
        {
LABEL_55:
          if (v104)
          {
            goto LABEL_86;
          }

          goto LABEL_56;
        }
      }

      else if (!v104)
      {
        goto LABEL_55;
      }

      if ((v107 - v105) < v104)
      {
        goto LABEL_89;
      }

      swift_arrayInitWithCopy();
      if (v104)
      {
        v108 = *(v103 + 16);
        v109 = __OFADD__(v108, v104);
        v110 = v108 + v104;
        if (v109)
        {
          __break(1u);
          goto LABEL_92;
        }

        *(v103 + 16) = v110;
      }

LABEL_56:
      a4 = v102;

      v161 = v17;
      v113 = *(v17 + 16);
      v112 = *(v17 + 24);
      if (v113 >= v112 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v112 > 1), v113 + 1, 1);
        v17 = v161;
      }

      *(v17 + 16) = v113 + 1;
      *(v17 + 8 * v113 + 32) = v103;
      v6 += 8;
      v8 = (v8 - 1);
      v102 = a4;
      if (!v8)
      {

        a4 = v145;
        goto LABEL_81;
      }
    }
  }

LABEL_97:
  __break(1u);
  return result;
}

uint64_t decimalNumberRule(min:max:significantFigures:)(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, uint64_t a6)
{
  *&v278 = a2;
  v14 = type metadata accessor for Symbol(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  *&v277 = &v253 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FloatingPointRoundingRule();
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v253 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v28 = &v253 - v27;
  if (a6 < 1)
  {
    __break(1u);
LABEL_176:
    swift_once();
LABEL_5:
    v29 = *(baseNumberRules._rawValue + 2);
    if (v29)
    {
      v30 = *(baseNumberRules._rawValue + 5);
      v31 = baseNumberRules._rawValue + 32;
      v32 = *(baseNumberRules._rawValue + 6);
      *a1 = *(baseNumberRules._rawValue + 4);
      *(a1 + 8) = v30;
      *(a1 + 16) = v32;
      v33 = (2 * v29) | 1;

      return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_s10ArraySliceVyAFGTt0g5Tf4gX_n(v31, 1, v33);
    }

    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v279 = v14;
  if (a3)
  {
    if ((a5 & 1) == 0)
    {
      v6 = *&a4;
      v57 = floor(*&a4);
      if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v57 > -9.22337204e18)
        {
          if (v57 < 9.22337204e18)
          {
            v274 = (a6 - 1);
            v58 = wholeNumberRule(min:max:)(&v282, 0, 1, v57, 0);
            v21 = v282;
            v271 = v283;
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
            v60 = *(v15 + 80);
            v61 = (v60 + 32) & ~v60;
            *&v270 = *(v15 + 72);
            *&v272 = v60;
            *&v273 = v59;
            v15 = swift_allocObject();
            v278 = xmmword_1A8FC9400;
            *(v15 + 16) = xmmword_1A8FC9400;
            v269 = v61;
            v62 = (v15 + v61);
            *v62 = v21;
            v62[1] = v271;
            swift_storeEnumTagMultiPayload();
            if ((~a4 & 0x7FF0000000000000) != 0)
            {
              if (*&a4 > -9.22337204e18)
              {
                if (*&a4 < 9.22337204e18)
                {
                  if (!__OFSUB__(*&a4, 1))
                  {
                    *&v259 = *&a4;
                    v263 = v15;
                    v264 = v58;
                    v265 = v21;
                    *&v275 = a6;
                    v276 = a1;
                    *&a4 = 1.81670465e-306;

                    *&v261 = wholeNumberRule(min:max:)(&v282, 0, 1, v6 - 1, 0);
                    v267 = v282;
                    v268 = v283;
                    v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
                    v63 = swift_allocObject();
                    *(v63 + 16) = xmmword_1A8FC9410;
                    v15 = v269;
                    a6 = v270;
                    v21 = v273;
                    v64 = swift_allocObject();
                    *(v64 + 16) = v278;
                    v65 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
                    v258 = 0;
                    *(v64 + v15) = v65;
                    swift_storeEnumTagMultiPayload();
                    *(v63 + 32) = v64;
                    v66 = swift_allocObject();
                    *(v66 + 16) = v278;
                    v67 = (v66 + v15);
                    *v67 = 0x74696769445F5FLL;
                    v67[1] = 0xE700000000000000;
                    swift_storeEnumTagMultiPayload();
                    v262 = v63;
                    *(v63 + 40) = v66;
                    if (one-time initialization token for baseIntegerRules != -1)
                    {
                      swift_once();
                    }

                    a1 = 0;
                    rawValue = baseIntegerRules._rawValue;
                    v68 = baseIntegerRules._rawValue + 48;
                    v47 = -*(baseIntegerRules._rawValue + 2);
                    *&v278 = MEMORY[0x1E69E7CC0];
                    for (i = baseIntegerRules._rawValue + 48; ; v68 = i)
                    {
                      v28 = a1 + 1;
                      v69 = &v68[24 * a1];
                      do
                      {
                        if (v47 + v28 == 1)
                        {
                          v135 = v277;
                          *v277 = 0x6E6F6974704F5F5FLL;
                          *(v135 + 8) = 0xEF74696769446C61;
                          swift_storeEnumTagMultiPayload();
                          v274 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore6SymbolO_Tt1g5(v135, v274);
                          v137 = v269;
                          v136 = v270;
                          v138 = 2 * v270;
                          v257 = v269 + v270;
                          v139 = swift_allocObject();
                          v277 = xmmword_1A8FCB600;
                          *(v139 + 16) = xmmword_1A8FCB600;
                          v140 = (v139 + v137);
                          *v140 = v267;
                          v140[1] = v268;
                          swift_storeEnumTagMultiPayload();

                          *(v140 + v136) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
                          swift_storeEnumTagMultiPayload();
                          v141 = (v139 + v137 + v138);
                          *v141 = 0x74696769445F5FLL;
                          v141[1] = 0xE700000000000000;
                          swift_storeEnumTagMultiPayload();
                          v282 = v139;
                          specialized Array.append<A>(contentsOf:)(v274);
                          v274 = v282;
                          v142 = fabs(v6) - fabs(trunc(v6));
                          if (v6 >= 0.0)
                          {
                            v143 = *&v142;
                          }

                          else
                          {
                            v143 = 0;
                          }

                          if (v6 >= 0.0)
                          {
                            v144 = 0;
                          }

                          else
                          {
                            v144 = *&v142;
                          }

                          fractionalRule(min:max:significantFigures:)(&v282, v144, v6 >= 0.0, v143, v6 < 0.0, v275);
                          i = v145;
                          v146 = v282;
                          v258 = "DigitIntegerBetween";
                          v275 = v283;
                          v147 = swift_allocObject();
                          *(v147 + 16) = v277;
                          v148 = (v147 + v137);
                          v282 = v259;
                          v149 = dispatch thunk of CustomStringConvertible.description.getter();
                          *v148 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v149, v150);
                          swift_storeEnumTagMultiPayload();

                          *(v148 + v136) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
                          swift_storeEnumTagMultiPayload();
                          v151 = (v147 + v137 + 2 * v136);
                          v152 = v146;
                          *v151 = v146;
                          v151[1] = v275;
                          swift_storeEnumTagMultiPayload();
                          v282 = 0;
                          *&v283 = 0xE000000000000000;

                          _StringGuts.grow(_:)(27);
                          MEMORY[0x1AC57C120](0xD000000000000019, v258 | 0x8000000000000000);
                          Double.write<A>(to:)();
                          v125 = v282;
                          v124 = v283;
                          v126 = swift_allocObject();
                          *(v126 + 16) = v277;
                          v153 = v264;
                          v154 = v274;
                          *(v126 + 32) = v263;
                          *(v126 + 40) = v154;
                          *(v126 + 48) = v147;
                          v155 = specialized Set.union<A>(_:)(v278, v153);

                          v156 = specialized Set.union<A>(_:)(i, v155);
                          v131 = specialized Set.union<A>(_:)(v261, v156);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
                          inited = swift_initStackObject();
                          *(inited + 16) = xmmword_1A8FCB610;
                          *(inited + 32) = v265;
                          *(inited + 40) = v271;
                          *(inited + 56) = v152;
                          *(inited + 64) = v275;
                          *(inited + 80) = v267;
                          *(inited + 88) = v268;
                          *(inited + 104) = 0x6E6F6974704F5F5FLL;
                          *(inited + 112) = 0xEF74696769446C61;
                          v134 = v262;
                          goto LABEL_83;
                        }

                        a1 = v28;
                        v49 = (v28 - 1);
                        if (v28 - 1 >= *(rawValue + 16))
                        {
                          goto LABEL_169;
                        }

                        v15 = *(v69 - 2);
                        a6 = *(v69 - 1);
                        v21 = *v69;
                        if (v15 == 0x74696769445F5FLL && a6 == 0xE700000000000000)
                        {
                          break;
                        }

                        ++v28;
                        v69 += 3;
                      }

                      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

                      v71 = v278;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v282 = v71;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 2) + 1, 1);
                        v71 = v282;
                      }

                      v74 = *(v71 + 2);
                      v73 = *(v71 + 3);
                      v75 = v74 + 1;
                      if (v74 >= v73 >> 1)
                      {
                        *&v278 = v74 + 1;
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1);
                        v75 = v278;
                        v71 = v282;
                      }

                      *(v71 + 2) = v75;
                      *&v278 = v71;
                      v76 = &v71[24 * v74];
                      *(v76 + 4) = v15;
                      *(v76 + 5) = a6;
                      *(v76 + 6) = v21;
                    }
                  }

                  goto LABEL_197;
                }

                goto LABEL_194;
              }

              goto LABEL_191;
            }

            goto LABEL_188;
          }

          goto LABEL_185;
        }

        goto LABEL_182;
      }

      goto LABEL_179;
    }

    if (one-time initialization token for baseNumberRules == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_176;
  }

  v6 = *&v278;
  v276 = a1;
  v274 = (a6 - 1);
  if (a5)
  {
    v35 = ceil(*&v278);
    if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v35 > -9.22337204e18)
      {
        if (v35 < 9.22337204e18)
        {
          *&a4 = COERCE_DOUBLE(wholeNumberRule(min:max:)(&v282, v35, 0, 0, 1));
          v21 = v282;
          v270 = v283;
          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
          v37 = *(v15 + 72);
          v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
          *&v272 = *(v15 + 80);
          *&v273 = v36;
          v15 = swift_allocObject();
          v271 = xmmword_1A8FC9400;
          *(v15 + 16) = xmmword_1A8FC9400;
          v269 = v38;
          v39 = (v15 + v38);
          *v39 = v21;
          v39[1] = v270;
          swift_storeEnumTagMultiPayload();
          if ((~v278 & 0x7FF0000000000000) != 0)
          {
            if (v6 > -9.22337204e18)
            {
              if (v6 < 9.22337204e18)
              {
                if (!__OFADD__(v6, 1))
                {
                  *&v259 = v6;
                  v264 = v15;
                  v265 = a4;
                  i = v21;
                  *&v275 = a6;
                  *&a4 = 1.81670465e-306;

                  v262 = wholeNumberRule(min:max:)(&v282, v6 + 1, 0, 0, 1);
                  v267 = v282;
                  v268 = v283;
                  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
                  v40 = swift_allocObject();
                  *(v40 + 16) = xmmword_1A8FC9410;
                  v21 = v269;
                  v15 = v272;
                  a6 = v273;
                  v41 = swift_allocObject();
                  *(v41 + 16) = v271;
                  v42 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
                  v258 = 0;
                  *(v41 + v21) = v42;
                  swift_storeEnumTagMultiPayload();
                  *(v40 + 32) = v41;
                  *&v261 = v37;
                  v43 = swift_allocObject();
                  *(v43 + 16) = v271;
                  v44 = (v43 + v21);
                  *v44 = 0x74696769445F5FLL;
                  v44[1] = 0xE700000000000000;
                  swift_storeEnumTagMultiPayload();
                  v263 = v40;
                  *(v40 + 40) = v43;
                  if (one-time initialization token for baseIntegerRules == -1)
                  {
LABEL_18:
                    a1 = 0;
                    rawValue = baseIntegerRules._rawValue;
                    v46 = baseIntegerRules._rawValue + 48;
                    v47 = -*(baseIntegerRules._rawValue + 2);
                    *&v278 = MEMORY[0x1E69E7CC0];
                    *&v271 = baseIntegerRules._rawValue + 48;
                    while (1)
                    {
                      v28 = a1 + 1;
                      v48 = &v46[24 * a1];
                      do
                      {
                        if (v47 + v28 == 1)
                        {
                          v106 = v277;
                          *v277 = 0x6E6F6974704F5F5FLL;
                          *(v106 + 8) = 0xEF74696769446C61;
                          swift_storeEnumTagMultiPayload();
                          v274 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore6SymbolO_Tt1g5(v106, v274);
                          v107 = v261;
                          v108 = 2 * v261;
                          v109 = v269;
                          v257 = v269 + v261;
                          v110 = swift_allocObject();
                          v277 = xmmword_1A8FCB600;
                          *(v110 + 16) = xmmword_1A8FCB600;
                          v111 = (v110 + v109);
                          *v111 = v267;
                          v111[1] = v268;
                          swift_storeEnumTagMultiPayload();

                          *(v111 + v107) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
                          swift_storeEnumTagMultiPayload();
                          v112 = v110 + v109 + v108;
                          *v112 = *&a4;
                          *(v112 + 8) = 0xE700000000000000;
                          swift_storeEnumTagMultiPayload();
                          v282 = v110;
                          specialized Array.append<A>(contentsOf:)(v274);
                          v274 = v282;
                          v113 = fabs(v6) - fabs(trunc(v6));
                          if (v6 < 0.0)
                          {
                            v114 = *&v113;
                          }

                          else
                          {
                            v114 = 0;
                          }

                          if (v6 < 0.0)
                          {
                            v115 = 0;
                          }

                          else
                          {
                            v115 = *&v113;
                          }

                          fractionalRule(min:max:significantFigures:)(&v282, v115, v6 < 0.0, v114, v6 >= 0.0, v275);
                          *&v271 = v116;
                          v117 = v282;
                          v258 = "__NumberLessThanOrEqualTo";
                          v275 = v283;
                          v118 = swift_allocObject();
                          *(v118 + 16) = v277;
                          v119 = (v118 + v109);
                          v282 = v259;
                          v120 = dispatch thunk of CustomStringConvertible.description.getter();
                          *v119 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v120, v121);
                          swift_storeEnumTagMultiPayload();

                          *(v119 + v107) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
                          swift_storeEnumTagMultiPayload();
                          v122 = (v118 + v109 + 2 * v107);
                          v123 = v117;
                          *v122 = v117;
                          v122[1] = v275;
                          swift_storeEnumTagMultiPayload();
                          v282 = 0;
                          *&v283 = 0xE000000000000000;

                          _StringGuts.grow(_:)(30);
                          MEMORY[0x1AC57C120](0xD00000000000001CLL, v258 | 0x8000000000000000);
                          Double.write<A>(to:)();
                          v125 = v282;
                          v124 = v283;
                          v126 = swift_allocObject();
                          *(v126 + 16) = v277;
                          v127 = v265;
                          v128 = v274;
                          *(v126 + 32) = v264;
                          *(v126 + 40) = v128;
                          *(v126 + 48) = v118;
                          v129 = specialized Set.union<A>(_:)(v278, v127);

                          v130 = specialized Set.union<A>(_:)(v271, v129);
                          v131 = specialized Set.union<A>(_:)(v262, v130);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
                          inited = swift_initStackObject();
                          *(inited + 16) = xmmword_1A8FCB610;
                          v133 = v267;
                          *(inited + 32) = i;
                          *(inited + 40) = v270;
                          *(inited + 56) = v123;
                          *(inited + 64) = v275;
                          *(inited + 80) = v133;
                          *(inited + 88) = v268;
                          *(inited + 104) = 0x6E6F6974704F5F5FLL;
                          *(inited + 112) = 0xEF74696769446C61;
                          v134 = v263;
LABEL_83:
                          *(inited + 120) = v134;
                          v157 = specialized Set.union<A>(_:)(inited, v131);
                          swift_setDeallocating();
                          swift_arrayDestroy();
                          v158 = v276;
                          *v276 = v125;
                          v158[1] = v124;
                          v158[2] = v126;
                          return v157;
                        }

                        a1 = v28;
                        v49 = (v28 - 1);
                        if (v28 - 1 >= *(rawValue + 16))
                        {
                          __break(1u);
LABEL_169:
                          __break(1u);
LABEL_170:
                          *&v278 = v49;
                          Double._roundSlowPath(_:)();
                          v81 = v278;
                          v252 = v28;
                          v28 = *v278;
                          (*v278)(v252, v273);
                          (v28)(v21, v273);
                          v77 = *&v282;
                          goto LABEL_110;
                        }

                        v15 = *(v48 - 2);
                        a6 = *(v48 - 1);
                        v21 = *v48;
                        if (v15 == a4 && a6 == 0xE700000000000000)
                        {
                          break;
                        }

                        ++v28;
                        v48 += 3;
                      }

                      while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

                      v51 = v278;
                      v52 = swift_isUniquelyReferenced_nonNull_native();
                      v282 = v51;
                      if ((v52 & 1) == 0)
                      {
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1);
                        v51 = v282;
                      }

                      v54 = *(v51 + 2);
                      v53 = *(v51 + 3);
                      v55 = v54 + 1;
                      if (v54 >= v53 >> 1)
                      {
                        *&v278 = v54 + 1;
                        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
                        v55 = v278;
                        v51 = v282;
                      }

                      *(v51 + 2) = v55;
                      *&v278 = v51;
                      v56 = &v51[24 * v54];
                      *(v56 + 4) = v15;
                      *(v56 + 5) = a6;
                      *(v56 + 6) = v21;
                      v46 = v271;
                    }
                  }

LABEL_198:
                  swift_once();
                  goto LABEL_18;
                }

                goto LABEL_196;
              }

              goto LABEL_193;
            }

            goto LABEL_190;
          }

          goto LABEL_187;
        }

        goto LABEL_184;
      }

      goto LABEL_181;
    }

    goto LABEL_178;
  }

  v262 = v26;
  *&v271 = v25;
  v267 = v24;
  *&v273 = v23;
  v7 = *&a4;
  v282 = 0;
  *&v283 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x1AC57C120](0x7265626D754E5F5FLL, 0xEF6E656577746542);
  Double.write<A>(to:)();
  MEMORY[0x1AC57C120](6581825, 0xE300000000000000);
  Double.write<A>(to:)();
  MEMORY[0x1AC57C120](0x766973756C636E49, 0xE900000000000065);
  v77 = trunc(v6);
  if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  if (v77 <= -9.22337204e18)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  if (v77 >= 9.22337204e18)
  {
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v8 = trunc(*&a4);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
    goto LABEL_195;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v269 = v282;
  *&v270 = v283;
  v78 = v77;
  v79 = fabs(v6) - fabs(v77);
  v80 = fabs(*&a4) - fabs(v8);
  if (*&v77 == *&v8)
  {
    *&v277 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v81 = swift_allocObject();
    *(v81 + 1) = xmmword_1A8FC9410;
    *(v81 + 4) = v79;
    *(v81 + 5) = v80;
    v282 = v81;

    v47 = 0;
    specialized MutableCollection<>.sort(by:)(&v282);

    v21 = v282;
    v82 = *(v282 + 16);
    if (v82)
    {
      if (v82 != 1)
      {
        fractionalRule(min:max:significantFigures:)(&v282, *(v282 + 32), 0, *(v282 + 40), 0, a6);
        v274 = v83;
        *&v273 = v282;
        v278 = v283;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
        v84 = swift_allocObject();
        v275 = xmmword_1A8FC9400;
        *(v84 + 16) = xmmword_1A8FC9400;
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
        v86 = *(v15 + 72);
        v87 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        *&v272 = 2 * v86;
        *&v268 = v85;
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1A8FCB600;
        *&v271 = v87;
        v89 = (v88 + v87);
        v282 = v277;
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        *v89 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v90, v91);
        swift_storeEnumTagMultiPayload();

        *(v89 + v86) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
        swift_storeEnumTagMultiPayload();
        v92 = (v88 + v87 + v272);
        v93 = v273;
        *v92 = v273;
        v92[1] = v278;
        swift_storeEnumTagMultiPayload();
        *(v84 + 32) = v88;
        v94 = v84;
        if (*(v21 + 16))
        {
          v95 = *(v21 + 32);

          v96 = v276;
          v97 = v270;
          if (v95 == 0.0)
          {
            v98 = v271;
            v99 = swift_allocObject();
            *(v99 + 16) = v275;
            v282 = v277;
            v100 = dispatch thunk of CustomStringConvertible.description.getter();
            *(v99 + v98) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v100, v101);
            swift_storeEnumTagMultiPayload();

            v103 = *(v94 + 2);
            v102 = *(v94 + 3);
            if (v103 >= v102 >> 1)
            {
              v94 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v103 + 1, 1, v94);
            }

            v104 = v274;
            v105 = v93;
            *(v94 + 2) = v103 + 1;
            *&v94[8 * v103 + 32] = v99;
            v97 = v270;
            goto LABEL_103;
          }
        }

        else
        {

          v96 = v276;
          v97 = v270;
        }

        v104 = v274;
        v105 = v93;
LABEL_103:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
        v200 = swift_allocObject();
        *(v200 + 16) = v275;
        *(v200 + 32) = v105;
        v201 = v200 + 32;
        *(v200 + 40) = v278;
        v157 = specialized Set.union<A>(_:)(v200, v104);
        swift_setDeallocating();
        outlined destroy of Rule(v201);
        swift_deallocClassInstance();
        *v96 = v269;
        v96[1] = v97;
        v96[2] = v94;
        return v157;
      }

      goto LABEL_202;
    }

    goto LABEL_200;
  }

  *&v272 = v8;
  v256 = a4;
  v281 = MEMORY[0x1E69E7CD0];
  if (v78 < 0)
  {
    v159 = *&v79;
  }

  else
  {
    v159 = 0;
  }

  *&v275 = a6;
  fractionalRule(min:max:significantFigures:)(&v282, *&v79 & ~(v78 >> 63), v78 < 0, v159, v78 >= 0, a6);
  *&v261 = v160;
  v255 = v282;
  v268 = v283;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v162 = *(v15 + 72);
  v163 = *(v15 + 80);
  v164 = (v163 + 32) & ~v163;
  v165 = 2 * v162;
  v257 = 3 * v162;
  v263 = v163;
  v265 = v161;
  v166 = swift_allocObject();
  v259 = xmmword_1A8FCB600;
  *(v166 + 16) = xmmword_1A8FCB600;
  v264 = v164;
  v167 = (v166 + v164);
  v282 = v77;
  v168 = dispatch thunk of CustomStringConvertible.description.getter();
  *v167 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v168, v169);
  swift_storeEnumTagMultiPayload();

  *(v167 + v162) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
  i = v162;
  v170 = v255;
  swift_storeEnumTagMultiPayload();
  v258 = v165;
  v171 = (v166 + v164 + v165);
  *v171 = v170;
  v171[1] = v268;
  swift_storeEnumTagMultiPayload();

  v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v174 = *(v172 + 2);
  v173 = *(v172 + 3);
  if (v174 >= v173 >> 1)
  {
    v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v174 + 1, 1, v172);
  }

  v175 = v272;
  *(v172 + 2) = v174 + 1;
  *&v172[8 * v174 + 32] = v166;
  specialized Set.formUnion<A>(_:)(v261);
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v176 = swift_initStackObject();
  v272 = xmmword_1A8FC9400;
  *(v176 + 16) = xmmword_1A8FC9400;
  *(v176 + 32) = v170;
  v177 = v176 + 32;
  *(v176 + 40) = v268;
  specialized Set.formUnion<A>(_:)(v176);
  swift_setDeallocating();
  outlined destroy of Rule(v177);
  if (v175 < 0)
  {
    v178 = *&v80;
  }

  else
  {
    v178 = 0;
  }

  fractionalRule(min:max:significantFigures:)(&v282, v178, v175 >= 0, *&v80 & ~(v175 >> 63), v175 < 0, v275);
  v254 = v179;
  v180 = v282;
  v261 = v283;
  v181 = v264;
  v182 = swift_allocObject();
  *(v182 + 16) = v259;
  v183 = (v182 + v181);
  v282 = v175;
  v184 = dispatch thunk of CustomStringConvertible.description.getter();
  *v183 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v184, v185);
  swift_storeEnumTagMultiPayload();

  v186 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
  *&i[v183] = v186;
  swift_storeEnumTagMultiPayload();
  v187 = (v182 + v181 + v258);
  v255 = v180;
  *v187 = v180;
  v187[1] = v261;
  swift_storeEnumTagMultiPayload();
  v189 = *(v172 + 2);
  v188 = *(v172 + 3);
  *&v268 = v172;

  v253 = 0;
  if (v189 >= v188 >> 1)
  {
    *&v268 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v188 > 1), v189 + 1, 1, v268);
  }

  v190 = v268;
  *(v268 + 16) = v189 + 1;
  *(v190 + 8 * v189 + 32) = v182;
  specialized Set.formUnion<A>(_:)(v254);
  v191 = swift_allocObject();
  *(v191 + 16) = v272;
  *(v191 + 32) = v255;
  v192 = v191 + 32;
  *(v191 + 40) = v261;
  specialized Set.formUnion<A>(_:)(v191);
  swift_setDeallocating();
  outlined destroy of Rule(v192);
  swift_deallocClassInstance();
  v193 = v271;
  a4 = v271 + 104;
  v194 = *(v271 + 104);
  v195 = MEMORY[0x1E69E7028];
  if (v6 < 0.0)
  {
    v195 = MEMORY[0x1E69E7020];
  }

  v196 = *v195;
  v81 = v273;
  *&v261 = *(v271 + 104);
  v194(v28, v196, v273);
  v282 = v278;
  v47 = (v193 + 2);
  v255 = v193[2];
  v255(v21, v28, v81);
  a6 = (v193 + 11);
  a1 = v193[11];
  v197 = (a1)(v21, v81);
  LODWORD(rawValue) = *MEMORY[0x1E69E7038];
  if (v197 == *MEMORY[0x1E69E7038])
  {
    v77 = round(v6);
    v198 = v28;
    v28 = v193[1];
    (v28)(v198, v81);
LABEL_100:
    v15 = MEMORY[0x1E69E7028];
    goto LABEL_110;
  }

  if (v197 == *MEMORY[0x1E69E7030])
  {
    v77 = rint(v6);
    v199 = v28;
    v28 = *(v271 + 8);
    (v28)(v199, v273);
    goto LABEL_100;
  }

  v15 = MEMORY[0x1E69E7028];
  if (v197 == *MEMORY[0x1E69E7040])
  {
    v77 = ceil(v6);
LABEL_109:
    v202 = v28;
    v28 = *(v271 + 8);
    (v28)(v202, v273);
    goto LABEL_110;
  }

  if (v197 == *MEMORY[0x1E69E7048])
  {
    v77 = floor(v6);
    goto LABEL_109;
  }

  if (v197 == *MEMORY[0x1E69E7020])
  {
    goto LABEL_109;
  }

  v49 = (v271 + 8);
  if (v197 != *MEMORY[0x1E69E7028])
  {
    goto LABEL_170;
  }

  v251 = v28;
  v28 = *v49;
  (*v49)(v251, v273);
  if ((v278 & 0x8000000000000000) != 0)
  {
LABEL_173:
    v77 = floor(v6);
  }

  else
  {
    v77 = ceil(v6);
  }

LABEL_110:
  if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v77 <= -9.22337204e18)
  {
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  if (v77 >= 9.22337204e18)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  v203 = MEMORY[0x1E69E7020];
  if (v7 < 0.0)
  {
    v203 = v15;
  }

  v21 = v267;
  v81 = v273;
  (v261)(v267, *v203, v273);
  v282 = v256;
  a4 = v262;
  v255(v262, v21, v81);
  v204 = (a1)(a4, v81);
  if (v204 == rawValue)
  {
    v8 = round(v7);
    v205 = v21;
    v206 = v81;
  }

  else
  {
    if (v204 == *MEMORY[0x1E69E7030])
    {
      v8 = rint(v7);
      v205 = v267;
    }

    else
    {
      a1 = v267;
      if (v204 == *MEMORY[0x1E69E7040])
      {
        v8 = ceil(v7);
      }

      else if (v204 == *MEMORY[0x1E69E7048])
      {
        v8 = floor(v7);
      }

      else if (v204 != *MEMORY[0x1E69E7020])
      {
        v47 = v271 + 8;
        if (v204 == *v15)
        {
          (v28)(v267, v273);
          if (v256 < 0)
          {
            v8 = floor(v7);
          }

          else
          {
            v8 = ceil(v7);
          }
        }

        else
        {
          Double._roundSlowPath(_:)();
          v81 = v273;
          (v28)(a1, v273);
          (v28)(v262, v81);
          v8 = *&v282;
        }

        goto LABEL_127;
      }

      v205 = v267;
    }

    v206 = v273;
  }

  (v28)(v205, v206);
LABEL_127:
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  a6 = v77;
  a1 = v8;
  if (v8 < v77)
  {
    goto LABEL_133;
  }

  v21 = wholeNumberRule(min:max:)(&v282, v77, 0, v8, 0);
  v47 = v282;
  v278 = v283;
  v207 = v264;
  v81 = swift_allocObject();
  *(v81 + 1) = v272;
  v208 = &v81[v207];
  *v208 = v47;
  v208[1] = v278;
  swift_storeEnumTagMultiPayload();
  v15 = *(v268 + 16);
  v28 = *(v268 + 24);
  a4 = v15 + 1;

  if (v15 >= v28 >> 1)
  {
    goto LABEL_212;
  }

  while (1)
  {
    v209 = v268;
    *(v268 + 16) = *&a4;
    *(v209 + 8 * v15 + 32) = v81;
    specialized Set.formUnion<A>(_:)(v21);
    v210 = swift_allocObject();
    *(v210 + 16) = v272;
    *(v210 + 32) = v47;
    v21 = v210 + 32;
    *(v210 + 40) = v278;
    v81 = &v281;
    specialized Set.formUnion<A>(_:)(v210);
    swift_setDeallocating();
    outlined destroy of Rule(v21);
    swift_deallocClassInstance();
LABEL_133:
    v6 = a6;
    v211 = __exp10(-v275);
    v212 = v211 + a6;
    if (v212 <= -9.22337204e18)
    {
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
      goto LABEL_211;
    }

    a6 = v279;
    if (v212 >= 9.22337204e18)
    {
      goto LABEL_208;
    }

    v213 = fabs(v211 + v6);
    v214 = a1 - v211;
    if (v213 > 0x7FEFFFFFFFFFFFFFLL || (*&v214 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_209;
    }

    if (v214 <= -9.22337204e18)
    {
      goto LABEL_210;
    }

    if (v214 < 9.22337204e18)
    {
      break;
    }

LABEL_211:
    __break(1u);
LABEL_212:
    *&v268 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), a4, 1, v268);
  }

  if (v212 >= v214)
  {
    v235 = v276;
    v236 = v270;
    v237 = v268;
  }

  else
  {
    v21 = 0x74696769445F5FLL;
    v262 = wholeNumberRule(min:max:)(&v282, v212, 0, v214, 0);
    *&v271 = v282;
    v273 = v283;
    *&v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v215 = swift_allocObject();
    *(v215 + 16) = xmmword_1A8FC9410;
    a4 = i;
    a1 = v264;
    v216 = swift_allocObject();
    *(v216 + 16) = v272;
    v217 = v253;
    v218 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
    *&v261 = v217;
    *(v216 + a1) = v218;
    swift_storeEnumTagMultiPayload();
    *(v215 + 32) = v216;
    v219 = swift_allocObject();
    *(v219 + 16) = v272;
    v220 = (v219 + a1);
    *v220 = 0x74696769445F5FLL;
    v220[1] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    v267 = v215;
    *(v215 + 40) = v219;
    v221 = v277;
    *v277 = 0x6E6F6974704F5F5FLL;
    *(v221 + 8) = 0xEF74696769446C61;
    swift_storeEnumTagMultiPayload();
    v222 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore6SymbolO_Tt1g5(v221, v274);
    v282 = 0x6F54315F5FLL;
    *&v283 = 0xE500000000000000;
    v280 = v275;
    v223 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v223);

    MEMORY[0x1AC57C120](0x737469676944, 0xE600000000000000);
    *&v277 = v282;
    *&v275 = v283;
    v224 = swift_allocObject();
    *(v224 + 16) = v272;
    v225 = swift_allocObject();
    *(v225 + 16) = v272;
    v226 = (v225 + a1);
    *v226 = 0x74696769445F5FLL;
    v226[1] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    v282 = v225;
    specialized Array.append<A>(contentsOf:)(v222);
    *&v272 = v224;
    *(v224 + 32) = v282;
    if (one-time initialization token for baseIntegerRules != -1)
    {
      swift_once();
    }

    rawValue = 0;
    v47 = baseIntegerRules._rawValue;
    v227 = baseIntegerRules._rawValue + 48;
    v28 = -*(baseIntegerRules._rawValue + 2);
    *&v278 = MEMORY[0x1E69E7CC0];
    v274 = baseIntegerRules._rawValue + 48;
LABEL_143:
    v15 = rawValue + 1;
    v81 = &v227[24 * rawValue];
    while (v28 + v15 != 1)
    {
      rawValue = v15;
      if (v15 - 1 >= *(v47 + 16))
      {
        __break(1u);
        goto LABEL_173;
      }

      a6 = *(v81 - 2);
      a1 = *(v81 - 1);
      a4 = *v81;
      if (a6 != 0x74696769445F5FLL || a1 != 0xE700000000000000)
      {
        ++v15;
        v81 += 24;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      v229 = v278;
      v230 = swift_isUniquelyReferenced_nonNull_native();
      v282 = v229;
      if ((v230 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v229 + 2) + 1, 1);
        v229 = v282;
      }

      v232 = *(v229 + 2);
      v231 = *(v229 + 3);
      v233 = v232 + 1;
      if (v232 >= v231 >> 1)
      {
        *&v278 = v232 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v231 > 1), v232 + 1, 1);
        v233 = v278;
        v229 = v282;
      }

      *(v229 + 2) = v233;
      *&v278 = v229;
      v234 = &v229[24 * v232];
      *(v234 + 4) = a6;
      *(v234 + 5) = a1;
      *(v234 + 6) = *&a4;
      v227 = v274;
      goto LABEL_143;
    }

    v238 = v264;
    v239 = swift_allocObject();
    *(v239 + 16) = v259;
    v240 = v239 + v238;
    v241 = v271;
    *v240 = v271;
    *(v240 + 8) = v273;
    swift_storeEnumTagMultiPayload();

    v242 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
    *&i[v240] = v242;
    swift_storeEnumTagMultiPayload();
    v243 = (v239 + v238 + v258);
    v244 = v275;
    *v243 = v277;
    *(v243 + 1) = v244;
    swift_storeEnumTagMultiPayload();
    v237 = v268;
    v245 = *(v268 + 16);
    v246 = *(v268 + 24);

    if (v245 >= v246 >> 1)
    {
      v237 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v246 > 1), v245 + 1, 1, v237);
    }

    v236 = v270;
    v247 = v262;
    *(v237 + 2) = v245 + 1;
    *&v237[8 * v245 + 32] = v239;
    specialized Set.formUnion<A>(_:)(v247);
    specialized Set.formUnion<A>(_:)(v278);

    v248 = swift_allocObject();
    *(v248 + 16) = v259;
    *(v248 + 32) = v241;
    *(v248 + 40) = v273;
    *(v248 + 56) = 0x6E6F6974704F5F5FLL;
    *(v248 + 64) = 0xEF74696769446C61;
    v249 = v277;
    *(v248 + 72) = v267;
    *(v248 + 80) = v249;
    v250 = v272;
    *(v248 + 88) = v275;
    *(v248 + 96) = v250;
    specialized Set.formUnion<A>(_:)(v248);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v235 = v276;
  }

  *v235 = v269;
  v235[1] = v236;
  v235[2] = v237;
  return v281;
}

unint64_t digits #1 (in:) in wholeNumberRule(min:max:)(uint64_t a1)
{
  v34[0] = a1;
  dispatch thunk of CustomStringConvertible.description.getter();
  v1 = String.count.getter();
  if (!v1)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v36 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1 & ~(v1 >> 63), 0);
  if (v2 < 0)
  {
    goto LABEL_82;
  }

  v4 = 0;
  v5 = v36;
  while (!__OFADD__(v4++, 1))
  {
    result = String.subscript.getter();
    v8 = HIBYTE(v7) & 0xF;
    v9 = result & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v10 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      goto LABEL_77;
    }

    if ((v7 & 0x1000000000000000) != 0)
    {
      v35 = 0;
      result = specialized _parseInteger<A, B>(ascii:radix:)(result, v7, 10);
      if (v32)
      {
        goto LABEL_83;
      }

      v12 = result;
      goto LABEL_67;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v34[0] = result;
      v34[1] = v7 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (!v8)
        {
          goto LABEL_78;
        }

        v9 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          v22 = v34 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (result == 45)
      {
        if (!v8)
        {
          goto LABEL_79;
        }

        v9 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          v16 = v34 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v8)
      {
        v12 = 0;
        v27 = v34;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v8)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (v7 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v9 = v33;
      }

      v11 = *result;
      if (v11 == 43)
      {
        if (v9 < 1)
        {
          goto LABEL_81;
        }

        if (--v9)
        {
          v12 = 0;
          if (!result)
          {
            goto LABEL_64;
          }

          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v11 == 45)
      {
        if (v9 < 1)
        {
          goto LABEL_80;
        }

        if (--v9)
        {
          v12 = 0;
          if (!result)
          {
            goto LABEL_64;
          }

          v13 = (result + 1);
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v9)
      {
        v12 = 0;
        if (!result)
        {
LABEL_64:
          LOBYTE(v9) = 0;
          goto LABEL_66;
        }

        while (1)
        {
          v25 = *result - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v12;
          if ((v12 * 10) >> 64 != (10 * v12) >> 63)
          {
            break;
          }

          v12 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++result;
          if (!--v9)
          {
            goto LABEL_66;
          }
        }
      }
    }

    v12 = 0;
    LOBYTE(v9) = 1;
LABEL_66:
    v35 = v9;
    if (v9)
    {
      goto LABEL_83;
    }

LABEL_67:

    v36 = v5;
    v31 = *(v5 + 16);
    v30 = *(v5 + 24);
    if (v31 >= v30 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
      v5 = v36;
    }

    *(v5 + 16) = v31 + 1;
    *(v5 + 8 * v31 + 32) = v12;
    result = String.index(after:)();
    if (v4 == v2)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t nDigitWholeNumberLessThanOrEqualTo #1 (_:) in wholeNumberRule(min:max:)(uint64_t *a1, uint64_t a2)
{
  v3 = digits #1 (in:) in wholeNumberRule(min:max:)(a2);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16) < 2uLL)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = v4;
  bzero((v5 + 32), 8 * v4);
  if (v4 >= 2)
  {
LABEL_3:
    *(v5 + 32) = 1;
  }

LABEL_4:
  nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(a1, v5, v3);
  v7 = v6;

  return v7;
}

uint64_t nDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Symbol(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 < 1)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  v8 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5Tf4gn_n(0x74696769445F5FLL, 0xE700000000000000, a2 - 1);
  v27 = &outlined read-only object #0 of nDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:);
  specialized Array.append<A>(contentsOf:)(v8);
  v9 = v27;
  v10 = *(v27 + 16);
  if (v10)
  {
    v24 = a2;
    v25 = a1;
    v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v27;
    v23 = v9;
    v12 = (v9 + 40);
    do
    {
      v13 = *v12;
      *v7 = *(v12 - 1);
      v7[1] = v13;
      swift_storeEnumTagMultiPayload();
      v27 = v11;
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);

      if (v14 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1);
        v11 = v27;
      }

      *(v11 + 16) = v14 + 1;
      outlined init with take of Symbol(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14);
      v12 += 2;
      --v10;
    }

    while (v10);

    a2 = v24;
    a1 = v25;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v27 = 24415;
  v28 = 0xE200000000000000;
  v26 = a2;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v16);

  MEMORY[0x1AC57C120](0x746E497469676944, 0xEC00000072656765);
  v17 = v27;
  v18 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A8FC9400;
  *(v19 + 32) = v11;
  *a1 = v17;
  a1[1] = v18;
  a1[2] = v19;
  if (one-time initialization token for baseIntegerRules != -1)
  {
    goto LABEL_12;
  }

LABEL_10:

  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC19TokenGenerationCore4RuleV_SayAFGTt0g5Tf4g_n(v20);

  return v21;
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 24 * (v11 | (v10 << 6)));
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];

      specialized Set._Variant.insert(_:)(&v16, v13, v14, v15);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void nDigitWholeNumberBetweenInclusive #1 (minDigits:maxDigits:) in wholeNumberRule(min:max:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Symbol(0);
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = (v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  if (v8 == *(a3 + 16))
  {
    v9 = MEMORY[0x1E69E7CC0];
    v75 = a2;
    v76 = a1;
    *&v80 = a3;
    if (v8)
    {
      v81 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v9 = v81;
      v10 = (a2 + 32);
      v11 = v8;
      v12 = v8;
      do
      {
        v13 = *v10++;
        v83 = v13;
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v9;
        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          v74 = v14;
          v19 = v15;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
          v15 = v19;
          a1 = v76;
          v14 = v74;
          v9 = v81;
        }

        *(v9 + 16) = v17 + 1;
        v18 = v9 + 16 * v17;
        *(v18 + 32) = v14;
        *(v18 + 40) = v15;
        --v12;
      }

      while (v12);
      v8 = v11;
      a3 = v80;
    }

    v81 = v9;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v21 = lazy protocol witness table accessor for type [String] and conformance [A]();
    v74 = BidirectionalCollection<>.joined(separator:)();
    v23 = v22;

    v24 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v71[0] = v21;
      v71[1] = v20;
      v72 = v23;
      v81 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
      v24 = v81;
      v25 = (a3 + 32);
      v73 = v8;
      do
      {
        v26 = *v25++;
        v83 = v26;
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        v81 = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
          v24 = v81;
        }

        *(v24 + 16) = v31 + 1;
        v32 = v24 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        --v8;
      }

      while (v8);
      a1 = v76;
      v8 = v73;
      a3 = v80;
      v23 = v72;
    }

    v81 = v24;
    v33 = BidirectionalCollection<>.joined(separator:)();
    v35 = v34;

    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v81 = 24415;
    v82 = 0xE200000000000000;
    v83 = v8;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v36);

    MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FD8E50);
    v37 = v74;
    MEMORY[0x1AC57C120](v74, v23);
    MEMORY[0x1AC57C120](6581825, 0xE300000000000000);
    MEMORY[0x1AC57C120](v33, v35);

    MEMORY[0x1AC57C120](0x766973756C636E49, 0xE900000000000065);
    v39 = v81;
    v38 = v82;
    v40 = v75;
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v75, a3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v41 = swift_allocObject();
      v80 = xmmword_1A8FC9400;
      *(v41 + 16) = xmmword_1A8FC9400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v42 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v80;
      *(v43 + v42) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v37, v23);
      swift_storeEnumTagMultiPayload();

      *(v41 + 32) = v43;
      *a1 = v39;
      a1[1] = v38;
      a1[2] = v41;
    }

    else
    {
      v74 = v39;

      v44 = MEMORY[0x1E69E7CC0];
      v81 = MEMORY[0x1E69E7CC0];
      v73 = v38;
      if (v8)
      {
        v45 = (v40 + 32);
        v46 = (a3 + 32);
        v47 = MEMORY[0x1E69E7CC0];
        *&v80 = MEMORY[0x1E69E7CC0];
        do
        {
          while (1)
          {
            v48 = v44;
            v50 = *v45++;
            v49 = v50;
            v52 = *v46++;
            v51 = v52;
            if (v49 == v52 && !*(v47 + 2))
            {
              break;
            }

            v53 = v8;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
            }

            v55 = *(v47 + 2);
            v54 = *(v47 + 3);
            if (v55 >= v54 >> 1)
            {
              v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v47);
            }

            *(v47 + 2) = v55 + 1;
            *&v47[8 * v55 + 32] = v49;
            v44 = v48;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
            }

            v57 = *(v44 + 2);
            v56 = *(v44 + 3);
            if (v57 >= v56 >> 1)
            {
              v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v44);
            }

            *(v44 + 2) = v57 + 1;
            *&v44[8 * v57 + 32] = v51;
            v8 = v53 - 1;
            if (v53 == 1)
            {
              goto LABEL_36;
            }
          }

          v83 = v49;
          v58 = dispatch thunk of CustomStringConvertible.description.getter();
          v60 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v58, v59);

          *v79 = v60;
          swift_storeEnumTagMultiPayload();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v80 + 16) + 1, 1, v80);
          }

          v44 = v48;
          v62 = *(v80 + 16);
          v61 = *(v80 + 24);
          if (v62 >= v61 >> 1)
          {
            *&v80 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v80);
          }

          v63 = v79;
          v64 = v80;
          *(v80 + 16) = v62 + 1;
          outlined init with take of Symbol(v63, v64 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v62);
          v81 = v64;
          --v8;
        }

        while (v8);
      }

      else
      {
        v47 = MEMORY[0x1E69E7CC0];
        *&v80 = MEMORY[0x1E69E7CC0];
      }

LABEL_36:
      v65 = *(v47 + 2);
      type metadata accessor for Node();
      inited = swift_initStackObject();
      *(inited + 24) = 0;
      *(inited + 32) = 0;
      *(inited + 16) = 0;
      *(inited + 40) = 1;
      *(inited + 48) = v65;
      *(inited + 56) = 0;
      Node.buildUpperPath(digits:)(v44);
      Node.buildLowerPath(digits:)(v47);
      v67 = Node.walkChoices()();
      v68 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay19TokenGenerationCore6ChoiceVG_AHs5NeverOTg504_s19de178Core15wholeNumberRule33_77ABCD41F000EB3C4AAEC3BD7ED6ED2FLL3min3maxAA0F0V4root_ShyAGG12dependenciestSiSg_AKtF011nDigitWholeE16BetweenInclusiveL_0O6Digits0pW0AgH_AiJtSaySiG_AOtFAA6G8VAQXEfU_SayAF6SymbolOGTf1cn_n(v67, &v81);

      v69 = v76;
      v70 = v73;
      *v76 = v74;
      v69[1] = v70;
      v69[2] = v68;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t *nOrGreaterDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(uint64_t *result, uint64_t a2)
{
  if (a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v2;
    v25 = v3;
    v4 = result;
    v20 = nDigitWholeNumber #1 (n:) in wholeNumberRule(min:max:)(&v22, a2);
    v5 = v22;
    v21 = v23;
    v22 = 0;
    *&v23 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v22 = 24415;
    *&v23 = 0xE200000000000000;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v6);

    MEMORY[0x1AC57C120](0xD000000000000015, 0x80000001A8FD8E30);
    v18 = v23;
    v19 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A8FC9410;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v8 = *(type metadata accessor for Symbol(0) - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A8FC9400;
    v12 = (v11 + v10);
    *v12 = v5;
    v12[1] = v21;
    swift_storeEnumTagMultiPayload();
    *(v7 + 32) = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A8FC9410;
    v14 = (v13 + v10);
    *v14 = v5;
    v14[1] = v21;
    swift_storeEnumTagMultiPayload();
    v15 = (v13 + v10 + v9);
    *v15 = 0x7374696769445F5FLL;
    v15[1] = 0xE800000000000000;
    swift_storeEnumTagMultiPayload();
    *(v7 + 40) = v13;
    *v4 = v19;
    v4[1] = v18;
    v4[2] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A8FC9400;
    *(inited + 32) = v5;
    *(inited + 40) = v21;
    swift_bridgeObjectRetain_n();
    v17 = specialized Set.union<A>(_:)(inited, v20);
    swift_setDeallocating();
    outlined destroy of Rule(inited + 32);
    return v17;
  }

  return result;
}

uint64_t Node.buildUpperPath(digits:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v1 + 48);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      v5 = result;
      v6 = *(result + 32);
      v7 = *(v1 + 56);
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = v6;
      *(v8 + 40) = 0;
      *(v8 + 48) = v4;
      *(v8 + 56) = v7;
      *(v1 + 16) = v8;

      if (*(v1 + 16))
      {
        specialized _copyCollectionToContiguousArray<A>(_:)(v5, v5 + 32, 1, (2 * v2) | 1);
        v10 = v9;

        Node.buildUpperPath(digits:)(v10);
      }
    }
  }

  return result;
}

uint64_t Node.buildLowerPath(digits:)(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(v1 + 48);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      v5 = result;
      v6 = *(result + 32);
      v7 = *(v1 + 56);
      v8 = swift_allocObject();
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = v6;
      *(v8 + 40) = 0;
      *(v8 + 48) = v4;
      *(v8 + 56) = v7;
      *(v1 + 24) = v8;

      if (*(v1 + 24))
      {
        specialized _copyCollectionToContiguousArray<A>(_:)(v5, v5 + 32, 1, (2 * v2) | 1);
        v10 = v9;

        Node.buildLowerPath(digits:)(v10);
      }
    }
  }

  return result;
}

void *Node.walkChoices()()
{
  v4 = v0;
  v5 = 0;
  v6 = type metadata accessor for Symbol(0);
  *&v87 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v86 = (&v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v79 - v12);
  v14 = *(v0 + 16);
  if (v14)
  {
    v15 = *(v0 + 24);
    if (v15)
    {
      v16 = *(v15 + 40);
      if (*(v14 + 40))
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_10;
        }

        __break(1u);
      }

      if (*(v14 + 32) == *(v15 + 32))
      {
        v17 = v16;
      }

      else
      {
        v17 = 1;
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_118;
      }
    }
  }

LABEL_10:
  v80 = v11;
  v88 = v10;
  v1 = MEMORY[0x1E69E7CC0];
  v92 = MEMORY[0x1E69E7CC0];
  v91 = MEMORY[0x1E69E7CD0];
  v18 = *(v0 + 40);
  v81 = v0;
  if (v18 != 1)
  {
    v20 = *(v0 + 32);
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v22 = *(v19 + 16);
    v21 = *(v19 + 24);
    v3 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      goto LABEL_114;
    }

    goto LABEL_14;
  }

  v3 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v3)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v24 = MEMORY[0x1E69E7CC0];

  if (!*(v0 + 48))
  {
    goto LABEL_41;
  }

  while (2)
  {
    if (!v4[2])
    {
LABEL_45:
      v0 = v4[3];
      if (v0)
      {

        v2 = Node.walkChoices()();
        v1 = v38;

        v13 = *(v2 + 16);
        if (v13)
        {
          v84 = v1;
          v85 = v5;
          v90 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
          v19 = 32;
          v3 = v90;
          while (1)
          {
            v5 = v2;
            v39 = *(v2 + v19);
            v22 = *(v39 + 16);
            v20 = v24[2];
            v40 = v20 + v22;
            if (__OFADD__(v20, v22))
            {
              goto LABEL_108;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && (v1 = v24, v40 <= v24[3] >> 1))
            {
              if (!*(v39 + 16))
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v20 <= v40)
              {
                v43 = v20 + v22;
              }

              else
              {
                v43 = v20;
              }

              v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v43, 1, v24);
              if (!*(v39 + 16))
              {
LABEL_60:

                if (v22)
                {
                  goto LABEL_109;
                }

                goto LABEL_61;
              }
            }

            v21 = *(v1 + 16);
            if (((*(v1 + 24) >> 1) - v21) < v22)
            {
              goto LABEL_111;
            }

            swift_arrayInitWithCopy();

            if (v22)
            {
              v42 = *(v1 + 16);
              v34 = __OFADD__(v42, v22);
              v21 = v42 + v22;
              if (v34)
              {
                goto LABEL_113;
              }

              *(v1 + 16) = v21;
            }

LABEL_61:
            v90 = v3;
            v45 = *(v3 + 16);
            v44 = *(v3 + 24);
            if (v45 >= v44 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
              v3 = v90;
            }

            *(v3 + 16) = v45 + 1;
            v21 = v3 + 8 * v45;
            *(v21 + 32) = v1;
            v19 += 8;
            v13 = (v13 - 1);
            v2 = v5;
            if (!v13)
            {

              v4 = v81;
              v1 = v84;
              v5 = v85;
              goto LABEL_66;
            }
          }
        }

        v3 = MEMORY[0x1E69E7CC0];
LABEL_66:
        specialized Array.append<A>(contentsOf:)(v3);
        v0 = &v91;
        specialized Set.formUnion<A>(_:)(v1);
      }

      v46 = v4[2];
      if (v46 && (*(v46 + 40) & 1) == 0)
      {
        v47 = *(v46 + 32);
        v34 = __OFSUB__(v47, 1);
        v17 = v47 - 1;
        v85 = v17;
        if (v34)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v85 = 9;
      }

      v48 = v4[3];
      if (v48 && (*(v48 + 40) & 1) == 0)
      {
        v17 = *(v48 + 32);
        v13 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }
      }

      else
      {
        v13 = 0;
      }

      if (v85 < v13)
      {

        return v92;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1A8FC9410;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v51 = *(v87 + 72);
      v52 = *(v87 + 80);
      v2 = (v52 + 32) & ~v52;
      v53 = swift_allocObject();
      v87 = xmmword_1A8FC9400;
      *(v53 + 16) = xmmword_1A8FC9400;
      *(v53 + v2) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
      swift_storeEnumTagMultiPayload();
      *(v49 + 32) = v53;
      v82 = v52;
      v83 = v51;
      v3 = 0xEF74696769446C61;
      v84 = v50;
      v54 = swift_allocObject();
      *(v54 + 16) = v87;
      v55 = (v54 + v2);
      *v55 = 0x74696769445F5FLL;
      v55[1] = 0xE700000000000000;
      swift_storeEnumTagMultiPayload();
      *(v49 + 40) = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = v87;
      *(inited + 32) = 0x6E6F6974704F5F5FLL;
      v1 = inited + 32;
      *(inited + 40) = 0xEF74696769446C61;
      *(inited + 48) = v49;
      specialized Set.formUnion<A>(_:)(inited);
      swift_setDeallocating();
      outlined destroy of Rule(v1);
      if (one-time initialization token for baseIntegerRules != -1)
      {
        swift_once();
      }

      specialized Set.formUnion<A>(_:)(v57);

      v4 = v81;
      v58 = 0x6E6F6974704F5F5FLL;
      if (*(v81 + 56))
      {
        v59 = 0xEF74696769446C61;
      }

      else
      {
        v58 = 0x74696769445F5FLL;
        v59 = 0xE700000000000000;
      }

      v0 = v80;
      *v80 = v58;
      *(v0 + 8) = v59;
      swift_storeEnumTagMultiPayload();
      v17 = v4[6];
      if (!__OFSUB__(v17, 1))
      {
        _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore6SymbolO_Tt1g5(v0, v17 - 1);
        v3 = v92;
        v1 = MEMORY[0x1E69E6590];
        while (1)
        {
          v90 = v13;
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v60, v61);

          v63 = v86;
          *v86 = v62;
          swift_storeEnumTagMultiPayload();
          v64 = swift_allocObject();
          *(v64 + 16) = v87;
          outlined init with copy of Symbol(v63, v64 + v2);
          v90 = v24;

          specialized Array.append<A>(contentsOf:)(v64);

          specialized Array.append<A>(contentsOf:)(v65);
          v20 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
          }

          v19 = *(v3 + 16);
          v66 = *(v3 + 24);
          v22 = v19 + 1;
          if (v19 >= v66 >> 1)
          {
            v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v19 + 1, 1, v3);
          }

          outlined destroy of Symbol(v86);
          *(v3 + 16) = v22;
          *(v3 + 8 * v19 + 32) = v20;
          v21 = v85;
          if (v85 == v13)
          {
            break;
          }

          v34 = __OFADD__(v13, 1);
          v13 = (v13 + 1);
          if (v34)
          {
            __break(1u);
            goto LABEL_106;
          }
        }

        v67 = v81;
        v68 = *(v81 + 16);
        if (!v68 || (*(v68 + 40) & 1) != 0 || *(v81 + 56) != 1)
        {
          goto LABEL_97;
        }

        v69 = *(v68 + 32);
        v1 = swift_allocObject();
        *(v1 + 16) = v87;
        v90 = v69;
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        *(v1 + v2) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v70, v71);
        swift_storeEnumTagMultiPayload();

        v0 = *(v3 + 16);
        v17 = *(v3 + 24);
        v4 = (v0 + 1);
        if (v0 < v17 >> 1)
        {
LABEL_96:
          *(v3 + 16) = v4;
          *(v3 + 8 * v0 + 32) = v1;
          v67 = v81;
LABEL_97:
          if ((*(v67 + 40) & 1) == 0)
          {
            if (*(v67 + 24))
            {
              if (*(v67 + 56) == 1)
              {
                v72 = *(v67 + 32);
                if (Node.lowerPathIsAllZeros()())
                {
                  v73 = swift_allocObject();
                  *(v73 + 16) = v87;
                  v90 = v72;
                  v74 = dispatch thunk of CustomStringConvertible.description.getter();
                  *(v73 + v2) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v74, v75);
                  swift_storeEnumTagMultiPayload();

                  v77 = *(v3 + 16);
                  v76 = *(v3 + 24);
                  if (v77 >= v76 >> 1)
                  {
                    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v3);
                  }

                  *(v3 + 16) = v77 + 1;
                  *(v3 + 8 * v77 + 32) = v73;
                }
              }
            }
          }

          return v3;
        }

LABEL_119:
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v4, 1, v3);
        goto LABEL_96;
      }

      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v2 = Node.walkChoices()();
    v1 = v29;

    v13 = *(v2 + 16);
    if (!v13)
    {

      v3 = MEMORY[0x1E69E7CC0];
LABEL_44:
      specialized Array.append<A>(contentsOf:)(v3);
      specialized Set.formUnion<A>(_:)(v1);
      goto LABEL_45;
    }

    v84 = v1;
    v85 = v5;
    v90 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v19 = 32;
    v3 = v90;
    while (1)
    {
      v5 = v2;
      v30 = *(v2 + v19);
      v22 = *(v30 + 16);
      v20 = v24[2];
      v31 = v20 + v22;
      if (__OFADD__(v20, v22))
      {
        break;
      }

      v32 = swift_isUniquelyReferenced_nonNull_native();
      if (v32 && (v1 = v24, v31 <= v24[3] >> 1))
      {
        if (!*(v30 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v20 <= v31)
        {
          v35 = v20 + v22;
        }

        else
        {
          v35 = v20;
        }

        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32, v35, 1, v24);
        if (!*(v30 + 16))
        {
LABEL_35:

          if (v22)
          {
            goto LABEL_107;
          }

          goto LABEL_36;
        }
      }

      v21 = *(v1 + 16);
      if (((*(v1 + 24) >> 1) - v21) < v22)
      {
        goto LABEL_110;
      }

      swift_arrayInitWithCopy();

      if (v22)
      {
        v33 = *(v1 + 16);
        v34 = __OFADD__(v33, v22);
        v21 = v33 + v22;
        if (v34)
        {
          goto LABEL_112;
        }

        *(v1 + 16) = v21;
      }

LABEL_36:
      v90 = v3;
      v37 = *(v3 + 16);
      v36 = *(v3 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v3 = v90;
      }

      *(v3 + 16) = v37 + 1;
      v21 = v3 + 8 * v37;
      *(v21 + 32) = v1;
      v19 += 8;
      v13 = (v13 - 1);
      v2 = v5;
      if (!v13)
      {

        v4 = v81;
        v1 = v84;
        v5 = v85;
        goto LABEL_44;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v3, 1, v19);
LABEL_14:
    *(v19 + 16) = v3;
    *(v19 + 8 * v22 + 32) = v20;
LABEL_15:
    v90 = v1;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v23 = 32;
    v24 = v90;
    v2 = MEMORY[0x1E69E6590];
    do
    {
      v89 = *(v19 + v23);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v25, v26);

      *v13 = v27;
      swift_storeEnumTagMultiPayload();
      v90 = v24;
      v1 = v24[2];
      v28 = v24[3];
      if (v1 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v1 + 1, 1);
        v24 = v90;
      }

      v24[2] = v1 + 1;
      outlined init with take of Symbol(v13, v24 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v1);
      v23 += 8;
      --v3;
    }

    while (v3);

    v4 = v81;
    if (*(v81 + 48))
    {
      continue;
    }

    break;
  }

LABEL_41:
  if (v24[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A8FC9400;
    *(v3 + 32) = v24;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void fractionalRule(min:max:significantFigures:)(unint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  v111 = a6;
  *&v112 = type metadata accessor for Symbol(0);
  MEMORY[0x1EEE9AC00](v112);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v105 - v14);
  if ((a3 & 1) == 0 && *&a2 >= 1.0)
  {
    goto LABEL_107;
  }

  v16 = *&a4;
  if ((a5 & 1) == 0 && *&a4 >= 1.0)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if ((a3 & 1) == 0 && *&a2 < 0.0)
  {
    goto LABEL_109;
  }

  if ((a5 & 1) == 0 && *&a4 < 0.0)
  {
    goto LABEL_110;
  }

  if (v111 < 1)
  {
    goto LABEL_106;
  }

  v108 = v13;
  v110 = v12;
  v106 = a1;
  if (a3)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *&a2;
  }

  if (a5)
  {
    v16 = 1.0 - __exp10(-v111);
  }

  v18 = MEMORY[0x1E69E7CC0];
  v19 = 1;
  v20 = MEMORY[0x1E69E7CC0];
  v109 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = __exp10(v19);
    v22 = v17 * v21;
    if (v17 * v21 <= -9.22337204e18)
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v22 >= 9.22337204e18)
    {
      goto LABEL_96;
    }

    v23 = fabs(v17 * v21);
    v24 = v16 * v21;
    if (v23 > 0x7FEFFFFFFFFFFFFFLL || (*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_97;
    }

    if (v24 <= -9.22337204e18)
    {
      goto LABEL_98;
    }

    if (v24 >= 9.22337204e18)
    {
      goto LABEL_99;
    }

    v25 = v22 % 10;
    v26 = v24 % 10;
    if (v25 == v26 && !*(v20 + 2))
    {
      v27 = v109;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      }

      v32 = *(v27 + 2);
      v36 = *(v27 + 3);
      v33 = v32 + 1;
      if (v32 >= v36 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v32 + 1, 1, v27);
      }

      v109 = v27;
    }

    else
    {
      v27 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      }

      v29 = *(v20 + 2);
      v28 = *(v20 + 3);
      if (v29 >= v28 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v20);
      }

      *(v20 + 2) = v29 + 1;
      *&v20[8 * v29 + 32] = v25;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v113 = v20;
      if ((v30 & 1) == 0)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      }

      v32 = *(v27 + 2);
      v31 = *(v27 + 3);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v27);
      }

      v25 = v26;
      v18 = v27;
    }

    *(v27 + 2) = v33;
    *&v27[8 * v32 + 32] = v25;
    if (v111 == v19)
    {
      break;
    }

    v34 = __OFADD__(v19++, 1);
    v20 = v113;
    if (v34)
    {
      goto LABEL_100;
    }
  }

  v37 = v109;
  v38 = *(v109 + 2);
  v39 = v111 - v38;
  type metadata accessor for Node();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = 0;
  *(inited + 40) = 1;
  *(inited + 48) = v39;
  *(inited + 56) = 1;
  Node.buildLowerPath(digits:)(v113);
  Node.buildUpperPath(digits:)(v18);
  v105[2] = inited;
  v41 = Node.walkChoices()();
  v105[1] = v42;
  v43 = MEMORY[0x1E69E7CC0];
  v107 = v41;
  if (v38)
  {
    v114 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v44 = v114;
    v45 = (v37 + 32);
    do
    {
      v46 = *v45++;
      v117 = v46;
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(v47, v48);

      *v15 = v49;
      swift_storeEnumTagMultiPayload();
      v114 = v44;
      v51 = v44[2];
      v50 = v44[3];
      if (v51 >= v50 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
        v44 = v114;
      }

      v44[2] = v51 + 1;
      outlined init with take of Symbol(v15, v44 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v51);
      --v38;
    }

    while (v38);
    v43 = MEMORY[0x1E69E7CC0];
    v52 = v107;
  }

  else
  {
    v52 = v41;
    v44 = MEMORY[0x1E69E7CC0];
  }

  v105[3] = v18;
  v53 = v52[2];
  if (!v53)
  {

    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_69;
  }

  v114 = v43;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v53, 0);
  v54 = v114;
  v55 = v52 + 4;
  do
  {
    v56 = *v55;
    v57 = *(*v55 + 16);
    v58 = v44[2];
    v59 = v58 + v57;
    if (__OFADD__(v58, v57))
    {
      goto LABEL_101;
    }

    v60 = swift_isUniquelyReferenced_nonNull_native();
    if (v60 && (v61 = v44, v59 <= v44[3] >> 1))
    {
      if (*(v56 + 16))
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v58 <= v59)
      {
        v64 = v58 + v57;
      }

      else
      {
        v64 = v58;
      }

      v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v60, v64, 1, v44);
      if (*(v56 + 16))
      {
LABEL_55:
        if ((v61[3] >> 1) - v61[2] < v57)
        {
          goto LABEL_103;
        }

        swift_arrayInitWithCopy();

        if (v57)
        {
          v62 = v61[2];
          v34 = __OFADD__(v62, v57);
          v63 = v62 + v57;
          if (v34)
          {
            goto LABEL_104;
          }

          v61[2] = v63;
        }

        goto LABEL_64;
      }
    }

    if (v57)
    {
      goto LABEL_102;
    }

LABEL_64:
    v114 = v54;
    v66 = *(v54 + 16);
    v65 = *(v54 + 24);
    if (v66 >= v65 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1);
      v54 = v114;
    }

    *(v54 + 16) = v66 + 1;
    *(v54 + 8 * v66 + 32) = v61;
    ++v55;
    --v53;
  }

  while (v53);

  v52 = v107;
LABEL_69:
  v117 = v54;
  v67 = v109;
  v68 = *(v109 + 2);
  v69 = 32;
  v70 = v108;
  while (v68)
  {
    v71 = *&v109[v69];
    v69 += 8;
    --v68;
    if (v71)
    {

      goto LABEL_75;
    }
  }

  v72 = v52[2];

  if (v72)
  {

LABEL_75:

LABEL_76:
    v114 = 11813;
    v115 = 0xE200000000000000;
    v73 = v111;
    v116 = v111;
    v74 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v74);

    MEMORY[0x1AC57C120](102, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v75 = swift_allocObject();
    v112 = xmmword_1A8FC9400;
    v76 = MEMORY[0x1E69E63B0];
    *(v75 + 16) = xmmword_1A8FC9400;
    v77 = MEMORY[0x1E69E6438];
    *(v75 + 56) = v76;
    *(v75 + 64) = v77;
    *(v75 + 32) = v17;
    v78 = String.init(format:_:)();
    v80 = v79;

    v114 = 11813;
    v115 = 0xE200000000000000;
    v116 = v73;
    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v81);

    MEMORY[0x1AC57C120](102, 0xE100000000000000);
    v82 = swift_allocObject();
    *(v82 + 16) = v112;
    *(v82 + 56) = v76;
    *(v82 + 64) = v77;
    *(v82 + 32) = v16;
    v83 = String.init(format:_:)();
    v85 = v84;

    v114 = 0;
    v115 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v114 = 0xD000000000000011;
    v115 = 0x80000001A8FD8EB0;
    MEMORY[0x1AC57C120](v78, v80);

    MEMORY[0x1AC57C120](6581825, 0xE300000000000000);
    MEMORY[0x1AC57C120](v83, v85);

    v86 = v115;
    v87 = v117;
    v88 = v106;
    *v106 = v114;
    v88[1] = v86;
    v88[2] = v87;

    return;
  }

  v89 = *(v67 + 2);
  if (!v89)
  {
    goto LABEL_111;
  }

  v90 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v67 + 2), 0);
  v91 = v90 + 4;
  if (specialized Sequence._copyContents(initializing:)(&v114, (v90 + 4), v89, 1, v89) == v89)
  {
    v92 = v90[2];
    if (!v92)
    {

      v94 = MEMORY[0x1E69E7CC0];
LABEL_94:
      specialized Array.append<A>(contentsOf:)(v94);
      goto LABEL_76;
    }

    v107 = v90;
    v114 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92, 0);
    v93 = 0;
    v94 = v114;
    while (1)
    {
      v95 = v91[v93];
      *v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x30uLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      if (v95 < 0)
      {
        break;
      }

      if (v95)
      {
        v96 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v96 + 16) = v95;
        v97 = v110;
        v98 = (*(v110 + 80) + 32) & ~*(v110 + 80);
        outlined init with copy of Symbol(v70, v96 + v98);
        v99 = v95 - 1;
        if (v95 == 1)
        {
          v70 = v108;
        }

        else
        {
          v100 = *(v97 + 72);
          v101 = v96 + v100 + v98;
          v102 = v108;
          do
          {
            outlined init with copy of Symbol(v102, v101);
            v101 += v100;
            --v99;
          }

          while (v99);
          v70 = v102;
        }
      }

      else
      {
        v96 = MEMORY[0x1E69E7CC0];
      }

      outlined destroy of Symbol(v70);
      v114 = v94;
      v104 = *(v94 + 16);
      v103 = *(v94 + 24);
      if (v104 >= v103 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1);
        v94 = v114;
      }

      ++v93;
      *(v94 + 16) = v104 + 1;
      *(v94 + 8 * v104 + 32) = v96;
      v70 = v108;
      if (v93 == v92)
      {

        goto LABEL_94;
      }
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_112:
  __break(1u);
}

BOOL Node.lowerPathIsAllZeros()()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    result = 0;
    if ((*(v1 + 40) & 1) == 0 && !*(v1 + 32))
    {

      IsAll = Node.lowerPathIsAllZeros()();

      return IsAll;
    }
  }

  else
  {
    return (*(v0 + 40) & 1) == 0 && *(v0 + 32) == 0;
  }

  return result;
}

uint64_t Node.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for baseIntegerRules()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A8FCB630;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A8FC9410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v2 = *(type metadata accessor for Symbol(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9400;
  v6 = (v5 + v3);
  *v6 = 0xD000000000000014;
  v6[1] = 0x80000001A8FD8DF0;
  swift_storeEnumTagMultiPayload();
  *(v1 + 32) = v5;
  v43 = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A8FC9400;
  v8 = (v7 + v3);
  *v8 = 0xD000000000000011;
  v8[1] = 0x80000001A8FD8DB0;
  swift_storeEnumTagMultiPayload();
  *(v1 + 40) = v7;
  *(v0 + 32) = 0x656765746E495F5FLL;
  *(v0 + 40) = 0xE900000000000072;
  *(v0 + 48) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A8FC9410;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8FC9400;
  v11 = (v10 + v3);
  *v11 = 0x74696769445F5FLL;
  v11[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *(v9 + 32) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A8FC9410;
  v13 = (v12 + v3);
  *v13 = 0x697469736F505F5FLL;
  v13[1] = 0xEF74696769446576;
  swift_storeEnumTagMultiPayload();
  v14 = (v12 + v3 + v4);
  *v14 = 0x7374696769445F5FLL;
  v14[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *(v9 + 40) = v12;
  *(v0 + 56) = 0xD000000000000014;
  *(v0 + 64) = 0x80000001A8FD8DF0;
  *(v0 + 72) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1A8FC9410;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A8FC9410;
  *(v16 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  v17 = (v16 + v3 + v4);
  *v17 = 0x74696769445F5FLL;
  v17[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *(v15 + 32) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1A8FCB600;
  *(v18 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  v19 = (v18 + v3 + v4);
  *v19 = 0x697469736F505F5FLL;
  v19[1] = 0xEF74696769446576;
  swift_storeEnumTagMultiPayload();
  v20 = (v18 + v3 + 2 * v4);
  *v20 = 0x7374696769445F5FLL;
  v20[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *(v15 + 40) = v18;
  *(v0 + 80) = 0xD000000000000011;
  *(v0 + 88) = 0x80000001A8FD8DB0;
  *(v0 + 96) = v15;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A8FC9410;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1A8FC9400;
  v23 = (v22 + v3);
  *v23 = 0x74696769445F5FLL;
  v23[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *(v21 + 32) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A8FC9410;
  v25 = (v24 + v3);
  *v25 = 0x7374696769445F5FLL;
  v25[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  v26 = (v24 + v3 + v43);
  *v26 = 0x74696769445F5FLL;
  v26[1] = 0xE700000000000000;
  swift_storeEnumTagMultiPayload();
  *(v21 + 40) = v24;
  *(v0 + 104) = 0x7374696769445F5FLL;
  *(v0 + 112) = 0xE800000000000000;
  *(v0 + 120) = v21;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A8FC9410;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1A8FC9400;
  *(v28 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x30uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v27 + 32) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A8FC9400;
  v30 = (v29 + v3);
  *v30 = 0x697469736F505F5FLL;
  v30[1] = 0xEF74696769446576;
  swift_storeEnumTagMultiPayload();
  *(v27 + 40) = v29;
  *(v0 + 128) = 0x74696769445F5FLL;
  *(v0 + 136) = 0xE700000000000000;
  *(v0 + 144) = v27;
  v31 = v0;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1A8FCB640;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A8FC9400;
  *(v33 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x31uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 32) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1A8FC9400;
  *(v34 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x32uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 40) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1A8FC9400;
  *(v35 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x33uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 48) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1A8FC9400;
  *(v36 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x34uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 56) = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1A8FC9400;
  *(v37 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x35uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 64) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1A8FC9400;
  *(v38 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x36uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 72) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1A8FC9400;
  *(v39 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x37uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 80) = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1A8FC9400;
  *(v40 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x38uLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v32 + 88) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1A8FC9400;
  *(v41 + v3) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x39uLL, 0xE100000000000000);
  result = swift_storeEnumTagMultiPayload();
  *(v32 + 96) = v41;
  v31[19] = 0x697469736F505F5FLL;
  v31[20] = 0xEF74696769446576;
  v31[21] = v32;
  baseIntegerRules._rawValue = v31;
  return result;
}

char *one-time initialization function for baseNumberRules()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A8FCB600;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v2 = *(type metadata accessor for Symbol(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FCB600;
  v6 = (v5 + v4);
  *v6 = 0xD000000000000012;
  v6[1] = 0x80000001A8FD8ED0;
  swift_storeEnumTagMultiPayload();
  v7 = (v5 + v4 + v3);
  *v7 = 0xD000000000000014;
  v7[1] = 0x80000001A8FD8DF0;
  swift_storeEnumTagMultiPayload();
  v8 = (v5 + v4 + 2 * v3);
  *v8 = 0xD000000000000012;
  v8[1] = 0x80000001A8FD8EF0;
  swift_storeEnumTagMultiPayload();
  *(v1 + 32) = v5;
  *(v0 + 32) = 0x7265626D754E5F5FLL;
  *(v0 + 40) = 0xE800000000000000;
  *(v0 + 48) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A8FC9410;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8FC9400;
  *(v10 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
  swift_storeEnumTagMultiPayload();
  *(v9 + 32) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A8FC9400;
  *(v11 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2DuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  *(v9 + 40) = v11;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 64) = 0x80000001A8FD8ED0;
  *(v0 + 72) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A8FC9410;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A8FC9400;
  *(v13 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
  swift_storeEnumTagMultiPayload();
  *(v12 + 32) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A8FC9410;
  *(v14 + v4) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x2EuLL, 0xE100000000000000);
  swift_storeEnumTagMultiPayload();
  v15 = (v14 + v4 + v3);
  *v15 = 0x7374696769445F5FLL;
  v15[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *(v12 + 40) = v14;
  *(v0 + 80) = 0xD000000000000012;
  *(v0 + 88) = 0x80000001A8FD8EF0;
  *(v0 + 96) = v12;
  if (one-time initialization token for baseIntegerRules != -1)
  {
    swift_once();
  }

  result = specialized Array.append<A>(contentsOf:)(v16);
  baseNumberRules._rawValue = v0;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
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
LABEL_128:
  __break(1u);
  return result;
}

{
  v5 = a3;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v92 = v8 + 16;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v95 = &v8[16 * v93];
        v5 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v5)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v5;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v5 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      result = *v11;
      v12 = v11[1];
      v13 = (*v5 + 24 * v9);
      if (result == *v13 && v12 == v13[1])
      {
        v15 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 24 * v9 + 32);
        v17 = v16;
        do
        {
          result = v16[2];
          v19 = v17[3];
          v17 += 3;
          v18 = v19;
          if (result == *(v16 - 1) && v18 == *v16)
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v16 = v17;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v21 = 0;
          v22 = 24 * v7;
          v23 = 24 * v9;
          v24 = v9;
          do
          {
            if (v24 != v7 + v21 - 1)
            {
              v30 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v25 = v30 + v23;
              v26 = v30 + v22;
              v27 = *v25;
              v28 = *(v25 + 8);
              v29 = *(v26 - 24);
              *(v25 + 16) = *(v26 - 8);
              *v25 = v29;
              *(v26 - 24) = v27;
              *(v26 - 16) = v28;
            }

            ++v24;
            --v21;
            v22 -= 24;
            v23 += 24;
          }

          while (v24 < v7 + v21);
        }
      }
    }

    v31 = v5[1];
    if (v7 < v31)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v31)
        {
          v32 = v5[1];
        }

        else
        {
          v32 = v9 + a4;
        }

        if (v32 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v47;
    v48 = &v8[16 * v46];
    *(v48 + 4) = v9;
    *(v48 + 5) = v7;
    v49 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_74:
          if (v54)
          {
            goto LABEL_120;
          }

          v67 = &v8[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_123;
          }

          v73 = &v8[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_127;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v77 = &v8[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_88:
        if (v72)
        {
          goto LABEL_122;
        }

        v80 = &v8[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_95:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
        {
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v50 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v5 + 24 * v89), (*v5 + 24 * *&v8[16 * v50 + 32]), *v5 + 24 * v90, v49);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = specialized Array.remove(at:)(v50);
        v47 = *(v8 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_118;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_119;
      }

      v62 = &v8[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_121;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_124;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_128;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v33 = *v5;
  v34 = *v5 + 24 * v7 - 24;
  v99 = v9;
  v35 = v9 - v7;
LABEL_43:
  v36 = (v33 + 24 * v7);
  v37 = *v36;
  v38 = v36[1];
  v39 = v35;
  v40 = v34;
  while (1)
  {
    v41 = v37 == *v40 && v38 == *(v40 + 8);
    if (v41 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v34 += 24;
      --v35;
      if (v7 != v32)
      {
        goto LABEL_43;
      }

      v7 = v32;
      v5 = a3;
      v9 = v99;
      goto LABEL_54;
    }

    if (!v33)
    {
      break;
    }

    v42 = *(v40 + 32);
    v43 = *(v40 + 16);
    v37 = *(v40 + 24);
    *(v40 + 24) = *v40;
    *(v40 + 40) = v43;
    *v40 = v37;
    *(v40 + 8) = v42;
    v38 = v42;
    v40 -= 24;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
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
LABEL_128:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = specialized Array.remove(at:)(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 16);
      v13 = *(*(*a3 + 8 * v11) + 16);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 16);
        v17 = (v12 < v13) ^ (v16 >= v15);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = specialized Array.remove(at:)(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 16) >= *(*v29 + 16))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

{
  v6 = v4;
  v95 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    v87 = (v9 + 16);
    v88 = *(v9 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v9 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v5);
        if (v6)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_114;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_115;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_116;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *(*a3 + 32 * v8 + 24);
      v12 = 32 * v10;
      v13 = *a3 + 32 * v10;
      v14 = *(v13 + 24);
      v15 = v10 + 2;
      v16 = (v13 + 88);
      v17 = v11;
      while (v7 != v15)
      {
        v18 = *v16;
        v16 += 4;
        v19 = (v11 < v14) ^ (v18 >= v17);
        ++v15;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v8 = v15 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v7;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_119;
      }

      if (v10 < v8)
      {
        v20 = 32 * v8 - 16;
        v21 = v8;
        v22 = v10;
        do
        {
          if (v22 != --v21)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v29 + v12);
            v24 = (v29 + v20);
            v25 = *v23;
            v26 = v23[1];
            v27 = *(v23 + 1);
            v28 = *v24;
            *v23 = *(v24 - 1);
            *(v23 + 1) = v28;
            *(v24 - 2) = v25;
            *(v24 - 1) = v26;
            *v24 = v27;
          }

          ++v22;
          v20 -= 32;
          v12 += 32;
        }

        while (v22 < v21);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v7)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_118;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_120;
        }

        if (v10 + a4 < v7)
        {
          v7 = v10 + a4;
        }

        if (v7 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 16);
    v41 = *(v9 + 24);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v42;
    v43 = v9 + 32;
    v44 = (v9 + 32 + 16 * v5);
    *v44 = v10;
    v44[1] = v8;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v45 = *(v9 + 32);
          v46 = *(v9 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = (v9 + 16 * v42);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_106;
          }

          v67 = (v43 + 16 * v5);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v5 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_112;
        }

        v71 = (v9 + 16 * v42);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_72:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = (v43 + 16 * v5);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v42)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v82 = (v43 + 16 * (v5 - 1));
        v83 = *v82;
        v84 = (v43 + 16 * v5);
        v85 = v84[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v82), (*a3 + 32 * *v84), (*a3 + 32 * v85), v96);
        if (v6)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_99;
        }

        if (v5 > *(v9 + 16))
        {
          goto LABEL_100;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v9 + 16);
        if (v5 >= v86)
        {
          goto LABEL_101;
        }

        v42 = v86 - 1;
        result = memmove((v43 + 16 * v5), v84 + 2, 16 * (v86 - 1 - v5));
        *(v9 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v43 + 16 * v42;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = (v9 + 16 * v42);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_107;
      }

      if (v60 >= v52)
      {
        v78 = (v43 + 16 * v5);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v47 < v81)
        {
          v5 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    a4 = v94;
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v8 - 8;
  v32 = v10 - v8;
LABEL_30:
  v33 = *(v30 + 32 * v8 + 24);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 >= *v35)
    {
LABEL_29:
      ++v8;
      v31 += 32;
      --v32;
      if (v8 != v7)
      {
        goto LABEL_30;
      }

      v8 = v7;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = v35[1];
    v37 = v35[2];
    v38 = v35[3];
    v39 = *(v35 - 1);
    *(v35 + 1) = *(v35 - 3);
    *(v35 + 3) = v39;
    *(v35 - 3) = v36;
    *(v35 - 2) = v37;
    *(v35 - 1) = v38;
    *v35 = v33;
    v35 -= 4;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
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
LABEL_128:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t specialized Set.union<A>(_:)(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 48);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v3 - 2);

      specialized Set._Variant.insert(_:)(&v8, v6, v5, v4);

      v3 += 3;
      --v2;
    }

    while (v2);
    return v9;
  }

  return a2;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay29GenerativeFunctionsFoundation10JSONSchemaOG_Say19TokenGenerationCore4RuleVGsAE_pTg504_s19hi80Core7GrammarV5anyOf33_DD88DD49DE63EB9CBD61CBF820251C8ALL4name7schemas4withSayAA4k12VGSSSg_Say29de12Foundation10G23OGSDyAoKGztKFZAkOKXEfU_AJ0N0VXMtSDyAhMGTf1cn_n(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v37 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v37;
  v7 = type metadata accessor for JSONSchema();
  v8 = *(v7 - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v33 = (v8 + 16);
  v34 = v7;
  v35 = *(v8 + 72);
  while (1)
  {
    v10 = *a2;
    if (!*(*a2 + 16))
    {
      break;
    }

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = *(*(v10 + 56) + 8 * v11);

LABEL_18:
    v31 = *(v37 + 16);
    v30 = *(v37 + 24);
    if (v31 >= v30 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
    }

    *(v37 + 16) = v31 + 1;
    *(v37 + 8 * v31 + 32) = v13;
    v9 += v35;
    if (!--v3)
    {
      return v4;
    }
  }

  v14 = closure #1 in static Grammar.rules(for:with:wrapStringsInQuotes:)(v9, 1, a2);
  if (v2)
  {

    return v4;
  }

  v13 = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *a2;
  v36 = *a2;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (!v21)
  {
    v23 = v18;
    if (*(v16 + 24) >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = v17;
        specialized _NativeDictionary.copy()();
        v17 = v26;
        v25 = v36;
        if (v23)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_26;
      }
    }

    v25 = v36;
    if (v23)
    {
LABEL_13:
      *(v25[7] + 8 * v17) = v13;

LABEL_17:
      *a2 = v25;
      goto LABEL_18;
    }

LABEL_15:
    v25[(v17 >> 6) + 8] |= 1 << v17;
    v27 = v17;
    (*v33)(v25[6] + v17 * v35, v9, v34);
    *(v25[7] + 8 * v27) = v13;
    v28 = v25[2];
    v21 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v21)
    {
      goto LABEL_25;
    }

    v25[2] = v29;
    goto LABEL_17;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySay29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVGG_19TokenGenerationCore6ChoiceVs5NeverOTg504_s19ij101Core7GrammarV10jsonObject33_DD88DD49DE63EB9CBD61CBF820251C8ALL4name6fields4withSayAA4RuleVGSSSg_Say29de12Foundation10g2O8h17VGSDyAoKGztKFZAA6L8VARXEfU_SDyAjM6SymbolOGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v15;
  for (i = (a1 + 32); ; ++i)
  {
    v13 = *i;

    closure #1 in static Grammar.jsonObject(name:fields:with:)(&v13, a2, &v14);
    if (v3)
    {
      break;
    }

    v3 = 0;

    v9 = v14;
    v15 = v5;
    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    if (v11 >= v10 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      v5 = v15;
    }

    *(v5 + 16) = v11 + 1;
    *(v5 + 8 * v11 + 32) = v9;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized RangeReplaceableCollection<>.popLast()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    v14 = type metadata accessor for JSONSchema.Property();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a1;
    v12 = 1;
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v5 = v3[2];
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v5 - 1;
  v7 = type metadata accessor for JSONSchema.Property();
  v8 = *(v7 - 8);
  v15 = v8;
  v9 = v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v8 + 72) * v6;
  v3[2] = v6;
  *v1 = v3;
  (*(v8 + 32))(a1, v9, v7);
  v10 = *(v15 + 56);
  v11 = a1;
  v12 = 0;
  v13 = v7;
LABEL_6:

  return v10(v11, v12, 1, v13);
}

char *specialized Sequence.compactMap<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v30[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for JSONSchema.Property();
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v24 = v12;
  v27 = (v12 + 32);
  v28 = (v12 + 48);
  v15 = (a3 + 40);
  v16 = MEMORY[0x1E69E7CC0];
  v25 = a1;
  while (1)
  {
    v17 = *v15;
    v30[0] = *(v15 - 1);
    v30[1] = v17;

    a1(v30);
    if (v3)
    {
      break;
    }

    if ((*v28)(v8, 1, v9) == 1)
    {
      outlined destroy of [Regex2BNF.CharacterPredicate](v8, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaO8PropertyVSgMR);
    }

    else
    {
      v18 = v9;
      v19 = v26;
      v20 = *v27;
      (*v27)(v26, v8, v18);
      v20(v29, v19, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v20(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22], v29, v18);
      v9 = v18;
      a1 = v25;
    }

    v15 += 2;
    if (!--v14)
    {
      return v16;
    }
  }

  return v16;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF29GenerativeFunctionsFoundation10JSONSchemaO_s5NeverOAF8PropertyVTg5@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v18[1] = a2;
  v19 = a1;
  v7 = type metadata accessor for JSONSchema();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10JSONSchemaOSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v18 - v12;
  outlined init with copy of (String, Any)(v5, v18 - v12, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMd, &_s29GenerativeFunctionsFoundation10JSONSchemaOSgMR);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v15 = a3;
LABEL_5:
    v16 = type metadata accessor for JSONSchema.Property();
    return (*(*(v16 - 8) + 56))(v15, v14, 1, v16);
  }

  (*(v8 + 32))(v10, v13, v7);
  v15 = a3;
  v19(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v14 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t GuidedGenerationConstraints.init(schema:vocabularyManager:enableDeterministicTokenRuns:numberOfParallelTasks:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v49 = a5;
  v50 = a4;
  v43 = a3;
  v7 = type metadata accessor for Schema();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = *a2;
  v16 = *(v8 + 16);
  v48 = a1;
  v16(&v42 - v13, a1, v7, v12);
  (v16)(v10, v14, v7);
  Grammar.init(_:)(v10, v84);
  v17 = *(v8 + 8);
  v46 = v8 + 8;
  v47 = v7;
  v45 = v17;
  v17(v14, v7);
  v18 = v85;
  v80[0] = v84[0];
  v80[1] = v84[1];
  v80[2] = v84[2];
  v81 = v84[3];
  v82 = v84[4];
  v83 = v85;
  type metadata accessor for EarleyRecognizer.RecognizerGrammar();
  swift_allocObject();
  swift_retain_n();

  v19 = EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v80, v15);
  v20 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  v21 = swift_allocObject();
  v51 = xmmword_1A8FC9400;
  *(v21 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = v51;
  *(v22 + 32) = v20;
  *(v21 + 32) = v22;
  type metadata accessor for EarleyRecognizer();
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  *(v23 + 28) = -1;
  *(v23 + 24) = 0;
  *(v23 + 32) = v19;
  *(v23 + 40) = v21;
  *(v23 + 48) = MEMORY[0x1E69E7CC0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMd, &_s19TokenGenerationCore0A17GrammarRecognizerCyAA06EarleyE0CGMR);
  swift_allocObject();

  v25 = specialized TokenGrammarRecognizer.init(inputRecognizer:vocabManager:lastConsumedTokenID:)(v24, v15, 0, 1);

  GuidedGenerationOverrides.init()(v80);
  v44 = _s19TokenGenerationCore27SpaceLookaheadMaskGeneratorVACyxGycfCAA16EarleyRecognizerC_Ttg5(v26);
  if (one-time initialization token for isInternalInstall != -1)
  {
    swift_once();
  }

  if (!isInternalInstall)
  {
    GuidedGenerationOverrides.init()(&v54);
    v77 = v64;
    v78 = v65;
    v79 = v66;
    v73 = v60;
    v74 = v61;
    v75 = v62;
    v76 = v63;
    v69 = v56;
    v70 = v57;
    v71 = v58;
    v72 = v59;
    v67 = v54;
    v68 = v55;
    outlined destroy of GuidedGenerationOverrides(&v67);
    v52 = 0;
    v53 = 1;
    v29 = 2000;
LABEL_10:
    v27 = v43;
    goto LABEL_11;
  }

  v81(&v67, v80[0]);
  v27 = v67;
  v28 = v67;
  GuidedGenerationOverrides.init()(&v54);
  v77 = v64;
  v78 = v65;
  v79 = v66;
  v73 = v60;
  v74 = v61;
  v75 = v62;
  v76 = v63;
  v69 = v56;
  v70 = v57;
  v71 = v58;
  v72 = v59;
  v67 = v54;
  v68 = v55;
  (*(&v65 + 1))(&v52, v64);
  outlined destroy of GuidedGenerationOverrides(&v67);
  if (v53)
  {
    v29 = 2000;
  }

  else
  {
    v29 = v52;
  }

  if (v28 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore016RecognizerGuidedE11ConstraintsV0dG7ManagerC0dG5CacheVyAC06EarleyG0CAC27SpaceLookaheadMaskGeneratorVyAKG__GGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = v51;
  v31 = MEMORY[0x1E69E7CC0];
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v30 + 32) = v25;
  *(v30 + 40) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMd, &_s19TokenGenerationCore016RecognizerGuidedB11ConstraintsV0aD7ManagerCyAA06EarleyD0CAA27SpaceLookaheadMaskGeneratorVyAGG_GMR);
  v33 = swift_allocObject();
  type metadata accessor for Lock();
  v34 = swift_allocObject();
  swift_retain_n();
  v35 = swift_slowAlloc();
  *(v34 + 16) = v35;
  pthread_mutex_init(v35, 0);

  *(v33 + 16) = v34;
  *(v33 + 24) = v30;
  type metadata accessor for MaskCache();
  v36 = swift_allocObject();
  *(v36 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_19TokenGenerationCore16ContiguousBitSetV4mask_Sb26isPotentiallyDeterministictTt0g5Tf4g_n(v31);
  v37 = swift_allocObject();
  v38 = swift_slowAlloc();
  *(v37 + 16) = v38;
  pthread_mutex_init(v38, 0);
  outlined destroy of GuidedGenerationOverrides(v80);

  result = v45(v48, v47);
  *(v36 + 24) = v37;
  v40 = v44 & 1;
  v41 = v49;
  *v49 = v25;
  v41[1] = 0;
  v41[2] = v33;
  v41[3] = v36;
  v41[4] = v25;
  *(v41 + 40) = v40;
  *(v41 + 41) = v27 & 1;
  v41[6] = v50;
  *(v41 + 56) = 0;
  v41[8] = v29;
  return result;
}

__n128 Grammar.init(schema:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Schema();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  Grammar.init(_:)(v8, v13);
  (*(v5 + 8))(a1, v4);
  v9 = v13[1];
  result = v14;
  v11 = v15;
  *a2 = v13[0];
  *(a2 + 8) = v9;
  *(a2 + 16) = result;
  *(a2 + 32) = v11;
  return result;
}