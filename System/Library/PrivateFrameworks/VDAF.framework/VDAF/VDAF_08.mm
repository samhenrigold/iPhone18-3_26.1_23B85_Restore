uint64_t static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[0] = a3;
  v9 = *(v5 + 80);
  type metadata accessor for Leaf(255, v9, a3, a4);
  type metadata accessor for Array();
  v36 = Dictionary.init()();
  v31 = v9;
  v32 = a4;
  v33 = *(v5 + 88);
  v34 = a5;
  v35 = a2;
  type metadata accessor for Dictionary();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();
  v27 = v9;
  v28 = a4;
  v29 = v33;
  v30 = a5;
  swift_getWitnessTable();
  v10 = Sequence.sorted(by:)();

  v37[3] = v10;
  v21 = v9;
  v22 = a4;
  v23 = v33;
  v24 = a5;
  v25 = a1;
  v26 = a2;
  swift_getTupleTypeMetadata2();
  v11 = type metadata accessor for Array();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  WitnessTable = swift_getWitnessTable();
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:), v20, v11, v19, v12, WitnessTable, MEMORY[0x277D84950], v37);

  return v14;
}

uint64_t closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v68 = a1;
  v69 = a6;
  v60 = *(*(a7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v58 = &v58 - v13;
  v65 = *(a5 - 8);
  MEMORY[0x28223BE20](v12);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v64 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Leaf(0, a4, v21, v22);
  v24 = MEMORY[0x28223BE20](v23);
  v66 = a3;
  v67 = (&v58 - v25);
  if (!a3)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*a2 == 0x8000000000000000 && v66 == -1)
  {
    goto LABEL_35;
  }

  v63 = *a2;
  v62 = v24;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = v69;
  v26[5] = a7;
  (*(v16 + 16))(v19, a2, TupleTypeMetadata2);
  v27 = *(TupleTypeMetadata2 + 48);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v71 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

    v28 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v29 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v28)
    {
      if (v29 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v32 = v61;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v33 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v65 + 8))(v32, a5);
        if (v33)
        {
LABEL_36:
          __break(1u);
LABEL_37:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        goto LABEL_16;
      }

LABEL_11:
      lazy protocol witness table accessor for type Int and conformance Int();
      v30 = v61;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v31 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v65 + 8))(v30, a5);
      if (v31)
      {
        goto LABEL_36;
      }

      goto LABEL_17;
    }

    if (v29 < 64)
    {
LABEL_16:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }
  }

LABEL_17:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v71 = 0x7FFFFFFFFFFFFFFFLL;
    v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v34 & 1) == 0)
    {
      break;
    }

    if (v35 < 65)
    {
      goto LABEL_26;
    }

LABEL_20:
    lazy protocol witness table accessor for type Int and conformance Int();
    v36 = v61;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v37 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v65 + 8))(v36, a5);
    if (v37)
    {
      __break(1u);
LABEL_22:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v35 >= 64)
  {
    goto LABEL_20;
  }

LABEL_26:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_27:
  v38 = v63 / v66;
  v39 = v63 % v66;
  v40 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v65 + 8))(&v19[v27], a5);
  v41 = v64;
  v42 = v69;
  FieldElement.init(_:)(v40, a4, v69, v64);
  Leaf.init(suffix:value:)(v39, v41, a4, v67, v43);
  v44 = swift_allocObject();
  v44[2] = a4;
  v44[3] = a5;
  v44[4] = v42;
  v44[5] = a7;
  v44[6] = partial apply for implicit closure #1 in closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:);
  v44[7] = v26;
  v45 = v68;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v45;
  v71 = v47;
  specialized __RawDictionaryStorage.find<A>(_:)(v38);
  v49 = *(v47 + 16);
  v50 = (v48 & 1) == 0;
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
    goto LABEL_34;
  }

  v52 = v48;
  type metadata accessor for Array();
  type metadata accessor for _NativeDictionary();
  v53 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v51);
  v56 = v71;
  if (v53)
  {
    v53 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
    if ((v52 & 1) != (v54 & 1))
    {
      goto LABEL_37;
    }
  }

  *v68 = v56;
  if ((v52 & 1) == 0)
  {
    v71 = (v44[6])(v53, v54, v55);
    v70 = v38;
    _NativeDictionary._insert(at:key:value:)();
  }

  Array.append(_:)();
}

void closure #3 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X7>, uint64_t *a7@<X8>)
{
  v12 = *a1;
  v13 = a1[1];
  type metadata accessor for LeafParent(0, a4, a5, a4);
  v14 = swift_allocObject();

  LeafParent.init(dimensionBitCount:prefix:blockSize:leaves:)(a2, v12, a3, v13);
  if (v7)
  {
    *a6 = v7;
  }

  else
  {
    *a7 = v14;
  }
}

uint64_t LeafParent.__allocating_init(dimensionBitCount:prefix:blockSize:leaves:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  LeafParent.init(dimensionBitCount:prefix:blockSize:leaves:)(a1, a2, a3, a4);
  return v8;
}

void LeafParent.init(dimensionBitCount:prefix:blockSize:leaves:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v5 = a4;
  v7 = *v4;
  v41 = v4;
  v8 = *(v7 + 80);
  v9 = type metadata accessor for Leaf(0, v8, a3, a4);
  v49 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v38 - v11);
  v50 = v8;
  v51 = *(v8 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v48 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v18 = &v38 - v17;
  if (v15 < 1 || ((v15 + 0x7FFFFFFFFFFFFFFFLL) & v15) != 0)
  {

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v19 = 0xD000000000000020;
    *(v19 + 8) = 0x8000000270C52520;
    *(v19 + 16) = 1;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    return;
  }

  v38 = v16;
  v41[2] = a2;
  v20 = v50;
  v21 = v15;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v39 = v21;
  v22 = specialized Array.init(repeating:count:)(v18, v21, v20);
  (*(v51 + 8))(v18, v20);
  v53 = v22;
  if (!MEMORY[0x2743B2860](v5, v9))
  {
    goto LABEL_16;
  }

  v23 = 0;
  v24 = *(v9 + 28);
  v46 = v5;
  v47 = (v49 + 16);
  v43 = v51 + 32;
  v44 = v24;
  v42 = v51 + 40;
  v45 = v9;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!IsNativeType)
    {
      break;
    }

    (*(v49 + 16))(v12, v5 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v23, v9);
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_15;
    }

LABEL_8:
    v27 = *v12;
    v29 = v50;
    v28 = v51;
    v30 = v48;
    (*(v51 + 32))(v48, v12 + v44, v50);
    type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v31 = v53;
    Array._checkSubscript_mutating(_:)(v27);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v33 = v31 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v33 = v31;
    }

    v34 = v33 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27;
    v5 = v46;
    (*(v28 + 40))(v34, v30, v29);
    v9 = v45;
    destructiveProjectEnumData for SeedCtrlUnadjustedError();
    ++v23;
    if (v26 == MEMORY[0x2743B2860](v5, v9))
    {
      goto LABEL_16;
    }
  }

  v35 = _ArrayBuffer._getElementSlowPath(_:)();
  if (v38 != 8)
  {
    goto LABEL_25;
  }

  v52 = v35;
  (*v47)(v12, &v52, v9);
  swift_unknownObjectRelease();
  v26 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
LABEL_16:

  v36 = v41;
  v41[3] = v53;
  v37 = log2(v39);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!__OFSUB__(v40, v37))
  {
    v36[4] = v40 - v37;
    return;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t LeafParent.diverge(from:at:)(uint64_t result, unint64_t leadingToLevel)
{
  v3 = *(v2 + 32);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v3 <= leadingToLevel)
    {
      v16 = v3 - 1;
      lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
      swift_allocError();
      *v17 = leadingToLevel;
      *(v17 + 8) = 0;
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      v5 = LeafParent.prefix(leadingToLevel:)(leadingToLevel);
      if (!v7)
      {
        v8 = v5;
        v9 = LeafParent.prefix(leadingToLevel:)(leadingToLevel);
        if (!v10)
        {
          if (v8 == v9)
          {
            v11 = LeafParent.bit(atLevel:)(leadingToLevel);
            if (!v12)
            {
              v13 = v11;
              v14 = LeafParent.bit(atLevel:)(leadingToLevel);
              if (!v15)
              {
                v6 = v13 ^ v14;
              }
            }
          }

          else
          {
            v6 = 0;
          }
        }
      }
    }

    return v6 & 1;
  }

  return result;
}

uint64_t partial apply for closure #1 in LeafParent.firstDiverge(fromAnyOf:at:)(void *a1)
{
  v3 = *(v1 + 16);
  if (*a1 == v3)
  {
    return 0;
  }

  else
  {
    return LeafParent.diverge(from:at:)(v3, *(v1 + 24)) & 1;
  }
}

uint64_t LeafParent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t LeafParent.SuperBlockData.blockPrefix.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t LeafParent.SuperBlockData.leaves.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t LeafParent.SuperBlockData.__allocating_init(blockPrefix:blockSize:)(uint64_t a1, Swift::Int a2)
{
  v4 = swift_allocObject();
  LeafParent.SuperBlockData.init(blockPrefix:blockSize:)(a1, a2, v5, v6);
  return v4;
}

void *LeafParent.SuperBlockData.init(blockPrefix:blockSize:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for Leaf(0, *(*v5 + 80), a3, a4);
  v5[3] = static Array._allocateUninitialized(_:)();
  v5[2] = a1;
  swift_beginAccess();
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(a2);
  swift_endAccess();
  return v5;
}

uint64_t LeafParent.SuperBlockData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static LeafParent.makeLeafParentsFromSuperBlocks<A>(measurement:superBlockSize:superBlockCount:blockSize:)(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v189 = a4;
  v187 = a3;
  v177 = *(*(a6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v150 - v11;
  v13 = *(v6 + 80);
  v14 = MEMORY[0x28223BE20](v10);
  v179 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v182 = &v150 - v16;
  v185 = type metadata accessor for Leaf(0, v13, v17, v18);
  v19 = MEMORY[0x28223BE20](v185);
  v178 = (&v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v19);
  v181 = (&v150 - v22);
  v23 = *(a5 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v180 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v183 = &v150 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v188 = &v150 - v29;
  MEMORY[0x28223BE20](v28);
  v186 = &v150 - v30;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = type metadata accessor for Optional();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  result = MEMORY[0x28223BE20](v33);
  v39 = (v37 - 1);
  if (v37 < 1 || (v37 & *&v39) != 0 || v37 < v189)
  {
    v40 = 0x8000000270C52550;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v42 = 0xD000000000000049;
    goto LABEL_8;
  }

  if (v187 < 1 || ((v187 + 0x7FFFFFFFFFFFFFFFLL) & v187) != 0)
  {
    v40 = 0x8000000270C525A0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v42 = 0xD00000000000002FLL;
LABEL_8:
    *v41 = v42;
    *(v41 + 8) = v40;
    *(v41 + 16) = 1;
    return swift_willThrow();
  }

  if (v189 <= 1 || ((v189 + 0x7FFFFFFFFFFFFFFFLL) & v189) != 0)
  {
    v40 = 0x8000000270C525D0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v42 = 0xD000000000000029;
    goto LABEL_8;
  }

  v43 = v37 * v187;
  if ((v37 * v187) >> 64 != (v37 * v187) >> 63)
  {
    goto LABEL_104;
  }

  v165 = (&v150 - v36);
  v167 = v38;
  v166 = result;
  v160 = v12;
  v161 = v37;
  v169 = a1;
  v151 = v7;
  v162 = v43 - 1;
  if (!__OFSUB__(v43, 1))
  {
    v44 = vcnt_s8(v39);
    v44.i16[0] = vaddlv_u8(v44);
    v152 = v44.u32[0];
    v153 = v6;
    v45 = *(v6 + 88);
    v158 = v13;
    v157 = v45;
    v46 = type metadata accessor for LeafParent.SuperBlockData(255, v13, v45, v35);
    v47 = MEMORY[0x277D83B88];
    swift_getTupleTypeMetadata2();
    v48 = static Array._allocateUninitialized(_:)();
    v49 = specialized Dictionary.init(dictionaryLiteral:)(v48, v47, v46, MEMORY[0x277D83B98]);

    v196 = v49;
    v170 = v46;
    v154 = type metadata accessor for Dictionary();
    Dictionary.reserveCapacity(_:)(v187);
    v50 = v169 + 64;
    v51 = 1 << *(v169 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v169 + 64);
    v155 = (v51 + 63) >> 6;
    v54 = TupleTypeMetadata2;
    v164 = TupleTypeMetadata2 - 8;
    v173 = (v23 + 16);
    v175 = (v23 + 32);
    v163 = (v32 + 32);
    v172 = (v23 + 8);

    v55 = 0;
    v156 = v50;
    v159 = v23;
    while (1)
    {
      if (!v53)
      {
        if (v155 <= v55 + 1)
        {
          v63 = v55 + 1;
        }

        else
        {
          v63 = v155;
        }

        v64 = v63 - 1;
        while (1)
        {
          v62 = v55 + 1;
          if (__OFADD__(v55, 1))
          {
            break;
          }

          if (v62 >= v155)
          {
            v53 = 0;
            v71 = 1;
            v55 = v64;
            v70 = v167;
            goto LABEL_31;
          }

          v53 = *(v50 + 8 * v62);
          ++v55;
          if (v53)
          {
            v55 = v62;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        break;
      }

      v62 = v55;
LABEL_30:
      v65 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v66 = v65 | (v62 << 6);
      v67 = *(*(result + 48) + 8 * v66);
      v68 = v186;
      (*(v23 + 16))(v186, *(result + 56) + *(v23 + 72) * v66, a5);
      v69 = *(v54 + 48);
      v70 = v167;
      *v167 = v67;
      (*(v23 + 32))(&v70[v69], v68, a5);
      v71 = 0;
LABEL_31:
      v72 = *(v54 - 8);
      (*(v72 + 56))(v70, v71, 1, v54);
      v73 = v165;
      (*v163)(v165, v70, v166);
      if ((*(v72 + 48))(v73, 1, v54) == 1)
      {

        v110 = v196;
        v111 = v170;
        v112 = MEMORY[0x2743B2460](v196, MEMORY[0x277D83B88]);
        v113 = v187;
        if (v112 == v187)
        {
          v195 = static Array._allocateUninitialized(_:)();
          type metadata accessor for Array();
          Array.reserveCapacity(_:)(v113);
          v114 = 0;
          v115 = v151;
          v116 = v111;
          while (1)
          {
            v194 = v114;
            MEMORY[0x2743B2480](&v192, &v194, v110, MEMORY[0x277D83B88], v116, MEMORY[0x277D83B98]);
            v117 = v192;
            if (!v192)
            {

              v192 = 0;
              v193 = 0xE000000000000000;
              _StringGuts.grow(_:)(31);

              v192 = 0xD00000000000001DLL;
              v193 = 0x8000000270C52620;
              v194 = v114;
              v140 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v140);

              v138 = v192;
              v139 = v193;
              goto LABEL_97;
            }

            v118 = v115;
            swift_beginAccess();

            v120 = MEMORY[0x2743B2830](v119, v185);

            v121 = v189;
            if (v120 > v189)
            {

              v192 = 0;
              v193 = 0xE000000000000000;
              _StringGuts.grow(_:)(53);
              MEMORY[0x2743B25F0](0x6465746365707845, 0xEC000000203D3C20);
              v194 = v121;
              v142 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v142);

              MEMORY[0x2743B25F0](0xD000000000000019, 0x8000000270C52640);
              v194 = v114;
              v143 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v143);

              MEMORY[0x2743B25F0](0x6F6720747562202CLL, 0xEA00000000002074);

              v145 = MEMORY[0x2743B2830](v144, v185);

              v194 = v145;
              v146 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v146);

              v147 = v192;
              v148 = v193;
              lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
              swift_allocError();
              *v149 = v147;
              *(v149 + 8) = v148;
              *(v149 + 16) = 0;
              *(v149 + 24) = 3;
              swift_willThrow();
            }

            v122 = v110;
            swift_beginAccess();
            v123 = *(v117 + 16);
            v124 = *(v117 + 24);
            v125 = swift_allocObject();

            LeafParent.init(dimensionBitCount:prefix:blockSize:leaves:)(v152, v123, v121, v124);
            v115 = v118;
            if (v118)
            {
              break;
            }

            ++v114;
            v192 = v125;
            Array.append(_:)();

            v116 = v170;
            v110 = v122;
            if (v187 == v114)
            {

              return v195;
            }
          }
        }

        else
        {
          v191[0] = 0;
          v191[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          strcpy(v191, "Expected ");
          WORD1(v191[1]) = 0;
          HIDWORD(v191[1]) = -385875968;
          v190 = v113;
          v135 = MEMORY[0x277D83B88];
          v136 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v136);

          MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C52600);
          v190 = MEMORY[0x2743B2460](v110, v135, v111, MEMORY[0x277D83B98]);
          v137 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v137);

          v138 = v191[0];
          v139 = v191[1];
LABEL_97:
          lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
          swift_allocError();
          *v141 = v138;
          *(v141 + 8) = v139;
          *(v141 + 16) = 0;
          *(v141 + 24) = 2;
          swift_willThrow();
        }
      }

      v74 = *v73;
      (*v175)(v188, v73 + *(v54 + 48), a5);
      if ((v74 & 0x8000000000000000) != 0 || v162 < v74)
      {
        v191[0] = 0;
        v191[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(31);

        v191[0] = 544826699;
        v191[1] = 0xE400000000000000;
        v190 = v74;
        v126 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v126);

        MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52680);
        v190 = v162;
        v127 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v127);

        MEMORY[0x2743B25F0](93, 0xE100000000000000);
        v128 = v191[0];
        v129 = v191[1];
        lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
        swift_allocError();
        *v130 = v128;
        *(v130 + 8) = v129;
        *(v130 + 16) = 0;
        *(v130 + 24) = 1;
        swift_willThrow();

        (*v172)(v188, a5);
      }

      v75 = v189;
      v76 = v74 % v161 / v189;
      v174 = v74 % v161 % v189;
      v171 = v74 / v161;
      v190 = v74 / v161;
      MEMORY[0x2743B2480](v191, &v190, v196, MEMORY[0x277D83B88], v170, MEMORY[0x277D83B98]);
      v77 = v191[0];
      if (v191[0])
      {
        swift_beginAccess();
        if (*(v77 + 16) != v76)
        {
          v191[0] = 0;
          v191[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(43);

          strcpy(v191, "super block ");
          BYTE5(v191[1]) = 0;
          HIWORD(v191[1]) = -5120;
          v190 = v171;
          v131 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v131);

          MEMORY[0x2743B25F0](0xD00000000000001DLL, 0x8000000270C52660);
          v132 = v191[0];
          v133 = v191[1];
          lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
          swift_allocError();
          *v134 = v132;
          *(v134 + 8) = v133;
          *(v134 + 16) = 0;
          *(v134 + 24) = 4;
          swift_willThrow();

          (*v172)(v188, a5);
        }

        v78 = v183;
        (*v173)(v183, v188, a5);
        v79 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v168 = v77;
        if ((v79 & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
        {
          v191[0] = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
            {
              goto LABEL_61;
            }

LABEL_49:
            lazy protocol witness table accessor for type Int and conformance Int();
            v86 = v186;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            result = (*v172)(v86, a5);
            if (v87)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v84 = dispatch thunk of static BinaryInteger.isSigned.getter();
            v85 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84)
            {
              if (v85 > 64)
              {
                goto LABEL_49;
              }

              swift_getAssociatedConformanceWitness();
              dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              v91 = v186;
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v92 = dispatch thunk of static Comparable.< infix(_:_:)();
              result = (*v172)(v91, a5);
              if (v92)
              {
                goto LABEL_106;
              }

LABEL_61:
              dispatch thunk of BinaryInteger._lowWord.getter();
            }

            else if (v85 < 64)
            {
              goto LABEL_61;
            }
          }
        }

        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v191[0] = 0x7FFFFFFFFFFFFFFFLL;
          v93 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v94 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v93)
          {
            if (v94 >= 65)
            {
              goto LABEL_70;
            }

LABEL_17:
            dispatch thunk of BinaryInteger._lowWord.getter();
          }

          else
          {
            if (v94 < 64)
            {
              goto LABEL_17;
            }

LABEL_70:
            lazy protocol witness table accessor for type Int and conformance Int();
            v95 = v186;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v96 = dispatch thunk of static Comparable.< infix(_:_:)();
            result = (*v172)(v95, a5);
            if (v96)
            {
              goto LABEL_102;
            }
          }
        }

        v56 = dispatch thunk of BinaryInteger._lowWord.getter();
        v57 = *v172;
        (*v172)(v78, a5);
        v58 = v182;
        v59 = v56;
        v60 = v158;
        FieldElement.init(_:)(v59, v158, v157, v182);
        Leaf.init(suffix:value:)(v174, v58, v60, v181, v61);
        swift_beginAccess();
        type metadata accessor for Array();
        Array.append(_:)();
        swift_endAccess();

        goto LABEL_19;
      }

      v168 = swift_allocObject();
      LeafParent.SuperBlockData.init(blockPrefix:blockSize:)(v76, v75, v80, v81);
      v82 = v180;
      (*v173)(v180, v188, a5);
      if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
      {
        v191[0] = 0x8000000000000000;
        if (dispatch thunk of static BinaryInteger.isSigned.getter())
        {
          v82 = v180;
          if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
          {
            goto LABEL_73;
          }

          lazy protocol witness table accessor for type Int and conformance Int();
          v83 = v186;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        }

        else
        {
          v88 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v89 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if ((v88 & 1) == 0)
          {
            if (v89 < 64)
            {
              goto LABEL_73;
            }

            goto LABEL_74;
          }

          if (v89 <= 64)
          {
            swift_getAssociatedConformanceWitness();
            dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v97 = v186;
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v98 = dispatch thunk of static Comparable.< infix(_:_:)();
            result = (*v172)(v97, a5);
            if (v98)
            {
              goto LABEL_107;
            }

LABEL_73:
            dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_74:
            v82 = v180;
            goto LABEL_75;
          }

          lazy protocol witness table accessor for type Int and conformance Int();
          v83 = v186;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v82 = v180;
        }

        v90 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*v172)(v83, a5);
        if (v90)
        {
          goto LABEL_107;
        }
      }

