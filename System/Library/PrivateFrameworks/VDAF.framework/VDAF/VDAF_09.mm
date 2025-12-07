BOOL static Prio3PrepareState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(a1 + 24);
  v15 = *(a2 + 32);
  v16 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((static Share.== infix(_:_:)(v5, v6, v8, v9, AssociatedTypeWitness, AssociatedConformanceWitness) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (v10)
    {
      v13 = specialized static Seed.== infix(_:_:)(v7, v10);
      result = 0;
      if ((v13 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    return 0;
  }

  result = 0;
  if (v10)
  {
    return result;
  }

LABEL_8:
  if (v18 == v17)
  {
    return v16 == v15;
  }

  return result;
}

uint64_t Prio3PrepareState.init(measurementShare:jointRandSeed:aggregatorID:verifierLength:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t Prio3PrepareStateDecodableParameter.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = ShareDecodableParameter.encodedLength.getter(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  v8 = __OFADD__(v7, v4);
  result = v7 + v4;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t Prio3PrepareStateDecodableParameter.init(prio3:aggregatorID:)@<X0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24[3] = a6;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v13 = type metadata accessor for Prio3(0, v24);
  swift_getWitnessTable();
  v14 = VDAFProtocol.isLeaderAggregatorID(_:)(a2);
  if (v15)
  {
    return (*(*(v13 - 8) + 8))(a1, v13);
  }

  v17 = v14;
  if (v14)
  {
    v18 = (*(a5 + 48))(a3, a5);
  }

  else
  {
    v18 = (*(a6 + 8))(a4, a6);
  }

  v22 = v18;
  v25 = !v17;
  if (Prio3.isJointRandRequired.getter(v13))
  {
    v19 = (*(a6 + 8))(a4, a6);
  }

  else
  {
    v19 = 0;
  }

  v20 = (*(a5 + 64))(a3, a5);
  result = (*(*(v13 - 8) + 8))(a1, v13);
  v21 = v25;
  *a7 = v22;
  *(a7 + 8) = v21;
  *(a7 + 16) = v19;
  *(a7 + 24) = a2;
  *(a7 + 32) = v20;
  return result;
}

uint64_t Prio3PrepareState.init<A>(from:parameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedConformanceWitness = a4;
  v7 = *(a5 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = *(v9 + 8);
  if (v83 == 255)
  {
    v17 = v8;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v18 = 0;
    v18[1] = 0;
    swift_willThrow();
    return (*(v7 + 8))(v17, a5);
  }

  v81 = v7;
  v74 = v5;
  v72 = v14;
  v20 = *v9;
  v21 = v10;
  v22 = v11;
  v24 = *(v9 + 16);
  v23 = *(v9 + 24);
  v25 = *(v9 + 32);
  v26 = *(*(v13 + 8) + 8);
  v78 = v8;
  v76 = v12;
  v77 = v26;
  v27 = dispatch thunk of Collection.count.getter();
  v79 = v20;
  v80 = a5;
  v28 = v27;
  LODWORD(v73) = v83 & 1;
  LOBYTE(v90) = v83 & 1;
  v75 = v24;
  v91 = v24;
  v92 = v23;
  v29 = v22;
  v30 = v21;
  v31 = v76;
  v93 = v25;
  v85 = v30;
  v86 = AssociatedConformanceWitness;
  v87 = v29;
  v88 = v76;
  v89 = v20;
  v32 = type metadata accessor for Prio3PrepareStateDecodableParameter(0, &v85);
  if (v28 != Prio3PrepareStateDecodableParameter.encodedLength.getter(v32))
  {
    v89 = 0;
    v90 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v89 = v30;
    v90 = AssociatedConformanceWitness;
    v91 = v29;
    v92 = v31;
    type metadata accessor for Prio3PrepareState(0, &v89);
    v47 = _typeName(_:qualified:)();
    v49 = v48;

    v85 = v47;
    v86 = v49;
    MEMORY[0x2743B25F0](0x6572697571657220, 0xEB00000000203A64);
    v89 = v79;
    LOBYTE(v90) = v73;
    v91 = v75;
    v92 = v23;
    v93 = v25;
    v84 = Prio3PrepareStateDecodableParameter.encodedLength.getter(v32);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v50);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v51 = v78;
    v52 = v80;
    v89 = dispatch thunk of Collection.count.getter();
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v53);

    v54 = v85;
    v55 = v86;
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v56 = v54;
    v56[1] = v55;
    swift_willThrow();
    return (*(v81 + 8))(v51, v52);
  }

  v71 = v25;
  v73 = v23;
  (*(v81 + 16))(v16, v78, v80);
  ArraySlice.init<A>(_:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v77 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ShareDecodableParameter.encodedLength.getter(v79, v83 & 1, AssociatedTypeWitness, AssociatedConformanceWitness);
  v34 = specialized Collection.prefix(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  specialized Collection.dropFirst(_:)();
  v76 = v41;
  v89 = v34;
  v90 = v36;
  v91 = v38;
  v92 = v40;
  swift_unknownObjectRetain();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVys5UInt8VGMd, "xq");
  v43 = lazy protocol witness table accessor for type ArraySlice<UInt8> and conformance ArraySlice<A>();
  v44 = v74;
  v45 = Share.init<A>(from:parameter:)(&v89, v79, v83 & 1, v77, v42, AssociatedConformanceWitness, v43);
  if (v44)
  {
    (*(v81 + 8))(v78, v80);
    return swift_unknownObjectRelease();
  }

  v57 = v80;
  v83 = v45;
  v94 = v46 & 1;
  if (v75 < 1)
  {
    (*(v81 + 8))(v78, v80);
    result = swift_unknownObjectRelease();
    v63 = 0;
    goto LABEL_12;
  }

  v36 = specialized Collection.prefix(_:)();
  v79 = v58;
  AssociatedConformanceWitness = v59;
  v34 = v60;
  v61 = specialized Collection.dropFirst(_:)();
  if (v34)
  {
    v77 = v61;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v65 = swift_dynamicCastClass();
    if (!v65)
    {
      swift_unknownObjectRelease();
      v65 = MEMORY[0x277D84F90];
    }

    v66 = *(v65 + 16);

    v67 = v81;
    if (__OFSUB__(v34 >> 1, AssociatedConformanceWitness))
    {
      goto LABEL_25;
    }

    if (v66 != (v34 >> 1) - AssociatedConformanceWitness)
    {
      goto LABEL_26;
    }

    v63 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v64 = v73;
    if (!v63)
    {
      swift_unknownObjectRelease();
      v63 = MEMORY[0x277D84F90];
    }

    (*(v67 + 8))(v78, v57);
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    goto LABEL_20;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v36, v79, AssociatedConformanceWitness, v34);
    v63 = v62;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = (*(v81 + 8))(v78, v57);
LABEL_12:
    v64 = v73;
LABEL_20:
    v68 = v71;
    v69 = v72;
    if ((v64 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v64 <= 0xFF)
    {
      break;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease_n();
  }

  v70 = v94;
  *v72 = v83;
  *(v69 + 8) = v70;
  v69[2] = v63;
  *(v69 + 24) = v64;
  v69[4] = v68;
  return result;
}

uint64_t protocol witness for VDAFDecodable.init<A>(from:parameter:) in conformance Prio3PrepareState<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = v5;
  return Prio3PrepareState.init<A>(from:parameter:)(a1, v8, *(a5 + 16), *(a5 + 24), a3);
}

uint64_t Prio3PrepareState.encodedLength.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = Share.encodedLength.getter(v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v4)
  {
    v8 = *(v4 + 16);
    v9 = __OFADD__(result, v8);
    result += v8;
    if (v9)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Prio3PrepareState.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = Share.encode<A>(into:)(a1, v8, v9, AssociatedTypeWitness, a3, AssociatedConformanceWitness, a4);
  if (v10)
  {

    return Seed.encode<A>(into:)(a1, v10, a3, a4);
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3PrepareState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Prio3PrepareState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for Prio3PrepareState(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Prio3PrepareStateDecodableParameter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Prio3PrepareStateDecodableParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for Prio3PrepareStateDecodableParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t AES.CTR.Nonce.withUnsafeMutableBytes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_s6UInt32VADtMd, &_ss6UInt64V_s6UInt32VADtMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  return _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v3, partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawBufferPointer) -> (@out A, @error @owned Error), v8, v5, v6, a3, MEMORY[0x277D84950], &v9);
}

Swift::Void __swiftcall AES.CTR.Nonce.incrementCounter()()
{
  v1 = bswap32(*(v0 + 12));
  *(v0 + 12) = bswap32(v1 + 1);
  if (v1 == -1)
  {
    v2 = bswap32(*(v0 + 8));
    *(v0 + 8) = bswap32(v2 + 1);
    if (v2 == -1)
    {
      *v0 = bswap64(bswap64(*v0) + 1);
    }
  }
}

uint64_t static AES.CTR.encrypt<A>(_:using:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v9 = a4;
  v12 = HIDWORD(a4);
  v18 = specialized Data.init<A>(_:)(a1, a5, *(*(*(*(a6 + 8) + 8) + 8) + 8));
  v19 = v13;
  v15[2] = a2;
  v15[3] = a3;
  v16 = v9;
  v17 = v12;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(a7, v15);
  result = v18;
  if (v7)
  {
    return outlined consume of Data._Representation(v18, v19);
  }

  return result;
}

uint64_t AES.CTR.Nonce.init()()
{
  v2 = 0;
  MEMORY[0x2743B35C0](&v2, 8);
  v0 = v2;
  v2 = 0;
  MEMORY[0x2743B35C0](&v2, 8);
  v2 = 0;
  MEMORY[0x2743B35C0](&v2, 8);
  return v0;
}

uint64_t AES.CTR.Nonce.init<A>(nonceBytes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dispatch thunk of Collection.count.getter() == 12 || dispatch thunk of Collection.count.getter() == 16)
  {
    UnsafeMutableRawBufferPointer.copyBytes<A>(from:)();
    a3 = 0;
    (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    (*(*(a2 - 8) + 8))(a1, a2);
  }

  return a3;
}

uint64_t _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v12, v12 + *(*(v15 - 8) + 64), v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

Swift::Int AESCTRError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x2743B3170](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AESCTRError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2743B3170](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AESCTRError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x2743B3170](v2);
  return Hasher._finalize()();
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x277D85DE8];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      outlined consume of Data._Representation(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_270C44D60;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(a1);
      v8 = v22;
      v9 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      outlined consume of Data._Representation(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      a1(&v22, &v22 + BYTE6(v5));
      v8 = v22;
      v9 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v8;
    v3[1] = v9;
    return;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    a1(&v22, &v22);
    return;
  }

  outlined consume of Data._Representation(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_270C44D60;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v10 = *(&v22 + 1);
  v11 = *(v22 + 16);
  v12 = *(v22 + 24);
  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = __DataStorage._offset.getter();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = MEMORY[0x2743B2250]();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  a1(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v10 | 0x8000000000000000;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = a1;

  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = v3 - v7;
  if (__OFSUB__(v3, v7))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v4 - v3;
  v10 = MEMORY[0x2743B2250]();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12(v6 + v8, v6 + v8 + v11);
}

uint64_t specialized static AES.CTR.encryptInPlace(_:using:updating:)(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44[2] = *MEMORY[0x277D85DE8];
  result = SymmetricKey.bitCount.getter();
  if (qword_2880A5378 != result && unk_2880A5380 != result && qword_2880A5388 != result)
  {
    lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError();
    swift_allocError();
    *v34 = 1;
    return swift_willThrow();
  }

  if (a1)
  {
    v11 = a2 - a1;
    if (v11 >= 1)
    {
      v36 = a4;
      lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer();
      v12 = 0;
      v13 = 0;
      v14 = *(a4 + 12);
      v15 = a1 + 1;
      v35 = a1;
      v16 = v11;
      while (1)
      {
        v39 = v16 - 16;
        if (v16 >= 16)
        {
          v17 = 16;
        }

        else
        {
          v17 = v16;
        }

        v18 = *(a4 + 8);
        v37 = *a4;
        v41 = *a4;
        if (v11 - 16 * v12 >= 16)
        {
          v19 = 16;
        }

        else
        {
          v19 = v11 - 16 * v12;
        }

        v20 = v13 + 16;
        v21 = __OFADD__(v13, 16);
        v38 = v21;
        v42 = v18;
        v43 = v14;
        v40 = v14;
        v44[0] = &v41;
        v44[1] = v44;
        result = static AES.permute<A>(_:key:)();
        if (v4)
        {
          return result;
        }

        if ((v11 - v13) < 0)
        {
          __break(1u);
        }

        if (v11 != v13)
        {
          break;
        }

LABEL_30:
        v24 = bswap32(v40);
        v14 = bswap32(v24 + 1);
        a4 = v36;
        *(v36 + 12) = v14;
        if (v24 == -1)
        {
          v25 = bswap32(v18);
          *(v36 + 8) = bswap32(v25 + 1);
          if (v25 == -1)
          {
            *v36 = bswap64(bswap64(v37) + 1);
          }
        }

        ++v12;
        ++v15;
        ++a1;
        v13 += 16;
        v16 = v39;
        if (((v20 < v11) & ~v38) == 0)
        {
          return result;
        }
      }

      v22 = v44[0];
      if (v19 < 8 || &v35[v13 / 0x10] < v44[0] + v19 && v35[v13 / 0x10].u64 + v19 > v44[0])
      {
        v23 = 0;
        do
        {
LABEL_29:
          a1->i8[v23] ^= *(v22 + v23);
          ++v23;
        }

        while (v17 != v23);
        goto LABEL_30;
      }

      if (v19 >= 0x20)
      {
        v26 = v17 & 0xFFFFFFFFFFFFFFE0;
        v23 = v19 & 0xFFFFFFFFFFFFFFE0;
        v27 = (v44[0] + 16);
        v28 = v15;
        do
        {
          v29 = veorq_s8(*v28, *v27);
          v28[-1] = veorq_s8(v28[-1], v27[-1]);
          *v28 = v29;
          v27 += 2;
          v28 += 2;
          v26 -= 32;
        }

        while (v26);
        if (v19 == v23)
        {
          goto LABEL_30;
        }

        if ((v19 & 0x18) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v23 = 0;
      }

      v30 = (v22 + v23);
      v31 = &a1->i8[v23];
      v32 = v23 - (v17 & 0xFFFFFFFFFFFFFFF8);
      v23 = v19 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v33 = *v30++;
        *v31 = veor_s8(*v31, v33);
        ++v31;
        v32 += 8;
      }

      while (v32);
      if (v19 == v23)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawBufferPointer) -> (@out A, @error @owned Error)(uint64_t a1, uint64_t a2, void *a3)
{
  result = (*(v3 + 24))(a1, a2);
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t specialized static AES.CTR.encryptInPlace(_:using:nonce:)(int8x16_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v55[2] = *MEMORY[0x277D85DE8];
  result = SymmetricKey.bitCount.getter();
  if (qword_2880A5978 != result && unk_2880A5980 != result && qword_2880A5988 != result)
  {
    lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError();
    swift_allocError();
    *v46 = 1;
    return swift_willThrow();
  }

  if (a1 && a2 - a1 >= 1)
  {
    v13 = HIDWORD(a5);
    lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer();
    v14 = a2 - a1;
    v15 = a5;
    v47 = a1;
    v16 = 0;
    v17 = 0;
    v18 = a1 + 1;
    v19 = a1;
    v20 = v14;
    v21 = a4;
    do
    {
      v50 = v20 - 16;
      v51 = v16;
      if (v20 >= 16)
      {
        v29 = 16;
      }

      else
      {
        v29 = v20;
      }

      v30 = v21;
      v52 = v21;
      if (v14 - 16 * v16 >= 16)
      {
        v31 = 16;
      }

      else
      {
        v31 = v14 - 16 * v16;
      }

      v32 = v15;
      v53 = v15;
      v54 = v13;
      v33 = v13;
      v49 = v17 + 16;
      v34 = __OFADD__(v17, 16);
      v48 = v34;
      v55[0] = &v52;
      v55[1] = v55;
      v35 = v14;
      result = static AES.permute<A>(_:key:)();
      if (v5)
      {
        return result;
      }

      if ((v35 - v17) < 0)
      {
        __break(1u);
      }

      v14 = v35;
      v21 = v30;
      if (v35 != v17)
      {
        v36 = v55[0];
        if (v31 < 8 || &v47[v17 / 0x10] < v55[0] + v31 && v47[v17 / 0x10].u64 + v31 > v55[0])
        {
          v37 = 0;
          do
          {
LABEL_39:
            v19->i8[v37] ^= *(v36 + v37);
            ++v37;
          }

          while (v29 != v37);
          goto LABEL_12;
        }

        if (v31 >= 0x20)
        {
          v38 = v29 & 0xFFFFFFFFFFFFFFE0;
          v37 = v31 & 0xFFFFFFFFFFFFFFE0;
          v39 = (v55[0] + 16);
          v40 = v18;
          do
          {
            v41 = veorq_s8(*v40, *v39);
            v40[-1] = veorq_s8(v40[-1], v39[-1]);
            *v40 = v41;
            v39 += 2;
            v40 += 2;
            v38 -= 32;
          }

          while (v38);
          if (v31 == v37)
          {
            goto LABEL_12;
          }

          if ((v31 & 0x18) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v37 = 0;
        }

        v42 = (v36 + v37);
        v43 = &v19->i8[v37];
        v44 = v37 - (v29 & 0xFFFFFFFFFFFFFFF8);
        v37 = v31 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45 = *v42++;
          *v43 = veor_s8(*v43, v45);
          ++v43;
          v44 += 8;
        }

        while (v44);
        if (v31 != v37)
        {
          goto LABEL_39;
        }
      }

LABEL_12:
      v22 = bswap32(v33);
      v23 = __CFADD__(v22, 1);
      v24 = v22 + 1;
      v25 = v23;
      LODWORD(v13) = bswap32(v24);
      v26 = bswap32(v32);
      v23 = __CFADD__(v26, 1);
      v27 = bswap32(v26 + 1);
      v28 = bswap64(bswap64(v30) + 1);
      if (!v23)
      {
        v28 = v30;
      }

      if (v25)
      {
        v15 = v27;
      }

      else
      {
        v15 = v32;
      }

      if (v25)
      {
        v21 = v28;
      }

      v17 += 16;
      v16 = v51 + 1;
      ++v18;
      ++v19;
      v20 = v50;
    }

    while (((v49 < v14) & ~v48) != 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AESCTRError and conformance AESCTRError()
{
  result = lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError;
  if (!lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError;
  if (!lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AESCTRError and conformance AESCTRError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AESCTRError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AESCTRError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer()
{
  result = lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer;
  if (!lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnsafeMutableRawBufferPointer and conformance UnsafeMutableRawBufferPointer);
  }

  return result;
}

_OWORD *specialized FieldElement.integerValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v37 = a1;
  v38 = a2;
  v36 = xmmword_270C44F50;
  _UInt128.multipliedFullWidth(by:)(&v33, &v39, &v36);
  v4 = v33;
  v5 = v39;
  v6 = -v39;
  if (one-time initialization token for p != -1)
  {
    swift_once();
  }

  v39 = static MontgomeryFiniteField128.p;
  v37 = v6;
  v38 = 0;
  _UInt128.multipliedFullWidth(by:)(&v33, &v34, &v37);
  v7 = __CFADD__(v34, v5);
  v8 = v35 + *(&v5 + 1);
  if (__CFADD__(v35, *(&v5 + 1)))
  {
    v9 = 1;
LABEL_11:
    v8 += v7 & 1;
    goto LABEL_13;
  }

  if ((v8 == -1) | v7 & 1)
  {
    v9 = (v8 == -1) & v7;
    v7 |= v8 != -1;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_13:
  v10 = v4 + v33;
  v11 = __CFADD__(v4, v33);
  v12 = *(&v4 + 1) + *(&v33 + 1);
  if (__CFADD__(*(&v4 + 1), *(&v33 + 1)))
  {
    if (v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v12 == -1)
    {
      v12 = v11 - 1;
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (v11)
    {
LABEL_23:
      ++v12;
      if ((v9 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_20:
      v13 = 1;
      goto LABEL_25;
    }
  }

  if (v9)
  {
    goto LABEL_20;
  }

LABEL_24:
  v13 = 0;
LABEL_25:
  v14 = v10 + v13;
  if (__CFADD__(v10, v13))
  {
    v15 = v12 + 1;
  }

  else
  {
    v15 = v12;
  }

  v16 = static MontgomeryFiniteField128.p;
  v36 = static MontgomeryFiniteField128.p;
  v32[0] = -v8;
  v32[1] = 0;
  result = _UInt128.multipliedFullWidth(by:)(&v39, &v37, v32);
  v18 = *(&v39 + 1);
  v19 = __CFADD__(v37, v8);
  v20 = v38 + v14;
  if (__CFADD__(v38, v14))
  {
    v20 += v19;
    v21 = v15 + v39;
    v22 = __CFADD__(v15, v39);
    if (*(&v39 + 1) == -1)
    {
      v18 = v22 - 1;
    }

    else
    {
      v18 = *(&v39 + 1) + v22;
    }

    v23 = 1;
    goto LABEL_61;
  }

  if (v20 != -1 && !v19)
  {
    v21 = v15 + v39;
    v26 = __CFADD__(v15, v39);
    if (*(&v39 + 1) == -1)
    {
      v18 = v26 - 1;
    }

    else
    {
      v18 = *(&v39 + 1) + v26;
    }

    goto LABEL_60;
  }

  v24 = v20 == -1 && v19;
  v20 += (v20 != -1) | v19;
  v21 = v15 + v39;
  v25 = __CFADD__(v15, v39);
  if (*(&v39 + 1) == -1)
  {
    v18 = v25 - 1;
    if (v24)
    {
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  if (!v25)
  {
    if (v24)
    {
      goto LABEL_59;
    }

LABEL_60:
    v23 = 0;
    goto LABEL_61;
  }

  v18 = *(&v39 + 1) + 1;
  if (!v24)
  {
    goto LABEL_60;
  }

LABEL_59:
  v23 = 1;
LABEL_61:
  v27 = __CFADD__(v21, v23);
  v28 = v21 + v23;
  v29 = v27;
  if (v18 != v29 << 63 >> 63)
  {
    goto LABEL_68;
  }

  v30 = v20 < v16;
  if (v28 != *(&v16 + 1))
  {
    v30 = v28 < *(&v16 + 1);
  }

  if (!v30)
  {
LABEL_68:
    v27 = v20 >= v16;
    v20 -= v16;
    v31 = !v27;
    v28 = v28 - *(&v16 + 1) - v31;
  }

  *a3 = v20;
  a3[1] = v28;
  return result;
}

unint64_t specialized FieldElement.integerValue.getter(uint64_t a1)
{
  v2 = -a1;
  result = (0xFFFFFFFEFFFFFFFFLL * a1 * 0xFFFFFFFF00000001) >> 64;
  if (__CFADD__(v2, a1))
  {
    if (result > 0xFFFFFFFEFFFFFFFFLL)
    {
      result += 0x100000000;
    }

    else
    {
      ++result;
    }
  }

  return result;
}

{
  v1 = (0xCFFE47FFFEAFFFFFLL * a1 * 0xFFFEB00001uLL) >> 64;
  if (__CFADD__(-a1, a1))
  {
    ++v1;
  }

  if (v1 >= 0xFFFEB00001)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t _s4VDAF12FieldElementPAAE18elementsToIntegersySay06FiniteB0_11IntegerTypeQZGSayxGFZAA7Field64V_Tt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = (0xFFFFFFFEFFFFFFFFLL * v5 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v5, v5))
      {
        if (v6 > 0xFFFFFFFEFFFFFFFFLL)
        {
          v6 += 0x100000000;
        }

        else
        {
          ++v6;
        }
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

unint64_t *_s4VDAF35Prio3PrepareStateDecodableParameterV5prio312aggregatorIDACyxq_GAA0B0Vyxq_G_SitKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt2B5@<X0>(unint64_t *result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*result <= a2)
  {
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = result[2];
    }

    v9 = a2 != 0;
    v10 = 32 * (result[4] > 0);
    result = specialized FullyLinearProof.verifierLength.getter();
    *a3 = v4;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = a2;
    *(a3 + 32) = result;
  }

  return result;
}

_BYTE *_s4VDAF17Prio3PrepareStateV4from9parameterACyxq_Gqd___AA0bcD18DecodableParameterVyxq_GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 8);
  if (v7 == 255)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0;
    return swift_willThrow();
  }

  v9 = *a3;
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  if (result)
  {
    v12 = a2 - result;
  }

  else
  {
    v12 = 0;
  }

  v13 = *a3;
  if ((v7 & 1) == 0)
  {
    if ((v9 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v13 = 8 * v9;
  }

  v14 = __OFADD__(v13, v10);
  v15 = v13 + v10;
  if (v14)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v12 != v15)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    v11 = &v45;
    _StringGuts.grow(_:)(24);

    v45 = 0xD000000000000061;
    v46 = 0x8000000270C527E0;
    if ((v7 & 1) == 0)
    {
      if ((v9 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v9 *= 8;
    }

    if (!__OFADD__(v9, v10))
    {
      v47 = v9 + v10;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v25);

      MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
      v47 = v12;
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v26);

      v27 = v45;
      v28 = v46;
      lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
      swift_allocError();
      *v29 = v27;
      v29[1] = v28;
      return swift_willThrow();
    }

    goto LABEL_40;
  }

  v43 = *(a3 + 16);
  v44 = v4;
  v41 = *(a3 + 24);
  v42 = a4;
  v16 = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
  if ((v7 & 1) == 0 && (v9 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_41;
  }

  v40 = v11;
  v5 = v16;
  v6 = specialized Collection.prefix(_:)();
  v18 = v17;
  v20 = v19;
  v11 = v21;
  specialized Collection.dropFirst(_:)();

  v22 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v6, v18, v20, v11, v9, v7 & 1);
  if (v4)
  {
    return swift_unknownObjectRelease();
  }

  v44 = v23;
  v39 = v22;
  v7 = v43;
  if (v43 <= 0)
  {
    v24 = swift_unknownObjectRelease();
    v34 = 0;
    v35 = v41;
    goto LABEL_35;
  }

  v11 = specialized Collection.prefix(_:)();
  v38 = v30;
  v5 = v31;
  v6 = v32;
  v7 = specialized Collection.dropFirst(_:)();
  if (v6)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x277D84F90];
    }

    v37 = *(v36 + 16);

    if (__OFSUB__(v6 >> 1, v5))
    {
      goto LABEL_45;
    }

    if (v37 != (v6 >> 1) - v5)
    {
      goto LABEL_46;
    }

    v34 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v34)
    {
      v35 = v41;
      goto LABEL_34;
    }

    v34 = MEMORY[0x277D84F90];
    v7 = v11;
    goto LABEL_33;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v11, v38, v5, v6);
    v34 = v33;
LABEL_33:
    v35 = v41;
    swift_unknownObjectRelease();
    v11 = v7;
LABEL_34:
    v24 = swift_unknownObjectRelease();
LABEL_35:
    if ((v35 & 0x8000000000000000) != 0)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v35 <= 0xFF)
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_unknownObjectRelease_n();
  }

  *v42 = v39;
  *(v42 + 8) = v44 & 1;
  *(v42 + 16) = v34;
  *(v42 + 24) = v35;
  *(v42 + 32) = v40;
  return v24;
}

void Prio3<>.init(numOfAggregators:numOfProofs:bitWidth:measurementLength:chunkLength:)(void *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  if (a5 < 1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = _s4VDAF13SumVectorTypeV17encodedLengthFrom8bitWidth011measurementF0S2i_SitKFZAA7Field64V_SWTt1g5(a3, a4);
  if (v6)
  {
    return;
  }

  v14 = v13 + a5;
  if (__OFADD__(v13, a5))
  {
    goto LABEL_10;
  }

  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a5 + 0x4000000000000000 < 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v21[0] = v13;
  v21[1] = a4;
  v21[2] = 1;
  v21[3] = a5;
  v21[4] = v16 / a5;
  v21[5] = a3;
  v21[6] = 2 * a5;
  v22 = vdupq_n_s64(2uLL);
  v23 = 2;
  v24 = v16 / a5;
  v25 = a5;
  _s4VDAF5Prio3V3flp16numOfAggregators0dE6ProofsACyxq_Gx_S2itKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt3B5(v21, result, a2, v20);
  v17 = v20[5];
  a6[4] = v20[4];
  a6[5] = v17;
  a6[6] = v20[6];
  v18 = v20[1];
  *a6 = v20[0];
  a6[1] = v18;
  v19 = v20[3];
  a6[2] = v20[2];
  a6[3] = v19;
}

__n128 _s4VDAF5Prio3V3flp16numOfAggregators0dE6ProofsACyxq_Gx_S2itKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt3B5@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 - 2) >= 0xFE)
  {
    _StringGuts.grow(_:)(46);

    v10 = 0xD000000000000032;
    v11 = 0x8000000270C52C10;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x2743B25F0](0, 0xE000000000000000);

    MEMORY[0x2743B25F0](0x20746F67202CLL, 0xE600000000000000);
    goto LABEL_5;
  }

  if ((a3 - 256) < 0xFFFFFFFFFFFFFF02)
  {
    _StringGuts.grow(_:)(48);

    v10 = 0xD00000000000003CLL;
    v11 = 0x8000000270C52C50;
LABEL_5:
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v4);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v5 = v10;
    *(v5 + 8) = v11;
    *(v5 + 16) = 1;
    swift_willThrow();
    return result;
  }

  *a4 = a2;
  *(a4 + 8) = a3;
  v7 = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = v7;
  v8 = *(a1 + 80);
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = v8;
  result = *a1;
  v9 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v9;
  return result;
}

__n128 Prio3<>.init(numOfAggregators:numOfProofs:bitWidth:measurementLength:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  _s4VDAF13SumVectorTypeV8bitWidth17measurementLengthACyxq_GSi_SitKcfCAA7Field64V_SWTt2g5(a3, a4, v13);
  if (!v5)
  {
    v14[2] = v13[2];
    v14[3] = v13[3];
    v14[4] = v13[4];
    v14[5] = v13[5];
    v14[0] = v13[0];
    v14[1] = v13[1];
    _s4VDAF5Prio3V3flp16numOfAggregators0dE6ProofsACyxq_Gx_S2itKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt3B5(v14, a1, a2, v12);
    v10 = v12[5];
    *(a5 + 64) = v12[4];
    *(a5 + 80) = v10;
    *(a5 + 96) = v12[6];
    v11 = v12[1];
    *a5 = v12[0];
    *(a5 + 16) = v11;
    result = v12[3];
    *(a5 + 32) = v12[2];
    *(a5 + 48) = result;
  }

  return result;
}

unint64_t _s4VDAF13SumVectorTypeV8bitWidth17measurementLengthACyxq_GSi_SitKcfCAA7Field64V_SWTt2g5@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _s4VDAF13SumVectorTypeV17encodedLengthFrom8bitWidth011measurementF0S2i_SitKFZAA7Field64V_SWTt1g5(a1, a2);
  if (!v3)
  {
    v8 = sqrtf(result);
    if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v8 > -9.2234e18)
    {
      if (v8 < 9.2234e18)
      {
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        result = _s4VDAF13SumVectorTypeV17encodedLengthFrom8bitWidth011measurementF0S2i_SitKFZAA7Field64V_SWTt1g5(a1, a2);
        v10 = result + v9;
        if (!__OFADD__(result, v9))
        {
          v11 = __OFSUB__(v10, 1);
          v12 = v10 - 1;
          if (!v11)
          {
            if (v9 + 0x4000000000000000 >= 0)
            {
              v13 = v12 / v9;
              *a3 = result;
              *(a3 + 8) = a2;
              *(a3 + 16) = 1;
              *(a3 + 24) = v9;
              *(a3 + 32) = v13;
              *(a3 + 40) = a1;
              *(a3 + 48) = 2 * v9;
              *(a3 + 56) = vdupq_n_s64(2uLL);
              *(a3 + 72) = 2;
              *(a3 + 80) = v13;
              *(a3 + 88) = v9;
              return result;
            }

LABEL_18:
            __break(1u);
            return result;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

unint64_t Prio3<>.shardAndEncode(_:nonce:seedBytes:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, unint64_t a6)
{
  v14 = v6[5];
  v41 = v6[4];
  v42 = v14;
  v43 = v6[6];
  v15 = v6[1];
  v37 = *v6;
  v38 = v15;
  v16 = v6[3];
  v39 = v6[2];
  v40 = v16;
  outlined copy of Data._Representation(a3, a4);
  v17 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v18 = specialized Prio3.shard<A>(_:nonce:seedBytes:)(v34, a1, a2, v17, a5, a6);

  if (!v7)
  {
    a6 = specialized VDAFEncodable.encodedData.getter(v34[0]);

    v19 = v18[2];
    if (v19)
    {
      v33 = a6;
      v44 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
      v20 = 4;
      v21 = v44;
      do
      {
        v22 = v18;
        v23 = *&v18[v20];
        v24 = *&v18[v20 + 2];
        v36 = v18[v20 + 4];
        v35[0] = v23;
        v35[1] = v24;
        outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(v35, v34, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMR);
        specialized VDAFEncodable.encodedData.getter();
        v26 = v25;
        v28 = v27;
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v35, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMR);
        v44 = v21;
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v21 = v44;
        }

        *(v21 + 16) = v30 + 1;
        v31 = v21 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v20 += 5;
        --v19;
        v18 = v22;
      }

      while (v19);

      return v33;
    }

    else
    {
    }
  }

  return a6;
}

void *specialized Prio3.shard<A>(_:nonce:seedBytes:)(uint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4, char *a5, unint64_t a6)
{
  v8 = v7;
  v182 = a1;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v184 = *(v203 - 1);
  MEMORY[0x28223BE20](v203);
  v202 = &v172 - v14;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v183 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v200 = &v172 - v15;
  v16 = *(a4 + 16);
  if (v16 != 16)
  {
    v207 = 0;
    v208 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v207 = 0xD000000000000030;
    v208 = 0x8000000270C52B10;
    v204[0] = 16;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v19);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v204[0] = v16;
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v20);

    v21 = v207;
    v22 = v208;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v23 = v21;
    *(v23 + 8) = v22;
    *(v23 + 16) = 1;
    return swift_willThrow();
  }

  v17 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v25 = *(a5 + 2);
      v24 = *(a5 + 3);
      v26 = __OFSUB__(v24, v25);
      v18 = v24 - v25;
      if (v26)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_13:
    v27 = *(v6 + 64);
    v211 = *(v6 + 48);
    v212 = v27;
    v28 = *(v6 + 96);
    v213 = *(v6 + 80);
    v214 = v28;
    v29 = *(v6 + 32);
    v209 = *(v6 + 16);
    v210 = v29;
    v30 = *v6;
    v31 = *v6 - 1;
    if (__OFSUB__(*v6, 1))
    {
      goto LABEL_171;
    }

    if (*v6 + 0x3FFFFFFFFFFFFFFFLL < 0)
    {
LABEL_172:
      __break(1u);
    }

    else
    {
      v215 = a2;
      a2 = v210;
      v32 = (2 * v31) | 1;
      if (v210 <= 0)
      {
        v33 = 0;
      }

      else
      {
        v33 = v30;
      }

      v26 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (!v26)
      {
        if ((v34 - 0x400000000000000) >> 59 == 31)
        {
          v198 = a3;
          a3 = 32 * v34;
          if (v18 == 32 * v34)
          {
            v179 = a4;
            v199 = v31;
            v172 = v30;
            v197 = v6;
            v35 = specialized Prio3.splitSeedBytes<A>(_:)(a5, a6);
            v177 = v36;
            v174 = v37;
            v38 = *(v35 + 16);
            a5 = MEMORY[0x277D84F90];
            v178 = v35;
            if (v38)
            {
              v39 = v35;
              v195 = v7;
              v173 = a2;
              v207 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
              a5 = v207;
              v40 = (v39 + 32);
              a6 = v38;
              do
              {
                v41 = *v40;
                v207 = a5;
                v43 = *(a5 + 2);
                v42 = *(a5 + 3);

                if (v43 >= v42 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
                  a5 = v207;
                }

                *(a5 + 2) = v43 + 1;
                *&a5[8 * v43 + 32] = v41;
                v40 += 3;
                --a6;
              }

              while (a6);
              v207 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
              v46 = v207;
              v47 = v178 + 5;
              do
              {
                v48 = *v47;
                v207 = v46;
                a4 = *(v46 + 2);
                v49 = *(v46 + 3);

                if (a4 >= v49 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), a4 + 1, 1);
                  v46 = v207;
                }

                *(v46 + 2) = a4 + 1;
                *&v46[8 * a4 + 32] = v48;
                v47 += 3;
                --v38;
              }

              while (v38);
              v196 = v46;
              a2 = v173;
              v8 = v195;
              goto LABEL_39;
            }

LABEL_38:
            v196 = a5;
LABEL_39:
            v6 = &v209;
            v52 = specialized SumVectorType.encode(measurement:)(v215, v198);
            v215 = v8;
            if (v8)
            {
            }

            a3 = *(v197 + 8);
            v54 = v178;
            v195 = a3;
            v181 = v52;
            if (a2 > 0)
            {
              v173 = a2;
              if (!v177)
              {
                goto LABEL_198;
              }

              a3 = v178[2];

              a6 = 0;
              v180 = MEMORY[0x277D84F90];
              a2 = 48;
              while (1)
              {
                v18 = 24 * a6 + 48;
                do
                {
                  if (a3 == a6)
                  {
                    v6 = MEMORY[0x277D84F90];
                    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v172 & ~(v172 >> 63), 0, MEMORY[0x277D84F90]);
                    a3 = *(a6 + 16);
                    v18 = *(a6 + 24);
                    a4 = a3 + 1;
                    if (a3 >= v18 >> 1)
                    {
                      goto LABEL_184;
                    }

                    goto LABEL_59;
                  }

                  if (a6 >= v54[2])
                  {
                    goto LABEL_161;
                  }

                  v6 = *(v54 + v18);
                  v18 += 24;
                  ++a6;
                }

                while (!v6);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v180 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v180 + 2) + 1, 1, v180);
                }

                v56 = *(v180 + 2);
                v55 = *(v180 + 3);
                a4 = v56 + 1;
                v54 = v178;
                if (v56 >= v55 >> 1)
                {
                  v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v180);
                  v54 = v178;
                  v180 = v58;
                }

                v57 = v180;
                *(v180 + 2) = a4;
                *&v57[8 * v56 + 32] = v6;
              }
            }

            v63 = v199;
            if ((v199 & 0x8000000000000000) != 0)
            {
              goto LABEL_188;
            }

            a2 = v52;

            if (!v63)
            {

              a4 = 0;
              a5 = v215;
              goto LABEL_100;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = specialized _ArrayBuffer._consumeAndCreateNew()(v181);
            }

            v18 = 0;
            *&v193 = a5 + 32;
            v191 = (v184 + 16);
            v189 = (v183 + 8);
            *&v190 = v184 + 8;
            a3 = a2 + 32;
            v192 = xmmword_270C44540;
            v118 = v199;
            v194 = a2;
            while (v18 != v118)
            {
              if (v18 == 255)
              {
                goto LABEL_176;
              }

              if (v18 >= *(a5 + 2))
              {
                goto LABEL_177;
              }

              v6 = v18 + 1;
              v119 = *(v193 + 8 * v18);

              a6 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
              inited = swift_initStackObject();
              *(inited + 16) = v192;
              *(inited + 32) = v6;
              v18 = *(v119 + 16);
              if (v18 != 32)
              {
                goto LABEL_178;
              }

              a4 = inited;
              v197 = v6;

              v198 = a6;
              v121 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v119, a6, a4);
              if (*(v121 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
              {
                goto LABEL_194;
              }

              v122 = v121;
              v123 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
              swift_beginAccess();
              v124 = v122 + v123;
              v125 = v202;
              v126 = v203;
              (*v191)(v202, v124, v203);
              a6 = v200;
              HMAC.finalize()();
              (*v190)(v125, v126);
              v127 = v201;
              v63 = v215;
              HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
              v215 = v63;
              (*v189)(a6, v127);

              swift_setDeallocating();
              a2 = v194;
              v6 = *(v194 + 2);
              if (v6)
              {
                a4 = 0;
                a6 = 0xFFFFFFFF00000001;
                do
                {
                  _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v122, v204);
                  v18 = *(a2 + 16);
                  if (a4 >= v18)
                  {
                    goto LABEL_157;
                  }

                  v128 = *(a3 + 8 * a4);
                  v129 = v128 - v204[0];
                  if (v128 < v204[0])
                  {
                    v18 = 0xFFFFFFFF00000001 - v204[0];
                    if (v204[0] > 0xFFFFFFFF00000001)
                    {
                      goto LABEL_160;
                    }

                    v130 = __CFADD__(v128, v18);
                    v129 = v128 + v18;
                    if (v130)
                    {
                      __break(1u);

                      swift_bridgeObjectRelease_n();

                      goto LABEL_141;
                    }
                  }

                  *(a3 + 8 * a4++) = v129;
                }

                while (v6 != a4);
              }

              v18 = v197;
              v118 = v199;
              if (v197 == v199)
              {

                a4 = 0;
                a5 = v215;
                a3 = v195;
                goto LABEL_100;
              }
            }

            goto LABEL_175;
          }

          v207 = 0;
          v208 = 0xE000000000000000;
          _StringGuts.grow(_:)(39);

          v207 = 0xD00000000000002BLL;
          v208 = 0x8000000270C52B50;
          v204[0] = a3;
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          a4 = v45;
          v6 = &v207;
          MEMORY[0x2743B25F0](v44);

          MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
          if (v17 > 1)
          {
            v18 = 0;
            if (v17 == 2)
            {
              v51 = *(a5 + 2);
              v50 = *(a5 + 3);
              v26 = __OFSUB__(v50, v51);
              v18 = v50 - v51;
              if (v26)
              {
                __break(1u);
                goto LABEL_38;
              }
            }
          }

          else if (v17)
          {
            v18 = (HIDWORD(a5) - a5);
            if (__OFSUB__(HIDWORD(a5), a5))
            {
              goto LABEL_183;
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(a6);
          }

          v204[0] = v18;
          v59 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x2743B25F0](v59);

          v60 = v207;
          v61 = v208;
          lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
          swift_allocError();
          *v62 = v60;
          *(v62 + 8) = v61;
          *(v62 + 16) = 0;
          return swift_willThrow();
        }

LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }
    }

    __break(1u);
    goto LABEL_174;
  }

  if (!v17)
  {
    v18 = BYTE6(a6);
    goto LABEL_13;
  }

LABEL_10:
  v18 = (HIDWORD(a5) - a5);
  if (!__OFSUB__(HIDWORD(a5), a5))
  {
    v18 = v18;
    goto LABEL_13;
  }

LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
  do
  {
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), a4, 1, a6);
LABEL_59:
    v63 = v199;
    v64 = v181;
    *(a6 + 16) = a4;
    *(a6 + 8 * a3 + 32) = v6;
    v206[0] = v64;
    if ((v63 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (v63)
    {
      a4 = 0;
      v191 = (v184 + 8);
      *&v192 = v184 + 16;
      *&v190 = v183 + 8;
      v175 = v180 + 32;
      v176 = a5 + 32;
      v18 = &unk_270C44000;
      v193 = xmmword_270C44540;
      while (1)
      {
        if (a4 == 255)
        {
          goto LABEL_163;
        }

        v18 = *(a5 + 2);
        if (a4 >= v18)
        {
          goto LABEL_164;
        }

        v194 = a6;
        v6 = a4 + 1;
        a6 = *&v176[8 * a4];

        a3 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(0);
        a2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
        v65 = swift_initStackObject();
        *(v65 + 16) = v193;
        v197 = a4 + 1;
        *(v65 + 32) = a4 + 1;
        v18 = *(a6 + 16);
        if (v18 != 32)
        {
          goto LABEL_165;
        }

        v66 = v65;
        v189 = a2;
        v198 = a4;

        v67 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(a6, a3, v66);
        if (*(v67 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          break;
        }

        v68 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        a4 = v67;
        swift_beginAccess();
        v69 = a4 + v68;
        v70 = v202;
        v71 = v203;
        v188 = *v192;
        (v188)(v202, v69, v203);
        v72 = v200;
        HMAC.finalize()();
        v187 = *v191;
        (v187)(v70, v71);
        a2 = v201;
        v73 = v215;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v215 = v73;
        v6 = *v190;
        (*v190)(v72, a2);

        swift_setDeallocating();
        v74 = *(v206[0] + 16);
        v186 = a4;
        v75 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v74, a4);
        v18 = *(v180 + 2);
        if (v198 >= v18)
        {
          goto LABEL_166;
        }

        v76 = v75;
        v185 = v6;
        v77 = (2 * *(v75 + 16)) | 1;
        v78 = *&v175[8 * v198];
        swift_bridgeObjectRetain_n();

        v79 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(6);
        v80 = swift_initStackObject();
        *(v80 + 16) = v193;
        *(v80 + 32) = v197;
        v204[0] = v80;

        specialized Array.append<A>(contentsOf:)(v81);
        v189 = v78;
        v82 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v78, v79, v204[0]);
        v198 = v76;
        v83 = specialized VDAFEncodable.encodedBytes.getter((v76 + 32), 0, v77);
        v84 = off_2880A7738[0];
        type metadata accessor for XofHmacSha256Aes128(0);
        v84(v83);

        v85 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
        if (*(v82 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
        {
          goto LABEL_191;
        }

        v86 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
        swift_beginAccess();
        v87 = v82 + v86;
        v88 = v202;
        v89 = v203;
        (v188)(v202, v87, v203);
        v90 = v200;
        HMAC.finalize()();
        (v187)(v88, v89);
        v91 = v201;
        v92 = v215;
        HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
        v185(v90, v91);
        a2 = *(v82 + v85);
        if (!a2)
        {
          goto LABEL_192;
        }

        v93 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v93 + 16) = 32;
        *(v93 + 48) = 0u;
        *(v93 + 32) = 0u;
        v94 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
        v95 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
        swift_beginAccess();
        specialized static AES.CTR.encryptInPlace(_:using:updating:)((v93 + 32), v93 + 64, a2 + v94, a2 + v95);
        if (v92)
        {
          goto LABEL_197;
        }

        swift_endAccess();

        a6 = v194;
        v97 = *(v194 + 2);
        v96 = *(v194 + 3);
        a3 = v97 + 1;
        if (v97 >= v96 >> 1)
        {
          a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v194);
        }

        *(a6 + 16) = a3;
        *(a6 + 8 * v97 + 32) = v93;
        v6 = v206;
        specialized Array<A>.elementwiseSubtract(_:)(v198);
        v215 = 0;

        a4 = v197;
        v18 = v199;
        if (v199 == v197)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
      while (1)
      {
LABEL_197:
        swift_endAccess();
        swift_unexpectedError();
        __break(1u);
LABEL_198:
        v207 = 0;
        v208 = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
        MEMORY[0x2743B25F0](0xD000000000000038, 0x8000000270C52B80);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

LABEL_73:
    v194 = a6;

    v98 = v206[0];
    v99 = (2 * *(v206[0] + 16)) | 1;
    v100 = v177;

    v101 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(6);
    v204[0] = &outlined read-only object #0 of specialized Prio3.shard<A>(_:nonce:seedBytes:);

    specialized Array.append<A>(contentsOf:)(v102);
    v103 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v100, v101, v204[0]);
    v104 = specialized VDAFEncodable.encodedBytes.getter((v98 + 32), 0, v99);
    v105 = off_2880A7738[0];
    type metadata accessor for XofHmacSha256Aes128(0);
    v105(v104);

    v106 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
    if (*(v103 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      goto LABEL_195;
    }

    v107 = v98;
    v108 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v109 = v184;
    v110 = v103 + v108;
    v111 = v202;
    v112 = v203;
    (*(v184 + 16))(v202, v110, v203);
    v113 = v200;
    HMAC.finalize()();
    (*(v109 + 8))(v111, v112);
    v114 = v201;
    v63 = v215;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    a3 = v63;
    (*(v183 + 8))(v113, v114);
    v6 = *(v103 + v106);
    if (!v6)
    {
      goto LABEL_196;
    }

    a4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(a4 + 16) = 32;
    *(a4 + 48) = 0u;
    *(a4 + 32) = 0u;
    a6 = a4 + 32;
    v115 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
    a2 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
    swift_beginAccess();
    specialized static AES.CTR.encryptInPlace(_:using:updating:)((a4 + 32), a4 + 64, v6 + v115, v6 + a2);
    if (v63)
    {
      goto LABEL_197;
    }

    swift_endAccess();

    a5 = v194;
    if (!*(v194 + 2))
    {
      goto LABEL_187;
    }

    a2 = v107;
    *(v194 + 4) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMd, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMR);
    a4 = swift_allocObject();
    v116 = v173;
    *(a4 + 32) = 0;
    *(a4 + 40) = v116;
    v117 = v195;
    *(a4 + 48) = v195;
    *(a4 + 16) = a5;
    *(a4 + 24) = 0;
    a5 = 0;
    a3 = v117;
LABEL_100:
    v6 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(3);
    *&v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v131 = swift_initStackObject();
    v18 = &unk_270C44000;
    *(v131 + 16) = xmmword_270C44540;
    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_180;
    }

    *&v192 = a4;
    if (a3 > 0xFF)
    {
      goto LABEL_181;
    }

    v215 = a5;
    *(v131 + 32) = a3;
    a4 = v131;
    a6 = v174;
    v186 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v174, v6, v131);

    swift_setDeallocating();
    v6 = &v209;
    v132 = specialized FullyLinearProof.proofLength.getter();
    v18 = a3 * v132;
  }

  while ((a3 * v132) >> 64 != (a3 * v132) >> 63);
  v133 = MEMORY[0x277D84F90];
  v206[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0, MEMORY[0x277D84F90]);
  v6 = v196;
  v194 = a2;
  a6 = v192;
  if (a3)
  {
    v134 = 0;
    while (1)
    {
      if (a6)
      {
        a4 = *(a6 + 40);
        v135 = specialized VerificationJointRandomness.xof.getter();
        a5 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(a4, v135);
      }

      else
      {
        a5 = v133;
      }

      v6 = &v209;
      v136 = specialized FullyLinearProof.proveRandLength.getter();
      if (v136 < 0)
      {
        goto LABEL_162;
      }

      v137 = v136;
      if (v136)
      {
        v204[0] = v133;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v136, 0);
        a4 = v204[0];
        v138 = v186;
        do
        {
          _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v138, &v205);
          v139 = v205;
          v204[0] = a4;
          v141 = *(a4 + 16);
          v140 = *(a4 + 24);
          if (v141 >= v140 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v140 > 1), v141 + 1, 1);
            v138 = v186;
            a4 = v204[0];
          }

          *(a4 + 16) = v141 + 1;
          *(a4 + 8 * v141 + 32) = v139;
          --v137;
        }

        while (v137);
        a2 = v194;
        a6 = v192;
        v133 = MEMORY[0x277D84F90];
      }

      else
      {
        a4 = v133;
      }

      v63 = v215;
      specialized FullyLinearProof.prove<A>(into:measurement:proveRand:jointRand:)(v206, v181, a4, a5);
      a3 = v195;
      v215 = v63;
      if (v63)
      {
        break;
      }

      ++v134;

      v6 = v196;
      if (v134 == a3)
      {
        goto LABEL_118;
      }
    }

