uint64_t DPFOneBlockSparse.computeLeafLevel(seed:nonce:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(*v2 + 96);
  result = (*(v8 + 64))(v7, v8);
  v10 = v2[5];
  if ((result * v10) >> 64 == (result * v10) >> 63)
  {
    v11 = *(v6 + 88);
    v12 = v3[3];
    v13 = *(v6 + 104);
    v14 = static BatchedExtendableOutputFunction.makeXOF(seed:domainSeparationTag:binder:generating:)(a1, v12, a2, (result * v10) >> 2, v11, v13);
    v15 = static FieldElement.randomVectorBatched<A>(count:using:)(v10, v14, v7, v11, v8, v13);
    swift_unknownObjectRelease();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DPFOneBlockSparse.deinit()
{

  return v0;
}

uint64_t DPFOneBlockSparse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s4VDAF16InnerCorrectionsV4from9parameterACx_AA0bC18DecodableParameterVSgtKcSkRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAJG_Tt1B5(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v71 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v11 = 0;
    v11[1] = 0;
LABEL_17:
    swift_willThrow();
    return v9;
  }

  if (a5 <= 0)
  {
    v20 = a5;
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *v21 = v20;
    *(v21 + 24) = 2;
    goto LABEL_17;
  }

  if (a6 <= 0)
  {
    swift_unknownObjectRelease();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = a6;
    *(v22 + 24) = 1;
    goto LABEL_17;
  }

  v13 = a6 * a5;
  if ((a6 * a5) >> 64 != (a6 * a5) >> 63)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (a5 + 0x4000000000000000 < 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v14 = 2 * a5 + 7;
  if (__OFADD__(2 * a5, 7))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v15 = a5 * (v14 >> 3);
  if ((a5 * (v14 >> 3)) >> 64 != v15 >> 63)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = v13 + v15;
  if (__OFADD__(v13, v15))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v17 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v16 != v17)
  {
    _StringGuts.grow(_:)(31);

    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v23);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    swift_unknownObjectRelease();
    *__dst = v17;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v24);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v25 = 0xD000000000000022;
    v25[1] = 0x8000000270C53020;
    goto LABEL_17;
  }

  v54 = v14 >> 3;
  v55 = v7;
  v18 = MEMORY[0x277D84F90];
  v8 = a1;
  v64 = a5;
  if ((a4 & 1) == 0)
  {
    goto LABEL_13;
  }

  v62 = a2;
  v9 = a3;
  v10 = a4;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x277D84F90];
  }

  v28 = *(v27 + 16);

  if (v28 == v16)
  {
    v29 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v19 = v64;
    v18 = MEMORY[0x277D84F90];
    if (v29)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_58:
  swift_unknownObjectRelease();
  a1 = v8;
  a4 = v10;
  a3 = v9;
  a2 = v62;
  a5 = v64;
  v18 = MEMORY[0x277D84F90];
LABEL_13:
  v19 = a5;
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2, a3, a4);
LABEL_23:
  swift_unknownObjectRelease();
LABEL_24:
  v30 = specialized Collection.prefix(_:)();
  v58 = v31;
  v62 = v32;
  v10 = v33;
  specialized Collection.dropFirst(_:)();
  v67 = v18;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
  v34 = 0;
  v57 = v10 & 1;
  v9 = v67;
  v60 = v10 >> 1;
  do
  {
    v8 = v34 * a6;
    if ((v34 * a6) >> 64 != (v34 * a6) >> 63)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v35 = v8 + a6;
    if (__OFADD__(v8, a6))
    {
      goto LABEL_46;
    }

    if (v35 < v8)
    {
      goto LABEL_47;
    }

    if (v8 < v62)
    {
      goto LABEL_48;
    }

    if (v60 < v35)
    {
      goto LABEL_49;
    }

    if (v35 < 0)
    {
      goto LABEL_50;
    }

    v36 = v57 | (2 * v35);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
    v68[3] = v37;
    v68[4] = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type ArraySlice<UInt8> and conformance <A> ArraySlice<A>, &_ss10ArraySliceVys5UInt8VGMd, "xq", MEMORY[0x277CC9EE0]);
    v38 = swift_allocObject();
    v68[0] = v38;
    v38[2] = v30;
    v38[3] = v58;
    v38[4] = v8;
    v38[5] = v36;
    v39 = __swift_project_boxed_opaque_existential_1(v68, v37);
    v8 = v39[2];
    v40 = v39[3] >> 1;
    v10 = v40 - v8;
    if (__OFSUB__(v40, v8))
    {
      goto LABEL_51;
    }

    if (v10)
    {
      v41 = v39[1];
      if (v10 <= 14)
      {
        memset(__dst, 0, sizeof(__dst));
        v66 = v40 - v8;
        memcpy(__dst, (v41 + v8), v40 - v8);
        v44 = *__dst;
        v45 = v56 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v66 << 16)) << 32);
        swift_unknownObjectRetain();
        v56 = v45;
      }

      else
      {
        type metadata accessor for __DataStorage();
        swift_allocObject();
        swift_unknownObjectRetain();
        v42 = __DataStorage.init(bytes:length:)();
        v43 = v42;
        if (v10 >= 0x7FFFFFFF)
        {
          type metadata accessor for Data.RangeReference();
          v44 = swift_allocObject();
          *(v44 + 16) = 0;
          *(v44 + 24) = v10;
          v45 = v43 | 0x8000000000000000;
        }

        else
        {
          v44 = v10 << 32;
          v45 = v42 | 0x4000000000000000;
        }
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v44 = 0;
      v45 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(v68);
    v67 = v9;
    v47 = *(v9 + 16);
    v46 = *(v9 + 24);
    v10 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
      v9 = v67;
    }

    ++v34;
    *(v9 + 16) = v10;
    v48 = v9 + 16 * v47;
    *(v48 + 32) = v44;
    *(v48 + 40) = v45;
  }

  while (v64 != v34);
  v49 = specialized Collection.prefix(_:)();
  v61 = v50;
  v63 = v49;
  v59 = v51;
  v53 = v52;
  specialized Collection.dropFirst(_:)();
  v69[0] = v64;
  v69[1] = 0;
  v69[2] = v64;
  v69[3] = v54;
  v70 = 0;
  swift_unknownObjectRetain();
  _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA8BitMasksC_s10ArraySliceVyANGTt1g5(v63, v61, v59, v53, v69);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v55)
  {
  }

  return v9;
}

uint64_t specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v21 = *a2;
  v20 = *(a2 + 8);
  v5 = specialized Collection.prefix(_:)();
  v7 = v6;
  v9 = v8;
  v19 = v10;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  type metadata accessor for BitMasks();
  swift_unknownObjectRetain();
  v14 = specialized BitMasks.__allocating_init<A>(from:parameter:)(v5, v7, v9, v19, v21, v20);
  if (v22)
  {
    result = swift_unknownObjectRelease();
    *a3 = v22;
  }

  else
  {
    v16 = v14;
    result = swift_unknownObjectRelease();
    *a4 = v16;
  }

  return result;
}

uint64_t specialized closure #1 in BitMasks.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized closure #1 in BitMasks.init<A>(from:parameter:)(*a1, a2[1], a2[2], a2[3]);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t specialized closure #2 in BitMasks.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = specialized closure #2 in BitMasks.init<A>(from:parameter:)(*a1, a2, a3[1], a3[2], a3[3]);
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

uint64_t specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X3>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v20 = *(a2 + 8);
  v21 = *a2;
  v19 = *(a2 + 16);
  v5 = specialized Collection.prefix(_:)();
  v7 = v6;
  v9 = v8;
  v18 = v10;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  swift_unknownObjectRetain();
  result = _s4VDAF16InnerCorrectionsV4from9parameterACx_AA0bC18DecodableParameterVSgtKcSkRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAJG_Tt1B5(v5, v7, v9, v18, v21, v20, v19);
  if (v22)
  {
    *a3 = v22;
  }

  else
  {
    *a4 = result;
    a4[1] = v15;
  }

  return result;
}

{
  v21 = *(a2 + 8);
  v22 = *a2;
  v20 = *(a2 + 16);
  v19 = *(a2 + 24);
  v5 = specialized Collection.prefix(_:)();
  v7 = v6;
  v9 = v8;
  v18 = v10;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  swift_unknownObjectRetain();
  result = _s4VDAF25OneBlockSparsePublicShareV4from9parameterACyxGqd___AA0bcdeF18DecodableParameterVyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field32V_s10ArraySliceVyALGTt1B5(v5, v7, v9, v18, v22, v21, v20, v19);
  if (v23)
  {
    *a3 = v23;
  }

  else
  {
    *a4 = result;
    a4[1] = v15;
  }

  return result;
}

uint64_t specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X3>, void *a3@<X4>, uint64_t a4@<X8>)
{
  v20 = *a2;
  v19 = *(a2 + 8);
  v5 = specialized Collection.prefix(_:)();
  v7 = v6;
  v9 = v8;
  v18 = v10;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  swift_unknownObjectRetain();
  result = _s4VDAF29OneBlockSparseInnerCorrectionV4from9parameterACx_AA0bcdeF18DecodableParameterVSgtKcSkRzs5UInt8V7ElementRtzlufCs10ArraySliceVyAJG_Tt1g5(v5, v7, v9, v18, v20, v19);
  if (v21)
  {
    *a3 = v21;
  }

  else
  {
    *a4 = result;
    *(a4 + 8) = v15 & 1;
    *(a4 + 9) = HIBYTE(v15) & 1;
  }

  return result;
}

char *specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X1>, void *a2@<X4>, char **a3@<X8>)
{
  v4 = specialized Collection.prefix(_:)();
  v6 = v5;
  v8 = v7;
  v16 = v9;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  swift_unknownObjectRetain();
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAFGTt0g5(v4, v6, v8, v16);
  if (v17)
  {
    *a2 = v17;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void *specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(uint64_t *a1@<X1>, void *a2@<X4>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, void *a4@<X8>)
{
  v5 = specialized Collection.prefix(_:)();
  v7 = v6;
  v9 = v8;
  v17 = v10;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
  swift_unknownObjectRetain();
  result = a3(&v20, v5, v7, v9, v17, -1);
  if (v18)
  {
    *a2 = v18;
  }

  else
  {
    *a4 = v20;
  }

  return result;
}

void specialized closure #1 in Array<A>.init<A>(from:parameter:)(uint64_t *a1@<X1>, void *a2@<X4>, _DWORD *a3@<X8>)
{
  specialized Collection.prefix(_:)();
  v5 = v4;
  v7 = v6;
  v14 = v8;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  swift_unknownObjectRetain();
  _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_s10ArraySliceVyAJGTt2g5(v5, v7, v14, 0xFFFFFFFF, &v16);
  if (v15)
  {
    *a2 = v15;
  }

  else
  {
    *a3 = v16;
  }
}

uint64_t specialized static OneBlockSparseInnerCorrection.== infix(_:_:)(uint64_t result, __int16 a2, uint64_t a3, __int16 a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if ((a2 ^ a4))
    {
      return 0;
    }

    else
    {
      return ((a4 & 0x100) == 0) ^ ((a2 & 0x100) >> 8);
    }
  }

  else
  {
    v6 = (result + 32);
    v7 = (a3 + 32);
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
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OneBlockSparseInnerCorrection(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t storeEnumTagSinglePayload for OneBlockSparseInnerCorrection(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for OneBlockSparsePublicShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for OneBlockSparsePublicShareDecodableParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for EvalNode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for EvalNode(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), *(v2 + 32), a1, a2);
}

{
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), *(v2 + 32), a1, a2);
}

{
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), *(v2 + 32), a1, a2);
}

uint64_t specialized decodeInteger<A, B>(from:encodedLength:)(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_25;
  }

  if ((a3 >> 1) - a2 != a4)
  {
    _StringGuts.grow(_:)(39);

    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v11);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v13 = 0xD00000000000001DLL;
    v13[1] = 0x8000000270C52390;
    return swift_willThrow();
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (!a4)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  result = 0;
  v7 = 1;
  while (a2 < (a3 >> 1) && v7 - 1 < a4)
  {
    if (v5 <= -65 || v5 > 64)
    {
      goto LABEL_14;
    }

    v8 = *(v4 + a2);
    if (v5 < 0)
    {
      if (v6 == 64)
      {
        goto LABEL_14;
      }

      v9 = v8 >> (v6 & 0x38);
      goto LABEL_13;
    }

    if (v6 != -64)
    {
      v9 = v8 << (v5 & 0x38);
LABEL_13:
      result |= v9;
    }

LABEL_14:
    if (a4 == v7)
    {
      return result;
    }

    ++a2;
    v6 -= 8;
    v5 += 8;
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_24;
    }
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

uint64_t specialized decodeInteger<A, B>(from:encodedLength:)(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (__OFSUB__(a3 >> 1, a2))
  {
    goto LABEL_25;
  }

  if ((a3 >> 1) - a2 != a4)
  {
    _StringGuts.grow(_:)(39);

    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v12);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v13);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v14 = 0xD00000000000001DLL;
    v14[1] = 0x8000000270C52390;
    return swift_willThrow();
  }

  if (a4 < 0)
  {
    goto LABEL_26;
  }

  if (!a4)
  {
    return 0;
  }

  v4 = result;
  v5 = 0;
  v6 = 0;
  result = 0;
  v7 = 1;
  v8 = a2;
  while (v8 >= a2 && v8 < (a3 >> 1))
  {
    if (v5 < -32 || v5 > 32)
    {
      goto LABEL_14;
    }

    v9 = *(v4 + v8);
    if (v5 < 0)
    {
      if (v5 == -32)
      {
        goto LABEL_14;
      }

      v10 = v9 >> (v6 & 0x18);
      goto LABEL_13;
    }

    if (v5 != 32)
    {
      v10 = v9 << (v5 & 0x18);
LABEL_13:
      result = v10 | result;
    }

LABEL_14:
    if (a4 == v7)
    {
      return result;
    }

    ++v8;
    v6 -= 8;
    v5 += 8;
    if (__OFADD__(a2, v7++))
    {
      goto LABEL_24;
    }
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

uint64_t specialized BitMasks.__allocating_init<A>(from:parameter:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v25[0] = result;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  if (a6)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v6 = 0;
    v6[1] = 0;
    return swift_willThrow();
  }

  if (a5 <= 0)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *v13 = a5;
    *(v13 + 24) = 2;
    return swift_willThrow();
  }

  if (a5 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(2 * a5, 7))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = (a4 >> 1) - a3;
  if (!__OFSUB__(a4 >> 1, a3))
  {
    if (v7 == (2 * a5 + 7) >> 3)
    {
      MEMORY[0x28223BE20](result);
      v21 = v25;
      v9 = v8;
      v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(partial apply for specialized closure #1 in BitMasks.init<A>(from:parameter:), v20, 0, v8);
      MEMORY[0x28223BE20](v10);
      v21 = v9;
      v22 = v25;
      v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sbs5NeverOTg5(partial apply for specialized closure #2 in BitMasks.init<A>(from:parameter:), v20, 0, v9);
      result = swift_allocObject();
      *(result + 16) = v10;
      *(result + 24) = v11;
      return result;
    }

    _StringGuts.grow(_:)(24);
    v14 = _typeName(_:qualified:)();
    v16 = v15;

    v24 = v16;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v17);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v23 = v7;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v18);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v19 = v14;
    v19[1] = v16;
    return swift_willThrow();
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in BitMasks.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a1 / 8;
  v5 = a3 + a1 / 8;
  if (__OFADD__(a3, a1 / 8))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return (v5 << -v4) & 1;
  }

  if (v5 < a3 || v5 >= (a4 >> 1))
  {
    goto LABEL_10;
  }

  LODWORD(v5) = *(a2 + v5);
  v4 = a1 % 8;
  if (a1 % 8 >= 0)
  {
    return (v5 >> v4) & 1;
  }

  return (v5 << -v4) & 1;
}

uint64_t specialized closure #2 in BitMasks.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return (v5 << -v6) & 1;
  }

  v7 = v6 + 7;
  if (v6 >= 0)
  {
    v7 = a1 + a2;
  }

  v8 = v7 >> 3;
  v5 = a4 + v8;
  if (__OFADD__(a4, v8))
  {
    goto LABEL_13;
  }

  if (v5 < a4 || v5 >= (a5 >> 1))
  {
    goto LABEL_14;
  }

  LODWORD(v5) = *(a3 + v5);
  v6 -= 8 * v8;
  if (v6 >= 0)
  {
    return (v5 >> v6) & 1;
  }

  return (v5 << -v6) & 1;
}

void *partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), a1, _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_s10ArraySliceVyAJGTt2g5, a2);
}

{
  return specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), a1, _s4VDAF12FieldElementPAAE5bytes4maskxqd___06FiniteB0_11IntegerTypeQZtKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field40V_s10ArraySliceVyAJGTt2g5, a2);
}

{
  return partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)(a1, a2);
}

void partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)(void *a1@<X1>, _DWORD *a2@<X8>)
{
  specialized closure #1 in Array<A>.init<A>(from:parameter:)(*(v2 + 16), a1, a2);
}

{
  partial apply for specialized closure #1 in Array<A>.init<A>(from:parameter:)(a1, a2);
}

uint64_t PreambleKWay.superBlockSize.getter()
{
  v1 = v0[2];
  if (*v0 >= 0x40uLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1 << *v0;
  }

  if (*v0 > 0x40uLL)
  {
    v2 = 0;
  }

  if (v1)
  {
    if (v2 != 0x8000000000000000 || v1 != -1)
    {
      return v2 / v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void PreambleKWay.innerLevelCount.getter()
{
  if (*v0 >= 0x40uLL)
  {
    v1 = 0;
  }

  else
  {
    v1 = 1 << *v0;
  }

  if (*v0 > 0x40uLL)
  {
    v1 = 0;
  }

  v2 = log2(v1 / (v0[1] * v0[2]));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
  }
}

uint64_t PreambleKWay.totalBlockCount.getter()
{
  v1 = v0[1];
  if (*v0 >= 0x40uLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = 1 << *v0;
  }

  if (*v0 > 0x40uLL)
  {
    v2 = 0;
  }

  if (v1)
  {
    if (v2 != 0x8000000000000000 || v1 != -1)
    {
      return v2 / v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PreambleKWay.init(dimensionBitCount:blockSize:keptBlockCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 1 || a2 < 1 || ((a2 + 0x7FFFFFFFFFFFFFFFLL) & a2) != 0 || result > 0x3F || 1 << result < a2 || a3 < 1 || (v4 = (1 << result) / a2, v4 < a3))
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
    v6 = 12;
LABEL_9:
    *(v5 + 24) = v6;
    return swift_willThrow();
  }

  if (v4 % a3)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = a3;
    v6 = 2;
    goto LABEL_9;
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void PreambleKWay.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v73 = a5;
  v74 = a1;
  v11 = a9[2];
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v76 = *v16;
  v77 = v15;
  v18 = *v9;
  v17 = v9[1];
  v19 = v9[2];
  v83 = *v9;
  v84 = v17;
  v85 = v19;
  swift_getWitnessTable();
  VDAFProtocol.assertValidAggregatorID(_:)(a4);
  if (!v21)
  {
    v68 = v13;
    v71 = v17;
    v72 = v18;
    v69 = 0;
    v22 = a9[5];
    v70 = v11;
    v23 = type metadata accessor for OneBlockSparsePublicShare(0, v11, v22, v20);
    v24 = MEMORY[0x2743B2830](v77, v23);
    v25 = *(v76 + 16);
    if (v24 != v25 || v24 != v19)
    {
      v27 = v24;
      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      swift_allocError();
      *v28 = v27;
      *(v28 + 8) = v25;
      *(v28 + 16) = v19;
      *(v28 + 24) = 3;
LABEL_20:
      swift_willThrow();
      return;
    }

    if (a4 > 1)
    {
      v83 = 0;
      v84 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v83 = 0xD000000000000013;
      v84 = 0x8000000270C53200;
      *&v78 = a4;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v59);

      v60 = v83;
      v61 = v84;
      lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
      swift_allocError();
      *v62 = v60;
      *(v62 + 8) = v61;
      *(v62 + 16) = 0;
      goto LABEL_20;
    }

    v63[0] = a4;
    v63[1] = v23;
    v29 = a9[4];
    v30 = a9[8];
    v31 = v70;
    v83 = v70;
    v84 = v29;
    v85 = v22;
    v86 = v30;
    v67 = type metadata accessor for DPFOneBlockSparse(0, &v83);
    v32 = v71;
    v83 = v72;
    v84 = v71;
    v33 = v72;
    v85 = v19;
    v66 = PreambleKWay.superBlockSize.getter();
    *&v78 = v33;
    *(&v78 + 1) = v32;
    v79 = v19;
    PreambleKWay.innerLevelCount.getter();
    v65 = v34;
    v35 = a9[3];
    v36 = a9[6];
    v37 = a9[7];
    v64 = static PreambleKWay.domainSeparationTagExtend.getter(v31, v35, v29, v22, v36, v37, v30);
    v38 = static PreambleKWay.domainSeparationTagConvert.getter(v31, v35, v29, v22, v36, v37, v30);
    v39 = v69;
    v40 = DPFOneBlockSparse.__allocating_init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(v66, v32, v65, v64, v38);
    if (!v39)
    {
      v67 = v19;
      v69 = v40;
      v66 = v22;
      v41 = v68;
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      v42 = 1 << v72;
      if (v72 >= 0x40)
      {
        v42 = 0;
      }

      if (v72 <= 0x40)
      {
        v43 = v42;
      }

      else
      {
        v43 = 0;
      }

      v44 = specialized Array.init(repeating:count:)(v41, v43, v31);
      (*(v75 + 8))(v41, v31);
      v87 = v44;
      *&v78 = v76;
      *&v81 = v77;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF4SeedVGMd, &_sSay4VDAF4SeedVGMR);
      v46 = type metadata accessor for Array();
      v47 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type [Seed] and conformance [A], &_sSay4VDAF4SeedVGMd, &_sSay4VDAF4SeedVGMR, MEMORY[0x277D83970]);
      WitnessTable = swift_getWitnessTable();
      zip<A, B>(_:_:)();
      v81 = v82;
      *&v78 = v45;
      *(&v78 + 1) = v46;
      v79 = v47;
      v80 = WitnessTable;
      v49 = type metadata accessor for Zip2Sequence();
      v50 = swift_getWitnessTable();
      MEMORY[0x2743B26D0](&v78, v49, v50);

      v82 = v78;
      type metadata accessor for EnumeratedSequence();
      EnumeratedSequence.makeIterator()();
      type metadata accessor for EnumeratedSequence.Iterator();
      EnumeratedSequence.Iterator.next()();
      v51 = *(&v78 + 1);
      if (*(&v78 + 1))
      {
        v52 = v78;
        v54 = v79;
        v53 = v80;
        v55 = v73;
        v56 = v63[0];
        while (1)
        {
          *&v78 = v72;
          *(&v78 + 1) = v71;
          v79 = v67;
          v57 = PreambleKWay.superBlockSize.getter();
          if ((v57 * v52) >> 64 != (v57 * v52) >> 63)
          {
            break;
          }

          (*(*v69 + 176))(v55, v56, v51, v56 == 1, v54, v53, &v87);

          EnumeratedSequence.Iterator.next()();
          v51 = *(&v78 + 1);
          v52 = v78;
          v54 = v79;
          v53 = v80;
          if (!*(&v78 + 1))
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:

        OutputShare.init(_:)(v87, &v78);
        PreamblePrepareState.init(outputShare:)(&v78, &v83);
        v58 = v83;
        PreamblePrepareShare.init()();
        *v74 = v58;
      }
    }
  }
}

uint64_t PreambleKWay.prepareNext(state:message:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 1;
}

uint64_t PreambleKWay.prepareState<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PreamblePrepareState(0, *(v11 + 16), *(v11 + 40), v12);
  (*(v8 + 16))(v10, a1, a4);
  return VDAFDecodable.init<A>(from:)(v10, v13, a4, &protocol witness table for PreamblePrepareState<A>, a5);
}