LABEL_75:
      v99 = v82;
      if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        v191[0] = 0x7FFFFFFFFFFFFFFFLL;
        v100 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v101 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v100)
        {
          if (v101 >= 65)
          {
            goto LABEL_78;
          }
        }

        else if (v101 >= 64)
        {
LABEL_78:
          lazy protocol witness table accessor for type Int and conformance Int();
          v102 = v186;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v103 = dispatch thunk of static Comparable.< infix(_:_:)();
          result = (*v172)(v102, a5);
          if (v103)
          {
            goto LABEL_103;
          }

          goto LABEL_85;
        }

        dispatch thunk of BinaryInteger._lowWord.getter();
      }

LABEL_85:
      v104 = dispatch thunk of BinaryInteger._lowWord.getter();
      v57 = *v172;
      (*v172)(v99, a5);
      v105 = v179;
      v106 = v104;
      v107 = v158;
      FieldElement.init(_:)(v106, v158, v157, v179);
      Leaf.init(suffix:value:)(v174, v105, v107, v178, v108);
      v109 = v168;
      swift_beginAccess();
      type metadata accessor for Array();
      Array.append(_:)();
      swift_endAccess();
      v191[0] = v109;
      v190 = v171;
      Dictionary.subscript.setter();
LABEL_19:
      v57(v188, a5);
      result = v169;
      v23 = v159;
      v54 = TupleTypeMetadata2;
      v50 = v156;
    }
  }

  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
  return result;
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (MEMORY[0x2743B2830](a1, TupleTypeMetadata2))
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = MEMORY[0x2743B2870](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for LeafParentError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
  result = lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LeafParentError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LeafParentError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in closure #1 in static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Leaf(0, *(v4 + 16), a3, a4);

  return static Array._allocateUninitialized(_:)();
}

unint64_t _sSa9repeating5countSayxGx_SitcfC4VDAF7Field40V_Tt1B5Tm(unint64_t result, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = result;
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a2;
  v5 = (result + 32);
  if (a2 <= 3)
  {
    v6 = 0;
LABEL_9:
    v10 = a2 - v6;
    do
    {
      *v5++ = v4;
      --v10;
    }

    while (v10);
    return result;
  }

  v6 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v5 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = vdupq_n_s64(v4);
  v8 = (result + 48);
  v9 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v8[-1] = v7;
    *v8 = v7;
    v8 += 2;
    v9 -= 4;
  }

  while (v9);
  if (v6 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

void *DPFGenerator.validateValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  result = Sequence<>.max()();
  if (v12)
  {
    lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 1;
    return swift_willThrow();
  }

  if (a2 < -64 || a2 > 64)
  {
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2 != 64)
    {
      if (v11 < 1 << a2)
      {
        return result;
      }

      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (a2 == -64)
  {
LABEL_5:
    if (v11 < 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v11 >= 0)
  {
LABEL_10:
    lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
    swift_allocError();
    *v10 = v11;
    *(v10 + 8) = a2;
    *(v10 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t DPFGenerator.generateInner(for:party0:party1:using:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v17 = type metadata accessor for LeafParent(0, a11, a13, a4);
  v18 = MEMORY[0x2743B2830](a1, v17);
  InnerCorrectionCalculator.init(leafParents:domainSeparationTag:)();
  v44 = v20;
  v45 = v19;
  *&v51 = a1;
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.first.getter();
  if (v56)
  {
    v21 = *(v56 + 32);
  }

  else
  {
    v21 = 0;
  }

  outlined copy of Data._Representation(a2, a3);
  v22 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(a2, a3, v18);
  outlined consume of Data._Representation(a2, a3);
  outlined copy of Data._Representation(a4, a5);
  v23 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(a4, a5, v18);
  outlined consume of Data._Representation(a4, a5);
  result = makeClientRootCtrls(_:)(v18);
  if (v21 < 0)
  {
    __break(1u);
  }

  else
  {
    v26 = v25;
    if (v21)
    {
      v41 = v21;
      v27 = 0;
      v28 = MEMORY[0x277D84F90];
      v29 = v25;
      v30 = result;
      v31 = v23;
      v32 = v47;
      while (1)
      {
        InnerCorrectionCalculator.generate(at:with:using:)(v27, v22, v31, v30, v29, a6, a7, v45, &v51, v44, a11, a13);
        if (v32)
        {
          break;
        }

        v46 = v51;
        v33 = v52;
        v34 = v54;
        v48 = v55;
        v50 = v53;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v36 = *(v28 + 2);
        v35 = *(v28 + 3);
        if (v36 >= v35 >> 1)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v28);
          result = v34;
          v37 = v33;
        }

        else
        {
          v37 = v33;
          result = v34;
        }

        v32 = 0;
        ++v27;
        *(v28 + 2) = v36 + 1;
        *&v28[16 * v36 + 32] = v46;
        v26 = v48;
        v23 = v50;
        v29 = v48;
        v30 = result;
        v31 = v50;
        v22 = v37;
        if (v41 == v27)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
      v37 = v22;
LABEL_16:
      v38 = v37;
      v39 = result;

      *a8 = v38;
      a8[1] = v23;
      a8[2] = v39;
      a8[3] = v26;
      a8[4] = v28;
    }
  }

  return result;
}

void *DPFGenerator.generate<A>(for:seedForParty0:seedForParty1:using:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t)@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void (**a15)(void, void, void), uint64_t a16)
{
  v44 = a11;
  result = specialized DPFGenerator.validateInputs<A>(_:_:_:_:)(a1, a2, a3, a4, a5, a8, a9, a10, a11, a12, a13);
  if (!v17)
  {
    type metadata accessor for LeafParent(0, v44, a14, v23);
    v24 = static LeafParent.makeLeafParents<A>(dimensionBitCount:blockSize:from:)(a8, a9, a1, a13, a16);
    DPFGenerator.generateInner(for:party0:party1:using:)(v24, a2, a3, a4, a5, a6, a7, v43, v34, a10, v44, a14, a14);
    v38 = v43[1];
    v40 = v43[0];
    v25 = v43[3];
    v42 = v43[4];
    LeafCorrectionCalculator.init(blockSize:leafParents:domainSeparationTag:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    LeafCorrectionCalculator.calculate(seedsParty0:seedsParty1:nonce:ctrlParty1:)(v40, v38, a6, a7, v25, v27, v31, v29, v44, a12, a14, a15);
    v33 = v32;

    return PreamblePublicShare.init(inner:leaf:)(v42, v33, x8_0);
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(void *result, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        outlined copy of Data._Representation(v4, a2);
        *(v9 - 1) = v4;
        *v9 = a2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    outlined copy of Data._Representation(v4, a2);
    return v7;
  }

  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSay4VDAF7Field40VG_Tt1g5Tf4gn_nTm(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 40);
      do
      {
        *v9++ = v5;

        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t specialized DPFGenerator.validateSeedsNonce(_:_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_25;
    }

    v5 = v5;
  }

LABEL_11:
  v9 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      if (!v5)
      {
        return result;
      }

LABEL_23:
      lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
      swift_allocError();
      *v13 = xmmword_270C44F50;
      *(v13 + 16) = 1;
      return swift_willThrow();
    }

    v11 = *(a3 + 16);
    v10 = *(a3 + 24);
    v8 = __OFSUB__(v10, v11);
    v12 = v10 - v11;
    if (!v8)
    {
      if (v5 == v12)
      {
        return result;
      }

      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9)
  {
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      if (v5 != HIDWORD(a3) - a3)
      {
        goto LABEL_23;
      }

      return result;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  if (v5 != BYTE6(a4))
  {
    goto LABEL_23;
  }

  return result;
}

void *specialized DPFGenerator.validateInputs<A>(_:_:_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  result = specialized DPFGenerator.validateSeedsNonce(_:_:_:)(a2, a3, a4, a5);
  if (!v11)
  {
    return DPFGenerator.validateValues<A>(_:)(a1, a6, v15, v16, v17, v18, a11);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GeneratorError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
  result = lazy protocol witness table accessor for type GeneratorError and conformance GeneratorError();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata instantiation function for DPFGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *one-time initialization function for cache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SaySiGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static BitReversal.cache = result;
  return result;
}

uint64_t one-time initialization function for lock()
{
  type metadata accessor for Lock();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 16) = result;
  static BitReversal.lock = v0;
  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void specialized static BitReversal.indicesFor(_:)(uint64_t a1)
{
  if (a1 != 1)
  {
    if (one-time initialization token for lock != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v2 = static BitReversal.lock;
      os_unfair_lock_lock((*(static BitReversal.lock + 2) + 16));
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v3 = static BitReversal.cache;
      if (*(static BitReversal.cache + 2) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
      {
        v6 = *(*(v3 + 56) + 8 * v4);
      }

      else
      {
        v6 = 0;
      }

      swift_endAccess();
      os_unfair_lock_unlock((v2[2] + 16));
      if (v6)
      {
        break;
      }

      if (a1 < 0)
      {
        __break(1u);
LABEL_22:
        *(MEMORY[0x277D84F90] + 40) = v3;
        __break(1u);
        return;
      }

      v3 = a1 >> 1;
      if (!a1)
      {
        goto LABEL_22;
      }

      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = a1;
      bzero(v7 + 4, 8 * a1);
      v7[5] = v3;
      v8 = (a1 >> 1) - 1;
      if (a1 >> 1 == 1)
      {
LABEL_16:
        if (a1 <= 1024)
        {
          os_unfair_lock_lock((v2[2] + 16));
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v14 = static BitReversal.cache;
          static BitReversal.cache = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);
          static BitReversal.cache = v14;
          swift_endAccess();
          os_unfair_lock_unlock((v2[2] + 16));
        }

        return;
      }

      v9 = v7 + 7;
      v10 = v7 + 5;
      v11 = 0x3FFFFFFFFFFFFFFFLL;
      while (v11)
      {
        v12 = *v10++;
        *(v9 - 1) = v12 >> 1;
        *v9 = (v12 >> 1) + v3;
        --v11;
        v9 += 2;
        if (!--v8)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      swift_once();
    }
  }
}

uint64_t static Share.== infix(_:_:)(uint64_t result, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return static Array<A>.== infix(_:_:)();
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  v6 = *(result + 16);
  if (v6 != *(a3 + 16))
  {
    return 0;
  }

  if (!v6 || result == a3)
  {
    return 1;
  }

  v7 = (result + 32);
  v8 = (a3 + 32);
  while (v6)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = *v8++;
    result = v9 == v11;
    if (v9 != v11 || v6-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShareDecodableParameter.encodedLength.getter(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) == 0)
  {
    v4 = result;
    v5 = (*(a4 + 64))(a3, a4);
    v6 = (v5 * v4) >> 64 == (v5 * v4) >> 63;
    result = v5 * v4;
    if (!v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Share.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v10 = a1;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v17)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v22 = 0;
    v22[1] = 0;
    swift_willThrow();
    (*(v11 + 8))(v10, a5);
    return v10;
  }

  v42 = v13;
  v43 = v14;
  v18 = v12;
  v44 = v10;
  v45 = v11;
  v19 = dispatch thunk of Collection.count.getter();
  v20 = v19;
  if (a3)
  {
    if (v19 == v18)
    {
      v21 = v44;
      v10 = specialized Seed.init<A>(from:parameter:)(v44, a5, a7);
      (*(v45 + 8))(v21, a5);
    }

    else
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      v27 = v18;
      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EC0);
      v28 = v44;
      v48 = dispatch thunk of Collection.count.getter();
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v29);

      MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
      v48 = v27;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v30);

      v31 = v46;
      v10 = v47;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v32 = v31;
      v32[1] = v10;
      swift_willThrow();
      (*(v45 + 8))(v28, a5);
    }

    return v10;
  }

  v41 = a5;
  v40 = *(v43 + 64);
  result = v40();
  if ((v18 * result) >> 64 == (v18 * result) >> 63)
  {
    if (v20 == v18 * result)
    {
      v25 = v44;
      v24 = v45;
      v26 = v41;
      (*(v45 + 16))(v16, v44, v41);
      v10 = Array<A>.init<A>(from:)(v16, v42, v26, v43, a7);
      (*(v24 + 8))(v25, v26);
    }

    else
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      MEMORY[0x2743B25F0](0xD000000000000022, 0x8000000270C51EF0);
      v33 = v44;
      v34 = v41;
      v48 = dispatch thunk of Collection.count.getter();
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v35);

      MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
      v48 = v40();
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v36);

      MEMORY[0x2743B25F0](0x65707865203D2120, 0xED00003D64657463);
      v48 = v18;
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v37);

      v38 = v46;
      v10 = v47;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v39 = v38;
      v39[1] = v10;
      swift_willThrow();
      (*(v45 + 8))(v33, v34);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance Share<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = Share.init<A>(from:parameter:)(a1, *a2, *(a2 + 8), *(a5 + 16), a3, *(a5 + 24), a4);
  if (!v6)
  {
    *a6 = result;
    *(a6 + 8) = v9 & 1;
  }

  return result;
}

uint64_t Share.encodedLength.getter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return *(a1 + 16);
  }

  v6 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encodedLength.getter(v6, WitnessTable, *(a4 + 40));
}

uint64_t Share.encode<A>(into:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {

    return Seed.encode<A>(into:)(a1, a2, a5, a7);
  }

  else
  {
    v12 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    return Collection<>.encode<A>(into:)(a1, v12, a5, WitnessTable, a7, *(a6 + 40));
  }
}

uint64_t type metadata instantiation function for Share(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Share(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Share(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

size_t makeClientRootCtrls(_:)(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v2 + 16) = v1;
      bzero((v2 + 32), v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySbGMd, &_sSaySbGMR);
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4 = v3;
      *(v3 + 16) = v1;
      *(v3 + 32) = v2;
      v5 = v1 - 1;
      if (v1 != 1)
      {
        v6 = (v3 + 40);
        do
        {
          *v6++ = v2;

          --v5;
        }

        while (v5);
      }

      v11 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
      v7 = v1;
      do
      {
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v1;
        bzero((v8 + 32), v1);
        *(v8 + 32) = 1;
        v10 = *(v11 + 16);
        v9 = *(v11 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        }

        *(v11 + 16) = v10 + 1;
        *(v11 + 8 * v10 + 32) = v8;
        --v7;
      }

      while (v7);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

void *makeClientRootInput(seedParty0:seedParty1:keptBlockCount:)(void *a1, unint64_t a2, void *a3, unint64_t a4, size_t a5)
{
  outlined copy of Data._Representation(a1, a2);
  v10 = _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(a1, a2, a5);
  outlined consume of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a3, a4);
  _sSa9repeating5countSayxGx_SitcfC10Foundation4DataV_Tt1g5Tf4gn_n(a3, a4, a5);
  outlined consume of Data._Representation(a3, a4);
  makeClientRootCtrls(_:)(a5);
  return v10;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ClientLevelInput(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ClientLevelInput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OutputShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X5>, uint64_t *a6@<X8>)
{
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v16);
  v17 = Array<A>.init<A>(from:)(v15, a2, a3, a4, a5);
  result = (*(v13 + 8))(a1, a3);
  if (!v6)
  {
    *a6 = v17;
  }

  return result;
}

uint64_t OutputShare.encodedLength.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x2743B2830](v3, v4);
  v6 = (*(*(a1 + 24) + 64))(v4);
  result = v5 * v6;
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t OutputShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encode<A>(into:)(a1, v8, a3, WitnessTable, a4, *(*(a2 + 24) + 40));
}