LABEL_141:
  }

LABEL_118:

  if ((v199 & 0x8000000000000000) != 0)
  {
    goto LABEL_186;
  }

  a5 = v215;
  if (!v199)
  {

    goto LABEL_144;
  }

  a6 = v206[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a6 = specialized _ArrayBuffer._consumeAndCreateNew()(a6);
  }

  v18 = 0;
  v191 = (v6 + 32);
  v188 = (v184 + 8);
  v189 = (v184 + 16);
  v187 = (v183 + 8);
  a2 = a6 + 32;
  v190 = xmmword_270C44550;
  v142 = v199;
  while (2)
  {
    if (v18 == v142)
    {
      goto LABEL_167;
    }

    if (v18 == 255)
    {
      goto LABEL_168;
    }

    if (v18 >= *(v6 + 16))
    {
      goto LABEL_169;
    }

    v6 = v18 + 1;
    v143 = v191[v18];

    v144 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(1);
    v145 = swift_initStackObject();
    *(v145 + 16) = v190;
    *(v145 + 32) = a3;
    *(v145 + 33) = v6;
    v18 = *(v143 + 16);
    if (v18 != 32)
    {
      goto LABEL_170;
    }

    a4 = v145;
    v197 = v6;
    v215 = a5;

    v198 = v144;
    v146 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v143, v144, a4);
    if (*(v146 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
    {
      goto LABEL_193;
    }

    v147 = v146;
    v148 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
    swift_beginAccess();
    v149 = v147 + v148;
    v150 = v202;
    v151 = v203;
    (*v189)(v202, v149, v203);
    v152 = v200;
    HMAC.finalize()();
    (*v188)(v150, v151);
    v153 = v201;
    v154 = v215;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    v215 = v154;
    (*v187)(v152, v153);

    swift_setDeallocating();
    v6 = *(a6 + 16);
    if (v6)
    {
      a4 = 0;
      a5 = v215;
      a3 = v195;
      while (1)
      {
        _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v147, &v205);
        v18 = *(a6 + 16);
        if (a4 >= v18)
        {
          break;
        }

        v155 = *(a2 + 8 * a4);
        v18 = v155 - v205;
        if (v155 < v205)
        {
          v18 = 0xFFFFFFFF00000001 - v205;
          if (v205 > 0xFFFFFFFF00000001)
          {
            goto LABEL_158;
          }

          v130 = __CFADD__(v155, v18);
          v18 += v155;
          if (v130)
          {
            goto LABEL_159;
          }
        }

        *(a2 + 8 * a4++) = v18;
        if (v6 == a4)
        {

          goto LABEL_124;
        }
      }

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
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    a5 = v215;
    a3 = v195;
LABEL_124:
    v6 = v196;
    v18 = v197;
    v142 = v199;
    if (v197 != v199)
    {
      continue;
    }

    break;
  }

  v206[0] = a6;
  a2 = v194;
  a6 = v192;
LABEL_144:
  v156 = v172;
  if (a6)
  {
  }

  else
  {
    v157 = 0;
  }

  *v182 = v157;
  a6 = v206[0];
  v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v156 & ~(v156 >> 63), 0, MEMORY[0x277D84F90]);
  v6 = v158[2];
  v63 = v158[3];
  a3 = v158;
  a4 = v6 + 1;

  if (v6 >= v63 >> 1)
  {
LABEL_189:
    a3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), a4, 1, a3);
  }

  v159 = v177;
  v215 = a5;
  v160 = a3;
  *(a3 + 16) = a4;
  v161 = a3 + 40 * v6;
  *(v161 + 32) = a2;
  *(v161 + 40) = 0;
  v201 = a6;
  *(v161 + 48) = a6;
  *(v161 + 56) = 0;
  *(v161 + 64) = v159;
  v162 = v178[2];
  if (v162)
  {
    v163 = 40 * v6 + 104;
    v164 = v6 + 2;
    v165 = (v178 + 6);
    do
    {
      v167 = *(v165 - 2);
      v166 = *(v165 - 1);
      v168 = *v165;
      v203 = v160;
      v169 = v160[3];

      v202 = v168;

      if (v164 - 1 >= v169 >> 1)
      {
        v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v169 > 1), v164, 1, v203);
      }

      else
      {
        v160 = v203;
      }

      v165 += 3;
      v160[2] = v164;
      v170 = (v160 + v163);
      *(v170 - 4) = v167;
      *(v170 - 24) = 1;
      *(v170 - 2) = v166;
      *(v170 - 8) = 1;
      v163 += 40;
      ++v164;
      *v170 = v202;
      --v162;
    }

    while (v162);
  }

  v171 = v160;

  return v171;
}

char *Prio3<>.shardAndEncodeIntoBytes(_:nonce:seedBytes:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5, char *a6)
{
  v86[1] = *MEMORY[0x277D85DE8];
  v14 = v6[5];
  v83 = v6[4];
  v84 = v14;
  v85 = v6[6];
  v15 = v6[1];
  v79 = *v6;
  v80 = v15;
  v16 = v6[3];
  v81 = v6[2];
  v82 = v16;
  outlined copy of Data._Representation(a3, a4);
  v17 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a3, a4);
  v18 = specialized Prio3.shard<A>(_:nonce:seedBytes:)(v86, a1, a2, v17, a5, a6);

  if (!v7)
  {
    a6 = specialized VDAFEncodable.encodedBytes.getter(v86[0]);

    v19 = v18[2];
    if (!v19)
    {

      return a6;
    }

    v71 = a6;
    v86[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v20 = 0;
    v72 = v19;
    v73 = v18 + 4;
    v21 = v86[0];
    while (1)
    {
      v74 = v21;
      v22 = &v73[5 * v20];
      v23 = *(v22 + 8);
      v24 = v22[2];
      v25 = *(v22 + 24);
      v26 = v22[4];
      v76 = *v22;
      v27 = *(*v22 + 16);
      if ((v23 & 1) == 0 && v27)
      {
        if (v27 >> 60)
        {
          goto LABEL_93;
        }

        v27 *= 8;
      }

      v28 = *(v24 + 16);
      if ((v25 & 1) == 0 && v28)
      {
        if (v28 >> 60)
        {
          goto LABEL_94;
        }

        v28 *= 8;
      }

      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        __break(1u);
LABEL_85:
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
LABEL_99:
        __break(1u);
      }

      if (v26)
      {
        v31 = *(v26 + 16);
        v29 = __OFADD__(v30, v31);
        v30 += v31;
        if (v29)
        {
          goto LABEL_85;
        }
      }

      v75 = v25;
      v32 = v30 & ~(v30 >> 63);

      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0, MEMORY[0x277D84F90]);
      v78 = v33;
      v34 = *(v76 + 16);
      if ((v23 & 1) == 0)
      {
        if (v34)
        {
          v41 = (v76 + 32);
          do
          {
            v43 = *v41++;
            v42 = (0xFFFFFFFEFFFFFFFFLL * v43 * 0xFFFFFFFF00000001) >> 64;
            if (__CFADD__(-v43, v43))
            {
              if (v42 > 0xFFFFFFFEFFFFFFFFLL)
              {
                v42 += 0x100000000;
              }

              else
              {
                ++v42;
              }
            }

            v77 = v42;
            specialized Array.append<A>(contentsOf:)(0, 8, &v77, &v78);
            --v34;
          }

          while (v34);
        }

        goto LABEL_39;
      }

      v35 = v33;
      v36 = *(v33 + 2);
      v37 = v36 + v34;
      if (__OFADD__(v36, v34))
      {
        goto LABEL_88;
      }

      v38 = *(v33 + 3) >> 1;

      if (v38 < v37)
      {
        if (v36 <= v37)
        {
          v44 = v36 + v34;
        }

        else
        {
          v44 = v36;
        }

        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v44, 1, v35);
        v36 = *(v35 + 2);
        v38 = *(v35 + 3) >> 1;
        if (!*(v76 + 16))
        {
LABEL_37:

          if (v34)
          {
            goto LABEL_90;
          }

          goto LABEL_38;
        }
      }

      else if (!v34)
      {
        goto LABEL_37;
      }

      if ((v38 - v36) < v34)
      {
        goto LABEL_95;
      }

      memcpy(&v35[v36 + 32], (v76 + 32), v34);

      if (v34)
      {
        v39 = *(v35 + 2);
        v29 = __OFADD__(v39, v34);
        v40 = v39 + v34;
        if (v29)
        {
          goto LABEL_98;
        }

        *(v35 + 2) = v40;
      }

LABEL_38:
      v78 = v35;
LABEL_39:
      v45 = *(v24 + 16);
      if (v75)
      {
        v46 = v78;
        v47 = *(v78 + 2);
        v48 = v47 + v45;
        if (__OFADD__(v47, v45))
        {
          goto LABEL_89;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v50 = *(v46 + 3) >> 1, v50 < v48))
        {
          if (v47 <= v48)
          {
            v51 = v47 + v45;
          }

          else
          {
            v51 = v47;
          }

          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v51, 1, v46);
          v50 = *(v46 + 3) >> 1;
        }

        if (*(v24 + 16))
        {
          v52 = *(v46 + 2);
          if (v50 - v52 < v45)
          {
            goto LABEL_96;
          }

          memcpy(&v46[v52 + 32], (v24 + 32), v45);

          if (v45)
          {
            v53 = *(v46 + 2);
            v29 = __OFADD__(v53, v45);
            v54 = v53 + v45;
            if (v29)
            {
              goto LABEL_99;
            }

            *(v46 + 2) = v54;
          }
        }

        else
        {

          if (v45)
          {
            goto LABEL_91;
          }
        }

        v78 = v46;
      }

      else if (v45)
      {
        v55 = (v24 + 32);
        do
        {
          v57 = *v55++;
          v56 = (0xFFFFFFFEFFFFFFFFLL * v57 * 0xFFFFFFFF00000001) >> 64;
          if (__CFADD__(-v57, v57))
          {
            if (v56 > 0xFFFFFFFEFFFFFFFFLL)
            {
              v56 += 0x100000000;
            }

            else
            {
              ++v56;
            }
          }

          v77 = v56;
          specialized Array.append<A>(contentsOf:)(0, 8, &v77, &v78);
          --v45;
        }

        while (v45);
      }

      if (v26)
      {
        v58 = *(v26 + 16);
        v59 = v78;
        v60 = *(v78 + 2);
        v61 = v60 + v58;
        if (__OFADD__(v60, v58))
        {
          goto LABEL_86;
        }

        v62 = swift_isUniquelyReferenced_nonNull_native();
        if (!v62 || (v63 = *(v59 + 3) >> 1, v63 < v61))
        {
          if (v60 <= v61)
          {
            v64 = v60 + v58;
          }

          else
          {
            v64 = v60;
          }

          v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v62, v64, 1, v59);
          v63 = *(v59 + 3) >> 1;
        }

        if (*(v26 + 16))
        {
          v65 = *(v59 + 2);
          if (v63 - v65 < v58)
          {
            goto LABEL_92;
          }

          memcpy(&v59[v65 + 32], (v26 + 32), v58);

          if (v58)
          {
            v66 = *(v59 + 2);
            v29 = __OFADD__(v66, v58);
            v67 = v66 + v58;
            if (v29)
            {
              goto LABEL_97;
            }

            *(v59 + 2) = v67;
          }
        }

        else
        {

          if (v58)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {

        v59 = v78;
      }

      v21 = v74;
      v86[0] = v74;
      v69 = *(v74 + 16);
      v68 = *(v74 + 24);
      if (v69 >= v68 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
        v21 = v86[0];
      }

      ++v20;
      *(v21 + 16) = v69 + 1;
      *(v21 + 8 * v69 + 32) = v59;
      if (v20 == v72)
      {

        return v71;
      }
    }
  }

  return a6;
}

uint64_t Prio3<>.prepareInitAndEncodeIntoBytes(verifyKey:aggregatorID:nonce:encodedPublicShare:encodedInputShare:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v18 = v9[5];
  v50 = v9[4];
  v51 = v18;
  v52 = v9[6];
  v19 = v9[1];
  v47[0] = *v9;
  v47[1] = v19;
  v20 = v9[3];
  v48 = v9[2];
  v49 = v20;
  outlined copy of Data._Representation(a1, a2);
  v21 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a1, a2);
  outlined copy of Data._Representation(a4, a5);
  v22 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(a4, a5);
  _s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2g5(a6, a7, v48 > 0, *&v47[0], &v54);
  if (v10)
  {
    v23 = v10;

    return v23;
  }

  v24 = v54;
  _s4VDAF33Prio3InputShareDecodableParameterV5prio312aggregatorIDACyxq_GAA0B0Vyxq_G_SitKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt2B5(v47, a3, &v33);
  v53[0] = v33;
  v53[1] = v34;
  v53[2] = v35;
  v53[3] = v36;
  v53[4] = v37;
  _s4VDAF15Prio3InputShareV4from9parameterACyxq_Gqd___AA0bcD18DecodableParameterVyxq_GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2B5(a8, a9, v53, v38);
  v45[0] = v38[0];
  v45[1] = v38[1];
  v46 = v39;
  _s4VDAF5Prio3V11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA0B12PrepareStateVyxq_G_AA0bnK0Vy1FQzGtSays5UInt8VG_SiAuA0b6PublicK0Vyxq_GAA0b5InputK0Vyxq_GAA11VoidCodableVtKFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt6B5(v41, &v40, v21, a3, v22, v24, v45);

  outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v45, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, &_s4VDAF15Prio3InputShareVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMR);
  v43[0] = v41[0];
  v43[1] = v41[1];
  v44 = v42;
  v26 = v40;
  specialized VDAFEncodable.encodedBytes.getter();
  v23 = v27;
  result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v43, &_s4VDAF17Prio3PrepareStateVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, "*]");
  v28 = *(v26.i64[0] + 16);
  if (!v28)
  {
    v29 = 0;
    if (!v26.i64[1])
    {
      goto LABEL_11;
    }

LABEL_10:
    v29 = *(v26.i64[1] + 16);
    goto LABEL_11;
  }

  if (v28 >> 60)
  {
    goto LABEL_14;
  }

  v28 *= 8;
  if (v26.i64[1])
  {
    goto LABEL_10;
  }

  v29 = 0;
LABEL_11:
  v30 = __OFADD__(v28, v29);
  v31 = v28 + v29;
  if (!v30)
  {
    *&v41[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0, MEMORY[0x277D84F90]);
    specialized Prio3PrepareShare.encode<A>(into:)(v41, v26.i64[0], v26.i64[1]);

    return v23;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t _s4VDAF5Prio3V11prepareInit9verifyKey12aggregatorID5nonce11publicShare05inputK09parameterAA0B12PrepareStateVyxq_G_AA0bnK0Vy1FQzGtSays5UInt8VG_SiAuA0b6PublicK0Vyxq_GAA0b5InputK0Vyxq_GAA11VoidCodableVtKFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt6B5(uint64_t *a1, int8x16_t *a2, unint64_t a3, unint64_t a4, unint64_t a5, char *a6, uint64_t *a7)
{
  v9 = v8;
  v10 = v7;
  v117 = a6;
  v133 = a4;
  v116 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit4HMACVyAA6SHA256VGMd, &_s9CryptoKit4HMACVyAA6SHA256VGMR);
  v114 = *(v15 - 8);
  v115 = v15;
  MEMORY[0x28223BE20](v15);
  v113 = &v99 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMd, &_s9CryptoKit24HashedAuthenticationCodeVyAA6SHA256VGMR);
  v18 = MEMORY[0x28223BE20](v17);
  v21 = &v99 - v20;
  v22 = *(a3 + 16);
  if (v22 != 32)
  {
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v119 = 0xD000000000000035;
    v120 = 0x8000000270C528D0;
    v33 = 32;
LABEL_10:
    v118 = v33;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v34);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v118 = v22;
LABEL_11:
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v35);

    v36 = v119;
    v37 = v120;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v38 = v36;
    *(v38 + 8) = v37;
    *(v38 + 16) = 1;
    return swift_willThrow();
  }

  v22 = *(a5 + 16);
  if (v22 != 16)
  {
    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v119 = 0xD000000000000031;
    v120 = 0x8000000270C52910;
    v33 = 16;
    goto LABEL_10;
  }

  v23 = *v10;
  if ((*v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v22 = v133;
  if (v23 <= v133)
  {
    v119 = v133;
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v42 = v39;
    *(v42 + 8) = v41;
    *(v42 + 16) = 0;
    return swift_willThrow();
  }

  v108 = v19;
  v109 = v18;
  v110 = a3;
  v111 = a5;
  v107 = v23;
  v24 = *(v10 + 64);
  v126 = *(v10 + 48);
  v127 = v24;
  v25 = *(v10 + 96);
  v128 = *(v10 + 80);
  v129 = v25;
  v26 = *(v10 + 32);
  v124 = *(v10 + 16);
  v125 = v26;
  if (v133 > 0xFF)
  {
    goto LABEL_58;
  }

  v27 = v124;
  v28 = *a7;
  v29 = *(a7 + 8);

  v31 = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_ASTt2g5(v30, v29, v22, v27);
  if (v9)
  {
  }

  v105 = v29;
  v101 = a2;
  v102 = v28;
  v106 = v31;
  a3 = *(v10 + 8);
  v43 = a7[2];
  v22 = *(a7 + 24);
  a2 = &v124;
  v44 = specialized FullyLinearProof.proofLength.getter();
  v112 = a3;
  if ((v44 * a3) >> 64 != (v44 * a3) >> 63)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v45 = v44 * a3;
  a3 *= v44;
  if (v22)
  {
    v22 = v133;
    a2 = specialized closure #1 in Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(v43, v10, v133);
    v43 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(a3, a2);

    a3 = *(v43 + 16);
    goto LABEL_19;
  }

  v46 = *(v43 + 16);
  if (v46 != v45)
  {

    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C51E00);
    MEMORY[0x2743B25F0](0xD000000000000027, 0x8000000270C51E20);
    v118 = a3;
    v87 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v87);

    MEMORY[0x2743B25F0](0x3D746F67202CLL, 0xE600000000000000);
    v118 = v46;
    goto LABEL_11;
  }

  v22 = v133;