uint64_t PreambleKWay.prepareShare<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PreamblePrepareShare(0, *(v11 + 16), *(v11 + 40), v12);
  (*(v8 + 16))(v10, a1, a4);
  return VDAFDecodable.init<A>(from:)(v10, v13, a4, &protocol witness table for PreamblePrepareShare<A>, a5);
}

uint64_t PreambleKWay.prepareMessage<A>(from:aggregatorID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  return PreamblePrepareMessage.init<A>(from:parameter:)(v6, 1, a4);
}

void *PreambleKWay.aggregate<A>(_:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v21[2] = a1;
  v21[1] = a5;
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v5;
  v15 = *(v14 + 40);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v16 = 1 << v13;
  if (v13 >= 0x40)
  {
    v16 = 0;
  }

  if (v13 <= 0x40)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = specialized Array.init(repeating:count:)(v12, v17, v9);
  (*(v10 + 8))(v12, v9);
  AggregateShare.init(_:)(v18, &v28);
  v21[6] = v9;
  v22 = *(a2 + 24);
  v23 = a3;
  v24 = v15;
  v25 = *(a2 + 48);
  v26 = *(a2 + 64);
  v27 = a4;
  type metadata accessor for AggregateShare(0, v9, v15, v19);
  return Sequence.reduce<A>(into:_:)();
}

uint64_t PreambleKWay.inputShare<A>(from:aggregatorID:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  return PreambleKWayInputShare.init<A>(from:)(v11, *(a3 + 32), a4, *(*(a3 + 64) + 8), a5, x8_0);
}

uint64_t PreambleKWay.publicShare<A>(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v22 = a4;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v5[1];
  v13 = v5[2];
  v26 = *v5;
  v27 = v12;
  v28 = v13;
  PreambleKWay.innerLevelCount.getter();
  v15 = v14;
  v16 = (*(*(a2[8] + 8) + 8))();
  v17 = a2[2];
  PreambleKWayPublicShareDecodableParameter.init(innerLevelCount:keptBlockCount:seedSize:blockSize:)(v15, v13, v16, v12, &v23);
  v19 = v24;
  v20 = v23;
  (*(v9 + 16))(v11, a1, a3);
  v23 = v20;
  v24 = v19;
  v25 = 0;
  return PreambleKWayPublicShare.init<A>(from:parameter:)(v11, &v23, v17, a3);
}

uint64_t closure #2 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v22 = a6;
  v23 = a8;
  v20 = a4;
  v21 = a5;
  v24 = a9;
  v25 = a2;
  v14 = *(a3 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v15;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v26 = a3;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = a7;
  v31 = v23;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v35 = v18;
  Sequence.reduce<A>(_:_:)();
  return (*(v14 + 8))(v17, a3);
}

uint64_t closure #1 in closure #2 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, void x1_0, void x2_0, uint64_t a2, void a5, void a6, void a7, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v14 - v11;
  Array.subscript.getter();
  (*(v7 + 16))(v10, a1, a2);
  FieldElement.init(other:)(v10, a2, a3);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  return (*(v7 + 8))(v12, a2);
}

uint64_t closure #3 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v27 = a4;
  v28 = a6;
  v26 = a7;
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v25 - v19;
  (*(v14 + 16))(v16, a1, a2);
  SignedInteger<>.init<A>(fieldElement:)(v16, a3, a2, a5, v27, v20);
  v21 = *(a3 - 8);
  if ((*(v21 + 48))(v20, 1, a3) != 1)
  {
    return (*(v21 + 32))(v26, v20, a3);
  }

  (*(v18 + 8))(v20, v17);
  lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
  v22 = swift_allocError();
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *v23 = 1;
  *(v23 + 24) = 12;
  result = swift_willThrow();
  *a10 = v22;
  return result;
}

uint64_t PreambleKWay.outputShare<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, void, uint64_t, void, uint64_t))
{
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  return a5(v10, 1, *(a2 + 16), a3, *(a2 + 40), a4);
}

uint64_t protocol witness for Collector.unshard<A>(_:numOfMeasurements:parameter:) in conformance PreambleKWay<A, B, C>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, uint64_t *a6@<X8>)
{
  result = specialized PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(a1, a2, a5, a3, a4);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t PreambleKWay.randomSizeForShard.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  result = (*(*(*(a1 + 64) + 8) + 8))(*(a1 + 32));
  v4 = result * v2;
  if ((result * v2) >> 64 == (result * v2) >> 63)
  {
    if (v4 + 0x4000000000000000 >= 0)
    {
      return 2 * v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *static PreambleKWay.domainSeparationTagExtend.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a7;
  v9 = type metadata accessor for PreambleKWay(0, v12);
  LOBYTE(v12[0]) = a8;
  WitnessTable = swift_getWitnessTable();
  return static VDAFProtocol.domainSeparationTag(usage:)(v12, v9, WitnessTable);
}

uint64_t PreambleKWay.shard<A>(_:nonce:seedBytes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v124 = a4;
  v108 = a3;
  *&v128 = a2;
  v107 = a1;
  v123 = a7;
  v10 = *(*(a7 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v112 = type metadata accessor for PartialRangeFrom();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v98 - v13;
  v126 = v10;
  v125 = a6;
  v122 = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x28223BE20](v122);
  v109 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v116 = &v98 - v16;
  v118 = AssociatedConformanceWitness;
  v115 = type metadata accessor for PartialRangeUpTo();
  v114 = *(v115 - 8);
  v17 = MEMORY[0x28223BE20](v115);
  v113 = &v98 - v18;
  v121 = AssociatedTypeWitness;
  v119 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v117 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v120 = &v98 - v21;
  v22 = *v7;
  v23 = v7[1];
  v24 = v7[2];
  v25 = a5[2];
  v26 = a5[5];
  v28 = type metadata accessor for LeafParent(0, v25, v26, v27);
  *&v137 = v22;
  *(&v137 + 1) = v23;
  *&v138 = v24;
  v29 = PreambleKWay.superBlockSize.getter();
  v30 = a5[3];
  v127 = a5;
  v31 = a5[6];
  v32 = v28;
  v33 = *(&v128 + 1);
  v34 = static LeafParent.makeLeafParentsFromSuperBlocks<A>(measurement:superBlockSize:superBlockCount:blockSize:)(v128, v29, v24, v23, v30, *(v31 + 8));
  if (v33)
  {
    return v32;
  }

  *&v128 = v22;
  v102 = v30;
  v103 = v31;
  *(&v128 + 1) = v23;
  v35 = v127;
  v104 = v26;
  v105 = v25;
  v106 = 0;
  v36 = v34;
  v37 = MEMORY[0x2743B2830](v34, v28);
  if (v37 != v24)
  {
    v54 = v37;

    *&v137 = 0;
    *(&v137 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C53250);
    *&v129 = v24;
    v55 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v55);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C53280);
    *&v129 = v54;
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v56);

    v57 = *(&v137 + 1);
    v32 = v137;
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *v58 = v32;
    *(v58 + 8) = v57;
    *(v58 + 16) = 0;
    *(v58 + 24) = 6;
    swift_willThrow();
    return v32;
  }

  v101 = v36;
  v38 = dispatch thunk of Collection.count.getter();
  v137 = v128;
  *&v138 = v24;
  if (v38 != PreambleKWay.randomSizeForShard.getter(v35))
  {

    v59 = dispatch thunk of Collection.count.getter();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    v32 = swift_allocError();
    *(v60 + 8) = 0;
    *(v60 + 16) = 0;
    *v60 = v59;
    *(v60 + 24) = 1;
    swift_willThrow();
    return v32;
  }

  v99 = v24;
  v98 = v28;
  v39 = v117;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.count.getter();
  v40 = v120;
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
  v41 = v119;
  v42 = *(v119 + 8);
  v43 = v39;
  v44 = v121;
  v117 = (v119 + 8);
  v100 = v42;
  v42(v43, v121);
  v118 = *(v118 + 8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v46 = v113;
    v119 = *(v41 + 16);
    (v119)(v113, v40, v44);
    v47 = v115;
    swift_getWitnessTable();
    v48 = v116;
    Collection.subscript.getter();
    (*(v114 + 8))(v46, v47);
    v32 = v127[4];
    v49 = v127[8];
    v50 = *(v49 + 8);
    v51 = v122;
    v52 = swift_getAssociatedConformanceWitness();
    v53 = v106;
    PreambleKWayInputShare.init<A>(from:)(v48, v32, v51, v50, v52, &v137);
    if (v53)
    {
      v100(v40, v44);

      return v32;
    }

    v115 = v50;
    v116 = v32;
    v123 = v137;
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      v61 = v110;
      v62 = v40;
      v63 = v40;
      v64 = v44;
      (v119)(v110, v63, v44);
      v65 = v112;
      swift_getWitnessTable();
      v66 = v109;
      Collection.subscript.getter();
      (*(v111 + 8))(v61, v65);
      v67 = v116;
      PreambleKWayInputShare.init<A>(from:)(v66, v116, v122, v115, v52, &v137);
      v69 = v99;
      if (*(v123 + 16) == v99 && *(v137 + 16) == v99)
      {
        v125 = v137;
        v70 = v105;
        v71 = v104;
        v106 = 0;
        type metadata accessor for OneBlockSparsePublicShare(0, v105, v104, v68);
        v72 = v67;
        v141 = Array.init()();
        v126 = type metadata accessor for Array();
        Array.reserveCapacity(_:)(v69);
        *&v137 = v70;
        *(&v137 + 1) = v67;
        *&v138 = v71;
        *(&v138 + 1) = v49;
        v124 = type metadata accessor for DPFOneBlockSparse(0, &v137);
        v73 = v128;
        v137 = v128;
        *&v138 = v69;
        v122 = PreambleKWay.superBlockSize.getter();
        v129 = v73;
        *&v130 = v69;
        PreambleKWay.innerLevelCount.getter();
        *&v128 = v74;
        v75 = v127[7];
        v76 = v102;
        v77 = v49;
        v78 = v103;
        v79 = static PreambleKWay.domainSeparationTagExtend.getter(v70, v102, v72, v71, v103, v75, v77);
        v80 = static PreambleKWay.domainSeparationTagConvert.getter(v70, v76, v72, v71, v78, v75, v77);
        v32 = v124;
        v81 = v106;
        v82 = DPFOneBlockSparse.__allocating_init(superBlockSize:blockSize:innerLevelCount:domainSeparationTagExtend:domainSeparationTagConvert:)(v122, *(&v73 + 1), v128, v79, v80);
        if (v81)
        {

          v100(v120, v121);
        }

        else
        {
          v85 = v82;
          *&v133 = v101;
          *&v129 = v123;
          *(&v129 + 1) = v125;
          v86 = type metadata accessor for Array();
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySay4VDAF4SeedVGAFGMd, &_ss12Zip2SequenceVySay4VDAF4SeedVGAFGMR);
          WitnessTable = swift_getWitnessTable();
          v89 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A](&lazy protocol witness table cache variable for type Zip2Sequence<[Seed], [Seed]> and conformance Zip2Sequence<A, B>, &_ss12Zip2SequenceVySay4VDAF4SeedVGAFGMd, &_ss12Zip2SequenceVySay4VDAF4SeedVGAFGMR, MEMORY[0x277D84120]);
          zip<A, B>(_:_:)();

          v133 = v135;
          v134 = v136;
          *&v129 = v86;
          *(&v129 + 1) = v87;
          *&v130 = WitnessTable;
          *(&v130 + 1) = v89;
          type metadata accessor for Zip2Sequence();
          Zip2Sequence.makeIterator()();
          *(&v128 + 1) = v86;
          *&v129 = v86;
          *&v128 = v87;
          *(&v129 + 1) = v87;
          v127 = WitnessTable;
          *&v130 = WitnessTable;
          *(&v130 + 1) = v89;
          v90 = type metadata accessor for Zip2Sequence.Iterator();
          Zip2Sequence.Iterator.next()();
          while (v135)
          {
            v91 = (*(*v85 + 168))(v135, v108, *(&v135 + 1), v136);
            v93 = v92;

            *&v129 = v91;
            *(&v129 + 1) = v93;
            Array.append(_:)();

            *&v129 = *(&v128 + 1);
            *(&v129 + 1) = v128;
            *&v130 = v127;
            *(&v130 + 1) = v89;
            v90 = type metadata accessor for Zip2Sequence.Iterator();
            Zip2Sequence.Iterator.next()();
          }

          v94 = v125;
          v129 = v137;
          v130 = v138;
          v131 = v139;
          v132 = v140;
          (*(*(v90 - 8) + 8))(&v129, v90);
          PreambleKWayPublicShare.init(superBlockPublicShares:)(v141, &v135);
          *v107 = v135;
          type metadata accessor for PreambleKWayInputShare(255, v116, v115, v95);
          type metadata accessor for _ContiguousArrayStorage();
          swift_allocObject();
          static Array._adoptStorage(_:count:)();
          *v96 = v123;
          v96[1] = v94;
          _finalizeUninitializedArray<A>(_:)();
          v32 = v97;

          v100(v120, v121);
        }
      }

      else
      {

        v83 = dispatch thunk of Collection.count.getter();
        lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
        v32 = swift_allocError();
        *(v84 + 8) = 0;
        *(v84 + 16) = 0;
        *v84 = v83;
        *(v84 + 24) = 1;
        swift_willThrow();
        v100(v62, v64);
      }

      return v32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v12 = *v7;
  if (dispatch thunk of Collection.count.getter() != 2)
  {
    a1 = dispatch thunk of Collection.count.getter();
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *v33 = a1;
    *(v33 + 24) = 0;
LABEL_12:
    swift_willThrow();
    return a1;
  }

  v13 = 1 << v12;
  if (v12 >= 0x40)
  {
    v13 = 0;
  }

  if (v12 <= 0x40)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x28223BE20](2);
  v16 = a3[2];
  v15 = a3[3];
  v36 = v16;
  v37 = v15;
  v52 = v15;
  v17 = a3[4];
  v48 = a3[5];
  v49 = v17;
  v38 = v17;
  v39 = a4;
  v18 = a3[6];
  v19 = a3[7];
  v40 = v48;
  v41 = v18;
  v51 = v18;
  v20 = a3[8];
  v21 = v19;
  v42 = v19;
  v43 = v20;
  v50 = v20;
  v44 = a5;
  v45 = v14;
  result = Sequence.allSatisfy(_:)();
  if ((result & 1) == 0)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *v34 = 2;
    *(v34 + 24) = 12;
    goto LABEL_12;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v47 = v46;
    v53 = 0;
    v54 = v14;
    MEMORY[0x28223BE20](result);
    v36 = v16;
    v37 = v52;
    v23 = v48;
    v24 = v49;
    v38 = v49;
    v39 = a4;
    v40 = v48;
    v41 = v51;
    v46[0] = v21;
    v42 = v21;
    v43 = v50;
    v44 = a5;
    v45 = a1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v26 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    v28 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:), v35, v25, v16, MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
    v46[1] = v6;
    v47 = v46;
    v53 = v28;
    MEMORY[0x28223BE20](v28);
    v29 = v52;
    v36 = v16;
    v37 = v52;
    v38 = v24;
    v39 = a4;
    v40 = v23;
    v41 = v51;
    v42 = v46[0];
    v43 = v50;
    v44 = a5;
    v30 = type metadata accessor for Array();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    WitnessTable = swift_getWitnessTable();
    a1 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:), v35, v30, v29, v31, WitnessTable, MEMORY[0x277D84950], &v55);

    return a1;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PreamblePrepareMessage and conformance PreamblePrepareMessage()
{
  result = lazy protocol witness table cache variable for type PreamblePrepareMessage and conformance PreamblePrepareMessage;
  if (!lazy protocol witness table cache variable for type PreamblePrepareMessage and conformance PreamblePrepareMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PreamblePrepareMessage and conformance PreamblePrepareMessage);
  }

  return result;
}

uint64_t type metadata instantiation function for PreambleKWay(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL partial apply for closure #1 in PreambleKWay.unshard<A>(_:numOfMeasurements:parameter:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 88);
  return MEMORY[0x2743B2830](*a1, v2) == v3;
}

uint64_t _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for SymmetricKey();
  MEMORY[0x28223BE20](v12 - 8);
  if (*(a1 + 16) != 32)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v20 = a3;
  v21 = v11;
  type metadata accessor for XofHmacSha256Aes128(0);
  v13 = swift_allocObject();
  *(v13 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream) = 0;
  v23[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C28]);
  SymmetricKey.init<A>(data:)();
  type metadata accessor for SHA256();
  lazy protocol witness table accessor for type SHA256 and conformance SHA256();
  HMAC.init(key:)();
  if (*(a2 + 16) > 0xFFuLL)
  {
    goto LABEL_5;
  }

  LOBYTE(v23[0]) = *(a2 + 16);
  v14 = specialized _copyCollectionToContiguousArray<A>(_:)(v23, v23 + 1);
  v19 = a4;
  v22 = v14;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(&lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A], MEMORY[0x277CC9C20]);
  HMAC.update<A>(data:)();

  v22 = a2;

  specialized Array.append<A>(contentsOf:)(v15);
  HMAC.update<A>(data:)();
  swift_endAccess();

  *(v13 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_maxBufferSize) = v19;
  v16 = v21;
  HMAC.finalize()();
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v9 + 8))(v16, v8);
  return v13;
}

uint64_t specialized LeafParent.bit(atLevel:)(unint64_t a1)
{
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    __break(1u);
LABEL_14:
    v10 = v1 << -v3;
    if (v3 == -64)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    LOBYTE(v5) = v11 & 1;
    return v5 & 1;
  }

  if (v3 <= a1)
  {
    v6 = v3 - 1;
    lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
    swift_allocError();
    *v7 = a1;
    *(v7 + 8) = 0;
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    swift_willThrow();
    return v5 & 1;
  }

  v3 += ~a1;
  if (v3 < -64)
  {
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v1 = *(v2 + 16);
  if (v3 > 64)
  {
    v5 = (v1 >> 63) & 1;
    return v5 & 1;
  }

  if (v3 < 0)
  {
    goto LABEL_14;
  }

  v9 = v3 == 64;
  v5 = v1 >> v3;
  if (v9)
  {
    v5 = v1 >> 63;
  }

  LOBYTE(v5) = v5 & 1;
  return v5 & 1;
}

uint64_t specialized Array.reserveCapacity(_:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_8:
    if (v3 < 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x2743B2FD0](v5);
    goto LABEL_12;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_12:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v3 = result;
  }

  *v1 = v3;
  return result;
}

void _s4VDAF10LeafParentC17dimensionBitCount6prefix9blockSize6leavesACyxGSi_S2iSayAA0B0VyxGGtKcfCAA7Field32V_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF10LeafParentCyAA7Field32VGMd, &_s4VDAF10LeafParentCyAA7Field32VGMR);
  v8 = swift_allocObject();
  v9 = v8;
  if (a3 < 1 || ((a3 + 0x7FFFFFFFFFFFFFFFLL) & a3) != 0)
  {

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v10 = 0xD000000000000020;
    *(v10 + 8) = 0x8000000270C52520;
    *(v10 + 16) = 1;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v8 + 16) = a2;
  v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v11 + 16) = a3;
  bzero((v11 + 32), 4 * a3);
  v12 = *(a4 + 16);
  if (v12)
  {
    v13 = (a4 + 40);
    while (1)
    {
      v14 = *(v13 - 1);
      if ((v14 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v14 >= *(v11 + 16))
      {
        goto LABEL_15;
      }

      v15 = *v13;
      v13 += 4;
      *(v11 + 32 + 4 * v14) = v15;
      if (!--v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_9:

  *(v9 + 24) = v11;
  v16 = log2(a3);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!__OFSUB__(a1, v16))
  {
    *(v9 + 32) = a1 - v16;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t _s4VDAF10LeafParentC04makeB22ParentsFromSuperBlocks11measurement14superBlockSize0jK5Count05blockL0SayACyxGGSDySiqd__G_S3itKSzRd__lFZAA7Field32V_s5Int32VTt3g5(unint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4)
{
  v5 = (a2 - 1);
  if (a2 < 1 || (a2 & *&v5) != 0 || a2 < a4)
  {
    v6 = 0x8000000270C52550;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v8 = 0xD000000000000049;
    goto LABEL_8;
  }

  if (a3 <= 0 || ((a3 + 0x7FFFFFFFFFFFFFFFLL) & a3) != 0)
  {
    v6 = 0x8000000270C525A0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v8 = 0xD00000000000002FLL;
LABEL_8:
    *v7 = v8;
    *(v7 + 8) = v6;
    *(v7 + 16) = 1;
    return swift_willThrow();
  }

  if (a4 < 2 || ((a4 + 0x7FFFFFFFFFFFFFFFLL) & a4) != 0)
  {
    v6 = 0x8000000270C525D0;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    v8 = 0xD000000000000029;
    goto LABEL_8;
  }

  v10 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v98 = v10 - 1;
  if (!__OFSUB__(v10, 1))
  {
    v11 = v4;
    v12 = vcnt_s8(v5);
    v12.i16[0] = vaddlv_u8(v12);
    v96 = v12.u32[0];
    v108 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySi4VDAF10LeafParentC14SuperBlockDataCyAA7Field32V_GGMd, &_sSDySi4VDAF10LeafParentC14SuperBlockDataCyAA7Field32V_GGMR);
    Dictionary.reserveCapacity(_:)(a3);
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v18 = a4;
    v97 = v16;
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_21:
    v20 = a2;
    v19 = a1;
    while (1)
    {
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v21 >= v16)
      {

        v67 = v108;
        if (v108[2] == a3)
        {
          v106 = MEMORY[0x277D84F90];
          specialized Array.reserveCapacity(_:)(a3);
          v68 = 0;
          while (v67[2])
          {
            v69 = specialized __RawDictionaryStorage.find<A>(_:)(v68);
            if ((v70 & 1) == 0)
            {
              break;
            }

            v71 = *(v67[7] + 8 * v69);
            swift_beginAccess();
            v72 = *(v71 + 24);
            if (*(v72 + 16) > a4)
            {

              _StringGuts.grow(_:)(53);
              MEMORY[0x2743B25F0](0x6465746365707845, 0xEC000000203D3C20);
              v86 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v86);

              MEMORY[0x2743B25F0](0xD000000000000019, 0x8000000270C52640);
              v87 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v87);

              MEMORY[0x2743B25F0](0x6F6720747562202CLL, 0xEA00000000002074);
              v88 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x2743B25F0](v88);

              lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
              swift_allocError();
              *v89 = 0;
              *(v89 + 8) = 0xE000000000000000;
              *(v89 + 16) = 0;
              *(v89 + 24) = 3;
              swift_willThrow();
            }

            swift_beginAccess();
            v73 = *(v71 + 16);

            _s4VDAF10LeafParentC17dimensionBitCount6prefix9blockSize6leavesACyxGSi_S2iSayAA0B0VyxGGtKcfCAA7Field32V_Tt3g5(v96, v73, a4, v72);
            if (v11)
            {
            }

            MEMORY[0x2743B2760](v74);
            if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            ++v68;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            if (a3 == v68)
            {

              return v106;
            }
          }

          _StringGuts.grow(_:)(31);

          v79 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v79);

          v77 = 0xD00000000000001DLL;
          v78 = 0x8000000270C52620;
        }

        else
        {
          v107[0] = 0;
          v107[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          strcpy(v107, "Expected ");
          WORD1(v107[1]) = 0;
          HIDWORD(v107[1]) = -385875968;
          v75 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v75);

          MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C52600);
          v76 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v76);

          v77 = v107[0];
          v78 = v107[1];
        }

        lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
        swift_allocError();
        *v80 = v77;
        *(v80 + 8) = v78;
        *(v80 + 16) = 0;
        *(v80 + 24) = 2;
        swift_willThrow();
      }

      v15 = *(a1 + 64 + 8 * v21);
      ++v17;
      if (v15)
      {
        v17 = v21;
        while (1)
        {
          v22 = __clz(__rbit64(v15)) | (v17 << 6);
          v23 = *(*(v19 + 48) + 8 * v22);
          if ((v23 & 0x8000000000000000) != 0 || v98 < v23)
          {
            v107[0] = 0;
            v107[1] = 0xE000000000000000;
            _StringGuts.grow(_:)(31);

            v107[0] = 544826699;
            v107[1] = 0xE400000000000000;
            v81 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v81);

            MEMORY[0x2743B25F0](0xD000000000000016, 0x8000000270C52680);
            v82 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v82);

            MEMORY[0x2743B25F0](93, 0xE100000000000000);
            v83 = v107[0];
            v84 = v107[1];
            lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
            swift_allocError();
            *v85 = v83;
            *(v85 + 8) = v84;
            *(v85 + 16) = 0;
            *(v85 + 24) = 1;
            swift_willThrow();
          }

          v15 &= v15 - 1;
          v24 = *(*(v19 + 56) + 4 * v22);
          v25 = v23 / v20;
          v26 = v23 % v20;
          v27 = v26 / v18;
          v104 = v26 % v18;
          v28 = v108;
          if (!v108[2])
          {
            break;
          }

          v29 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
          if ((v30 & 1) == 0)
          {
            break;
          }

          v31 = *(v28[7] + 8 * v29);
          swift_beginAccess();
          if (*(v31 + 16) != v27)
          {
            v107[0] = 0;
            v107[1] = 0xE000000000000000;

            _StringGuts.grow(_:)(43);

            strcpy(v107, "super block ");
            BYTE5(v107[1]) = 0;
            HIWORD(v107[1]) = -5120;
            v90 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x2743B25F0](v90);

            MEMORY[0x2743B25F0](0xD00000000000001DLL, 0x8000000270C52660);
            v91 = v107[0];
            v92 = v107[1];
            lazy protocol witness table accessor for type LeafParentError and conformance LeafParentError();
            swift_allocError();
            *v93 = v91;
            *(v93 + 8) = v92;
            *(v93 + 16) = 0;
            *(v93 + 24) = 4;
            swift_willThrow();
          }

          if (v24 < 0)
          {
            v24 -= 0xFFFFF;
          }

          if (v24 >= 0xFFF00002)
          {
            goto LABEL_87;
          }

          v32 = 266338049 * v24;
          v33 = 4293918721 * (1048831 * v24);
          v34 = __CFADD__(v33, v32);
          v35 = v33 + v32;
          v36 = v31;
          if (v34)
          {
            v37 = HIDWORD(v35) + 0xFFFFF;
            if (HIDWORD(v35) >= 0xFFF00001)
            {
              goto LABEL_86;
            }
          }

          else if (v35 >= 0xFFF0000100000000)
          {
            v37 = HIDWORD(v35) + 0xFFFFF;
          }

          else
          {
            v37 = HIDWORD(v35);
          }

          swift_beginAccess();
          v61 = *(v31 + 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v36 + 24) = v61;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
            *(v36 + 24) = v61;
          }

          v64 = *(v61 + 2);
          v63 = *(v61 + 3);
          if (v64 >= v63 >> 1)
          {
            v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v61);
          }

          *(v61 + 2) = v64 + 1;
          v65 = &v61[16 * v64];
          *(v65 + 4) = v104;
          *(v65 + 10) = v37;
          *(v36 + 24) = v61;
          swift_endAccess();

          v18 = a4;
          v16 = v97;
          if (!v15)
          {
            goto LABEL_21;
          }