uint64_t type metadata instantiation function for OutputShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static PINEInputShare.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v13 = *(a2 + 40);
  if ((static Share.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8), a3, a5) & 1) == 0 || (static Share.== infix(_:_:)(v7, v8, v11, v12, a3, a5) & 1) == 0 || (specialized static Seed.== infix(_:_:)(v10, v14) & 1) == 0)
  {
    return 0;
  }

  return specialized static Seed.== infix(_:_:)(v9, v13);
}

uint64_t PINEInputShare.init(measurementShare:proofShare:wraparoundJointRandBlind:verificationJointRandBlind:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t PINEInputShare.DecodableParameter.encodedLength.getter(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = a1[2];
  v8 = a1[4];
  v9 = ShareDecodableParameter.encodedLength.getter(v3, v4, v7, v8);
  result = ShareDecodableParameter.encodedLength.getter(v5, v6, v7, v8);
  v11 = v9 + result;
  if (__OFADD__(v9, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  result = (*(a1[5] + 8))();
  if (result + 0x4000000000000000 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = __OFADD__(v11, 2 * result);
  result = v11 + 2 * result;
  if (v12)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t PINEInputShare.DecodableParameter.init<A>(vdaf:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27[0] = a3;
  v27[1] = a5;
  v27[2] = a4;
  v27[3] = a6;
  v27[4] = a8;
  v27[5] = a7;
  v27[6] = a10;
  v15 = type metadata accessor for PINE(0, v27);
  swift_getWitnessTable();
  v16 = VDAFProtocol.isLeaderAggregatorID(_:)(a2);
  if (v17)
  {
    return (*(*(v15 - 8) + 8))(a1, v15);
  }

  v19 = v16;
  if (v16)
  {
    v20 = PINE.measurementShareLength.getter(v15);
    v28 = 0;
    v21 = PINE.proofLength.getter(v15);
  }

  else
  {
    v26 = *(a7 + 8);
    v22 = v26(a4, a7);
    v28 = 1;
    v23 = a7;
    v20 = v22;
    v21 = v26(a4, v23);
  }

  v24 = v21;
  result = (*(*(v15 - 8) + 8))(a1, v15);
  v25 = v28;
  *a9 = v20;
  *(a9 + 8) = v25;
  *(a9 + 16) = v24;
  *(a9 + 24) = !v19;
  return result;
}

uint64_t PINEInputShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v113 = a3;
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v14 + 8);
  if (v19 == 255)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v20 = 0;
    v20[1] = 0;
    swift_willThrow();
    return (*(v13 + 8))(a1, a5);
  }

  v105 = v7;
  v108 = v13;
  v109 = a1;
  v103 = v16;
  v22 = *v14;
  v23 = v19;
  v24 = *(v14 + 16);
  v25 = a5;
  v26 = *(v14 + 24);
  v27 = *(*(v15 + 8) + 8);
  v111 = v25;
  v107 = v27;
  v106 = dispatch thunk of Collection.count.getter();
  v110 = v22;
  v118 = a7;
  v119 = v22;
  v28 = v24;
  v29 = v23;
  v30 = v23 & 1;
  LOBYTE(v120) = v30;
  v121 = v28;
  LODWORD(v104) = v26;
  v31 = v26 & 1;
  v122 = v31;
  v115 = v113;
  v116 = a4;
  v112 = a6;
  v117 = a6;
  v32 = type metadata accessor for PINEInputShare.DecodableParameter(0, &v115);
  v33 = PINEInputShare.DecodableParameter.encodedLength.getter(v32);
  if (v106 != v33)
  {
    v115 = 0;
    v116 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v115 = v113;
    v116 = a4;
    v117 = v112;
    v118 = a7;
    type metadata accessor for PINEInputShare(0, &v115);
    v47 = _typeName(_:qualified:)();
    v49 = v48;

    v119 = v47;
    v120 = v49;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v115 = v110;
    LOBYTE(v116) = v30;
    v117 = v28;
    LOBYTE(v118) = v31;
    v114 = PINEInputShare.DecodableParameter.encodedLength.getter(v32);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v50);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v51 = v109;
    v52 = v111;
    v115 = dispatch thunk of Collection.count.getter();
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v53);

    v54 = v119;
    v55 = v120;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v56 = v54;
    v56[1] = v55;
    swift_willThrow();
    return (*(v108 + 8))(v51, v52);
  }

  v106 = v28;
  v99 = a4;
  v100 = a7;
  (*(v108 + 16))(v18, v109, v111);
  ArraySlice.init<A>(_:)();
  ShareDecodableParameter.encodedLength.getter(v110, v29 & 1, v113, v112);
  v107 = specialized Collection.prefix(_:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  specialized Collection.dropFirst(_:)();
  v102 = v40;
  v101 = v41;
  v115 = v107;
  v116 = v35;
  v117 = v37;
  v118 = v39;
  swift_unknownObjectRetain();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v43 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v44 = v105;
  v45 = Share.init<A>(from:parameter:)(&v115, v110, v29 & 1, v113, v42, v112, v43);
  if (v44)
  {
    (*(v108 + 8))(v109, v111);
    return swift_unknownObjectRelease();
  }

  v105 = v45;
  v124 = v46 & 1;
  ShareDecodableParameter.encodedLength.getter(v106, v104 & 1, v113, v112);
  v110 = specialized Collection.prefix(_:)();
  v58 = v57;
  v60 = v59;
  v107 = v61;
  specialized Collection.dropFirst(_:)();
  v63 = v62;
  v102 = v64;
  v115 = v110;
  v116 = v58;
  v117 = v60;
  v118 = v107;
  swift_unknownObjectRetain();
  v101 = Share.init<A>(from:parameter:)(&v115, v106, v104 & 1, v113, v42, v112, v43);
  v123 = v65 & 1;
  v66 = v99;
  v112 = *(v100 + 8);
  v104 = v100 + 8;
  v112(v99);
  v67 = v63;
  v68 = specialized Collection.prefix(_:)();
  v98 = v69;
  v71 = v70;
  v73 = v72;
  v113 = specialized Collection.dropFirst(_:)();
  v110 = v74;
  v106 = v75;
  v107 = v76;
  if (v73)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v80 = swift_dynamicCastClass();
    if (!v80)
    {
      swift_unknownObjectRelease();
      v80 = MEMORY[0x277D84F90];
    }

    v81 = *(v80 + 16);

    if (__OFSUB__(v73 >> 1, v71))
    {
      __break(1u);
      goto LABEL_29;
    }

    v67 = v71;
    if (v81 != (v73 >> 1) - v71)
    {
      goto LABEL_30;
    }

    v78 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v66 = v99;
    v79 = v112;
    if (v78)
    {
      goto LABEL_17;
    }

    v78 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v67 = v71;
  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v68, v98, v67, v73);
    v78 = v77;
    v79 = v112;
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    v113 = v78;
    v79(v66, v100);
    v68 = specialized Collection.prefix(_:)();
    v112 = v82;
    v73 = v83;
    v85 = v84;
    specialized Collection.dropFirst(_:)();
    if ((v85 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_19:
      v86 = v108;
      specialized _copyCollectionToContiguousArray<A>(_:)(v68, v112, v73, v85);
      v88 = v87;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = (*(v86 + 8))(v109, v111);
      goto LABEL_27;
    }

    v67 = type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v89 = swift_dynamicCastClass();
    if (!v89)
    {
      swift_unknownObjectRelease();
      v89 = MEMORY[0x277D84F90];
    }

    v90 = *(v89 + 16);

    v91 = v111;
    if (!__OFSUB__(v85 >> 1, v73))
    {
      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    swift_unknownObjectRelease_n();
    v66 = v99;
  }

  if (v90 != (v85 >> 1) - v73)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_19;
  }

  v88 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v92 = v108;
  if (!v88)
  {
    swift_unknownObjectRelease();
    v88 = MEMORY[0x277D84F90];
  }

  (*(v92 + 8))(v109, v91);
  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
LABEL_27:
  v93 = v113;
  v94 = v124;
  v95 = v123;
  v96 = v103;
  *v103 = v105;
  *(v96 + 8) = v94;
  v96[2] = v101;
  *(v96 + 24) = v95;
  v96[4] = v93;
  v96[5] = v88;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance PINEInputShare<A, B>(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 2);
  v6 = *(a2 + 24);
  v8 = *a2;
  v9 = v5;
  v10 = v6;
  return PINEInputShare.init<A>(from:parameter:)(a1, &v8, *(a5 + 16), *(a5 + 24), a3, *(a5 + 32), *(a5 + 40));
}

uint64_t PINEInputShare.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v6 = *(v1 + 40);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = Share.encodedLength.getter(v2, v3, v8, v9);
  result = Share.encodedLength.getter(v4, v5, v8, v9);
  v12 = v10 + result;
  if (__OFADD__(v10, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = *(v7 + 16);
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = *(v6 + 16);
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t PINEInputShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v13 = *(v4 + 32);
  v12 = *(v4 + 40);
  v14 = *(a2 + 16);
  v15 = *(a2 + 32);
  Share.encode<A>(into:)(a1, v8, v9, v14, a3, v15, a4);
  Share.encode<A>(into:)(a1, v10, v11, v14, a3, v15, a4);
  Seed.encode<A>(into:)(a1, v13, a3, a4);

  return Seed.encode<A>(into:)(a1, v12, a3, a4);
}

uint64_t type metadata instantiation function for PINEInputShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for PINEInputShare.DecodableParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PINEInputShare.DecodableParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PINEInputShare.DecodableParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 16);
  v13 = *(a6 + 8);
  result = (*(v13 + 8))(a5, v13);
  if (v12 == result)
  {
    v15 = *(a6 + 16);

    v16 = v15(a1, a2, a3, a4, a5, a6);
    (*(v13 + 24))(a5, v13);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

VDAF::Usage_optional __swiftcall Usage.init(rawValue:)(Swift::UInt16 rawValue)
{
  v2 = (rawValue - 1);
  if (v2 >= 0xC)
  {
    LOBYTE(v2) = 12;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Usage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Usage(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

uint64_t static VDAFProtocol.measurementShareXOF(seed:aggregatorID:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = 0;
  v9 = (*(a4 + 240))(&v14, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_270C44540;
  *(v10 + 32) = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(a1, v9, v10, AssociatedTypeWitness, AssociatedConformanceWitness);

  return v12;
}

uint64_t static VDAFProtocol.decodeMeasurementShare<A>(_:aggregatorID:count:)(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1;
  if (a2)
  {
    v11 = static VDAFProtocol.measurementShareXOF(seed:aggregatorID:)(a1, a3, a5, a7);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v12 = static FieldElement.randomVector<A>(count:using:)(a4, v11, a6);
    swift_unknownObjectRelease();
    return v12;
  }

  else
  {

    if (MEMORY[0x2743B2830](v14, a6) != a4)
    {

      _StringGuts.grow(_:)(57);
      MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
      MEMORY[0x2743B25F0](0xD00000000000002DLL, 0x8000000270C51E50);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v16;
      MEMORY[0x2743B25F0](v15);

      MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v17);

      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      *v18 = 0;
      *(v18 + 8) = 0xE000000000000000;
      *(v18 + 16) = 1;
      swift_willThrow();
    }

    return v10;
  }
}

uint64_t static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = specialized static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(a1, a2 & 1, a4, a5, a6, a7, a8, a9, a10);
  if (v10)
  {
    return v12;
  }

  return result;
}

uint64_t static VDAFProtocol.splitShare<A, B>(_:into:_:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a3;
  v27 = a4;
  result = MEMORY[0x28223BE20](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(v14, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 - 1 < 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v25 = v17;
  v28 = v15;
  if (v14 != 1)
  {
    result = 0;
    v18 = a10;
    v24 = v14 - 1;
    v30 = v28 + 8;
    v31 = a10;
    while (1)
    {
      v19 = result + 1;
      if (__OFADD__(result, 1))
      {
        break;
      }

      v20 = v26();
      result = MEMORY[0x2743B2830](*a1, a6);
      if (result < 0)
      {
        goto LABEL_14;
      }

      v29 = v19;
      v21 = v28;
      v22 = v25;
      if (result)
      {
        v23 = 0;
        v32 = result;
        v33 = v20;
        do
        {
          static FieldElement.randomElement<A>(using:)(v20, a6, a7, a9, v18, v22);
          type metadata accessor for Array();
          Array._makeMutableAndUnique()();
          Array._checkSubscript_mutating(_:)(v23);
          _swift_isClassOrObjCExistentialType();
          dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
          (*(v21 + 8))(v22, a6);
          v18 = v31;
          destructiveProjectEnumData for SeedCtrlUnadjustedError();
          v20 = v33;
          ++v23;
        }

        while (v32 != v23);
      }

      swift_unknownObjectRelease();
      result = v29;
      if (v29 == v24)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t specialized static VDAFProtocol.decodeProofShare<A>(_:aggregatorID:count:makeXOF:)(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v11 = a4(a1);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    static FieldElement.randomVector<A>(count:using:)(a3, v11, a7);
    type metadata accessor for Array();
    swift_getWitnessTable();
    v12 = ArraySlice.init<A>(_:)();
    swift_unknownObjectRelease();
    return v12;
  }

  else
  {

    if (MEMORY[0x2743B2830](v14, a7) == a3)
    {
      type metadata accessor for Array();
      swift_getWitnessTable();
      return ArraySlice.init<A>(_:)();
    }

    else
    {

      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
      MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C51E20);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v15);

      MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v16);

      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      *v17 = 0;
      *(v17 + 8) = 0xE000000000000000;
      *(v17 + 16) = 1;
      return swift_willThrow();
    }
  }
}

unint64_t lazy protocol witness table accessor for type Usage and conformance Usage()
{
  result = lazy protocol witness table cache variable for type Usage and conformance Usage;
  if (!lazy protocol witness table cache variable for type Usage and conformance Usage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Usage and conformance Usage);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Usage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Usage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Array<A>.init<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v42 = *(a4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = type metadata accessor for Optional();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v44 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a5;
  v46 = a3;
  v16 = dispatch thunk of Collection.count.getter();
  v45 = *(a4 + 64);
  v17 = v45(a2, a4);
  if (v17 != -1)
  {
    if (v17)
    {
      v16 %= v17;
    }

    if (v16)
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      type metadata accessor for Array();
      v18 = _typeName(_:qualified:)();
      MEMORY[0x2743B25F0](v18);

      MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51B60);
      v19 = v46;
      v49 = dispatch thunk of Collection.count.getter();
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v20);

      MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C51B80);
      v49 = v45(a2, a4);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v21);

      MEMORY[0x2743B25F0](41, 0xE100000000000000);
      v22 = v47;
      v23 = v48;
      lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
      swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v23;
      *(v24 + 16) = 0;
      swift_willThrow();
      (*(v44 + 8))(a1, v19);
      return v22;
    }
  }

  v25 = dispatch thunk of Collection.count.getter();
  result = v45(a2, a4);
  if (result)
  {
    if (v25 != 0x8000000000000000 || result != -1)
    {
      v38 = a4;
      v39 = a1;
      v28 = v44;
      v29 = *(v44 + 16);
      v37 = v25 / result;
      v30 = a1;
      v31 = v46;
      v29(v15, v30, v46);
      v32 = TupleTypeMetadata3;
      v33 = *(TupleTypeMetadata3 + 48);
      v34 = *(TupleTypeMetadata3 + 64);
      (*(*(AssociatedTypeWitness - 8) + 56))(v13, 1, 1);
      v35 = v38;
      *&v13[v33] = v37;
      *&v13[v34] = v45(a2, v35);
      (*(*(v32 - 8) + 56))(v13, 0, 1, v32);
      v22 = Array<A>.init<A>(from:parameter:)(v15, v13, a2, v31, v42, v43);
      (*(v28 + 8))(v39, v31);
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

uint64_t static FieldElement.randomVector<A>(count:using:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13[10] = 0;
    v13[11] = result;
    MEMORY[0x28223BE20](result);
    v13[2] = v5;
    v13[3] = v6;
    v13[4] = v7;
    v13[5] = v8;
    v13[6] = v3;
    v13[7] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v11 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FieldElement.randomVector<A>(count:using:), v13, v10, a3, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v12);
  }

  return result;
}

uint64_t FieldElement.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v19 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v20 = a1;
    swift_getAssociatedConformanceWitness();
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(_:)();
LABEL_5:
    (*(v8 + 16))(v14, v16, AssociatedTypeWitness);
    FieldElement.init(_:)(v14, a2, a3);
    return (*(v8 + 8))(v16, AssociatedTypeWitness);
  }

  result = static FieldElement.modulus.getter(a2, a3);
  if (!__OFSUB__(0, a1))
  {
    v20 = -a1;
    swift_getAssociatedConformanceWitness();
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(_:)();
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v18 = *(v8 + 8);
    v18(v11, AssociatedTypeWitness);
    v18(v14, AssociatedTypeWitness);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t static FieldElement.randomElement<A>(using:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a3;
  v42 = a5;
  v40 = a1;
  v32 = a6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = &protocol requirements base descriptor for FiniteFieldProtocol;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v18 = a4 + 64;
  v17 = *(a4 + 64);
  v19 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v34 = *(*(v19 + 24) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v35 = v17;
  v36 = a4 + 64;
  v20 = v17(a2, a4);
  if (v20 < 0)
  {
LABEL_8:
    __break(1u);
  }

  else
  {
    v21 = a4;
    v22 = (v42 + 32);
    v23 = (v33 + 8);
    v44 = (v42 + 32);
    v45 = v19;
    v37 = a2;
    v38 = v21;
    v46 = v16;
    while (1)
    {
      v24 = v14;
      v25 = MEMORY[0x277D84B78];
      v26 = v39;
      if (v20)
      {
        v27 = 0;
        v43 = *v22;
        do
        {
          v47 = v20;
          v49 = v43(v41, v42);
          lazy protocol witness table accessor for type UInt8 and conformance UInt8();
          dispatch thunk of BinaryInteger.init<A>(_:)();
          v48 = v27;
          lazy protocol witness table accessor for type Int and conformance Int();
          dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
          v28 = v25;
          v29 = *v23;
          (*v23)(v26, AssociatedTypeWitness);
          dispatch thunk of static BinaryInteger.|= infix(_:_:)();
          v29(v24, AssociatedTypeWitness);
          v25 = v28;
          v27 += 8;
          v20 = v47 - 1;
        }

        while (v47 != 1);
      }

      v8 = v37;
      v18 = v38;
      static FieldElement.modulus.getter(v37, v38);
      v16 = v46;
      v30 = dispatch thunk of static Comparable.> infix(_:_:)();
      a2 = *v23;
      (*v23)(v24, AssociatedTypeWitness);
      v14 = v24;
      if ((v30 & 1) == 0)
      {
        break;
      }

      a2(v16, AssociatedTypeWitness);
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v20 = v35(v8, v18);
      v22 = v44;
      if (v20 < 0)
      {
        goto LABEL_8;
      }
    }
  }

  (*(v33 + 16))(v14, v16, AssociatedTypeWitness);
  FieldElement.init(_:)(v14, v8, v18);
  return (a2)(v16, AssociatedTypeWitness);
}

uint64_t FieldElement.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v12 - v9;
  (*(a3 + 112))(a2, a3);
  swift_checkMetadataState();
  (*(AssociatedConformanceWitness + 64))(a1);
  (*(a3 + 96))(v10, a2, a3);
  return (*(v8 + 8))(a1, AssociatedTypeWitness);
}

uint64_t FieldElement.init(other:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v8 = &v10 - v7;
  (*(a3 + 112))(a2, a3);
  (*(a3 + 88))(a2, a3);
  (*(a3 + 96))(v8, a2, a3);
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t static FieldElement.modulus.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t FieldElement.init<A>(floatValue:fractionalBitCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[1] = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v16 = v18 - v15;
  static FieldElement.integerFrom<A>(floatValue:fractionalBitCount:)(a1, a2, a3, a4, a5, a6, v18 - v15);
  if (!v7)
  {
    FieldElement.init(_:)(v16, a3, a5);
  }

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t static FieldElement.integerFrom<A>(floatValue:fractionalBitCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v115 = a2;
  v90 = a7;
  v11 = *(a6 + 16);
  v100 = *(v11 + 16);
  v101 = a6;
  v98 = *(v100 + 8);
  v89 = *(v98 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v87 = &v83[-v12];
  swift_getAssociatedTypeWitness();
  v103 = a3;
  v104 = a5;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v110 = *(swift_getAssociatedConformanceWitness() + 8);
  v109 = *(v110 + 8);
  v86 = *(v109 + 24);
  v99 = *(v86 + 16);
  v97 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v97);
  v96 = &v83[-v13];
  v94 = type metadata accessor for FloatingPointRoundingRule();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v83[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = swift_checkMetadataState();
  v102 = *(v114 - 8);
  v15 = MEMORY[0x28223BE20](v114);
  v95 = &v83[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v106 = &v83[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v83[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v112 = &v83[-v22];
  v113 = *(a4 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v91 = &v83[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v105 = &v83[-v26];
  MEMORY[0x28223BE20](v25);
  v111 = &v83[-v27];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v28 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v28);
  v29 = swift_checkMetadataState();
  v116 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v107 = &v83[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v33 = &v83[-v32];
  if (dispatch thunk of FloatingPoint.isNaN.getter())
  {
    v34 = 0x8000000270C52050;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    v36 = 0xD000000000000011;
LABEL_7:
    *v35 = v36;
    *(v35 + 8) = v34;
LABEL_8:
    *(v35 + 16) = 4;
    return swift_willThrow();
  }

  if (dispatch thunk of FloatingPoint.isInfinite.getter())
  {
    v34 = 0x8000000270C52070;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    v36 = 0xD000000000000018;
    goto LABEL_7;
  }

  if (dispatch thunk of FloatingPoint.isSubnormal.getter())
  {
    v34 = 0x8000000270C52190;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    v36 = 0xD000000000000017;
    goto LABEL_7;
  }

  v85 = a1;
  dispatch thunk of FloatingPoint.exponent.getter();
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_22;
  }

  v117 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v84 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v84)
  {
    if (v38 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v41 = v107;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v42 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v116 + 8))(v41, v29);
      if (v42)
      {
LABEL_41:
        __break(1u);
        return result;
      }

      goto LABEL_21;
    }

LABEL_16:
    lazy protocol witness table accessor for type Int and conformance Int();
    v39 = v107;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v40 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v116 + 8))(v39, v29);
    if (v40)
    {
      goto LABEL_41;
    }

    goto LABEL_22;
  }

  if (v38 < 64)
  {
LABEL_21:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_22:
  v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v45 = v115;
  v44 = v116;
  if (v43 <= 64)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v117 = 0x7FFFFFFFFFFFFFFFLL;
    v46 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v47 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v46 & 1) == 0)
    {
      break;
    }

    if (v47 < 65)
    {
      goto LABEL_31;
    }

LABEL_25:
    lazy protocol witness table accessor for type Int and conformance Int();
    v48 = v107;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v49 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v44 + 8))(v48, v29);
    if (v49)
    {
      __break(1u);
LABEL_27:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (v47 >= 64)
  {
    goto LABEL_25;
  }

LABEL_31:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_32:
  v50 = dispatch thunk of BinaryInteger._lowWord.getter();
  v51 = *(v44 + 8);
  v116 = v44 + 8;
  result = v51(v33, v29);
  if (__OFADD__(v50, v45))
  {
    __break(1u);
    goto LABEL_41;
  }

  v52 = v114;
  if (v45 + v50 >= dispatch thunk of static FixedWidthInteger.bitWidth.getter())
  {
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52090);
    v75 = v107;
    dispatch thunk of FloatingPoint.exponent.getter();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v51(v75, v29);
    MEMORY[0x2743B25F0](0xD000000000000018, 0x8000000270C520B0);
    v119 = v115;
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v76);

    MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C520D0);
    v119 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v77);

    MEMORY[0x2743B25F0](46, 0xE100000000000000);
    v78 = v117;
    v79 = v118;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v35 = v78;
    *(v35 + 8) = v79;
    goto LABEL_8;
  }

  v117 = 1;
  lazy protocol witness table accessor for type Int and conformance Int();
  v53 = v108;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v117 = v115;
  dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
  v54 = *(v102 + 8);
  v110 = v102 + 8;
  v115 = v54;
  v54(v53, v52);
  v55 = v105;
  dispatch thunk of FloatingPoint.init<A>(_:)();
  dispatch thunk of static Numeric.* infix(_:_:)();
  v56 = v113 + 8;
  v116 = *(v113 + 8);
  (v116)(v55, a4);
  v57 = v93;
  v58 = v92;
  v59 = v94;
  (*(v93 + 104))(v92, *MEMORY[0x277D84670], v94);
  v60 = v91;
  dispatch thunk of FloatingPoint.rounded(_:)();
  (*(v57 + 8))(v58, v59);
  v107 = *(*(v11 + 24) + 8);
  abs<A>(_:)();
  v113 = v56;
  (v116)(v60, a4);
  v61 = v106;
  v62 = v114;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v63 = v108;
  static FieldElement.modulus.getter(v103, v104);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v64 = v95;
  v65 = v62;
  v66 = v115;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v67 = v112;
  dispatch thunk of static BinaryInteger./ infix(_:_:)();
  v66(v64, v65);
  v66(v63, v65);
  v68 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v66(v67, v65);
  if (v68)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v69 = v105;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v70 = dispatch thunk of static Comparable.< infix(_:_:)();
    v71 = v116;
    (v116)(v69, a4);
    if (v70)
    {
      v72 = v112;
      static FieldElement.modulus.getter(v103, v104);
      v73 = v106;
      v74 = v114;
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v66(v72, v74);
      v66(v73, v74);
      return v71(v111, a4);
    }

    else
    {
      v71(v111, a4);
      return (*(v102 + 32))(v90, v106, v114);
    }
  }

  else
  {
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);
    MEMORY[0x2743B25F0](0x6C615674616F6C66, 0xEB000000003D6575);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000020, 0x8000000270C52160);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](11817, 0xE200000000000000);
    v80 = v117;
    v81 = v118;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v82 = v80;
    *(v82 + 8) = v81;
    *(v82 + 16) = 4;
    swift_willThrow();
    v66(v61, v65);
    return (v116)(v111, a4);
  }
}

