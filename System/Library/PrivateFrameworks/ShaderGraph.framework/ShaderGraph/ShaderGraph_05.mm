void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance OrderedDictionary<A, B>.Values(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

void *_s11ShaderGraph17OrderedDictionaryV6ValuesVyxq__GSkAASk5index_8offsetBy5IndexQzAJ_SitFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV6ValuesVyxq__GSkAASk5index_8offsetBy07limitedH05IndexQzSgAK_SiAKtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized ContiguousArray.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV6ValuesVyxq__GSkAASk8distance4from2toSi5IndexQz_AKtFTW_0(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance OrderedDictionary<A, B>.Values@<X0>(uint64_t *a2@<X8>)
{
  result = ContiguousArray.count.getter();
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values(void *a1, void *a2, uint64_t a3))()
{
  v4 = *(a3 + 24);
  *a1 = v4;
  v5 = *(v4 - 8);
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  ContiguousArray.subscript.getter();
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values;
}

void protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance OrderedDictionary<A, B>.Values@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MutableCollection<>.subscript.getter(a1, a2, WitnessTable, a3);
}

uint64_t protocol witness for Collection.indices.getter in conformance OrderedDictionary<A, B>.Values(uint64_t a1)
{
  swift_getWitnessTable();

  return RandomAccessCollection<>.indices.getter();
}

void *protocol witness for Collection.index(after:) in conformance OrderedDictionary<A, B>.Values@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance OrderedDictionary<A, B>.Values(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t key path setter for OrderedDictionary.Values.subscript(_:) : <A, B>OrderedDictionary<A, B>.ValuesAB(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  type metadata accessor for ContiguousArray();
  v6 = ContiguousArray.subscript.modify();
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return v6(&v9, 0);
}

uint64_t (*OrderedDictionary.Values.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  type metadata accessor for ContiguousArray();
  *(v5 + 32) = ContiguousArray.subscript.modify();
  return OrderedDictionary.Values.subscript.modify;
}

void OrderedDictionary.Values.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v3 + 16);
  if (*(v7 + 16) <= a2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v8 = *(v6 - 8);
  v9 = *(v8 + 40);
  v10 = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a2;

  v9(v10, a1, v6);
}

Swift::Void __swiftcall OrderedDictionary.Values.swapAt(_:_:)(Swift::Int a1, Swift::Int a2)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  MutableCollection.swapAt(_:_:)();
}

void *OrderedDictionary.Values.partition(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = MutableCollection<>.partition(by:)();
  if (!v3)
  {
    return v5;
  }

  return result;
}

void OrderedDictionary.Values.withContiguousMutableStorageIfAvailable<A>(_:)(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14 = a3;
  v8 = *(a2 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(v4 + 16);
  v10 = *(v9 + 16);
  v11 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v13[0] = v11;
  v13[1] = v10;
  a1(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (v5)
  {
    _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v13, v11, v10, v4 + 16, v8);
  }

  else
  {
    v12 = v14;
    _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v13, v11, v10, v4 + 16, v8);
    (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
  }
}

void protocol witness for MutableCollection.subscript.setter in conformance OrderedDictionary<A, B>.Values(uint64_t a1, Swift::Int *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v7 = *(v3 + 16);
  ContiguousArray._checkSubscript_mutating(_:)(v5);
  (*(*(v6 - 8) + 40))(v7 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a1, v6);
  destructiveProjectEnumData for NodePersonality.ShaderType();
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance OrderedDictionary<A, B>.Values(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  type metadata accessor for ContiguousArray();
  *(v5 + 32) = ContiguousArray.subscript.modify();
  return protocol witness for MutableCollection.subscript.modify in conformance OrderedDictionary<A, B>.Values;
}

void OrderedDictionary.Values.subscript.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t protocol witness for MutableCollection.subscript.setter in conformance OrderedDictionary<A, B>.Values(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  specialized MutableCollection<>.subscript.setter(a1, &v5, a3, a4);
}

void (*protocol witness for MutableCollection.subscript.modify in conformance OrderedDictionary<A, B>.Values(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = MutableCollection<>.subscript.modify(v8, a2, a3, a4);
  return protocol witness for XMLNodePrivate.children.modify in conformance XMLParserDelegate.Element;
}

void (*MutableCollection<>.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = type metadata accessor for Slice();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for Range();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  MutableCollection<>.subscript.getter(a2, a3, a4, v16);
  return MutableCollection<>.subscript.modify;
}

void MutableCollection<>.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v6 = (*a1)[8];
  v5 = (*a1)[9];
  v7 = (*a1)[6];
  v10 = (*a1)[7];
  v8 = (*a1)[3];
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

void *protocol witness for MutableCollection.partition(by:) in conformance OrderedDictionary<A, B>.Values@<X0>(void *a4@<X8>)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = MutableCollection<>.partition(by:)();
  if (!v4)
  {
    *a4 = v7;
  }

  return result;
}

uint64_t protocol witness for MutableCollection.swapAt(_:_:) in conformance OrderedDictionary<A, B>.Values(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return MutableCollection.swapAt(_:_:)();
}

void protocol witness for MutableCollection.withContiguousMutableStorageIfAvailable<A>(_:) in conformance OrderedDictionary<A, B>.Values(void (*a1)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v14 = a2;
  v8 = *(a3 + 24);
  type metadata accessor for ContiguousArray();
  ContiguousArray._makeMutableAndUnique()();
  v9 = *(v4 + 16);
  v10 = *(v9 + 16);
  v11 = v9 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v13[0] = v11;
  v13[1] = v10;
  a1(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (v5)
  {
    _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v13, v11, v10, v4 + 16, v8);
  }

  else
  {
    v12 = v14;
    _ss15ContiguousArrayV30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysAERd_0_r_0_lF(v13, v11, v10, v4 + 16, v8);
    (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
  }
}

uint64_t static OrderedDictionary.Values<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for OrderedDictionary.Values(0, a7, a8, a9);
  swift_getWitnessTable();
  return Sequence<>.elementsEqual<A>(_:)() & 1;
}

uint64_t OrderedDictionary.Values<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = v12;
  v23[2] = v13;
  v23[3] = v14;
  type metadata accessor for OrderedDictionary.Values(0, v15, v16, v17);
  swift_getWitnessTable();
  v18 = Collection.count.getter();
  MEMORY[0x266772770](v18);
  result = ContiguousArray.count.getter();
  if (result)
  {
    v20 = 0;
    v21 = (v9 + 8);
    while (1)
    {
      result = ContiguousArray.subscript.getter();
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      dispatch thunk of Hashable.hash(into:)();
      (*v21)(v11, a6);
      result = ContiguousArray.count.getter();
      ++v20;
      if (v22 == result)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int OrderedDictionary.Values<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Hasher.init(_seed:)();
  OrderedDictionary.Values<>.hash(into:)(v15, a1, a2, a3, a4, a5, a6, a7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> OrderedDictionary<A, B>.Values(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  Hasher.init(_seed:)();
  OrderedDictionary.Values<>.hash(into:)(v7, *v3, v3[1], v3[2], a2[2], a2[3], a2[4], v5);
  return Hasher._finalize()();
}

Swift::Void __swiftcall ContiguousArray._checkSubscript_mutating(_:)(Swift::Int a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(v1 + 16) <= a1)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t specialized ContiguousArray.index(_:offsetBy:limitedBy:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a2 > 0)
  {
    if (v3 < 0 || v3 >= a2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v3 <= 0 && v3 > a2)
  {
    return 0;
  }

LABEL_9:
  v4 = __OFADD__(result, a2);
  result += a2;
  if (v4)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_265DCE110(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary.Values(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized MutableCollection<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Slice();
  swift_getWitnessTable();

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

uint64_t requireArgument<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  (*(v11 + 16))(v18 - v13, a3, v10, v12);
  v15 = *(a4 - 8);
  if ((*(v15 + 48))(v14, 1, a4) != 1)
  {
    return (*(v15 + 32))(a5, v14, a4);
  }

  (*(v11 + 8))(v14, v10);
  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v16 = a1;
  *(v16 + 8) = a2;
  *(v16 + 16) = 1;
  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> validate(_:named:)(Swift::String _, Swift::String named)
{
  object = named._object;
  countAndFlagsBits = named._countAndFlagsBits;
  v4 = HIBYTE(_._object) & 0xF;
  if ((_._object & 0x2000000000000000) == 0)
  {
    v4 = _._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if (String.count.getter() <= 1023)
    {
      return;
    }

    v5 = 17;
  }

  else
  {
    v5 = 16;
  }

  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v6 = countAndFlagsBits;
  *(v6 + 8) = object;
  *(v6 + 16) = v5;
  swift_willThrow();
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD4KeysVySS11ShaderGraph11GeomPropDefV_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of [String : GeomPropDef].Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t SGWarning.message.getter()
{
  v1 = *(v0 + OBJC_IVAR___SGWarning_message);

  return v1;
}

id SGWarning.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SGWarning_message];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SGWarning.init(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___SGWarning_message];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SGWarning.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *static ShaderGraphService.builtInGeometryPropertyNames.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v0 = *(static BuiltInDefinitionStore.shared + 24);
  v1 = *(v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v0 + 16), 0);
  v3 = specialized Sequence._copySequenceContents(initializing:)(&v6, v2 + 4, v1, v0);
  v4 = v6;

  outlined consume of [String : GeomPropDef].Iterator._Variant(v4);
  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v2;
}

id @objc static ShaderGraphService.createMaterialSource(from:config:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(void *, void *))
{
  v9 = a3;
  v10 = a4;
  v11 = a6(a3, a4);

  return v11;
}

void specialized Graph.edges(from:)(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 1);
  v51[0] = *a1;
  v51[1] = v5;
  v52 = a1[4];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  v49 = *(a2 + 16);
  if (v4 >= v49)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v48 = a2 + 32;
  v6 = (a2 + 32 + 88 * v4);
  v7 = v6[5];
  v8 = v6[6];
  v9 = v6[7];
  v10 = v8 + 32;
  v11 = *(v8 + 16);
  if (v7)
  {
    v12 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v3, v10, v11, v7 + 16, v7 + 32);
    if ((v13 & 1) == 0)
    {
      v14 = v12;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_13:
    v15 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v14 = 0;
  v15 = MEMORY[0x277D84FA0];
  while (*(v10 + 8 * v14) != v3)
  {
    if (v11 == ++v14)
    {
      goto LABEL_14;
    }
  }

LABEL_6:
  if (v14 < *(v9 + 16))
  {
    v15 = *(v9 + 8 * v14 + 32);

LABEL_14:
    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v15 + 56);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    v46 = 0;
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      do
      {
        if (!v18)
        {
          while (1)
          {
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v23 >= v19)
            {

              MEMORY[0x28223BE20](v40);
              v41[2] = v51;
              _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph0E0V5InputVyAF010SGDataTypeE0V11PersonalityV_GG_AH4EdgeVyAN_Gs5NeverOTg5(partial apply for specialized closure #2 in Graph.edges(from:), v41, v47);

              return;
            }

            v18 = *(v15 + 56 + 8 * v23);
            ++v20;
            if (v18)
            {
              v20 = v23;
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_25:
        v24 = (*(v15 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v18)))));
        if (*v24 >= v49)
        {
          goto LABEL_42;
        }

        v18 &= v18 - 1;
        v25 = (v48 + 88 * *v24);
        v26 = v25[4];
      }

      while (!v26);
      v27 = v24[1];
      v28 = v25[1];
      v50 = *v25;
      v30 = v25[2];
      v29 = v25[3];
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_19;
      }

      v31 = v30 >> 62;
      if (!(v30 >> 62))
      {
        v21 = v25[2];
        v22 = 32;
        goto LABEL_18;
      }

      if (v31 != 1)
      {
LABEL_19:

        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v50, v28, v30, v29, v26);
      }

      else
      {
        v21 = v30 & 0x3FFFFFFFFFFFFFFFLL;
        v22 = 40;
LABEL_18:
        if (v27 >= *(*(v21 + v22) + 16))
        {
          goto LABEL_19;
        }

        if (v31)
        {
          v32 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          if (v27 >= *(v32 + 16))
          {
            goto LABEL_47;
          }
        }

        else
        {
          v32 = *(v30 + 32);
          if (v27 >= *(v32 + 16))
          {
            goto LABEL_48;
          }
        }

        v33 = v32 + 32 * v27;
        v34 = *(v33 + 40);
        v44 = *(v33 + 32);
        v45 = v34;
        v43 = *(v33 + 48);
        v42 = *(v33 + 56);

        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v50, v28, v30, v29, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47[2] + 1, 1, v47);
        }

        v36 = v47[2];
        v35 = v47[3];
        if (v36 >= v35 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v47);
        }

        v37 = v47;
        v47[2] = v36 + 1;
        v38 = &v37[6 * v36];
        v38[4] = v50;
        v38[5] = v27;
        v39 = v45;
        v38[6] = v44;
        v38[7] = v39;
        v38[8] = v43;
        *(v38 + 72) = v42;
      }
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void *NSObject.inputNamed(_:)(uint64_t a1, unint64_t a2)
{
  v5._countAndFlagsBits = 1701667182;
  v5._object = 0xE400000000000000;
  validate(_:named:)(*&a1, v5);
  if (!v6)
  {
    v17 = swift_dynamicCastObjCProtocolConditional();
    if (!v17)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, logger);
      v10 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_265D7D000, v10, v28, "inputNamed called on an object that isn't ObjCHasIO", v29, 2u);
        MEMORY[0x266773120](v29, -1, -1);
      }

      goto LABEL_5;
    }

    v18 = v17;
    v19 = v2;
    v20 = [v18 inputs];
    type metadata accessor for SGInput();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = v19;
    if (v6 >> 62)
    {
      v21 = __CocoaSet.count.getter();
      if (v21)
      {
LABEL_9:
        v22 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x266772030](v22, v6);
          }

          else
          {
            if (v22 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v23 = *(v6 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          v26 = *&v23[OBJC_IVAR___SGInput_name] == a1 && *&v23[OBJC_IVAR___SGInput_name + 8] == a2;
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return v24;
          }

          ++v22;
          if (v25 == v21)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_9;
      }
    }

LABEL_32:

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, logger);
    v31 = v38;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39[0] = v36;
      *v34 = 138412546;
      *(v34 + 4) = v31;
      *v35 = v31;
      *(v34 + 12) = 2080;
      v31 = v31;
      *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v39);
      _os_log_impl(&dword_265D7D000, v32, v33, "WARNING: %@ has no input named %s", v34, 0x16u);
      outlined destroy of [Input](v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266773120](v36, -1, -1);
      MEMORY[0x266773120](v34, -1, -1);
    }

    return 0;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_30:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = static os_log_type_t.error.getter();
  v9 = v6;
  v10 = Logger.logObject.getter();

  if (!os_log_type_enabled(v10, v8))
  {

    return 0;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v39[0] = v12;
  *v11 = 136315138;
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v14 = String.init<A>(describing:)();
  v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v39);

  *(v11 + 4) = v16;
  _os_log_impl(&dword_265D7D000, v10, v8, "%s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  MEMORY[0x266773120](v12, -1, -1);
  MEMORY[0x266773120](v11, -1, -1);

LABEL_5:
  return 0;
}

void *NSObject.outputNamed(_:)(uint64_t a1, unint64_t a2)
{
  v5._countAndFlagsBits = 1701667182;
  v5._object = 0xE400000000000000;
  validate(_:named:)(*&a1, v5);
  if (!v6)
  {
    v17 = swift_dynamicCastObjCProtocolConditional();
    if (!v17)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, logger);
      v10 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_265D7D000, v10, v28, "outputNamed called on an object that isn't ObjCHasIO", v29, 2u);
        MEMORY[0x266773120](v29, -1, -1);
      }

      goto LABEL_5;
    }

    v18 = v17;
    v19 = v2;
    v20 = [v18 outputs];
    type metadata accessor for SGOutput();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = v19;
    if (v6 >> 62)
    {
      v21 = __CocoaSet.count.getter();
      if (v21)
      {
LABEL_9:
        v22 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x266772030](v22, v6);
          }

          else
          {
            if (v22 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v23 = *(v6 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          v26 = *&v23[OBJC_IVAR___SGOutput_name] == a1 && *&v23[OBJC_IVAR___SGOutput_name + 8] == a2;
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return v24;
          }

          ++v22;
          if (v25 == v21)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_9;
      }
    }

LABEL_32:

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, logger);
    v31 = v38;

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39[0] = v36;
      *v34 = 138412546;
      *(v34 + 4) = v31;
      *v35 = v31;
      *(v34 + 12) = 2080;
      v31 = v31;
      *(v34 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v39);
      _os_log_impl(&dword_265D7D000, v32, v33, "WARNING: %@ has no output named %s", v34, 0x16u);
      outlined destroy of [Input](v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266773120](v36, -1, -1);
      MEMORY[0x266773120](v34, -1, -1);
    }

    return 0;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_30:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, logger);
  v8 = static os_log_type_t.error.getter();
  v9 = v6;
  v10 = Logger.logObject.getter();

  if (!os_log_type_enabled(v10, v8))
  {

    return 0;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v39[0] = v12;
  *v11 = 136315138;
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v14 = String.init<A>(describing:)();
  v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v39);

  *(v11 + 4) = v16;
  _os_log_impl(&dword_265D7D000, v10, v8, "%s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  MEMORY[0x266773120](v12, -1, -1);
  MEMORY[0x266773120](v11, -1, -1);

LABEL_5:
  return 0;
}