LABEL_20:
          v20 = a2;
          v19 = a1;
        }

        v100 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF10LeafParentC14SuperBlockDataCyAA7Field32V_GMd, &_s4VDAF10LeafParentC14SuperBlockDataCyAA7Field32V_GMR);
        v38 = swift_allocObject();
        v39 = MEMORY[0x277D84F90];
        *(v38 + 24) = MEMORY[0x277D84F90];
        v40 = (v38 + 24);
        v99 = v38;
        *(v38 + 16) = v27;
        swift_beginAccess();
        *v40 = v39;
        *v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a4, 0, v39);
        swift_endAccess();
        if (v24 >= 0)
        {
          v41 = v24;
        }

        else
        {
          v41 = (v24 - 0xFFFFF);
        }

        _s4VDAF12FieldElementPAAEyx06FiniteB0_11IntegerTypeQZcfCAA7Field32V_Tt1g5(v41, v107);
        v42 = v107[0];
        swift_beginAccess();
        v43 = *v40;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *v40 = v43;
        if ((v44 & 1) == 0)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
          *v40 = v43;
        }

        v46 = *(v43 + 2);
        v45 = *(v43 + 3);
        if (v46 >= v45 >> 1)
        {
          v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v43);
        }

        *(v43 + 2) = v46 + 1;
        v47 = &v43[16 * v46];
        *(v47 + 4) = v104;
        *(v47 + 10) = v42;
        *v40 = v43;
        swift_endAccess();
        v48 = v108;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v107[0] = v48;
        v50 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
        v52 = v48[2];
        v53 = (v51 & 1) == 0;
        v54 = __OFADD__(v52, v53);
        v55 = v52 + v53;
        if (v54)
        {
          goto LABEL_82;
        }

        v56 = v51;
        if (v48[3] >= v55)
        {
          if (v49)
          {
            goto LABEL_50;
          }

          v66 = v50;
          specialized _NativeDictionary.copy()();
          v50 = v66;
          v58 = v107[0];
          if (v56)
          {
            goto LABEL_18;
          }

LABEL_51:
          v58[(v50 >> 6) + 8] |= 1 << v50;
          *(v58[6] + 8 * v50) = v100;
          *(v58[7] + 8 * v50) = v99;
          v59 = v58[2];
          v54 = __OFADD__(v59, 1);
          v60 = v59 + 1;
          if (v54)
          {
            goto LABEL_83;
          }

          v58[2] = v60;
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v49);
          v50 = specialized __RawDictionaryStorage.find<A>(_:)(v100);
          if ((v56 & 1) != (v57 & 1))
          {
            goto LABEL_88;
          }

LABEL_50:
          v58 = v107[0];
          if ((v56 & 1) == 0)
          {
            goto LABEL_51;
          }

LABEL_18:
          *(v58[7] + 8 * v50) = v99;
        }

        v18 = a4;
        v16 = v97;
        v108 = v58;
        if (!v15)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  v107[0] = 0;
  v107[1] = 0xE000000000000000;

  _StringGuts.grow(_:)(40);

  strcpy(v107, "Integer(");
  BYTE1(v107[1]) = 0;
  WORD1(v107[1]) = 0;
  HIDWORD(v107[1]) = -402653184;
  v94 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v94);

  MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C51FF0);
  v95 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v95);

  MEMORY[0x2743B25F0](41, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_88:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

char *_s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(uint64_t a1, uint64_t a2)
{
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1 & ~(a1 >> 63), 0, MEMORY[0x277D84F90]);
  if (*(v3 + 2) >= a1)
  {
    return v3;
  }

  v19 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  while (1)
  {
    v4 = *(a2 + v19);
    if (!v4)
    {
      break;
    }

    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5[1].i64[0] = 1024;
    bzero(&v5[2], 0x400uLL);
    v6 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    v7 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)(v5 + 2, v5[66].i64, v4 + v6, v4 + v7);
    swift_endAccess();

    for (i = 8; i != 264; ++i)
    {
      v9 = v5->u32[i];
      if (v9 <= 0xFFF00001)
      {
        if (v9 == -1048575)
        {
          v10 = 0;
        }

        else
        {
          v11 = 266338049 * v9;
          v12 = 4503595066065151 * v9;
          v13 = __CFADD__(v12, v11);
          v14 = v12 + v11;
          if (v13)
          {
            v10 = HIDWORD(v14) + 0xFFFFF;
            if (HIDWORD(v14) >= 0xFFF00001)
            {
              __break(1u);
              goto LABEL_22;
            }
          }

          else
          {
            v10 = v14 >= 0xFFF0000100000000 ? HIDWORD(v14) + 0xFFFFF : HIDWORD(v14);
          }
        }

        v16 = *(v3 + 2);
        v15 = *(v3 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v3);
        }

        *(v3 + 2) = v17;
        *&v3[4 * v16 + 32] = v10;
        if (v17 == a1)
        {
          break;
        }
      }
    }

    if (*(v3 + 2) >= a1)
    {
      return v3;
    }
  }

LABEL_22:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t _s4VDAF4SeedV6extend3xof5nonce19domainSeparationTagSayACG_SaySbGtxm_Says5UInt8VGALtAA31BatchedExtendableOutputFunctionRzlFAA19XofHmacSha256Aes128C_Ttg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  if ((v7 + 0x4000000000000000) < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = 2 * v7;
  v8 = *(_s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(a3, a2, a1, 2 * v7) + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream);
  if (!v8)
  {
    goto LABEL_29;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (v7)
  {
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v3[1].i64[0] = v5;
    bzero(&v3[2], 2 * v7);
    v9 = 2 * v7;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v9 = *(MEMORY[0x277D84F90] + 16);
  }

  i64 = v3[2].i64;
  v10 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v11 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  v12 = v3[2].i64 + v9;
  v4 = 0;
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(v3 + 2, v12, v8 + v10, v8 + v11);
  swift_endAccess();

  v13 = v3[1].u64[0];
  if (v13 < v7)
  {
    goto LABEL_21;
  }

  if (v13 == v7)
  {

    v4 = v3;
  }

  else
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v3, v3[2].i64, 0, v5 | 1);
    v4 = v14;
  }

  v15 = v3[1].u64[0];
  if (v15 < v5)
  {
    goto LABEL_22;
  }

  if (v15 == v7)
  {
    if (*(v4 + 2))
    {
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_23:
  specialized _copyCollectionToContiguousArray<A>(_:)(v3, i64, v7, (4 * v7) | 1);
  v7 = v20;

  v3 = v7;
  if (!*(v4 + 2))
  {
    goto LABEL_24;
  }

LABEL_14:
  if (!v3[1].i64[0])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v7) = v4[32];
  LOBYTE(v5) = v3[2].i8[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_26:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v4[32] &= ~1u;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v3[1].i64[0])
    {
LABEL_18:
      v16 = v7 & 1;
      v3[2].i8[0] &= ~1u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMd, &_ss23_ContiguousArrayStorageCy4VDAF4SeedVGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_270C44550;
      *(v17 + 32) = v4;
      *(v17 + 40) = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_270C44550;
      *(v18 + 32) = v16;
      *(v18 + 33) = v5 & 1;

      return v17;
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    if (v3[1].i64[0])
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t specialized DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v123 = result;
  v6 = v4[7];
  if (v6 < 0)
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    return result;
  }

  v7 = v4;

  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v139 = MEMORY[0x277D84F90];
    LOBYTE(v138) = 1;
    v121 = v6;
    v122 = v4;
    while (1)
    {
      v135 = v10;
      v12 = specialized LeafParent.bit(atLevel:)(v10);
      if (v5)
      {
        goto LABEL_113;
      }

      v13 = v7[2];
      v144 = v12;
      v14 = _s4VDAF4SeedV6extend3xof5nonce19domainSeparationTagSayACG_SaySbGtxm_Says5UInt8VGALtAA31BatchedExtendableOutputFunctionRzlFAA19XofHmacSha256Aes128C_Ttg5(a2, v13, a3);
      v147 = v15;

      v16 = _s4VDAF4SeedV6extend3xof5nonce19domainSeparationTagSayACG_SaySbGtxm_Says5UInt8VGALtAA31BatchedExtendableOutputFunctionRzlFAA19XofHmacSha256Aes128C_Ttg5(a2, v13, a4);
      v18 = v17;

      v19 = (v144 & 1) == 0;
      if (*(v14 + 16) <= v19)
      {
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      if (*(v16 + 16) <= v19)
      {
        goto LABEL_154;
      }

      v20 = *(v14 + 32 + 8 * v19);
      v148 = v16;
      v21 = v16 + 32;
      v22 = *(v16 + 32 + 8 * v19);
      v23 = *(v20 + 16);
      v24 = *(v22 + 16);
      if (v23 != v24)
      {

        lazy protocol witness table accessor for type XORError and conformance XORError();
        swift_allocError();
        *v111 = v23;
        *(v111 + 8) = v24;
        *(v111 + 16) = 0;
        swift_willThrow();
      }

      v124 = v21;
      v125 = v14 + 32;
      v136 = v11;
      v146 = v14;
      v143 = v18;
      v151 = MEMORY[0x277D84F90];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
      v25 = v151;
      if (v23)
      {
        v26 = 0;
        v27 = *(v20 + 16);
        v28 = v20 + 32;
        v29 = v22 + 32;
        v30 = v20;
        v31 = v22;
        while (v27 != v26)
        {
          if (v26 >= *(v30 + 16))
          {
            goto LABEL_120;
          }

          v32 = *(v31 + 16);
          if (v26 == v32)
          {
            goto LABEL_121;
          }

          if (v26 >= v32)
          {
            goto LABEL_122;
          }

          v20 = *(v28 + v26);
          v33 = *(v29 + v26);
          v151 = v25;
          v35 = *(v25 + 16);
          v34 = *(v25 + 24);
          if (v35 >= v34 >> 1)
          {
            v140 = v30;
            v130 = v27;
            v132 = v31;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
            v27 = v130;
            v31 = v132;
            v30 = v140;
            v18 = v143;
            v25 = v151;
          }

          ++v26;
          *(v25 + 16) = v35 + 1;
          *(v25 + v35 + 32) = v33 ^ v20;
          if (v23 == v26)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:

        v151 = v149;
        specialized Array<A>.elementwiseAdd(_:)(v28);
        if (v20)
        {
          goto LABEL_113;
        }

LABEL_135:

        if (v138)
        {
          v114 = *(v151 + 16);
          if (v114)
          {
            v150 = MEMORY[0x277D84F90];
            result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v114, 0);
            v115 = 32;
            do
            {
              v116 = *(v151 + v115);
              if (v116)
              {
                v117 = -1048575 - v116;
                if (v116 > 0xFFF00001)
                {
                  goto LABEL_172;
                }
              }

              else
              {
                v117 = 0;
              }

              v119 = *(v150 + 16);
              v118 = *(v150 + 24);
              if (v119 >= v118 >> 1)
              {
                result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v118 > 1), v119 + 1, 1);
              }

              *(v150 + 16) = v119 + 1;
              *(v150 + 4 * v119 + 32) = v117;
              v115 += 4;
              --v114;
            }

            while (v114);
          }
        }

        return v139;
      }

      v30 = v20;
      v31 = v22;
LABEL_19:
      v36 = *(v30 + 16);
      if (v23 != v36)
      {
        v56 = v30 + 32;
        v57 = v31 + 32;
        while (v23 < v36)
        {
          v58 = *(v31 + 16);
          if (v23 == v58)
          {
            goto LABEL_20;
          }

          if (v23 >= v58)
          {
            goto LABEL_134;
          }

          v59 = *(v56 + v23);
          v60 = *(v57 + v23);
          v151 = v25;
          v62 = *(v25 + 16);
          v61 = *(v25 + 24);
          if (v62 >= v61 >> 1)
          {
            v142 = v30;
            v134 = v31;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
            v31 = v134;
            v30 = v142;
            v18 = v143;
            v25 = v151;
          }

          ++v23;
          *(v25 + 16) = v62 + 1;
          *(v25 + v62 + 32) = v60 ^ v59;
          v36 = *(v30 + 16);
          if (v23 == v36)
          {
            goto LABEL_20;
          }
        }

LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

LABEL_20:
      v141 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
      result = swift_initStackObject();
      *(result + 16) = xmmword_270C44550;
      v37 = *(v147 + 16);
      if (!v37)
      {
        goto LABEL_155;
      }

      v38 = *(v18 + 16);
      if (!v38)
      {
        goto LABEL_156;
      }

      v39 = result;
      *(result + 32) = ((v144 ^ *(v18 + 32) ^ *(v147 + 32)) & 1) == 0;
      if (v37 == 1)
      {
        goto LABEL_157;
      }

      if (v38 == 1)
      {
        goto LABEL_158;
      }

      v40 = v144 & 1;
      v129 = result + 32;
      v41 = (v144 ^ *(v147 + 33) ^ *(v18 + 33)) & 1;
      *(result + 33) = v41;
      v145 = v40;
      v131 = v41;
      v133 = result;
      if (v136)
      {
        result = v148;
        if (*(v146 + 16) <= v40)
        {
          goto LABEL_163;
        }

        v42 = *(v125 + 8 * v40);
        v43 = *(v42 + 16);
        v44 = *(v141 + 16);
        if (v43 != v44)
        {
          swift_setDeallocating();
          lazy protocol witness table accessor for type XORError and conformance XORError();
          swift_allocError();
          *v112 = v43;
          *(v112 + 8) = v44;
          *(v112 + 16) = 0;
          swift_willThrow();
        }

        v151 = MEMORY[0x277D84F90];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
        v45 = v151;
        if (v43)
        {
          v46 = 0;
          v47 = *(v42 + 16);
          v48 = v42 + 32;
          v49 = v141;
          v50 = v42;
          while (v47 != v46)
          {
            if (v46 >= *(v50 + 16))
            {
              goto LABEL_126;
            }

            v51 = *(v49 + 16);
            if (v46 == v51)
            {
              goto LABEL_127;
            }

            if (v46 >= v51)
            {
              goto LABEL_128;
            }

            v52 = *(v48 + v46);
            v53 = *(v141 + 32 + v46);
            v151 = v45;
            v55 = *(v45 + 16);
            v54 = *(v45 + 24);
            if (v55 >= v54 >> 1)
            {
              v126 = v50;
              v120 = v47;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
              v47 = v120;
              v50 = v126;
              v49 = v141;
            }

            ++v46;
            *(v45 + 16) = v55 + 1;
            *(v45 + v55 + 32) = v53 ^ v52;
            if (v43 == v46)
            {
              goto LABEL_59;
            }
          }

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
          goto LABEL_133;
        }

        v49 = v141;
        v50 = v42;
LABEL_59:
        v79 = *(v50 + 16);
        if (v43 != v79)
        {
          v85 = v50 + 32;
          v86 = v49 + 32;
          v39 = v133;
          while (v43 < v79)
          {
            v87 = *(v49 + 16);
            if (v43 == v87)
            {
              goto LABEL_61;
            }

            if (v43 >= v87)
            {
              goto LABEL_147;
            }

            v88 = *(v85 + v43);
            v89 = *(v86 + v43);
            v91 = *(v45 + 16);
            v90 = *(v45 + 24);
            if (v91 >= v90 >> 1)
            {
              v127 = v50;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
              v50 = v127;
              v49 = v141;
            }

            ++v43;
            *(v45 + 16) = v91 + 1;
            *(v45 + v91 + 32) = v89 ^ v88;
            v79 = *(v50 + 16);
            if (v43 == v79)
            {
              goto LABEL_61;
            }
          }

          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v39 = v133;
LABEL_61:

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          result = v146;
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v146);
        }

        v41 = v131;
        if (*(result + 16) <= v145)
        {
          goto LABEL_165;
        }

        v146 = result;
        *(result + 8 * v145 + 32) = v45;

        if (*(v147 + 16) <= v145)
        {
          goto LABEL_166;
        }

        v80 = *(v147 + 32 + v145);

        v81 = *(v129 + v145);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          result = v147;
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v147);
        }

        v64 = v145;
        v63 = v148;
        if (*(result + 16) <= v145)
        {
          goto LABEL_167;
        }

        v147 = result;
        *(result + v145 + 32) = v80 ^ v81;
        v18 = v143;
        if ((v138 & 1) == 0)
        {
LABEL_69:

          v82 = v145;
          v84 = v146;
          v83 = v147;
          goto LABEL_89;
        }
      }

      else
      {
        v63 = v148;

        v64 = v145;
        if ((v138 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      if (*(v63 + 16) <= v64)
      {
        goto LABEL_164;
      }

      v65 = *(v124 + 8 * v64);

      v138 = v65;
      v66 = *(v65 + 16);
      v67 = *(v141 + 16);
      if (v66 != v67)
      {

        swift_setDeallocating();
        lazy protocol witness table accessor for type XORError and conformance XORError();
        swift_allocError();
        *v113 = v66;
        *(v113 + 8) = v67;
        *(v113 + 16) = 0;
        swift_willThrow();
      }

      v151 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
      v68 = v151;
      if (v66)
      {
        v69 = 0;
        v70 = v65;
        v71 = *(v65 + 16);
        v72 = v65 + 32;
        v73 = v141;
        while (v71 != v69)
        {
          if (v69 >= *(v70 + 16))
          {
            goto LABEL_130;
          }

          v74 = *(v73 + 16);
          if (v69 == v74)
          {
            goto LABEL_131;
          }

          if (v69 >= v74)
          {
            goto LABEL_132;
          }

          v75 = *(v72 + v69);
          v76 = *(v141 + 32 + v69);
          v151 = v68;
          v78 = *(v68 + 16);
          v77 = *(v68 + 24);
          if (v78 >= v77 >> 1)
          {
            v137 = v71;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
            v71 = v137;
            v70 = v138;
            v73 = v141;
          }

          ++v69;
          *(v68 + 16) = v78 + 1;
          *(v68 + v78 + 32) = v76 ^ v75;
          if (v66 == v69)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_129;
      }

      v73 = v141;
      v70 = v65;
LABEL_79:
      v92 = *(v70 + 16);
      if (v66 != v92)
      {
        v101 = v70 + 32;
        v102 = v73 + 32;
        v39 = v133;
        while (v66 < v92)
        {
          v103 = *(v73 + 16);
          if (v66 == v103)
          {
            goto LABEL_81;
          }

          if (v66 >= v103)
          {
            goto LABEL_149;
          }

          v104 = *(v101 + v66);
          v105 = *(v102 + v66);
          v107 = *(v68 + 16);
          v106 = *(v68 + 24);
          if (v107 >= v106 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1);
            v70 = v138;
            v73 = v141;
          }

          ++v66;
          *(v68 + 16) = v107 + 1;
          *(v68 + v107 + 32) = v105 ^ v104;
          v92 = *(v70 + 16);
          if (v66 == v92)
          {
            goto LABEL_81;
          }
        }

LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        return v139;
      }

      v39 = v133;
LABEL_81:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        result = v148;
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v148);
      }

      v41 = v131;
      if (*(result + 16) <= v145)
      {
        goto LABEL_168;
      }

      v148 = result;
      *(result + 8 * v145 + 32) = v68;

      if (*(v143 + 16) <= v145)
      {
        goto LABEL_169;
      }

      v93 = *(v143 + 32 + v145);

      v94 = *(v129 + v145);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v143);
        v143 = result;
      }

      v82 = v145;
      v84 = v146;
      v83 = v147;
      if (*(v143 + 16) <= v145)
      {
        goto LABEL_170;
      }

      *(v143 + v145 + 32) = v93 ^ v94;
      v18 = v143;