LABEL_19:
  v47 = a7[4];
  v123 = v47;
  if (v125 <= 0)
  {
    if (!(v47 | v117))
    {
      v103 = a3;
      v66 = 0;
      LOBYTE(a3) = v105;
      v10 = v112;
      goto LABEL_29;
    }

    v119 = 0;
    v120 = 0xE000000000000000;
    _StringGuts.grow(_:)(103);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
    MEMORY[0x2743B25F0](0xD000000000000065, 0x8000000270C52950);
    v89 = v119;
    v90 = v120;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v91 = v89;
    *(v91 + 8) = v90;
    goto LABEL_48;
  }

  if (!v47)
  {

    lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
    swift_allocError();
    *v88 = 0xD000000000000037;
    *(v88 + 8) = 0x8000000270C529C0;
    *(v88 + 16) = 0;
LABEL_49:
    swift_willThrow();

    return swift_unknownObjectRelease();
  }

  if (!v117)
  {

    lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
    swift_allocError();
    *v91 = 0xD000000000000038;
    *(v91 + 8) = 0x8000000270C52A00;
LABEL_48:
    *(v91 + 16) = 1;
    goto LABEL_49;
  }

  v100 = v125;
  v104 = (2 * *(v106 + 16)) | 1;
  outlined init with copy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v123, &v119, &_s4VDAF4SeedVSgMd, &_s4VDAF4SeedVSgMR);

  v48 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270C44540;
  *(inited + 32) = v22;
  v119 = inited;

  specialized Array.append<A>(contentsOf:)(v50);
  v51 = specialized XofHmacSha256Aes128.__allocating_init(seedBytes:domainSeparationTag:binder:)(v47, v48, v119);
  v52 = specialized VDAFEncodable.encodedBytes.getter((v106 + 32), 0, v104);
  v53 = off_2880A7738[0];
  type metadata accessor for XofHmacSha256Aes128(0);
  v53(v52);
  v54 = v51;

  v55 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream;
  if (*(v51 + OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_stream))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v103 = a3;
  v104 = v43;
  v56 = OBJC_IVAR____TtC4VDAF19XofHmacSha256Aes128_hmac;
  swift_beginAccess();
  v58 = v114;
  v57 = v115;
  v59 = v54 + v56;
  v60 = v113;
  (*(v114 + 16))(v113, v59, v115);
  HMAC.finalize()();
  (*(v58 + 8))(v60, v57);
  v61 = v109;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  (*(v108 + 8))(v21, v61);
  v62 = *(v54 + v55);
  if (!v62)
  {
LABEL_67:
    __break(1u);
    swift_endAccess();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  a2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  a2[1].i64[0] = 32;
  a2[3] = 0u;
  a2[2] = 0u;
  v63 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_key;
  v64 = OBJC_IVAR____TtC4VDAF19SeedStreamAES128CTR_nonce;
  swift_beginAccess();
  specialized static AES.CTR.encryptInPlace(_:using:updating:)(a2 + 2, a2[4].i64, v62 + v63, v62 + v64);
  v22 = v133;
  swift_endAccess();

  v21 = v117;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  LOBYTE(a3) = v105;
  v10 = v112;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v43 = v104;
    if (*(v21 + 2) <= v22)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    *&v21[8 * v22 + 32] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMd, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMR);
    v66 = swift_allocObject();
    v67 = v100;
    v66[4] = 0;
    v66[5] = v67;
    v66[6] = v10;
    v66[2] = v21;
    v66[3] = 0;
LABEL_29:
    v21 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_270C44540;
    if (v10 < 0)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v10 > 0xFF)
    {
      goto LABEL_61;
    }

    *(v68 + 32) = v10;
    v118 = v68;

    specialized Array.append<A>(contentsOf:)(v69);
    v104 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(v110, v21, v118);

    a2 = &v124;
    v70 = specialized FullyLinearProof.verifierLength.getter();
    if ((v10 * v70) >> 64 == (v10 * v70) >> 63)
    {
      break;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
  }

  v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v10 * v70) & ~((v10 * v70) >> 63), 0, MEMORY[0x277D84F90]);
  if (!v10)
  {
LABEL_45:

    if (v66)
    {

      v92 = specialized VerificationJointRandomness.seed.getter();
    }

    else
    {
      v92 = 0;
    }

    v93 = specialized FullyLinearProof.verifierLength.getter();
    v94 = v116;
    *v116 = v102;
    *(v94 + 8) = a3;
    v94[2] = v92;
    *(v94 + 24) = v22;
    v94[4] = v93;
    v95 = v118;
    if (!v66)
    {

      result = swift_unknownObjectRelease();
      v97 = 0;
      goto LABEL_56;
    }

    v96 = v66[2];
    if (*(v96 + 16) > v22)
    {
      v97 = *(v96 + 8 * v22 + 32);

      result = swift_unknownObjectRelease();
LABEL_56:
      v98 = v101;
      v101->i64[0] = v95;
      v98->i64[1] = v97;
      return result;
    }

    goto LABEL_65;
  }

  v117 = 0;
  v114 = v43 + 32;
  v115 = (2 * v103) | 1;
  v130 = v127;
  v131 = v128;
  v132 = v129;
  v103 = v66;
  while (1)
  {
    v112 = v10;
    if (v66)
    {
      v71 = v66[5];

      v72 = specialized VerificationJointRandomness.xof.getter();
      v111 = _s4VDAF12FieldElementPAAE12randomVector5count5usingSayxGSi_qd__tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v71, v72);

      v73 = MEMORY[0x277D84F90];
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
      v111 = MEMORY[0x277D84F90];
    }

    specialized FullyLinearProof.proofLength.getter();
    v74 = specialized Collection.prefix(_:)();
    v109 = v76;
    v110 = v75;
    v108 = v77;
    v113 = specialized Collection.dropFirst(_:)();
    v114 = v78;
    v117 = v79;
    v115 = v80;
    v81 = specialized Gadget.wirePolynomialLength.getter();
    specialized Gadget.gadgetPolynomialLength.getter(v81);
    v122 = v73;
    swift_unknownObjectRetain();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v82 = v122;
    _s4VDAF12FieldElementPAAE06randomC05usingxqd___tAA24ExtendableOutputFunctionRd__lFZAA7Field64V_AA19XofHmacSha256Aes128CTt1g5(v104, &v121);
    v83 = v121;
    v85 = *(v82 + 16);
    v84 = *(v82 + 24);
    if (v85 >= v84 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1);
      v82 = v122;
    }

    v86 = v111;
    *(v82 + 16) = v85 + 1;
    *(v82 + 8 * v85 + 32) = v83;
    specialized FullyLinearProof.query<A, B>(into:measurement:proof:queryRand:jointRand:numOfShares:)(&v118, v106, v74, v110, v109, v108, v82, v86, v107);
    if (v9)
    {
      break;
    }

    swift_unknownObjectRelease();

    v10 = v112 - 1;
    v22 = v133;
    LOBYTE(a3) = v105;
    v66 = v103;
    if (v112 == 1)
    {
      goto LABEL_45;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t Prio3<>.encodedPrepareMessageFrom(_:)(uint64_t a1)
{
  v4 = v2[4];
  v5 = v2[6];
  v20 = v2[5];
  v21 = v5;
  v6 = v2[1];
  v15 = *v2;
  v16 = v6;
  v7 = v2[2];
  v18 = v2[3];
  v19 = v4;
  v17 = v7;
  _s4VDAF5Prio3V18prepareMessageFrom_9parameterAA0b7PrepareD0VSayAA0bG5ShareVy1FQzGG_AA11VoidCodableVtKFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt1B5(a1, v12);
  if (!v3)
  {
    v8 = v12[0];
    if (v12[0])
    {
      v13 = specialized Data._Representation.init(capacity:)(*(v12[0] + 16));
      v14 = v9;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      v12[3] = v10;
      v12[4] = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
      v12[0] = v8;
      __swift_project_boxed_opaque_existential_1(v12, v10);

      Data._Representation.append(contentsOf:)();
      __swift_destroy_boxed_opaque_existential_1(v12);

      return v13;
    }

    else
    {
      v1 = specialized Data._Representation.init(capacity:)(0);
    }
  }

  return v1;
}

void _s4VDAF5Prio3V18prepareMessageFrom_9parameterAA0b7PrepareD0VSayAA0bG5ShareVy1FQzGG_AA11VoidCodableVtKFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt1B5(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v47 = *(v2 + 32);
  v8 = specialized FullyLinearProof.verifierLength.getter();
  v9 = *(v2 + 8);
  v10 = v8 * v9;
  if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
  {
    goto LABEL_66;
  }

  if (v10 < 0)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {
    v44 = a2;
    v45 = v5;
    if (v10)
    {
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v11 + 16) = v10;
      bzero((v11 + 32), 8 * v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v46 = v9;
    v12 = *(a1 + 16);
    if (!v12)
    {
LABEL_10:
      v16 = 0;
      v17 = *(v11 + 16);
      v18 = a1 + 40;
      v19 = MEMORY[0x277D84F90];
LABEL_11:
      v20 = (v18 + 16 * v16);
      while (v12 != v16)
      {
        if (v16 >= v12)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
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
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_57;
        }

        v23 = *v20;
        v20 += 2;
        v22 = v23;
        ++v16;
        if (v23)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
          }

          v25 = *(v19 + 2);
          v24 = *(v19 + 3);
          if (v25 >= v24 >> 1)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v19);
          }

          *(v19 + 2) = v25 + 1;
          *&v19[8 * v25 + 32] = v22;
          v16 = v21;
          goto LABEL_11;
        }
      }

      v26 = v46;
      if (v46 < 0)
      {
        goto LABEL_68;
      }

      v27 = v19;
      if (v46)
      {
        v28 = 0;
        while (1)
        {
          v29 = specialized FullyLinearProof.verifierLength.getter();
          if ((v29 & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          if (v29)
          {
            v30 = v17 - v28 >= v29;
          }

          else
          {
            v30 = 1;
          }

          v31 = !v30;
          v32 = v17;
          if (v30)
          {
            v32 = v28 + v29;
            if (__OFADD__(v28, v29))
            {
              goto LABEL_64;
            }
          }

          if (v32 < v28)
          {
            goto LABEL_59;
          }

          if (v17 < v28)
          {
            goto LABEL_60;
          }

          if (v17 < v32)
          {
            goto LABEL_61;
          }

          v33 = v17;
          if ((v31 & 1) == 0)
          {
            v33 = v28 + v29;
            if (__OFADD__(v28, v29))
            {
              goto LABEL_65;
            }

            if (v17 < v33)
            {
              goto LABEL_63;
            }
          }

          if (v33 < v28)
          {
            goto LABEL_62;
          }

          v34 = (2 * v32) | 1;
          v35 = swift_unknownObjectRetain();
          v36 = specialized FullyLinearProof.decide<A>(verifier:)(v35, v11 + 32, v28, v34);
          if (v4)
          {
            break;
          }

          if ((v36 & 1) == 0)
          {

            lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
            swift_allocError();
            *v43 = 0;
            *(v43 + 8) = 0;
            *(v43 + 16) = 4;
            swift_willThrow();
            goto LABEL_52;
          }

          swift_unknownObjectRelease();
          v28 = v33;
          if (!--v26)
          {
            goto LABEL_44;
          }
        }

LABEL_52:
        swift_unknownObjectRelease_n();
        return;
      }

LABEL_44:
      v37 = *(v27 + 2);
      if (v47 <= 0)
      {

        if (!v37)
        {
          swift_unknownObjectRelease();
          *v44 = 0;
          return;
        }

        v40 = 0x8000000270C52850;
        lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
        swift_allocError();
        v42 = 0xD00000000000003BLL;
      }

      else
      {
        if (v37 == *v45)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMd, &_s4VDAF27VerificationJointRandomnessCyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGAIGMR);
          inited = swift_initStackObject();
          inited[4] = 0;
          inited[5] = v47;
          inited[6] = v46;
          inited[2] = v27;
          inited[3] = 0;
          v39 = specialized VerificationJointRandomness.seed.getter();
          swift_unknownObjectRelease();
          swift_setDeallocating();

          *v44 = v39;
          return;
        }

        v40 = 0x8000000270C52890;
        lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
        swift_allocError();
        v42 = 0xD000000000000038;
      }

      *v41 = v42;
      *(v41 + 8) = v40;
      *(v41 + 16) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    v13 = a1 + 40;
    v14 = *(a1 + 16);
    while (1)
    {

      specialized Array<A>.elementwiseAdd(_:)(v15);
      if (v3)
      {
        break;
      }

      v13 += 16;

      if (!--v14)
      {
        goto LABEL_10;
      }
    }
  }
}

char *Prio3<>.prepareNextAndEncodeIntoBytes(aggregatorID:encodedState:encodedMessage:)(unint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5)
{
  v11 = v5[5];
  v28[4] = v5[4];
  v28[5] = v11;
  v28[6] = v5[6];
  v12 = v5[1];
  v28[0] = *v5;
  v28[1] = v12;
  v13 = v5[3];
  v28[2] = v5[2];
  v28[3] = v13;
  result = _s4VDAF35Prio3PrepareStateDecodableParameterV5prio312aggregatorIDACyxq_GAA0B0Vyxq_G_SitKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt2B5(v28, a1, &v20);
  if (!v6)
  {
    v29[0] = v20;
    v29[1] = BYTE8(v20);
    v30 = v21;
    v31 = *v22;
    _s4VDAF17Prio3PrepareStateV4from9parameterACyxq_Gqd___AA0bcD18DecodableParameterVyxq_GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2B5(a2, a3, v29, &v23);
    v15 = 0;
    v26[0] = v23;
    v26[1] = v24;
    v27 = *&v25[0];
    if (a4 && a5 != a4)
    {
      v15 = specialized _copyCollectionToContiguousArray<A>(_:)(a4, a5);
    }

    specialized Prio3.prepareNext(state:message:)(v26, v15, &v23);

    result = outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(v26, &_s4VDAF17Prio3PrepareStateVyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGMd, "*]");
    *&v22[9] = *(v25 + 9);
    v20 = v23;
    v21 = v24;
    *v22 = v25[0];
    if (BYTE8(v25[1]))
    {
      v16 = v20;
      v17 = *(v20 + 16);
      if (v17 >> 60)
      {
        __break(1u);
      }

      else
      {
        v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8 * v17, 0, MEMORY[0x277D84F90]);
        specialized AggregateShare.encode<A>(into:)(&v19, v16);
        outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v20, &_s4VDAF17PrepareTransitionOyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGGMR);
        return v19;
      }
    }

    else
    {
      outlined destroy of PINEInputShare<Field40, XofHmacSha256Aes128>(&v20, &_s4VDAF17PrepareTransitionOyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGGMd, &_s4VDAF17PrepareTransitionOyAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CGGMR);
      lazy protocol witness table accessor for type Prio3Error and conformance Prio3Error();
      swift_allocError();
      *v18 = 0xD000000000000018;
      *(v18 + 8) = 0x8000000270C519B0;
      *(v18 + 16) = 2;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t specialized Prio3.prepareNext(state:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 16))
  {
    if (a2 && (specialized static Seed.== infix(_:_:)(*(a1 + 16), a2) & 1) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    _StringGuts.grow(_:)(68);
    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C52790);
    MEMORY[0x2743B25F0](0xD00000000000002ELL, 0x8000000270C527B0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s4VDAF4SeedVSgMd, &_s4VDAF4SeedVSgMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](0xD000000000000010, 0x8000000270C51A80);

    v9 = String.init<A>(describing:)();
    MEMORY[0x2743B25F0](v9);

    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 1;
    return swift_willThrow();
  }

  if (a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  result = _s4VDAF12VDAFProtocolPAAE22decodeMeasurementShare_12aggregatorID5countSayqd__GAA0E0Oyqd__G_s5UInt8VSitKAA12FieldElementRd__lFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_ASTt2g5(*a1, *(a1 + 8), *(a1 + 24), *(v3 + 16));
  if (!v4)
  {
    v11 = specialized SumVectorType.truncate(measurement:)(result);

    *a3 = v11;
    *(a3 + 56) = 1;
  }

  return result;
}

_BYTE *Prio3<>.outputShare(from:)@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  result = _sSa4VDAFAA12FieldElementRzlE4fromSayxGqd___tKcSkRd__s5UInt8V0C0Rtd__lufCAA7Field64V_SWTt0g5(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

char *Prio3<>.encodedAggregateShare(_:)(char *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 >> 60)
  {
    __break(1u);
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 8 * v2, 0, MEMORY[0x277D84F90]);
    specialized AggregateShare.encode<A>(into:)(&v3, v1);
    return v3;
  }

  return result;
}

void Prio3<>.unshardAndEncodeIntoBytes(_:numOfMeasurements:)(uint64_t a1)
{
  _s4VDAF5Prio3V7unshard_17numOfMeasurements9parameter15AggregateResultQzqd___SiAA11VoidCodableVtKSkRd__AA0H5ShareVy1FQzG7ElementRtd__lFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSayALyAUGGTt2B5Tf4ndn_n(a1);
  if (!v1)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v10 = MEMORY[0x277D84F90];
      v4 = v2;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
      v5 = v4;
      v6 = 32;
      while (1)
      {
        v7 = *(v5 + v6);
        if (HIDWORD(v7))
        {
          break;
        }

        v9 = *(v10 + 16);
        v8 = *(v10 + 24);
        if (v9 >= v8 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
          v5 = v4;
        }

        *(v10 + 16) = v9 + 1;
        *(v10 + 4 * v9 + 32) = v7;
        v6 += 8;
        if (!--v3)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      specialized VDAFEncodable.encodedBytes.getter();
    }
  }
}