id @objc NSObject.inputNamed(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph9InputSpecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph9InputSpecVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph4EdgeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph4EdgeVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7NodeDefV12AvailabilityVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph6SGEdgeC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = a3;
  if (!a3)
  {
LABEL_12:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = v10;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = *(a6 + 16);
    if (v11)
    {
      v13 = 0;
      v14 = a3 - 1;
      while (v13 < *(a6 + 16))
      {
        *(a2 + 8 * v13) = *(a6 + 32 + 8 * v13);
        if (v14 == v13)
        {
          swift_unknownObjectRetain();
          goto LABEL_12;
        }

        result = swift_unknownObjectRetain();
        if (v11 == ++v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v10 = v11;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 160 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v29[0] = *v18;
      v29[1] = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v29[4] = v18[4];
      v29[5] = v20;
      v29[2] = v22;
      v29[3] = v21;
      v23 = v18[9];
      v25 = v18[6];
      v24 = v18[7];
      v29[8] = v18[8];
      v29[9] = v23;
      v29[6] = v25;
      v29[7] = v24;
      memmove(v11, v18, 0xA0uLL);
      if (v14 == v10)
      {
        outlined init with copy of NodeDef.Availability(v29, v28);
        goto LABEL_24;
      }

      v11 += 160;
      outlined init with copy of NodeDef.Availability(v29, v28);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v27 = v12 + 1;
    }

    else
    {
      v27 = (63 - v7) >> 6;
    }

    v12 = v27 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized closure #2 in Graph.edges(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  *a3 = *a2;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v9;
  *(a3 + 40) = *a1;
  *(a3 + 56) = v3;
  *(a3 + 64) = v4;
  *(a3 + 72) = v5;
  *(a3 + 80) = v6;
}

char *specialized static ShaderGraphService.createMaterialSource(from:config:)(void *a1, void *a2)
{
  v4 = type metadata accessor for OSSignpostError();
  v89 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v88 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v91 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v79 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v79 - v13;
  v15 = type metadata accessor for OSSignposter();
  MEMORY[0x28223BE20](v15);
  v18 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v32 = swift_allocError();
    v34 = xmmword_265F21A90;
LABEL_9:
    *v33 = v34;
    *(v33 + 16) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v32 = swift_allocError();
    v34 = xmmword_265F21A80;
    goto LABEL_9;
  }

  v83 = v4;
  v85 = v8;
  v86 = v16;
  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v87 = v18;
  v19 = OSSignposter.logHandle.getter();
  v20 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v21 = swift_slowAlloc();
    v84 = v15;
    v22 = v6;
    v23 = v21;
    *v21 = 0;
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v19, v20, v24, "sourceFromGraph", "", v23, 2u);
    v25 = v23;
    v6 = v22;
    v15 = v84;
    MEMORY[0x266773120](v25, -1, -1);
  }

  (*(v91 + 16))(v11, v14, v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v26 = OSSignpostIntervalState.init(id:isOpen:)();
  v27 = objc_allocWithZone(type metadata accessor for SGREMaterialSource(0));
  v28 = a1;
  v29 = a2;
  v30 = v90;
  v31 = SGREMaterialSource.init(graph:configuration:)(v28, v29);
  if (v30)
  {

    (*(v91 + 8))(v14, v6);
    (*(v86 + 8))(v87, v15);
    v32 = v30;
LABEL_10:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, logger);
    v36 = v32;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v39 = 138412290;
      v40 = v32;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v14 = v41;
      _os_log_impl(&dword_265D7D000, v37, v38, "%@", v39, 0xCu);
      outlined destroy of [Input](v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v14, -1, -1);
      MEMORY[0x266773120](v39, -1, -1);
    }

    type metadata accessor for SGError();
    v42 = v32;
    SGError.__allocating_init(_:)(v32);
    swift_willThrow();

    return v14;
  }

  v44 = v31;
  v45 = OSSignposter.logHandle.getter();
  v46 = v26;
  v47 = v85;
  OSSignpostIntervalState.signpostID.getter();
  v82 = static os_signpost_type_t.end.getter();
  v90 = v44;

  if (OS_os_log.signpostsEnabled.getter())
  {
    v79[0] = v45;

    v48 = v88;
    checkForErrorAndConsumeState(state:)();

    v49 = v89;
    v50 = v83;
    v51 = (*(v89 + 88))(v48, v83) == *MEMORY[0x277D85B00];
    v81 = v6;
    v84 = v15;
    v80 = v14;
    v79[1] = v46;
    if (v51)
    {
      v54 = 0;
      v53 = "[Error] Interval already ended";
    }

    else
    {
      (*(v49 + 8))(v48, v50);
      v53 = "%{private,mask.hash}s %s";
      v54 = 3;
    }

    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v94 = v56;
    *v55 = v54;
    *(v55 + 1) = v54;
    *(v55 + 2) = 2160;
    *(v55 + 4) = 1752392040;
    *(v55 + 12) = 2081;
    v14 = v90;
    v57 = (*&v90[OBJC_IVAR___SGREMaterialSource_graph] + OBJC_IVAR___SGGraph_name);
    v59 = *v57;
    v58 = v57[1];

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, &v94);

    *(v55 + 14) = v60;
    *(v55 + 22) = 2080;
    Hasher.init()();
    SHA512Digest.hash(into:)();
    v61 = Hasher.finalize()();
    v93 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v62 = v93;
    v92 = v61;
    lazy protocol witness table accessor for type UInt and conformance UInt();
    v63 = String.init<A>(_:radix:uppercase:)();
    v66 = *(v62 + 16);
    v65 = *(v62 + 24);
    if (v66 >= v65 >> 1)
    {
      v89 = v63;
      v78 = v64;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1);
      v64 = v78;
      v63 = v89;
      v62 = v93;
    }

    *(v62 + 16) = v66 + 1;
    v67 = v62 + 16 * v66;
    *(v67 + 32) = v63;
    *(v67 + 40) = v64;
    v93 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v68 = BidirectionalCollection<>.joined(separator:)();
    v70 = v69;

    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v94);

    *(v55 + 24) = v71;
    v72 = v85;
    v73 = OSSignpostID.rawValue.getter();
    v74 = v79[0];
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v79[0], v82, v73, "sourceFromGraph", v53, v55, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v56, -1, -1);
    MEMORY[0x266773120](v55, -1, -1);

    v75 = *(v91 + 8);
    v76 = v72;
    v77 = v81;
    v75(v76, v81);
    v75(v80, v77);
    (*(v86 + 8))(v87, v84);
  }

  else
  {

    v52 = *(v91 + 8);
    v52(v47, v6);
    v52(v14, v6);
    (*(v86 + 8))(v87, v15);
    return v90;
  }

  return v14;
}

void specialized static ShaderGraphService.archiveSource(_:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostError();
  v84 = *(v2 - 1);
  v85 = v2;
  MEMORY[0x28223BE20](v2);
  v83 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v75 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v75 - v12;
  v14 = type metadata accessor for OSSignposter();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.init(subsystem:category:)();
  if (a1)
  {
    v82 = v7;
    v86 = v15;
    v87 = v14;
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v18 = a1;
    v19 = OSSignposter.logHandle.getter();
    v20 = static os_signpost_type_t.begin.getter();

    v21 = OS_os_log.signpostsEnabled.getter();
    v88 = v17;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v89[0] = v81;
      *v22 = 141558531;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v23 = (*&v18[OBJC_IVAR___SGREMaterialSource_graph] + OBJC_IVAR___SGGraph_name);
      v25 = *v23;
      v24 = v23[1];

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v24, v89);
      LODWORD(v80) = v20;
      v27 = v5;
      v28 = v4;
      v29 = v26;

      *(v22 + 14) = v29;
      *(v22 + 22) = 2080;
      v31 = SGREMaterialSource.debugHashSummary.getter(v30);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v89);

      *(v22 + 24) = v33;
      v4 = v28;
      v5 = v27;
      v34 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v19, v80, v34, "archiveSource", "%{private,mask.hash}s %s", v22, 0x20u);
      v35 = v81;
      swift_arrayDestroy();
      MEMORY[0x266773120](v35, -1, -1);
      MEMORY[0x266773120](v22, -1, -1);
    }

    (*(v5 + 16))(v10, v13, v4);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v36 = *(v5 + 8);
    v81 = v5 + 8;
    v36(v13, v4);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    v37 = *&v18[OBJC_IVAR___SGREMaterialSource_graph];
    v38 = *&v18[OBJC_IVAR___SGREMaterialSource_config];
    v89[0] = 1;
    v89[1] = v37;
    v89[2] = v38;
    lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer();
    v39 = v37;
    v40 = v38;
    v41 = v90;
    v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    if (!v41)
    {
      v77 = v40;
      v78 = v42;
      v79 = v39;
      v80 = v36;
      v90 = v4;
      v54 = v18;
      v55 = v88;
      v56 = OSSignposter.logHandle.getter();
      v57 = v82;
      OSSignpostIntervalState.signpostID.getter();
      v76 = static os_signpost_type_t.end.getter();
      v75[1] = v54;

      if (OS_os_log.signpostsEnabled.getter())
      {
        v75[0] = v56;

        v58 = v83;
        checkForErrorAndConsumeState(state:)();

        v60 = v84;
        v59 = v85;
        if ((*(v84 + 88))(v58, v85) == *MEMORY[0x277D85B00])
        {
          v61 = 0;
          v85 = "[Error] Interval already ended";
        }

        else
        {
          (*(v60 + 8))(v58, v59);
          v85 = "%{private,mask.hash}s %s";
          v61 = 3;
        }

        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v89[0] = v63;
        *v62 = v61;
        *(v62 + 1) = v61;
        *(v62 + 2) = 2160;
        *(v62 + 4) = 1752392040;
        *(v62 + 12) = 2081;
        v64 = v79;
        v66 = *&v79[OBJC_IVAR___SGGraph_name];
        v65 = *&v79[OBJC_IVAR___SGGraph_name + 8];

        v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v65, v89);

        *(v62 + 14) = v67;
        *(v62 + 22) = 2080;
        v69 = SGREMaterialSource.debugHashSummary.getter(v68);
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v89);

        *(v62 + 24) = v71;
        v72 = v82;
        v73 = OSSignpostID.rawValue.getter();
        v74 = v75[0];
        _os_signpost_emit_with_name_impl(&dword_265D7D000, v75[0], v76, v73, "archiveSource", v85, v62, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266773120](v63, -1, -1);
        MEMORY[0x266773120](v62, -1, -1);

        v80(v72, v90);
        (*(v86 + 8))(v88, v87);
      }

      else
      {

        v80(v57, v90);
        (*(v86 + 8))(v55, v87);
      }

      return;
    }

    (*(v86 + 8))(v88, v87);

    v43 = v41;
  }

  else
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v43 = swift_allocError();
    *v44 = xmmword_265F21AA0;
    *(v44 + 16) = 1;
    swift_willThrow();
    (*(v15 + 8))(v17, v14);
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, logger);
  v46 = v43;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    v51 = v43;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 4) = v52;
    *v50 = v52;
    _os_log_impl(&dword_265D7D000, v47, v48, "%@", v49, 0xCu);
    outlined destroy of [Input](v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v50, -1, -1);
    MEMORY[0x266773120](v49, -1, -1);
  }

  type metadata accessor for SGError();
  v53 = v43;
  SGError.__allocating_init(_:)(v43);
  swift_willThrow();
}

char *specialized static ShaderGraphService.sourceFromArchive(data:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for OSSignpostError();
  v97 = *(v4 - 1);
  v98 = v4;
  MEMORY[0x28223BE20](v4);
  v96 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = type metadata accessor for OSSignpostID();
  v6 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v89[-v9];
  MEMORY[0x28223BE20](v11);
  v13 = &v89[-v12];
  v14 = type metadata accessor for OSSignposter();
  v101 = *(v14 - 8);
  v102 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v89[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v17 = OSSignposter.logHandle.getter();
  v18 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v19 = swift_slowAlloc();
    v107 = v6;
    v20 = v16;
    v21 = a1;
    v22 = a2;
    v23 = v19;
    *v19 = 0;
    v24 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v17, v18, v24, "sourceFromArchive", "", v23, 2u);
    v25 = v23;
    a2 = v22;
    a1 = v21;
    v16 = v20;
    v6 = v107;
    MEMORY[0x266773120](v25, -1, -1);
  }

  v26 = v103;
  (*(v6 + 16))(v10, v13, v103);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v107 = OSSignpostIntervalState.init(id:isOpen:)();
  v27 = *(v6 + 8);
  v27(v13, v26);
  if (a2 >> 60 == 15)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v28 = swift_allocError();
    *v29 = xmmword_265F21AB0;
    *(v29 + 16) = 1;
    swift_willThrow();

    (*(v101 + 8))(v16, v102);
LABEL_8:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, logger);
    v40 = v28;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      v45 = v28;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v46;
      *v44 = v46;
      _os_log_impl(&dword_265D7D000, v41, v42, "%@", v43, 0xCu);
      outlined destroy of [Input](v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x266773120](v44, -1, -1);
      MEMORY[0x266773120](v43, -1, -1);
    }

    type metadata accessor for SGError();
    v47 = v28;
    SGError.__allocating_init(_:)(v28);
    swift_willThrow();

    return v28;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v30 = PropertyListDecoder.init()();
  lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer();
  v31 = v100;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v32 = a2;
  v28 = v31;
  if (v31)
  {
    (*(v101 + 8))(v16, v102);

    goto LABEL_8;
  }

  v94 = v32;
  v95 = v27;
  v100 = v30;
  v33 = v106[1];
  v34 = v106[2];
  v35 = objc_allocWithZone(type metadata accessor for SGREMaterialSource(0));
  v36 = v33;
  v37 = v34;
  v38 = SGREMaterialSource.init(graph:configuration:)(v36, v37);
  v92 = v37;
  v28 = v38;
  v49 = OSSignposter.logHandle.getter();
  v50 = v99;
  OSSignpostIntervalState.signpostID.getter();
  v90 = static os_signpost_type_t.end.getter();

  v51 = OS_os_log.signpostsEnabled.getter();
  v91 = a1;
  v93 = v36;
  if (v51)
  {

    v52 = v96;
    checkForErrorAndConsumeState(state:)();

    v54 = v97;
    v53 = v98;
    if ((*(v97 + 88))(v52, v98) == *MEMORY[0x277D85B00])
    {
      v55 = v28;
      v56 = 0;
      v98 = "[Error] Interval already ended";
    }

    else
    {
      v57 = v52;
      v55 = v28;
      (*(v54 + 8))(v57, v53);
      v98 = "%{private,mask.hash}s %s";
      v56 = 3;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v106[0] = v59;
    *v58 = v56;
    *(v58 + 1) = v56;
    *(v58 + 2) = 2160;
    *(v58 + 4) = 1752392040;
    *(v58 + 12) = 2081;
    v60 = v55;
    v61 = (*&v55[OBJC_IVAR___SGREMaterialSource_graph] + OBJC_IVAR___SGGraph_name);
    v63 = *v61;
    v62 = v61[1];

    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v62, v106);

    *(v58 + 14) = v64;
    *(v58 + 22) = 2080;
    v66 = SGREMaterialSource.debugHashSummary.getter(v65);
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v106);

    *(v58 + 24) = v68;
    v50 = v99;
    v69 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v49, v90, v69, "sourceFromArchive", v98, v58, 0x20u);
    swift_arrayDestroy();
    v70 = v59;
    v28 = v60;
    MEMORY[0x266773120](v70, -1, -1);
    MEMORY[0x266773120](v58, -1, -1);
  }

  v95(v50, v103);
  v71 = v92;
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v72 = static DebugConfig.debugMode;

  v73 = specialized Set.contains(_:)(2, v72);

  if (v73)
  {
    v104 = 0;
    v105 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    v74 = (*&v28[OBJC_IVAR___SGREMaterialSource_graph] + OBJC_IVAR___SGGraph_name);
    v76 = *v74;
    v75 = v74[1];

    v104 = v76;
    v105 = v75;
    MEMORY[0x266771550](95, 0xE100000000000000);
    v77 = SHA512Digest.description.getter();
    v79 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v77, v78);
    v81 = v80;
    v83 = v82;
    v85 = v84;

    v86 = MEMORY[0x2667714E0](v79, v81, v83, v85);
    v88 = v87;

    MEMORY[0x266771550](v86, v88);

    MEMORY[0x266771550](0x5F656372756F735FLL, 0xEF65766968637261);
    specialized static FileLogger.saveDebugFile(_:name:extension:)(v91, v94, v104, v105, 0x7473696C70, 0xE500000000000000);

    (*(v101 + 8))(v16, v102);
  }

  else
  {
    (*(v101 + 8))(v16, v102);
  }

  return v28;
}

id specialized static ShaderGraphService.materialFromSource(_:functionConstantValues:)(char *a1, _BYTE *a2)
{
  v4 = type metadata accessor for OSSignpostError();
  v115 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v114 = &v103[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit12SHA512DigestVSgMd, &_s9CryptoKit12SHA512DigestVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = &v103[-v7];
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v103[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v103[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v103[-v16];
  v18 = type metadata accessor for OSSignposter();
  MEMORY[0x28223BE20](v18);
  v22 = &v103[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v44 = swift_allocError();
    *v45 = xmmword_265F21AA0;
LABEL_9:
    *(v45 + 16) = 1;
    swift_willThrow();
    goto LABEL_10;
  }

  v107 = v4;
  if (!a2)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v44 = swift_allocError();
    *v45 = 0xD000000000000016;
    *(v45 + 8) = 0x8000000265F2E820;
    goto LABEL_9;
  }

  v108 = a2;
  v106 = v11;
  v110 = v20;
  v111 = v19;
  OSSignposter.init(subsystem:category:)();
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v113 = v22;
  v23 = OSSignposter.logHandle.getter();
  v24 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v25 = v17;
    v26 = v9;
    v27 = v8;
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v23, v24, v29, "materialFromSource", "", v28, 2u);
    v30 = v28;
    v8 = v27;
    v9 = v26;
    v17 = v25;
    MEMORY[0x266773120](v30, -1, -1);
  }

  v109 = v8;

  (*(v9 + 16))(v14, v17, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v112 = OSSignpostIntervalState.init(id:isOpen:)();
  v31 = *&a1[OBJC_IVAR___SGREMaterialSource_graph];
  v32 = v17;
  v33 = *&a1[OBJC_IVAR___SGREMaterialSource_config];
  v34 = OBJC_IVAR___SGREMaterialSource_edgeDigest;
  v35 = type metadata accessor for SHA512Digest();
  v36 = *(v35 - 8);
  v37 = v116;
  (*(v36 + 16))(v116, &a1[v34], v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  v38 = objc_allocWithZone(type metadata accessor for SGREMaterial(0));
  v39 = v31;
  v40 = v33;
  v41 = v108;
  v42 = v117;
  SGREMaterial.init(graph:configuration:functionConstantValues:sourceHash:)(v39, v40, v41, v37);
  if (!v42)
  {
    v56 = v43;
    v108 = v32;
    v116 = v9;
    v57 = a1;
    v58 = v56;
    v59 = OSSignposter.logHandle.getter();
    v60 = v106;
    OSSignpostIntervalState.signpostID.getter();
    v61 = static os_signpost_type_t.end.getter();
    v117 = v58;

    if (OS_os_log.signpostsEnabled.getter())
    {
      v104 = v61;
      v105 = v59;

      v62 = v114;
      checkForErrorAndConsumeState(state:)();

      v63 = v115;
      v64 = v107;
      if ((*(v115 + 11))(v62, v107) == *MEMORY[0x277D85B00])
      {
        v65 = 0;
        v115 = "[Error] Interval already ended";
      }

      else
      {
        (*(v63 + 1))(v62, v64);
        v115 = "%{private,mask.hash}s %s";
        v65 = 3;
      }

      v68 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v120 = v114;
      *v68 = v65;
      *(v68 + 1) = v65;
      *(v68 + 2) = 2160;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2081;
      v70 = *&v39[OBJC_IVAR___SGGraph_name];
      v69 = *&v39[OBJC_IVAR___SGGraph_name + 8];

      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v69, &v120);

      *(v68 + 14) = v71;
      *(v68 + 22) = 2080;
      v72 = SHA512Digest.description.getter();
      v74 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v72, v73);
      v76 = v75;
      v78 = v77;
      v80 = v79;

      v81 = MEMORY[0x2667714E0](v74, v76, v78, v80);
      v83 = v82;

      v118 = v81;
      v119 = v83;

      MEMORY[0x266771550](95, 0xE100000000000000);

      v84 = v119;
      v107 = v118;
      v85 = SHA512Digest.description.getter();
      v87 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v85, v86);
      v89 = v88;
      v91 = v90;
      v93 = v92;

      v94 = MEMORY[0x2667714E0](v87, v89, v91, v93);
      v96 = v95;

      v118 = v107;
      v119 = v84;

      MEMORY[0x266771550](v94, v96);

      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, &v120);

      *(v68 + 24) = v97;
      v98 = v106;
      v99 = OSSignpostID.rawValue.getter();
      v100 = v105;
      _os_signpost_emit_with_name_impl(&dword_265D7D000, v105, v104, v99, "materialFromSource", v115, v68, 0x20u);
      v101 = v114;
      swift_arrayDestroy();
      MEMORY[0x266773120](v101, -1, -1);
      MEMORY[0x266773120](v68, -1, -1);

      v66 = *(v116 + 1);
      v67 = v98;
    }

    else
    {

      v66 = *(v116 + 1);
      v67 = v60;
    }

    v102 = v109;
    v66(v67, v109);
    v66(v108, v102);
    (*(v110 + 8))(v113, v111);
    return v117;
  }

  (*(v9 + 8))(v32, v109);
  (*(v110 + 8))(v113, v111);
  v44 = v42;