LABEL_89:
      if (*(v84 + 16) <= v82)
      {
        goto LABEL_159;
      }

      if (*(v148 + 16) <= v82)
      {
        goto LABEL_160;
      }

      if (*(v83 + 16) <= v82)
      {
        goto LABEL_161;
      }

      if (*(v18 + 16) <= v82)
      {
        goto LABEL_162;
      }

      a3 = *(v84 + 8 * v82 + 32);
      a4 = *(v148 + 8 * v82 + 32);
      v11 = *(v83 + v82 + 32);
      v95 = *(v18 + v82 + 32);
      v96 = *(v39 + 32);

      LOBYTE(v138) = v95;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v97 = v139;
      }

      else
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v139 + 2) + 1, 1, v139);
      }

      v99 = *(v97 + 2);
      v98 = *(v97 + 3);
      if (v99 >= v98 >> 1)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v97);
      }

      *(v97 + 2) = v99 + 1;
      v139 = v97;
      v100 = &v97[16 * v99];
      *(v100 + 4) = v141;
      v10 = v135 + 1;
      v100[40] = v96;
      v100[41] = v41;

      v7 = v122;
      v5 = 0;
      if (v135 + 1 == v121)
      {
        goto LABEL_112;
      }
    }
  }

  LOBYTE(v138) = 1;
  v139 = MEMORY[0x277D84F90];
LABEL_112:
  v108 = *(*v7 + 192);
  v109 = v108(a3, a2);
  if (!v5)
  {
    v110 = v109;

    v28 = v108(a4, a2);

    v149 = *(v123 + 24);

    specialized Array<A>.elementwiseSubtract(_:)(v110);
    v20 = 0;
    goto LABEL_123;
  }

LABEL_113:
}

uint64_t specialized DPFOneBlockSparse.evalNextChildren(nonce:node:internalCwList:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v10 = a2;
  v8 = a6;
  if (*(a5 + 16) <= a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = a4;
  v14 = a5 + 16 * a2;
  v9 = *(v14 + 32);
  v15 = *(v14 + 40);
  v16 = *(v14 + 41);
  v17 = *(v7 + 2);

  v18 = _s4VDAF4SeedV6extend3xof5nonce19domainSeparationTagSayACG_SaySbGtxm_Says5UInt8VGALtAA31BatchedExtendableOutputFunctionRzlFAA19XofHmacSha256Aes128C_Ttg5(a1, v17, a3);
  v7 = v18;
  v6 = v19;
  if ((v11 & 1) == 0)
  {

    goto LABEL_16;
  }

  if (!*(v18 + 16))
  {
    goto LABEL_30;
  }

  v35 = v16;
  v36 = v15;
  v20 = *(*(v18 + 32) + 16);
  v21 = *(v9 + 16);
  if (v20 != v21)
  {
    lazy protocol witness table accessor for type XORError and conformance XORError();
    swift_allocError();
    *v34 = v20;
LABEL_23:
    *(v34 + 8) = v21;
    *(v34 + 16) = 0;
    swift_willThrow();
  }

  v11 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(v22, v9);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

  while (1)
  {
    if (*(v7 + 2))
    {
      *(v7 + 4) = v11;

      if (*(v6 + 16))
      {
        LOBYTE(v11) = *(v6 + 32);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_10;
        }

        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_34:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
LABEL_10:
    *(v6 + 32) = v36 ^ v11;
    if (*(v7 + 2) < 2uLL)
    {
      break;
    }

    v11 = *(v7 + 5);
    v24 = *(v11 + 16);
    v21 = *(v9 + 16);
    if (v24 != v21)
    {
      lazy protocol witness table accessor for type XORError and conformance XORError();
      swift_allocError();
      *v34 = v24;
      goto LABEL_23;
    }

    v26 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5UInt8VGAJG_AIs5NeverOTg5018_sxxxIgnnr_x_xtxs5g40OIegnrzr_s17FixedWidthIntegerRzSURzlTRs5f25V_TG5012_sSa4VDAFs17bcd34pQ44E3xorySayxGADKFxx_xtXEfU_s5E5V_TG5Tf3nnnpf_nTf1cn_n(v25, v9);

    if (*(v7 + 2) < 2uLL)
    {
      goto LABEL_36;
    }

    *(v7 + 5) = v26;

    if (*(v6 + 16) < 2uLL)
    {
      goto LABEL_37;
    }

    *(v6 + 33) = (v35 ^ *(v6 + 33)) & 1;
LABEL_16:
    v27 = *(v7 + 2);
    if (!v27)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v28 = *(v6 + 16);
    if (!v28)
    {
      goto LABEL_27;
    }

    if (v27 == 1)
    {
      goto LABEL_28;
    }

    if (v28 != 1)
    {
      v29 = v10 + 1;
      v30 = *(v6 + 32);
      v31 = *(v7 + 4);
      v32 = *(v7 + 5);
      v33 = *(v6 + 33);

      *v8 = v29;
      *(v8 + 8) = v31;
      *(v8 + 16) = v30;
      *(v8 + 24) = v29;
      *(v8 + 32) = v32;
      *(v8 + 40) = v33;
      return result;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void specialized PreambleKWay.innerLevelCount.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1 << a1;
  if (a1 >= 0x40)
  {
    v3 = 0;
  }

  if (a1 > 0x40)
  {
    v3 = 0;
  }

  v4 = log2(v3 / (a2 * a3));
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t *_s4VDAF12PreambleKWayV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputL09parameterAA0B12PrepareStateVyxG_AA0boL0VyxGtSays5UInt8VG_SiAsA0bc6PublicL0VyxGAA0bc5InputL0Vyq0_GAA11VoidCodableVtKFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CTt6B5(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a4 >= 2)
  {
    v127[0] = a4;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }

  v11 = *(a6 + 16);
  v12 = a7[2];
  if (v11 != v12 || v11 != a10)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v12;
    *(v14 + 16) = a10;
    *(v14 + 24) = 3;
    return swift_willThrow();
  }

  if (!a10)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v20 = v10;
  v109 = result;
  v21 = 1 << a8;
  if (a8 <= 0x3F)
  {
    v22 = 1 << a8;
  }

  else
  {
    v22 = 0;
  }

  if (a8 <= 0x40)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 / a10;
  specialized PreambleKWay.innerLevelCount.getter(a8, a9, a10);
  v124 = v25;
  v26 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(10);
  v27 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF17DPFOneBlockSparseCyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF17DPFOneBlockSparseCyAA7Field32VAA19XofHmacSha256Aes128CGMR);
  result = swift_allocObject();
  v126 = result;
  if (__OFSUB__(v24, 1))
  {
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
    goto LABEL_116;
  }

  v120 = v22;
  v28 = 0xD00000000000001DLL;
  if (((v24 - 1) & v24) != 0)
  {
    v29 = "ntrol bits value not 0 or 1: ";
    v30 = 7;
LABEL_22:

    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *v33 = v28;
    *(v33 + 8) = v29 | 0x8000000000000000;
    *(v33 + 16) = 0;
    *(v33 + 24) = v30;
    swift_willThrow();
    return swift_deallocPartialClassInstance();
  }

  if (__OFSUB__(a9, 1))
  {
    goto LABEL_113;
  }

  v31 = a6;
  result = a7;
  v32 = a8;
  if (((a9 - 1) & a9) != 0)
  {
    v29 = "Dimension must be power of 2.";
    v28 = 0xD00000000000001ELL;
    v30 = 8;
    goto LABEL_22;
  }

  v107 = a4;
  v34 = v20;
  v29 = "Block size must be power of 2.";
  v28 = 0xD00000000000002CLL;
  v30 = 8;
  if (a9 < 1 || v24 < a9)
  {
    goto LABEL_22;
  }

  v126[4] = v24;
  v126[5] = a9;
  v35 = v24 / a9;
  v36 = v126;
  v126[6] = v35;
  v126[7] = v124;
  v126[2] = v26;
  v126[3] = v27;
  v37 = MEMORY[0x277D84F90];
  v38 = v34;
  v39 = a10;
  if (a8 > 0x3F)
  {
LABEL_28:
    v102 = v31 + 32;
    v103 = result + 4;
    v108 = v37;
    v106 = v37 + 32;
    if (v32 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v40 = v120;
    }

    else
    {
      v40 = 0;
    }

    if (v32 <= 0xFFFFFFFFFFFFFFC0)
    {
      v41 = 0;
    }

    else
    {
      v41 = 1uLL >> -v32;
    }

    v42 = 0;
    result = &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd;
    v99 = v41;
    v100 = v40;
    while (1)
    {
      if (v42 == v39)
      {
        goto LABEL_114;
      }

      if (a8 <= 0xFFFFFFFFFFFFFFBFLL)
      {
        v43 = v40;
      }

      else
      {
        v43 = v41;
      }

      v44 = v43 / v39;
      v45 = v44 * v42;
      if ((v44 * v42) >> 64 != (v44 * v42) >> 63)
      {
        goto LABEL_115;
      }

      v46 = v103[v42];
      v101 = v42;
      v47 = (v102 + 16 * v42);
      v119 = *v47;
      v105 = v47[1];
      v48 = v36[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd, &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMR);
      v49 = swift_allocObject();
      v50 = v49;
      *(v49 + 16) = xmmword_270C44540;
      *(v49 + 32) = 0;
      *(v49 + 40) = v46;
      *(v49 + 48) = v107 == 1;
      if (v48)
      {
        break;
      }

      v51 = MEMORY[0x277D84F90];
      v52 = *(MEMORY[0x277D84F90] + 16);
      if (v52)
      {
        v110 = v45;
        v121 = v49;
LABEL_44:
        v115 = v48 - 1;
        v53 = __OFSUB__(v48, 1);
        v117 = v53;
        swift_bridgeObjectRetain_n();

        while (1)
        {
          v57 = *(v51 + 4);
          v56 = *(v51 + 5);
          v58 = v51[48];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v52 - 1) > *(v51 + 3) >> 1)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v52, 1, v51);
          }

          outlined destroy of EvalNode((v51 + 32));
          v60 = *(v51 + 2);
          memmove(v51 + 32, v51 + 56, 24 * v60 - 24);
          *(v51 + 2) = v60 - 1;
          specialized DPFOneBlockSparse.evalNextChildren(nonce:node:internalCwList:)(a5, v57, v56, v58, v119, v127);
          if (v38)
          {
            break;
          }

          v62 = v127[0];
          v61 = v127[1];
          v63 = v128;
          v64 = v129;
          v65 = v130;
          v66 = v131;

          if (v117)
          {
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          if (v57 >= v115)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v73 = v121;
            }

            else
            {
              v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 16) + 1, 1, v121);
            }

            v75 = *(v73 + 2);
            v74 = *(v73 + 3);
            v76 = v74 >> 1;
            v70 = v75 + 1;
            if (v74 >> 1 <= v75)
            {
              v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v73);
              v74 = *(v73 + 3);
              v76 = v74 >> 1;
            }

            *(v73 + 2) = v70;
            v77 = &v73[24 * v75];
            *(v77 + 4) = v62;
            *(v77 + 5) = v61;
            v77[48] = v63;
            v72 = v75 + 2;
            if (v76 < v72)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v72, 1, v73);
              v121 = v54;
            }

            else
            {
              v121 = v73;
              v54 = v73;
            }
          }

          else
          {
            v68 = *(v51 + 2);
            v67 = *(v51 + 3);
            v69 = v67 >> 1;
            v70 = v68 + 1;
            if (v67 >> 1 <= v68)
            {
              v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, v51);
              v67 = *(v51 + 3);
              v69 = v67 >> 1;
            }

            *(v51 + 2) = v70;
            v71 = &v51[24 * v68];
            *(v71 + 4) = v62;
            *(v71 + 5) = v61;
            v71[48] = v63;
            v72 = v68 + 2;
            if (v69 < v72)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v72, 1, v51);
              v51 = v54;
            }

            else
            {
              v54 = v51;
            }
          }

          *(v54 + 2) = v72;
          v55 = &v54[24 * v70];
          *(v55 + 4) = v64;
          *(v55 + 5) = v65;
          v55[48] = v66;
          v52 = *(v51 + 2);
          v38 = 0;
          v36 = v126;
          if (!v52)
          {

            v50 = v121;
            v45 = v110;
            goto LABEL_70;
          }
        }
      }

LABEL_70:
      v78 = *(v50 + 16);
      if (v78 != v36[6])
      {
        goto LABEL_117;
      }

      if (v78)
      {
        v79 = 0;
        v116 = v50 + 32;
        v122 = v50;
        v104 = *(v50 + 16);
        while (v79 < *(v50 + 16))
        {
          v111 = v45;
          v81 = v36[5];
          if ((v81 - 0x2000000000000000) >> 62 != 3)
          {
            goto LABEL_112;
          }

          v118 = v79;
          v82 = *(v116 + 24 * v79 + 16);
          v83 = v36[3];

          v85 = _s4VDAF31BatchedExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binder10generatingxAA4SeedV_Says5UInt8VGAMSitFZAA19XofHmacSha256Aes128C_Tt3g5(v84, v83, a5, v81);
          v86 = _s4VDAF12FieldElementPAAE19randomVectorBatched5count5usingSayxGSi_qd__tAA0F24ExtendableOutputFunctionRd__lFZAA7Field32V_AA19XofHmacSha256Aes128CTt1g5(v81, v85);

          v127[0] = v86;
          if (v82)
          {
            result = specialized Array<A>.elementwiseAdd(_:)(v105);
            v87 = v107;
            if (v38)
            {
            }

            v86 = v127[0];
          }

          else
          {
            v87 = v107;
          }

          v88 = v108;
          if (v87 == 1)
          {
            v89 = *(v86 + 2);
            if (v89)
            {
              v125 = v38;
              v132 = MEMORY[0x277D84F90];
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89, 0);
              v90 = v132;
              v91 = 32;
              do
              {
                v92 = *&v86[v91];
                if (v92)
                {
                  v93 = -1048575 - v92;
                  if (v92 > 0xFFF00001)
                  {
                    goto LABEL_107;
                  }
                }

                else
                {
                  v93 = 0;
                }

                v132 = v90;
                v95 = *(v90 + 16);
                v94 = *(v90 + 24);
                if (v95 >= v94 >> 1)
                {
                  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
                  v90 = v132;
                }

                *(v90 + 16) = v95 + 1;
                *(v90 + 4 * v95 + 32) = v93;
                v91 += 4;
                --v89;
              }

              while (v89);

              v38 = v125;
              v36 = v126;
            }

            else
            {

              v90 = MEMORY[0x277D84F90];
            }

            v127[0] = v90;
            v86 = v90;
            v88 = v108;
          }

          v96 = *(v86 + 2);
          if (v96)
          {
            v97 = (v86 + 32);
            v80 = v111;
            while ((v111 & 0x8000000000000000) == 0)
            {
              if (v80 >= *(v88 + 16))
              {
                goto LABEL_106;
              }

              v98 = *v97++;
              *(v106 + 4 * v80++) = v98;
              if (!--v96)
              {
                goto LABEL_74;
              }
            }

            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v80 = v111;
LABEL_74:

          v45 = v80;
          v79 = v118 + 1;
          v50 = v122;
          if (v118 + 1 == v104)
          {
            goto LABEL_100;
          }
        }

        goto LABEL_111;
      }

LABEL_100:
      v42 = v101 + 1;

      v39 = a10;
      v41 = v99;
      v40 = v100;
      result = &_ss23_ContiguousArrayStorageCy4VDAF8EvalNodeVGMd;
      if (v101 + 1 == a10)
      {

        *v109 = v108;
        return result;
      }
    }

    v110 = v45;
    v51 = v49;
    v121 = MEMORY[0x277D84F90];
    v52 = 1;
    goto LABEL_44;
  }

  if (a8 != 63)
  {
    v37 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v37 + 16) = v21;
    bzero((v37 + 32), 4 << a8);
    v32 = a8;
    v31 = a6;
    result = a7;
    goto LABEL_28;
  }

LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
  return result;
}

uint64_t _s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_10Foundation4DataVTt1g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v72 = type metadata accessor for Data.Iterator();
  v7 = *(v72 - 8);
  result = MEMORY[0x28223BE20](v72);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a2;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = HIWORD(v77);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(MEMORY[0x277D84F90] + 16), 0, MEMORY[0x277D84F90]);
    result = outlined consume of Data._Representation(a1, v77);
    *a3 = v26;
    return result;
  }

  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = __OFSUB__(v11, v12);
  LOBYTE(v11) = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_8:
    LOBYTE(v11) = BYTE4(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_94;
    }
  }

LABEL_9:
  if ((v11 & 0x1F) != 0)
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v79 = 0xD000000000000043;
    v80 = 0x8000000270C532A0;
    v81 = 32;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v14);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    if (v10 == 2)
    {
      v28 = *(a1 + 16);
      v27 = *(a1 + 24);
      outlined consume of Data._Representation(a1, v77);
      v15 = v27 - v28;
      if (!__OFSUB__(v27, v28))
      {
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (v10 == 1)
    {
      result = outlined consume of Data._Representation(a1, v77);
      LODWORD(v15) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_95;
      }

      v15 = v15;
      goto LABEL_28;
    }

    v29 = BYTE6(v77);
    outlined consume of Data._Representation(a1, v77);
    v15 = v29;
LABEL_28:
    v81 = v15;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v30);

    v31 = v79;
    v32 = v80;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v33 = v31;
    v33[1] = v32;
    return swift_willThrow();
  }

  v66 = a3;
  v67 = v3;
  if (!v10)
  {
    v34 = BYTE6(v77);
    if (*(MEMORY[0x277D84F90] + 16) <= ((v77 >> 53) & 7))
    {
      v35 = (v77 >> 53) & 7;
    }

    else
    {
      v35 = *(MEMORY[0x277D84F90] + 16);
    }

    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0, MEMORY[0x277D84F90]);
    v36 = v34;
    goto LABEL_40;
  }

  if (v10 != 2)
  {
    v37 = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_97;
    }

    v38 = v37 + 31;
    if (v37 >= 0)
    {
      v38 = HIDWORD(a1) - a1;
    }

    v39 = v38 >> 5;
    if (*(MEMORY[0x277D84F90] + 16) <= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = *(MEMORY[0x277D84F90] + 16);
    }

    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0, MEMORY[0x277D84F90]);
    v36 = v37;
LABEL_40:
    v21 = a1;
    v24 = v36;
    if (v36 < 1)
    {
LABEL_84:
      result = outlined consume of Data._Representation(v21, v77);
      *v66 = v25;
      return result;
    }

    goto LABEL_41;
  }

  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v13 = __OFSUB__(v16, v17);
  v18 = v16 - v17;
  if (v13)
  {
    goto LABEL_96;
  }

  v19 = v18 / 32;
  if (*(MEMORY[0x277D84F90] + 16) <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(MEMORY[0x277D84F90] + 16);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0, MEMORY[0x277D84F90]);
  v21 = a1;
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v24 = v22 - v23;
  if (__OFSUB__(v22, v23))
  {
    goto LABEL_98;
  }

  v25 = result;
  if (v24 < 1)
  {
    goto LABEL_84;
  }

LABEL_41:
  v41 = 0;
  v73 = v21 >> 32;
  v74 = v21;
  v68 = (v7 + 8);
  v69 = v24;
  v70 = BYTE6(v77);
  v75 = v10;
  v76 = v21;
  while (1)
  {
    v42 = v41 + 32;
    v43 = __OFADD__(v41, 32);
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        v45 = 0;
        v44 = 0;
        goto LABEL_54;
      }

      v44 = *(v21 + 16);
      result = v44 + v41;
      if (__OFADD__(v44, v41))
      {
        goto LABEL_91;
      }

      v45 = *(v21 + 24);
    }

    else
    {
      if (!v10)
      {
        v44 = 0;
        v45 = v70;
LABEL_54:
        result = v41;
        goto LABEL_55;
      }

      v44 = v74;
      result = v74 + v41;
      if (__OFADD__(v74, v41))
      {
        goto LABEL_90;
      }

      v45 = v73;
    }

LABEL_55:
    if (result < v44 || v45 < result)
    {
      break;
    }

    v46 = result + 32;
    if (__OFADD__(result, 32))
    {
      goto LABEL_86;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v47 = *(v21 + 16);
        v48 = *(v21 + 24);
      }

      else
      {
        v48 = 0;
        v47 = 0;
      }
    }

    else
    {
      v48 = v73;
      v47 = v74;
      if (!v10)
      {
        v47 = 0;
        v48 = v70;
      }
    }

    if (v48 < v46 || v46 < v47)
    {
      goto LABEL_87;
    }

    if (v46 < result)
    {
      goto LABEL_88;
    }

    v78 = v25;
    result = Data._Representation.subscript.getter();
    v50 = result;
    v51 = v49;
    v52 = v49 >> 62;
    if ((v49 >> 62) > 1)
    {
      if (v52 != 2)
      {
        goto LABEL_78;
      }

      v55 = *(result + 16);
      v54 = *(result + 24);
      v53 = v54 - v55;
      if (__OFSUB__(v54, v55))
      {
        goto LABEL_93;
      }

      if (!v53)
      {
        goto LABEL_78;
      }
    }

    else if (v52)
    {
      v59 = HIDWORD(result) - result;
      if (__OFSUB__(HIDWORD(result), result))
      {
        goto LABEL_92;
      }

      v53 = v59;
      if (!v59)
      {
LABEL_78:
        v56 = v43;
        outlined consume of Data._Representation(result, v49);
        v57 = MEMORY[0x277D84F90];
        goto LABEL_81;
      }
    }

    else
    {
      v53 = BYTE6(v49);
      if (!BYTE6(v49))
      {
        goto LABEL_78;
      }
    }

    v56 = v43;
    if (v53 < 1)
    {
      v57 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v57 = swift_allocObject();
      v58 = _swift_stdlib_malloc_size(v57);
      v57[2] = v53;
      v57[3] = 2 * v58 - 64;
    }

    v60 = v71;
    v61 = Data._copyContents(initializing:)();
    outlined consume of Data._Representation(v50, v51);
    result = (*v68)(v60, v72);
    v24 = v69;
    if (v61 != v53)
    {
      goto LABEL_89;
    }