uint64_t FieldElement.init<A>(bytes:mask:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45[1] = a7;
  v51 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v46 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = v45 - v14;
  v15 = a6;
  v16 = *(*(a6 + 8) + 8);
  v54 = a1;
  v52 = a4;
  v47 = v16;
  v17 = dispatch thunk of Collection.count.getter();
  v18 = *(a5 + 64);
  if (v17 == v18(a3, a5))
  {
    v19 = v51;
    v20 = v18(a3, a5);
    v21 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v23 = v48;
    v24 = v54;
    v25 = v52;
    decodeInteger<A, B>(from:encodedLength:)(v54, v20, v52, v21, v15, *(AssociatedConformanceWitness + 8), v49);
    if (v23)
    {
      (*(v50 + 8))(v19, v21);
      return (*(*(v25 - 8) + 8))(v24, v25);
    }

    else
    {
      dispatch thunk of static BinaryInteger.&= infix(_:_:)();
      v37 = v46;
      static FieldElement.modulus.getter(a3, a5);
      v38 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v39 = v50;
      v40 = *(v50 + 8);
      v40(v37, v21);
      if (v38)
      {
        lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
        swift_allocError();
        *v41 = 0;
        *(v41 + 8) = 0;
        *(v41 + 16) = 5;
        swift_willThrow();
        v42 = AssociatedTypeWitness;
        v40(v51, AssociatedTypeWitness);
        (*(*(v52 - 8) + 8))(v54);
        v43 = v49;
      }

      else
      {
        v44 = v49;
        v42 = AssociatedTypeWitness;
        (*(v39 + 16))(v37, v49, AssociatedTypeWitness);
        FieldElement.init(_:)(v37, a3, a5);
        v40(v51, v42);
        (*(*(v52 - 8) + 8))(v54);
        v43 = v44;
      }

      return (v40)(v43, v42);
    }
  }

  else
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v27 = _typeName(_:qualified:)();
    v29 = v28;

    v55 = v27;
    v56 = v29;
    MEMORY[0x2743B25F0](0xD000000000000012, 0x8000000270C52710);
    v57 = v18(a3, a5);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v30);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v31 = v54;
    v32 = v52;
    v57 = dispatch thunk of Collection.count.getter();
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v33);

    v34 = v55;
    v35 = v56;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v36 = v34;
    *(v36 + 8) = v35;
    *(v36 + 16) = 0;
    swift_willThrow();
    (*(v50 + 8))(v51, AssociatedTypeWitness);
    return (*(*(v32 - 8) + 8))(v31, v32);
  }
}

uint64_t FieldElement.init(inputVector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a3;
  v81 = a4;
  v82 = a2;
  v66[1] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v92 = AssociatedTypeWitness;
  v78 = swift_getAssociatedTypeWitness();
  v86 = *(v78 - 8);
  v11 = MEMORY[0x28223BE20](v78);
  v77 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v76 = v66 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v66 - v16;
  v96 = *(a5 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v66 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v66 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v79 = v66 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v66 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = v66 - v32;
  v97 = a1;
  v34 = ArraySlice.count.getter();
  v35 = a6;
  v36 = v100;
  static FieldElement.assertValidBitLength(_:)(v34, a5, a6);
  v66[3] = v36;
  if (v36)
  {
    return swift_unknownObjectRelease();
  }

  v94 = v26;
  v74 = v20;
  v93 = v17;
  v100 = v23;
  (*(a6 + 72))(a5, a6);
  v73 = *(a6 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  FieldElement.init(_:)(2, a5, a6, v79);
  swift_unknownObjectRetain();
  v38 = v81;
  v39 = v80;
  v40 = ArraySlice.startIndex.getter();
  v41 = ArraySlice.endIndex.getter();
  v75 = v40;
  v42 = v39;
  v43 = v79;
  v44 = a5;
  if (v40 == v41)
  {
    swift_unknownObjectRelease();
    v45 = v96;
    v46 = v100;
    (*(v96 + 16))(v100, v31, v44);
LABEL_10:
    FieldElement.init(other:)(v46, v44, v35);
    swift_unknownObjectRelease();
    v65 = *(v45 + 8);
    v65(v43, v44);
    v65(v31, v44);
    return (v65)(v33, v44);
  }

  else
  {
    v98 = v33;
    v72 = v31;
    v70 = swift_checkMetadataState();
    v91 = *(v35 + 96);
    v92 = v35 + 96;
    v89 = *(v35 + 88);
    v90 = v35 + 88;
    v87 = *(AssociatedConformanceWitness + 56);
    v88 = AssociatedConformanceWitness + 56;
    v71 = v38 >> 1;
    v68 = (v86 + 8);
    v86 = v96 + 8;
    v69 = v96 + 16;
    v66[0] = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v47 = v75;
    v48 = v82;
    v49 = v94;
    v99 = v35;
    while (1)
    {
      result = ArraySlice._hoistableIsNativeTypeChecked()();
      if (v75 < v42 || v71 <= v47)
      {
        break;
      }

      v50 = *(v96 + 16);
      v50(v49, v48 + *(v96 + 72) * v47, v44);
      v85 = v47 + 1;
      v51 = v74;
      v67 = v50;
      v50(v74, v94, v44);
      FieldElement.init(other:)(v51, v44, v35);
      v52 = v76;
      v53 = v89;
      v89(v44, v35);
      v54 = v77;
      v53(v44, v35);
      v55 = v93;
      v56 = v70;
      v87(v52, v54, v70, AssociatedConformanceWitness);
      v57 = *v68;
      v84 = v57;
      v58 = v78;
      v57(v54, v78);
      v57(v52, v58);
      v91(v55, v44, v99);
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v83 = *(v96 + 8);
      v83(v100, v44);
      v59 = v89;
      v89(v44, v99);
      v59(v44, v99);
      v60 = v93;
      v61 = v56;
      v47 = v85;
      v87(v52, v54, v61, AssociatedConformanceWitness);
      v62 = v54;
      v46 = v100;
      v63 = v84;
      v84(v62, v58);
      v63(v52, v58);
      v64 = v60;
      v49 = v94;
      v35 = v99;
      (v91)(v64, v44);
      v83(v49, v44);
      v42 = v80;
      v48 = v82;
      if (v47 == ArraySlice.endIndex.getter())
      {
        swift_unknownObjectRelease();
        v45 = v96;
        v43 = v79;
        v31 = v72;
        v33 = v98;
        v67(v46, v72, v44);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static FieldElement.assertValidBitLength(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  v14 = *(a3 + 64);
  v30 = a2;
  v31 = a3;
  v27 = v14;
  result = (v14)(a2, a3);
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    return result;
  }

  v16 = v29;
  if (v29 >= 8 * result)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v32 = 0xD000000000000011;
    v33 = 0x8000000270C51DC0;
    v34 = v16;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v22);

    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C51DE0);
    v34 = v27();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v23);
  }

  else
  {
    v17 = v13;
    static FieldElement.modulus.getter(v30, v31);
    v32 = 1;
    v18 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(_:)();
    v32 = v16;
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v19 = *(v28 + 8);
    v19(v8, AssociatedTypeWitness);
    v28 = v18;
    v20 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v19(v11, AssociatedTypeWitness);
    result = (v19)(v17, AssociatedTypeWitness);
    if ((v20 & 1) == 0)
    {
      return result;
    }

    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C51DC0);
    v34 = v16;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v21);

    MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C52730);
    static FieldElement.modulus.getter(v30, v31);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v19(v17, AssociatedTypeWitness);
  }

  v24 = v32;
  v25 = v33;
  lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
  swift_allocError();
  *v26 = v24;
  *(v26 + 8) = v25;
  *(v26 + 16) = 3;
  return swift_willThrow();
}

uint64_t static FieldElement.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v25 = &v25 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, a3);
  FieldElement.init(other:)(v17, a3, a4);
  v19 = swift_checkMetadataState();
  v20 = *(a4 + 88);
  v20(a3, a4);
  v20(a3, a4);
  v21 = v25;
  (*(AssociatedConformanceWitness + 56))(v13, v10, v19);
  v22 = *(v7 + 8);
  v23 = AssociatedTypeWitness;
  v22(v10, AssociatedTypeWitness);
  v22(v13, v23);
  return (*(a4 + 96))(v21, a3, a4);
}

uint64_t static FieldElement.*= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &AssociatedConformanceWitness - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &AssociatedConformanceWitness - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &AssociatedConformanceWitness - v13;
  v15 = swift_checkMetadataState();
  v16 = *(a4 + 88);
  v16(a3, a4);
  v16(a3, a4);
  (*(AssociatedConformanceWitness + 56))(v12, v9, v15);
  v17 = *(v6 + 8);
  v18 = AssociatedTypeWitness;
  v17(v9, AssociatedTypeWitness);
  v17(v12, v18);
  return (*(a4 + 96))(v14, a3, a4);
}

uint64_t FieldElement.init(inputVector:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  v7 = ArraySlice.init<A>(_:)();
  return FieldElement.init(inputVector:)(v7, v8, v9, v10, a2, a3, a4);
}