LABEL_10:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, logger);
  v47 = v44;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    v52 = v44;
    v53 = _swift_stdlib_bridgeErrorToNSError();
    *(v50 + 4) = v53;
    *v51 = v53;
    _os_log_impl(&dword_265D7D000, v48, v49, "%@", v50, 0xCu);
    outlined destroy of [Input](v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v51, -1, -1);
    MEMORY[0x266773120](v50, -1, -1);
  }

  type metadata accessor for SGError();
  v54 = v44;
  SGError.__allocating_init(_:)(v44);
  swift_willThrow();

  return v117;
}

uint8_t *specialized static ShaderGraphService.createLibrary(from:device:options:)(NSObject *a1, void *a2, NSObject *a3)
{
  v291 = a3;
  v293 = a2;
  v343 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for URL();
  v274 = *(v5 - 8);
  v275 = v5;
  MEMORY[0x28223BE20](v5);
  v276 = &v264 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostError();
  v278 = *(v7 - 8);
  v279 = v7;
  MEMORY[0x28223BE20](v7);
  v277 = &v264 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = type metadata accessor for GraphCompiler(0);
  MEMORY[0x28223BE20](v281);
  v10 = &v264 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = type metadata accessor for OSSignpostID();
  v11 = *(v289 - 8);
  MEMORY[0x28223BE20](v289);
  v288 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v280 = &v264 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v264 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v264 - v19;
  v21 = type metadata accessor for OSSignposter();
  v294 = *(v21 - 8);
  v295 = v21;
  MEMORY[0x28223BE20](v21);
  v287 = &v264 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v264 - v24;
  v286 = "Sampler for image node '";
  OSSignposter.init(subsystem:category:)();
  v285 = v11;
  v290 = a1;
  if (!a1)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v35 = swift_allocError();
    *v37 = 0xD000000000000010;
    *(v37 + 8) = 0x8000000265F2E7E0;
    v284 = 1;
    *(v37 + 16) = 1;
    swift_willThrow();
    v36 = *(v294 + 8);
    (v36)(v25, v295);
    v38 = 0;
    v283 = 1;
    goto LABEL_41;
  }

  v273 = v10;
  v283 = *(&a1->isa + OBJC_IVAR___SGREMaterial_hasSurfaceShaderUniforms);
  v284 = *(&a1->isa + OBJC_IVAR___SGREMaterial_hasGeometryModifierUniforms);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v282 = v25;
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v26, v27, v29, "libraryFromMaterial", "", v28, 2u);
    MEMORY[0x266773120](v28, -1, -1);
  }

  v30 = v289;
  (*(v11 + 16))(v17, v20, v289);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  v32 = *(v11 + 8);
  v32(v20, v30);
  if (!v293)
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    v35 = swift_allocError();
    *v39 = xmmword_265F21AC0;
    *(v39 + 16) = 1;
    swift_willThrow();

    v36 = *(v294 + 8);
    (v36)(v282, v295);
    goto LABEL_40;
  }

  v270 = v32;
  v33 = *(&v290[2].isa + OBJC_IVAR___SGREMaterial_internalGraph);
  v305 = *(&v290->isa + OBJC_IVAR___SGREMaterial_internalGraph);
  v306 = v33;
  v307 = *(&v290[4].isa + OBJC_IVAR___SGREMaterial_internalGraph);
  v34 = mapInternalGraphToUserGraph(_:)(&v305, v330);
  v35 = v3;
  if (v3)
  {
    v36 = *(v294 + 8);
    (v36)(v282, v295, v34);

LABEL_40:
    v38 = 0;
    goto LABEL_41;
  }

  v268 = v11 + 8;
  v272 = v31;
  v299 = 0;
  v327 = v330[8];
  v328[0] = v331[0];
  *(v328 + 9) = *(v331 + 9);
  v323 = v330[4];
  v324 = v330[5];
  v325 = v330[6];
  v326 = v330[7];
  v319 = v330[0];
  v320 = v330[1];
  v321 = v330[2];
  v322 = v330[3];
  v267 = OBJC_IVAR___SGREMaterial_sourceHash;
  v40 = SHA512Digest.description.getter();
  v42 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v40, v41);
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v49 = MEMORY[0x2667714E0](v42, v44, v46, v48);
  v51 = v50;

  *&v309 = v49;
  *(&v309 + 1) = v51;

  MEMORY[0x266771550](95, 0xE100000000000000);

  v52 = v309;
  v266 = OBJC_IVAR___SGREMaterial_edgeDigest;
  v53 = SHA512Digest.description.getter();
  v55 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v53, v54);
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v62 = MEMORY[0x2667714E0](v55, v57, v59, v61);
  v64 = v63;

  v309 = v52;

  MEMORY[0x266771550](v62, v64);

  v269 = v309;
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v65 = static DebugConfig.debugMode;

  v66 = specialized Set.contains(_:)(3, v65);

  v69 = v294;
  v68 = v295;
  v35 = v299;
  if (v66)
  {
    v341[8] = v327;
    v342[0] = v328[0];
    *(v342 + 9) = *(v328 + 9);
    v341[4] = v323;
    v341[5] = v324;
    v341[7] = v326;
    v341[6] = v325;
    v341[0] = v319;
    v341[1] = v320;
    v341[3] = v322;
    v341[2] = v321;
    createDotText(representing:)(v341);
    if (v35)
    {
      v36 = *(v69 + 8);
      (v36)(v282, v68);

      v317 = v327;
      v318[0] = v328[0];
      v72 = *(v328 + 9);
LABEL_39:
      *(v318 + 9) = v72;
      v313 = v323;
      v314 = v324;
      v315 = v325;
      v316 = v326;
      v309 = v319;
      v310 = v320;
      v311 = v321;
      v312 = v322;
      outlined destroy of UserGraph(&v309);
      goto LABEL_40;
    }

    v73 = (*(&v290->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v75 = *v73;
    v74 = v73[1];
    *&v309 = v75;
    *(&v309 + 1) = v74;
    v76 = v70;
    v77 = v71;

    MEMORY[0x266771550](95, 0xE100000000000000);
    MEMORY[0x266771550](v269, *(&v269 + 1));
    MEMORY[0x266771550](0x617247726573755FLL, 0xEA00000000006870);
    specialized static FileLogger.saveDebugTextSource(_:name:extension:)(v76, v77, v309, *(&v309 + 1), 7630692, 0xE300000000000000);
  }

  v78 = *(&v306 + 1);
  v79 = *(*(&v306 + 1) + 16);
  if (v79)
  {
    v80 = 0;
    v296 = *(&v307 + 1);
    v81 = *(&v306 + 1) + 56;
    v264 = v79 - 1;
    v271 = MEMORY[0x277D84F90];
    v265 = *(&v306 + 1) + 56;
    do
    {
      v82 = (v81 + 32 * v80);
      v83 = v80;
      while (1)
      {
        if (v83 >= *(v78 + 16))
        {
          __break(1u);
          goto LABEL_70;
        }

        v61 = *(v82 - 2);
        v298 = *(v82 - 3);
        v299 = v35;
        v297 = *(v82 - 1);
        LODWORD(v292) = *v82;

        specialized SGDataTypeGraph.argumentsNode.getter(v332, v296);
        v84 = v333;
        if (v333)
        {
          v85 = v332[3];
          specialized Graph.Node<>.output(named:)(v298, v61, v332[0], v332[2], &v334);

          v304[0] = v85;
          v304[1] = v84;
          outlined destroy of String(v304);
          if (v336)
          {
            v300 = v334;
            v301 = v335;
            v302 = v336;
            v303 = v337;
            specialized Graph.edges(from:)(&v300, v296);
            v87 = v86;
            outlined destroy of [Input](&v334, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
            v88 = *(v87 + 16);

            if (v88)
            {
              if (v297 == 41 || v297 == 44)
              {
                break;
              }
            }
          }
        }

        ++v83;

        v82 += 32;
        v35 = v299;
        if (v79 == v83)
        {
          goto LABEL_33;
        }
      }

      v89 = v271;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v309 = v89;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v271 + 16) + 1, 1);
        v271 = v309;
      }

      v91 = *(v271 + 16);
      v90 = *(v271 + 24);
      if (v91 >= v90 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
        v271 = v309;
      }

      v80 = v83 + 1;
      v92 = v271;
      *(v271 + 16) = v91 + 1;
      v93 = v92 + 32 * v91;
      v94 = v297;
      *(v93 + 32) = v298;
      *(v93 + 40) = v61;
      *(v93 + 48) = v94;
      *(v93 + 56) = v292;
      v81 = v265;
      v35 = v299;
    }

    while (v264 != v83);
  }

  else
  {
    v271 = MEMORY[0x277D84F90];
  }

LABEL_33:
  specialized Sequence.forEach(_:)(v271, &v319);
  if (v35)
  {
    v36 = *(v294 + 8);
    (v36)(v282, v295);

LABEL_38:
    v317 = v327;
    v318[0] = v328[0];
    v72 = *(v328 + 9);
    goto LABEL_39;
  }

  v83 = v295;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v95 = qword_280051428;
  v96 = v290;
  v97 = (*((*MEMORY[0x277D85000] & **(&v290->isa + OBJC_IVAR___SGREMaterial_config)) + 0x60))();
  v329 = v95;
  swift_bridgeObjectRetain_n();

  specialized Sequence.forEach(_:)(v97, v95, &v329);

  v197 = *(&v96->isa + OBJC_IVAR___SGREMaterial_textureAssignments);
  v198 = *(&v96->isa + OBJC_IVAR___SGREMaterial_customUniformsType);
  v199 = *(v198 + OBJC_IVAR___SGPropertyDescription_type);
  v200 = (v198 + OBJC_IVAR___SGPropertyDescription_name);
  v201 = *v200;
  v202 = v200[1];

  specialized static MetalDataType.create(_:name:)(v199, v201, v202);
  v204 = v203;
  v339[8] = v327;
  v340[0] = v328[0];
  *(v340 + 9) = *(v328 + 9);
  v339[4] = v323;
  v339[5] = v324;
  v339[7] = v326;
  v339[6] = v325;
  v339[0] = v319;
  v339[1] = v320;
  v339[3] = v322;
  v339[2] = v321;
  outlined init with copy of UserGraph(v339, &v309);

  specialized Dictionary<>.init(_:)(v197);
  specialized RESurfaceShaderMaterial.init(_:customUniformsType:textureAssignments:nodeDefStore:debugHash:)(v339);
  v299 = v204;
  memcpy(v273, v338, 0x148uLL);
  OSSignposter.init(subsystem:category:)();
  GraphCompiler.compile(for:options:)(v293, v291);
  v61 = 0;