LABEL_81:
    v25 = v78;
    v63 = *(v78 + 2);
    v62 = *(v78 + 3);
    if (v63 >= v62 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v78);
    }

    *(v25 + 2) = v63 + 1;
    *&v25[8 * v63 + 32] = v57;
    v41 += 32;
    v64 = (v42 < v24) & ~v56;
    LODWORD(v10) = v75;
    v21 = v76;
    if ((v64 & 1) == 0)
    {
      goto LABEL_84;
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
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

char *_s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt1g5@<X0>(size_t a1@<X0>, size_t a2@<X1>, char **a3@<X8>)
{
  if (a1)
  {
    v5 = a2 - a1;
    if (((a2 - a1) & 0x1F) != 0)
    {
      _StringGuts.grow(_:)(37);

      v6 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v6);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v21[6] = v5;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v7);

      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v8 = 0xD000000000000043;
      v8[1] = 0x8000000270C532A0;
      return swift_willThrow();
    }

    v10 = v5 >> 5;
  }

  else
  {
    v10 = 0;
  }

  if (*(MEMORY[0x277D84F90] + 16) <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(MEMORY[0x277D84F90] + 16);
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0, MEMORY[0x277D84F90]);
  v12 = result;
  if (a1 && (v13 = a2 - a1, (a2 - a1) >= 1))
  {
    v14 = 0;
    while (1)
    {
      v15 = v14 + 32;
      if (__OFADD__(v14, 32))
      {
        break;
      }

      if (v15 > v13)
      {
        goto LABEL_21;
      }

      if (v15 < v14)
      {
        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = 32;
      v16[3] = 2 * v17 - 64;
      result = specialized Slice._copyContents(initializing:)(v21, v16 + 4, 32, v14, v14 + 32, a1, a2);
      if (result != 32)
      {
        goto LABEL_23;
      }

      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 2) = v19 + 1;
      *&v12[8 * v19 + 32] = v16;
      v14 += 32;
      if (v15 >= v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
    *a3 = v12;
  }

  return result;
}

unint64_t specialized PreambleKWay.shard<A>(_:nonce:seedBytes:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, Swift::Int a8)
{
  v16 = 1 << a6;
  if (a6 >= 0x40)
  {
    v16 = 0;
  }

  if (a6 > 0x40)
  {
    v16 = 0;
  }

  if (!a8)
  {
    __break(1u);
LABEL_76:
    v53 = v11;
    v44 = "Block size must be power of 2.";
    v45 = v16 + 27;
    v46 = 8;
    if (v9 < 1 || v14 < v9)
    {
      goto LABEL_74;
    }

    v76[4] = v14;
    v76[5] = v9;
    v76[6] = v14 / v9;
    v76[7] = v53;
    v76[2] = v13;
    v76[3] = v15;
    v84 = v82;
    v86 = v77;
    v87 = 0;
    v88 = v75;
    v89 = 0;
    v90 = 0;
    if (v8)
    {
      v54 = v82;
      if (v82 < 0)
      {
        v60 = v82;
      }

      else
      {
        v60 = v82 & 0xFFFFFFFFFFFFFF8;
      }

      v55 = MEMORY[0x2743B2FD0](v60);
    }

    else
    {
      v54 = v82;
      v55 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v61 = v12;

    if (v55)
    {
      v62 = 0;
      v80 = v54 & 0xC000000000000001;
      v74 = v54 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v80)
        {
          result = MEMORY[0x2743B2D10](v62, v54);
          v63 = result;
          v64 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_117;
          }
        }

        else
        {
          if (v62 >= *(v74 + 16))
          {
            goto LABEL_118;
          }

          v63 = *(v54 + 8 * v62 + 32);

          v64 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_117;
          }
        }

        v22 = v61;
        v85 = v64;
        v65 = specialized Zip2Sequence.Iterator.next()();
        if (!v65)
        {
          goto LABEL_107;
        }

        v67 = specialized DPFOneBlockSparse.gen(leafParent:nonce:seedParty0:seedParty1:)(v63, v81, v65, v66);
        if (v83)
        {
          break;
        }

        v69 = v67;
        v70 = v68;

        v72 = v61[2];
        v71 = v61[3];
        if (v72 >= v71 >> 1)
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v61);
        }

        v61[2] = v72 + 1;
        v73 = &v61[2 * v72];
        v73[4] = v69;
        v73[5] = v70;
        ++v62;
        v54 = v82;
        if (v64 == v55)
        {
          goto LABEL_108;
        }
      }

      return v22;
    }

LABEL_108:

    *v78 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4VDAF22PreambleKWayInputShareVyAC19XofHmacSha256Aes128CGGMd, &_ss23_ContiguousArrayStorageCy4VDAF22PreambleKWayInputShareVyAC19XofHmacSha256Aes128CGGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_270C44550;
    *(v22 + 32) = v77;
    *(v22 + 40) = v75;

    return v22;
  }

  v9 = a7;
  v22 = result;
  if (a8 == -1 && v16 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    v14 = v16 / a8;
    result = _s4VDAF10LeafParentC04makeB22ParentsFromSuperBlocks11measurement14superBlockSize0jK5Count05blockL0SayACyxGGSDySiqd__G_S3itKSzRd__lFZAA7Field32V_s5Int32VTt3g5(a2, v16 / a8, a8, a7);
    if (v10)
    {
      return v22;
    }

    v16 = result & 0xFFFFFFFFFFFFFF8;
    v8 = result >> 62;
    if (!(result >> 62))
    {
      v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23 == a8)
      {
        goto LABEL_11;
      }

LABEL_84:

      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(60);
      MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C53250);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v58);

      MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C53280);
      v91 = v23;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v59);

      lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
      v22 = swift_allocError();
      *v49 = 0;
      *(v49 + 8) = 0xE000000000000000;
      *(v49 + 16) = 0;
      v50 = 6;
      goto LABEL_85;
    }
  }

  if ((result & 0x8000000000000000) != 0)
  {
    v16 = result;
  }

  v78 = v22;
  v82 = result;
  v56 = v8;
  v57 = MEMORY[0x2743B2FD0](v16);
  v8 = v56;
  v23 = v57;
  result = v82;
  v22 = v78;
  if (v23 != a8)
  {
    goto LABEL_84;
  }

LABEL_11:
  v81 = a3;
  v24 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(a5);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v24 != 2)
  {
    v25 = 0;
    goto LABEL_21;
  }

  v27 = *(a4 + 16);
  v26 = *(a4 + 24);
  v28 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v28)
  {
    __break(1u);
LABEL_18:
    LODWORD(v25) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v25 = v25;
  }

LABEL_21:
  if ((a8 - 0x400000000000000) >> 59 != 31)
  {
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:

    v61 = v22;
    goto LABEL_108;
  }

  if (32 * a8 + 0x4000000000000000 < 0)
  {
    goto LABEL_106;
  }

  if (v25 != a8 << 6)
  {

    if (v24 <= 1)
    {
      if (!v24)
      {
        goto LABEL_29;
      }

      v36 = HIDWORD(a4) - a4;
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
LABEL_40:
        v9 = v36;
        goto LABEL_70;
      }

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

    if (v24 != 2)
    {
LABEL_69:
      v9 = 0;
      goto LABEL_70;
    }

    v35 = *(a4 + 16);
    v34 = *(a4 + 24);
    v9 = v34 - v35;
    if (!__OFSUB__(v34, v35))
    {
      goto LABEL_70;
    }

    __break(1u);
LABEL_37:
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v33 = a4;
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(a4, (HIDWORD(a4) - a4 + ((HIDWORD(a4) - a4) >> 31)) >> 1, a4, a5);
    v32 = result;
    goto LABEL_43;
  }

  v82 = result;
  v83 = v10;
  v78 = v22;
  v79 = v8;
  if (v24 <= 1)
  {
    if (!v24)
    {
      v29 = (a5 >> 49) & 0x7F;
LABEL_42:
      result = specialized RandomAccessCollection<>.index(_:offsetBy:)(0, v29, a4, a5);
      v32 = result;
      v33 = 0;
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  if (v24 != 2)
  {
    v29 = 0;
    goto LABEL_42;
  }

  result = *(a4 + 16);
  v30 = *(a4 + 24);
  v28 = __OFSUB__(v30, result);
  v31 = v30 - result;
  if (v28)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(result, v31 / 2, a4, a5);
  v32 = result;
  v33 = *(a4 + 16);
LABEL_43:
  if (v32 < v33)
  {
    __break(1u);
    goto LABEL_111;
  }

  v37 = Data._Representation.subscript.getter();
  result = _s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_10Foundation4DataVTt1g5(v37, v38, &v84);
  v22 = v83;
  if (v83)
  {
LABEL_54:

    return v22;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v39 = *(a4 + 24);
    }

    else
    {
      v39 = 0;
    }
  }

  else if (v24)
  {
    v39 = a4 >> 32;
  }

  else
  {
    v39 = BYTE6(a5);
  }

  if (v39 < v32)
  {
    goto LABEL_112;
  }

  v77 = v84;
  v40 = Data._Representation.subscript.getter();
  _s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_10Foundation4DataVTt1g5(v40, v41, &v84);
  v42 = v84;
  if (*(v77 + 2) != a8 || *(v84 + 2) != a8)
  {

    if (v24 > 1)
    {
LABEL_65:
      if (v24 == 2)
      {
        v48 = *(a4 + 16);
        v47 = *(a4 + 24);
        v9 = v47 - v48;
        if (!__OFSUB__(v47, v48))
        {
          goto LABEL_70;
        }

        __break(1u);
      }

      goto LABEL_69;
    }

    if (v24)
    {
      v36 = HIDWORD(a4) - a4;
      if (!__OFSUB__(HIDWORD(a4), a4))
      {
        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_65;
    }

LABEL_29:
    v9 = BYTE6(a5);
LABEL_70:
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    v22 = swift_allocError();
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    *v49 = v9;
    v50 = 1;
LABEL_85:
    *(v49 + 24) = v50;
    swift_willThrow();
    return v22;
  }

  v83 = 0;
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a8, 0, MEMORY[0x277D84F90]);
  specialized PreambleKWay.innerLevelCount.getter(a6, v9, a8);
  v11 = v43;
  v13 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(10);
  v15 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA12PreambleKWayVyAA7Field32Vs5Int32VAA19XofHmacSha256Aes128CG_Tt0B5(11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF17DPFOneBlockSparseCyAA7Field32VAA19XofHmacSha256Aes128CGMd, &_s4VDAF17DPFOneBlockSparseCyAA7Field32VAA19XofHmacSha256Aes128CGMR);
  result = swift_allocObject();
  v76 = result;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_116;
  }

  v16 = 0xD000000000000011;
  v8 = v79;
  v75 = v42;
  if (((v14 - 1) & v14) != 0)
  {
    v44 = "ntrol bits value not 0 or 1: ";
    v45 = 0xD00000000000001DLL;
    v46 = 7;
LABEL_74:

    v51 = v44 | 0x8000000000000000;
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    v22 = swift_allocError();
    *v52 = v45;
    *(v52 + 8) = v51;
    *(v52 + 16) = 0;
    *(v52 + 24) = v46;
    swift_willThrow();
    swift_deallocPartialClassInstance();
    goto LABEL_54;
  }

  if (!__OFSUB__(v9, 1))
  {
    if (((v9 - 1) & v9) != 0)
    {
      v44 = "Dimension must be power of 2.";
      v45 = 0xD00000000000001ELL;
      v46 = 8;
      goto LABEL_74;
    }

    goto LABEL_76;
  }

LABEL_119:
  __break(1u);
  return result;
}

uint64_t specialized Zip2Sequence.Iterator.next()()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 8 * v2 + 32);
    *(v0 + 8) = v2 + 1;
    v5 = *(v0 + 24);
    v6 = *(*(v0 + 16) + 16);
    if (v5 == v6)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v5 < v6)
    {
      *(v0 + 24) = v5 + 1;

      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t PreambleKWay<>.shardAndEncode(_:nonce:seedBytes:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v5[2];
  outlined copy of Data._Representation(a2, a3);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a2, a3);
  v16 = specialized PreambleKWay.shard<A>(_:nonce:seedBytes:)(&v30, a1, v15, a4, a5, v12, v13, v14);

  if (v6)
  {
    return a5;
  }

  a5 = specialized VDAFEncodable.encodedData.getter(v30);

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_11:

    return a5;
  }

  v31 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
  v19 = 32;
  v20 = v31;
  while (1)
  {
    v21 = *(v16 + v19);
    v22 = *(v21 + 16);
    v23 = v22 ? *(*(v21 + 32) + 16) : 0;
    v24 = v23 * v22;
    if ((v23 * v22) >> 64 != (v23 * v22) >> 63)
    {
      break;
    }

    *&v30 = specialized Data._Representation.init(capacity:)(v24);
    *(&v30 + 1) = v25;
    specialized Collection<>.encode<A>(into:)(&v30, v21);

    v26 = v30;
    v31 = v20;
    v28 = *(v20 + 16);
    v27 = *(v20 + 24);
    if (v28 >= v27 >> 1)
    {
      v29 = v30;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
      v26 = v29;
      v20 = v31;
    }

    *(v20 + 16) = v28 + 1;
    *(v20 + 16 * v28 + 32) = v26;
    v19 += 8;
    if (!--v17)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

char *PreambleKWay<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5)
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v5[2];
  outlined copy of Data._Representation(a2, a3);
  v15 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a2, a3);
  v16 = specialized PreambleKWay.shard<A>(_:nonce:seedBytes:)(&v25, a1, v15, a4, a5, v12, v13, v14);

  if (!v6)
  {
    a5 = specialized VDAFEncodable.encodedBytes.getter(v25);

    v17 = *(v16 + 16);
    if (v17)
    {
      v25 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v18 = 32;
      v19 = v25;
      do
      {

        v21 = specialized VDAFEncodable.encodedBytes.getter(v20);

        v25 = v19;
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        if (v23 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
          v19 = v25;
        }

        *(v19 + 16) = v23 + 1;
        *(v19 + 8 * v23 + 32) = v21;
        v18 += 8;
        --v17;
      }

      while (v17);
    }
  }

  return a5;
}

void PreambleKWay<>.prepareInitAndEncodeIntoBytes(verifyKey:aggregatorID:nonce:encodedPublicShare:encodedInputShare:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, _BYTE *a6, _BYTE *a7, size_t a8, size_t a9)
{
  v16 = *v9;
  v15 = v9[1];
  v17 = v9[2];
  outlined copy of Data._Representation(a1, a2);
  v18 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v19 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  specialized PreambleKWay.innerLevelCount.getter(v16, v15, v17);
  v21 = 34 * v20;
  if ((v20 * 34) >> 64 != (34 * v20) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v15 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = __OFADD__(v21, 4 * v15);
  v23 = v21 + 4 * v15;
  if (v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v35 = 32;
  *(&v35 + 1) = v15;
  v36 = v20;
  v37 = 0;
  v38 = v17;
  v39 = v23;
  v40 = 0;
  v24 = _sSa4VDAFAA13VDAFDecodableRzlE4from9parameterSayxGqd___18DecodableParameterQzSg07elementF0_Si5countSi0G13EncodedLengthtSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA25OneBlockSparsePublicShareVyAA7Field32VG_SWTt1B5(a6, a7, &v35);
  if (v33)
  {

    return;
  }

  v25 = v24;
  _s4VDAF22PreambleKWayInputShareV4fromACyxGqd___tKcSkRd__s5UInt8V7ElementRtd__lufCAA19XofHmacSha256Aes128C_SWTt1g5(a8, a9, &v34);
  _s4VDAF12PreambleKWayV11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputL09parameterAA0B12PrepareStateVyxG_AA0boL0VyxGtSays5UInt8VG_SiAsA0bc6PublicL0VyxGAA0bc5InputL0Vyq0_GAA11VoidCodableVtKFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CTt6B5(&v41, v26, v18, a3, v19, v25, v34, v16, v15, v17);

  v27 = v41;
  v28 = *(v41 + 2);
  if (!(v28 >> 61))
  {
    v29 = MEMORY[0x277D84F90];
    v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v28, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v41, v27);

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0, v29);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t PreambleKWay<>.encodedPrepareMessageFrom(encodedShares:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v7 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v7;
    v3 = *(v7 + 16);
    do
    {
      v8 = v2;
      v4 = *(v2 + 24);
      v5 = v3 + 1;
      if (v3 >= v4 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v3 + 1, 1);
        v2 = v8;
      }

      *(v2 + 16) = v5;
      v3 = v5;
      --v1;
    }

    while (v1);
  }

  return 0;
}

char *PreambleKWay<>.prepareNextAndEncodeIntoBytes(aggregatorID:encodedState:encodedMessage:)(uint64_t a1, char *a2, _BYTE *a3)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a2, a3);
  if (v3)
  {
    return v5;
  }

  v6 = *(result + 2);
  if (!(v6 >> 61))
  {
    v7 = result;
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4 * v6, 0, MEMORY[0x277D84F90]);
    specialized Collection<>.encode<A>(into:)(&v8, v7);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t *PreambleKWay<>.encodedAggregateShare(_:)(uint64_t *result)
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

char *PreambleKWay<>.outputShare(from:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, char **a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field32V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t PreambleKWay<>.unshardAndEncodeIntoBytes(_:numOfMeasurements:)(void *a1)
{
  result = _s4VDAF12PreambleKWayV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(a1, *v1);
  if (!v2)
  {
    v4 = specialized VDAFEncodable.encodedBytes.getter();

    return v4;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = MEMORY[0x2743B3150](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySiSaySiGGMd, &_ss18_DictionaryStorageCySiSaySiGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySiSay4VDAF4LeafVyAC7Field32VGGGMd, &_ss18_DictionaryStorageCySiSay4VDAF4LeafVyAC7Field32VGGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMd, &_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x2743B3150](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      result = MEMORY[0x2743B3150](*(v9 + 40), v22);
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      *(*(v9 + 56) + 8 * v17) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v32;
    if (v31 >= 64)
    {
      bzero((v7 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySiSaySiGGMd, &_ss18_DictionaryStorageCySiSaySiGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySiSay4VDAF4LeafVyAC7Field32VGGGMd, &_ss18_DictionaryStorageCySiSay4VDAF4LeafVyAC7Field32VGGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMd, &_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SaySiGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSaySiGGMd, &_ss18_DictionaryStorageCySiSaySiGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMd, &_ss18_DictionaryStorageCySi4VDAF10LeafParentC14SuperBlockDataCyAC7Field32V_GGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s4VDAF12PreambleKWayV7unshard_17numOfMeasurements9parameterSayq_Gqd___SiAA11VoidCodableVtKSkRd__AA14AggregateShareVyxG7ElementRtd__lFAA7Field32V_s5Int32VAA19XofHmacSha256Aes128CSayAKyAPGGTt1B5Tf4ndn_n(void *a1, unint64_t a2)
{
  v21 = a1;
  v2 = a1[2];
  if (v2 != 2)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = v2;
    *(v16 + 24) = 0;
LABEL_24:
    swift_willThrow();
    return v2;
  }

  v3 = 1 << a2;
  if (a2 >= 0x40)
  {
    v3 = 0;
  }

  if (a2 <= 0x40)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (*(a1[4] + 16) != v4 || *(a1[5] + 16) != v4)
  {
    lazy protocol witness table accessor for type PreambleError and conformance PreambleError();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = 2;
    *(v17 + 24) = 12;
    goto LABEL_24;
  }

  MEMORY[0x28223BE20](a1);
  v18[2] = &v21;
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF7Field32Vs5NeverOTg5(partial apply for specialized closure #2 in Preamble.unshard<A>(_:numOfMeasurements:parameter:), v18, 0, v5);
  v7 = *(v6 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v19 = v6;
  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  result = v19;
  v2 = v20;
  v9 = 0;
  while (v9 < *(result + 16))
  {
    v10 = *(result + 4 * v9 + 32);
    v11 = v10 + 4293918721 * (-1048577 * v10);
    if (v11 >= 0xFFF0000100000000)
    {
      v12 = 0;
    }

    else
    {
      v12 = HIDWORD(v11);
    }

    if (v12 <= 0x7FF80000)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 0xFFFFF;
    }

    v20 = v2;
    v15 = *(v2 + 16);
    v14 = *(v2 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      result = v19;
      v2 = v20;
    }

    ++v9;
    *(v2 + 16) = v15 + 1;
    *(v2 + 4 * v15 + 32) = v13;
    if (v7 == v9)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SHA256 and conformance SHA256()
{
  result = lazy protocol witness table cache variable for type SHA256 and conformance SHA256;
  if (!lazy protocol witness table cache variable for type SHA256 and conformance SHA256)
  {
    type metadata accessor for SHA256();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SHA256 and conformance SHA256);
  }

  return result;
}

uint64_t _sSays5UInt8VGSayxG10Foundation15ContiguousBytesAeBRszlWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PreambleKWayInputShare.init<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v68 = a6;
  v93 = a5;
  v10 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v81 = &v67 - v11;
  v12 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v79 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v67 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v77 = type metadata accessor for Range();
  v70 = *(v77 - 8);
  v16 = MEMORY[0x28223BE20](v77);
  v76 = &v67 - v17;
  v96 = v12;
  v72 = *(v12 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v85 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v83 = &v67 - v21;
  MEMORY[0x28223BE20](v20);
  v86 = &v67 - v22;
  v23 = (*(a4 + 8))(a2, a4);
  result = dispatch thunk of Collection.count.getter();
  v94 = v23;
  if (v23)
  {
    if (result == 0x8000000000000000 && v94 == -1)
    {
      goto LABEL_24;
    }

    if (result % v94)
    {
      v97 = 0;
      v98 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      type metadata accessor for PreambleKWayInputShare(0, a2, a4, v25);
      v26 = _typeName(_:qualified:)();
      v28 = v27;

      v97 = v26;
      v98 = v28;
      MEMORY[0x2743B25F0](0xD000000000000018, 0x8000000270C532F0);
      v99 = v94;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v29);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v99 = dispatch thunk of Collection.count.getter();
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v30);

      v31 = v97;
      v32 = v98;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v33 = v31;
      v33[1] = v32;
      swift_willThrow();
      return (*(*(a3 - 8) + 8))(a1, a3);
    }

    result = dispatch thunk of Collection.count.getter();
    if (result == 0x8000000000000000 && v94 == -1)
    {
      goto LABEL_25;
    }

    v34 = v94;
    v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (result / v34) & ~((result / v34) >> 63), 0, MEMORY[0x277D84F90]);
    v91 = a1;
    v92 = a3;
    v35 = dispatch thunk of Collection.count.getter();
    v36 = v35 >= 0;
    v75 = v35;
    if (v34 > 0)
    {
      v36 = v35 < 1;
    }

    v37 = v86;
    if (v36)
    {
LABEL_11:
      result = (*(*(v92 - 8) + 8))(v91);
      *v68 = v90;
      return result;
    }

    v89 = v10;
    v38 = 0;
    v39 = (v72 + 1);
    v74 = v72 + 2;
    v73 = (v87 + 16);
    v72 += 4;
    v71 = (v87 + 32);
    ++v70;
    v69 = (v88 + 8);
    v40 = v85;
    v95 = v39;
    while (1)
    {
      v41 = v38 + v94;
      if (__OFADD__(v38, v94))
      {
        v41 = ((v38 + v94) >> 63) ^ 0x8000000000000000;
      }

      v88 = v41;
      v42 = v83;
      dispatch thunk of Collection.startIndex.getter();
      v43 = v95;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v44 = *v43;
      (*v43)(v42, v96);
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v45 = *v74;
      v46 = v78;
      v47 = v96;
      (*v74)(v78, v37, v96);
      v48 = TupleTypeMetadata2;
      v45(&v46[*(TupleTypeMetadata2 + 48)], v40, v47);
      v49 = v79;
      (*v73)(v79, v46, v48);
      v50 = *(v48 + 48);
      v51 = *v72;
      v52 = v76;
      (*v72)(v76, v49, v47);
      v44(&v49[v50], v47);
      (*v71)(v49, v46, v48);
      v53 = v47;
      v54 = v77;
      v51(&v52[*(v77 + 36)], &v49[*(v48 + 48)], v53);
      v87 = v44;
      v44(v49, v53);
      v55 = v81;
      dispatch thunk of Collection.subscript.getter();
      (*v70)(v52, v54);
      v56 = AssociatedTypeWitness;
      v57 = swift_getAssociatedConformanceWitness();
      v58 = specialized Seed.init<A>(from:parameter:)(v55, v56, v57);
      (*v69)(v55, v56);
      v59 = v90;
      v61 = *(v90 + 2);
      v60 = *(v90 + 3);
      if (v61 >= v60 >> 1)
      {
        v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v90);
      }

      v40 = v85;
      v62 = v96;
      v63 = v87;
      v87(v85, v96);
      v64 = v86;
      v63(v86, v62);
      *(v59 + 2) = v61 + 1;
      v90 = v59;
      v65 = &v59[8 * v61];
      v37 = v64;
      *(v65 + 4) = v58;
      v38 = v88;
      v66 = v75 >= v88;
      if (v94 > 0)
      {
        v66 = v88 >= v75;
      }

      if (v66)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t PreambleKWayInputShare.init<A>(from:parameter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v16);
  PreambleKWayInputShare.init<A>(from:)(v15, a2, a3, a4, a5, &v19);
  result = (*(v13 + 8))(a1, a3);
  if (!v6)
  {
    *a6 = v19;
  }

  return result;
}

uint64_t PreambleKWayInputShare.encodedLength.getter()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = *(*(*v0 + 32) + 16);
  }

  else
  {
    v2 = 0;
  }

  result = v2 * v1;
  if ((v2 * v1) >> 64 != (v2 * v1) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t PreambleKWayInputShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay4VDAF4SeedVGMd, &_sSay4VDAF4SeedVGMR);
  v8 = lazy protocol witness table accessor for type [Seed] and conformance [A]();
  return Collection<>.encode<A>(into:)(a1, v7, a3, v8, a4, &protocol witness table for Seed);
}

unint64_t lazy protocol witness table accessor for type [Seed] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Seed] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Seed] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay4VDAF4SeedVGMd, &_sSay4VDAF4SeedVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Seed] and conformance [A]);
  }

  return result;
}