uint64_t FieldElement.integerValue.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v11 - v7;
  v9 = swift_checkMetadataState();
  (*(a2 + 88))(a1, a2);
  (*(AssociatedConformanceWitness + 72))(v8, v9, AssociatedConformanceWitness);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t static FieldElement.encode(_:into:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v36 = a1;
  v37 = a3;
  v42 = a2;
  MEMORY[0x28223BE20](a1);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v43 = a5;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = v37;
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static FixedWidthInteger.bitWidth.getter() >= v18)
  {
    v35 = v9;
    (*(v9 + 16))();
    v44 = 1;
    lazy protocol witness table accessor for type Int and conformance Int();
    result = dispatch thunk of BinaryInteger.init<A>(_:)();
    if (v18 < 0)
    {
      __break(1u);
    }

    else
    {
      v25 = v15;
      v40 = a4;
      if (v18)
      {
        v38 = (v35 + 32);
        v39 = (v35 + 8);
        v26 = v37;
        do
        {
          v27 = v25;
          dispatch thunk of static BinaryInteger.& infix(_:_:)();
          FieldElement.init(_:)(v12, v40, v43);
          type metadata accessor for Array();
          Array.append(_:)();
          v44 = 1;
          dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
          (*v39)(v17, AssociatedTypeWitness);
          (*v38)(v17, v12, AssociatedTypeWitness);
          v25 = v27;
          --v26;
        }

        while (v26);
      }

      v43 = v25;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v35 + 8);
      v29(v12, AssociatedTypeWitness);
      if ((v28 & 1) == 0)
      {
        v44 = 0;
        v45 = 0xE000000000000000;
        _StringGuts.grow(_:)(39);
        MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51FD0);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        MEMORY[0x2743B25F0](0x6962206874697720, 0xEF3D687464695774);
        v46 = v37;
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v30);

        v31 = v44;
        v32 = v45;
        lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = v32;
        *(v33 + 16) = 1;
        swift_willThrow();
      }

      v29(v43, AssociatedTypeWitness);
      return (v29)(v17, AssociatedTypeWitness);
    }
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v44 = 0xD000000000000012;
    v45 = 0x8000000270C52010;
    v46 = v18;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    MEMORY[0x2743B25F0](2113056, 0xE300000000000000);
    v46 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v20);

    v21 = v44;
    v22 = v45;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = v22;
    *(v23 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t static FieldElement.integerToBitVector(input:bitWidth:)(uint64_t a1, Swift::Int a2, uint64_t a3, char *a4)
{
  v11 = Array.init()();
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(a2);
  static FieldElement.encode(_:into:with:)(a1, &v11, a2, a3, a4);
  v9 = v11;
  if (v4)
  {
  }

  return v9;
}

uint64_t static FieldElement.integersToElements(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FieldElement.integersToElements(_:), v8, v4, a2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
}

uint64_t closure #1 in static FieldElement.integersToElements(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a1);
  return FieldElement.init(_:)(v8, a2, a3);
}

uint64_t static FieldElement.elementsToIntegers(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  v3 = type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static FieldElement.elementsToIntegers(_:), v8, v3, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);
}

uint64_t FieldElement.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v15 = &v20 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, a3);
  default argument 1 of FieldElement.init<A>(bytes:mask:)(a2, a3, a4);
  FieldElement.init<A>(bytes:mask:)(v18, v15, a2, a3, a4, a5, a6);
  return (*(v16 + 8))(a1, a3);
}

uint64_t FieldElement.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a3;
  v16 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v15 - v10;
  FieldElement.integerValue.getter(a2, a4);
  v12 = (*(a4 + 64))(a2, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  encodeInteger<A, B>(_:into:encodedLength:)(v11, a1, v12, v15, AssociatedTypeWitness, v16, *(AssociatedConformanceWitness + 8));
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t static FieldElement.+= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v47 = AssociatedTypeWitness;
  v46 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 24);
  v43 = *(v46 + 16);
  v42 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v42);
  v41 = &v41 - v9;
  v10 = swift_checkMetadataState();
  v50 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v44 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v45 = &v41 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v48 = &v41 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v20);
  v53 = &v41 - v21;
  v22 = *(a4 + 88);
  v49 = v23;
  v51 = a1;
  v22(a3, a4);
  v52 = a3;
  v22(a3, a4);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v27)
    {
      v25 = v50;
      if (v28 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v26 = v48;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v29 = dispatch thunk of static Comparable.>= infix(_:_:)();
        (*(v25 + 8))(v26, v10);
        if ((v29 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
        {
          goto LABEL_19;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v25 = v50;
      if (v28 < 64)
      {
        v31 = dispatch thunk of BinaryInteger._lowWord.getter();
        v26 = v48;
        if (v31)
        {
          goto LABEL_13;
        }

LABEL_19:
        (*(v25 + 8))(v19, v10);
        (*(v25 + 32))(v53, v49, v10);
        return (*(a4 + 96))(v53, v52, a4);
      }
    }

    v54 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    v26 = v48;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
LABEL_18:
    (*(v25 + 8))(v26, v10);
    if ((v30 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
  {
    v54 = 0;
    lazy protocol witness table accessor for type Int and conformance Int();
    v26 = v48;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v30 = dispatch thunk of static Equatable.== infix(_:_:)();
    v25 = v50;
    goto LABEL_18;
  }

  v24 = dispatch thunk of BinaryInteger._lowWord.getter();
  v25 = v50;
  v26 = v48;
  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_13:
  v50 = a4;
  v32 = swift_checkMetadataState();
  v47 = *(AssociatedConformanceWitness + 24);
  v47(v32, AssociatedConformanceWitness);
  v33 = v45;
  v48 = *(v46 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v46 = AssociatedConformanceWitness;
  v34 = *(v25 + 8);
  v34(v26, v10);
  v35 = v33;
  v36 = v19;
  v37 = v49;
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v43 = v36;
    v38 = v44;
    v47(v32, v46);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v34(v38, v10);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v34(v26, v10);
    v34(v35, v10);
    v39 = v43;
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v34(v35, v10);
    v39 = v36;
  }

  v34(v39, v10);
  v34(v37, v10);
  a4 = v50;
  return (*(a4 + 96))(v53, v52, a4);
}

uint64_t static FieldElement.-= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v34 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v29 = &v27 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - v16;
  MEMORY[0x28223BE20](v15);
  v32 = &v27 - v18;
  v19 = *(a4 + 88);
  v19(a3, a4);
  v33 = a3;
  v30 = a4;
  v19(a3, a4);
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    swift_checkMetadataState();
    v20 = *(AssociatedConformanceWitness + 24);
    v21 = v28;
    v20();
    v22 = v29;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v23 = *(v31 + 8);
    v23(v21, AssociatedTypeWitness);
    v24 = v32;
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v23(v22, AssociatedTypeWitness);
    v23(v14, AssociatedTypeWitness);
    v23(v17, AssociatedTypeWitness);
  }

  else
  {
    v24 = v32;
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v25 = *(v31 + 8);
    v25(v14, AssociatedTypeWitness);
    v25(v17, AssociatedTypeWitness);
  }

  return (*(v30 + 96))(v24, v33);
}

uint64_t static FieldElement.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void)@<X4>, uint64_t a6@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  FieldElement.init(other:)(v12, a3, a4);
  return a5(a6, a2, a3, *(a4 + 8));
}

uint64_t static FieldElement.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  swift_getAssociatedTypeWitness();
  v17[0] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = *(a4 + 88);
  v13(a3, a4);
  v13(a3, a4);
  swift_getAssociatedConformanceWitness();
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v7 + 8);
  v15(v10, AssociatedTypeWitness);
  v15(v12, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t static FieldElement./= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a2;
  v94 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v106 = AssociatedConformanceWitness;
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v101 = *(v7 + 24);
  v110 = *(v101 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v108 = &v87 - v8;
  v9 = swift_checkMetadataState();
  v105 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v112 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = &v87 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v97 = &v87 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v87 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v104 = &v87 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v102 = &v87 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v93 = &v87 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v87 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v87 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v89 = &v87 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v32);
  v87 = &v87 - v33;
  v34 = *(a4 + 88);
  v88 = v35;
  v34(a3, a4);
  v90 = a3;
  v91 = a4;
  v34(a3, a4);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v36 = v29;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v37 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v36 = v29;
  v40 = __OFSUB__(v38, 64);
  v39 = v38 - 64 < 0;
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v38 > 64)
  {
LABEL_13:
    while (1)
    {
      *&v114 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = v105;
      (*(v105 + 8))(v26, v9);
      v43 = v106;
      if ((v45 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_8:
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_9:
        if (v39 == v40)
        {
          break;
        }

LABEL_11:
        v44 = dispatch thunk of BinaryInteger._lowWord.getter();
        v42 = v105;
        v43 = v106;
        if (v44)
        {
          goto LABEL_14;
        }
      }
    }
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v36 = v29;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v41 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v42 = v105;
  (*(v105 + 8))(v26, v9);
  v43 = v106;
  if ((v41 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_8;
  }

LABEL_14:
  v92 = v36;
  v103 = swift_checkMetadataState();
  (*(v43 + 24))(v103, v43);
  v107 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v46 = v102;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v47 = v93;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v48 = *(v42 + 8);
  v48(v46, v9);
  v48(v26, v9);
  v50 = *(v42 + 16);
  v49 = v42 + 16;
  v50(v104, v92, v9);
  v51 = v43;
  v52 = v111;
  v102 = v50;
  v50(v111, v47, v9);
  *&v114 = 1;
  v99 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v51 + 64))(v26);
  v48(v26, v9);
  v53 = (v49 + 16);
  v100 = v51 + 56;
  v101 = v7;
  v98 = (v49 + 16);
  v105 = v49;
  v95 = v26;
  while (1)
  {
    (v102)(v113, v52, v9);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    v59 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v60 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v59)
    {
      break;
    }

    if (v60 < 128)
    {
LABEL_24:
      v65 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v66 = v113;
      static FixedWidthInteger._truncatingInit<A>(_:)(v113, &type metadata for _UInt128, v9, v65, v7, &v114);
      v48(v66, v9);
      v64 = v111;
      if (v114 == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_28;
    }

LABEL_27:
    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v114 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v67 = v113;
    v68 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v26, v9);
    v48(v67, v9);
    v64 = v111;
    if (v68)
    {
      goto LABEL_46;
    }

LABEL_28:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v48(v26, v9);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_34;
      }