LABEL_70:
  v107 = isUniquelyReferenced_nonNull_native;
  v205 = v290;
  v206 = OSSignposter.logHandle.getter();
  v207 = v280;
  OSSignpostIntervalState.signpostID.getter();
  LODWORD(v297) = static os_signpost_type_t.end.getter();
  v298 = v205;

  if (OS_os_log.signpostsEnabled.getter())
  {
    v296 = v206;

    v208 = v277;
    checkForErrorAndConsumeState(state:)();

    v210 = v278;
    v209 = v279;
    if ((*(v278 + 88))(v208, v279) == *MEMORY[0x277D85B00])
    {
      v211 = 0;
      v292 = "[Error] Interval already ended";
    }

    else
    {
      (*(v210 + 8))(v208, v209);
      v292 = "%{private,mask.hash}s %s";
      v211 = 3;
    }

    v214 = swift_slowAlloc();
    v281 = swift_slowAlloc();
    v329 = v281;
    *v214 = v211;
    *(v214 + 1) = v211;
    *(v214 + 2) = 2160;
    *(v214 + 4) = 1752392040;
    *(v214 + 12) = 2081;
    v215 = (*(&v298->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v217 = *v215;
    v216 = v215[1];

    v218 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v216, &v329);

    v279 = v214;
    *(v214 + 14) = v218;
    *(v214 + 22) = 2080;
    v219 = SHA512Digest.description.getter();
    v221 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v219, v220);
    v223 = v222;
    v225 = v224;
    v227 = v226;

    v228 = MEMORY[0x2667714E0](v221, v223, v225, v227);
    v230 = v229;

    *&v309 = v228;
    *(&v309 + 1) = v230;

    MEMORY[0x266771550](95, 0xE100000000000000);

    v231 = *(&v309 + 1);
    v278 = v309;
    v232 = SHA512Digest.description.getter();
    v234 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v232, v233);
    v236 = v235;
    v238 = v237;
    v240 = v239;

    v241 = MEMORY[0x2667714E0](v234, v236, v238, v240);
    v243 = v242;

    *&v309 = v278;
    *(&v309 + 1) = v231;

    MEMORY[0x266771550](v241, v243);

    v244 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v309, *(&v309 + 1), &v329);

    v246 = v279;
    v245 = v280;
    *(v279 + 24) = v244;
    v247 = OSSignpostID.rawValue.getter();
    v248 = v296;
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v296, v297, v247, "libraryFromMaterial", v292, v246, 0x20u);
    v249 = v281;
    swift_arrayDestroy();
    MEMORY[0x266773120](v249, -1, -1);
    MEMORY[0x266773120](v246, -1, -1);

    v270(v245, v289);
    v83 = v295;
    v213 = v282;
    v212 = v273;
  }

  else
  {

    v270(v207, v289);
    v212 = v273;
    v213 = v282;
  }

  v250 = static DebugConfig.debugMode;

  v251 = specialized Set.contains(_:)(4, v250);

  if ((v251 & 1) == 0 || (v308 = &unk_2877A8D38, (v252 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {

    outlined destroy of GraphCompiler(v212);
    (*(v294 + 8))(v213, v83);
    v317 = v327;
    v318[0] = v328[0];
    v258 = *(v328 + 9);
    goto LABEL_81;
  }

  v253 = v252;
  type metadata accessor for FileLogger();
  v254 = (*(&v298->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
  v255 = v254[1];
  *&v309 = *v254;
  *(&v309 + 1) = v255;
  swift_unknownObjectRetain();

  MEMORY[0x266771550](95, 0xE100000000000000);
  MEMORY[0x266771550](v269, *(&v269 + 1));

  MEMORY[0x266771550](0x656C69706D6F635FLL, 0xE900000000000064);
  v256 = v276;
  static FileLogger.url(for:extension:)(v309, *(&v309 + 1), 0x62696C6C746DLL, 0xE600000000000000, v276);
  if (!v61)
  {

    URL._bridgeToObjectiveC()(v259);
    v261 = v260;
    *&v309 = 0;
    v262 = [v253 serializeToURL:v260 error:&v309];

    v263 = v309;
    swift_unknownObjectRelease();
    if (!v262)
    {
      v35 = _convertNSErrorToError(_:)();

      swift_willThrow();

      swift_unknownObjectRelease();
      (*(v274 + 8))(v256, v275);
      outlined destroy of GraphCompiler(v273);
      v36 = *(v294 + 8);
      (v36)(v282, v83);
      goto LABEL_38;
    }

    (*(v274 + 8))(v256, v275);
    outlined destroy of GraphCompiler(v273);
    (*(v294 + 8))(v282, v83);
    v317 = v327;
    v318[0] = v328[0];
    v258 = *(v328 + 9);
LABEL_81:
    *(v318 + 9) = v258;
    v313 = v323;
    v314 = v324;
    v315 = v325;
    v316 = v326;
    v309 = v319;
    v310 = v320;
    v311 = v321;
    v312 = v322;
    outlined destroy of UserGraph(&v309);
    return v107;
  }

  swift_unknownObjectRelease_n();

  outlined destroy of GraphCompiler(v273);
  v257 = *(v294 + 8);
  (v257)(v282, v83);
  v317 = v327;
  v318[0] = v328[0];
  *(v318 + 9) = *(v328 + 9);
  v313 = v323;
  v314 = v324;
  v315 = v325;
  v316 = v326;
  v309 = v319;
  v310 = v320;
  v311 = v321;
  v312 = v322;
  outlined destroy of UserGraph(&v309);
  v38 = 0;
  v35 = v61;
  v36 = v257;
LABEL_41:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  v99 = __swift_project_value_buffer(v98, logger);
  v100 = v35;
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *v103 = 138412290;
    v105 = v35;
    v106 = _swift_stdlib_bridgeErrorToNSError();
    *(v103 + 4) = v106;
    *v104 = v106;
    _os_log_impl(&dword_265D7D000, v101, v102, "%@", v103, 0xCu);
    outlined destroy of [Input](v104, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266773120](v104, -1, -1);
    MEMORY[0x266773120](v103, -1, -1);
  }

  v107 = OBJC_IVAR___SGREMaterialCompilationOptions_enableFailedCompileMaterial;
  v108 = v291;
  swift_beginAccess();
  if (v107[v108] != 1)
  {
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v149, v150))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_265D7D000, v149, v150, "Failed material compile fallback disabled.", v107, 2u);
      MEMORY[0x266773120](v107, -1, -1);
    }

    type metadata accessor for SGError();
    v151 = v35;
    SGError.__allocating_init(_:)(v35);
    goto LABEL_58;
  }

  if (!v290)
  {
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v152, v153))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_265D7D000, v152, v153, "MISSING SGEREMATERIAL", v107, 2u);
      MEMORY[0x266773120](v107, -1, -1);
    }

    v154 = v293;
    if (v293)
    {
      goto LABEL_64;
    }

    goto LABEL_55;
  }

  v109 = v290;
  v297 = v99;
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.error.getter();
  v112 = os_log_type_enabled(v110, v111);
  v298 = 0;
  v299 = v35;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v291 = swift_slowAlloc();
    v329 = v291;
    *v113 = 141558531;
    *(v113 + 4) = 1752392040;
    *(v113 + 12) = 2081;
    v114 = (*(&v109->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v290 = v110;
    v116 = *v114;
    v115 = v114[1];

    v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v115, &v329);
    v292 = v36;
    v118 = v117;

    *(v113 + 14) = v118;
    *(v113 + 22) = 2080;
    v119 = SHA512Digest.description.getter();
    v121 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v119, v120);
    v123 = v122;
    LODWORD(v282) = v111;
    v125 = v124;
    v296 = v109;
    v127 = v126;

    v128 = MEMORY[0x2667714E0](v121, v123, v125, v127);
    v130 = v129;

    *&v309 = v128;
    *(&v309 + 1) = v130;

    MEMORY[0x266771550](95, 0xE100000000000000);

    v131 = v309;
    v132 = SHA512Digest.description.getter();
    v134 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v132, v133);
    v136 = v135;
    v138 = v137;
    v140 = v139;

    v141 = v138;
    v36 = v292;
    v142 = MEMORY[0x2667714E0](v134, v136, v141, v140);
    v144 = v143;

    v309 = v131;

    v145 = v142;
    v109 = v296;
    MEMORY[0x266771550](v145, v144);

    v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v309, *(&v309 + 1), &v329);

    *(v113 + 24) = v146;
    v147 = v290;
    _os_log_impl(&dword_265D7D000, v290, v282, "Material library construction failed for: %{private,mask.hash}s %s", v113, 0x20u);
    v148 = v291;
    swift_arrayDestroy();
    MEMORY[0x266773120](v148, -1, -1);
    MEMORY[0x266773120](v113, -1, -1);
  }

  else
  {
  }

  v107 = v287;
  v157 = v288;
  OSSignposter.init(subsystem:category:)();
  v158 = v109;
  static OSSignpostID.exclusive.getter();
  v159 = OSSignposter.logHandle.getter();
  v160 = static os_signpost_type_t.event.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v161 = swift_slowAlloc();
    v296 = swift_slowAlloc();
    v329 = v296;
    *v161 = 141558531;
    *(v161 + 4) = 1752392040;
    *(v161 + 12) = 2081;
    v162 = (*(&v158->isa + OBJC_IVAR___SGREMaterial_graph) + OBJC_IVAR___SGGraph_name);
    v164 = *v162;
    v163 = v162[1];

    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v164, v163, &v329);

    *(v161 + 14) = v165;
    *(v161 + 22) = 2080;
    v166 = SHA512Digest.description.getter();
    v168 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v166, v167);
    v292 = v159;
    v170 = v169;
    v172 = v171;
    v174 = v173;

    v175 = MEMORY[0x2667714E0](v168, v170, v172, v174);
    v177 = v176;

    *&v309 = v175;
    *(&v309 + 1) = v177;

    MEMORY[0x266771550](95, 0xE100000000000000);

    v291 = v158;
    v178 = v309;
    v179 = SHA512Digest.description.getter();
    v181 = specialized BidirectionalCollection.suffix(_:)(0x10uLL, v179, v180);
    v183 = v182;
    v185 = v184;
    LODWORD(v290) = v160;
    v187 = v186;

    v188 = MEMORY[0x2667714E0](v181, v183, v185, v187);
    v190 = v189;

    v309 = v178;

    MEMORY[0x266771550](v188, v190);

    v191 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v309, *(&v309 + 1), &v329);

    *(v161 + 24) = v191;
    v192 = v288;
    v193 = OSSignpostID.rawValue.getter();
    v107 = v292;
    _os_signpost_emit_with_name_impl(&dword_265D7D000, v292, v290, v193, "failureMaterial", "%{private,mask.hash}s %s", v161, 0x20u);
    v194 = v296;
    swift_arrayDestroy();
    MEMORY[0x266773120](v194, -1, -1);
    MEMORY[0x266773120](v161, -1, -1);

    (*(v285 + 8))(v192, v289);
    (*(v294 + 8))(v287, v295);
  }

  else
  {

    (*(v285 + 8))(v157, v289);
    (v36)(v107, v295);
  }

  v154 = v293;
  v38 = v298;
  v35 = v299;
  if (!v293)
  {
LABEL_55:
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v155, v156))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_265D7D000, v155, v156, "Failed to unwrap MTLDevice", v107, 2u);
      MEMORY[0x266773120](v107, -1, -1);
    }

    type metadata accessor for SGError();
    SGError.__allocating_init(_:)(0x63697665444C544DLL, 0xE900000000000065, 1);
LABEL_58:
    swift_willThrow();
    goto LABEL_66;
  }

LABEL_64:
  swift_unknownObjectRetain();
  v195 = buildFailureMaterial(usesSurfaceUniforms:usesGeometryUniforms:device:)(v283, v284, v154);
  if (!v38)
  {
    v107 = v195;
    swift_unknownObjectRelease();

    return v107;
  }

  swift_unknownObjectRelease();
LABEL_66:

  return v107;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined destroy of GraphCompiler(uint64_t a1)
{
  v2 = type metadata accessor for GraphCompiler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MaterialCodingContainer and conformance MaterialCodingContainer()
{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer;
  if (!lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MaterialCodingContainer and conformance MaterialCodingContainer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

uint64_t DynamicArrayLookupByString.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  _ArrayProtocol.filter(_:)();
  v8 = MEMORY[0x266771860]();
  if (v8 == 1)
  {
    Array.subscript.getter();
  }

  else
  {
    if (v8)
    {

      swift_getMetatypeMetadata();
      v19 = String.init<A>(reflecting:)();
      v21 = v16;
      MEMORY[0x266771550](32, 0xE100000000000000);
      MEMORY[0x266771550](a1, a2);
      v14 = 0;
      v12 = v19;
      v13 = v21;
    }

    else
    {

      swift_getMetatypeMetadata();
      v18 = String.init<A>(reflecting:)();
      v20 = v9;
      MEMORY[0x266771550](32, 0xE100000000000000);
      MEMORY[0x266771550](a1, a2);
      v12 = v18;
      v13 = v20;
      v14 = 1;
    }

    type metadata accessor for DynamicArrayLookupByString.MemberLookupError(0, a5, v10, v11);
    swift_getWitnessTable();
    swift_allocError();
    *v17 = v12;
    *(v17 + 8) = v13;
    *(v17 + 16) = v14;
    return swift_willThrow();
  }
}

uint64_t closure #1 in DynamicArrayLookupByString.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAtKeyPath();
  if (v10 == a4 && v11 == a5)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t type metadata instantiation function for DynamicArrayLookupByString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for DynamicArrayLookupByString(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for DynamicArrayLookupByString(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for DynamicArrayLookupByString.MemberLookupError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11ShaderGraph11DebugConfigO5GroupOG_SSs5NeverOTg504_s11d7Graph11fg17O9debugModeShyAC5H72OGvpZfiAGyXEfU_SSAFcfu1_32fca4dd16cfbb9a2e4a4875ed65f685b6AFSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  v27 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_40;
    }

    v11 = *(*(a1 + 48) + result);
    if (v11 > 4)
    {
      if (*(*(a1 + 48) + result) <= 6u)
      {
        if (v11 == 5)
        {
          v13 = 0x6E69686374697473;
          v12 = 0xEE00687061724767;
        }

        else
        {
          v12 = 0xEA0000000000746FLL;
          v13 = 0x446C616D696E696DLL;
        }
      }

      else if (v11 == 7)
      {
        v12 = 0xE800000000000000;
        v13 = 0x6870617247697061;
      }

      else if (v11 == 8)
      {
        v13 = 0xD000000000000011;
        v12 = 0x8000000265F2BCB0;
      }

      else
      {
        v13 = 0xD00000000000001ALL;
        v12 = 0x8000000265F2BCD0;
      }
    }

    else if (*(*(a1 + 48) + result) <= 1u)
    {
      if (*(*(a1 + 48) + result))
      {
        v12 = 0xE700000000000000;
        v13 = 0x7972616D6D7573;
      }

      else
      {
        v12 = 0xE400000000000000;
        v13 = 1701736302;
      }
    }

    else if (v11 == 2)
    {
      v12 = 0xE700000000000000;
      v13 = 0x65766968637261;
    }

    else if (v11 == 3)
    {
      v12 = 0xE300000000000000;
      v13 = 7630692;
    }

    else
    {
      v13 = 0x62694C6C6174656DLL;
      v12 = 0xEC00000079726172;
    }

    v14 = *(a1 + 36);
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v14 = v25;
      result = v26;
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_41;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_42;
    }

    if (v14 != *(a1 + 36))
    {
      goto LABEL_43;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          outlined consume of [String : String].Index._Variant(result, v14, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      outlined consume of [String : String].Index._Variant(result, v14, 0);
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t *DebugConfig.debugMode.unsafeMutableAddressor()
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  return &static DebugConfig.debugMode;
}

char *DebugConfig.tier1SupportOverrideEnabled.unsafeMutableAddressor()
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  return &static DebugConfig.tier1SupportOverrideEnabled;
}

uint64_t DebugConfig.Group.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6870617247697061;
    v6 = 0xD000000000000011;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E69686374697473;
    if (a1 != 5)
    {
      v7 = 0x446C616D696E696DLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1701736302;
    v2 = 0x65766968637261;
    v3 = 7630692;
    if (a1 != 3)
    {
      v3 = 0x62694C6C6174656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7972616D6D7573;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DebugConfig.Group(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = DebugConfig.Group.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == DebugConfig.Group.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DebugConfig.Group()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DebugConfig.Group.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance DebugConfig.Group(uint64_t a1)
{
  DebugConfig.Group.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DebugConfig.Group(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  DebugConfig.Group.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DebugConfig.Group@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DebugConfig.Group.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DebugConfig.Group@<X0>(uint64_t *a1@<X8>)
{
  result = DebugConfig.Group.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t one-time initialization function for debugMode()
{
  result = closure #1 in variable initialization expression of static DebugConfig.debugMode();
  static DebugConfig.debugMode = result;
  return result;
}

uint64_t closure #1 in variable initialization expression of static DebugConfig.debugMode()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (!v0)
  {
    if (one-time initialization token for logger == -1)
    {
LABEL_8:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, logger);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_265D7D000, v12, v13, "Failed to construct UserDefaults(suiteName: nil)", v14, 2u);
        MEMORY[0x266773120](v14, -1, -1);
      }

      return MEMORY[0x277D84FA0];
    }

LABEL_45:
    swift_once();
    goto LABEL_8;
  }

  v1 = v0;
  type metadata accessor for SGGraph();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = [v3 infoDictionary];
  if (v4)
  {
    v5 = v4;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C646E75424643, 0xEF6E6F6973726556), (v8 & 1) != 0))
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v7, &v57);

      if (swift_dynamicCast())
      {
        v9 = v56[0];
        v10 = v56[1];
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v10 = 0xE500000000000000;
  v9 = 0x7265566F4ELL;
LABEL_13:
  v53 = v9;
  v54 = v3;
  v15 = MEMORY[0x266771450](0xD00000000000001FLL, 0x8000000265F2E900);
  v55 = v1;
  v16 = [v1 stringArrayForKey_];

  if (v16)
  {
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = 0;
    v19 = *(v17 + 16);
    v20 = MEMORY[0x277D84F90];
LABEL_15:
    v21 = (v17 + 40 + 16 * v18);
    while (1)
    {
      if (v19 == v18)
      {
        v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph11DebugConfigO5GroupO_SayAHGTt0g5Tf4g_n(v20);

        goto LABEL_26;
      }

      if (v18 >= *(v17 + 16))
      {
        break;
      }

      ++v18;
      v22 = v21 + 2;
      v23 = *(v21 - 1);
      v24 = *v21;

      v25._countAndFlagsBits = v23;
      v25._object = v24;
      v26 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DebugConfig.Group.init(rawValue:), v25);

      v21 = v22;
      if (v26 < 0xA)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
        }

        v28 = *(v20 + 2);
        v27 = *(v20 + 3);
        if (v28 >= v27 >> 1)
        {
          v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v20);
        }

        *(v20 + 2) = v28 + 1;
        v20[v28 + 32] = v26;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11ShaderGraph11DebugConfigO5GroupO_Tt0g5Tf4g_n(&outlined read-only object #0 of closure #1 in variable initialization expression of static DebugConfig.debugMode);
LABEL_26:
  v57 = 91;
  v58 = 0xE100000000000000;
  v56[0] = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy11ShaderGraph11DebugConfigO5GroupOG_SSs5NeverOTg504_s11d7Graph11fg17O9debugModeShyAC5H72OGvpZfiAGyXEfU_SSAFcfu1_32fca4dd16cfbb9a2e4a4875ed65f685b6AFSSTf3nnnpk_nTf1cn_n(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v30 = BidirectionalCollection<>.joined(separator:)();
  v32 = v31;

  MEMORY[0x266771550](v30, v32);

  MEMORY[0x266771550](93, 0xE100000000000000);
  v34 = v57;
  v33 = v58;
  if (specialized Set.contains(_:)(0, v29))
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, logger);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v56[0] = v39;
      *v38 = 136315394;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v10, v56);

      *(v38 + 4) = v40;
      *(v38 + 12) = 2080;
      v41 = *(v29 + 16);

      if (v41 < 2)
      {

        v42 = 0;
        v43 = 0xE000000000000000;
      }

      else
      {
        v57 = 8316;
        v58 = 0xE200000000000000;
        MEMORY[0x266771550](v34, v33);

        v42 = v57;
        v43 = v58;
      }

      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v56);

      *(v38 + 14) = v51;
      _os_log_impl(&dword_265D7D000, v36, v37, "DebugMode (%s): none %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v39, -1, -1);
      MEMORY[0x266773120](v38, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84FA0];
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, logger);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57 = v48;
    *v47 = 136315394;
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v10, &v57);

    *(v47 + 4) = v49;
    *(v47 + 12) = 2080;
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v57);

    *(v47 + 14) = v50;
    _os_log_impl(&dword_265D7D000, v45, v46, "DebugMode (%s): %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v48, -1, -1);
    MEMORY[0x266773120](v47, -1, -1);
  }

  else
  {
  }

  return v29;
}

uint64_t static DebugConfig.debugMode.getter()
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static DebugConfig.debugMode.setter(uint64_t a1)
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DebugConfig.debugMode = a1;
}

uint64_t (*static DebugConfig.debugMode.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.Element.children.modify;
}

uint64_t key path getter for static DebugConfig.debugMode : DebugConfig.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for debugMode != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = static DebugConfig.debugMode;
}

uint64_t key path setter for static DebugConfig.debugMode : DebugConfig.Type(uint64_t *a1)
{
  v1 = *a1;
  v2 = one-time initialization token for debugMode;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static DebugConfig.debugMode = v1;
}

uint64_t one-time initialization function for tier1SupportOverrideEnabled()
{
  result = closure #1 in variable initialization expression of static DebugConfig.tier1SupportOverrideEnabled();
  static DebugConfig.tier1SupportOverrideEnabled = result & 1;
  return result;
}

id closure #1 in variable initialization expression of static DebugConfig.tier1SupportOverrideEnabled()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x266771450](0xD000000000000030, 0x8000000265F2E920);
    v3 = [v1 BOOLForKey_];
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, logger);
    v2 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_265D7D000, v2, v5, "Failed to construct UserDefaults(suiteName: nil)", v6, 2u);
      MEMORY[0x266773120](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t static DebugConfig.tier1SupportOverrideEnabled.getter()
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static DebugConfig.tier1SupportOverrideEnabled;
}

uint64_t static DebugConfig.tier1SupportOverrideEnabled.setter(char a1)
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static DebugConfig.tier1SupportOverrideEnabled = a1 & 1;
  return result;
}

uint64_t (*static DebugConfig.tier1SupportOverrideEnabled.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return XMLParserDelegate.StringNode.children.modify;
}

uint64_t key path getter for static DebugConfig.tier1SupportOverrideEnabled : DebugConfig.Type@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = static DebugConfig.tier1SupportOverrideEnabled;
  return result;
}

uint64_t key path setter for static DebugConfig.tier1SupportOverrideEnabled : DebugConfig.Type(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for tier1SupportOverrideEnabled != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static DebugConfig.tier1SupportOverrideEnabled = v1;
  return result;
}

unint64_t specialized DebugConfig.Group.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DebugConfig.Group.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type DebugConfig.Group and conformance DebugConfig.Group()
{
  result = lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group;
  if (!lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group;
  if (!lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DebugConfig.Group and conformance DebugConfig.Group);
  }

  return result;
}

uint64_t FunctionConstantValue.name.getter()
{
  v1 = *v0;

  return v1;
}

Swift::Int one-time initialization function for supportedTypes()
{
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo10SGDataTypeV_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for supportedTypes);
  static FunctionConstantValue.supportedTypes = result;
  return result;
}

uint64_t *FunctionConstantValue.supportedTypes.unsafeMutableAddressor()
{
  if (one-time initialization token for supportedTypes != -1)
  {
    swift_once();
  }

  return &static FunctionConstantValue.supportedTypes;
}