uint64_t type metadata instantiation function for PreambleKWayInputShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double PreambleKWayPublicShareDecodableParameter.init(innerLevelCount:keptBlockCount:seedSize:blockSize:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  OneBlockSparsePublicShareDecodableParameter.init(innerLevelCount:seedSize:blockSize:)(a1, a3, a4, &v9);
  v7 = v10;
  result = *&v9;
  *a5 = v9;
  *(a5 + 16) = v7;
  *(a5 + 24) = a2;
  return result;
}

uint64_t PreambleKWayPublicShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v9 + 32) == 1)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    swift_willThrow();
    return (*(v8 + 8))(a1, a4);
  }

  else
  {
    v29 = v13;
    v30 = v11;
    v18 = v9[2];
    v31 = v9[3];
    v32 = v12;
    v19 = v9[1];
    v33 = *v9;
    v20 = v33;
    v34 = v19;
    v35 = v18;
    v40 = v4;
    v21 = type metadata accessor for OneBlockSparsePublicShareDecodableParameter(0, a3, v11, v10);
    v22 = OneBlockSparsePublicShareDecodableParameter.encodedLength.getter(v21);
    (*(v8 + 16))(v15, a1, a4);
    v33 = v20;
    v34 = v19;
    v35 = v18;
    v36 = 0;
    v37 = v31;
    v38 = v22;
    v39 = 0;
    v24 = type metadata accessor for OneBlockSparsePublicShare(0, a3, v30, v23);
    WitnessTable = swift_getWitnessTable();
    v26 = v40;
    v27 = Array<A>.init<A>(from:parameter:)(v15, &v33, v24, a4, WitnessTable, v32);
    result = (*(v8 + 8))(a1, a4);
    if (!v26)
    {
      *v29 = v27;
    }
  }

  return result;
}

uint64_t static PreambleKWayPublicShare.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneBlockSparsePublicShare(0, a3, a4, a4);
  swift_getWitnessTable();

  return static Array<A>.== infix(_:_:)();
}

__n128 PreambleKWayPublicShareDecodableParameter.shares.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance PreambleKWayPublicShare<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v5;
  return PreambleKWayPublicShare.init<A>(from:parameter:)(a1, v8, *(a5 + 16), a3);
}

uint64_t PreambleKWayPublicShare.encodedLength.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneBlockSparsePublicShare(255, *(a1 + 16), *(a1 + 24), a4);
  v4 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encodedLength.getter(v4, WitnessTable, &protocol witness table for OneBlockSparsePublicShare<A>);
}

uint64_t PreambleKWayPublicShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneBlockSparsePublicShare(255, *(a2 + 16), *(a2 + 24), a4);
  v7 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  return Collection<>.encode<A>(into:)(a1, v7, a3, WitnessTable, a4, &protocol witness table for OneBlockSparsePublicShare<A>);
}