uint64_t _s4VDAF33Prio3InputShareDecodableParameterV5prio312aggregatorIDACyxq_GAA0B0Vyxq_G_SitKcfCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CTt2B5@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*result <= a2)
  {
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v6;
    lazy protocol witness table accessor for type VDAFError and conformance VDAFError();
    swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    return swift_willThrow();
  }

  if (!a2)
  {
    v9 = a3;
    v4 = *(result + 16);
    v10 = result;
    result = specialized FullyLinearProof.proofLength.getter();
    v11 = *(v10 + 8);
    v3 = result * v11;
    if ((result * v11) >> 64 == (result * v11) >> 63)
    {
      result = v10;
      a3 = v9;
      a2 = 0;
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  v3 = 32;
  v4 = 32;
LABEL_8:
  v12 = *(result + 32);
  *a3 = v4;
  *(a3 + 8) = a2 != 0;
  *(a3 + 16) = v3;
  *(a3 + 24) = a2 != 0;
  *(a3 + 32) = 32 * (v12 > 0);
  return result;
}

uint64_t _s4VDAF15Prio3InputShareV4from9parameterACyxq_Gqd___AA0bcD18DecodableParameterVyxq_GSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2B5@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 8);
  if (v6 == 255)
  {
    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
    return swift_willThrow();
  }

  v8 = *a3;
  v9 = *(a3 + 16);
  v10 = *(a3 + 32);
  v11 = *(a3 + 24);
  if (a1)
  {
    v12 = a2 - a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *a3;
  if ((v6 & 1) == 0)
  {
    if ((v8 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v13 = 8 * v8;
  }

  v14 = *(a3 + 16);
  if ((v11 & 1) == 0)
  {
    if ((v9 - 0x1000000000000000) >> 61 != 7)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v14 = 8 * v9;
  }

  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_46;
  }

  v15 = __OFADD__(v16, v10);
  v17 = v16 + v10;
  if (v15)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v12 != v17)
  {
    _StringGuts.grow(_:)(24);

    if ((v6 & 1) == 0)
    {
      if ((v8 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v8 *= 8;
    }

    if ((v11 & 1) == 0)
    {
      if ((v9 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v9 *= 8;
    }

    if (!__OFADD__(v8, v9))
    {
      if (!__OFADD__(v8 + v9, v10))
      {
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v28);

        MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
        v29 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x2743B25F0](v29);

        lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
        swift_allocError();
        *v30 = 0xD00000000000005FLL;
        v30[1] = 0x8000000270C52A40;
        return swift_willThrow();
      }

      goto LABEL_50;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v51 = *(a3 + 16);
  v53 = v4;
  v50 = a4;
  specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  if ((v6 & 1) == 0 && (v8 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_51;
  }

  LODWORD(v52) = v11;
  v49 = v10;
  v18 = specialized Collection.prefix(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v9 = specialized Collection.dropFirst(_:)();

  v25 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v18, v20, v22, v24, v8, v6 & 1);
  if (v4)
  {
    return swift_unknownObjectRelease();
  }

  v6 = v51;
  v5 = v51;
  if ((v52 & 1) == 0 && (v51 - 0x1000000000000000) >> 61 != 7)
  {
    goto LABEL_54;
  }

  v46 = v26;
  v47 = v25;
  v54 = specialized Collection.prefix(_:)();
  v48 = v31;
  v33 = v32;
  v35 = v34;
  specialized Collection.dropFirst(_:)();
  swift_unknownObjectRetain();
  v36 = _s4VDAF5ShareO4from9parameterACyxGqd___AA0B18DecodableParameterOyxGSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA7Field64V_s10ArraySliceVyALGTt1g5(v54, v48, v33, v35, v51, v52 & 1);
  v53 = v37;
  v52 = v36;
  if (v49 > 0)
  {
    v6 = specialized Collection.prefix(_:)();
    v39 = v38;
    v51 = v40;
    v9 = v41;
    specialized Collection.dropFirst(_:)();
    if ((v9 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_34:
      specialized _copyCollectionToContiguousArray<A>(_:)(v6, v39, v51, v9);
      v43 = v42;
      goto LABEL_42;
    }

    v5 = v39;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v44 = swift_dynamicCastClass();
    if (!v44)
    {
      swift_unknownObjectRelease();
      v44 = MEMORY[0x277D84F90];
    }

    v45 = *(v44 + 16);

    if (!__OFSUB__(v9 >> 1, v51))
    {
      if (v45 == (v9 >> 1) - v51)
      {
        v43 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v43)
        {
LABEL_43:
          result = swift_unknownObjectRelease();
          goto LABEL_44;
        }

        v43 = MEMORY[0x277D84F90];
LABEL_42:
        swift_unknownObjectRelease();
        goto LABEL_43;
      }

      goto LABEL_56;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_unknownObjectRelease_n();
    v39 = v5;
    goto LABEL_34;
  }

  result = swift_unknownObjectRelease();
  v43 = 0;
LABEL_44:
  *v50 = v47;
  *(v50 + 8) = v46 & 1;
  *(v50 + 16) = v52;
  *(v50 + 24) = v53 & 1;
  *(v50 + 32) = v43;
  return result;
}

unint64_t _s4VDAF13SumVectorTypeV17encodedLengthFrom8bitWidth011measurementF0S2i_SitKFZAA7Field64V_SWTt1g5(unint64_t result, uint64_t a2)
{
  if (result >= 1 && a2 >= 1)
  {
    v2 = result * a2;
    if ((result * a2) >> 64 == (result * a2) >> 63)
    {
      if (result <= 0x3F)
      {
        return v2;
      }

      v7 = 0;
      v8 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      MEMORY[0x2743B25F0](0xD000000000000021, 0x8000000270C52C90);
      v4 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v4);

      MEMORY[0x2743B25F0](0x74694278616D202CLL, 0xEE003D6874646957);
    }

    else
    {
      _StringGuts.grow(_:)(43);

      v7 = 0xD000000000000013;
      v8 = 0x8000000270C52CC0;
      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v3);

      MEMORY[0x2743B25F0](0xD000000000000014, 0x8000000270C52CE0);
    }

    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v5);

    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v6 = v7;
    *(v6 + 8) = v8;
    *(v6 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  __break(1u);
  return result;
}

char *specialized SumVectorType.encode(measurement:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = a1;
  v6 = v2[1];
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    _StringGuts.grow(_:)(41);

    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v7);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v31 = v6;
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](32, 0xE100000000000000);
    v9 = 0xD000000000000020;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v10 = 0xD000000000000020;
    *(v10 + 8) = 0x8000000270C52BC0;
    *(v10 + 16) = 2;
    swift_willThrow();
    return v9;
  }

  if (a2 - a1 != v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  v11 = v2[5];
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *v2 & ~(*v2 >> 63), 0, MEMORY[0x277D84F90]);
  v12 = 1 << v11;
  if (v11 >= 0x40)
  {
    v12 = 0;
  }

  if (v11 <= 0x40)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v5 || a2 == v5)
  {
    return v9;
  }

  while (1)
  {
    v15 = *v5;
    if (v13 < v15)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v29 = 0xD000000000000016;
      v30 = 0x8000000270C52BF0;
      LOBYTE(v31) = v15;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v24);

      MEMORY[0x2743B25F0](0x646957746962202CLL, 0xEB000000003D6874);
      v31 = v11;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2743B25F0](v25);

      v26 = v29;
      v27 = v30;
      lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
      swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v27;
      *(v28 + 16) = 1;
      swift_willThrow();

      return v9;
    }

    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0, MEMORY[0x277D84F90]);
    result = _s4VDAF12FieldElementPAAE6encode_4into4withy06FiniteB0_11IntegerTypeQZ_SayxGzSitKFZAA7Field64V_Tt2g5(v15, &v29, v11);
    if (v3)
    {

      return v9;
    }

    v16 = v29;
    v17 = *(v29 + 2);
    v18 = *(v9 + 2);
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    if (v19 > *(v9 + 3) >> 1)
    {
      if (v18 <= v19)
      {
        v23 = v18 + v17;
      }

      else
      {
        v23 = *(v9 + 2);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v23, 1, v9);
      v9 = result;
      v18 = *(result + 2);
      if (*(v16 + 2))
      {
LABEL_22:
        if (((*(v9 + 3) >> 1) - v18) < v17)
        {
          goto LABEL_35;
        }

        memcpy(&v9[8 * v18 + 32], v16 + 32, 8 * v17);

        if (v17)
        {
          v20 = *(v9 + 2);
          v21 = __OFADD__(v20, v17);
          v22 = v20 + v17;
          if (v21)
          {
            goto LABEL_36;
          }

          *(v9 + 2) = v22;
        }

        goto LABEL_16;
      }
    }

    else if (v17)
    {
      goto LABEL_22;
    }

    if (v17)
    {
      goto LABEL_34;
    }

LABEL_16:
    if (++v5 == a2)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t specialized SumVectorType.truncate(measurement:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  if (v3 != *v1)
  {
    _StringGuts.grow(_:)(35);

    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
    v20[3] = v4;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    v7 = 0xD00000000000001BLL;
    lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
    swift_allocError();
    *v10 = 0xD00000000000001BLL;
    *(v10 + 8) = 0x8000000270C51C80;
    *(v10 + 16) = 2;
    swift_willThrow();
    return v7;
  }

  v6 = v1[5];
  if (v6 == 1)
  {

    return a1;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1[1] & ~(v1[1] >> 63), 0, MEMORY[0x277D84F90]);
  if (v6)
  {
    v7 = result;
    if (v6 < 1 || !v3)
    {
      return v7;
    }

    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = v12 + v6;
      v15 = __OFADD__(v12, v6) ? ((v12 + v6) >> 63) ^ 0x8000000000000000 : v12 + v6;
      if (__OFADD__(v12, v6))
      {
        break;
      }

      if (v14 < v12)
      {
        goto LABEL_25;
      }

      if (!v13)
      {
        goto LABEL_26;
      }

      if (v12 < 0)
      {
        goto LABEL_27;
      }

      if (v3 < v14)
      {
        goto LABEL_28;
      }

      v16 = (2 * v14) | 1;

      result = _s4VDAF12FieldElementPAAE11inputVectorxs10ArraySliceVyxG_tKcfCAA7Field64V_Tt1g5(a1 + 32, v12, v16, v20);
      if (v2)
      {

        return v7;
      }

      v17 = v20[0];
      v19 = *(v7 + 16);
      v18 = *(v7 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v19 + 1;
      *(v7 + 8 * v19 + 32) = v17;
      v13 = v3 >= v15;
      v12 = v15;
      if (v15 >= v3)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7ElementRtd__lufCAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSWTt2g5@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, size_t *a5@<X8>)
{
  if (a3 != 2 && (a3 & 1) != 0)
  {
    if ((a4 - 0x400000000000000) >> 59 != 31)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }

    v5 = (32 * a4);
    if (result)
    {
      v7 = &a2[-result];
      if (v5 == &a2[-result])
      {
LABEL_12:
        result = specialized _copyCollectionToContiguousArray<A>(_:)(result, a2);
        v13 = (2 * *(result + 16)) | 1;
        v15[0] = result;
        v15[1] = result + 32;
        v15[2] = 0;
        v15[3] = v13;
        if ((a4 & 0x8000000000000000) == 0)
        {
          v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedVs5NeverOTg50118_s4VDAF16Prio3PublicShareV4from9parameterACyxq_Gqd___Sb19isJointRandRequired_Si16numOfAggregatorstSgtKcSkRd__s5UInt8V7b12Rtd__lufcAA4E8VSiXEfU_s10ArraySliceVys5UInt8VGSiTf1cn_n(0, a4, v15, 32);
          result = swift_unknownObjectRelease();
          *a5 = v14;
          return result;
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      v7 = 0;
    }

    _StringGuts.grow(_:)(29);

    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v8);

    MEMORY[0x2743B25F0](2107936, 0xE300000000000000);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v9);

    MEMORY[0x2743B25F0](0x203A746F67202CLL, 0xE700000000000000);
    v15[4] = v7;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2743B25F0](v10);

    lazy protocol witness table accessor for type VDAFCodableError and conformance VDAFCodableError();
    swift_allocError();
    *v11 = 0xD000000000000060;
    v11[1] = 0x8000000270C52AA0;
    return swift_willThrow();
  }

  *a5 = 0;
  return result;
}