uint64_t static FunctionConstantValue.supportedTypes.getter()
{
  if (one-time initialization token for supportedTypes != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FunctionConstantValue.CodingKeys()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x656761726F7473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FunctionConstantValue.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized FunctionConstantValue.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FunctionConstantValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FunctionConstantValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FunctionConstantValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph21FunctionConstantValueV10CodingKeys33_1DECD222B29116A8D7E63F9F487C0906LLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph21FunctionConstantValueV10CodingKeys33_1DECD222B29116A8D7E63F9F487C0906LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v12[0] = *(v3 + 16);
    v14 = 1;
    type metadata accessor for SGDataType(0);
    lazy protocol witness table accessor for type SGDataType and conformance SGDataType(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, &protocol conformance descriptor for SGDataType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = *(v3 + 80);
    v12[2] = *(v3 + 64);
    v12[3] = v9;
    v13 = *(v3 + 96);
    v10 = *(v3 + 48);
    v12[0] = *(v3 + 32);
    v12[1] = v10;
    v14 = 2;
    lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage()
{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage;
  if (!lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeStorage and conformance SGDataTypeStorage);
  }

  return result;
}

__n128 FunctionConstantValue.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized FunctionConstantValue.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

__n128 FunctionConstantValue.init(name:type:storage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v6[8] = *a4;
  *&v6[24] = *(a4 + 16);
  *&v6[40] = *(a4 + 32);
  *&v6[56] = *(a4 + 48);
  v6[72] = *(a4 + 64);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = *v6;
  result = *&v6[32];
  *(a5 + 81) = *&v6[57];
  *(a5 + 72) = *&v6[48];
  *(a5 + 56) = *&v6[32];
  *(a5 + 40) = *&v6[16];
  return result;
}

__n128 protocol witness for Decodable.init(from:) in conformance FunctionConstantValue@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized FunctionConstantValue.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

id static SGREMaterialFunctionConstantValues.unarchive(from:)(uint64_t a1, id a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11ShaderGraph21FunctionConstantValueVGMd, &_sSay11ShaderGraph21FunctionConstantValueVGMR);
  lazy protocol witness table accessor for type [FunctionConstantValue] and conformance <A> [A]();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (!v2)
  {
    v4 = *&v26[0];
    if (one-time initialization token for empty != -1)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v5 = *(v4 + 16);
      a2 = static SGREMaterialFunctionConstantValues.empty;
      if (!v5)
      {
        break;
      }

      v6 = 0;
      v7 = 32;
      while (v6 < *(v4 + 16))
      {
        v8 = *(v4 + v7);
        v9 = *(v4 + v7 + 32);
        v26[1] = *(v4 + v7 + 16);
        v26[2] = v9;
        v26[0] = v8;
        v10 = *(v4 + v7 + 48);
        v11 = *(v4 + v7 + 64);
        v12 = *(v4 + v7 + 80);
        v27 = *(v4 + v7 + 96);
        v26[4] = v11;
        v26[5] = v12;
        v26[3] = v10;
        v13 = *(v4 + v7 + 80);
        v23 = *(v4 + v7 + 64);
        v24 = v13;
        v25 = *(v4 + v7 + 96);
        v14 = *(v4 + v7 + 16);
        v19 = *(v4 + v7);
        v20 = v14;
        v15 = *(v4 + v7 + 48);
        v21 = *(v4 + v7 + 32);
        v22 = v15;
        outlined init with copy of FunctionConstantValue(v26, v17);
        closure #1 in static SGREMaterialFunctionConstantValues.unarchive(from:)(&v19, a2);
        ++v6;
        v17[4] = v23;
        v17[5] = v24;
        v18 = v25;
        v17[0] = v19;
        v17[1] = v20;
        v17[2] = v21;
        v17[3] = v22;
        outlined destroy of FunctionConstantValue(v17);
        v7 += 112;
        if (v5 == v6)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_10:
      swift_once();
    }

LABEL_7:
  }

  return a2;
}

uint64_t closure #1 in static SGREMaterialFunctionConstantValues.unarchive(from:)(int8x8_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[4];
  v6 = a1[12].u8[0];
  if (v6 <= 7)
  {
    if (a1[12].u8[0] <= 3u)
    {
      if (a1[12].i8[0])
      {
        if (v6 != 2)
        {
          goto LABEL_27;
        }

        v12 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
        swift_beginAccess();
        v13 = *(a2 + v12);

        v14 = v13;
        v15.super.super.isa = Int32._bridgeToObjectiveC()().super.super.isa;
      }

      else
      {
        v19 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
        swift_beginAccess();
        v14 = *(a2 + v19);

        v15.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      }
    }

    else
    {
      if (v6 != 4)
      {
        if (v6 != 5)
        {
          if (v6 == 7)
          {
            v7 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
            swift_beginAccess();
            v8 = *(a2 + v7);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
            v9 = swift_allocObject();
            *(v9 + 16) = xmmword_265F21D90;
            *(v9 + 32) = v5;
LABEL_25:

            v34 = v8;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v34 __swift_setObject_forKeyedSubscript_];

            return swift_unknownObjectRelease();
          }

          goto LABEL_27;
        }

        v28 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
        swift_beginAccess();
        v29 = *(a2 + v28);

        v30 = v29;
        v31 = Float._bridgeToObjectiveC()().super.super.isa;
        [v30 __swift_setObject_forKeyedSubscript_];

        return swift_unknownObjectRelease();
      }

      v23 = OBJC_IVAR___SGREMaterialFunctionConstantValues_scalarFunctionConstants;
      swift_beginAccess();
      v24 = *(a2 + v23);

      v14 = v24;
      v15.super.super.isa = UInt16._bridgeToObjectiveC()().super.super.isa;
    }

    v25 = v15.super.super.isa;
    [v14 __swift_setObject_forKeyedSubscript_];

    return swift_unknownObjectRelease();
  }

  if (a1[12].u8[0] <= 9u)
  {
    if (v6 == 8)
    {
      v20 = a1[5];
      v21 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
      swift_beginAccess();
      v8 = *(a2 + v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_265F21D80;
      *(v22 + 32) = v5.i32[0];
      *(v22 + 36) = vext_s8(v5, v20, 4uLL);
      goto LABEL_25;
    }

    if (v6 == 9)
    {
      v16 = a1[5];
      v17 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
      swift_beginAccess();
      v8 = *(a2 + v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_265F21D70;
      *(v18 + 32) = v5.i32[0];
      *(v18 + 36) = vext_s8(v5, v16, 4uLL);
      *(v18 + 44) = vdupq_n_s64(v16).i32[3];
      goto LABEL_25;
    }
  }

  else
  {
    switch(v6)
    {
      case 0xAu:
        v26 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
        swift_beginAccess();
        v8 = *(a2 + v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_265F21D90;
        *(v27 + 32) = v5.i32[0];
        goto LABEL_25;
      case 0xBu:
        v39 = a1[4];
        v32 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
        swift_beginAccess();
        v8 = *(a2 + v32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_265F21D80;
        *(v33 + 32) = v5.i16[0];
        *(v33 + 34) = *(v39.i32 + 2);
        goto LABEL_25;
      case 0xCu:
        v38 = a1[4];
        v10 = OBJC_IVAR___SGREMaterialFunctionConstantValues_vectorFunctionConstants;
        swift_beginAccess();
        v8 = *(a2 + v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd, &_ss23_ContiguousArrayStorageCys6UInt16VGMR);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_265F21D70;
        *(v11 + 32) = v5.i16[0];
        *(v11 + 34) = v38.i16[1];
        *(v11 + 36) = v38.i32[1];
        goto LABEL_25;
    }
  }

LABEL_27:
  _StringGuts.grow(_:)(39);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2EA30);
  MEMORY[0x266771550](v4, *&v3);
  MEMORY[0x266771550](0x203A657079742029, 0xE800000000000000);
  type metadata accessor for SGDataType(0);
  _print_unlocked<A, B>(_:_:)();
  lazy protocol witness table accessor for type APIError and conformance APIError();
  swift_allocError();
  *v37 = 0;
  *(v37 + 8) = 0xE000000000000000;
  *(v37 + 16) = 11;
  return swift_willThrow();
}

void mergeFunctionConstants(from:scalars:vectors:)(unint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v51 = v6;
    v52 = v4;
    if (i)
    {
      *&v71 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        goto LABEL_74;
      }

      v8 = v71;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = 0;
        v4 = &OBJC_IVAR___SGInput_name;
        do
        {
          v9 = (MEMORY[0x266772030](v6, a1) + OBJC_IVAR___SGInput_name);
          swift_beginAccess();
          v10 = *v9;
          v11 = v9[1];

          swift_unknownObjectRelease();
          *&v71 = v8;
          v13 = *(v8 + 16);
          v12 = *(v8 + 24);
          if (v13 >= v12 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
            v8 = v71;
          }

          ++v6;
          *(v8 + 16) = v13 + 1;
          v14 = v8 + 16 * v13;
          *(v14 + 32) = v10;
          *(v14 + 40) = v11;
        }

        while (i != v6);
      }

      else
      {
        v4 = a1 + 32;
        do
        {
          v15 = (*v4 + OBJC_IVAR___SGInput_name);
          swift_beginAccess();
          v16 = *v15;
          v6 = v15[1];
          *&v71 = v8;
          v18 = *(v8 + 16);
          v17 = *(v8 + 24);

          if (v18 >= v17 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
            v8 = v71;
          }

          *(v8 + 16) = v18 + 1;
          v19 = v8 + 16 * v18;
          *(v19 + 32) = v16;
          *(v19 + 40) = v6;
          v4 += 8;
          --i;
        }

        while (i);
      }
    }

    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

    v21 = [a2 allKeys];
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = *(v22 + 16);
    if (v53)
    {
      v6 = 0;
      v4 = v20 + 56;
      while (1)
      {
        if (v6 >= *(v22 + 16))
        {
          goto LABEL_71;
        }

        outlined init with copy of Any(v22 + 32 + 32 * v6, &v64);
        outlined init with copy of Any(&v64, &v71);
        if (!swift_dynamicCast())
        {
          break;
        }

        v23 = *(&v57 + 1);
        v24 = v57;
        if (!*(v20 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v25 = Hasher._finalize()(), v26 = -1 << *(v20 + 32), v27 = v25 & ~v26, ((*(v4 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
        {
LABEL_29:

          *&v71 = 0;
          *(&v71 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          v31 = "Unknown scalar FunctionConstant name: ";
LABEL_45:
          *&v71 = 0xD000000000000026;
          *(&v71 + 1) = (v31 - 32) | 0x8000000000000000;
          MEMORY[0x266771550](v24, v23);

          goto LABEL_46;
        }

        ++v6;
        v28 = ~v26;
        while (1)
        {
          v29 = (*(v20 + 48) + 16 * v27);
          v30 = *v29 == v57 && v29[1] == *(&v57 + 1);
          if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v4 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v64);
        if (v6 == v53)
        {
          goto LABEL_30;
        }
      }

LABEL_68:

      *&v71 = 0;
      *(&v71 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x266771550](0xD000000000000014, 0x8000000265F2E960);
LABEL_46:
      v40 = v71;
      lazy protocol witness table accessor for type APIError and conformance APIError();
      swift_allocError();
      *v41 = v40;
      *(v41 + 16) = 22;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(&v64);
      return;
    }

LABEL_30:

    v32 = [a3 allKeys];
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v54 = *(v33 + 16);
    if (v54)
    {
      break;
    }

LABEL_48:

    if (v51)
    {
      v42 = __CocoaSet.count.getter();
      v43 = v52;
      if (!v42)
      {
        return;
      }
    }

    else
    {
      v42 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = v52;
      if (!v42)
      {
        return;
      }
    }

    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x266772030](v44, a1);
      }

      else
      {
        if (v44 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v46 = *(a1 + 8 * v44 + 32);
      }

      v6 = v46;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v78 = v46;
      closure #3 in mergeFunctionConstants(from:scalars:vectors:)(&v78, a2, a3, &v71);
      if (v43)
      {

        return;
      }

      if (*(&v71 + 1))
      {
        v68 = v75;
        v69 = v76;
        v70 = v77;
        v64 = v71;
        v65 = v72;
        v66 = v73;
        v67 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
        }

        v4 = *(v45 + 2);
        v48 = *(v45 + 3);
        v6 = v4 + 1;
        if (v4 >= v48 >> 1)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v4 + 1, 1, v45);
        }

        v61 = v68;
        v62 = v69;
        v63 = v70;
        v59 = v66;
        v60 = v67;
        v49 = v64;
        v57 = v64;
        v58 = v65;
        *(v45 + 2) = v6;
        v50 = &v45[112 * v4];
        *(v50 + 3) = v58;
        *(v50 + 4) = v59;
        v50[128] = v63;
        *(v50 + 6) = v61;
        *(v50 + 7) = v62;
        *(v50 + 5) = v60;
        *(v50 + 2) = v49;
      }

      else
      {
        v68 = v75;
        v69 = v76;
        v70 = v77;
        v64 = v71;
        v65 = v72;
        v66 = v73;
        v67 = v74;
        outlined destroy of FunctionConstantValue?(&v64);
      }

      ++v44;
      if (v47 == v42)
      {
        return;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    ;
  }

  v6 = 0;
  v4 = v20 + 56;
  while (v6 < *(v33 + 16))
  {
    outlined init with copy of Any(v33 + 32 + 32 * v6, &v64);
    outlined init with copy of Any(&v64, &v71);
    if (!swift_dynamicCast())
    {
      goto LABEL_68;
    }

    v23 = *(&v57 + 1);
    v24 = v57;
    if (!*(v20 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v34 = Hasher._finalize()(), v35 = -1 << *(v20 + 32), v36 = v34 & ~v35, ((*(v4 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0))
    {
LABEL_44:

      *&v71 = 0;
      *(&v71 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v31 = "Unknown vector FunctionConstant name: ";
      goto LABEL_45;
    }

    ++v6;
    v37 = ~v35;
    while (1)
    {
      v38 = (*(v20 + 48) + 16 * v36);
      v39 = *v38 == v57 && v38[1] == *(&v57 + 1);
      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v36 = (v36 + 1) & v37;
      if (((*(v4 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v64);
    if (v6 == v54)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
}

uint64_t closure #3 in mergeFunctionConstants(from:scalars:vectors:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = (*a1 + OBJC_IVAR___SGInput_name);
  v10 = v9[1];
  *&v43[0] = *v9;
  *(&v43[0] + 1) = v10;

  v11 = [a2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v43, v44);
    outlined init with copy of Any(v44, v43);
    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v12 = v40;
      if (one-time initialization token for supportedTypes != -1)
      {
        swift_once();
      }

      v13 = static FunctionConstantValue.supportedTypes;
      v14 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      if (specialized Set.contains(_:)(*(v8 + v14), v13))
      {
        specialized SGDataTypeStorage.init(type:scalar:)(v45, v40, *(v8 + v14));

        result = __swift_destroy_boxed_opaque_existential_1Tm(v44);
        if (v4)
        {
          return result;
        }

        v16 = *(v8 + v14);
        v17 = v9[1];
        *&v38[8] = v45[0];
        v38[72] = v46;
        *&v38[56] = v45[3];
        *&v38[40] = v45[2];
        *&v38[24] = v45[1];
        *a4 = *v9;
        *(a4 + 8) = v17;
        *(a4 + 16) = v16;
        v18 = *&v38[16];
        *(a4 + 24) = *v38;
        v19 = *&v38[32];
        v20 = *&v38[48];
        v21 = *&v38[57];
LABEL_15:
        *(a4 + 81) = v21;
        *(a4 + 72) = v20;
        *(a4 + 56) = v19;
        *(a4 + 40) = v18;
      }

LABEL_21:
      v41 = *v9;
      v42 = v9[1];

      MEMORY[0x266771550](58, 0xE100000000000000);
      v32 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v32);

      MEMORY[0x266771550](2112800, 0xE300000000000000);
      v33 = [v12 description];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      MEMORY[0x266771550](v34, v36);

      lazy protocol witness table accessor for type APIError and conformance APIError();
      swift_allocError();
      *v37 = v41;
      *(v37 + 8) = v42;
      *(v37 + 16) = 22;
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v44);
    }

    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    MEMORY[0x266771550](0xD00000000000001DLL, 0x8000000265F2EA10);
    _print_unlocked<A, B>(_:_:)();
    v28 = v43[0];
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v29 = v28;
    v30 = 2;
  }

  else
  {
    v22 = v9[1];
    *&v43[0] = *v9;
    *(&v43[0] + 1) = v22;

    v23 = [a3 __swift_objectForKeyedSubscript_];
    result = swift_unknownObjectRelease();
    if (!v23)
    {
      *(a4 + 96) = 0;
      *(a4 + 64) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0u;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v43, v44);
    outlined init with copy of Any(v44, v43);
    type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
    if (swift_dynamicCast())
    {
      v12 = v40;
      if (one-time initialization token for supportedTypes != -1)
      {
        swift_once();
      }

      v24 = static FunctionConstantValue.supportedTypes;
      v25 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      if (specialized Set.contains(_:)(*(v8 + v25), v24))
      {
        specialized SGDataTypeStorage.init(type:value:)(*(v8 + v25), v40, v47);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v44);
        if (v4)
        {
          return result;
        }

        v26 = *(v8 + v25);
        v27 = v9[1];
        *&v39[8] = v47[0];
        v39[72] = v48;
        *&v39[56] = v47[3];
        *&v39[40] = v47[2];
        *&v39[24] = v47[1];
        *a4 = *v9;
        *(a4 + 8) = v27;
        *(a4 + 16) = v26;
        v18 = *&v39[16];
        *(a4 + 24) = *v39;
        v19 = *&v39[32];
        v20 = *&v39[48];
        v21 = *&v39[57];
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    MEMORY[0x266771550](0xD000000000000027, 0x8000000265F2E9E0);
    _print_unlocked<A, B>(_:_:)();
    v31 = v43[0];
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v29 = v31;
    v30 = 3;
  }

  *(v29 + 16) = v30;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

uint64_t specialized FunctionConstantValue.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
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

uint64_t specialized FunctionConstantValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11ShaderGraph21FunctionConstantValueV10CodingKeys33_1DECD222B29116A8D7E63F9F487C0906LLOGMd, &_ss22KeyedDecodingContainerVy11ShaderGraph21FunctionConstantValueV10CodingKeys33_1DECD222B29116A8D7E63F9F487C0906LLOGMR);
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FunctionConstantValue.CodingKeys and conformance FunctionConstantValue.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  LOBYTE(v23[0]) = 0;
  v9 = v35;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v20 = v10;
  type metadata accessor for SGDataType(0);
  LOBYTE(v21) = 1;
  lazy protocol witness table accessor for type SGDataType and conformance SGDataType(&lazy protocol witness table cache variable for type SGDataType and conformance SGDataType, &protocol conformance descriptor for SGDataType);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v23[0];
  v28 = 2;
  lazy protocol witness table accessor for type SGDataTypeStorage and conformance SGDataTypeStorage();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v7, v9);
  *&v34[8] = v29;
  *&v34[24] = v30;
  *&v34[40] = v31;
  *&v34[56] = v32;
  v34[72] = v33;
  v13 = v19;
  v14 = v20;
  *&v21 = v20;
  *(&v21 + 1) = v12;
  *&v22[0] = v19;
  *(v22 + 8) = *v34;
  *(&v22[4] + 1) = *&v34[57];
  *(&v22[3] + 8) = *&v34[48];
  *(&v22[2] + 8) = *&v34[32];
  *(&v22[1] + 8) = *&v34[16];
  outlined init with copy of FunctionConstantValue(&v21, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v23[0] = v14;
  v23[1] = v12;
  v23[2] = v13;
  v25 = *&v34[16];
  v26 = *&v34[32];
  v27[0] = *&v34[48];
  *(v27 + 9) = *&v34[57];
  v24 = *v34;
  result = outlined destroy of FunctionConstantValue(v23);
  v16 = v22[4];
  *(a2 + 64) = v22[3];
  *(a2 + 80) = v16;
  *(a2 + 96) = v22[5];
  v17 = v22[0];
  *a2 = v21;
  *(a2 + 16) = v17;
  v18 = v22[2];
  *(a2 + 32) = v22[1];
  *(a2 + 48) = v18;
  return result;
}

unint64_t lazy protocol witness table accessor for type [FunctionConstantValue] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph21FunctionConstantValueVGMd, &_sSay11ShaderGraph21FunctionConstantValueVGMR);
    lazy protocol witness table accessor for type FunctionConstantValue and conformance FunctionConstantValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11ShaderGraph21FunctionConstantValueVGMd, &_sSay11ShaderGraph21FunctionConstantValueVGMR);
    lazy protocol witness table accessor for type FunctionConstantValue and conformance FunctionConstantValue();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [FunctionConstantValue] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FunctionConstantValue and conformance FunctionConstantValue()
{
  result = lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue;
  if (!lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FunctionConstantValue and conformance FunctionConstantValue);
  }

  return result;
}

uint64_t outlined destroy of FunctionConstantValue?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph21FunctionConstantValueVSgMd, &_s11ShaderGraph21FunctionConstantValueVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy97_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for FunctionConstantValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for FunctionConstantValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for NSArray(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SGDataType and conformance SGDataType(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SGDataType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for Range();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = &v36 - v18;
  dispatch thunk of Collection.startIndex.getter();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v11, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v11[*(TupleTypeMetadata2 + 48)], v14, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v11, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v11, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = type metadata accessor for Slice();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence._bounds.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.init(_base:bounds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

double OrderedDictionary.Elements.SubSequence.values.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v10 = *(v2 + 3);
  v14 = v4;
  v15 = *(v2 + 1);
  v5 = type metadata accessor for OrderedDictionary.Values(0, a1[2], a1[3], a1[4]);
  WitnessTable = swift_getWitnessTable();
  MutableCollection<>.subscript.getter(&v10, v5, WitnessTable, &v11);
  v7 = v12;
  result = *&v11;
  v9 = v13;
  *a2 = v11;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.index(forKey:)(uint64_t a1, uint64_t a2)
{
  result = OrderedSet._find(_:)(a1, *v2, v2[1], *(a2 + 16), *(a2 + 32));
  if ((v4 & 1) == 0 && (result < v2[3] || result >= v2[4]))
  {
    return 0;
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence._base.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OrderedDictionary.Elements.SubSequence._base.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  return result;
}

int8x16_t OrderedDictionary.Elements.SubSequence.Iterator.init(_base:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
  *(a2 + 24) = result;
  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.Iterator.next()@<X0>(uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = TupleTypeMetadata2;
  if (v4 >= v5)
  {
    v12 = *(*(TupleTypeMetadata2 - 8) + 56);

    return v12(a2, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    ContiguousArray.subscript.getter();
    ContiguousArray.subscript.getter();
    result = (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    v9 = *(v2 + 32);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 32) = v11;
    }
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
}

int8x16_t protocol witness for Sequence.makeIterator() in conformance OrderedDictionary<A, B>.Elements.SubSequence@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  *(a1 + 24) = result;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance OrderedDictionary<A, B>.Elements.SubSequence(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance OrderedDictionary<A, B>.Elements.SubSequence(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = specialized Collection._copyToContiguousArray()(v1, a1, WitnessTable);

  return v4;
}

Swift::Int __swiftcall OrderedDictionary.Elements.SubSequence.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall OrderedDictionary.Elements.SubSequence.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall OrderedDictionary.Elements.SubSequence.formIndex(after:)(Swift::Int *after)
{
  if (__OFADD__(*after, 1))
  {
    __break(1u);
  }

  else
  {
    ++*after;
  }
}

Swift::Void __swiftcall OrderedDictionary.Elements.SubSequence.formIndex(before:)(Swift::Int *before)
{
  if (__OFSUB__(*before, 1))
  {
    __break(1u);
  }

  else
  {
    --*before;
  }
}

Swift::Int __swiftcall OrderedDictionary.Elements.SubSequence.index(_:offsetBy:)(Swift::Int _, Swift::Int offsetBy)
{
  v2 = __OFADD__(_, offsetBy);
  result = _ + offsetBy;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall OrderedDictionary.Elements.SubSequence.index(_:offsetBy:limitedBy:)(Swift::Int _, Swift::Int offsetBy, Swift::Int limitedBy)
{
  v3 = limitedBy - _;
  if (__OFSUB__(limitedBy, _))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (offsetBy < 1)
  {
    if (v3 > 0 || v3 <= offsetBy)
    {
LABEL_9:
      v4 = __OFADD__(_, offsetBy);
      _ += offsetBy;
      if (!v4)
      {
        LOBYTE(offsetBy) = 0;
        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else if (v3 < 0 || v3 >= offsetBy)
  {
    goto LABEL_9;
  }

  _ = 0;
  LOBYTE(offsetBy) = 1;
LABEL_13:
  result.is_nil = offsetBy;
  result.value = _;
  return result;
}

Swift::Int __swiftcall OrderedDictionary.Elements.SubSequence.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void OrderedDictionary.Elements.SubSequence.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 24) > a3 || *(v4 + 32) <= a3)
  {
    __break(1u);
  }

  else
  {
    ContiguousArray.subscript.getter();

    ContiguousArray.subscript.getter();
  }
}

uint64_t OrderedDictionary.Elements.SubSequence.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (v3[3] > result || v3[4] < a2)
  {
    __break(1u);
  }

  else
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = v3[2];
    *a3 = v5;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = result;
    a3[4] = a2;
  }

  return result;
}

uint64_t OrderedDictionary.Elements.SubSequence.count.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements.SubSequence(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x68uLL);
  }

  v9 = v8;
  *a1 = v8;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v9 + 72) = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  *(v9 + 80) = v13;
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = v14;
  *(v9 + 88) = v14;
  v16 = *a2;
  v17 = *(v3 + 16);
  *v9 = *v3;
  *(v9 + 16) = v17;
  *(v9 + 32) = *(v3 + 32);
  v18 = OrderedDictionary.Elements.SubSequence.subscript.read((v9 + 40), v16, a3);
  v20 = v19;
  *(v9 + 96) = v18;
  (*(*(v11 - 8) + 16))(v15);
  (*(*(v10 - 8) + 16))(v15 + *(TupleTypeMetadata2 + 48), v20, v10);
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements.SubSequence;
}

void protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Elements.SubSequence(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 40;
  (*(*(*a1 + 80) + 8))(*(*a1 + 88), *(*a1 + 72));
  v5 = *(v3 + 88);
  (*(v3 + 96))(v4, a2);
  free(v5);

  free(v3);
}

void (*OrderedDictionary.Elements.SubSequence.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  OrderedDictionary.Elements.SubSequence.subscript.getter(v8, v8 + *(TupleTypeMetadata2 + 48), a2, a3);
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values;
}

double protocol witness for Collection.subscript.getter in conformance OrderedDictionary<A, B>.Elements.SubSequence@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OrderedDictionary.Elements.SubSequence.subscript.getter(*a1, a1[1], v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

__n128 protocol witness for Collection.indices.getter in conformance OrderedDictionary<A, B>.Elements.SubSequence@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance OrderedDictionary<A, B>.Elements.SubSequence()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.< infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for ClosedRange();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary.Elements.SubSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for OrderedDictionary.Elements.SubSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OrderedDictionary.Elements.SubSequence(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for OrderedDictionary.Elements.SubSequence(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OrderedSet.init<A>(uncheckedUniqueElements:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v11 = Array.init<A>(_:)();
  v21 = v11;
  v12 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v13 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v15 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v21, 0, 1, v12, v13, WitnessTable, a4);
  v16 = ContiguousArray.count.getter();
  v17 = 0;
  if (v16 >= 16)
  {

    v17 = v15;
  }

  v18 = OrderedSet.init(_uniqueElements:_:)(v11, v17);

  (*(v8 + 8))(a1, a3);
  return v18;
}

uint64_t OrderedSet.init<A>(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  v18 = type metadata accessor for OrderedSet(0, v16, v17, v17);
  if (v18 == a3)
  {
    (*(v10 + 32))(v15, a1, a3);
    swift_dynamicCast();
    return v32[0];
  }

  if (type metadata accessor for Set() != a3 && type metadata accessor for OrderedSet.SubSequence(0, a2, a4, v19) != a3)
  {
    v32[0] = OrderedSet.init()(a2);
    v32[1] = v20;
    OrderedSet.append<A>(contentsOf:)(a1, v18, a3, a5);
    (*(v10 + 8))(a1, a3);
    return v32[0];
  }

  v21 = *(v10 + 16);
  v21(v12, a1, a3);
  v21(v15, v12, a3);
  v22 = Array.init<A>(_:)();
  v32[0] = v22;
  v23 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v24 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v26 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(v32, 0, 1, v23, v24, WitnessTable, a4);
  v27 = ContiguousArray.count.getter();
  v28 = 0;
  if (v27 >= 16)
  {

    v28 = v26;
  }

  v29 = OrderedSet.init(_uniqueElements:_:)(v22, v28);

  v30 = *(v10 + 8);
  v30(a1, a3);
  v30(v12, a3);
  return v29;
}

uint64_t OrderedSet.init(_:)(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, uint64_t a5, uint64_t a6)
{
  specialized OrderedSet.SubSequence._slice.getter(a1, a2, a3, a4);
  v19[1] = v7;
  v19[2] = v8;
  v19[3] = v9;
  type metadata accessor for ArraySlice();
  swift_unknownObjectRetain_n();
  swift_getWitnessTable();
  v10 = Array.init<A>(_:)();
  v19[0] = v10;
  v11 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v12 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v14 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(v19, 0, 1, v11, v12, WitnessTable, a6);
  v15 = ContiguousArray.count.getter();
  v16 = 0;
  if (v15 >= 16)
  {

    v16 = v14;
  }

  v17 = OrderedSet.init(_uniqueElements:_:)(v10, v16);

  swift_unknownObjectRelease();

  return v17;
}

uint64_t OrderedSet.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Set();

  swift_getWitnessTable();
  v4 = Array.init<A>(_:)();
  v13 = v4;
  v5 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v6 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  v8 = static _HashTable.create<A>(uncheckedUniqueElements:scale:reservedScale:)(&v13, 0, 1, v5, v6, WitnessTable, a3);
  v9 = ContiguousArray.count.getter();
  v10 = 0;
  if (v9 >= 16)
  {

    v10 = v8;
  }

  v11 = OrderedSet.init(_uniqueElements:_:)(v4, v10);

  return v11;
}

uint64_t OrderedSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized OrderedSet.init<A>(_:)(a1, a2, a3, a4);

  return v4;
}

uint64_t OrderedSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a2;
  v9 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for PartialRangeFrom();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v57 = &v52 - v12;
  v65 = swift_getAssociatedTypeWitness();
  v60 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v52 - v13;
  v14 = type metadata accessor for PartialRangeUpTo();
  v62 = *(v14 - 8);
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v61 = &v52 - v15;
  v66 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  v26 = specialized default argument 1 of OrderedSet._extractSubset(using:extraCapacity:)();
  v70 = a4;
  v69 = static _HashTable.create<A>(untilFirstDuplicateIn:scale:reservedScale:)(v25, a1, 0, 1, v26, a3, a5, a4);
  v27 = a1;
  v28 = v9;
  dispatch thunk of Collection.endIndex.getter();
  AssociatedConformanceWitness = *(AssociatedConformanceWitness + 8);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = v19;
  v30 = v19 + 8;
  v31 = *(v19 + 8);
  v32 = v22;
  v33 = v30;
  v31(v32, AssociatedTypeWitness);
  if (a1)
  {
    v34 = v66;
    (*(v66 + 16))(v18, v27, a3);
    v35 = Array.init<A>(_:)();
    v36 = OrderedSet.init(_uniqueElements:_:)(v35, v69);
    (*(v34 + 8))(v27, a3);
    v31(v25, AssociatedTypeWitness);
    return v36;
  }

  v53 = v31;
  v54 = v33;
  v55 = v28;
  v56 = v27;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v38 = v61;
  v52 = *(v29 + 16);
  v52(v61, v25, AssociatedTypeWitness);
  v39 = v63;
  swift_getWitnessTable();
  v40 = v64;
  v41 = v56;
  Collection.subscript.getter();
  (*(v62 + 8))(v38, v39);
  v42 = a3;
  v43 = swift_getAssociatedConformanceWitness();
  v44 = v67;
  v63 = *(v43 + 8);
  v45 = Array.init<A>(_:)();
  v71 = OrderedSet.init(_uniqueElements:_:)(v45, v69);
  v72 = v46;

  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v47 = v57;
  v52(v57, v25, AssociatedTypeWitness);
  v48 = v59;
  swift_getWitnessTable();
  Collection.subscript.getter();
  (*(v58 + 8))(v47, v48);
  v50 = type metadata accessor for OrderedSet(0, v44, v70, v49);
  v51 = v65;
  OrderedSet.append<A>(contentsOf:)(v40, v50, v65, v63);

  (*(v66 + 8))(v41, v42);
  (*(v60 + 8))(v40, v51);
  v53(v25, AssociatedTypeWitness);
  return v71;
}

uint64_t specialized OrderedSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  Array.init<A>(_:)();
  type metadata accessor for OrderedSet(0, a2, a4, v6);
  OrderedSet._regenerateHashTable()();
  return 0;
}

uint64_t MetalDataType.referenceTo(withAddressSpace:)(uint64_t a1)
{
  v2 = a1;
  v3 = (*(*v1 + 200))();
  type metadata accessor for MetalDataType.Reference();
  swift_allocObject();

  v5 = specialized MetalDataType.Reference.init(to:isConst:addressSpace:)(v4, v3 & 1, v2);

  return v5;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph13MetalDataTypeC_ypSgtSg_G_s6UInt32Vs5NeverOTg504_s11e7Graph13ghi58C4EnumC4note8typeName5typesAESSSg_SSSDySSAC_ypSgtSgGtcfcs6J8VAKXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    v22 = *(a1 + 36);
    outlined init with copy of (MetalDataType, Any?)?(*(a1 + 56) + 40 * v6, v25);
    outlined init with copy of (MetalDataType, Any?)?(v25, &v23);
    if (v23)
    {
      v11 = *(v23 + 56);

      outlined destroy of [Input](&v24, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      outlined destroy of [Input](&v23, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
      v11 = 0;
    }

    result = outlined destroy of [Input](v25, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
    v26 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v2 = v26;
    }

    *(v2 + 16) = v13 + 1;
    *(v2 + 4 * v13 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_25;
    }

    v4 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v10);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v21;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v9 = v21;
      v18 = (a1 + 72 + 8 * v10);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = outlined consume of [String : String].Index._Variant(v6, v22, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v6, v22, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph13MetalDataTypeC_ypSgtSg_G_s6UInt32Vs5NeverOTg504_s11e7Graph13ghi58C4EnumC4note8typeName5typesAESSSg_SSSDySSAC_ypSgtSgGtcfcs6J9VAKXEfU0_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    v22 = *(a1 + 36);
    outlined init with copy of (MetalDataType, Any?)?(*(a1 + 56) + 40 * v6, v25);
    outlined init with copy of (MetalDataType, Any?)?(v25, &v23);
    if (v23)
    {
      v11 = *(v23 + 60);

      outlined destroy of [Input](&v24, &_sypSgMd, &_sypSgMR);
    }

    else
    {
      outlined destroy of [Input](&v23, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
      v11 = 0;
    }

    result = outlined destroy of [Input](v25, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMd, &_s11ShaderGraph13MetalDataTypeC_ypSgtSgMR);
    v26 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      v2 = v26;
    }

    *(v2 + 16) = v13 + 1;
    *(v2 + 4 * v13 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_25;
    }

    v4 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v10);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v21;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v9 = v21;
      v18 = (a1 + 72 + 8 * v10);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = outlined consume of [String : String].Index._Variant(v6, v22, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v6, v22, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t *MetalDataType.sampler.unsafeMutableAddressor()
{
  if (one-time initialization token for sampler != -1)
  {
    swift_once();
  }

  return &static MetalDataType.sampler;
}

uint64_t *MetalDataType.void.unsafeMutableAddressor()
{
  if (one-time initialization token for void != -1)
  {
    swift_once();
  }

  return &static MetalDataType.void;
}

uint64_t *MetalDataType.texture2d_float.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_float;
}

uint64_t *MetalDataType.texture2d_half.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_half;
}

uint64_t *MetalDataType.texture2d_int.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_int != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_int;
}

uint64_t *MetalDataType.texture2darray_float.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_float;
}

uint64_t *MetalDataType.texture2darray_half.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_half;
}

uint64_t *MetalDataType.texture2darray_int.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_int != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_int;
}

uint64_t *MetalDataType.texturecube_float.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecube_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texturecube_float;
}