uint64_t type metadata instantiation function for PreambleKWayPublicShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for PreambleKWayPublicShareDecodableParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PreambleKWayPublicShareDecodableParameter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PreambleKWayPublicShareDecodableParameter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void discreteFourierTransform<A, B, C>(input:size:output:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v161 = a3;
  v154 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v142 = a10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v109[1] = AssociatedTypeWitness;
  v129 = swift_getAssociatedTypeWitness();
  v17 = *(v129 - 8);
  v18 = MEMORY[0x28223BE20](v129);
  v128 = v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v127 = v109 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v126 = v109 - v23;
  v134 = *(a5 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v131 = v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = a6;
  v135 = *(a6 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v120 = v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v119 = v109 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v118 = v109 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v113 = v109 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v141 = v109 - v35;
  MEMORY[0x28223BE20](v34);
  v153 = v109 - v36;
  v146 = a7;
  v37 = *(*(a7 + 8) + 8);
  v145 = swift_getAssociatedTypeWitness();
  v38 = *(v145 - 8);
  v39 = MEMORY[0x28223BE20](v145);
  v140 = v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v139 = v109 - v41;
  v122 = a8;
  v143 = *(a8 + 8);
  v160 = a5;
  v42 = swift_getAssociatedTypeWitness();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v130 = v109 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v149 = v109 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v50 = v109 - v49;
  MEMORY[0x28223BE20](v48);
  v156 = v109 - v51;
  specialized static BitReversal.indicesFor(_:)(a2);
  v155 = v52;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v151 = a9;
  v152 = v50;
  v159 = v42;
  v114 = a2;
  if (!a2)
  {

    v65 = v134;
    goto LABEL_11;
  }

  if (*(v155 + 2) < a2)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v148 = v37;
  v133 = v17;
  v53 = 0;
  v54 = (v43 + 1);
  v125 = v43;
  v147 = (v43 + 2);
  v138 = (v38 + 8);
  v136 = (v135 + 16);
  v150 = a4;
  v137 = (v43 + 1);
  v55 = v152;
  do
  {
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v157 = *v54;
    (v157)(v55, v42);
    v158 = v53;
    v57 = v42;
    v58 = *(v155 + v53 + 4);
    if (v58 >= dispatch thunk of Collection.count.getter())
    {
      v56 = v156;
      (*v147)(v55, v156, v57);
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      dispatch thunk of MutableCollection.subscript.setter();
      v42 = v57;
    }

    else
    {
      v59 = v140;
      dispatch thunk of Collection.startIndex.getter();
      v60 = v139;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v61 = *v138;
      v62 = v59;
      v63 = v145;
      (*v138)(v62, v145);
      (*v147)(v55, v156, v159);
      v64 = dispatch thunk of Collection.subscript.read();
      (*v136)(v153);
      v64(v162, 0);
      dispatch thunk of MutableCollection.subscript.setter();
      v56 = v156;
      v61(v60, v63);
      v54 = v137;
      v42 = v159;
    }

    v53 = (v158 + 1);
    (v157)(v56, v42);
  }

  while (v114 != v53);

  a2 = v114;
  v17 = v133;
  v65 = v134;
  v43 = v125;
LABEL_11:
  v110 = 0;
  v111 = __clz(__rbit64(a2));
  v109[2] = v142 + 72;
  v139 = (v142 + 88);
  v138 = (AssociatedConformanceWitness + 56);
  v137 = (v142 + 96);
  v124 = (v65 + 16);
  v158 = (v43 + 1);
  v117 = (v65 + 8);
  v157 = (v135 + 16);
  v125 = (v17 + 1);
  v150 = (v135 + 8);
  v116 = (v43 + 2);
  for (i = 1; ; i = v112)
  {
    if (i >= v111)
    {
      if ((i != v111) | v110 & 1)
      {
        return;
      }

      v110 = 1;
      v69 = v111;
    }

    else
    {
      v69 = i + 1;
    }

    v112 = v69;
    v70 = v142;
    v71 = v144;
    (*(v142 + 72))(v144, v142);
    static FieldElement.root(n:)(i, v71, v70, v113);
    if (i <= 0x3F)
    {
      v140 = 1 << i;
      v72 = 1 << i >> 1;
      if ((v72 & 0x8000000000000000) != 0)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (i)
      {
        break;
      }
    }

LABEL_12:
    v67 = *v150;
    v68 = v144;
    (*v150)(v113, v144);
    v67(v141, v68);
  }

  v121 = v114 >> i;
  v136 = swift_checkMetadataState();
  v145 = 0;
  v135 = *v139;
  v134 = *v138;
  v133 = *v137;
  v154 = 1 << i >> 1;
  while (1)
  {
    if (v145 >= v72)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (__OFADD__(v145, 1))
    {
      goto LABEL_34;
    }

    v115 = v145 + 1;
    v81 = v131;
    v82 = v159;
    v83 = v130;
    v84 = v161;
    if (v140 <= v114)
    {
      break;
    }

LABEL_21:
    v73 = v127;
    v74 = v144;
    v75 = v142;
    v76 = v135;
    (v135)(v144, v142);
    v77 = v128;
    v76(v74, v75);
    v78 = v126;
    (v134)(v73, v77);
    v79 = *v125;
    v80 = v129;
    (*v125)(v77, v129);
    v79(v73, v80);
    (v133)(v78, v74, v75);
    v145 = v115;
    v72 = v154;
    if (v115 == v154)
    {
      goto LABEL_12;
    }
  }

  v85 = 0;
  v123 = *v124;
  while (1)
  {
    v123(v81, v84, v160);
    dispatch thunk of Collection.startIndex.getter();
    if ((v140 * v85) >> 64 != (v140 * v85) >> 63)
    {
      break;
    }

    if (__OFADD__(v140 * v85, v145))
    {
      goto LABEL_31;
    }

    v148 = v85 + 1;
    v86 = v160;
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v156 = *v158;
    (v156)(v83, v82);
    (*v117)(v81, v86);
    v87 = dispatch thunk of Collection.subscript.read();
    v88 = *v157;
    v89 = v144;
    (*v157)(v153);
    v87(v162, 0);
    v90 = v152;
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v91 = dispatch thunk of Collection.subscript.read();
    v92 = v119;
    v155 = v88;
    v88(v119);
    v91(v162, 0);
    (v156)(v90, v159);
    v93 = v120;
    (v88)(v120, v141, v89);
    v94 = v118;
    v95 = v142;
    FieldElement.init(other:)(v93, v89, v142);
    v96 = v127;
    v97 = v135;
    (v135)(v89, v95);
    v98 = v128;
    v97(v89, v95);
    v99 = v126;
    (v134)(v96, v98);
    v100 = *v125;
    v101 = v98;
    v102 = v129;
    (*v125)(v101, v129);
    v100(v96, v102);
    (v133)(v99, v89, v95);
    v147 = *v150;
    v147(v92, v89);
    v103 = v149;
    (*v116)(v152, v149, v159);
    v104 = v153;
    (v155)(v93, v153, v89);
    FieldElement.init(other:)(v93, v89, v95);
    v146 = *(v95 + 8);
    dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
    dispatch thunk of MutableCollection.subscript.setter();
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    (v155)(v93, v104, v89);
    v105 = v93;
    v84 = v161;
    FieldElement.init(other:)(v105, v89, v95);
    dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
    v81 = v131;
    dispatch thunk of MutableCollection.subscript.setter();
    v106 = v147;
    v147(v94, v89);
    v107 = v104;
    v83 = v130;
    v108 = v89;
    v85 = v148;
    v106(v107, v108);
    v82 = v159;
    (v156)(v103, v159);
    if (v121 == v85)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v105 = a8;
  v102 = a7;
  v104 = a5;
  v101 = a4;
  v103 = a3;
  v109 = a2;
  v100 = a1;
  v110 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v123 = AssociatedConformanceWitness;
  v124 = AssociatedTypeWitness;
  v13 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v117 = *(v13 + 24);
  v127 = *(v117 + 2);
  v126 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v126);
  v125 = &v96 - v14;
  v15 = swift_checkMetadataState();
  v122 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v119 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v128 = &v96 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v112 = &v96 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v96 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v121 = &v96 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v116 = &v96 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v107 = &v96 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v111 = &v96 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v99 = &v96 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v96 - v36;
  v108 = *(a6 - 8);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v96 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v96 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v96 - v44;
  *&v129 = v109;
  v120 = lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v46 = v110;
  FieldElement.init(_:)(v37, a6, v110);
  (*(v108 + 16))(v40, v43, a6);
  v98 = v45;
  FieldElement.init(other:)(v40, a6, v46);
  v47 = *(v46 + 88);
  v97 = v43;
  v106 = a6;
  v47(a6, v46);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      *&v129 = 0;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = v122;
      (*(v122 + 8))(v37, v15);
      v49 = v123;
      if (v54)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v48 = dispatch thunk of BinaryInteger._lowWord.getter();
      v49 = v123;
      v50 = v122;
      if (!v48)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v51 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v52 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v51)
    {
      v50 = v122;
      v49 = v123;
      if (v52 > 64)
      {
        *&v129 = 0;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v53 = dispatch thunk of static Equatable.== infix(_:_:)();
        goto LABEL_17;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v56 = dispatch thunk of static Comparable.>= infix(_:_:)();
      (*(v50 + 8))(v37, v15);
      if ((v56 & 1) != 0 && !dispatch thunk of BinaryInteger._lowWord.getter())
      {
        goto LABEL_15;
      }
    }

    else
    {
      v49 = v123;
      if (v52 >= 64)
      {
        goto LABEL_16;
      }

      v55 = dispatch thunk of BinaryInteger._lowWord.getter();
      v50 = v122;
      if (!v55)
      {
        do
        {
LABEL_15:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_16:
          *&v129 = 0;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v53 = dispatch thunk of static Equatable.== infix(_:_:)();
          v50 = v122;
LABEL_17:
          (*(v50 + 8))(v37, v15);
        }

        while ((v53 & 1) != 0);
      }
    }
  }

  v96 = a9;
  v118 = swift_checkMetadataState();
  (*(v49 + 24))(v118, v49);
  v124 = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v57 = v116;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v58 = v107;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v59 = v50;
  v60 = *(v50 + 8);
  v60(v57, v15);
  v60(v37, v15);
  v61 = *(v59 + 16);
  v59 += 16;
  v61(v121, v111, v15);
  v117 = v61;
  v61(v24, v58, v15);
  *&v129 = 1;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v62 = v123;
  (*(v123 + 64))(v37);
  v60(v37, v15);
  v115 = v62 + 56;
  v116 = v24;
  v63 = (v59 + 16);
  v122 = v59;
  v113 = (v59 + 16);
  v114 = v13;
  while (1)
  {
    v69 = v128;
    v117(v128, v24, v15);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
    {
      v74 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v72 = v119;
      if (v74 >= 128)
      {
        lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        v129 = 0uLL;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        goto LABEL_35;
      }

LABEL_28:
      v75 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
      goto LABEL_31;
    }

    v70 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v71 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v70)
    {
      v72 = v119;
      if (v71 > 128)
      {
        break;
      }

      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v69 = v128;
      v73 = dispatch thunk of static Comparable.>= infix(_:_:)();
      v60(v37, v15);
      if ((v73 & 1) == 0)
      {
        v60(v69, v15);
        goto LABEL_36;
      }

      goto LABEL_28;
    }

    v72 = v119;
    if (v71 >= 128)
    {
      break;
    }

    v75 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v69 = v128;
LABEL_31:
    static FixedWidthInteger._truncatingInit<A>(_:)(v69, &type metadata for _UInt128, v15, v75, v13, &v129);
    v60(v69, v15);
    if (v129 == 0)
    {
      goto LABEL_50;
    }

LABEL_36:
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of static BinaryInteger.& infix(_:_:)();
    v60(v37, v15);
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      v77 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v78 = dispatch thunk of BinaryInteger.bitWidth.getter();
      v79 = v78 < 128;
      if (v77)
      {
        if (v78 > 128)
        {
          lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
          v129 = 0uLL;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v80 = v72;
          v81 = dispatch thunk of static Equatable.== infix(_:_:)();
          v60(v37, v15);
          v60(v80, v15);
          v64 = v123;
          v65 = v121;
          v66 = v118;
          if ((v81 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v85 = dispatch thunk of static Comparable.>= infix(_:_:)();
        v60(v37, v15);
        if ((v85 & 1) == 0)
        {
          v60(v72, v15);
          v64 = v123;
          v65 = v121;
          v66 = v118;
          v63 = v113;
LABEL_20:
          v67 = v112;
          (*(v64 + 56))(v112, v65, v66, v64);
          v60(v67, v15);
          (*v63)(v67, v37, v15);
          goto LABEL_21;
        }

LABEL_44:
        v82 = lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
        static FixedWidthInteger._truncatingInit<A>(_:)(v72, &type metadata for _UInt128, v15, v82, v13, &v129);
        v60(v72, v15);
        v64 = v123;
        v65 = v121;
        v66 = v118;
        v63 = v113;
        if (v129 != 0)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v79 = dispatch thunk of BinaryInteger.bitWidth.getter() < 128;
    }

    if (v79)
    {
      goto LABEL_44;
    }

    lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
    v129 = 0uLL;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v83 = v72;
    v84 = dispatch thunk of static Equatable.== infix(_:_:)();
    v60(v37, v15);
    v60(v83, v15);
    v64 = v123;
    v65 = v121;
    v66 = v118;
    v63 = v113;
    if ((v84 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    (*(v64 + 56))(v65, v65, v66, v64);
    v60(v65, v15);
    v68 = *v63;
    (*v63)(v65, v37, v15);
    *&v129 = 1;
    v24 = v116;
    v13 = v114;
    dispatch thunk of static BinaryInteger.>> infix<A>(_:_:)();
    v60(v24, v15);
    v68(v24, v37, v15);
  }

  lazy protocol witness table accessor for type _UInt128 and conformance _UInt128();
  v129 = 0uLL;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v69 = v128;
LABEL_35:
  v76 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60(v37, v15);
  v60(v69, v15);
  if ((v76 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_50:
  v60(v24, v15);
  v60(v121, v15);
  v60(v107, v15);
  v60(v111, v15);
  v86 = v99;
  (*v63)(v99, v112, v15);
  v87 = v110;
  v88 = v98;
  v89 = v106;
  (*(v110 + 96))(v86, v106, v110);
  v90 = *(v108 + 8);
  v90(v97, v89);
  v91 = v109;
  v92 = v103;
  v93 = v104;
  v94 = v105;
  discreteFourierTransform<A, B, C>(input:size:output:)(v100, v109, v103, v101, v104, v89, v102, v105, v96, v87);
  inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(v91, v88, v92, v93, v89, v94, v87);
  return (v90)(v88, v89);
}

uint64_t inverseDiscreteFourierTransformFinish<A, B>(size:sizeInverse:output:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v116 = a2;
  v98 = a1;
  v103 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v90 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = &v85 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v88 = &v85 - v17;
  MEMORY[0x28223BE20](v16);
  v117 = &v85 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v95 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v118 = AssociatedTypeWitness;
  v21 = swift_getAssociatedTypeWitness();
  v123 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v97 = &v85 - v26;
  MEMORY[0x28223BE20](v25);
  v122 = &v85 - v27;
  v28 = a6;
  v29 = *(a6 + 8);
  v121 = swift_getAssociatedTypeWitness();
  v104 = *(v121 - 8);
  v30 = MEMORY[0x28223BE20](v121);
  v112 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v115 = &v85 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v85 - v34;
  v124 = a4;
  v125 = a3;
  result = dispatch thunk of Collection.count.getter();
  if (result < v98)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v113 = v35;
  v119 = v21;
  dispatch thunk of Collection.startIndex.getter();
  v111 = v28;
  v105 = dispatch thunk of MutableCollection.subscript.modify();
  v96 = v29;
  v114 = AssociatedConformanceWitness;
  v37 = swift_checkMetadataState();
  v38 = *(a7 + 88);
  v92 = v38;
  v39 = v97;
  v40 = v24;
  v120 = v24;
  v41 = v95;
  v38(v95, a7);
  v38(v41, a7);
  v109 = *(v114 + 56);
  v110 = v114 + 56;
  v42 = v122;
  v93 = v37;
  v109(v39, v40, v37);
  v43 = *(v123 + 8);
  v123 += 8;
  v108 = v43;
  v43(v40, v119);
  v43(v39, v119);
  v94 = a7;
  v44 = *(a7 + 96);
  v107 = a7 + 96;
  v106 = v44;
  v45 = v41;
  v44(v42, v41, a7);
  (v105)(v126, 0);
  v47 = v104 + 8;
  v46 = *(v104 + 8);
  v48 = v121;
  v46(v113, v121);
  v91 = v46;
  v49 = v115;
  dispatch thunk of Collection.startIndex.getter();
  v86 = v98 / 2;
  dispatch thunk of Collection.index(_:offsetBy:)();
  v46(v49, v48);
  v50 = v119;
  v105 = dispatch thunk of MutableCollection.subscript.modify();
  v51 = v97;
  v52 = v45;
  v53 = v45;
  v54 = v94;
  v55 = v92;
  v92(v53, v94);
  v56 = v120;
  v87 = a7 + 88;
  v55(v52, v54);
  v57 = v122;
  (v109)(v51, v56);
  v58 = v56;
  v59 = v108;
  v108(v58, v50);
  v59(v51, v50);
  v106(v57, v52, v54);
  v60 = v91;
  (v105)(v126, 0);
  v61 = v121;
  v118 = v47;
  result = v60(v113, v121);
  v62 = v61;
  v63 = v112;
  v64 = v115;
  if (v98 >= 2 && (v98 & 0x7FFFFFFFFFFFFFFELL) != 2)
  {
    v105 = (v103 + 2);
    v104 += 16;
    ++v103;
    v65 = 1;
    while (1)
    {
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.index(_:offsetBy:)();
      v60(v64, v62);
      result = dispatch thunk of Collection.startIndex.getter();
      if (__OFSUB__(v98, v65))
      {
        break;
      }

      v102 = v65 + 1;
      dispatch thunk of Collection.index(_:offsetBy:)();
      v66 = v63;
      v60(v63, v121);
      v67 = v113;
      v68 = dispatch thunk of Collection.subscript.read();
      v69 = *v105;
      v70 = v95;
      (*v105)(v117);
      v68(v126, 0);
      v101 = *v104;
      v101(v66, v67, v121);
      v71 = dispatch thunk of Collection.subscript.read();
      v72 = v89;
      v99 = v69;
      v69(v89);
      v71(v126, 0);
      v73 = v90;
      (v69)(v90, v72, v70);
      v74 = v94;
      FieldElement.init(other:)(v73, v70, v94);
      v75 = v97;
      v76 = v92;
      v92(v70, v74);
      v76(v70, v74);
      v77 = v93;
      (v109)(v75, v120, v93, v114);
      v78 = v108;
      v108(v120, v119);
      v78(v75, v119);
      v106(v122, v70, v74);
      v100 = *v103;
      v100(v72, v70);
      v79 = v112;
      dispatch thunk of MutableCollection.subscript.setter();
      v101(v79, v115, v121);
      (v99)(v72, v117, v70);
      v80 = v72;
      v81 = v120;
      FieldElement.init(other:)(v80, v70, v74);
      v76(v70, v74);
      v82 = v119;
      v76(v70, v74);
      (v109)(v75, v81, v77, v114);
      v83 = v108;
      v108(v81, v82);
      v83(v75, v82);
      v106(v122, v70, v74);
      v63 = v112;
      v62 = v121;
      dispatch thunk of MutableCollection.subscript.setter();
      v100(v117, v70);
      v64 = v115;
      v84 = v91;
      v91(v115, v62);
      result = v84(v113, v62);
      v60 = v84;
      v65 = v102;
      if (v86 == v102)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t static Prio3InputShare.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if (static Share.== infix(_:_:)(v5, v6, v7, v8, AssociatedTypeWitness, AssociatedConformanceWitness) & 1) != 0 && (static Share.== infix(_:_:)(v17, v16, v9, v10, AssociatedTypeWitness, AssociatedConformanceWitness))
  {
    if (v15)
    {
      if (v14 && (specialized static Seed.== infix(_:_:)(v15, v14) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v14)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Prio3InputShare.init(measurementShare:proofShare:jointRandBlind:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 32) = a5;
  return result;
}

uint64_t Prio3InputShareDecodableParameter.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = ShareDecodableParameter.encodedLength.getter(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = ShareDecodableParameter.encodedLength.getter(v4, v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v9 + result;
  if (__OFADD__(v9, result))
  {
    __break(1u);
    goto LABEL_5;
  }

  result = v11 + v6;
  if (__OFADD__(v11, v6))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Prio3InputShareDecodableParameter.init(prio3:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26[0] = a3;
  v26[1] = a4;
  v26[2] = a5;
  v26[3] = a6;
  v14 = type metadata accessor for Prio3(0, v26);
  swift_getWitnessTable();
  v15 = VDAFProtocol.isLeaderAggregatorID(_:)(a2);
  if (v16)
  {
    return (*(*(v14 - 8) + 8))(a1, v14);
  }

  v29 = v15;
  if (!v15)
  {
    goto LABEL_6;
  }

  v25 = (*(a5 + 48))(a3, a5);
  v28 = 0;
  v18 = (*(a5 + 56))(a3, a5);
  v19 = *(a1 + 8);
  v20 = v18 * v19;
  if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
  {
    __break(1u);
LABEL_6:
    v21 = *(a6 + 8);
    v25 = v21(a4, a6);
    v28 = 1;
    v20 = v21(a4, a6);
  }

  v27 = !v29;
  if (Prio3.isJointRandRequired.getter(v14))
  {
    v22 = (*(a6 + 8))(a4, a6);
  }

  else
  {
    v22 = 0;
  }

  result = (*(*(v14 - 8) + 8))(a1, v14);
  v23 = v28;
  v24 = v27;
  *a7 = v25;
  *(a7 + 8) = v23;
  *(a7 + 16) = v20;
  *(a7 + 24) = v24;
  *(a7 + 32) = v22;
  return result;
}

uint64_t Prio3InputShare.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedConformanceWitness = a4;
  v7 = *(a5 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 8);
  if (v17 == 255)
  {
    v18 = v8;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v19 = 0;
    v19[1] = 0;
    swift_willThrow();
    return (*(v7 + 8))(v18, a5);
  }

  v97 = v7;
  v89 = v5;
  v85 = v14;
  v21 = *v9;
  v22 = *(v9 + 24);
  v23 = *(v9 + 32);
  v24 = *(v9 + 16);
  v91 = v10;
  v92 = v12;
  v25 = v11;
  v93 = *(*(v13 + 8) + 8);
  v94 = v8;
  v90 = dispatch thunk of Collection.count.getter();
  v96 = v21;
  v104 = v21;
  v26 = v23;
  v27 = v17;
  LODWORD(v88) = v17 & 1;
  LOBYTE(v105) = v17 & 1;
  v106 = v24;
  v86 = v22;
  v28 = v22 & 1;
  v29 = v25;
  v31 = v91;
  v30 = v92;
  LODWORD(v87) = v28;
  LOBYTE(v107) = v28;
  v108 = v26;
  v100 = v91;
  v101 = AssociatedConformanceWitness;
  v102 = v29;
  v103 = v92;
  v32 = type metadata accessor for Prio3InputShareDecodableParameter(0, &v100);
  v95 = a5;
  v33 = v32;
  v34 = Prio3InputShareDecodableParameter.encodedLength.getter(v32);
  if (v90 != v34)
  {
    v104 = 0;
    v105 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v104 = v31;
    v105 = AssociatedConformanceWitness;
    v106 = v29;
    v107 = v30;
    type metadata accessor for Prio3InputShare(0, &v104);
    v53 = _typeName(_:qualified:)();
    v55 = v54;

    v100 = v53;
    v101 = v55;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v104 = v96;
    LOBYTE(v105) = v88;
    v106 = v24;
    LOBYTE(v107) = v87;
    v108 = v26;
    v99 = Prio3InputShareDecodableParameter.encodedLength.getter(v33);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v56);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v57 = v94;
    v58 = v95;
    v104 = dispatch thunk of Collection.count.getter();
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v59);

    v60 = v100;
    v61 = v101;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v62 = v60;
    v62[1] = v61;
    swift_willThrow();
    return (*(v97 + 8))(v57, v58);
  }

  v90 = v24;
  v84 = v26;
  (*(v97 + 16))(v16, v94, v95);
  ArraySlice.init<A>(_:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ShareDecodableParameter.encodedLength.getter(v96, v27 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v36 = specialized Collection.prefix(_:)();
  v38 = v37;
  v92 = v39;
  v93 = v27;
  v41 = v40;
  specialized Collection.dropFirst(_:)();
  v91 = v42;
  v88 = v43;
  v87 = v44;
  v104 = v36;
  v105 = v38;
  v106 = v92;
  v107 = v41;
  swift_unknownObjectRetain();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v46 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v47 = AssociatedTypeWitness;
  v48 = AssociatedTypeWitness;
  v49 = AssociatedConformanceWitness;
  v50 = v89;
  v51 = Share.init<A>(from:parameter:)(&v104, v96, v93 & 1, v48, v45, AssociatedConformanceWitness, v46);
  if (v50)
  {
    (*(v97 + 8))(v94, v95);
    return swift_unknownObjectRelease();
  }

  v89 = v51;
  v110 = v52 & 1;
  v83 = v47;
  ShareDecodableParameter.encodedLength.getter(v90, v86 & 1, v47, v49);
  v96 = specialized Collection.prefix(_:)();
  v64 = v63;
  v92 = v66;
  v93 = v65;
  specialized Collection.dropFirst(_:)();
  v104 = v96;
  v105 = v64;
  v106 = v93;
  v107 = v92;
  swift_unknownObjectRetain();
  AssociatedConformanceWitness = Share.init<A>(from:parameter:)(&v104, v90, v86 & 1, v83, v45, AssociatedConformanceWitness, v46);
  v109 = v67 & 1;
  v68 = v97;
  if (v84 < 1)
  {
    (*(v97 + 8))(v94, v95);
    result = swift_unknownObjectRelease();
    v77 = 0;
  }

  else
  {
    v69 = specialized Collection.prefix(_:)();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    specialized Collection.dropFirst(_:)();
    if (v75)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain();
      v78 = swift_dynamicCastClass();
      if (!v78)
      {
        swift_unknownObjectRelease();
        v78 = MEMORY[0x277D84F90];
      }

      v79 = *(v78 + 16);

      if (__OFSUB__(v75 >> 1, v73))
      {
        __break(1u);
      }

      else if (v79 == (v75 >> 1) - v73)
      {
        v77 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v77)
        {
          swift_unknownObjectRelease();
          v77 = MEMORY[0x277D84F90];
        }

        (*(v97 + 8))(v94, v95);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        goto LABEL_19;
      }

      swift_unknownObjectRelease_n();
      v68 = v97;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v69, v71, v73, v75);
    v77 = v76;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = (*(v68 + 8))(v94, v95);
  }

LABEL_19:
  v80 = v110;
  v81 = v109;
  v82 = v85;
  *v85 = v89;
  *(v82 + 8) = v80;
  v82[2] = AssociatedConformanceWitness;
  *(v82 + 24) = v81;
  v82[4] = v77;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance Prio3InputShare<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v5;
  return Prio3InputShare.init<A>(from:parameter:)(a1, v8, *(a5 + 16), *(a5 + 24), a3);
}

uint64_t Prio3InputShare.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = Share.encodedLength.getter(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = Share.encodedLength.getter(v4, v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v9 + result;
  if (__OFADD__(v9, result))
  {
    goto LABEL_7;
  }

  if (!v6)
  {
    result += v9;
    return result;
  }

  v12 = *(v6 + 16);
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t Prio3InputShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  v15 = *(v4 + 16);
  v14 = *(v4 + 24);
  v10 = *(v4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  Share.encode<A>(into:)(a1, v8, v9, AssociatedTypeWitness, a3, AssociatedConformanceWitness, a4);
  result = Share.encode<A>(into:)(a1, v15, v14, AssociatedTypeWitness, a3, AssociatedConformanceWitness, a4);
  if (v10)
  {

    return Seed.encode<A>(into:)(a1, v10, a3, a4);
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3InputShare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Prio3InputShare(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for Prio3InputShare(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3InputShareDecodableParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t PINEMainCircuit.init(l2NormBoundInt:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, double a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, unint64_t a11, __int128 a12, uint64_t a13)
{
  v53 = a7;
  v55 = a6;
  v56 = a1;
  v50 = a5;
  v48 = a9;
  v49 = a4;
  v51 = a2;
  v52 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v46 - v17;
  *&v58 = a8;
  *(&v58 + 1) = a11;
  v59 = a12;
  *&v60 = a13;
  v19 = type metadata accessor for PINECircuitParameter(0, &v58);
  v46 = *(v19 - 8);
  v47 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  (*(v16 + 16))(v18, v56, AssociatedTypeWitness);
  v22 = v54;
  PINECircuitParameter.init(l2NormBoundInt:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v18, v51, v52, v55, v53, a8, a11, a12, v21, a10, *(&a12 + 1), a13);
  v54 = v22;
  if (v22)
  {
    return (*(v16 + 8))(v56, AssociatedTypeWitness);
  }

  v52 = *&a8;
  v53 = v16;
  *&v58 = a8;
  *(&v58 + 1) = a11;
  v59 = a12;
  *&v60 = a13;
  v24 = type metadata accessor for PINEMainCircuit(0, &v58);
  v25 = v48;
  v26 = v48 + *(v24 + 64);
  result = (*(v46 + 32))(v26, v21, v47);
  v27 = v55;
  v28 = v56;
  v29 = v49;
  if ((v50 & 1) == 0)
  {
LABEL_8:
    *v25 = v29;
    if (v29 < 1)
    {
      __break(1u);
    }

    else
    {
      v31 = *(v26 + 8);
      v32 = __OFADD__(v31, v29);
      v33 = v31 + v29;
      if (!v32)
      {
        v32 = __OFSUB__(v33, 1);
        v34 = v33 - 1;
        if (!v32)
        {
          v35 = v27 + v29;
          if (!__OFADD__(v27, v29))
          {
            v32 = __OFSUB__(v35, 1);
            v36 = v35 - 1;
            if (!v32)
            {
              v37 = v34 / v29;
              v38 = v36 / v29;
              result = v37 + v38;
              if (!__OFADD__(v37, v38))
              {
                v39 = v52;
                v57[0] = MultiplicationGadget.init(numOfCalls:)();
                v57[1] = v40;
                v57[2] = v41;
                v43 = type metadata accessor for MultiplicationGadget(0, v39, a12, v42);
                WitnessTable = swift_getWitnessTable();
                ParallelSum.init(inner:count:)(v57, v29, v43, WitnessTable, &v58);
                result = (*(v53 + 8))(v28, AssociatedTypeWitness);
                v45 = v59;
                *(v25 + 8) = v58;
                *(v25 + 24) = v45;
                *(v25 + 40) = v60;
                return result;
              }

              goto LABEL_20;
            }

LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v30 = sqrt(*(v26 + 8));
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v30 < 9.22337204e18)
  {
    v29 = v30;
    goto LABEL_8;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t PINENormEqualityCheckCircuit.init(l2NormBoundInt:fractionalBitCount:measurementLength:chunkLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, unint64_t a11, __int128 a12, uint64_t a13)
{
  v51 = a7;
  v49 = a2;
  v50 = a6;
  v47 = a5;
  v53 = a4;
  v54 = a1;
  v56 = a3;
  v46 = a9;
  v55 = a13;
  v48 = a11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v43 - v17;
  *&v59 = a8;
  *(&v59 + 1) = a11;
  v60 = a12;
  v61 = a13;
  v45 = type metadata accessor for PINECircuitParameter(0, &v59);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v20 = &v43 - v19;
  v21 = v54;
  (*(v16 + 16))(v18);
  v22 = v18;
  v23 = v52;
  v24 = v48;
  PINECircuitParameter.init(l2NormBoundInt:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)(v22, v49, v56, v50, v51, *&a8, v48, a12, v20, a10, *(&a12 + 1), a13);
  v52 = v23;
  if (v23)
  {
    return (*(v16 + 8))(v21, AssociatedTypeWitness);
  }

  v50 = v16;
  v51 = AssociatedTypeWitness;
  *&v59 = a8;
  *(&v59 + 1) = v24;
  v60 = a12;
  v61 = v55;
  v26 = type metadata accessor for PINENormEqualityCheckCircuit(0, &v59);
  v27 = v46;
  result = (*(v44 + 32))(v46 + *(v26 + 64), v20, v45);
  v28 = v53;
  v29 = v56;
  if ((v47 & 1) == 0)
  {
LABEL_8:
    *v27 = v28;
    if (v28 < 1)
    {
      __break(1u);
    }

    else
    {
      v31 = v29 + v28;
      if (!__OFADD__(v29, v28))
      {
        v32 = __OFSUB__(v31, 1);
        v33 = v31 - 1;
        if (!v32)
        {
          v34 = v27;
          v35 = v33 / v28;
          v53 = v28;
          getContiguousArrayStorageType<A>(for:)(a8, a8);
          swift_allocObject();
          static Array._adoptStorage(_:count:)();
          dispatch thunk of static AdditiveArithmetic.zero.getter();
          dispatch thunk of static AdditiveArithmetic.zero.getter();
          (*(a12 + 72))(a8, a12);
          _finalizeUninitializedArray<A>(_:)();
          Polynomial.init(coefficients:)(v36, &v57);
          PolynomialEvaluationGadget.init(polynomial:numOfCalls:)(&v57, v35, &v59);
          v57 = v59;
          v58 = v60;
          v38 = type metadata accessor for PolynomialEvaluationGadget(0, a8, a12, v37);
          WitnessTable = swift_getWitnessTable();
          ParallelSum.init(inner:count:)(&v57, v53, v38, WitnessTable, &v59);
          result = (*(v50 + 8))(v54, v51);
          v40 = v61;
          v41 = v62;
          v42 = v60;
          *(v34 + 1) = v59;
          *(v34 + 3) = v42;
          v34[5] = v40;
          v34[6] = v41;
          return result;
        }

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = sqrt(v56);
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v30 < 9.22337204e18)
  {
    v28 = v30;
    goto LABEL_8;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t static PINECircuitParameter.l2NormBoundIntFrom(l2NormBound:fractionalBitCount:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v21 = a2;
  v22 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v21 - v14;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v16 = dispatch thunk of static Comparable.> infix(_:_:)();
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  if (v16)
  {
    return static FieldElement.integerFrom<A>(floatValue:fractionalBitCount:)(a1, v21, a3, AssociatedTypeWitness, v22, a7, a8);
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  MEMORY[0x2743B25F0](0x6F426D726F4E326CLL, 0xEC0000003D646E75);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C53310);
  v18 = v23;
  v19 = v24;
  lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
  swift_allocError();
  *v20 = v18;
  *(v20 + 8) = v19;
  *(v20 + 16) = 1;
  return swift_willThrow();
}

ValueMetadata *static PINECircuit.identifier.getter@<X0>(char *a3@<X8>)
{
  result = swift_getAssociatedTypeWitness();
  if (result == &type metadata for Field32)
  {
    v6 = 11;
  }

  else
  {
    if (result == &type metadata for Field64)
    {
      v5 = 10;
    }

    else
    {
      v5 = 14;
    }

    if (result == &type metadata for Field40)
    {
      v6 = 12;
    }

    else
    {
      v6 = v5;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t PINECircuit.truncate(measurement:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v34 = a2;
  v33 = AssociatedTypeWitness;
  *&v37 = AssociatedTypeWitness;
  *(&v37 + 1) = v6;
  *&v38 = AssociatedConformanceWitness;
  *(&v38 + 1) = v8;
  v39 = swift_getAssociatedConformanceWitness();
  v31 = type metadata accessor for PINECircuitParameter(0, &v37);
  v9 = *(v31 - 8);
  v10 = MEMORY[0x28223BE20](v31);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *(a3 + 56);
  v15(a2, a3);
  v30 = *(v14 + 5);
  v16 = *(v9 + 8);
  v17 = v31;
  v16(v14, v31);
  v29 = a3;
  v15(v34, a3);
  v18 = *(v12 + 1);
  result = (v16)(v12, v17);
  v20 = v30 + v18;
  if (__OFADD__(v30, v18))
  {
    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x2743B2830](v32, v33);
    if (v21 == v20)
    {
      v15(v34, v29);
      v22 = *(v14 + 5);
      v16(v14, v17);
      v40 = v32;
      *&v35 = v22;
      type metadata accessor for Array();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeUpToVySiGMd, &_ss16PartialRangeUpToVySiGMR);
      swift_getWitnessTable();
      lazy protocol witness table accessor for type PartialRangeUpTo<Int> and conformance PartialRangeUpTo<A>();
      MutableCollection.subscript.getter();
      v35 = v37;
      v36 = v38;
      type metadata accessor for ArraySlice();
      swift_getWitnessTable();
      return Array.init<A>(_:)();
    }

    else
    {
      v23 = v21;
      *&v37 = 0;
      *(&v37 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      *&v37 = 0xD00000000000001BLL;
      *(&v37 + 1) = 0x8000000270C51C80;
      *&v35 = v23;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v24);

      MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
      *&v35 = v20;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v25);

      v26 = v37;
      lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
      swift_allocError();
      *v27 = v26;
      *(v27 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t PINECircuit.outputLength.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v15[0] = AssociatedTypeWitness;
  v15[1] = v5;
  v15[2] = AssociatedConformanceWitness;
  v15[3] = v7;
  v15[4] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for PINECircuitParameter(0, v15);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-1] - v10;
  (*(a2 + 56))(a1, a2);
  v12 = *(v11 + 5);
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t PINECircuit.wraparoundDotProducts<A>(_:random:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v11 = *a5;
  v12 = *(*a5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(v11 + 104);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v32 = v12;
  v33 = AssociatedTypeWitness;
  v34 = v14;
  v35 = AssociatedConformanceWitness;
  v36 = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for PINECircuitParameter(0, &v32);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  (*(a7 + 56))(a6, a7);
  v20 = *&v19[*(v16 + 92)];
  result = (*(v17 + 8))(v19, v16);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    v32 = 0;
    v33 = v20;
    MEMORY[0x28223BE20](result);
    *(&v28 - 8) = a6;
    *(&v28 - 7) = a7;
    v22 = v29;
    v23 = v30;
    *(&v28 - 6) = a1;
    *(&v28 - 5) = v22;
    v24 = v31;
    *(&v28 - 4) = v23;
    *(&v28 - 3) = v24;
    *(&v28 - 2) = a5;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
    v26 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in PINECircuit.wraparoundDotProducts<A>(_:random:), (&v28 - 10), v25, v12, MEMORY[0x277D84A98], v26, MEMORY[0x277D84AC0], v27);
  }

  return result;
}

uint64_t PINECircuit.encodeMeasurementAndNormRangeCheck(raw:into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v177 = a2;
  v156 = a1;
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v185 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v169 = swift_getAssociatedConformanceWitness();
  v165 = AssociatedTypeWitness;
  v168 = swift_getAssociatedTypeWitness();
  v145 = *(v168 - 8);
  v9 = MEMORY[0x28223BE20](v168);
  v143 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v141 = &v138 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v159 = &v138 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v164 = &v138 - v16;
  MEMORY[0x28223BE20](v15);
  v166 = &v138 - v17;
  swift_getAssociatedTypeWitness();
  v181 = a4;
  v173 = swift_getAssociatedConformanceWitness();
  v18 = *(v173 + 8);
  v19 = swift_getAssociatedTypeWitness();
  v174 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v162 = &v138 - v20;
  v21 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v21 - 8);
  v167 = &v138 - v22;
  v23 = swift_checkMetadataState();
  v153 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v152 = &v138 - v24;
  v154 = v18;
  v25 = a3;
  v26 = AssociatedConformanceWitness;
  v170 = swift_getAssociatedTypeWitness();
  v144 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v176 = &v138 - v27;
  v28 = swift_checkMetadataState();
  v146 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v163 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v184 = &v138 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v186 = (&v138 - v34);
  MEMORY[0x28223BE20](v33);
  v178 = &v138 - v35;
  v175 = v19;
  v36 = swift_getAssociatedConformanceWitness();
  v187 = v28;
  v188 = v23;
  v189 = v26;
  v190 = v173;
  v161 = v36;
  v191 = v36;
  v37 = type metadata accessor for PINECircuitParameter(0, &v187);
  v182 = *(v37 - 8);
  v38 = MEMORY[0x28223BE20](v37);
  v139 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v140 = &v138 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v160 = &v138 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v138 - v44;
  v46 = (*(v185 + 48))(v25);
  v185 = v28;
  v158 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v46);
  v155 = v23;
  v47 = dispatch thunk of Collection.count.getter();
  v48 = v181 + 56;
  v49 = v182;
  v50 = *(v181 + 56);
  v180 = v25;
  v50();
  v51 = *(v45 + 5);
  v54 = *(v49 + 8);
  v53 = v49 + 8;
  v52 = v54;
  v179 = v37;
  v54(v45, v37);
  if (v47 == v51)
  {
    v182 = v53;
    v142 = v45;
    v171 = v50;
    v172 = v48;
    v173 = v52;
    v55 = v178;
    v157 = *(v26 + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    (*(v153 + 16))(v152, v156, v155);
    dispatch thunk of Sequence.makeIterator()();
    v56 = v170;
    v57 = swift_getAssociatedConformanceWitness();
    v58 = v167;
    v156 = v57;
    dispatch thunk of IteratorProtocol.next()();
    v59 = v174;
    v60 = *(v174 + 48);
    v155 = v174 + 48;
    v154 = v60;
    v61 = v55;
    if (v60(v58, 1, v175) == 1)
    {
      v62 = v184;
LABEL_8:
      v138 = v26;
      (*(v144 + 8))(v176, v56);
      v95 = v166;
      v96 = v185;
      FieldElement.integerValue.getter(v185, v26);
      v97 = v142;
      (v171)(v180, v181);
      v98 = v179;
      v99 = v146;
      v100 = *(v146 + 16);
      v101 = &v97[*(v179 + 84)];
      v184 = (v146 + 16);
      v176 = v100;
      (v100)(v62, v101, v96);
      (v173)(v97, v98);
      v102 = v62;
      v103 = v164;
      FieldElement.integerValue.getter(v96, v26);
      v104 = *(v99 + 8);
      v146 = v99 + 8;
      (v104)(v102, v96);
      v105 = v168;
      v106 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
      v107 = v95;
      LOBYTE(v95) = dispatch thunk of static Comparable.<= infix(_:_:)();
      v108 = v145 + 8;
      v109 = v103;
      v110 = *(v145 + 8);
      v110(v109, v105);
      v110(v107, v105);
      v186 = v104;
      if (v95)
      {
        v175 = v110;
        v145 = v108;
        v111 = v185;
        dispatch thunk of static AdditiveArithmetic.zero.getter();
        v112 = v142;
        v113 = v181;
        v114 = v180;
        (v171)(v180, v181);
        v115 = v179;
        v116 = v163;
        (v176)(v163, &v112[*(v179 + 84)], v111);
        (v173)(v112, v115);
        v117 = v141;
        static PINECircuit.computeRangeCheck(_:lowerBound:upperBound:)(v141, v143, v178, v102, v116, v114, v113);
        (v104)(v116, v111);
        (v104)(v102, v111);
        v118 = v140;
        (v171)(v114, v113);
        v119 = *(v118 + 6);
        (v173)(v118, v115);
        v120 = v177;
        v121 = v119;
        v122 = v138;
        v123 = v183;
        static FieldElement.encode(_:into:with:)(v117, v177, v121, v111, v138);
        if (v123)
        {
          v124 = v168;
          v125 = v175;
          v175(v143, v168);
        }

        else
        {
          v135 = v139;
          (v171)(v180, v113);
          v136 = *(v135 + 6);
          (v173)(v135, v179);
          v137 = v143;
          static FieldElement.encode(_:into:with:)(v143, v120, v136, v185, v122);
          v124 = v168;
          v125 = v175;
          v175(v137, v168);
        }

        v125(v117, v124);
        return (v186)(v178, v185);
      }

      else
      {
        v187 = 0;
        v188 = 0xE000000000000000;
        v126 = v107;
        _StringGuts.grow(_:)(32);
        MEMORY[0x2743B25F0](0x2064657261757173, 0xED00003D6D726F6ELL);
        v127 = v185;
        v128 = v138;
        FieldElement.integerValue.getter(v185, v138);
        v183 = *(v106 + 8);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v110(v107, v105);
        MEMORY[0x2743B25F0](0x6B63656863203E20, 0xEF3D646E756F6220);
        v129 = v142;
        (v171)(v180, v181);
        v130 = v179;
        (v176)(v102, &v129[*(v179 + 84)], v127);
        (v173)(v129, v130);
        FieldElement.integerValue.getter(v127, v128);
        v131 = v186;
        (v186)(v102, v127);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v110(v126, v105);
        v132 = v187;
        v133 = v188;
        lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
        swift_allocError();
        *v134 = v132;
        *(v134 + 8) = v133;
        *(v134 + 16) = 1;
        swift_willThrow();
        return v131(v178, v127);
      }
    }

    else
    {
      v71 = v58;
      v152 = *(v59 + 32);
      v151 = (v146 + 16);
      v150 = v26 + 88;
      v149 = v169 + 56;
      v148 = (v145 + 8);
      v147 = v26 + 96;
      v153 = v146 + 8;
      v62 = v184;
      v72 = v175;
      v174 = v59 + 32;
      while (1)
      {
        v73 = v162;
        (v152)(v162, v71, v72);
        v74 = v160;
        (v171)(v180, v181);
        v75 = *(v74 + 4);
        (v173)(v74, v179);
        v76 = v183;
        FieldElement.init<A>(floatValue:fractionalBitCount:)(v73, v75, v185, v72, v26, v161, v186);
        if (v76)
        {
          break;
        }

        v183 = 0;
        v77 = *v151;
        v78 = v185;
        v79 = v186;
        (*v151)(v62);
        Array.append(_:)();
        v80 = v163;
        (v77)(v163, v79, v78);
        FieldElement.init(other:)(v80, v78, v26);
        v81 = swift_checkMetadataState();
        v82 = v26;
        v83 = *(v26 + 88);
        v84 = v164;
        v83(v78, v26);
        v85 = v159;
        v83(v78, v26);
        v86 = v166;
        v87 = v178;
        (*(v169 + 56))(v84, v85, v81);
        v88 = *v148;
        v89 = v168;
        (*v148)(v85, v168);
        v90 = v84;
        v62 = v184;
        v91 = v89;
        v26 = v82;
        v72 = v175;
        v88(v90, v91);
        v61 = v87;
        (*(v26 + 96))(v86, v78, v26);
        dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
        v92 = *v153;
        (*v153)(v62, v78);
        v92(v186, v78);
        v93 = v167;
        v56 = v170;
        dispatch thunk of IteratorProtocol.next()();
        v94 = v154(v93, 1, v72);
        v71 = v93;
        if (v94 == 1)
        {
          goto LABEL_8;
        }
      }

      (*(v144 + 8))(v176, v170);
      return (*v153)(v61, v185);
    }
  }

  else
  {
    v187 = 0;
    v188 = 0xE000000000000000;
    v63 = v52;
    _StringGuts.grow(_:)(44);

    v187 = 0xD00000000000001DLL;
    v188 = 0x8000000270C52030;
    v192 = dispatch thunk of Collection.count.getter();
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v64);

    MEMORY[0x2743B25F0](0x746365707865202CLL, 0xEB000000003D6465);
    (v50)(v180, v181);
    v65 = *(v45 + 5);
    v63(v45, v179);
    v192 = v65;
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v66);

    v67 = v187;
    v68 = v188;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v69 = v67;
    *(v69 + 8) = v68;
    *(v69 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t PINECircuit.appendWraparoundCheck<A>(into:random:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v101 = a1;
  v7 = *a2;
  v118 = a2;
  v8 = *(v7 + 88);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = swift_getAssociatedConformanceWitness();
  v95 = AssociatedTypeWitness;
  v111 = swift_getAssociatedTypeWitness();
  v107 = *(v111 - 8);
  v11 = MEMORY[0x28223BE20](v111);
  v110 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v88 - v14;
  v100 = *(v8 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v98 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v88 - v19;
  v89 = v20;
  MEMORY[0x28223BE20](v18);
  v112 = &v88 - v21;
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v122[0] = v8;
  v122[1] = v22;
  v99 = AssociatedConformanceWitness;
  v122[2] = AssociatedConformanceWitness;
  v122[3] = v23;
  v122[4] = v24;
  v25 = type metadata accessor for PINECircuitParameter(0, v122);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v97 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v96 = &v88 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v88 - v31;
  v33 = *(a4 + 56);
  v120 = a4;
  v121 = v4;
  v123 = a3;
  v34 = a3;
  v36 = v35;
  v115 = v33;
  v116 = a4 + 56;
  v33(v34, a4);
  v37 = *(v32 + 5);
  v39 = *(v26 + 8);
  v38 = v26 + 8;
  v102 = v32;
  v114 = v39;
  result = (v39)(v32, v36);
  if (v37 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v113 = v38;
  v90 = Array.subscript.getter();
  v44 = PINECircuit.wraparoundDotProducts<A>(_:random:)(v90, v41, v42, v43, v118, v123, v120);

  if (MEMORY[0x2743B2860](v45, v8))
  {
    v46 = 0;
    v118 = 0;
    v109 = (v100 + 16);
    v93 = (v100 + 8);
    v106 = (v107 + 8);
    v107 = v15;
    v108 = v8;
    v47 = v102;
    v91 = v36;
    v92 = v44;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v49 = *(v100 + 16);
        (v49)(v112, v44 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v46, v8);
        v50 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v89 != 8)
        {
          goto LABEL_25;
        }

        v122[0] = result;
        v49 = *v109;
        (*v109)(v112, v122, v8);
        swift_unknownObjectRelease();
        v50 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      v103 = v50;
      v104 = v46;
      v51 = v47;
      v52 = v120;
      v53 = v123;
      v105 = v49;
      v54 = v115;
      v115(v123, v120);
      PINECircuitParameter.wraparoundCheckLowerBound.getter(v36);
      v55 = v114;
      v114(v51, v36);
      v56 = v96;
      v54(v53, v52);
      v57 = v98;
      v58 = v108;
      v105(v98, &v56[*(v36 + 100)], v108);
      v55(v56, v36);
      v59 = v110;
      v60 = v36;
      v61 = v112;
      v62 = v119;
      v63 = static PINECircuit.computeRangeCheck(_:lowerBound:upperBound:)(v107, v110, v112, v119, v57, v123, v120);
      v64 = *v93;
      (*v93)(v61, v58);
      v64(v57, v58);
      v64(v62, v58);
      v65 = *v106;
      (*v106)(v59, v111);
      if (v63)
      {
        v66 = v102;
        v67 = v115;
        v115(v123, v120);
        v68 = *&v66[*(v60 + 96)];
        v69 = v66;
        v70 = v60;
        v71 = v60;
        v72 = v114;
        v114(v69, v70);
        v73 = v118 < v68;
        v74 = v67;
        v75 = v72;
      }

      else
      {
        v73 = 0;
        v71 = v60;
        v75 = v114;
        v74 = v115;
      }

      v76 = v97;
      v74(v123, v120);
      v77 = *&v76[*(v71 + 88)];
      v75(v76, v71);
      v78 = v107;
      v8 = v108;
      v79 = v99;
      v80 = v117;
      static FieldElement.encode(_:into:with:)(v107, v101, v77, v108, v99);
      v117 = v80;
      if (v80)
      {
        swift_unknownObjectRelease();
        v44 = v92;
        swift_bridgeObjectRelease_n();
        v65(v78, v111);
        return v44;
      }

      v122[0] = v73;
      v81 = v111;
      swift_getAssociatedConformanceWitness();
      lazy protocol witness table accessor for type Int and conformance Int();
      v105 = v73;
      v82 = v110;
      dispatch thunk of BinaryInteger.init<A>(_:)();
      FieldElement.init(_:)(v82, v8, v79);
      type metadata accessor for Array();
      Array.append(_:)();
      result = (v65)(v78, v81);
      v83 = __OFADD__(v118, v105);
      v118 = (v105 + v118);
      if (v83)
      {
        break;
      }

      v44 = v92;
      v84 = MEMORY[0x2743B2860](v92, v8);
      v46 = v104 + 1;
      v36 = v91;
      v47 = v102;
      if (v103 == v84)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_17:
  v118 = 0;
  v47 = v102;
LABEL_18:

  v115(v123, v120);
  v85 = *&v47[*(v36 + 96)];
  v114(v47, v36);
  if (v118 != v85)
  {

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    v86 = swift_allocError();
    *v87 = 0xD000000000000023;
    *(v87 + 8) = 0x8000000270C51FA0;
    *(v87 + 16) = 4;
    v117 = v86;
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  return v44;
}

uint64_t PINECircuitParameter.wraparoundCheckLowerBound.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  v10 = *(v7 + 32);
  (*(v10 + 72))(v2, v10);
  (*(v3 + 16))(v6, v9, v2);
  FieldElement.init(other:)(v6, v2, v10);
  dispatch thunk of static AdditiveArithmetic.-= infix(_:_:)();
  return (*(v3 + 8))(v9, v2);
}

uint64_t PINECircuitParameter.init(l2NormBoundInt:fractionalBitCount:measurementLength:alpha:wraparoundCheckCount:wraparoundCheckSuccessCount:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, char *a11, uint64_t a12)
{
  v222 = a7;
  v221 = a5;
  v225 = a4;
  v234 = a1;
  v223 = a9;
  swift_getAssociatedTypeWitness();
  v232 = a8;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v17 = a2;
  v18 = *(swift_getAssociatedConformanceWitness() + 8);
  v233 = *(v18 + 8);
  v228 = *(v233 + 24);
  v231 = *(v228 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v229 = v196 - v19;
  v20 = swift_checkMetadataState();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v196 - v23);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = MEMORY[0x28223BE20](v25);
  v27 = MEMORY[0x28223BE20](v26);
  v28 = MEMORY[0x28223BE20](v27);
  v29 = MEMORY[0x28223BE20](v28);
  v30 = MEMORY[0x28223BE20](v29);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v196 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v227 = v196 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v226 = v196 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = v196 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = v196 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v58 = v196 - v57;
  if (v17 > 0x7F)
  {
    v235 = 0.0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v235 = -2.31584178e77;
    v236 = 0x8000000270C53330;
    v240 = v17;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v70);

    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C53350);
    v71 = v235;
    v72 = v236;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v73 = v71;
    *(v73 + 8) = v72;
    *(v73 + 16) = 1;
    swift_willThrow();
    return (*(v21 + 8))(v234, v20);
  }

  v224 = v20;
  if (a3 < 1)
  {
    v235 = 0.0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v235 = -2.31584178e77;
    v236 = 0x8000000270C53370;
    v240 = a3;
    v75 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v75);

    MEMORY[0x2743B25F0](0xD000000000000011, 0x8000000270C53310);
    v76 = v235;
    v77 = v236;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v78 = v76;
    *(v78 + 8) = v77;
    *(v78 + 16) = 1;
    swift_willThrow();
    return (*(v21 + 8))(v234, v224);
  }

  v213 = v34;
  v207 = v53;
  v208 = v52;
  v209 = v51;
  v210 = v50;
  v211 = v49;
  v205 = v48;
  v206 = v47;
  v204 = v46;
  v201 = v56;
  v200 = a3;
  v215 = v55;
  v217 = v17;
  v219 = v54;
  v218 = a6;
  *&v235 = 1;
  v59 = lazy protocol witness table accessor for type Int and conformance Int();
  v60 = v224;
  v61 = v233;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  v212 = v18;
  *&v235 = dispatch thunk of static FixedWidthInteger.bitWidth.getter() / 2;
  v199 = v59;
  dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
  v216 = v21;
  v63 = v21 + 8;
  v62 = *(v21 + 8);
  v62(v45, v60);
  v64 = v234;
  v202 = *(*(v61 + 32) + 8);
  LOBYTE(v61) = dispatch thunk of static Comparable.< infix(_:_:)();
  v220 = v62;
  v62(v58, v60);
  if ((v61 & 1) == 0)
  {
    v235 = 0.0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C53390);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C533B0);
    v240 = v217;
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v79);

    MEMORY[0x2743B25F0](0xD00000000000002CLL, 0x8000000270C533D0);
    v80 = v235;
    v81 = v236;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v82 = v80;
    *(v82 + 8) = v81;
    *(v82 + 16) = 1;
    swift_willThrow();
    return v220(v64, v60);
  }

  v65 = v228;
  dispatch thunk of static Numeric.* infix(_:_:)();
  static FieldElement.modulus.getter(*&v218, v232);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v196[1] = *(v65 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v197 = v45;
  v66 = v220;
  v220(v45, v60);
  v203 = v58;
  v66(v58, v60);
  v67 = v60;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v83 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v84 = dispatch thunk of BinaryInteger._lowWord.getter();
    v66(v41, v60);
    if (v83)
    {
      v68 = v84;
    }

    else
    {
      v68 = v84;
    }

    v69 = v216;
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v66(v41, v60);
    v68 = v235;
    v69 = v216;
  }

  v86 = v226;
  v85 = v227;
  v88 = *(v69 + 16);
  v87 = v69 + 16;
  v227 = v88;
  (v88)(v226, v219, v67);
  v89 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v214 = v63;
  if (v89 <= 64)
  {
    v91 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v92 = dispatch thunk of BinaryInteger._lowWord.getter();
    v220(v86, v67);
    if (v91)
    {
      v90 = v92;
    }

    else
    {
      v90 = v92;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v220(v86, v67);
    v90 = v235;
  }

  v93 = v234;
  if (v90 >= v68 / 3.0)
  {
    v235 = 0.0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C53390);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C533B0);
    v240 = v217;
    v97 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v97);

    MEMORY[0x2743B25F0](0xD00000000000002ALL, 0x8000000270C53400);
    v98 = v67;
    v99 = v203;
    static FieldElement.modulus.getter(*&v218, v232);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v100 = v220;
    v220(v99, v98);
    v101 = v235;
    v102 = v236;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v103 = v101;
    *(v103 + 8) = v102;
    *(v103 + 16) = 1;
    swift_willThrow();
    v100(v93, v98);
    return (v100)(v219, v98);
  }

  (v227)(v85, v234, v67);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v104 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v105 = dispatch thunk of BinaryInteger._lowWord.getter();
    v106 = v85;
    v95 = v220;
    v220(v106, v67);
    if (v104)
    {
      v96 = v105;
    }

    else
    {
      v96 = v105;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v94 = v85;
    v95 = v220;
    v220(v94, v67);
    v96 = v235;
  }

  v107 = v213;
  static FieldElement.modulus.getter(*&v218, v232);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v111 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v112 = dispatch thunk of BinaryInteger._lowWord.getter();
    v113 = v107;
    v109 = v95;
    v95(v113, v67);
    if (v111)
    {
      v110 = v112;
    }

    else
    {
      v110 = v112;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v108 = v107;
    v109 = v95;
    v95(v108, v67);
    v110 = v235;
  }

  if (v96 >= v110 / a10)
  {
    v235 = 0.0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(88);
    MEMORY[0x2743B25F0](0xD000000000000018, 0x8000000270C53430);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000015, 0x8000000270C533B0);
    v240 = v217;
    v117 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v117);

    MEMORY[0x2743B25F0](0x3D6168706C61202CLL, 0xE800000000000000);
    Double.write<A>(to:)();
    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C53450);
    v118 = v67;
    v119 = v203;
    static FieldElement.modulus.getter(*&v218, v232);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v109(v119, v118);
    v120 = v235;
    v121 = v236;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v122 = v120;
    *(v122 + 8) = v121;
    *(v122 + 16) = 1;
    swift_willThrow();
    v109(v93, v118);
    return (v109)(v219, v118);
  }

  v114 = v207;
  (v227)(v207, v93, v67);
  v115 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v216 = v87;
  if (v115 < 65)
  {
    v123 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v124 = dispatch thunk of BinaryInteger._lowWord.getter();
    v109(v114, v67);
    if (v123)
    {
      v116 = v124;
    }

    else
    {
      v116 = v124;
    }
  }

  else
  {
    lazy protocol witness table accessor for type Double and conformance Double();
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v109(v114, v67);
    v116 = v235;
  }

  v235 = ceil(v116 * a10) + 1.0;
  lazy protocol witness table accessor for type Double and conformance Double();
  v125 = v208;
  dispatch thunk of BinaryInteger.init<A>(_:)();
  FixedWidthInteger.nextPowerOfTwo.getter(v67, v212, v215);
  v109(v125, v67);
  v126 = v209;
  static FieldElement.modulus.getter(*&v218, v232);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v129 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v130 = dispatch thunk of BinaryInteger._lowWord.getter();
    v109(v126, v67);
    if (v129)
    {
      v127 = v130;
    }

    else
    {
      v127 = v130;
    }

    v128 = v215;
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v109(v126, v67);
    v127 = v235;
    v128 = v215;
  }

  v131 = v227;
  v132 = v210;
  (v227)(v210, v128, v67);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v135 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v136 = dispatch thunk of BinaryInteger._lowWord.getter();
    v109(v132, v67);
    if (v135)
    {
      v133 = v136;
    }

    else
    {
      v133 = v136;
    }

    v134 = v215;
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v109(v132, v67);
    v133 = v235;
    v134 = v215;
  }

  v137 = v211;
  v131(v211, v134, v67);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v139 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v140 = dispatch thunk of BinaryInteger._lowWord.getter();
    v109(v137, v67);
    if (v139)
    {
      v138 = v140;
    }

    else
    {
      v138 = v140;
    }
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v109(v137, v67);
    v138 = v235;
  }

  if (v138 / 4000.0 > v127 / v133)
  {
    goto LABEL_67;
  }

  v141 = v205;
  static FieldElement.modulus.getter(*&v218, v232);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    v144 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v145 = dispatch thunk of BinaryInteger._lowWord.getter();
    v109(v141, v67);
    v142 = (v144 & 1) != 0 ? v145 : v145;
    v143 = v215;
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v109(v141, v67);
    v142 = v235;
    v143 = v215;
  }

  v146 = v206;
  v131(v206, v143, v67);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v148 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v149 = dispatch thunk of BinaryInteger._lowWord.getter();
    v109(v146, v67);
    v147 = (v148 & 1) != 0 ? v149 : v149;
  }

  else
  {
    lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v109(v146, v67);
    v147 = v235;
  }

  if (v147 > v142 / 2600.0)
  {
    goto LABEL_67;
  }

  v158 = v203;
  static FieldElement.modulus.getter(*&v218, v232);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v159 = v197;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v160 = v204;
  dispatch thunk of static BinaryInteger./ infix(_:_:)();
  v109(v159, v67);
  v109(v158, v67);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v162 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v163 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v162)
    {
      if (v163 > 64)
      {
        v164 = *&v225;
        goto LABEL_82;
      }

      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v169 = v204;
      v170 = dispatch thunk of static Comparable.< infix(_:_:)();
      v109(v158, v67);
      if (v170)
      {
        v109(v169, v67);
        goto LABEL_67;
      }

      v167 = dispatch thunk of BinaryInteger._lowWord.getter();
      v168 = v169;
    }

    else
    {
      if (v163 >= 64)
      {
        v164 = *&v225;
        if (v225 < 1)
        {
          v109(v204, v67);
          goto LABEL_88;
        }

LABEL_82:
        v235 = v164;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v171 = v204;
        v172 = dispatch thunk of static Comparable.< infix(_:_:)();
        v109(v158, v67);
        v109(v171, v67);
        if (v172)
        {
          goto LABEL_67;
        }

        goto LABEL_88;
      }

      v166 = v204;
      v167 = dispatch thunk of BinaryInteger._lowWord.getter();
      v168 = v166;
    }

    v109(v168, v67);
    if (v167 < v225)
    {
      goto LABEL_67;
    }

    goto LABEL_88;
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
  {
    v161 = dispatch thunk of BinaryInteger._lowWord.getter();
    v109(v160, v67);
    if (v161 >= v225)
    {
      goto LABEL_88;
    }

LABEL_67:
    v235 = 0.0;
    v236 = 0xE000000000000000;
    _StringGuts.grow(_:)(166);
    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C53470);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000019, 0x8000000270C53490);
    v240 = v217;
    v150 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v150);

    MEMORY[0x2743B25F0](0x706C612020202020, 0xEB000000003D6168);
    Double.write<A>(to:)();
    MEMORY[0x2743B25F0](0xD00000000000001BLL, 0x8000000270C534B0);
    v240 = v225;
    v151 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v151);

    MEMORY[0x2743B25F0](0xD00000000000001ELL, 0x8000000270C534D0);
    v152 = v215;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2743B25F0](0xD000000000000029, 0x8000000270C534F0);
    v153 = v67;
    v154 = v203;
    static FieldElement.modulus.getter(*&v218, v232);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v109(v154, v153);
    v155 = v235;
    v156 = v236;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v157 = v155;
    *(v157 + 8) = v156;
    *(v157 + 16) = 1;
    swift_willThrow();
    v109(v234, v153);
    v109(v152, v153);
    return (v109)(v219, v153);
  }

  v235 = *&v225;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v165 = dispatch thunk of static Comparable.< infix(_:_:)();
  v109(v158, v67);
  v109(v160, v67);
  if (v165)
  {
    goto LABEL_67;
  }

LABEL_88:
  v233 = a12;
  v226 = a11;
  v220 = FixedWidthInteger.bitLength.getter(v67, v212);
  *(v223 + 48) = v220;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v173 = v201;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v174 = v197;
  dispatch thunk of static Numeric.* infix(_:_:)();
  v109(v173, v67);
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v175 = v203;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v109(v173, v224);
  v109(v174, v224);
  v176 = FixedWidthInteger.bitLength.getter(v224, v212);
  v109(v175, v224);
  v235 = v218;
  v236 = v222;
  v237 = v232;
  v238 = v226;
  v239 = v233;
  result = type metadata accessor for PINECircuitParameter(0, &v235);
  v177 = v223;
  v178 = v220;
  *(v223 + *(result + 88)) = v176;
  if (v178 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_97;
  }

  v179 = v176 + 1;
  v180 = v200;
  if (__OFADD__(v176, 1))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v181 = v225;
  v182 = v179 * v225;
  if ((v179 * v225) >> 64 != (v179 * v225) >> 63)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v183 = 2 * v178;
  v184 = __OFADD__(2 * v178, v182);
  v185 = 2 * v178 + v182;
  if (v184)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  *(v177 + 8) = v185;
  v184 = __OFADD__(v180, v185);
  v186 = v180 + v185;
  v187 = v217;
  if (v184)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v184 = __OFADD__(v186, v181);
  v188 = v186 + v181;
  if (v184)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  *(v177 + 16) = v188;
  *(v177 + 40) = v180;
  v184 = __OFADD__(v180, v183);
  v189 = v180 + v183;
  if (!v184)
  {
    v190 = result;
    *v177 = a10;
    *(v177 + 24) = v189;
    *(v177 + 32) = v187;
    v191 = v203;
    v192 = v224;
    v193 = v227;
    (v227)(v203, v219, v224);
    v194 = *&v218;
    FieldElement.init(_:)(v191, *&v218, v232);
    *(v177 + *(v190 + 92)) = *&v225;
    *(v177 + *(v190 + 96)) = v221;
    v233 = v190;
    v195 = v215;
    v193(v191, v215, v192);
    FieldElement.init(_:)(v191, v194, v232);
    v109(v234, v192);
    v109(v195, v192);
    return (v109)(v219, v192);
  }

LABEL_102:
  __break(1u);
  return result;
}