uint64_t specialized Prio3.splitSeedBytes<A>(_:)(uint64_t result, unint64_t a2)
{
  v8 = *(v2 + 5);
  v39[4] = *(v2 + 4);
  v39[5] = v8;
  v39[6] = *(v2 + 6);
  v9 = *(v2 + 1);
  v39[0] = *v2;
  v39[1] = v9;
  v10 = *(v2 + 3);
  v11 = a2 >> 62;
  v39[2] = *(v2 + 2);
  v39[3] = v10;
  if ((a2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2 || (v14 = *(result + 16), v13 = *(result + 24), v15 = __OFSUB__(v13, v14), v12 = v13 - v14, !v15))
    {
LABEL_10:
      v16 = *v2;
      v17 = *v2 - 1;
      if (__OFSUB__(*v2, 1))
      {
        __break(1u);
      }

      else if (*v2 + 0x3FFFFFFFFFFFFFFFLL >= 0)
      {
        v4 = v2[4];
        v18 = (2 * v17) | 1;
        if (v4 <= 0)
        {
          v16 = 0;
        }

        v15 = __OFADD__(v18, v16);
        v19 = v18 + v16;
        if (!v15)
        {
          if ((v19 - 0x400000000000000) >> 59 == 31)
          {
            if (v12 == 32 * v19)
            {
              v20 = result;
              v3 = a2;
              outlined copy of Data._Representation(result, a2);
              v21 = specialized Collection._copyToContiguousArray()(v20, v3);
              v22 = (2 * v21[2]) | 1;
              v35 = v21;
              v36 = v21 + 4;
              v37 = 0;
              v38 = v22;
              if ((v17 & 0x8000000000000000) == 0)
              {
                MEMORY[0x28223BE20](v21);
                v34[2] = &v35;
                v34[3] = 32;
                v34[4] = v39;
                v3 = 0;
                v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_4VDAF4SeedV16measurementShare_AI05proofG0AISg14jointRandBlindts5NeverOTg5(partial apply for specialized closure #1 in Prio3.splitSeedBytes<A>(_:), v34, 0, v17);
                if (v4 < 1)
                {
LABEL_41:
                  v4 = v37;
                  LOBYTE(v5) = v38;
                  v29 = v38 >> 1;
                  v30 = (v38 >> 1) - v37;
                  if (!__OFSUB__(v38 >> 1, v37))
                  {
                    v3 = v35;
                    v6 = v36;
                    v7 = v38 >> 1;
                    if (v30 >= 0x20)
                    {
                      v7 = v37 + 32;
                      if (__OFADD__(v37, 32))
                      {
                        goto LABEL_83;
                      }
                    }

                    if (v7 >= v37)
                    {
                      if (v29 >= v37)
                      {
                        if (v29 >= v7)
                        {
                          if ((v7 & 0x8000000000000000) == 0)
                          {
                            if (v30 < 0x20)
                            {
                              goto LABEL_52;
                            }

                            if (__OFADD__(v37, 32))
                            {
LABEL_84:
                              __break(1u);
                              goto LABEL_85;
                            }

                            if (v29 >= v37 + 32)
                            {
                              v29 = v37 + 32;
LABEL_52:
                              if (v29 >= v37)
                              {
                                if ((v38 & 1) == 0)
                                {
                                  swift_unknownObjectRetain();
LABEL_55:
                                  specialized _copyCollectionToContiguousArray<A>(_:)(v3, v6, v4, v5 & 1 | (2 * v7));
                                  goto LABEL_61;
                                }

                                type metadata accessor for __ContiguousArrayStorageBase();
                                swift_unknownObjectRetain_n();
                                v31 = swift_dynamicCastClass();
                                if (!v31)
                                {
                                  swift_unknownObjectRelease();
                                  v31 = MEMORY[0x277D84F90];
                                }

                                v32 = *(v31 + 16);

                                if (!__OFSUB__(v7, v4))
                                {
                                  if (v32 == v7 - v4)
                                  {
                                    v33 = swift_dynamicCastClass();
                                    swift_unknownObjectRelease_n();
                                    if (v33)
                                    {
LABEL_62:
                                      swift_unknownObjectRelease();
                                      return v17;
                                    }

LABEL_61:
                                    swift_unknownObjectRelease();
                                    goto LABEL_62;
                                  }

                                  goto LABEL_86;
                                }

LABEL_85:
                                __break(1u);
LABEL_86:
                                swift_unknownObjectRelease_n();
                                goto LABEL_55;
                              }

                              goto LABEL_75;
                            }

LABEL_74:
                            __break(1u);
LABEL_75:
                            __break(1u);
                            goto LABEL_76;
                          }

LABEL_73:
                          __break(1u);
                          goto LABEL_74;
                        }

LABEL_72:
                        __break(1u);
                        goto LABEL_73;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }

LABEL_69:
                  __break(1u);
                  goto LABEL_70;
                }

                v23 = v37;
                v4 = v38;
                v24 = v38 >> 1;
                v25 = (v38 >> 1) - v37;
                if (__OFSUB__(v38 >> 1, v37))
                {
LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

                v3 = v35;
                v5 = v36;
                v26 = v38 >> 1;
                if (v25 >= 0x20 && (v26 = v37 + 32, __OFADD__(v37, 32)))
                {
                  __break(1u);
                }

                else
                {
                  if (v26 < v37)
                  {
LABEL_77:
                    __break(1u);
                    goto LABEL_78;
                  }

                  if (v24 < v37)
                  {
LABEL_78:
                    __break(1u);
                    goto LABEL_79;
                  }

                  if (v24 < v26)
                  {
LABEL_79:
                    __break(1u);
                    goto LABEL_80;
                  }

                  if (v26 < 0)
                  {
LABEL_80:
                    __break(1u);
                    goto LABEL_81;
                  }

                  if (v25 < 0x20)
                  {
LABEL_30:
                    if (v24 < v37)
                    {
LABEL_82:
                      __break(1u);
LABEL_83:
                      __break(1u);
                      goto LABEL_84;
                    }

                    v37 = v24;
                    if ((v38 & 1) == 0)
                    {
                      swift_unknownObjectRetain();
LABEL_33:
                      specialized _copyCollectionToContiguousArray<A>(_:)(v3, v5, v23, v4 & 1 | (2 * v26));
LABEL_40:
                      swift_unknownObjectRelease();
                      goto LABEL_41;
                    }

                    v6 = type metadata accessor for __ContiguousArrayStorageBase();
                    swift_unknownObjectRetain_n();
                    v27 = swift_dynamicCastClass();
                    if (!v27)
                    {
                      swift_unknownObjectRelease();
                      v27 = MEMORY[0x277D84F90];
                    }

                    v7 = *(v27 + 16);

                    if (!__OFSUB__(v26, v23))
                    {
                      if (v7 == v26 - v23)
                      {
                        v28 = swift_dynamicCastClass();
                        swift_unknownObjectRelease_n();
                        if (v28)
                        {
                          goto LABEL_41;
                        }

                        goto LABEL_40;
                      }

                      goto LABEL_90;
                    }

LABEL_89:
                    __break(1u);
LABEL_90:
                    swift_unknownObjectRelease_n();
                    goto LABEL_33;
                  }

                  if (!__OFADD__(v37, 32))
                  {
                    if (v24 < v37 + 32)
                    {
LABEL_81:
                      __break(1u);
                      goto LABEL_82;
                    }

                    v24 = v37 + 32;
                    goto LABEL_30;
                  }
                }

                __break(1u);
                goto LABEL_89;
              }

LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

LABEL_66:
          __break(1u);
          goto LABEL_67;
        }

LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_65;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v12) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v12 = v12;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Prio3.prepareInit(verifyKey:aggregatorID:nonce:publicShare:inputShare:parameter:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = _s4VDAF12VDAFProtocolPAAE19domainSeparationTag5usageSays5UInt8VGAA5UsageO_tFZAA5Prio3VyAA13SumVectorTypeVyAA7Field64VSWGAA19XofHmacSha256Aes128CG_Tt0B5(1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_270C44550;
  v8 = *(a2 + 8);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v8 > 0xFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 32) = v8;
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a3 <= 0xFF)
  {
    *(result + 33) = a3;
    v9 = _s4VDAF24ExtendableOutputFunctionPAAE7makeXOF4seed19domainSeparationTag6binderxAA4SeedV_Says5UInt8VGALtFZAA19XofHmacSha256Aes128C_Tt2g5(a1, v6, result);

    swift_setDeallocating();
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

void specialized Prio3PrepareShare.encode<A>(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = *v5++;
      v6 = (0xFFFFFFFEFFFFFFFFLL * v7 * 0xFFFFFFFF00000001) >> 64;
      if (__CFADD__(-v7, v7))
      {
        if (v6 <= 0xFFFFFFFEFFFFFFFFLL)
        {
          ++v6;
        }

        else
        {
          v6 += 0x100000000;
        }
      }

      v9 = v6;
      specialized Array.append<A>(contentsOf:)(0, 8, &v9, &v10);
      --v4;
    }

    while (v4);
  }

  if (a3)
  {

    specialized Array.append<A>(contentsOf:)(v8);
  }
}

uint64_t specialized SumVectorType.decode(data:numOfMeasurements:)(uint64_t a1)
{
  if (*(a1 + 16) == *(v1 + 8))
  {
    return _s4VDAF12FieldElementPAAE18elementsToIntegersySay06FiniteB0_11IntegerTypeQZGSayxGFZAA7Field64V_Tt0g5(a1);
  }

  _StringGuts.grow(_:)(30);

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v3);

  MEMORY[0x2743B25F0](540877088, 0xE400000000000000);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2743B25F0](v4);

  lazy protocol witness table accessor for type FLPTypeError and conformance FLPTypeError();
  swift_allocError();
  *v5 = 0xD000000000000016;
  *(v5 + 8) = 0x8000000270C519D0;
  *(v5 + 16) = 2;
  return swift_willThrow();
}

void _s4VDAF5Prio3V7unshard_17numOfMeasurements9parameter15AggregateResultQzqd___SiAA11VoidCodableVtKSkRd__AA0H5ShareVy1FQzG7ElementRtd__lFAA13SumVectorTypeVyAA7Field64VSWG_AA19XofHmacSha256Aes128CSayALyAUGGTt2B5Tf4ndn_n(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v1 + 16);
  if ((*(&v8 + 1) & 0x8000000000000000) == 0)
  {
    if (*(&v8 + 1))
    {
      v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v4 + 16) = *(&v8 + 1);
      bzero((v4 + 32), 8 * *(&v8 + 1));
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    for (i = 0; ; ++i)
    {
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      specialized Array<A>.elementwiseAdd(_:)(v7);
      if (v2)
      {

        return;
      }

      if (v6 == v3)
      {
        specialized SumVectorType.decode(data:numOfMeasurements:)(v4);

        return;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t partial apply for specialized closure #1 in Prio3.splitSeedBytes<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v6[5];
  v13[4] = v6[4];
  v13[5] = v7;
  v13[6] = v6[6];
  v8 = v6[1];
  v13[0] = *v6;
  v13[1] = v8;
  v9 = v6[3];
  v13[2] = v6[2];
  v13[3] = v9;
  result = specialized closure #1 in Prio3.splitSeedBytes<A>(_:)(v4, v5, v13);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v11;
    a1[2] = v12;
  }

  return result;
}

uint64_t specialized closure #1 in Prio3.splitSeedBytes<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = specialized Collection.prefix(_:)();
  v43 = v5;
  v7 = v6;
  v9 = v8;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  if (v9)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x277D84F90];
    }

    v16 = *(v15 + 16);

    if (__OFSUB__(v9 >> 1, v7))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v16 != (v9 >> 1) - v7)
    {
      goto LABEL_34;
    }

    v14 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v14)
    {
      goto LABEL_11;
    }

    v14 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  while (1)
  {
    specialized _copyCollectionToContiguousArray<A>(_:)(v4, v43, v7, v9);
    v14 = v13;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    v43 = v14;
    v4 = a1[3];
    v7 = specialized Collection.prefix(_:)();
    v41 = v17;
    v9 = v18;
    v20 = v19;
    *a1 = specialized Collection.dropFirst(_:)();
    a1[1] = v21;
    a1[2] = v22;
    a1[3] = v23;
    if ((v20 & 1) == 0)
    {
      swift_unknownObjectRetain();
LABEL_13:
      v24 = a3;
      specialized _copyCollectionToContiguousArray<A>(_:)(v7, v41, v9, v20);
      goto LABEL_19;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain();
    v25 = swift_dynamicCastClass();
    if (!v25)
    {
      swift_unknownObjectRelease();
      v25 = MEMORY[0x277D84F90];
    }

    v26 = *(v25 + 16);

    if (!__OFSUB__(v20 >> 1, v9))
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_unknownObjectRelease_n();
  }

  if (v26 != (v20 >> 1) - v9)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_13;
  }

  v27 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v24 = a3;
  if (v27)
  {
    goto LABEL_20;
  }

LABEL_19:
  swift_unknownObjectRelease();
LABEL_20:
  if (*(v24 + 32) < 1)
  {
    return v43;
  }

  v28 = specialized Collection.prefix(_:)();
  v42 = v29;
  v31 = v30;
  v33 = v32;
  *a1 = specialized Collection.dropFirst(_:)();
  a1[1] = v34;
  a1[2] = v35;
  a1[3] = v36;
  if ((v33 & 1) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_23;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    swift_unknownObjectRelease();
    v37 = MEMORY[0x277D84F90];
  }

  v38 = *(v37 + 16);

  if (__OFSUB__(v33 >> 1, v31))
  {
    __break(1u);
  }

  else if (v38 == (v33 >> 1) - v31)
  {
    v39 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v39)
    {
      goto LABEL_30;
    }

    return v43;
  }

  swift_unknownObjectRelease_n();
LABEL_23:
  specialized _copyCollectionToContiguousArray<A>(_:)(v28, v42, v31, v33);
LABEL_30:
  swift_unknownObjectRelease();
  return v43;
}

uint64_t ParallelSum.init(inner:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  result = (*(a4 + 24))(a3, a4);
  if ((a2 * result) >> 64 == (a2 * result) >> 63)
  {
    *a5 = a2 * result;
    *(a5 + 1) = (*(a4 + 32))(a3, a4);
    v12 = type metadata accessor for ParallelSum(0, a3, a4, v11);
    result = (*(*(a3 - 8) + 32))(&a5[*(v12 + 40)], a1, a3);
    *&a5[*(v12 + 44)] = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ParallelSum.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v105 = a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v100 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v89 = &v67 - v12;
  v108 = a4;
  v13 = *(*(a4 + 8) + 8);
  v14 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v99 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v87 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = &v67 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v85 = type metadata accessor for Range();
  v74 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v67 - v18;
  v83 = swift_getAssociatedTypeWitness();
  v71 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v67 - v19;
  v69 = type metadata accessor for Optional();
  v77 = *(v69 - 8);
  v20 = MEMORY[0x28223BE20](v69);
  v95 = &v67 - v21;
  v97 = v14;
  v76 = *(v14 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v104 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v94 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v106 = &v67 - v26;
  v27 = *(swift_getAssociatedConformanceWitness() + 8);
  v90 = AssociatedTypeWitness;
  v91 = a5;
  v81 = v27;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v28 = a3;
  v107 = v13;
  v29 = dispatch thunk of Collection.count.getter();
  v30 = *(v105 + 40);
  v92 = *(v10 + 24);
  v93 = v10 + 24;
  result = v92(v9, v10);
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v32 = v29 >= 0;
  v80 = v29;
  if (result > 0)
  {
    v32 = v29 < 1;
  }

  v102 = v9;
  v103 = v30;
  v105 = v10;
  v33 = v97;
  if (!v32)
  {
    v34 = a1;
    v35 = 0;
    v36 = (v76 + 1);
    v79 = (v76 + 6);
    v98 = v76 + 4;
    v68 = (v77 + 1);
    v77 = v76 + 2;
    v76 = (v99 + 16);
    v75 = (v99 + 32);
    ++v74;
    v73 = v105 + 64;
    v72 = (v100 + 8);
    ++v71;
    v78 = result;
    v101 = v36;
    v70 = v28;
    while (1)
    {
      v37 = v35 + result;
      if (__OFADD__(v35, result))
      {
        v37 = ((v35 + result) >> 63) ^ 0x8000000000000000;
      }

      v100 = v37;
      v38 = v94;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v39 = *v36;
      (*v36)(v38, v33);
      v92(v102, v105);
      dispatch thunk of Collection.endIndex.getter();
      v40 = v95;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:limitedBy:)();
      v99 = v39;
      (v39)(v38, v33);
      v41 = *v79;
      v42 = v34;
      if ((*v79)(v40, 1, v33) == 1)
      {
        v43 = v104;
        dispatch thunk of Collection.endIndex.getter();
        if (v41(v40, 1, v33) != 1)
        {
          (*v68)(v40, v69);
        }
      }

      else
      {
        v43 = v104;
        (*v98)(v104, v40, v33);
      }

      v44 = v106;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v45 = *v77;
      v46 = v86;
      (*v77)(v86, v44, v33);
      v47 = TupleTypeMetadata2;
      v45(&v46[*(TupleTypeMetadata2 + 48)], v43, v33);
      v48 = v87;
      (*v76)(v87, v46, v47);
      v49 = *(v47 + 48);
      v50 = v42;
      v51 = *v98;
      v52 = v84;
      (*v98)(v84, v48, v33);
      v53 = v99;
      (v99)(&v48[v49], v33);
      (*v75)(v48, v46, v47);
      v54 = *(v47 + 48);
      v55 = v85;
      v51(&v52[*(v85 + 36)], &v48[v54], v33);
      v53(v48, v33);
      v56 = v82;
      dispatch thunk of Collection.subscript.getter();
      (*v74)(v52, v55);
      v57 = v105;
      v58 = *(v105 + 64);
      v59 = v83;
      v60 = swift_getAssociatedConformanceWitness();
      v34 = v50;
      v61 = v89;
      v58(v56, v59, v60, v102, v57);
      v62 = v90;
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v63 = v61;
      v64 = v106;
      v36 = v101;
      v33 = v97;
      (*v72)(v63, v62);
      v65 = v104;
      (*v71)(v56, v59);
      v53(v65, v33);
      v53(v64, v33);
      v35 = v100;
      v66 = v80 >= v100;
      result = v78;
      if (v78 > 0)
      {
        v66 = v100 >= v80;
      }

      if (v66)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  return result;
}

uint64_t ParallelSum.evaluate<A>(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v71 = a5;
  v107 = a4;
  v10 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v101 = *(TupleTypeMetadata2 - 8);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v92 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v70 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v90 = type metadata accessor for Range();
  v100 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v70 - v15;
  v88 = swift_getAssociatedTypeWitness();
  v74 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v70 - v16;
  v73 = type metadata accessor for Optional();
  v79 = *(v73 - 8);
  v17 = MEMORY[0x28223BE20](v73);
  v97 = &v70 - v18;
  v110 = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](v17);
  v106 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v96 = &v70 - v23;
  MEMORY[0x28223BE20](v22);
  v108 = &v70 - v24;
  v26 = *(a2 + 16);
  v25 = *(a2 + 24);
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v86 = v27;
  v85 = v28;
  Polynomial.init()(v27, &v112);
  v29 = a1;
  v30 = a3;
  v31 = v25;
  v32 = v10;
  v33 = dispatch thunk of Collection.count.getter();
  v34 = *(v31 + 24);
  v105 = *(a2 + 40);
  v94 = v34;
  v95 = v31 + 24;
  result = (v34)(v26, v31);
  if (result)
  {
    v36 = v33 >= 0;
    v84 = v33;
    if (result > 0)
    {
      v36 = v33 < 1;
    }

    v104 = v6;
    if (v36)
    {
LABEL_16:
      *v71 = v112;
      return result;
    }

    v37 = v30;
    v38 = v31;
    v39 = v29;
    v40 = v32;
    v41 = v26;
    v42 = 0;
    v43 = (v19 + 8);
    v83 = (v19 + 48);
    v99 = (v19 + 32);
    v72 = (v79 + 1);
    v79 = (v19 + 16);
    v78 = (v101 + 16);
    v77 = (v101 + 32);
    v76 = (v100 + 8);
    v75 = v31 + 72;
    ++v74;
    v82 = v31;
    v81 = v26;
    v80 = result;
    v109 = v40;
    v102 = v39;
    v103 = v37;
    while (1)
    {
      v44 = v42 + result;
      if (__OFADD__(v42, result))
      {
        v44 = ((v42 + result) >> 63) ^ 0x8000000000000000;
      }

      v101 = v44;
      v45 = v96;
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v46 = *v43;
      v47 = v110;
      (*v43)(v45, v110);
      v94(v41, v38);
      dispatch thunk of Collection.endIndex.getter();
      v48 = v97;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:limitedBy:)();
      v100 = v46;
      (v46)(v45, v47);
      v49 = *v83;
      if ((*v83)(v48, 1, v47) == 1)
      {
        v50 = v106;
        dispatch thunk of Collection.endIndex.getter();
        if (v49(v48, 1, v110) != 1)
        {
          (*v72)(v48, v73);
        }
      }

      else
      {
        v50 = v106;
        (*v99)(v106, v48, v110);
      }

      v51 = v108;
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        break;
      }

      v52 = *v79;
      v53 = v43;
      v54 = v91;
      v55 = v110;
      (*v79)(v91, v51, v110);
      v56 = TupleTypeMetadata2;
      v52(&v54[*(TupleTypeMetadata2 + 48)], v50, v55);
      v57 = v92;
      (*v78)(v92, v54, v56);
      v58 = *(v56 + 48);
      v59 = *v99;
      v60 = v89;
      (*v99)(v89, v57, v55);
      v61 = v100;
      (v100)(&v57[v58], v55);
      (*v77)(v57, v54, v56);
      v62 = v90;
      v59(&v60[*(v90 + 36)], &v57[*(v56 + 48)], v55);
      v61(v57, v55);
      v63 = v87;
      dispatch thunk of Collection.subscript.getter();
      (*v76)(v60, v62);
      v38 = v82;
      v64 = *(v82 + 72);
      v65 = v88;
      v66 = swift_getAssociatedConformanceWitness();
      v41 = v81;
      v64(&v111, v63, v65, v66, v81, v38);
      static Polynomial.+= infix(_:_:)(&v112, &v111, v86, v85);

      v67 = v110;
      v68 = v106;
      (*v74)(v63, v65);
      v61(v68, v67);
      v43 = v53;
      v61(v108, v67);
      v42 = v101;
      v69 = v84 >= v101;
      result = v80;
      if (v80 > 0)
      {
        v69 = v101 >= v84;
      }

      if (v69)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int ParallelSum.chunkEvaluateSum(_:for:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a2;
  v10 = v9;
  v62 = a6;
  v63 = a7;
  v65 = a5;
  v51 = a3;
  v52 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  v56 = *v65;
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v64 = a9;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v55 = v20;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v21 = specialized Array.init(repeating:count:)(v19, *v9, AssociatedTypeWitness);
  v22 = v19;
  v23 = v51;
  v60 = *(v15 + 8);
  v61 = v15 + 8;
  v60(v22, AssociatedTypeWitness);
  v24 = v52;
  v70 = v21;
  v25 = ArraySlice.startIndex.getter();
  v65 = a1;
  result = ArraySlice.endIndex.getter();
  v58 = a8;
  v59 = v10;
  v27 = *(v10 + *(a8 + 44));
  if (v27)
  {
    v28 = result >= v25;
    if (v27 > 0)
    {
      v28 = v25 >= result;
    }

    if (v28)
    {
    }

    v53 = v27;
    v54 = result;
    while (1)
    {
      v29 = __OFADD__(v25, v27) ? ((v25 + v27) >> 63) ^ 0x8000000000000000 : v25 + v27;
      if (__OFADD__(v25, v27))
      {
        break;
      }

      result = ArraySlice.endIndex.getter();
      if (result >= v25 + v27)
      {
        v30 = v25 + v27;
      }

      else
      {
        v30 = result;
      }

      if (v30 < v25)
      {
        goto LABEL_25;
      }

      specialized ArraySlice.subscript.getter(v25, v30);
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v37 = swift_unknownObjectRetain();
      v38 = v32;
      v39 = v67;
      v62(v37, v38, v34, v36, &v70);
      if (v39)
      {
        swift_unknownObjectRelease();

        return (v60)(v64, AssociatedTypeWitness);
      }

      v40 = v23;
      v41 = v24;
      swift_unknownObjectRelease();
      v68 = v56;
      v69 = v70;
      v42 = type metadata accessor for Array();
      v67 = 0;
      v43 = v42;

      v44 = v58;
      WitnessTable = swift_getWitnessTable();
      v46 = swift_getWitnessTable();
      v47 = v57;
      v48 = v67;
      Gadget.evaluate<A>(at:for:)(&v69, &v68, v44, v43, WitnessTable, v46, v57);
      if (v48)
      {
        swift_bridgeObjectRelease_n();
        return (v60)(v64, AssociatedTypeWitness);
      }

      v67 = 0;

      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v60(v47, AssociatedTypeWitness);
      v27 = v53;
      result = v54;
      v49 = v54 >= v29;
      if (v53 > 0)
      {
        v49 = v29 >= v54;
      }

      v25 = v29;
      v24 = v41;
      v23 = v40;
      if (v49)
      {
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized ArraySlice.subscript.getter(Swift::Int a1, Swift::Int a2)
{
  ArraySlice._checkIndex(_:)(a1);
  ArraySlice._checkIndex(_:)(a2);
  if (a2 < 0)
  {
    __break(1u);
  }
}

uint64_t type metadata completion function for ParallelSum(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParallelSum(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
  }

  v7 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = a2 - v5;
  v9 = v7 & 0xFFFFFFF8;
  if ((v7 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v12 || (v13 = *(a1 + v7)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
    }

    return 0;
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return v5 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for ParallelSum(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v12 = 0;
    v13 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = a3 - v6;
    if (((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v8) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v8) = 0;
      }

      else if (v12)
      {
        *(result + v8) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v17 = *(v5 + 56);
      v18 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

      return v17(v18);
    }
  }

  if (((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  if (((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v15 = ~v6 + a2;
    v16 = result;
    bzero(result, ((*(v5 + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v16;
    *v16 = v15;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(result + v8) = v14;
    }

    else
    {
      *(result + v8) = v14;
    }
  }

  else if (v12)
  {
    *(result + v8) = v14;
  }

  return result;
}

uint64_t static JointRandomness.jointRandSeed(parts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedConformanceWitness();
  result = (*(v8 + 8))(AssociatedTypeWitness, v8);
  if (result < 0)
  {
    goto LABEL_31;
  }

  v28 = v8;
  if (result)
  {
    v10 = result;
    v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v11 + 16) = v10;
    bzero((v11 + 32), v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = swift_checkMetadataState();
  (*(a3 + 56))(&v29, a2, a3);
  v27 = (*(AssociatedConformanceWitness + 240))(&v29, v12, AssociatedConformanceWitness);
  v13 = *(a1 + 16);
  if (!v13)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_26:
    v26 = static ExtendableOutputFunction.deriveSeed(seed:domainSeparationTag:binder:)(v11, v27, v15, AssociatedTypeWitness, v28);

    return v26;
  }

  v14 = (a1 + 32);
  v15 = MEMORY[0x277D84F90];
  while (1)
  {
    v16 = *v14;
    v17 = *(*v14 + 16);
    v18 = *(v15 + 16);
    v19 = v18 + v17;
    v20 = __OFADD__(v18, v17);

    if (v20)
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v19 <= *(v15 + 24) >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v21, 1, v15);
      v15 = result;
      if (*(v16 + 16))
      {
LABEL_21:
        v22 = *(v15 + 16);
        if ((*(v15 + 24) >> 1) - v22 < v17)
        {
          goto LABEL_29;
        }

        memcpy((v15 + v22 + 32), (v16 + 32), v17);

        if (v17)
        {
          v23 = *(v15 + 16);
          v24 = __OFADD__(v23, v17);
          v25 = v23 + v17;
          if (v24)
          {
            goto LABEL_30;
          }

          *(v15 + 16) = v25;
        }

        goto LABEL_8;
      }
    }

    if (v17)
    {
      goto LABEL_28;
    }

LABEL_8:
    ++v14;
    if (!--v13)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t static JointRandomness.jointRandPartXOF(blind:aggregatorID:nonce:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_checkMetadataState();
  v12 = *(a5 + 48);

  v12(&v19, a4, a5);
  v13 = (*(AssociatedConformanceWitness + 240))(&v19, v11, AssociatedConformanceWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_270C44540;
  *(v14 + 32) = a2;
  v18 = v14;

  specialized Array.append<A>(contentsOf:)(v15);
  v16 = swift_getAssociatedConformanceWitness();
  return (*(v16 + 48))(a1, v13, v18, AssociatedTypeWitness, v16);
}

uint64_t static JointRandomness.jointRandPart(commitment:blind:aggregatorID:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = static JointRandomness.jointRandPartXOF(blind:aggregatorID:nonce:)(a5, a6, a7, a8, a9);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ArraySlice();
  swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v12 = VDAFEncodable.encodedBytes.getter(v10, WitnessTable);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 16);
  v15 = swift_checkMetadataState();
  v14(v12, v15, AssociatedConformanceWitness);

  (*(AssociatedConformanceWitness + 24))(v15, AssociatedConformanceWitness);
  v16 = (*(AssociatedConformanceWitness + 8))(v15, AssociatedConformanceWitness);
  v17 = specialized Seed.init<A>(length:using:)(v16, v9, v15, AssociatedConformanceWitness);
  swift_unknownObjectRelease();
  return v17;
}

char *static JointRandomness.jointRandPartsAndLeaderShare(commitment:leaderJointRandBlind:helperJointRandBlinds:helperMeasurementSeeds:numOfAggregators:nonce:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v14 = *(a6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = AssociatedTypeWitness;
  if (v14 != (*(AssociatedConformanceWitness + 216))(AssociatedTypeWitness))
  {
    goto LABEL_21;
  }

  v40 = a2;
  v14 = MEMORY[0x277D84F90];
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a5 & ~(a5 >> 63), 0, MEMORY[0x277D84F90]);
  v16 = result;
  a2 = *(result + 2);
  v17 = *(result + 3);
  AssociatedTypeWitness = (a2 + 1);
  if (a2 >= v17 >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v19 = a7;
    *(v16 + 2) = AssociatedTypeWitness;
    *&v16[8 * a2 + 32] = v14;
    v53 = a1;
    if (__OFSUB__(a5, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a5 - 1 < 0)
    {
      goto LABEL_24;
    }

    v51 = v16;

    if (a5 == 1)
    {
      break;
    }

    a2 = 0;
    v17 = a3 + 32;
    v50 = a8;
    v41 = a5 - 1;
    while (a2 != 255)
    {
      v17 = *(a4 + 16);
      if (a2 >= v17)
      {
        goto LABEL_19;
      }

      v47 = v9;

      v48 = a2 + 1;
      a1 = v43;
      a7 = static VDAFProtocol.measurementShareXOF(seed:aggregatorID:)(v20, a2 + 1, v43, AssociatedConformanceWitness);

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v49 = MEMORY[0x2743B2830](v53, AssociatedTypeWitness);
      v14 = a8;
      swift_getAssociatedTypeWitness();
      a5 = swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v21 = static FieldElement.randomVector<A>(count:using:)(v49, a7, AssociatedTypeWitness);
      v9 = type metadata accessor for Array();

      swift_getWitnessTable();
      v22 = ArraySlice.init<A>(_:)();
      a8 = v50;
      v17 = *(a3 + 16);
      if (a2 >= v17)
      {
        goto LABEL_20;
      }

      v25 = v22;
      v26 = v23;
      v27 = v24;
      v28 = v16;
      v29 = *(a3 + 32 + 8 * a2);

      v30 = v28;
      a1 = v48;
      v31 = static JointRandomness.jointRandPart(commitment:blind:aggregatorID:nonce:)(v25, v26, v27, v30, v29, v48, a6, v19, v50);

      swift_unknownObjectRelease();
      v32 = v51;
      v34 = *(v51 + 2);
      v33 = *(v51 + 3);
      v14 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v51);
      }

      *(v32 + 2) = v14;
      v51 = v32;
      *&v32[8 * v34 + 32] = v31;
      AssociatedTypeWitness = &v53;
      Array<A>.elementwiseSubtract(_:)(v21, v9, a5);
      v9 = v47;
      if (v47)
      {

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();

      a2 = v48;
      a8 = v50;
      if (v41 == v48)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), AssociatedTypeWitness, 1, v16);
    v16 = result;
  }

LABEL_16:
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_bridgeObjectRetain_n();
  swift_getWitnessTable();
  v35 = ArraySlice.init<A>(_:)();
  v39 = static JointRandomness.jointRandPart(commitment:blind:aggregatorID:nonce:)(v35, v36, v37, v38, v40, 0, a6, v19, a8);
  result = swift_unknownObjectRelease();
  if (*(v51 + 2))
  {
    *(v51 + 4) = v39;

    return v51;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t static JointRandomness.updateJointRandParts(_:commitment:blind:aggregatorID:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v10 = a7;
    if (a7 <= 0xFF)
    {
      v11 = a1;

      v12 = static JointRandomness.jointRandPart(commitment:blind:aggregatorID:nonce:)(a2, a3, a4, a5, a6, v10, a8, a9, a10);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  v11 = result;
LABEL_4:
  if (*(v11 + 16) <= v10)
  {
    __break(1u);
  }

  else
  {
    *(v11 + 8 * v10 + 32) = v12;

    return v11;
  }

  return result;
}

Swift::Double __swiftcall normalizationConstantUsingSimpleSummation(for:bound:)(Swift::Double a1, Swift::Int bound)
{
  if (bound < 1)
  {
    return 1.0;
  }

  v2 = a1 + a1;
  v3 = 0.0;
  if (bound == 1)
  {
    v6 = 1;
  }

  else
  {
    v5 = bound & 0x7FFFFFFFFFFFFFFELL;
    v6 = bound & 1;
    v8 = bound;
    v9 = bound & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v10 = exp(-(v8 * v8) / v2);
      v3 = v3 + v10 + exp(-((v8 - 1) * (v8 - 1)) / v2);
      v8 -= 2;
      v9 -= 2;
    }

    while (v9);
    if (v5 == bound)
    {
      return v3 + v3 + 1.0;
    }
  }

  v3 = v3 + exp(-(v6 * v6) / v2);
  return v3 + v3 + 1.0;
}

Swift::Double __swiftcall normalizationConstantUsingPoissonSummation(for:bound:)(Swift::Double a1, Swift::Int bound)
{
  if (bound >= 1)
  {
    v3 = a1 * -9.8696044 + a1 * -9.8696044;
    v4 = 0.0;
    if (bound == 1)
    {
      v7 = 1;
    }

    else
    {
      v6 = bound & 0x7FFFFFFFFFFFFFFELL;
      v7 = bound & 1;
      v9 = bound;
      v10 = bound & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v11 = exp(v3 * v9 * v9);
        v4 = v4 + v11 + exp(v3 * (v9 - 1) * (v9 - 1));
        v9 -= 2;
        v10 -= 2;
      }

      while (v10);
      if (v6 == bound)
      {
        goto LABEL_9;
      }
    }

    v4 = v4 + exp(v3 * v7 * v7);
LABEL_9:
    v5 = v4 + v4 + 1.0;
    return sqrt(a1 * 6.28318531) * v5;
  }

  v5 = 1.0;
  return sqrt(a1 * 6.28318531) * v5;
}

long double varianceUsingPoissonSummation(for:bound:)(uint64_t a1, double a2)
{
  if (a1 >= 1)
  {
    v4 = a2 * -9.8696044 + a2 * -9.8696044;
    v5 = 0.0;
    v6 = a1;
    do
    {
      v7 = v6 * v6;
      if (9.10721981e306 / v7 >= a2)
      {
        v5 = v5 + v7 * exp(v4 * v7);
      }

      --v6;
    }

    while (v6 + 1 > 1);
    v8 = a2 * 4.0;
    v9 = 1.0 / (a2 * 4.0 * 3.14159265 * 3.14159265);
    v10 = v9 * -9.8696044 + v9 * -9.8696044;
    v11 = 0.0;
    if (a1 == 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a1 & 1;
      v15 = a1;
      v16 = a1 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v17 = exp(v10 * v15 * v15);
        v11 = v11 + v17 + exp(v10 * (v15 - 1) * (v15 - 1));
        v15 -= 2;
        v16 -= 2;
      }

      while (v16);
      if ((a1 & 0x7FFFFFFFFFFFFFFELL) == a1)
      {
        goto LABEL_13;
      }
    }

    v11 = v11 + exp(v10 * v12 * v12);
LABEL_13:
    v13 = v11 + v11 + 1.0;
    v14 = v5 + v5;
    return (1.0 - v8 * (v14 / (v13 * sqrt(v9 * 6.28318531))) * 3.14159265 * 3.14159265) * a2;
  }

  v8 = a2 * 4.0;
  v13 = 1.0;
  v9 = 1.0 / (a2 * 4.0 * 3.14159265 * 3.14159265);
  v14 = 0.0;
  return (1.0 - v8 * (v14 / (v13 * sqrt(v9 * 6.28318531))) * 3.14159265 * 3.14159265) * a2;
}

uint64_t _sSLsE2leoiySbx_xtFZ4VDAF8FractionV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 | a3;
  if (!(a4 | a3))
  {
    return v4 ^ 1u;
  }

  v4 = a2 | a1;
  if (!(a2 | a1))
  {
    return v4 ^ 1u;
  }

  if (a3)
  {
    if (a1)
    {
      if ((a4 * a1) >> 64 == (a4 * a1) >> 63 && (a2 * a3) >> 64 == (a2 * a3) >> 63)
      {
        return (a4 * a1) >= a2 * a3;
      }

      else
      {
        return a4 / a3 >= a2 / a1;
      }
    }

    else
    {
      return a2 <= 0;
    }
  }

  else
  {
    v6 = a4 >> 63;
    v8 = (a4 & 0x8000000000000000) != 0 && a2 > 0;
    if (!a1)
    {
      LODWORD(v6) = v8;
    }

    return v6 ^ 1;
  }
}

uint64_t sampleBernoulliExp1(_:)(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
LABEL_75:
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = a1;
    if (one-time initialization token for one == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = static Fraction.one;
  result = _sSLsE2leoiySbx_xtFZ4VDAF8FractionV_Tt1g5(v3, v2, static Fraction.one, *(&static Fraction.one + 1));
  if (result)
  {
    v7 = 1;
    while (1)
    {
      if (!v3)
      {
        goto LABEL_85;
      }

      if (!v2)
      {
LABEL_26:
        v12 = 1;
        v4 = 0;
        if (v5 != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }

      v8 = v3 * v7;
      if ((v3 * v7) >> 64 == (v3 * v7) >> 63)
      {
        v4 = v2;
        if (!v8)
        {
          goto LABEL_47;
        }

        result = specialized static Fraction.binaryGCD(_:_:)(v2, v3 * v7);
        if (!result)
        {
          goto LABEL_68;
        }

        if (v8 == 0x8000000000000000 && result == -1)
        {
          goto LABEL_72;
        }

        v4 = v2 / result;
        v12 = v8 / result;
        if (v12 < 0)
        {
          v13 = __OFSUB__(0, v12);
          v12 = -v12;
          if (v13)
          {
            goto LABEL_73;
          }

          v13 = __OFSUB__(0, v4);
          v4 = -v4;
          if (v13)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        v9 = v2 / v3 * (1.0 / v7);
        v10 = (*&v9 >> 52) & 0x7FFLL;
        v11 = *&v9 & 0xFFFFFFFFFFFFFLL;
        if (v10 == 2047)
        {
          if (v11)
          {
            v4 = 0;
            v12 = 0;
            if (v5 != 0)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }

LABEL_23:
          if (v9 < 0.0)
          {
            goto LABEL_86;
          }

          v12 = 0;
          v4 = 1;
          if (v5 != 0)
          {
            goto LABEL_37;
          }

          goto LABEL_53;
        }

        if (!(v10 | v11))
        {
          goto LABEL_26;
        }

        v14 = fabs(v9);
        if (v14 > 9.22337204e18)
        {
          goto LABEL_23;
        }

        result = specialized static Fraction.sternBrocotSearch(_:precision:maxIterations:)(0x100000000, v14, 0.000001);
        v12 = result;
        v4 = v15;
        if (v9 < 0.0)
        {
          v4 = -v15;
          if (__OFSUB__(0, v15))
          {
            goto LABEL_78;
          }
        }

        if (result < 0)
        {
          v12 = -result;
          if (__OFSUB__(0, result))
          {
            goto LABEL_79;
          }

          v13 = __OFSUB__(0, v4);
          v4 = -v4;
          if (v13)
          {
            goto LABEL_80;
          }
        }
      }

      if (!v4)
      {
        v4 = 0;
        if (v5 != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }

      if (!v12)
      {
LABEL_47:
        if (v4 < 0)
        {
          goto LABEL_86;
        }

        v12 = 0;
        if (v5 != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }

      if (v4 < 0)
      {
        goto LABEL_67;
      }

      if (v5 != 0)
      {
LABEL_37:
        if (!(v4 | v12))
        {
          goto LABEL_85;
        }

        if (v5)
        {
          if (!v12)
          {
            goto LABEL_81;
          }

          if ((*(&v5 + 1) * v12) >> 64 == (*(&v5 + 1) * v12) >> 63 && (v4 * v5) >> 64 == (v4 * v5) >> 63)
          {
            if (*(&v5 + 1) * v12 < v4 * v5)
            {
              goto LABEL_70;
            }
          }

          else if (*(&v5 + 1) / v5 < v4 / v12)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (!v12)
          {
            goto LABEL_83;
          }

          if ((*(&v5 + 1) & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_53:
      if (v12 < 0)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (!v12)
      {
        goto LABEL_85;
      }

      v18 = 0;
      result = MEMORY[0x2743B35C0](&v18, 8);
      v16 = (v18 * v12) >> 64;
      if (v12 > v18 * v12)
      {
        v17 = -v12 % v12;
        if (v17 > v18 * v12)
        {
          do
          {
            v18 = 0;
            result = MEMORY[0x2743B35C0](&v18, 8);
          }

          while (v17 > v18 * v12);
          v16 = (v18 * v12) >> 64;
        }
      }

      if (v16 >= v4)
      {
        goto LABEL_63;
      }

      v13 = __OFADD__(v7++, 1);
      if (v13)
      {
        __break(1u);
LABEL_63:
        if (v7 >= 0)
        {
          return v7 & 1;
        }

        else
        {
          return -(v7 & 1);
        }
      }
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  if (!v4)
  {
    goto LABEL_85;
  }

  __break(1u);
LABEL_83:
  if ((*(&v5 + 1) & 0x8000000000000000) == 0 || !v4)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sampleBernoulliExp(_:)(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    v8 = result;
    for (i = a2; ; v2 = i)
    {
      if (one-time initialization token for one != -1)
      {
        swift_once();
      }

      v5 = *(&static Fraction.one + 1);
      v4 = static Fraction.one;
      if ((_sSLsE1goiySbx_xtFZ4VDAF8FractionV_Tt1g5(v3, v2, static Fraction.one, *(&static Fraction.one + 1)) & 1) == 0)
      {
        break;
      }

      result = sampleBernoulliExp1(_:)(v4, v5);
      if (!result)
      {
        return result;
      }

      v6 = -v5;
      if (__OFSUB__(0, v5))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v4 < 0)
      {
        v7 = __OFSUB__(0, v4);
        v4 = -v4;
        if (v7)
        {
          goto LABEL_19;
        }

        v7 = __OFSUB__(0, v6);
        v6 = v5;
        if (v7)
        {
          goto LABEL_20;
        }
      }

      specialized static Fraction.+= infix(_:_:)(&v8, v4, v6);
      v3 = v8;
    }

    return sampleBernoulliExp1(_:)(v3, v2);
  }

  return result;
}

unint64_t _sSLsE1goiySbx_xtFZ4VDAF8FractionV_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!(a4 | a3) || !(a2 | a1))
  {
    return 0;
  }

  if (a3)
  {
    if (a1)
    {
      if ((a4 * a1) >> 64 == (a4 * a1) >> 63 && (a2 * a3) >> 64 == (a2 * a3) >> 63)
      {
        return (a4 * a1) < a2 * a3;
      }

      else
      {
        return a4 / a3 < a2 / a1;
      }
    }

    else
    {
      return a2 > 0;
    }
  }

  else
  {
    v6 = (a4 & 0x8000000000000000) != 0 && a2 > 0;
    if (a1)
    {
      return a4 >> 63;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sampleGeometricExpFast(_:)(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0x7FFFFFFFFFFFFFFFuLL / result;
  while (1)
  {
    if (a2)
    {
      if (!v3)
      {
        goto LABEL_42;
      }

      if (a2 < 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v3 == 1)
      {
        return 0;
      }

      if (!v3)
      {
        goto LABEL_43;
      }
    }

    if (v3 < 0)
    {
      break;
    }

    do
    {
      v5 = specialized RandomNumberGenerator.next<A>(upperBound:)(v3);
      v6 = specialized Fraction.init(numerator:denominator:)(v5, v3);
    }

    while (sampleBernoulliExp(_:)(v6, v7) != 1);
    if (one-time initialization token for one == -1)
    {
      v8 = *(&static Fraction.one + 1);
      if ((*(&static Fraction.one + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      swift_once();
      v8 = *(&static Fraction.one + 1);
      if ((*(&static Fraction.one + 1) & 0x8000000000000000) != 0)
      {
LABEL_29:
        __break(1u);
        return 0;
      }
    }

    v9 = static Fraction.one;
    result = sampleBernoulliExp(_:)(static Fraction.one, v8);
    if (result)
    {
      v10 = 0;
      do
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_34;
        }

        result = sampleBernoulliExp(_:)(v9, v8);
        ++v10;
      }

      while (result);
      if (v4 < v11)
      {
        continue;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 * v3;
    if ((v11 * v3) >> 64 != (v11 * v3) >> 63)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(0x7FFFFFFFFFFFFFFFLL, v5))
    {
      goto LABEL_37;
    }

    if ((0x7FFFFFFFFFFFFFFFLL - v5) >= v12)
    {
      v13 = __OFADD__(v12, v5);
      v14 = v12 + v5;
      if (v13)
      {
        goto LABEL_38;
      }

      if (!a2)
      {
        goto LABEL_39;
      }

      if (a2 == -1 && v14 == 0x8000000000000000)
      {
        goto LABEL_40;
      }

      result = v14 / a2;
      if (v14 / a2 <= 0x7FFFFFFF)
      {
        if (result >= 0xFFFFFFFF80000000)
        {
          return result;
        }

        goto LABEL_41;
      }
    }
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  if ((a2 & 0x8000000000000000) == 0)
  {
LABEL_43:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sampleDLaplace(scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    if (v2 >= 3)
    {
      goto LABEL_59;
    }

    __break(1u);
LABEL_57:
    if (v2 > 2 || (a2 & 0x8000000000000000) == 0)
    {
LABEL_59:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v3 = specialized Fraction.init(numerator:denominator:)(1, result);
  v5 = v4;
  do
  {
    result = specialized static Fraction.binaryGCD(_:_:)(1, 2);
    if (!result)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v2 = result + 1;
    if ((result + 1) >= 3)
    {
      a2 = 0;
    }

    else
    {
      a2 = result;
    }

    v8 = 2 / result;
    if (2 / result >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = -a2;
    }

    if (2 / result >= 0)
    {
      v10 = 2 / result;
    }

    else
    {
      v10 = -2 / result;
    }

    if (v9)
    {
      if (v8)
      {
        if (v9 < 0)
        {
          goto LABEL_48;
        }
      }

      else if (a2 < 0)
      {
        goto LABEL_49;
      }
    }

    if (one-time initialization token for one != -1)
    {
      result = swift_once();
    }

    a2 = *(&static Fraction.one + 1);
    if (!(v9 | v10) || static Fraction.one == 0)
    {
      if (!v8)
      {
        goto LABEL_59;
      }
    }

    else if (static Fraction.one)
    {
      if (!v8)
      {
        goto LABEL_55;
      }

      if ((*(&static Fraction.one + 1) * v10) >> 64 == (*(&static Fraction.one + 1) * v10) >> 63)
      {
        a2 = static Fraction.one * v9;
        if ((*(&static Fraction.one + 1) * v10) < static Fraction.one * v9)
        {
          goto LABEL_51;
        }
      }

      else if (*(&static Fraction.one + 1) / static Fraction.one < v9 / v10)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_57;
      }

      if ((*(&static Fraction.one + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }
    }

    v12 = 0;
    MEMORY[0x2743B35C0](&v12, 8);
    v2 = (v12 * v10) >> 64;
    if (v10 > v12 * v10)
    {
      v11 = -v10 % v10;
      if (v11 > v12 * v10)
      {
        do
        {
          v12 = 0;
          MEMORY[0x2743B35C0](&v12, 8);
        }

        while (v11 > v12 * v10);
        v2 = (v12 * v10) >> 64;
      }
    }

    v6 = sampleGeometricExpFast(_:)(v3, v5);
  }

  while (v2 < v9 && v6 == 0);
  if (v2 < v9)
  {
    a2 = 0xFFFFFFFFLL;
  }

  else
  {
    a2 = 1;
  }

  result = v6 * a2;
  if (result != result)
  {
    goto LABEL_54;
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DiscreteGaussian.init(sigma:)(VDAF::DiscreteGaussian *__return_ptr retstr, Swift::Double sigma)
{
  v15 = 1;
  v4 = (sigma < 0.0 || ((*&sigma & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&sigma - 1) > 0xFFFFFFFFFFFFELL;
  if (v4 || 1.79769313e308 / sigma <= sigma)
  {
    goto LABEL_17;
  }

  v5 = sigma * 40.0;
  if (COERCE__INT64(fabs(sigma * 40.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (1.79769313e308 / v5 <= v5)
  {
LABEL_17:
    lazy protocol witness table accessor for type DiscreteGaussianError and conformance DiscreteGaussianError();
    swift_allocError();
    *v13 = sigma;
    swift_willThrow();
    return;
  }

  v7 = specialized Fraction.init(_:)(sigma * sigma);
  if (sigma <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (sigma < 9.22337204e18)
  {
    if (!__OFADD__(sigma, 1))
    {
      v9 = v7;
      v10 = v8;
      v14.denominator = v7;
      v14.numerator = v8;
      specialized static Fraction./= infix(_:_:)(&v14, sigma + 1);
      v11 = v14;
      v12 = v15;
      retstr->bound = v5;
      retstr->dLapLaceScale = sigma + 1;
      retstr->sigma = sigma;
      retstr->sigmaSquared = sigma * sigma;
      retstr->sigmaSquaredInFraction.denominator = v9;
      retstr->sigmaSquaredInFraction.numerator = v10;
      retstr->sigmaSquaredDivideScale = v11;
      retstr->$__lazy_storage_$_variance.value = 0.0;
      retstr->$__lazy_storage_$_variance.is_nil = v12;
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type DiscreteGaussianError and conformance DiscreteGaussianError()
{
  result = lazy protocol witness table cache variable for type DiscreteGaussianError and conformance DiscreteGaussianError;
  if (!lazy protocol witness table cache variable for type DiscreteGaussianError and conformance DiscreteGaussianError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DiscreteGaussianError and conformance DiscreteGaussianError);
  }

  return result;
}

double DiscreteGaussian.variance.getter()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  closure #1 in DiscreteGaussian.variance.getter(v0);
  *(v0 + 64) = result;
  *(v0 + 72) = 0;
  return result;
}

void closure #1 in DiscreteGaussian.variance.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *a1;
  if (v1 >= 1.0)
  {
    v18 = *a1;

    varianceUsingPoissonSummation(for:bound:)(v18, v1);
  }

  else if (v2 >= 1)
  {
    v3 = v1 + v1;
    v4 = 0.0;
    v5 = *a1;
    v27 = v1 + v1;
    if (v2 < 4)
    {
      goto LABEL_7;
    }

    v5 = *a1 & 3;
    v6 = vaddq_s64(vdupq_n_s64(v2), xmmword_270C47750);
    v25 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
    v26 = vdupq_lane_s64(*&v3, 0);
    v24 = vdupq_n_s64(0xFFFFFFFFFFFFFFFCLL);
    v7 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v34 = v6;
      v8 = vcvtq_f64_u64(v6);
      v9 = vcvtq_f64_u64(vaddq_s64(v6, v25));
      v31 = vmulq_f64(v8, v8);
      v32 = vmulq_f64(v9, v9);
      __x = vdivq_f64(vnegq_f64(v31), v26);
      v33 = vdivq_f64(vnegq_f64(v32), v26);
      v29 = exp(__x.f64[1]);
      v10.f64[0] = exp(__x.f64[0]);
      v10.f64[1] = v29;
      v30 = v10;
      __x.f64[0] = exp(v33.f64[1]);
      v11.f64[0] = exp(v33.f64[0]);
      v11.f64[1] = __x.f64[0];
      v12 = vmulq_f64(v31, v30);
      v13 = vmulq_f64(v32, v11);
      v4 = v4 + v12.f64[0] + v12.f64[1] + v13.f64[0] + v13.f64[1];
      v6 = vaddq_s64(v34, v24);
      v7 -= 4;
    }

    while (v7);
    v3 = v27;
    if (v2 != (v2 & 0x7FFFFFFFFFFFFFFCLL))
    {
LABEL_7:
      exp(-(v5 * v5) / v3);
      v14 = v5 - 2;
      if (v5 >= 2)
      {
        v15 = v5 - 1;
        exp(-(v15 * v15) / v27);
        if (v15 >= 2)
        {
          exp(-(v14 * v14) / v27);
        }
      }

      v3 = v27;
    }

    v16 = 0.0;
    if (v2 == 1)
    {
      v17 = 1;
LABEL_20:
      exp(-(v17 * v17) / v3);
      return;
    }

    v17 = v2 & 1;
    v19 = v2;
    v20 = v2 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v21 = -((v19 - 1) * (v19 - 1)) / v3;
      v22 = exp(-(v19 * v19) / v3);
      v23 = exp(v21);
      v3 = v27;
      v16 = v16 + v22 + v23;
      v19 -= 2;
      v20 -= 2;
    }

    while (v20);
    if (v2 != (v2 & 0x7FFFFFFFFFFFFFFELL))
    {
      goto LABEL_20;
    }
  }
}

uint64_t (*DiscreteGaussian.variance.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = DiscreteGaussian.variance.getter();
  return DiscreteGaussian.variance.modify;
}

void *DiscreteGaussian.variance.modify(void *result)
{
  v1 = result[1];
  *(v1 + 64) = *result;
  *(v1 + 72) = 0;
  return result;
}

Swift::Int32 __swiftcall DiscreteGaussian.sample()()
{
  v2 = v1[7];
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

  v4 = v1[1];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = __OFSUB__(0, v7);
  v20 = v8;
  v9 = __OFSUB__(0, v3);
  v19 = v9;
  while (1)
  {
    result = sampleDLaplace(scale:)(v4, v9);
    v15 = result;
    if (result >= 0)
    {
      v16 = result;
    }

    else
    {
      v16 = -result;
    }

    v21 = 1;
    v22 = v16;
    v17 = v3;
    v18 = v7;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    if (v20)
    {
      break;
    }

    v17 = -v3;
    v18 = -v7;
    if (v19)
    {
      __break(1u);
      return v15;
    }

LABEL_9:
    specialized static Fraction.+= infix(_:_:)(&v21, v18, v17);
    v10 = specialized static Fraction.* infix(_:_:)(v21, v22, v21, v22);
    v12 = v11;
    v21 = v5;
    v22 = v6;
    specialized static Fraction.*= infix(_:_:)(&v21, 2);
    v13 = v21;
    v14 = v22;
    v21 = v10;
    v22 = v12;
    specialized static Fraction./= infix(_:_:)(&v21, v13, v14);
    if (sampleBernoulliExp(_:)(v21, v22) == 1)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DiscreteGaussian(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DiscreteGaussian(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
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

  *(result + 73) = v3;
  return result;
}

void *Polynomial.init()@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  getContiguousArrayStorageType<A>(for:)(a1, a1);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  _finalizeUninitializedArray<A>(_:)();
  result = Polynomial.init(coefficients:)(v4, &v6);
  *a3 = v6;
  return result;
}

uint64_t convolveDirectly<A, B, C, D>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v115 = a6;
  v139 = a3;
  v129 = a2;
  v121 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v132 = a12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v89[1] = AssociatedTypeWitness;
  v109 = swift_getAssociatedTypeWitness();
  v135 = *(v109 - 8);
  v17 = MEMORY[0x28223BE20](v109);
  v108 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v107 = v89 - v20;
  MEMORY[0x28223BE20](v19);
  v106 = v89 - v21;
  v110 = a9;
  v128 = *(*(a9 + 8) + 8);
  v130 = a5;
  v105 = swift_getAssociatedTypeWitness();
  v134 = *(v105 - 8);
  v22 = MEMORY[0x28223BE20](v105);
  v104 = v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v103 = v89 - v24;
  v111 = a8;
  v25 = *(*(a8 + 8) + 8);
  v102 = swift_getAssociatedTypeWitness();
  v133 = *(v102 - 8);
  v26 = MEMORY[0x28223BE20](v102);
  v101 = v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v100 = v89 - v29;
  v120 = *(a7 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v99 = v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v98 = v89 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v137 = v89 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = v89 - v36;
  v131 = a10;
  v38 = *(a10 + 8);
  v39 = swift_getAssociatedTypeWitness();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = v89 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v114 = a4;
  v113 = v25;
  v45 = v89 - v44;
  result = dispatch thunk of Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    result = dispatch thunk of Collection.isEmpty.getter();
    if ((result & 1) == 0)
    {
      v138 = v45;
      v47 = dispatch thunk of Collection.count.getter();
      result = dispatch thunk of Collection.count.getter();
      v48 = v47 + result;
      if (__OFADD__(v47, result))
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v49 = v48 - 1;
      if (__OFSUB__(v48, 1))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      result = dispatch thunk of Collection.count.getter();
      if (result < v49)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v49 < 0)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v119 = v40;
      v126 = a11;
      v127 = v39;
      v125 = v37;
      v140 = a7;
      if (v49)
      {
        v50 = 0;
        v136 = (v119 + 8);
        do
        {
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
          (*v136)(v43, v127);
          dispatch thunk of static AdditiveArithmetic.zero.getter();
          dispatch thunk of MutableCollection.subscript.setter();
          ++v50;
        }

        while (v49 != v50);
      }

      v96 = v43;
      v97 = v38;
      result = dispatch thunk of Collection.count.getter();
      if (result < 0)
      {
        goto LABEL_27;
      }

      v51 = v127;
      v52 = v96;
      if (result)
      {
        v53 = 0;
        v124 = (v132 + 88);
        v123 = (AssociatedConformanceWitness + 56);
        v122 = (v132 + 96);
        v136 = (v119 + 8);
        v95 = (v133 + 8);
        v94 = (v120 + 16);
        v93 = (v134 + 8);
        v92 = (v135 + 8);
        v91 = (v120 + 8);
        v90 = result;
        while (1)
        {
          result = dispatch thunk of Collection.count.getter();
          if (result < 0)
          {
            break;
          }

          v54 = result;
          v133 = v53;
          if (result)
          {
            v119 = swift_checkMetadataState();
            v55 = 0;
            v118 = *v124;
            v117 = *v123;
            v116 = *v122;
            v120 = v54;
            while (1)
            {
              result = dispatch thunk of Collection.startIndex.getter();
              if (__OFADD__(v133, v55))
              {
                break;
              }

              v135 = v55 + 1;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              v134 = *v136;
              v134(v52, v51);
              v56 = v101;
              dispatch thunk of Collection.startIndex.getter();
              v57 = v100;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              v58 = *v95;
              v59 = v56;
              v60 = v102;
              (*v95)(v59, v102);
              v61 = dispatch thunk of Collection.subscript.read();
              v62 = *v94;
              (*v94)(v137);
              v61(v141, 0);
              v58(v57, v60);
              v63 = v104;
              dispatch thunk of Collection.startIndex.getter();
              v64 = v103;
              dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
              v65 = *v93;
              v66 = v63;
              v67 = v105;
              (*v93)(v66, v105);
              v68 = dispatch thunk of Collection.subscript.read();
              v69 = v98;
              v62(v98);
              v68(v141, 0);
              v70 = v64;
              v71 = v125;
              v72 = v67;
              v51 = v127;
              v65(v70, v72);
              v73 = v99;
              v74 = v137;
              (v62)(v99, v137, v140);
              v75 = v73;
              v76 = v132;
              FieldElement.init(other:)(v75, v140, v132);
              v77 = v107;
              v78 = v118;
              v118(v140, v76);
              v79 = v108;
              v78(v140, v76);
              v80 = v106;
              v117(v77, v79);
              v81 = *v92;
              v82 = v79;
              v83 = v109;
              (*v92)(v82, v109);
              v81(v77, v83);
              v116(v80, v140, v76);
              v84 = *v91;
              (*v91)(v69, v140);
              v84(v74, v140);
              v85 = v140;
              v86 = dispatch thunk of MutableCollection.subscript.modify();
              dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
              v52 = v96;
              v84(v71, v85);
              v87 = v120;
              v88 = v138;
              v86(v141, 0);
              result = (v134)(v88, v51);
              v55 = v135;
              if (v87 == v135)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
            break;
          }

LABEL_13:
          v53 = v133 + 1;
          if (v133 + 1 == v90)
          {
            return result;
          }
        }

        __break(1u);
        goto LABEL_23;
      }
    }
  }

  return result;
}

uint64_t convolveUsingDFT<A, B, C, D>(_:withKernel:result:)(void *a1, void *a2, uint64_t a3, void (**a4)(uint64_t, uint64_t), void (**a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void *), uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v81 = a5;
  v72 = a3;
  v80 = a2;
  v17 = a12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v76 = AssociatedTypeWitness;
  v20 = a6;
  v87 = swift_getAssociatedTypeWitness();
  v73 = *(v87 - 8);
  v21 = MEMORY[0x28223BE20](v87);
  v86 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v70 = &v66 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v69 = &v66 - v26;
  v71 = a7;
  v88 = *(a7 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v68 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v66 - v29;
  v89 = a10;
  v92 = *(a10 + 8);
  v90 = swift_getAssociatedTypeWitness();
  v83 = *(v90 - 8);
  v31 = MEMORY[0x28223BE20](v90);
  v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v75 = (&v66 - v34);
  v77 = a8;
  v78 = a1;
  v79 = a4;
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    return result;
  }

  v36 = a9;
  result = dispatch thunk of Collection.isEmpty.getter();
  if (result)
  {
    return result;
  }

  v37 = dispatch thunk of Collection.count.getter();
  result = dispatch thunk of Collection.count.getter();
  v38 = v37 + result;
  if (__OFADD__(v37, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  result = v38 - 1;
  if (__OFSUB__(v38, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v39 = specialized FixedWidthInteger.nextPowerOfTwo.getter(result);
  result = dispatch thunk of Collection.count.getter();
  if (result < v39)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v39 < 0)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v84 = AssociatedConformanceWitness;
  v67 = v20;
  v85 = a11;
  v93 = a12;
  if (v39)
  {
    v74 = a9;
    v40 = 0;
    v82 = (v83 + 8);
    v83 = v30;
    do
    {
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      (*v82)(v33, v90);
      dispatch thunk of static AdditiveArithmetic.zero.getter();
      dispatch thunk of MutableCollection.subscript.setter();
      ++v40;
    }

    while (v39 != v40);
    v17 = v93;
    v36 = v74;
    v30 = v83;
  }

  v41 = v71;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v42 = specialized Array.init(repeating:count:)(v30, v39, v41);
  v43 = (v88 + 8);
  v44 = *(v88 + 8);
  (v44)(v30, v41);
  v96 = v42;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v45 = specialized Array.init(repeating:count:)(v30, v39, v41);
  v82 = v44;
  v83 = v43;
  (v44)(v30, v41);
  v95 = v45;
  v46 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  discreteFourierTransform<A, B, C>(input:size:output:)(v78, v39, &v96, v79, v46, v41, v77, WitnessTable, v48, v17);
  v66 = v48;
  v92 = v46;
  discreteFourierTransform<A, B, C>(input:size:output:)(v80, v39, &v95, v81, v46, v41, v36, WitnessTable, v48, v17);
  v49 = v39;
  v50 = v70;
  v51 = v69;
  v52 = v68;
  if (v49)
  {
    v53 = swift_checkMetadataState();
    v54 = 0;
    v55 = v93[12];
    v80 = v93 + 12;
    v81 = v53;
    v77 = v93[11];
    v78 = v93 + 11;
    v79 = v55;
    v75 = *(v84 + 56);
    v76 = v84 + 56;
    v74 = v95;
    ++v73;
    v91 = v49;
    v56 = v77;
    do
    {
      v90 = v54 + 1;
      Array.subscript.getter();
      Array._makeMutableAndUnique()();
      Array._checkSubscript_mutating(_:)(v54);
      _swift_isClassOrObjCExistentialType();
      v57 = v93;
      v56(v41, v93);
      v58 = v51;
      v59 = v50;
      v60 = v86;
      v56(v41, v57);
      v75(v59, v60);
      v61 = *v73;
      v62 = v60;
      v63 = v87;
      (*v73)(v62, v87);
      v64 = v59;
      v65 = v63;
      v50 = v59;
      v51 = v58;
      v61(v64, v65);
      (v79)(v58, v41, v57);
      (v82)(v52, v41);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      v54 = v90;
      v49 = v91;
    }

    while (v91 != v90);
  }

  v94 = v96;
  inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(&v94, v49, v72, v92, v67, v41, v66, v89, v85, v93);
}

void evaluateUsingHorner<A, B, C>(_:atInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v85 = a6;
  v86 = a8;
  v14 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v79 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v83 = &v67 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  *&v91 = &v67 - v20;
  v21 = *(a5 - 8);
  v22 = MEMORY[0x28223BE20](v19);
  v78 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v89 = a1;
  v90 = a3;
  v88 = v14;
  if (dispatch thunk of Collection.isEmpty.getter())
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (dispatch thunk of Collection.isEmpty.getter())
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v69 = v26;
  v29 = dispatch thunk of Collection.count.getter();
  v30 = v29 - 1;
  if (__OFSUB__(v29, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = dispatch thunk of Collection.count.getter();
  v32 = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v77 = *(v86 + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v33 = v30 * v32;
  if ((v30 * v32) >> 64 != (v30 * v32) >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!__OFADD__(v33, 1))
  {
    v81 = a4;
    v82 = a7;
    v80 = a2;
    v34 = specialized Array.init(repeating:count:)(v28, v33 + 1, a5);
    v35 = *(v21 + 8);
    v76 = v21 + 8;
    v75 = v35;
    v35(v28, a5);
    v94 = v34;
    v36 = v83;
    dispatch thunk of Collection.startIndex.getter();
    v37 = v91;
    dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
    v68 = v32;
    v38 = v87 + 8;
    v39 = *(v87 + 8);
    v40 = v36;
    v41 = AssociatedTypeWitness;
    v39(v40, AssociatedTypeWitness);
    v42 = dispatch thunk of Collection.subscript.read();
    v43 = *(v21 + 16);
    v44 = v69;
    v73 = v21 + 16;
    v72 = v43;
    v43(v69);
    v42(v93, 0);
    v87 = v38;
    v74 = v39;
    v39(v37, v41);
    v45 = type metadata accessor for Array();
    Array._makeMutableAndUnique()();
    v46 = v94;
    Array._checkSubscript_mutating(_:)(0);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v48 = v46 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v48 = v46;
    }

    v49 = *(v21 + 40);
    v71 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v49(v48 + v71, v44, a5);
    destructiveProjectEnumData for SeedCtrlUnadjustedError();
    v50 = v68 - 1;
    if (__OFSUB__(v68, 1))
    {
      goto LABEL_28;
    }

    v51 = 0;
    LODWORD(v69) = 0;
    v70 = v45;
    v52 = v68 == 1;
    if (v50 <= 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    for (i = v50 - 1; ; i = 0)
    {
      *&v92[0] = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19PartialRangeThroughVySiGMd, "4\"");
      WitnessTable = swift_getWitnessTable();
      lazy protocol witness table accessor for type PartialRangeThrough<Int> and conformance PartialRangeThrough<A>();
      MutableCollection.subscript.getter();
      v91 = v93[0];
      v92[0] = v93[0];
      v92[1] = v93[1];
      v56 = type metadata accessor for ArraySlice();
      v57 = swift_getWitnessTable();
      v58 = swift_getWitnessTable();
      convolveDirectly<A, B, C, D>(_:withKernel:result:)(v92, v80, &v94, v56, v81, v45, a5, v57, v82, WitnessTable, v58, v86);
      swift_unknownObjectRelease();
      if (__OFADD__(v51, v30))
      {
        break;
      }

      v59 = v83;
      dispatch thunk of Collection.startIndex.getter();
      v60 = v30;
      v61 = v79;
      dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
      v62 = AssociatedTypeWitness;
      *&v91 = i;
      v63 = v74;
      v74(v59, AssociatedTypeWitness);
      v64 = dispatch thunk of Collection.subscript.read();
      v65 = v78;
      v72(v78);
      v64(v93, 0);
      v66 = v61;
      v30 = v60;
      v63(v66, v62);
      v45 = v70;
      Array._makeMutableAndUnique()();
      Array._checkSubscript_mutating(_:)(0);
      _swift_isClassOrObjCExistentialType();
      dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
      v75(v65, a5);
      destructiveProjectEnumData for SeedCtrlUnadjustedError();
      v51 += v60;
      v50 = v91;
      v52 = v91 == 0;
      if (v91 > 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      v54 = !v52;
      if ((v54 | v69))
      {
        return;
      }

      LODWORD(v69) = 1;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t evaluateUsingHorner<A, B>(_:atInput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v85 = a2;
  v86 = a5;
  v12 = *(*(a5 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v83 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v82 = &v61[-v16];
  v17 = swift_getAssociatedTypeWitness();
  v88 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = v17;
  v80 = swift_getAssociatedTypeWitness();
  v18 = *(v80 - 8);
  v19 = MEMORY[0x28223BE20](v80);
  v79 = &v61[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v78 = &v61[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v77 = &v61[-v24];
  v25 = *(a4 - 8);
  v26 = MEMORY[0x28223BE20](v23);
  v76 = &v61[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = MEMORY[0x28223BE20](v26);
  v93 = &v61[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v92 = &v61[-v31];
  MEMORY[0x28223BE20](v30);
  v75 = &v61[-v32];
  v33 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v61[-v34];
  BidirectionalCollection.last.getter();
  result = (*(v25 + 48))(v35, 1, a4);
  if (result != 1)
  {
    v37 = *(v25 + 32);
    v74 = v25 + 32;
    v73 = v37;
    v37(a7, v35, a4);
    result = dispatch thunk of Collection.count.getter();
    v38 = result - 2;
    if (!__OFSUB__(result, 2))
    {
      v70 = v12;
      v71 = a1;
      v62 = 0;
      v91 = (v25 + 16);
      v68 = v88 + 88;
      v67 = AssociatedConformanceWitness + 56;
      v66 = (v18 + 8);
      v65 = v88 + 96;
      v64 = (v13 + 8);
      v63 = (v25 + 8);
      v72 = a3;
      v69 = a7;
      v39 = v88;
      while (1)
      {
        if (v38 > 0)
        {
          v90 = v38 - 1;
        }

        else
        {
          if ((v38 != 0) | v62 & 1)
          {
            return result;
          }

          v90 = 0;
          v62 = 1;
        }

        v89 = *v91;
        v40 = v93;
        v89(v93, a7, a4);
        FieldElement.init(other:)(v40, a4, v39);
        v41 = swift_checkMetadataState();
        v42 = *(v39 + 88);
        v43 = v78;
        v42(a4, v39);
        v44 = v79;
        v42(a4, v39);
        v45 = v77;
        (*(AssociatedConformanceWitness + 56))(v43, v44, v41);
        v46 = *v66;
        v47 = v44;
        v48 = v80;
        (*v66)(v47, v80);
        v46(v43, v48);
        (*(v39 + 96))(v45, a4, v39);
        v49 = v83;
        dispatch thunk of Collection.startIndex.getter();
        v50 = v82;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v51 = *v64;
        v52 = AssociatedTypeWitness;
        (*v64)(v49, AssociatedTypeWitness);
        v53 = dispatch thunk of Collection.subscript.read();
        v54 = v89;
        (v89)(v93);
        v53(v94, 0);
        v51(v50, v52);
        v55 = v76;
        v56 = v92;
        v54(v76, v92, a4);
        v57 = v75;
        FieldElement.init(other:)(v55, a4, v39);
        v58 = v93;
        dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
        v59 = *v63;
        (*v63)(v58, a4);
        v59(v56, a4);
        v60 = v69;
        v59(v69, a4);
        a7 = v60;
        result = v73(v60, v57, a4);
        v38 = v90;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void evaluateUsingDFT<A, B, C>(_:atInput:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, void *), void *a8)
{
  v184 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v201 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v194 = swift_getAssociatedTypeWitness();
  v180 = *(v194 - 8);
  v16 = MEMORY[0x28223BE20](v194);
  v193 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v176 = &v153 - v19;
  MEMORY[0x28223BE20](v18);
  v202 = &v153 - v20;
  v190 = a7;
  v21 = *(*(a7 + 1) + 8);
  v183 = swift_getAssociatedTypeWitness();
  v191 = *(v183 - 8);
  v22 = MEMORY[0x28223BE20](v183);
  v189 = &v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v200 = (&v153 - v25);
  v198 = a5;
  v181 = *(a5 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v156 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v169 = &v153 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v168 = &v153 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v167 = &v153 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v153 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v192 = &v153 - v38;
  MEMORY[0x28223BE20](v37);
  v199 = &v153 - v39;
  v170 = a6;
  v40 = *(*(a6 + 8) + 8);
  v173 = swift_getAssociatedTypeWitness();
  v174 = *(v173 - 8);
  v41 = MEMORY[0x28223BE20](v173);
  v166 = &v153 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v153 - v44;
  MEMORY[0x28223BE20](v43);
  v172 = &v153 - v46;
  v178 = a1;
  v179 = a3;
  v177 = v40;
  if (dispatch thunk of Collection.isEmpty.getter())
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v182 = v36;
  v47 = v184;
  if (dispatch thunk of Collection.isEmpty.getter())
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v48 = dispatch thunk of Collection.count.getter();
  v49 = v48 - 1;
  if (__OFSUB__(v48, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v50 = dispatch thunk of Collection.count.getter();
  v51 = v50 - 1;
  if (__OFSUB__(v50, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v52 = v49 * v51;
  if ((v49 * v51) >> 64 != (v49 * v51) >> 63)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!__OFADD__(v52, 1))
  {
    v53 = specialized FixedWidthInteger.nextPowerOfTwo.getter(v52 + 1);
    if (!v51)
    {
      getContiguousArrayStorageType<A>(for:)(v198, v198);
      v148 = v181;
      swift_allocObject();
      static Array._adoptStorage(_:count:)();
      v150 = v149;
      v151 = v172;
      dispatch thunk of Collection.startIndex.getter();
      v152 = dispatch thunk of Collection.subscript.read();
      (*(v148 + 16))(v150);
      v152(&v204, 0);
      (*(v174 + 8))(v151, v173);
      _finalizeUninitializedArray<A>(_:)();
      return;
    }

    v163 = v45;
    v160 = AssociatedTypeWitness;
    v54 = v201[1];
    v175 = a4;
    v55 = v21;
    v56 = v198;
    v57 = v199;
    v58 = v53;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v59 = specialized Array.init(repeating:count:)(v57, v58, v56);
    v61 = v181 + 8;
    v60 = *(v181 + 8);
    v60(v57, v56);
    v206 = v59;
    v171 = v54;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v161 = v58;
    v62 = specialized Array.init(repeating:count:)(v57, v58, v56);
    v63 = v175;
    v195 = v60;
    v196 = v61;
    v60(v57, v56);
    v205 = v62;
    v64 = dispatch thunk of Collection.count.getter();
    if (v64 < 0)
    {
      goto LABEL_49;
    }

    v155 = v49;
    v65 = v183;
    v66 = v189;
    if (v64)
    {
      v67 = 0;
      v187 = (v191 + 1);
      v186 = (v181 + 16);
      v185 = (v181 + 40);
      v188 = v64;
      v68 = (v191 + 1);
      do
      {
        v191 = (v67 + 1);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v69 = *v68;
        (*v68)(v66, v65);
        v70 = dispatch thunk of Collection.subscript.read();
        v71 = v55;
        v72 = v47;
        v73 = v63;
        v74 = v181;
        v75 = v198;
        (*(v181 + 16))(v192);
        v70(&v204, 0);
        v69(v200, v65);
        type metadata accessor for Array();
        Array._makeMutableAndUnique()();
        v76 = v205;
        Array._checkSubscript_mutating(_:)(v67);
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v78 = v76 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v78 = v76;
        }

        v79 = v78 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v67;
        v80 = *(v74 + 40);
        v63 = v73;
        v47 = v72;
        v55 = v71;
        v66 = v189;
        v80(v79, v192, v75);
        destructiveProjectEnumData for SeedCtrlUnadjustedError();
        v67 = v191;
      }

      while (v188 != v191);
    }

    v81 = v198;
    v82 = v199;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v83 = v161;
    v84 = specialized Array.init(repeating:count:)(v82, v161, v81);
    v195(v82, v81);
    v203 = v84;
    v85 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v153 = swift_getWitnessTable();
    v154 = WitnessTable;
    discreteFourierTransform<A, B, C>(input:size:output:)(v47, v83, &v203, v63, v85, v81, v190, WitnessTable, v153, v201);
    v162 = v203;

    v87 = v163;
    dispatch thunk of Collection.startIndex.getter();
    v88 = dispatch thunk of Collection.subscript.read();
    v89 = v181;
    v90 = *(v181 + 16);
    v91 = v182;
    v165 = v181 + 16;
    v164 = v90;
    (v90)(v182);
    v88(&v204, 0);
    v92 = *(v174 + 8);
    v174 += 8;
    v163 = v92;
    v92(v87, v173);
    Array._makeMutableAndUnique()();
    v93 = v206;
    Array._checkSubscript_mutating(_:)(0);
    v94 = _swift_isClassOrObjCExistentialType();
    v95 = v93 & 0xFFFFFFFFFFFFFF8;
    if ((v94 & 1) == 0)
    {
      v95 = v93;
    }

    v96 = *(v89 + 40);
    v175 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v96(v95 + v175, v91, v81);
    destructiveProjectEnumData for SeedCtrlUnadjustedError();
    v97 = dispatch thunk of Collection.count.getter();
    v159 = v97;
    if (v97 < 1)
    {
      goto LABEL_50;
    }

    v200 = v85;
    v157 = v162;
    if (v97 == 1)
    {
LABEL_36:

      return;
    }

    v98 = swift_checkMetadataState();
    v99 = v201[12];
    v100 = v201[11];
    v101 = *(AssociatedConformanceWitness + 56);
    v102 = 1;
    v103 = v155;
    v157 = v162;
    v191 = v201 + 12;
    v192 = v98;
    v189 = (v201 + 11);
    v190 = v99;
    v188 = v100;
    v187 = AssociatedConformanceWitness + 56;
    v186 = v101;
    v185 = (v180 + 8);
    while (v102 != v159)
    {
      if (v103 < 0)
      {
        goto LABEL_39;
      }

      v104 = 0;
      v158 = v102 + 1;
      v183 = v205;
      v180 = v103;
      v182 = v102;
      while (1)
      {
        v105 = v166;
        dispatch thunk of Collection.startIndex.getter();
        v106 = v172;
        dispatch thunk of RandomAccessCollection.index(_:offsetBy:)();
        v107 = v173;
        v108 = v163;
        v163(v105, v173);
        v109 = dispatch thunk of Collection.subscript.read();
        v111 = v198;
        v110 = v199;
        v112 = v164;
        (v164)(v199);
        v109(&v204, 0);
        v108(v106, v107);
        v113 = v168;
        Array.subscript.getter();
        v114 = v169;
        v112(v169, v110, v111);
        v115 = v167;
        v116 = v201;
        FieldElement.init(other:)(v114, v111, v201);
        v117 = v176;
        v118 = v188;
        (v188)(v111, v116);
        v119 = v193;
        v118(v111, v116);
        v186(v117, v119);
        v120 = *v185;
        v121 = v194;
        (*v185)(v119, v194);
        v122 = v117;
        v123 = v202;
        v184 = v120;
        v120(v122, v121);
        v190(v123, v111, v116);
        v124 = v195;
        v195(v113, v111);
        v124(v199, v111);
        Array._makeMutableAndUnique()();
        Array._checkSubscript_mutating(_:)(v104);
        _swift_isClassOrObjCExistentialType();
        v125 = *(v181 + 72);
        dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
        v124(v115, v111);
        v126 = v180;
        destructiveProjectEnumData for SeedCtrlUnadjustedError();
        if (v126 == v104)
        {
          break;
        }

        if (__OFADD__(v104++, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      v128 = dispatch thunk of Collection.count.getter();
      if (__OFSUB__(v128, 1))
      {
        goto LABEL_40;
      }

      if (v182 == (v128 - 1))
      {
        goto LABEL_36;
      }

      v129 = v161;
      if (v161 < 0)
      {
        goto LABEL_41;
      }

      v130 = v176;
      v131 = v156;
      if (v161)
      {
        v132 = 0;
        v133 = v175;
        v160 = v125;
        do
        {
          v183 = v132 + 1;
          v134 = v198;
          Array.subscript.getter();
          Array._makeMutableAndUnique()();
          v135 = v203;
          Array._checkSubscript_mutating(_:)(v132);
          v136 = _swift_isClassOrObjCExistentialType();
          v137 = v135 & 0xFFFFFFFFFFFFFF8;
          if ((v136 & 1) == 0)
          {
            v137 = v135;
          }

          v182 = v137;
          v138 = v201;
          v139 = v188;
          (v188)(v134, v201);
          v140 = v202;
          v141 = v193;
          v139(v134, v138);
          v186(v130, v141);
          v142 = v141;
          v143 = v194;
          v144 = v184;
          v184(v142, v194);
          v144(v130, v143);
          v190(v140, v134, v201);
          v145 = v134;
          v146 = v160;
          v195(v131, v145);
          destructiveProjectEnumData for SeedCtrlUnadjustedError();
          v129 = v161;
          v133 += v146;
          v132 = v183;
        }

        while (v161 != v183);
      }

      v147 = v203;
      v204 = v203;
      inverseDiscreteFourierTransform<A, B, C>(input:size:output:)(&v204, v129, &v205, v200, v200, v198, v153, v154, v153, v201);
      if (__OFADD__(v180, v155))
      {
        goto LABEL_42;
      }

      v157 = v147;
      v103 = v180 + v155;
      v102 = v158;
      if (v158 == v159)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}