uint64_t *MetalDataType.texturecube_half.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecube_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texturecube_half;
}

uint64_t *MetalDataType.texture3d_float.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_float;
}

uint64_t *MetalDataType.texture3d_half.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_half;
}

uint64_t *MetalDataType.texture3d_int.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_int != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_int;
}

Swift::String_optional __swiftcall MetalDataType.textureBaseTypeName()()
{
  if (one-time initialization token for texture2d_int != -1)
  {
    swift_once();
  }

  v0 = 0xE900000000000064;
  v1 = *(*static MetalDataType.texture2d_int + 128);

  LOBYTE(v1) = v1();

  if (v1)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  v2 = *(*static MetalDataType.texture2d_half + 128);

  LOBYTE(v2) = v2();

  if (v2)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_uint != -1)
  {
    swift_once();
  }

  v3 = *(*static MetalDataType.texture2d_uint + 128);

  LOBYTE(v3) = v3();

  if (v3)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  v4 = *(*static MetalDataType.texture2d_float + 128);

  LOBYTE(v4) = v4();

  if (v4)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_short != -1)
  {
    swift_once();
  }

  v5 = *(*static MetalDataType.texture2d_short + 128);

  LOBYTE(v5) = v5();

  if (v5)
  {
    goto LABEL_19;
  }

  if (one-time initialization token for texture2d_ushort != -1)
  {
    swift_once();
  }

  v6 = *(*static MetalDataType.texture2d_ushort + 128);

  LOBYTE(v6) = v6();

  if (v6)
  {
LABEL_19:
    v7 = 0x3265727574786574;
    goto LABEL_20;
  }

  if (one-time initialization token for texture3d_int != -1)
  {
    swift_once();
  }

  v9 = 0x3365727574786574;
  v10 = *(*static MetalDataType.texture3d_int + 128);

  LOBYTE(v10) = v10();

  if (v10)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  v11 = *(*static MetalDataType.texture3d_half + 128);

  LOBYTE(v11) = v11();

  if (v11)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for texture3d_uint != -1)
  {
    swift_once();
  }

  v12 = *(*static MetalDataType.texture3d_uint + 128);

  LOBYTE(v12) = v12();

  if (v12)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  v13 = *(*static MetalDataType.texture3d_float + 128);

  LOBYTE(v13) = v13();

  if (v13)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for texture3d_short != -1)
  {
    swift_once();
  }

  v14 = *(*static MetalDataType.texture3d_short + 128);

  LOBYTE(v14) = v14();

  if (v14)
  {
LABEL_36:
    v7 = v9;
    goto LABEL_20;
  }

  if (one-time initialization token for texture3d_ushort != -1)
  {
    swift_once();
  }

  v15 = *(*static MetalDataType.texture3d_ushort + 128);

  LOBYTE(v15) = v15();

  v7 = 0x3365727574786574;
  if ((v15 & 1) == 0)
  {
    if (one-time initialization token for texturecube_half != -1)
    {
      swift_once();
    }

    v0 = 0xEB00000000656275;
    v9 = 0x6365727574786574;
    v16 = *(*static MetalDataType.texturecube_half + 128);

    LOBYTE(v16) = v16();

    if (v16)
    {
      goto LABEL_36;
    }

    if (one-time initialization token for texturecube_float != -1)
    {
      swift_once();
    }

    v17 = *(*static MetalDataType.texturecube_float + 128);

    LOBYTE(v17) = v17();

    v7 = 0x6365727574786574;
    if ((v17 & 1) == 0)
    {
      if (one-time initialization token for depth2d_half != -1)
      {
        swift_once();
      }

      v18 = *(*static MetalDataType.depth2d_half + 128);

      LOBYTE(v18) = v18();

      if (v18)
      {
        goto LABEL_52;
      }

      if (one-time initialization token for depth2d_float != -1)
      {
        swift_once();
      }

      v19 = *(*static MetalDataType.depth2d_float + 128);

      LOBYTE(v19) = v19();

      if (v19)
      {
LABEL_52:
        v0 = 0xE700000000000000;
        v7 = 0x64326874706564;
        goto LABEL_20;
      }

      if (one-time initialization token for texture2darray_half != -1)
      {
        swift_once();
      }

      v20 = *(*static MetalDataType.texture2darray_half + 128);

      LOBYTE(v20) = v20();

      if ((v20 & 1) == 0)
      {
        if (one-time initialization token for texture2darray_float != -1)
        {
          swift_once();
        }

        v21 = *(*static MetalDataType.texture2darray_float + 128);

        v22 = v21();

        if ((v22 & 1) == 0)
        {
          v7 = 0;
          v0 = 0;
          goto LABEL_20;
        }
      }

      v0 = 0xEE00796172726164;
      goto LABEL_19;
    }
  }