LABEL_37:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v114 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v75 = v112;
      v96 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48(v26, v9);
      v48(v75, v9);
      v54 = v106;
      v55 = v103;
      v56 = v104;
      v53 = v98;
      if ((v96 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v69 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v70 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v69 & 1) == 0)
    {
      if (v70 < 128)
      {
LABEL_34:
        v73 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v74 = v112;
        static FixedWidthInteger._truncatingInit<A>(_:)(v112, &type metadata for _UInt128, v9, v73, v7, &v114);
        v48(v74, v9);
        v54 = v106;
        v55 = v103;
        v56 = v104;
        v53 = v98;
        if (v114 != 0)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      goto LABEL_37;
    }

    if (v70 <= 128)
    {
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v80 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v48(v26, v9);
      if ((v80 & 1) == 0)
      {
        v48(v112, v9);
        v54 = v106;
        v55 = v103;
        v56 = v104;
        v53 = v98;
        v26 = v95;
LABEL_16:
        v57 = v97;
        (*(v54 + 56))(v97, v56, v55, v54);
        v48(v57, v9);
        (*v53)(v57, v26, v9);
        goto LABEL_17;
      }

      v81 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v82 = v112;
      static FixedWidthInteger._truncatingInit<A>(_:)(v112, &type metadata for _UInt128, v9, v81, v7, &v114);
      v48(v82, v9);
      v54 = v106;
      v55 = v103;
      v56 = v104;
      v53 = v98;
      v26 = v95;
      if (v114 != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v114 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v71 = v112;
      v72 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48(v26, v9);
      v48(v71, v9);
      v54 = v106;
      v55 = v103;
      v56 = v104;
      v53 = v98;
      if ((v72 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    (*(v54 + 56))(v56, v56, v55, v54);
    v48(v56, v9);
    v58 = *v53;
    (*v53)(v56, v26, v9);
    *&v114 = 1;
    v52 = v111;
    v7 = v101;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v48(v52, v9);
    v58(v52, v26, v9);
  }

  if (v60 > 128)
  {
    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v114 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v61 = v113;
    v62 = dispatch thunk of static Equatable.== infix(_:_:)();
    v48(v26, v9);
    v63 = v61;
    v64 = v111;
    v48(v63, v9);
    if (v62)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v76 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v48(v26, v9);
  if ((v76 & 1) == 0)
  {
    v48(v113, v9);
    goto LABEL_28;
  }

  v77 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v78 = v113;
  static FixedWidthInteger._truncatingInit<A>(_:)(v113, &type metadata for _UInt128, v9, v77, v7, &v114);
  v79 = v78;
  v64 = v111;
  v48(v79, v9);
  if (v114 != 0)
  {
    goto LABEL_28;
  }

LABEL_46:
  v48(v64, v9);
  v48(v104, v9);
  v48(v93, v9);
  v48(v92, v9);
  v83 = v89;
  (*v53)(v89, v97, v9);
  v84 = v87;
  v85 = v88;
  (*(v106 + 56))(v88, v83);
  v48(v83, v9);
  v48(v85, v9);
  return (*(v91 + 96))(v84, v90);
}

uint64_t static FieldElement./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v118 = a2;
  v114 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v117 = AssociatedConformanceWitness;
  v111 = AssociatedTypeWitness;
  v10 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v112 = *(v10 + 24);
  v121 = *(v112 + 16);
  v120 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v120);
  v119 = &v98 - v11;
  v12 = swift_checkMetadataState();
  v116 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v123 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v124 = &v98 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v108 = &v98 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v122 = &v98 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v115 = &v98 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v113 = &v98 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v105 = &v98 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v98 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v98 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v101 = &v98 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v98 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v99 = &v98 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v114, a3);
  FieldElement.init(other:)(v41, a3, a4);
  v43 = a4;
  v44 = *(a4 + 88);
  v100 = v37;
  v45 = v32;
  v102 = a5;
  v46 = v43;
  v44(a3);
  v103 = a3;
  v104 = v46;
  (v44)(a3, v46);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v50 = __OFSUB__(v48, 64);
  v49 = v48 - 64 < 0;
  if ((v47 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v48 > 64)
  {
LABEL_13:
    while (1)
    {
      *&v125 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v52 = v116;
      (*(v116 + 8))(v29, v12);
      v53 = v117;
      if ((v55 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_8:
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_9:
        if (v49 == v50)
        {
          break;
        }

LABEL_11:
        v54 = dispatch thunk of BinaryInteger._lowWord.getter();
        v52 = v116;
        v53 = v117;
        if (v54)
        {
          goto LABEL_14;
        }
      }
    }
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v51 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v52 = v116;
  (*(v116 + 8))(v29, v12);
  v53 = v117;
  if ((v51 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_8;
  }

LABEL_14:
  v114 = swift_checkMetadataState();
  (*(v53 + 24))(v114, v53);
  v118 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v56 = v113;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v57 = v105;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v58 = *(v52 + 8);
  v58(v56, v12);
  v58(v29, v12);
  v60 = *(v52 + 16);
  v59 = v52 + 16;
  v98 = v45;
  v60(v115, v45, v12);
  v61 = v122;
  v113 = v60;
  v60(v122, v57, v12);
  v62 = v61;
  *&v125 = 1;
  v110 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v63 = v117;
  (*(v117 + 64))(v29);
  v58(v29, v12);
  v64 = (v59 + 16);
  v111 = v63 + 56;
  v112 = v10;
  v109 = (v59 + 16);
  v116 = v59;
  v106 = v29;
  while (1)
  {
    (v113)(v124, v62, v12);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    v70 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v71 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v70)
    {
      break;
    }

    if (v71 < 128)
    {
LABEL_24:
      v76 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v77 = v124;
      static FixedWidthInteger._truncatingInit<A>(_:)(v124, &type metadata for _UInt128, v12, v76, v10, &v125);
      v58(v77, v12);
      v75 = v122;
      if (v125 == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_28;
    }

LABEL_27:
    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v125 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v78 = v124;
    v79 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58(v29, v12);
    v58(v78, v12);
    v75 = v122;
    if (v79)
    {
      goto LABEL_46;
    }

LABEL_28:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v58(v29, v12);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_34;
      }

LABEL_37:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v125 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v86 = v123;
      v107 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58(v29, v12);
      v58(v86, v12);
      v65 = v117;
      v66 = v114;
      v67 = v115;
      v64 = v109;
      if ((v107 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v80 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v81 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v80 & 1) == 0)
    {
      if (v81 < 128)
      {
LABEL_34:
        v84 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v85 = v123;
        static FixedWidthInteger._truncatingInit<A>(_:)(v123, &type metadata for _UInt128, v12, v84, v10, &v125);
        v58(v85, v12);
        v65 = v117;
        v66 = v114;
        v67 = v115;
        v64 = v109;
        if (v125 != 0)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      goto LABEL_37;
    }

    if (v81 <= 128)
    {
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v91 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v58(v29, v12);
      if ((v91 & 1) == 0)
      {
        v58(v123, v12);
        v65 = v117;
        v66 = v114;
        v67 = v115;
        v64 = v109;
        v29 = v106;
LABEL_16:
        v68 = v108;
        (*(v65 + 56))(v108, v67, v66, v65);
        v58(v68, v12);
        (*v64)(v68, v29, v12);
        goto LABEL_17;
      }

      v92 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v93 = v123;
      static FixedWidthInteger._truncatingInit<A>(_:)(v123, &type metadata for _UInt128, v12, v92, v10, &v125);
      v58(v93, v12);
      v65 = v117;
      v66 = v114;
      v67 = v115;
      v64 = v109;
      v29 = v106;
      if (v125 != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v125 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v82 = v123;
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58(v29, v12);
      v58(v82, v12);
      v65 = v117;
      v66 = v114;
      v67 = v115;
      v64 = v109;
      if ((v83 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    (*(v65 + 56))(v67, v67, v66, v65);
    v58(v67, v12);
    v69 = *v64;
    (*v64)(v67, v29, v12);
    *&v125 = 1;
    v62 = v122;
    v10 = v112;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v58(v62, v12);
    v69(v62, v29, v12);
  }

  if (v71 > 128)
  {
    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v125 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v72 = v124;
    v73 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58(v29, v12);
    v74 = v72;
    v75 = v122;
    v58(v74, v12);
    if (v73)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v87 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v58(v29, v12);
  if ((v87 & 1) == 0)
  {
    v58(v124, v12);
    goto LABEL_28;
  }

  v88 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v89 = v124;
  static FixedWidthInteger._truncatingInit<A>(_:)(v124, &type metadata for _UInt128, v12, v88, v10, &v125);
  v90 = v89;
  v75 = v122;
  v58(v90, v12);
  if (v125 != 0)
  {
    goto LABEL_28;
  }

LABEL_46:
  v58(v75, v12);
  v58(v115, v12);
  v58(v105, v12);
  v58(v98, v12);
  v94 = v101;
  (*v64)(v101, v108, v12);
  v95 = v99;
  v96 = v100;
  (*(v117 + 56))(v100, v94);
  v58(v94, v12);
  v58(v96, v12);
  return (*(v104 + 96))(v95, v103);
}

uint64_t static FieldElement.root(n:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v19 - v9;
  v11 = swift_checkMetadataState();
  v20 = *(AssociatedConformanceWitness + 48);
  v20(v11, AssociatedConformanceWitness);
  v12 = MEMORY[0x2743B2830]();

  if (v12 <= a1)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(26);
    v22 = a1;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;

    v23 = v14;
    v24 = v16;
    MEMORY[0x2743B25F0](2112544, 0xE300000000000000);
    v20(v11, AssociatedConformanceWitness);
    v17 = MEMORY[0x2743B2830]();

    v22 = v17;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0xD000000000000013, 0x8000000270C51DA0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(a3 + 112))(a2, a3);
    v20(v11, AssociatedConformanceWitness);
    Array.subscript.getter();

    return (*(a3 + 96))(v10, a2, a3);
  }

  return result;
}

uint64_t FieldElement.pow(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v74 = a3;
  v85 = a1;
  v73 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v7 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v92 = *(*(v7 + 24) + 16);
  v91 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v91);
  v90 = &v70 - v8;
  v9 = swift_checkMetadataState();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v86 = &v70 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v77 = &v70 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v88 = &v70 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v70 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v71 = &v70 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v5, a2);
  v33 = v74;
  FieldElement.init(other:)(v31, a2, v74);
  v34 = *(v33 + 88);
  v72 = a2;
  v34(a2, v33);
  v35 = *(v10 + 16);
  v70 = v27;
  v35(v88, v27, v9);
  v36 = v85;
  v84 = v35;
  v85 = (v10 + 16);
  v35(v22, v36, v9);
  v37 = swift_checkMetadataState();
  *&v93 = 1;
  v80 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v38 = *(AssociatedConformanceWitness + 64);
  v82 = v37;
  v39 = v37;
  v40 = AssociatedConformanceWitness;
  v38(v17, v39);
  v43 = *(v10 + 8);
  v41 = v10 + 8;
  v42 = v43;
  v43(v17, v9);
  v78 = v40 + 56;
  v79 = v7;
  AssociatedTypeWitness = (v41 + 24);
  v81 = v22;
  v75 = v17;
  while (1)
  {
    v53 = v86;
    v84(v86, v22, v9);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      break;
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 128)
    {
      goto LABEL_14;
    }

LABEL_11:
    v57 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v53, &type metadata for _UInt128, v9, v57, v7, &v93);
    v42(v53, v9);
    if (v93 == 0)
    {
      goto LABEL_31;
    }

LABEL_15:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v59 = v89;
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v42(v17, v9);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        v65 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v59, &type metadata for _UInt128, v9, v65, v7, &v93);
        v42(v59, v9);
        v66 = *(&v93 + 1) | v93;
        v44 = AssociatedConformanceWitness;
        v45 = v88;
        goto LABEL_27;
      }

LABEL_23:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v93 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v76 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42(v17, v9);
      v42(v59, v9);
      v44 = AssociatedConformanceWitness;
      v45 = v88;
LABEL_29:
      v46 = v42;
      v47 = v41;
      v49 = v82;
      v48 = AssociatedTypeWitness;
      if ((v76 & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_4;
    }

    v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v60 & 1) == 0)
    {
      v44 = AssociatedConformanceWitness;
      v45 = v88;
      if (v61 < 128)
      {
        v67 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v59, &type metadata for _UInt128, v9, v67, v7, &v93);
        v42(v59, v9);
        v66 = *(&v93 + 1) | v93;
LABEL_27:
        v46 = v42;
        v47 = v41;
        v49 = v82;
        v48 = AssociatedTypeWitness;
        if (v66)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }

      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v93 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v76 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42(v17, v9);
      v42(v59, v9);
      goto LABEL_29;
    }

    if (v61 > 128)
    {
      goto LABEL_23;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v62 = v89;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v63 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v42(v17, v9);
    if ((v63 & 1) == 0)
    {
      v42(v62, v9);
      v44 = AssociatedConformanceWitness;
      v45 = v88;
      v46 = v42;
      v47 = v41;
      v49 = v82;
      v48 = AssociatedTypeWitness;
      v17 = v75;
LABEL_3:
      v50 = v77;
      (*(v44 + 56))(v77, v45, v49, v44);
      v46(v50, v9);
      (*v48)(v50, v17, v9);
      goto LABEL_4;
    }

    v64 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    static FixedWidthInteger._truncatingInit<A>(_:)(v62, &type metadata for _UInt128, v9, v64, v7, &v93);
    v42(v62, v9);
    v44 = AssociatedConformanceWitness;
    v45 = v88;
    v46 = v42;
    v47 = v41;
    v49 = v82;
    v48 = AssociatedTypeWitness;
    v17 = v75;
    if (v93 != 0)
    {
      goto LABEL_3;
    }

LABEL_4:
    (*(v44 + 56))(v45, v45, v49, v44);
    v46(v45, v9);
    v51 = *v48;
    (*v48)(v45, v17, v9);
    *&v93 = 1;
    v22 = v81;
    v52 = v79;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v46(v22, v9);
    v51(v22, v17, v9);
    v41 = v47;
    v42 = v46;
    v7 = v52;
  }

  v54 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v55 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v54)
  {
    if (v55 > 128)
    {
      goto LABEL_14;
    }

    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v56 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v42(v17, v9);
    if ((v56 & 1) == 0)
    {
      v42(v53, v9);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if (v55 < 128)
  {
    goto LABEL_11;
  }

LABEL_14:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v93 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42(v17, v9);
  v42(v53, v9);
  if ((v58 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_31:
  v42(v22, v9);
  v42(v88, v9);
  v42(v70, v9);
  v68 = v71;
  (*AssociatedTypeWitness)(v71, v77, v9);
  return (*(v74 + 96))(v68, v72);
}

uint64_t FieldElement.inv()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v91 = AssociatedConformanceWitness;
  v6 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v88 = *(v6 + 24);
  v97 = *(v88 + 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v95 = &v75 - v7;
  v8 = swift_checkMetadataState();
  v93 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v98 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v99 = &v75 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v83 = &v75 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v90 = &v75 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v75 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v75 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v79 = &v75 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v75 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v75 = &v75 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v94, a1);
  FieldElement.init(other:)(v33, a1, a2);
  v35 = *(a2 + 88);
  v76 = a1;
  v77 = a2;
  v35(a1, a2);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v36 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v37 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v39 = __OFSUB__(v37, 64);
  v38 = v37 - 64 < 0;
  if ((v36 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v37 > 64)
  {
LABEL_13:
    while (1)
    {
      *&v100 = 0;
      lazy protocol witness table accessor for type Int and conformance Int();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v44 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = v93;
      (*(v93 + 8))(v26, v8);
      v42 = v91;
      if ((v44 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_8:
      while (1)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_9:
        if (v38 == v39)
        {
          break;
        }

LABEL_11:
        v43 = dispatch thunk of BinaryInteger._lowWord.getter();
        v42 = v91;
        v41 = v93;
        if (v43)
        {
          goto LABEL_14;
        }
      }
    }
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v40 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v41 = v93;
  (*(v93 + 8))(v26, v8);
  v42 = v91;
  if ((v40 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
  {
    goto LABEL_8;
  }

LABEL_14:
  v78 = v29;
  v89 = swift_checkMetadataState();
  (*(v42 + 24))(v89, v42);
  v94 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v45 = v79;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v46 = *(v41 + 8);
  v46(v21, v8);
  v46(v26, v8);
  v48 = *(v41 + 16);
  v47 = v41 + 16;
  v48(v92, v78, v8);
  v49 = v90;
  v88 = v48;
  v48(v90, v45, v8);
  *&v100 = 1;
  v86 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(v42 + 64))(v26);
  v46(v26, v8);
  v50 = (v47 + 16);
  v87 = v6;
  v84 = v42 + 56;
  v85 = (v47 + 16);
  v93 = v47;
  v81 = v26;
  while (1)
  {
    v88(v99, v49, v8);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      break;
    }

    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 128)
    {
      goto LABEL_27;
    }

LABEL_24:
    v59 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v60 = v99;
    static FixedWidthInteger._truncatingInit<A>(_:)(v99, &type metadata for _UInt128, v8, v59, v6, &v100);
    v46(v60, v8);
    if (v100 == 0)
    {
      goto LABEL_42;
    }

LABEL_28:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v46(v26, v8);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 128)
      {
        goto LABEL_34;
      }

LABEL_37:
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v100 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v69 = v98;
      v82 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46(v26, v8);
      v46(v69, v8);
      v51 = v91;
      v52 = v92;
      v53 = v89;
      v50 = v85;
      if ((v82 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v63 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v64 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v63 & 1) == 0)
    {
      if (v64 < 128)
      {
LABEL_34:
        v67 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v68 = v98;
        static FixedWidthInteger._truncatingInit<A>(_:)(v98, &type metadata for _UInt128, v8, v67, v6, &v100);
        v46(v68, v8);
        v51 = v91;
        v52 = v92;
        v53 = v89;
        v50 = v85;
        if (v100 != 0)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      goto LABEL_37;
    }

    if (v64 <= 128)
    {
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v70 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v46(v26, v8);
      if ((v70 & 1) == 0)
      {
        v46(v98, v8);
        v51 = v91;
        v52 = v92;
        v53 = v89;
        v50 = v85;
        v26 = v81;
LABEL_16:
        v54 = v83;
        (*(v51 + 56))(v83, v52, v53, v51);
        v46(v54, v8);
        (*v50)(v54, v26, v8);
        goto LABEL_17;
      }

      v71 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v72 = v98;
      static FixedWidthInteger._truncatingInit<A>(_:)(v98, &type metadata for _UInt128, v8, v71, v6, &v100);
      v46(v72, v8);
      v51 = v91;
      v52 = v92;
      v53 = v89;
      v50 = v85;
      v26 = v81;
      if (v100 != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      v100 = 0uLL;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v65 = v98;
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v46(v26, v8);
      v46(v65, v8);
      v51 = v91;
      v52 = v92;
      v53 = v89;
      v50 = v85;
      if ((v66 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_17:
    (*(v51 + 56))(v52, v52, v53, v51);
    v46(v52, v8);
    v55 = *v50;
    (*v50)(v52, v26, v8);
    *&v100 = 1;
    v49 = v90;
    v6 = v87;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v46(v49, v8);
    v55(v49, v26, v8);
  }

  v56 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v57 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v56)
  {
    if (v57 > 128)
    {
      goto LABEL_27;
    }

    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v58 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v46(v26, v8);
    if ((v58 & 1) == 0)
    {
      v46(v99, v8);
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (v57 < 128)
  {
    goto LABEL_24;
  }

LABEL_27:
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v100 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v61 = v99;
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46(v26, v8);
  v46(v61, v8);
  if ((v62 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_42:
  v46(v49, v8);
  v46(v92, v8);
  v46(v79, v8);
  v46(v78, v8);
  v73 = v75;
  (*v50)(v75, v83, v8);
  return (*(v77 + 96))(v73, v76);
}

uint64_t specialized FieldElement.description.getter(uint64_t a1, uint64_t a2)
{
  specialized FieldElement.integerValue.getter(a1, a2, &v10);
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  *&v10 = dispatch thunk of CustomStringConvertible.description.getter();
  *(&v10 + 1) = v4;

  MEMORY[0x2743B25F0](7876648, 0xE300000000000000);

  v5 = v10;
  *&v10 = a1;
  *(&v10 + 1) = a2;
  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v6 = String.init<A>(_:radix:uppercase:)();
  v8 = v7;
  v10 = v5;

  MEMORY[0x2743B25F0](v6, v8);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);

  return v10;
}

uint64_t specialized FieldElement.description.getter(uint64_t a1)
{
  return specialized FieldElement.description.getter(a1, specialized FieldElement.integerValue.getter);
}

{
  return specialized FieldElement.description.getter(a1, specialized FieldElement.integerValue.getter);
}

uint64_t specialized FieldElement.description.getter(uint64_t a1, void (*a2)(void))
{
  a2();
  v6 = dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x2743B25F0](7876648, 0xE300000000000000);

  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  v2 = String.init<A>(_:radix:uppercase:)();
  v4 = v3;

  MEMORY[0x2743B25F0](v2, v4);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);

  return v6;
}

uint64_t specialized FieldElement.description.getter(int a1)
{
  v5 = dispatch thunk of CustomStringConvertible.description.getter();

  MEMORY[0x2743B25F0](7876648, 0xE300000000000000);

  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  v1 = String.init<A>(_:radix:uppercase:)();
  v3 = v2;

  MEMORY[0x2743B25F0](v1, v3);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);

  return v5;
}

uint64_t FieldElement.description.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v17 - v6;
  FieldElement.integerValue.getter(a1, a2);
  swift_getAssociatedConformanceWitness();
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  v17 = v8;
  v18 = v10;

  MEMORY[0x2743B25F0](7876648, 0xE300000000000000);

  v12 = v17;
  v11 = v18;
  (*(a2 + 88))(a1, a2);
  v13 = String.init<A>(_:radix:uppercase:)();
  v15 = v14;
  v17 = v12;
  v18 = v11;

  MEMORY[0x2743B25F0](v13, v15);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);

  return v17;
}

uint64_t static FieldElement.randomVectorBatched<A>(count:using:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a4;
  v32 = a2;
  MEMORY[0x28223BE20](a1);
  v35 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36 = &v28 - v16;
  v47 = Array.init()();
  v34 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(a1);
  v38 = v47;
  v17 = MEMORY[0x2743B2830]();
  v37 = a1;
  if (v17 >= a1)
  {
    return v38;
  }

  v45 = a5;
  v46 = 0;
  v40 = *(a5 + 64);
  v41 = a5 + 64;
  v31 = *(a6 + 8);
  v29 = *(v31 + 40);
  v30 = v31 + 40;
  v44 = (v12 + 8);
  v33 = (v12 + 16);
  v18 = v36;
  v39 = a6;
  result = v40(a3, a5);
LABEL_6:
  if ((result - 0x80000000000000) >> 56 == 255)
  {
    v43 = v29(result << 8, v42, v31);
    v21 = 0;
    while (1)
    {
      result = v40(a3, a5);
      if ((v21 * result) >> 64 != (v21 * result) >> 63)
      {
        __break(1u);
        break;
      }

      MEMORY[0x28223BE20](result);
      v22 = v42;
      *(&v28 - 6) = a3;
      *(&v28 - 5) = v22;
      *(&v28 - 4) = a5;
      *(&v28 - 3) = a6;
      *(&v28 - 2) = v23;
      v24 = v46;
      Array.withUnsafeBytes<A>(_:)();
      v46 = v24;
      static FieldElement.modulus.getter(a3, a5);
      swift_getAssociatedConformanceWitness();
      v25 = dispatch thunk of static Comparable.> infix(_:_:)();
      v26 = *v44;
      (*v44)(v15, AssociatedTypeWitness);
      if (v25)
      {
        v26(v18, AssociatedTypeWitness);
        a6 = v39;
      }

      else
      {
        (*v33)(v15, v18, AssociatedTypeWitness);
        FieldElement.init(_:)(v15, a3, v45);
        Array.append(_:)();
        v38 = v47;
        v27 = MEMORY[0x2743B2830]();
        v26(v18, AssociatedTypeWitness);
        if (v27 == v37)
        {
          a6 = v39;
          a5 = v45;
          v18 = v36;
LABEL_4:

          v20 = MEMORY[0x2743B2830](v38, a3);
          if (v20 >= v37)
          {
            return v38;
          }

          result = v40(a3, a5);
          goto LABEL_6;
        }

        a6 = v39;
        v18 = v36;
      }

      ++v21;
      a5 = v45;
      if (v21 == 256)
      {
        goto LABEL_4;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static FieldElement.randomVectorBatched<A>(count:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  return UnsafeRawBufferPointer.load<A>(fromByteOffset:as:)();
}

uint64_t Array<A>.elementwiseAdd(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, void *, uint64_t, void))
{
  v33 = a4;
  v34 = a3;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v4;
  v11 = MEMORY[0x2743B2830](*v4, v6);
  v12 = MEMORY[0x2743B2830](a1, v6);
  if (v11 == v12)
  {
    result = MEMORY[0x2743B2830](v10, v6);
    if (result < 0)
    {
      __break(1u);
    }

    else if (result)
    {
      v14 = v9;
      v15 = v7;
      v16 = v4;
      v17 = 0;
      v31[2] = v15 + 8;
      v32 = result;
      do
      {
        v18 = v17 + 1;
        Array.subscript.getter();
        Array._makeMutableAndUnique()();
        v19 = *v16;
        Array._checkSubscript_mutating(_:)(v17);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v21 = v19 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v21 = v19;
        }

        v33(v21 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v17, v14, v6, *(v34 + 8));
        (*(v15 + 8))(v14, v6);
        result = v32;
        ++v17;
      }

      while (v32 != v18);
    }
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v22 = v12;
    _StringGuts.grow(_:)(28);
    v23 = _typeName(_:qualified:)();
    v25 = v24;

    v35 = v23;
    v36 = v25;
    MEMORY[0x2743B25F0](0xD000000000000012, 0x8000000270C526F0);
    v37 = MEMORY[0x2743B2830](v10, v6);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v26);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v37 = v22;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v27);

    v28 = v35;
    v29 = v36;
    lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = v29;
    *(v30 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t static Array<A>.elementwiseAdding(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = v5;
  v10 = type metadata accessor for Array();

  a5(a2, v10, a4);
  if (v7)
  {
  }

  return a1;
}

uint64_t SignedInteger<>.init<A>(fieldElement:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v64 = a4;
  v68 = a1;
  v66 = a6;
  v10 = type metadata accessor for Optional();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = &v49 - v11;
  v62 = *(a4 + 8);
  v52 = *(v62 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v49 - v14;
  swift_getAssociatedTypeWitness();
  v63 = a5;
  v69 = a3;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  v61 = *(v15 + 8);
  v59 = *(*(v61 + 24) + 16);
  v16 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v16);
  v17 = swift_checkMetadataState();
  v60 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v49 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v49 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v67 = &v49 - v28;
  v65 = *(a2 - 8);
  MEMORY[0x28223BE20](v27);
  v58 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v15;
  v30 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if (dispatch thunk of static FixedWidthInteger.bitWidth.getter() >= v30)
  {
    v64 = a2;
    v34 = v69;
    v35 = v63;
    FieldElement.integerValue.getter(v69, v63);
    static FieldElement.modulus.getter(v34, v35);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger./ infix(_:_:)();
    v36 = v60;
    v37 = *(v60 + 8);
    v37(v20, v17);
    v37(v23, v17);
    v38 = dispatch thunk of static Comparable.> infix(_:_:)();
    v37(v26, v17);
    if (v38)
    {
      static FieldElement.modulus.getter(v69, v63);
      dispatch thunk of FixedWidthInteger.subtractingReportingOverflow(_:)();
      v37(v23, v17);
      a2 = v64;
      v39 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      v40 = v54;
      dispatch thunk of BinaryInteger.init<A>(_:)();
      v41 = v55;
      (*(v55 + 16))(v53, v40, v39);
      v42 = v58;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      (*(*(v69 - 8) + 8))(v68);
      (*(v41 + 8))(v40, v39);
      v37(v67, v17);
      v33 = v65;
      v32 = v66;
      (*(v65 + 32))(v66, v42, a2);
    }

    else
    {
      v43 = v67;
      (*(v36 + 16))(v26, v67, v17);
      v44 = v56;
      a2 = v64;
      dispatch thunk of Numeric.init<A>(exactly:)();
      (*(*(v69 - 8) + 8))(v68);
      v37(v43, v17);
      v33 = v65;
      v45 = (*(v65 + 48))(v44, 1, a2);
      v32 = v66;
      if (v45 == 1)
      {
        (*(v49 + 8))(v44, v50);
        v31 = 1;
        return (*(v33 + 56))(v32, v31, 1, a2);
      }

      v46 = *(v33 + 32);
      v47 = v58;
      v46(v58, v44, a2);
      v46(v32, v47, a2);
    }

    v31 = 0;
    return (*(v33 + 56))(v32, v31, 1, a2);
  }

  (*(*(v69 - 8) + 8))(v68);
  v31 = 1;
  v33 = v65;
  v32 = v66;
  return (*(v33 + 56))(v32, v31, 1, a2);
}

uint64_t BinaryFloatingPoint.init<A>(fieldElement:fractionalBitCount:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a5;
  v54 = a1;
  v47 = a7;
  v43 = a3;
  v44 = *(a3 - 8);
  v45 = a2;
  v9 = MEMORY[0x28223BE20](a1);
  v46 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v38 - v12;
  MEMORY[0x28223BE20](v11);
  v53 = &v38 - v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v51 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v39 = *(v51 + 24);
  v52 = *(v39 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = swift_checkMetadataState();
  v41 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - v25;
  FieldElement.integerValue.getter(a4, a6);
  v27 = a4;
  v28 = v41;
  v50 = v27;
  v40 = a6;
  static FieldElement.modulus.getter(v27, a6);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static BinaryInteger./ infix(_:_:)();
  v29 = *(v28 + 8);
  v29(v18, v15);
  v29(v21, v15);
  v52 = v26;
  v30 = dispatch thunk of static Comparable.> infix(_:_:)();
  v29(v24, v15);
  v42 = v29;
  if (v30)
  {
    static FieldElement.modulus.getter(v50, v40);
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v29(v21, v15);
    v31 = v49;
    v32 = v43;
    dispatch thunk of FloatingPoint.init<A>(_:)();
    dispatch thunk of static SignedNumeric.- prefix(_:)();
    v33 = v44;
    (*(v44 + 8))(v31, v32);
  }

  else
  {
    (*(v28 + 16))(v24, v52, v15);
    v32 = v43;
    dispatch thunk of FloatingPoint.init<A>(_:)();
    v33 = v44;
  }

  v34 = v46;
  dispatch thunk of FloatingPoint.init(_:)();
  v35 = v53;
  dispatch thunk of static FloatingPoint./= infix(_:_:)();
  v36 = *(v33 + 8);
  v36(v34, v32);
  (*(v33 + 16))(v49, v35, v32);
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  (*(*(v50 - 8) + 8))(v54);
  v36(v35, v32);
  return v42(v52, v15);
}

void one-time initialization function for one()
{
  static Field32.one = 0xFFFFF;
}

{
  static Field40.one = 0x1B7FFFEB0;
}

{
  static Field64.one = 0xFFFFFFFFLL;
}

void one-time initialization function for negativeOne()
{
  static Field32.negativeOne = -2097150;
}

{
  static Field40.negativeOne = 0xFE46B00151;
}

{
  static Field64.negativeOne = 0xFFFFFFFE00000002;
}

void *static Field32.one.getter@<X0>(void *result@<X0>, _DWORD *a2@<X1>, _DWORD *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

Swift::Int Field32.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static FieldElement.one.getter in conformance Field32@<X0>(void *a1@<X2>, _DWORD *a2@<X3>, _DWORD *a4@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

unsigned int *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Field32@<X0>(unsigned int *result@<X0>, unsigned int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_8;
  }

  v5 = v4 <= 0xFFF00001;
  v6 = -1048575 - v4;
  if (!v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= v6)
  {
    *a3 = v3 - v6;
    return result;
  }

  v5 = v6 <= 0xFFF00001;
  v7 = -1048575 - v6;
  if (!v5)
  {
    goto LABEL_10;
  }

  v5 = __CFADD__(v3, v7);
  v3 += v7;
  if (!v5)
  {
LABEL_8:
    *a3 = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unsigned int *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Field32(unsigned int *result, unsigned int *a2)
{
  v2 = *a2;
  v3 = *result;
  if (!*a2)
  {
    goto LABEL_8;
  }

  v4 = v2 <= 0xFFF00001;
  v5 = -1048575 - v2;
  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= v5)
  {
    *result = v3 - v5;
    return result;
  }

  v4 = v5 <= 0xFFF00001;
  v6 = -1048575 - v5;
  if (!v4)
  {
    goto LABEL_10;
  }

  v4 = __CFADD__(v3, v6);
  v3 += v6;
  if (!v4)
  {
LABEL_8:
    *result = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

int *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Field32@<X0>(int *result@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  v5 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v6 = -1048575 - v4;
  if (v4 > 0xFFF00001)
  {
    __break(1u);
  }

  else
  {
    v7 = __CFADD__(v3, v6);
    v5 = v3 + v6;
    if (!v7)
    {
LABEL_4:
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

unsigned int *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Field32(unsigned int *result, unsigned int *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v5 = -1048575 - v2;
  if (v2 > 0xFFF00001)
  {
    __break(1u);
  }

  else
  {
    v6 = __CFADD__(v3, v5);
    v4 = v3 + v5;
    if (!v6)
    {
LABEL_4:
      *result = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance Field32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Field32 and conformance Field32();

  return FieldElement.encode<A>(into:)(a1, a4, a2, v8, a3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Field32()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Field32(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Field40@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_7;
  }

  v5 = v4 <= 0xFFFEB00001;
  v6 = 0xFFFEB00001 - v4;
  if (!v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= v6)
  {
    *a3 = v3 - v6;
    return result;
  }

  v7 = 0xFFFEB00001 - v6;
  if (v6 > 0xFFFEB00001)
  {
    goto LABEL_9;
  }

  v5 = __CFADD__(v3, v7);
  v3 += v7;
  if (!v5)
  {
LABEL_7:
    *a3 = v3;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Field40(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  if (!*a2)
  {
    goto LABEL_7;
  }

  v4 = v2 <= 0xFFFEB00001;
  v5 = 0xFFFEB00001 - v2;
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= v5)
  {
    *result = v3 - v5;
    return result;
  }

  v6 = 0xFFFEB00001 - v5;
  if (v5 > 0xFFFEB00001)
  {
    goto LABEL_9;
  }

  v4 = __CFADD__(v3, v6);
  v3 += v6;
  if (!v4)
  {
LABEL_7:
    *result = v3;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Field40@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  v5 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v6 = 0xFFFEB00001 - v4;
  if (v4 > 0xFFFEB00001)
  {
    __break(1u);
  }

  else
  {
    v7 = __CFADD__(v3, v6);
    v5 = v3 + v6;
    if (!v7)
    {
LABEL_4:
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Field40(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v5 = 0xFFFEB00001 - v2;
  if (v2 > 0xFFFEB00001)
  {
    __break(1u);
  }

  else
  {
    v6 = __CFADD__(v3, v5);
    v4 = v3 + v5;
    if (!v6)
    {
LABEL_4:
      *result = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance Field40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Field40 and conformance Field40();

  return FieldElement.encode<A>(into:)(a1, a4, a2, v8, a3);
}

void *static Field40.one.getter@<X0>(void *result@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

Swift::Int Field40.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static FieldElement.one.getter in conformance Field40@<X0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Field64@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_8;
  }

  v5 = v4 <= 0xFFFFFFFF00000001;
  v6 = 0xFFFFFFFF00000001 - v4;
  if (!v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= v6)
  {
    *a3 = v3 - v6;
    return result;
  }

  v5 = v6 <= 0xFFFFFFFF00000001;
  v7 = 0xFFFFFFFF00000001 - v6;
  if (!v5)
  {
    goto LABEL_10;
  }

  v5 = __CFADD__(v3, v7);
  v3 += v7;
  if (!v5)
  {
LABEL_8:
    *a3 = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Field64(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  if (!*a2)
  {
    goto LABEL_8;
  }

  v4 = v2 <= 0xFFFFFFFF00000001;
  v5 = 0xFFFFFFFF00000001 - v2;
  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 >= v5)
  {
    *result = v3 - v5;
    return result;
  }

  v4 = v5 <= 0xFFFFFFFF00000001;
  v6 = 0xFFFFFFFF00000001 - v5;
  if (!v4)
  {
    goto LABEL_10;
  }

  v4 = __CFADD__(v3, v6);
  v3 += v6;
  if (!v4)
  {
LABEL_8:
    *result = v3;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t *protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Field64@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = *a2;
  v5 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v6 = 0xFFFFFFFF00000001 - v4;
  if (v4 > 0xFFFFFFFF00000001)
  {
    __break(1u);
  }

  else
  {
    v7 = __CFADD__(v3, v6);
    v5 = v3 + v6;
    if (!v7)
    {
LABEL_4:
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Field64(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = *result;
  v4 = *result - *a2;
  if (*result >= *a2)
  {
    goto LABEL_4;
  }

  v5 = 0xFFFFFFFF00000001 - v2;
  if (v2 > 0xFFFFFFFF00000001)
  {
    __break(1u);
  }

  else
  {
    v6 = __CFADD__(v3, v5);
    v4 = v3 + v5;
    if (!v6)
    {
LABEL_4:
      *result = v4;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance Field64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Field64 and conformance Field64();

  return FieldElement.encode<A>(into:)(a1, a4, a2, v8, a3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Field40(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](v2);
  return Hasher._finalize()();
}

void *one-time initialization function for negativeOne()
{
  if (one-time initialization token for p != -1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v1 = (static MontgomeryFiniteField128.p - 1);
    if (static MontgomeryFiniteField128.p != 0)
    {
      break;
    }

    __break(1u);
LABEL_7:
    swift_once();
  }

  v2 = (static MontgomeryFiniteField128.p - 1uLL) >> 64;

  return _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA8Field128V_Tt1B5(v1, v2, static Field128.negativeOne);
}

__n128 static Field128.one.getter@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a4;
    swift_once();
    a4 = v6;
    a2 = v5;
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

__n128 Field128.value.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Field128.value.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t Field128.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x2743B31A0](*v0);
  return MEMORY[0x2743B31A0](v1);
}

Swift::Int Field128.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x2743B31A0](v1);
  MEMORY[0x2743B31A0](v2);
  return Hasher._finalize()();
}

__n128 protocol witness for FieldElement.value.setter in conformance Field128(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 protocol witness for static FieldElement.one.getter in conformance Field128@<Q0>(void *a1@<X2>, __n128 *a2@<X3>, __n128 *a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a4;
    swift_once();
    a4 = v6;
    a2 = v5;
  }

  result = *a2;
  *a4 = *a2;
  return result;
}

unint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance Field128@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  *a3 = *a1;
  a3[1] = v5;
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(0, &v15);
  if (v7 == *(&v15 + 1) && v6 == v15)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v14 = static MontgomeryFiniteField128.p;
  *&v13 = v6;
  *(&v13 + 1) = v7;
  result = _UInt128.subtractingReportingOverflow(_:)(&v15, &v13);
  if (result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(&v15 + 1);
  v10 = v15;
  v12 = v4 < v15;
  if (v5 != *(&v15 + 1))
  {
    v12 = v5 < *(&v15 + 1);
  }

  if (v12)
  {
    v14 = static MontgomeryFiniteField128.p;
    v13 = v15;
    result = _UInt128.subtractingReportingOverflow(_:)(&v15, &v13);
    if ((result & 1) == 0)
    {
      *&v14 = v4;
      *(&v14 + 1) = v5;
      v13 = v15;
      result = _UInt128.addingReportingOverflow(_:)(&v15, &v13);
      if ((result & 1) == 0)
      {
LABEL_15:
        v5 = *(&v15 + 1);
        v4 = v15;
LABEL_16:
        *a3 = v4;
        a3[1] = v5;
        return result;
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  *&v14 = v4;
  *(&v14 + 1) = v5;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  result = _UInt128.subtractingReportingOverflow(_:)(&v15, &v13);
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance Field128(unint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  result = _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_SiTt1g5(0, &v14);
  if (v4 == *(&v14 + 1) && v3 == v14)
  {
    goto LABEL_16;
  }

  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v13 = static MontgomeryFiniteField128.p;
  *&v12 = v3;
  *(&v12 + 1) = v4;
  result = _UInt128.subtractingReportingOverflow(_:)(&v14, &v12);
  if (result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(&v14 + 1);
  v9 = v14;
  v11 = v5 < v14;
  if (v6 != *(&v14 + 1))
  {
    v11 = v6 < *(&v14 + 1);
  }

  if (v11)
  {
    v13 = static MontgomeryFiniteField128.p;
    v12 = v14;
    result = _UInt128.subtractingReportingOverflow(_:)(&v14, &v12);
    if ((result & 1) == 0)
    {
      *&v13 = v5;
      *(&v13 + 1) = v6;
      v12 = v14;
      result = _UInt128.addingReportingOverflow(_:)(&v14, &v12);
      if ((result & 1) == 0)
      {
LABEL_15:
        v6 = *(&v14 + 1);
        v5 = v14;
LABEL_16:
        *a1 = v5;
        a1[1] = v6;
        return result;
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  *&v13 = v5;
  *(&v13 + 1) = v6;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  result = _UInt128.subtractingReportingOverflow(_:)(&v14, &v12);
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t protocol witness for static AdditiveArithmetic.- infix(_:_:) in conformance Field128@<X0>(unint64_t *a1@<X0>, __int128 **a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  *a3 = *a1;
  a3[1] = v5;
  v8 = v4 < v6;
  if (v5 != v7)
  {
    v8 = v5 < v7;
  }

  if (v8)
  {
    if (one-time initialization token for p != -1)
    {
      swift_once();
    }

    v11 = static MontgomeryFiniteField128.p;
    *&v10 = v6;
    *(&v10 + 1) = v7;
    result = _UInt128.subtractingReportingOverflow(_:)(&v12, &v10);
    if (result)
    {
      __break(1u);
      goto LABEL_12;
    }

    *&v11 = v4;
    *(&v11 + 1) = v5;
    v10 = v12;
    v6 = &v11;
    result = _UInt128.addingReportingOverflow(_:)(&v12, &v10);
    if ((result & 1) == 0)
    {
LABEL_10:
      *a3 = v12;
      return result;
    }

    __break(1u);
  }

  *&v11 = v4;
  *(&v11 + 1) = v5;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  result = _UInt128.subtractingReportingOverflow(_:)(&v12, &v10);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t protocol witness for static AdditiveArithmetic.-= infix(_:_:) in conformance Field128(uint64_t *a1, __int128 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = *a1 < *a2;
  if (v6 != v4)
  {
    v7 = v6 < v4;
  }

  if (v7)
  {
    if (one-time initialization token for p != -1)
    {
      swift_once();
    }

    v10 = static MontgomeryFiniteField128.p;
    *&v9 = v3;
    *(&v9 + 1) = v4;
    result = _UInt128.subtractingReportingOverflow(_:)(&v11, &v9);
    if (result)
    {
      __break(1u);
      goto LABEL_12;
    }

    *&v10 = v5;
    *(&v10 + 1) = v6;
    v9 = v11;
    v3 = &v10;
    result = _UInt128.addingReportingOverflow(_:)(&v11, &v9);
    if ((result & 1) == 0)
    {
LABEL_10:
      *a1 = v11;
      return result;
    }

    __break(1u);
  }

  *&v10 = v5;
  *(&v10 + 1) = v6;
  *&v9 = v3;
  *(&v9 + 1) = v4;
  result = _UInt128.subtractingReportingOverflow(_:)(&v11, &v9);
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t protocol witness for VDAFEncodable.encode<A>(into:) in conformance Field128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type Field128 and conformance Field128();

  return FieldElement.encode<A>(into:)(a1, a4, a2, v8, a3);
}

uint64_t _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_AD7_Int128VTt1g5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s5UInt8VTt1g5@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t _ss17FixedWidthIntegerPsE15_truncatingInityxqd__SzRd__lFZ4VDAF8_UInt128V_s6UInt32VTt1g5@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t static FixedWidthInteger._truncatingInit<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedConformanceWitness = a1;
  v59 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v43 - v11;
  v54 = a5;
  v49 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  v53 = AssociatedTypeWitness;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  v12 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - v13;
  v52 = *(a2 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v43 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v63 = &v43 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v43 - v23;
  v60 = a4;
  v48 = *(a4 + 8);
  v56 = *(v48 + 24);
  v45 = *(v56 + 16);
  v46 = swift_getAssociatedTypeWitness();
  v25 = MEMORY[0x28223BE20](v46);
  v47 = &v43 - v26;
  v27 = *(a3 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v30);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v31 = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v27 + 8))(v29, a3);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v44 = v31;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  if (v31)
  {
    v32 = v48;
    dispatch thunk of static BinaryInteger.~ prefix(_:)();
    (*(v52 + 8))(v24, a2);
  }

  else
  {
    v32 = v48;
  }

  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  dispatch thunk of FixedWidthInteger.init(_truncatingBits:)();
  dispatch thunk of BinaryInteger.words.getter();
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((v64 & 1) == 0)
  {
    v54 = *(*(v32 + 32) + 8);
    v53 = v44 << 63 >> 63;
    v33 = (v52 + 8);
    v34 = v57;
    do
    {
      if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v35 = v24;
      v36 = v32;
      v37 = v22;
      v38 = v58;
      dispatch thunk of FixedWidthInteger.init(_truncatingBits:)();
      dispatch thunk of static FixedWidthInteger.&<< infix(_:_:)();
      v39 = *v33;
      v40 = v38;
      v22 = v37;
      v32 = v36;
      v24 = v35;
      (*v33)(v40, a2);
      dispatch thunk of static BinaryInteger.^= infix(_:_:)();
      v39(v34, a2);
      dispatch thunk of FixedWidthInteger.init(_truncatingBits:)();
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v39(v35, a2);
      dispatch thunk of IteratorProtocol.next()();
    }

    while ((v64 & 1) == 0);
  }

  (*(v51 + 8))(v61, v62);
  v41 = *(v52 + 8);
  v41(v63, a2);
  return (v41)(v22, a2);
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

unint64_t instantiation function for generic protocol witness table for FieldElementError(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
  result = lazy protocol witness table accessor for type FieldElementError and conformance FieldElementError();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32()
{
  result = lazy protocol witness table cache variable for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32;
  if (!lazy protocol witness table cache variable for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MontgomeryFiniteField32 and conformance MontgomeryFiniteField32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Field32 and conformance Field32()
{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field32 and conformance Field32;
  if (!lazy protocol witness table cache variable for type Field32 and conformance Field32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field32 and conformance Field32);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40()
{
  result = lazy protocol witness table cache variable for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40;
  if (!lazy protocol witness table cache variable for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MontgomeryFiniteField40 and conformance MontgomeryFiniteField40);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Field40 and conformance Field40()
{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field40 and conformance Field40;
  if (!lazy protocol witness table cache variable for type Field40 and conformance Field40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field40 and conformance Field40);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64()
{
  result = lazy protocol witness table cache variable for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64;
  if (!lazy protocol witness table cache variable for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MontgomeryFiniteField64 and conformance MontgomeryFiniteField64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Field64 and conformance Field64()
{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field64 and conformance Field64;
  if (!lazy protocol witness table cache variable for type Field64 and conformance Field64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field64 and conformance Field64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128()
{
  result = lazy protocol witness table cache variable for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128;
  if (!lazy protocol witness table cache variable for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MontgomeryFiniteField128 and conformance MontgomeryFiniteField128);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Field32(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Field128 and conformance Field128()
{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Field128 and conformance Field128;
  if (!lazy protocol witness table cache variable for type Field128 and conformance Field128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Field128 and conformance Field128);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_4VDAF17FieldElementErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for FieldElementError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FieldElementError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for FieldElementError(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t BitMasks.__allocating_init(keptBlockCount:)(size_t a1)
{
  result = swift_allocObject();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a1)
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = a1;
      bzero((v4 + 32), a1);
      *(v3 + 16) = v4;
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 16) = a1;
      bzero((v5 + 32), a1);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
      *(result + 16) = MEMORY[0x277D84F90];
    }

    *(v3 + 24) = v5;
    return v3;
  }

  return result;
}

void BitMasks.disableSeedCorrection(between:forPath:)(void *a1, unint64_t at)
{
  if ((at & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = a1[4];
  if (*(v2 + 16) <= at)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = a1[10];
  if (*(v3 + 16) <= at)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = a1[5];
  if (*(v4 + 16) <= at)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a1[11];
  if (*(v5 + 16) > at)
  {
    BitMasks.set(at:left:right:)(at, *(v2 + at + 32) != *(v3 + at + 32), (*(v4 + at + 32) ^ *(v5 + at + 32)) & 1);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t *BitMasks.enableSeedCorrection(between:forPath:withOnPathBit:)(uint64_t *result, unint64_t a2, char a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result[4];
  if (*(v4 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result[10];
  if (*(v5 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result[5];
  if (*(v6 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result[11];
  if (*(v7 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v16 = result[1];
  v17 = *result;
  v8 = result[3];
  v14 = result[2];
  v10 = result[6];
  v9 = result[7];
  v11 = result[8];
  v12 = result[9];
  v15 = *(v4 + a2 + 32) ^ *(v5 + a2 + 32) ^ a3;
  v13 = *(v6 + a2 + 32) ^ *(v7 + a2 + 32) ^ a3;
  outlined copy of Data._Representation(*result, v16);

  outlined copy of Data._Representation(v10, v9);

  outlined copy of Data._Representation(v14, v8);

  outlined copy of Data._Representation(v11, v12);

  BitMasks.set(at:left:right:)(a2, (v15 & 1) == 0, v13 & 1);
  outlined consume of Data._Representation(v11, v12);

  outlined consume of Data._Representation(v14, v8);

  outlined consume of Data._Representation(v10, v9);

  outlined consume of Data._Representation(v17, v16);
}

Swift::Void __swiftcall BitMasks.set(at:left:right:)(Swift::Int at, Swift::Bool left, Swift::Bool right)
{
  v5 = left;
  v7 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((at & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  if (at < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v7 + 2) > at)
  {
    v7[at + 32] = v5 & 1;
    *(v3 + 16) = v7;
    v5 = *(v3 + 24);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v5;
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
LABEL_5:
  if (*(v5 + 2) <= at)
  {
    __break(1u);
  }

  else
  {
    v5[at + 32] = right;
    *(v3 + 24) = v5;
  }
}

unint64_t specialized Collection<>.encodedLength.getter(unint64_t result)
{
  v1 = result;
  v2 = result & 0xFFFFFFFFFFFFFF8;
  v3 = result >> 62;
  if (result >> 62)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x2743B2FD0](result);
    if (!result)
    {
      v10 = 0;
      goto LABEL_9;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = 0;
    goto LABEL_14;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    {
      v5 = *(*(i + 16) + 16);
      v6 = *(*(i + 24) + 16);

      v7 = v5 + v6;
      if (__OFADD__(v5, v6))
      {
        break;
      }

      v8 = __OFADD__(v7, 7);
      v9 = v7 + 7;
      if (v8)
      {
        goto LABEL_25;
      }

      v10 = v9 / 8;
      v2 = v1 & 0xFFFFFFFFFFFFFF8;
      if (v3)
      {
LABEL_9:
        if (v1 < 0)
        {
          v11 = v1;
        }

        else
        {
          v11 = v2;
        }

        v12 = MEMORY[0x2743B2FD0](v11);
      }

      else
      {
LABEL_14:
        v12 = *(v2 + 16);
      }

      if ((v10 * v12) >> 64 == (v10 * v12) >> 63)
      {
        return v10 * v12;
      }

      __break(1u);
LABEL_22:
      ;
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.encodedLength.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(result + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v4 = *(*(v2 + 32) + 16);
  v5 = v4 + 2;
  if (__OFADD__(v4, 2))
  {
    __break(1u);
LABEL_6:
    v6 = 0;
    goto LABEL_12;
  }

LABEL_8:
  v6 = v5 * v3;
  if ((v5 * v3) >> 64 != (v5 * v3) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*(result + 40) + 16);
  if (!v7)
  {
    goto LABEL_12;
  }

  if (v7 >> 61)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = __OFADD__(v6, 4 * v7);
  v6 += 4 * v7;
  if (!v8)
  {
LABEL_12:
    result = v6 * v1;
    if ((v6 * v1) >> 64 == (v6 * v1) >> 63)
    {
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t BitMasks.__allocating_init(left:right:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BitMasks.init(left:right:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

size_t BitMasks.init(keptBlockCount:)(size_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (result)
    {
      v2 = result;
      v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v3 + 16) = v2;
      bzero((v3 + 32), v2);
      *(v1 + 16) = v3;
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = v2;
      bzero((v4 + 32), v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
      *(v1 + 16) = MEMORY[0x277D84F90];
    }

    *(v1 + 24) = v4;
    return v1;
  }

  return result;
}

uint64_t BitMasks.deinit()
{

  return v0;
}

uint64_t BitMasks.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t BitMaskDecodableParameter.encodedLength.getter(uint64_t result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = 2 * result + 7;
  if (__OFADD__(2 * result, 7))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    v1 = 2 * result + 14;
  }

  return v1 >> 3;
}

uint64_t BitMasks.__allocating_init<A>(from:parameter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = specialized BitMasks.__allocating_init<A>(from:parameter:)(a1, a2, a3 & 1, a4, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v7;
}

uint64_t closure #1 in BitMasks.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X0>, _BYTE *a4@<X8>)
{
  v22 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &AssociatedTypeWitness - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &AssociatedTypeWitness - v9;
  v11 = *a1;
  dispatch thunk of Collection.startIndex.getter();
  if (v11 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 7;
  }

  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v13 = *(v5 + 8);
  v14 = v8;
  v15 = AssociatedTypeWitness;
  v13(v14, AssociatedTypeWitness);
  v16 = dispatch thunk of Collection.subscript.read();
  v18 = *v17;
  v16(v23, 0);
  result = (v13)(v10, v15);
  if ((v11 - (v12 & 0xFFFFFFFFFFFFFFF8)) < 0)
  {
    v20 = v18 << ((v12 & 0xF8) - v11);
  }

  else
  {
    v20 = v18 >> (v11 - (v12 & 0xF8));
  }

  *v22 = v20 & 1;
  return result;
}

uint64_t closure #2 in BitMasks.init<A>(from:parameter:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v33 = a2;
  v31 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v17 = &v28 - v16;
  v18 = *a1;
  v19 = __OFADD__(*a1, v33);
  v20 = *a1 + v33;
  if (v19)
  {
    __break(1u);
LABEL_9:
    v27 = a3 << -v18;
    goto LABEL_7;
  }

  v29 = v15;
  v30 = a6;
  dispatch thunk of Collection.startIndex.getter();
  if (v20 >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v20 + 7;
  }

  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v22 = *(v10 + 8);
  v23 = v13;
  v24 = v29;
  v22(v23, v29);
  v25 = dispatch thunk of Collection.subscript.read();
  a3 = *v26;
  v25(v32, 0);
  result = (v22)(v17, v24);
  LOBYTE(v18) = v20 - (v21 & 0xF8);
  if ((v20 - (v21 & 0xFFFFFFFFFFFFFFF8)) < 0)
  {
    goto LABEL_9;
  }

  v27 = a3 >> v18;
LABEL_7:
  *v30 = v27 & 1;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance BitMasks@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v9 = specialized BitMasks.__allocating_init<A>(from:parameter:)(a1, *a2, *(a2 + 8), a3, a5);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  if (!v5)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t BitMasks.encodedLength.getter()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(*(v0 + 24) + 16);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v3 = __OFADD__(v4, 7);
    v5 = v4 + 7;
    if (!v3)
    {
      return v5 / 8;
    }
  }

  __break(1u);
  return result;
}

uint64_t BitMasks.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v4 + 16);
  if (v6 != *(v5 + 16))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v7 = 2 * v6;
  if (__OFADD__(v6, v6))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = __OFADD__(v7, 7);
  v9 = v7 + 7;
  if (v8)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v10 = v9 + 7;
  if (v9 >= 0)
  {
    v10 = v9;
  }

  if (v9 < -7)
  {
    goto LABEL_38;
  }

  if (v9 < 8)
  {
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = v10 >> 3;
    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v12 + 16) = v11;
    bzero((v12 + 32), v11);
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
  }

  v13 = *(v4 + 16);

  if (v13)
  {
    v15 = 0;
    v16 = v12 + 32;
    do
    {
      v17 = *(v5 + 16);
      if (v15 == v17)
      {
        break;
      }

      if (v15 >= v17)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v18 = *(v5 + v15 + 32);
      if (*(v4 + 32 + v15))
      {
        if (v15 >> 3 >= *(v12 + 16))
        {
          goto LABEL_32;
        }

        *(v16 + (v15 >> 3)) |= 1 << (v15 & 7);
      }

      if (v18)
      {
        v19 = v15 + v6;
        if (__OFADD__(v15, v6))
        {
          goto LABEL_33;
        }

        if (v19 >= 0)
        {
          v20 = v15 + v6;
        }

        else
        {
          v20 = v19 + 7;
        }

        v21 = v19 - (v20 & 0xFFFFFFFFFFFFFFF8);
        if (v21 >= 0)
        {
          v22 = 1 << v21;
        }

        else
        {
          v22 = 0;
        }

        if (v19 < -7)
        {
          goto LABEL_34;
        }

        if (v20 >> 3 >= *(v12 + 16))
        {
          __break(1u);
          break;
        }

        *(v16 + (v20 >> 3)) |= v22;
      }

      ++v15;
    }

    while (v13 != v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277D83970]);
  return dispatch thunk of RangeReplaceableCollection.append<A>(contentsOf:)();
}

void *BitCorrections.get(side:)(char a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x2743B2FD0](v17);
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v18;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      if (a1)
      {
        v8 = 24;
      }

      else
      {
        v8 = 16;
      }

      do
      {
        v9 = *(MEMORY[0x2743B2D10](v7, a2) + v8);

        swift_unknownObjectRelease();
        v11 = *(v18 + 16);
        v10 = *(v18 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        }

        ++v7;
        *(v18 + 16) = v11 + 1;
        *(v18 + 8 * v11 + 32) = v9;
      }

      while (v4 != v7);
    }

    else
    {
      v12 = (a2 + 32);
      if (a1)
      {
        v13 = 24;
      }

      else
      {
        v13 = 16;
      }

      do
      {
        v14 = *(*v12 + v13);

        v16 = *(v18 + 16);
        v15 = *(v18 + 24);
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        }

        *(v18 + 16) = v16 + 1;
        *(v18 + 8 * v16 + 32) = v14;
        ++v12;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t BitCorrectionsDecodableParameter.encodedLength.getter(uint64_t result)
{
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = 2 * result + 7;
  if (__OFADD__(2 * result, 7))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 < 0)
  {
    v1 = 2 * result + 14;
  }

  v2 = v1 >> 3;
  v3 = result * (v1 >> 3);
  if ((result * v2) >> 64 == v3 >> 63)
  {
    return v3;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t *BitCorrections.init<A>(from:parameter:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  result = MEMORY[0x28223BE20](a1);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
LABEL_8:
    swift_willThrow();
    (*(v7 + 8))(a1, a4);
    return a2;
  }

  if (a2 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = a2;
    *(v16 + 24) = 2;
    goto LABEL_8;
  }

  if ((a2 + 0x800000000000000) < 0)
  {
    __break(1u);
  }

  else if (!__OFADD__(2 * a2, 7))
  {
    v14 = v9;
    (*(v7 + 16))(v11, a1, a4);
    v18[0] = a2;
    v18[1] = 0;
    v18[2] = a2;
    v18[3] = (2 * a2 + 7) >> 3;
    v19 = 0;
    v15 = type metadata accessor for BitMasks();
    a2 = Array<A>.init<A>(from:parameter:)(v11, v18, v15, a4, &protocol witness table for BitMasks, v14);
    (*(v7 + 8))(a1, a4);
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance BitCorrections@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  result = BitCorrections.init<A>(from:parameter:)(a1, *a2, *(a2 + 8), a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t BitCorrections.encode<A>(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x2743B2FD0](v10);
    if (result >= 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
LABEL_3:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF8BitMasksCGMd, &_sSay4VDAF8BitMasksCGMR);
      v9 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [BitMasks] and conformance [A], &_sSay4VDAF8BitMasksCGMd, &_sSay4VDAF8BitMasksCGMR, MEMORY[0x277D83988]);
      return Collection<>.encode<A>(into:)(a1, v8, a3, v9, a4, &protocol witness table for BitMasks);
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static BitMasks.== infix(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSb_Tt1g5(*(result + 24), *(a2 + 24));
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSb_Tt1g5(*(result + 24), *(a2 + 24));
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized BitMasks.__allocating_init<A>(from:parameter:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    return swift_willThrow();
  }

  if (a2 < 1)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = a2;
    *(v14 + 24) = 2;
    return swift_willThrow();
  }

  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else if (!__OFADD__(2 * a2, 7))
  {
    v8 = result;
    v9 = (2 * a2 + 7) >> 3;
    v11 = dispatch thunk of Collection.count.getter();
    if (v11 == v9)
    {
      MEMORY[0x28223BE20](v11);
      v22 = a4;
      v23 = a5;
      v24 = v8;
      v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(partial apply for closure #1 in BitMasks.init<A>(from:parameter:), v21, 0, a2);
      MEMORY[0x28223BE20](v12);
      v22 = a4;
      v23 = a5;
      v24 = a2;
      v25 = v8;
      v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(partial apply for closure #2 in BitMasks.init<A>(from:parameter:), v21, 0, a2);
      result = swift_allocObject();
      *(result + 16) = v12;
      *(result + 24) = v13;
      return result;
    }

    _StringGuts.grow(_:)(24);
    v15 = _typeName(_:qualified:)();
    v17 = v16;

    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v26 = dispatch thunk of Collection.count.getter();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v20 = v15;
    v20[1] = v17;
    return swift_willThrow();
  }

  __break(1u);
  return result;
}

uint64_t static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 16);
  result = (*(a5 + 8))(a4, a5);
  if (v10 == result)
  {
    v12 = *(a5 + 48);

    v13 = v12(a1, a2, a3, a4, a5);
    (*(a5 + 24))(a4, a5);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ExtendableOutputFunction.nextVector(count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = MEMORY[0x277D84F90];
    if (result)
    {
      v12 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v4 = v12;
      v7 = *(a3 + 32);
      do
      {
        v8 = v7(a2, a3);
        v13 = v4;
        v10 = *(v4 + 16);
        v9 = *(v4 + 24);
        if (v10 >= v9 >> 1)
        {
          v11 = v8;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v8 = v11;
          v4 = v13;
        }

        *(v4 + 16) = v10 + 1;
        *(v4 + v10 + 32) = v8;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  return result;
}

uint64_t static ExtendableOutputFunction.deriveSeed(seed:domainSeparationTag:binder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = static ExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:)(a1, a2, a3, a4, a5);
  v8 = (*(a5 + 8))(a4, a5);
  v9 = specialized Seed.init<A>(length:using:)(v8, v7, a4, a5);
  swift_unknownObjectRelease();
  return v9;
}

char *PINE<>.outputShare(from:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, char **a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t *PINE<>.encodedAggregateShare(_:)(uint64_t *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 61)
  {
    __break(1u);
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v2, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v3, v1);
    return v3;
  }

  return result;
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

void Lock.withLock<A>(_:)(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  a1();
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t Lock.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t Lock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL static Prio3PrepareMessage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    return !v3;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4 && v2 != v3)
  {
    v5 = (v2 + 32);
    v6 = (v3 + 32);
    result = 1;
    while (*v5 == *v6)
    {
      ++v5;
      ++v6;
      if (!--v4)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Prio3PrepareMessage(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3 && (specialized static Seed.== infix(_:_:)(v2, v3) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t Prio3PrepareMessage.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v8 = 0;
  }

  else
  {
    v8 = specialized Seed.init<A>(from:parameter:)(a1, a2, a3);
  }

  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v8;
  return result;
}

uint64_t Prio3PrepareMessage.encodedLength.getter()
{
  if (*v0)
  {
    return *(*v0 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t Prio3PrepareMessage.encode<A>(into:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    return Seed.encode<A>(into:)(result, *v3, a2, a3);
  }

  return result;
}

uint64_t protocol witness for VDAFEncodable.encodedLength.getter in conformance Prio3PrepareMessage()
{
  if (*v0)
  {
    return *(*v0 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Prio3PrepareMessage(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for Prio3PrepareMessage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}