LABEL_20:
  v8 = v0;
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

void *calculateOffsets(for:)(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 9;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = *(v3 - 5);
    v6 = *(v3 - 4);
    v8 = *(v3 - 3);
    v9 = *(v3 - 2);
    v10 = *(v3 - 8);
    v11 = *(v8 + 60);
    v24 = *v3;
    if (!v11)
    {
      break;
    }

    v12 = v2 % v11;
    if (!(v2 % v11))
    {
      goto LABEL_15;
    }

    v13 = v11 >= v12;
    v14 = v11 - v12;
    if (!v13)
    {
      goto LABEL_24;
    }

    v13 = __CFADD__(v2, v14);
    v2 += v14;
    if (v13)
    {
      goto LABEL_25;
    }

    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v22 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v16 = v4[2];
    v15 = v4[3];
    if (v16 >= v15 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v4);
    }

    v4[2] = v16 + 1;
    v5 = &v4[7 * v16];
    v5[4] = v22;
    v5[5] = v6;
    v5[6] = v8;
    v5[7] = v9;
    *(v5 + 64) = v10;
    v5[9] = v24;
    *(v5 + 20) = v2;

LABEL_4:
    v3 += 6;
    if (!--v1)
    {
      return v4;
    }
  }

  if (v2)
  {
    goto LABEL_26;
  }

LABEL_15:
  v23 = *(v3 - 8);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v17 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
  }

  v19 = v4[2];
  v18 = v4[3];
  if (v19 >= v18 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v4);
  }

  v4[2] = v19 + 1;
  v20 = &v4[7 * v19];
  v20[4] = v17;
  v20[5] = v6;
  v20[6] = v8;
  v20[7] = v9;
  *(v20 + 64) = v23;
  v20[9] = v24;
  *(v20 + 20) = v2;
  v21 = *(v8 + 56);

  v13 = __CFADD__(v2, v21);
  v2 += v21;
  if (!v13)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t MetalDataType.metalTypeName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MetalDataType.note.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetalDataType.isConst.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

void *MetalDataType.offsetList.getter()
{
  v1 = (*(*v0 + 88))();
  v2 = calculateOffsets(for:)(v1);

  return v2;
}

uint64_t MetalDataType.isEqual(to:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  result = swift_dynamicCastClass();
  if (result)
  {
    if (v2 == *(result + 24) && v3 == *(result + 32))
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t MetalDataType.description.getter()
{
  MEMORY[0x266771550](*(v0 + 24), *(v0 + 32));
  MEMORY[0x266771550](41, 0xE100000000000000);
  return 0x283A6C6174656DLL;
}

uint64_t MetalDataType.__ivar_destroyer()
{
}

uint64_t MetalDataType.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MetalDataType.MTLTextureType.getter()
{
  if (one-time initialization token for texture2d_int != -1)
  {
    swift_once();
  }

  v1 = *(*static MetalDataType.texture2d_int + 128);

  LOBYTE(v1) = v1(v0);

  if (v1)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  v2 = *(*static MetalDataType.texture2d_half + 128);

  LOBYTE(v2) = v2(v0);

  if (v2)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_uint != -1)
  {
    swift_once();
  }

  v3 = *(*static MetalDataType.texture2d_uint + 128);

  LOBYTE(v3) = v3(v0);

  if (v3)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  v4 = *(*static MetalDataType.texture2d_float + 128);

  LOBYTE(v4) = v4(v0);

  if (v4)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_short != -1)
  {
    swift_once();
  }

  v5 = *(*static MetalDataType.texture2d_short + 128);

  LOBYTE(v5) = v5(v0);

  if (v5)
  {
    return 2;
  }

  if (one-time initialization token for texture2d_ushort != -1)
  {
    swift_once();
  }

  v6 = *(*static MetalDataType.texture2d_ushort + 128);

  LOBYTE(v6) = v6(v0);

  if (v6)
  {
    return 2;
  }

  if (one-time initialization token for texture3d_int != -1)
  {
    swift_once();
  }

  v8 = *(*static MetalDataType.texture3d_int + 128);

  LOBYTE(v8) = v8(v0);

  if (v8)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  v9 = *(*static MetalDataType.texture3d_half + 128);

  LOBYTE(v9) = v9(v0);

  if (v9)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_uint != -1)
  {
    swift_once();
  }

  v10 = *(*static MetalDataType.texture3d_uint + 128);

  LOBYTE(v10) = v10(v0);

  if (v10)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  v11 = *(*static MetalDataType.texture3d_float + 128);

  LOBYTE(v11) = v11(v0);

  if (v11)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_short != -1)
  {
    swift_once();
  }

  v12 = *(*static MetalDataType.texture3d_short + 128);

  LOBYTE(v12) = v12(v0);

  if (v12)
  {
    return 7;
  }

  if (one-time initialization token for texture3d_ushort != -1)
  {
    swift_once();
  }

  v13 = *(*static MetalDataType.texture3d_ushort + 128);

  LOBYTE(v13) = v13(v0);

  if (v13)
  {
    return 7;
  }

  if (one-time initialization token for texture2darray_int != -1)
  {
    swift_once();
  }

  v14 = *(*static MetalDataType.texture2darray_int + 128);

  LOBYTE(v14) = v14(v0);

  if (v14)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_half != -1)
  {
    swift_once();
  }

  v15 = *(*static MetalDataType.texture2darray_half + 128);

  LOBYTE(v15) = v15(v0);

  if (v15)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_uint != -1)
  {
    swift_once();
  }

  v16 = *(*static MetalDataType.texture2darray_uint + 128);

  LOBYTE(v16) = v16(v0);

  if (v16)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  v17 = *(*static MetalDataType.texture2darray_float + 128);

  LOBYTE(v17) = v17(v0);

  if (v17)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_short != -1)
  {
    swift_once();
  }

  v18 = *(*static MetalDataType.texture2darray_short + 128);

  LOBYTE(v18) = v18(v0);

  if (v18)
  {
    return 3;
  }

  if (one-time initialization token for texture2darray_ushort != -1)
  {
    swift_once();
  }

  v19 = *(*static MetalDataType.texture2darray_ushort + 128);

  LOBYTE(v19) = v19(v0);

  if (v19)
  {
    return 3;
  }

  if (one-time initialization token for texturecube_half != -1)
  {
    swift_once();
  }

  v20 = *(*static MetalDataType.texturecube_half + 128);

  LOBYTE(v20) = v20(v0);

  if (v20)
  {
    return 5;
  }

  if (one-time initialization token for texturecube_float != -1)
  {
    swift_once();
  }

  v21 = *(*static MetalDataType.texturecube_float + 128);

  v22 = v21(v0);

  if (v22)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t *MetalDataType.texture2d_uint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_uint != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_uint;
}

uint64_t *MetalDataType.texture2d_short.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_short != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_short;
}

uint64_t *MetalDataType.texture2d_ushort.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2d_ushort != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2d_ushort;
}

uint64_t *MetalDataType.texture3d_uint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_uint != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_uint;
}

uint64_t *MetalDataType.texture3d_short.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_short != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_short;
}

uint64_t *MetalDataType.texture3d_ushort.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3d_ushort != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture3d_ushort;
}

uint64_t *MetalDataType.texture2darray_uint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_uint != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_uint;
}

uint64_t *MetalDataType.texture2darray_short.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_short != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_short;
}

uint64_t *MetalDataType.texture2darray_ushort.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darray_ushort != -1)
  {
    swift_once();
  }

  return &static MetalDataType.texture2darray_ushort;
}

uint64_t MetalDataType.textureElementType.getter()
{
  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  v1 = *(*static MetalDataType.texture2d_half + 128);

  LOBYTE(v1) = v1(v0);

  if (v1)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  v2 = *(*static MetalDataType.texture3d_half + 128);

  LOBYTE(v2) = v2(v0);

  if (v2)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for texture2darray_half != -1)
  {
    swift_once();
  }

  v3 = *(*static MetalDataType.texture2darray_half + 128);

  LOBYTE(v3) = v3(v0);

  if (v3)
  {
    goto LABEL_13;
  }

  if (one-time initialization token for texturecube_half != -1)
  {
    swift_once();
  }

  v4 = *(*static MetalDataType.texturecube_half + 128);

  LOBYTE(v4) = v4(v0);

  if (v4)
  {
LABEL_13:
    if (one-time initialization token for half == -1)
    {
    }

LABEL_30:
    swift_once();
  }

  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  v6 = *(*static MetalDataType.texture2d_float + 128);

  LOBYTE(v6) = v6(v0);

  if (v6)
  {
    goto LABEL_27;
  }

  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  v7 = *(*static MetalDataType.texture3d_float + 128);

  LOBYTE(v7) = v7(v0);

  if (v7)
  {
    goto LABEL_27;
  }

  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  v8 = *(*static MetalDataType.texture2darray_float + 128);

  LOBYTE(v8) = v8(v0);

  if (v8)
  {
    goto LABEL_27;
  }

  if (one-time initialization token for texturecube_float != -1)
  {
    swift_once();
  }

  v9 = *(*static MetalDataType.texturecube_float + 128);

  v10 = v9(v0);

  if (v10)
  {
LABEL_27:
    if (one-time initialization token for float == -1)
    {
    }

    goto LABEL_30;
  }

  return 0;
}

uint64_t *MetalDataType.half.unsafeMutableAddressor()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half;
}

uint64_t *MetalDataType.float.unsafeMutableAddressor()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float;
}

uint64_t MetalDataType.MTLDataType.getter()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 3;
  }

  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 4;
  }

  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 5;
  }

  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 6;
  }

  if (one-time initialization token for float2x2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 7;
  }

  if (one-time initialization token for float2x3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 8;
  }

  if (one-time initialization token for float2x4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 9;
  }

  if (one-time initialization token for float3x2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 10;
  }

  if (one-time initialization token for float3x3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 11;
  }

  if (one-time initialization token for float3x4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 12;
  }

  if (one-time initialization token for float4x2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 13;
  }

  if (one-time initialization token for float4x3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 14;
  }

  if (one-time initialization token for float4x4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 15;
  }

  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 16;
  }

  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 17;
  }

  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 18;
  }

  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 19;
  }

  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 5;
  }

  if (one-time initialization token for color4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 6;
  }

  if (one-time initialization token for int32 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 29;
  }

  if (one-time initialization token for int2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 30;
  }

  if (one-time initialization token for int3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 31;
  }

  if (one-time initialization token for int4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 32;
  }

  if (one-time initialization token for uint32 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 33;
  }

  if (one-time initialization token for uint2 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 34;
  }

  if (one-time initialization token for uint3 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 35;
  }

  if (one-time initialization token for uint4 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 36;
  }

  if (one-time initialization token for int16 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 37;
  }

  if (one-time initialization token for uint16 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 41;
  }

  if (one-time initialization token for int8 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 45;
  }

  if (one-time initialization token for uint8 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 49;
  }

  if (one-time initialization token for BOOL != -1)
  {
    swift_once();
  }

  v2 = *(*static MetalDataType.BOOL + 128);

  LOBYTE(v2) = v2(v0);

  if (v2)
  {
    return 53;
  }

  if (one-time initialization token for texture2d_int != -1)
  {
    swift_once();
  }

  v3 = *(*static MetalDataType.texture2d_int + 128);

  LOBYTE(v3) = v3(v0);

  if (v3)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_uint != -1)
  {
    swift_once();
  }

  v4 = *(*static MetalDataType.texture2d_uint + 128);

  LOBYTE(v4) = v4(v0);

  if (v4)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_short != -1)
  {
    swift_once();
  }

  v5 = *(*static MetalDataType.texture2d_short + 128);

  LOBYTE(v5) = v5(v0);

  if (v5)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_ushort != -1)
  {
    swift_once();
  }

  v6 = *(*static MetalDataType.texture2d_ushort + 128);

  LOBYTE(v6) = v6(v0);

  if (v6)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_half != -1)
  {
    swift_once();
  }

  v7 = *(*static MetalDataType.texture2d_half + 128);

  LOBYTE(v7) = v7(v0);

  if (v7)
  {
    return 58;
  }

  if (one-time initialization token for texture2d_float != -1)
  {
    swift_once();
  }

  v8 = *(*static MetalDataType.texture2d_float + 128);

  LOBYTE(v8) = v8(v0);

  if (v8)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_int != -1)
  {
    swift_once();
  }

  v9 = *(*static MetalDataType.texture2darray_int + 128);

  LOBYTE(v9) = v9(v0);

  if (v9)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_uint != -1)
  {
    swift_once();
  }

  v10 = *(*static MetalDataType.texture2darray_uint + 128);

  LOBYTE(v10) = v10(v0);

  if (v10)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_short != -1)
  {
    swift_once();
  }

  v11 = *(*static MetalDataType.texture2darray_short + 128);

  LOBYTE(v11) = v11(v0);

  if (v11)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_ushort != -1)
  {
    swift_once();
  }

  v12 = *(*static MetalDataType.texture2darray_ushort + 128);

  LOBYTE(v12) = v12(v0);

  if (v12)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_half != -1)
  {
    swift_once();
  }

  v13 = *(*static MetalDataType.texture2darray_half + 128);

  LOBYTE(v13) = v13(v0);

  if (v13)
  {
    return 58;
  }

  if (one-time initialization token for texture2darray_float != -1)
  {
    swift_once();
  }

  v14 = *(*static MetalDataType.texture2darray_float + 128);

  LOBYTE(v14) = v14(v0);

  if (v14)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_int != -1)
  {
    swift_once();
  }

  v15 = *(*static MetalDataType.texture3d_int + 128);

  LOBYTE(v15) = v15(v0);

  if (v15)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_uint != -1)
  {
    swift_once();
  }

  v16 = *(*static MetalDataType.texture3d_uint + 128);

  LOBYTE(v16) = v16(v0);

  if (v16)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_short != -1)
  {
    swift_once();
  }

  v17 = *(*static MetalDataType.texture3d_short + 128);

  LOBYTE(v17) = v17(v0);

  if (v17)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_ushort != -1)
  {
    swift_once();
  }

  v18 = *(*static MetalDataType.texture3d_ushort + 128);

  LOBYTE(v18) = v18(v0);

  if (v18)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_half != -1)
  {
    swift_once();
  }

  v19 = *(*static MetalDataType.texture3d_half + 128);

  LOBYTE(v19) = v19(v0);

  if (v19)
  {
    return 58;
  }

  if (one-time initialization token for texture3d_float != -1)
  {
    swift_once();
  }

  v20 = *(*static MetalDataType.texture3d_float + 128);

  LOBYTE(v20) = v20(v0);

  if (v20)
  {
    return 58;
  }

  if (one-time initialization token for texturecube_half != -1)
  {
    swift_once();
  }

  v21 = *(*static MetalDataType.texturecube_half + 128);

  LOBYTE(v21) = v21(v0);

  if (v21)
  {
    return 58;
  }

  if (one-time initialization token for texturecube_float != -1)
  {
    swift_once();
  }

  v22 = *(*static MetalDataType.texturecube_float + 128);

  LOBYTE(v22) = v22(v0);

  if (v22)
  {
    return 58;
  }

  if (one-time initialization token for int64 != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v0))
  {
    return 81;
  }

  else
  {
    return 0;
  }
}

uint64_t *MetalDataType.float2.unsafeMutableAddressor()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float2;
}

uint64_t *MetalDataType.float3.unsafeMutableAddressor()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float3;
}

uint64_t *MetalDataType.float4.unsafeMutableAddressor()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float4;
}

uint64_t *MetalDataType.float2x2.unsafeMutableAddressor()
{
  if (one-time initialization token for float2x2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float2x2;
}

uint64_t *MetalDataType.float2x3.unsafeMutableAddressor()
{
  if (one-time initialization token for float2x3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float2x3;
}

uint64_t *MetalDataType.float2x4.unsafeMutableAddressor()
{
  if (one-time initialization token for float2x4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float2x4;
}

uint64_t *MetalDataType.float3x2.unsafeMutableAddressor()
{
  if (one-time initialization token for float3x2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float3x2;
}

uint64_t *MetalDataType.float3x3.unsafeMutableAddressor()
{
  if (one-time initialization token for float3x3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float3x3;
}

uint64_t *MetalDataType.float3x4.unsafeMutableAddressor()
{
  if (one-time initialization token for float3x4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float3x4;
}

uint64_t *MetalDataType.float4x2.unsafeMutableAddressor()
{
  if (one-time initialization token for float4x2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float4x2;
}

uint64_t *MetalDataType.float4x3.unsafeMutableAddressor()
{
  if (one-time initialization token for float4x3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float4x3;
}

uint64_t *MetalDataType.float4x4.unsafeMutableAddressor()
{
  if (one-time initialization token for float4x4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.float4x4;
}

uint64_t *MetalDataType.half2.unsafeMutableAddressor()
{
  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half2;
}

uint64_t *MetalDataType.half3.unsafeMutableAddressor()
{
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half3;
}

uint64_t *MetalDataType.half4.unsafeMutableAddressor()
{
  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.half4;
}

uint64_t *MetalDataType.color3.unsafeMutableAddressor()
{
  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.color3;
}

uint64_t *MetalDataType.color4.unsafeMutableAddressor()
{
  if (one-time initialization token for color4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.color4;
}

uint64_t *MetalDataType.int2.unsafeMutableAddressor()
{
  if (one-time initialization token for int2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int2;
}

uint64_t *MetalDataType.int3.unsafeMutableAddressor()
{
  if (one-time initialization token for int3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int3;
}

uint64_t *MetalDataType.int4.unsafeMutableAddressor()
{
  if (one-time initialization token for int4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.int4;
}

uint64_t *MetalDataType.uint2.unsafeMutableAddressor()
{
  if (one-time initialization token for uint2 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint2;
}

uint64_t *MetalDataType.uint3.unsafeMutableAddressor()
{
  if (one-time initialization token for uint3 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint3;
}

uint64_t *MetalDataType.uint4.unsafeMutableAddressor()
{
  if (one-time initialization token for uint4 != -1)
  {
    swift_once();
  }

  return &static MetalDataType.uint4;
}

uint64_t *MetalDataType.BOOL.unsafeMutableAddressor()
{
  if (one-time initialization token for BOOL != -1)
  {
    swift_once();
  }

  return &static MetalDataType.BOOL;
}

uint64_t MetalDataType.Struct.__allocating_init(note:typeName:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  MetalDataType.Struct.init(note:typeName:fields:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t MetalDataType.Struct.init(note:typeName:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 64) = 0;
  v8 = calculateOffsets(for:)(a5);
  v9 = v8[2];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = &v8[7 * v9];
  v11 = *(v10 - 1);
  v12 = *(v10 + 6);

  v13 = *(v11 + 56);

  v14 = v12 + v13;
  if (__CFADD__(v12, v13))
  {
    __break(1u);
LABEL_5:

    v14 = 0;
  }

  *(v6 + 56) = v14;
  v15 = a5[2];
  if (v15)
  {
    v34 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v16 = v34;
    v17 = *(v34 + 16);
    v18 = a5 + 6;
    do
    {
      v19 = *(*v18 + 60);
      v35 = v16;
      v20 = *(v16 + 24);
      v21 = v17 + 1;
      if (v17 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v17 + 1, 1);
        v16 = v35;
      }

      *(v16 + 16) = v21;
      *(v16 + 4 * v17 + 32) = v19;
      v18 += 6;
      ++v17;
      --v15;
    }

    while (v15);
LABEL_13:
    v22 = *(v16 + 32);
    v23 = v21 - 1;
    if (v21 != 1)
    {
      if (v21 < 9)
      {
        v24 = 1;
        goto LABEL_19;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFF8 | 1;
      v25 = vdupq_n_s32(v22);
      v26 = (v16 + 52);
      v27 = v23 & 0xFFFFFFFFFFFFFFF8;
      v28 = v25;
      do
      {
        v25 = vmaxq_u32(v25, v26[-1]);
        v28 = vmaxq_u32(v28, *v26);
        v26 += 2;
        v27 -= 8;
      }

      while (v27);
      v22 = vmaxvq_u32(vmaxq_u32(v25, v28));
      if (v23 != (v23 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_19:
        v29 = v21 - v24;
        v30 = 4 * v24 + 32;
        do
        {
          if (v22 <= *(v16 + v30))
          {
            v22 = *(v16 + v30);
          }

          v30 += 4;
          --v29;
        }

        while (v29);
      }
    }

    v31 = 0;
    goto LABEL_24;
  }

  v16 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 16);
  if (v21)
  {
    goto LABEL_13;
  }

  v22 = 0;
  v31 = 1;
LABEL_24:

  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v22;
  }

  *(v6 + 60) = v32;
  *(v6 + 16) = a5;
  return v6;
}

uint64_t MetalDataType.Vector.__allocating_init(typeName:componentType:componentCount:size:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  result = swift_allocObject();
  *(result + 72) = a3;
  *(result + 80) = a4;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
    if (a4)
    {
      v21 = a5;
      v22 = a6;
      v23 = result;
      v24 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
      v14 = 0;
      v15 = v24;
      v16 = *(v24 + 16);
      v17 = 48 * v16 + 72;
      do
      {
        v18 = v13;
        v19 = *(v24 + 24);

        if (v16 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v16 + 1, 1);
        }

        *(v24 + 16) = v16 + 1;
        v20 = (v24 + v17);
        *v20 = v14;
        *(v20 - 5) = 0;
        *(v20 - 4) = 0xE000000000000000;
        *(v20 - 3) = a3;
        *(v20 - 2) = v18;
        v13 = v18;
        v17 += 48;
        ++v16;
        ++v14;
        *(v20 - 8) = 1;
      }

      while (a4 != v14);

      result = v23;
      a5 = v21;
      a6 = v22;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    *(result + 64) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 24) = a1;
    *(result + 32) = a2;
    *(result + 56) = a5;
    *(result + 60) = a6;
    *(result + 16) = v15;
  }

  return result;
}

uint64_t MetalDataType.Vector.init(typeName:componentType:componentCount:size:alignment:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(v6 + 72) = a3;
  *(v6 + 80) = a4;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    if (a4)
    {
      v16 = a2;
      v17 = result;
      v18 = a5;
      v19 = a6;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
      v10 = 0;
      v11 = v21;
      v12 = *(v21 + 16);
      v13 = 48 * v12 + 72;
      do
      {
        v14 = *(v21 + 24);

        if (v12 >= v14 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v12 + 1, 1);
        }

        *(v21 + 16) = v12 + 1;
        v15 = (v21 + v13);
        *v15 = v10;
        *(v15 - 5) = 0;
        *(v15 - 4) = 0xE000000000000000;
        *(v15 - 3) = a3;
        *(v15 - 2) = v8;
        v13 += 48;
        ++v12;
        ++v10;
        *(v15 - 8) = 1;
      }

      while (a4 != v10);

      v6 = v20;
      a5 = v18;
      a6 = v19;
      a2 = v16;
      result = v17;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    *(v6 + 64) = 0;
    *(v6 + 40) = 0;
    *(v6 + 48) = 0;
    *(v6 + 24) = result;
    *(v6 + 32) = a2;
    *(v6 + 56) = a5;
    *(v6 + 60) = a6;
    *(v6 + 16) = v11;
    return v6;
  }

  return result;
}

uint64_t MetalDataType.Number.__allocating_init(note:typeName:size:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  result = swift_allocObject();
  *(result + 32) = a4;
  *(result + 40) = a1;
  *(result + 48) = a2;
  *(result + 64) = 0;
  *(result + 56) = a5;
  *(result + 60) = a6;
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = a3;
  return result;
}

uint64_t MetalDataType.Number.init(note:typeName:size:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *(v6 + 32) = a4;
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 64) = 0;
  *(v6 + 56) = a5;
  *(v6 + 60) = a6;
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(v6 + 24) = a3;
  return v6;
}

void *MetalDataType.deinit()
{

  return v0;
}

uint64_t MetalDataType.Struct.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t MetalDataType.Enum.__allocating_init(note:typeName:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  MetalDataType.Enum.init(note:typeName:types:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t MetalDataType.Enum.init(note:typeName:types:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a5;

  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph13MetalDataTypeC_ypSgtSg_G_s6UInt32Vs5NeverOTg504_s11e7Graph13ghi58C4EnumC4note8typeName5typesAESSSg_SSSDySSAC_ypSgtSgGtcfcs6J8VAKXEfU_Tf1cn_n(a5);
  v12 = *(v11 + 16);
  if (!v12)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v13 = *(v11 + 32);
  v14 = v12 - 1;
  if (v12 == 1)
  {
    goto LABEL_13;
  }

  if (v12 >= 9)
  {
    v15 = v14 & 0xFFFFFFFFFFFFFFF8 | 1;
    v16 = vdupq_n_s32(v13);
    v17 = (v11 + 52);
    v18 = v14 & 0xFFFFFFFFFFFFFFF8;
    v19 = v16;
    do
    {
      v16 = vmaxq_u32(v16, v17[-1]);
      v19 = vmaxq_u32(v19, *v17);
      v17 += 2;
      v18 -= 8;
    }

    while (v18);
    v13 = vmaxvq_u32(vmaxq_u32(v16, v19));
    if (v14 == (v14 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 1;
  }

  v20 = v12 - v15;
  v21 = (v11 + 4 * v15 + 32);
  do
  {
    v23 = *v21++;
    v22 = v23;
    if (v13 <= v23)
    {
      v13 = v22;
    }

    --v20;
  }

  while (v20);
LABEL_13:
  v24 = v12 == 0;

  v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS11ShaderGraph13MetalDataTypeC_ypSgtSg_G_s6UInt32Vs5NeverOTg504_s11e7Graph13ghi58C4EnumC4note8typeName5typesAESSSg_SSSDySSAC_ypSgtSgGtcfcs6J9VAKXEfU0_Tf1cn_n(a5);

  v26 = *(v25 + 16);
  if (!v26)
  {
    v27 = 0;
    goto LABEL_25;
  }

  v27 = *(v25 + 32);
  v28 = v26 - 1;
  if (v26 == 1)
  {
    goto LABEL_25;
  }

  if (v26 >= 9)
  {
    v29 = v28 & 0xFFFFFFFFFFFFFFF8 | 1;
    v30 = vdupq_n_s32(v27);
    v31 = (v25 + 52);
    v32 = v28 & 0xFFFFFFFFFFFFFFF8;
    v33 = v30;
    do
    {
      v30 = vmaxq_u32(v30, v31[-1]);
      v33 = vmaxq_u32(v33, *v31);
      v31 += 2;
      v32 -= 8;
    }

    while (v32);
    v27 = vmaxvq_u32(vmaxq_u32(v30, v33));
    if (v28 == (v28 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v29 = 1;
  }

  v34 = v26 - v29;
  v35 = (v25 + 4 * v29 + 32);
  do
  {
    v37 = *v35++;
    v36 = v37;
    if (v27 <= v37)
    {
      v27 = v36;
    }

    --v34;
  }

  while (v34);
LABEL_25:
  v38 = v26 == 0;

  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  *(v5 + 64) = 0;
  if (!v24)
  {
    goto LABEL_31;
  }

  v39 = calculateOffsets(for:)(MEMORY[0x277D84F90]);
  v40 = v39[2];
  if (!v40)
  {
    goto LABEL_30;
  }

  v41 = &v39[7 * v40];
  v42 = *(v41 - 1);
  v43 = *(v41 + 6);

  v44 = *(v42 + 56);

  v13 = v43 + v44;
  if (__CFADD__(v43, v44))
  {
    __break(1u);
LABEL_30:

    v13 = 0;
  }

LABEL_31:
  *(v5 + 56) = v13;
  v45 = MEMORY[0x277D84F90];
  if (!v38)
  {
    goto LABEL_47;
  }

  v46 = *(MEMORY[0x277D84F90] + 16);
  if (v46)
  {
    v47 = *(MEMORY[0x277D84F90] + 32);
    v48 = v46 - 1;
    if (v46 != 1)
    {
      if (v46 < 9)
      {
        v49 = 1;
        goto LABEL_40;
      }

      v49 = v48 & 0xFFFFFFFFFFFFFFF8 | 1;
      v50 = (MEMORY[0x277D84F90] + 52);
      v51 = vdupq_n_s32(v47);
      v52 = v48 & 0xFFFFFFFFFFFFFFF8;
      v53 = v51;
      do
      {
        v51 = vmaxq_u32(v51, v50[-1]);
        v53 = vmaxq_u32(v53, *v50);
        v50 += 2;
        v52 -= 8;
      }

      while (v52);
      v47 = vmaxvq_u32(vmaxq_u32(v51, v53));
      if (v48 != (v48 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_40:
        v54 = v46 - v49;
        v55 = (MEMORY[0x277D84F90] + 4 * v49 + 32);
        do
        {
          v57 = *v55++;
          v56 = v57;
          if (v47 <= v57)
          {
            v47 = v56;
          }

          --v54;
        }

        while (v54);
      }
    }
  }

  else
  {
    v47 = 0;
  }

  if (v46)
  {
    v27 = v47;
  }

  else
  {
    v27 = 0;
  }

LABEL_47:
  *(v5 + 60) = v27;
  *(v5 + 16) = v45;
  return v5;
}

uint64_t MetalDataType.Pointer.init(to:isConst:addressSpace:)(void *a1, char a2, char a3)
{
  v3 = specialized MetalDataType.Pointer.init(to:isConst:addressSpace:)(a1, a2, a3);

  return v3;
}

uint64_t MetalDataType.Matrix.__allocating_init(typeName:vectorType:columnCount:rowCount:size:alignment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  result = swift_allocObject();
  *(result + 72) = a5;
  *(result + 80) = a3;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    if (a4)
    {
      v24 = result;
      v25 = a1;
      v26 = a6;
      v27 = a7;
      v28 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
      v16 = 0;
      v17 = v28;
      v18 = *(v28 + 16);
      v19 = 48 * v18 + 72;
      do
      {
        v20 = *(v28 + 24);
        v21 = v18 + 1;

        if (v18 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21, 1);
        }

        *(v28 + 16) = v21;
        v22 = (v28 + v19);
        *v22 = v16;
        *(v22 - 5) = 0;
        *(v22 - 4) = 0xE000000000000000;
        *(v22 - 3) = a3;
        *(v22 - 2) = MEMORY[0x277D84F90];
        v19 += 48;
        ++v18;
        ++v16;
        *(v22 - 8) = 1;
      }

      while (a4 != v16);
      a6 = v26;
      a7 = v27;
      a1 = v25;
      v15 = v24;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v29 = *(a3 + 24);
    v30 = *(a3 + 32);

    MEMORY[0x266771550](120, 0xE100000000000000);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v23);

    *(v15 + 32) = a2;
    *(v15 + 40) = v29;
    *(v15 + 48) = v30;
    *(v15 + 64) = 0;
    *(v15 + 56) = a6;
    *(v15 + 60) = a7;
    *(v15 + 16) = v17;
    *(v15 + 24) = a1;
    return v15;
  }

  return result;
}

uint64_t MetalDataType.Matrix.init(typeName:vectorType:columnCount:rowCount:size:alignment:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *(v7 + 72) = a5;
  *(v7 + 80) = a3;
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v7;
    v9 = a7;
    v10 = a6;
    v13 = a2;
    v14 = result;
    if (a4)
    {
      v24 = result;
      v27 = v7;
      v28 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0);
      v15 = 0;
      v16 = v28;
      v17 = *(v28 + 16);
      v18 = 48 * v17 + 72;
      do
      {
        v19 = *(v28 + 24);
        v20 = v17 + 1;

        if (v17 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20, 1);
        }

        *(v28 + 16) = v20;
        v21 = (v28 + v18);
        *v21 = v15;
        *(v21 - 5) = 0;
        *(v21 - 4) = 0xE000000000000000;
        *(v21 - 3) = a3;
        *(v21 - 2) = MEMORY[0x277D84F90];
        v18 += 48;
        ++v17;
        ++v15;
        *(v21 - 8) = 1;
      }

      while (a4 != v15);
      v8 = v27;
      v10 = a6;
      v9 = a7;
      v13 = a2;
      v14 = v24;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    v29 = *(a3 + 24);
    v30 = *(a3 + 32);

    MEMORY[0x266771550](120, 0xE100000000000000);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v22);

    *(v8 + 32) = v13;
    *(v8 + 40) = v29;
    *(v8 + 48) = v30;
    *(v8 + 64) = 0;
    *(v8 + 56) = v10;
    *(v8 + 60) = v9;
    *(v8 + 16) = v16;
    *(v8 + 24) = v14;
    return v8;
  }

  return result;
}