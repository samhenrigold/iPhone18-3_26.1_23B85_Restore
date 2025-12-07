uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>()
{
  return KeyedDC.decode(_:forKey:)() & 1;
}

{
  return KeyedDC.decode(_:forKey:)();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>(uint64_t a1)
{
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  return sub_1C1360570(a1);
}

{
  return sub_1C1360594(a1);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7168]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7170]);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for KeyedDC(0, *(a2 + 80), *(a2 + 88), a4);
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  type metadata accessor for KeyedDC(0, *(a2 + 80), *(a2 + 88), a4);
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E70F8]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7108]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7118]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7120]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7130]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7140]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7110]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7138]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7148]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7158]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7160]);
}

unint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7100]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7128]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7150]);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for KeyedDC(0, *(a2 + 80), *(a2 + 88), a4);
  return a4(a1, v7, a3) & 0x1FF;
}

{
  v7 = type metadata accessor for KeyedDC(0, *(a2 + 80), *(a2 + 88), a4);
  return a4(a1, v7, a3) & 0x1FFFF;
}

{
  v8 = type metadata accessor for KeyedDC(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

{
  v8 = type metadata accessor for KeyedDC(0, *(a2 + 80), *(a2 + 88), a4);
  result = a4(a1, v8, a3);
  if (v4)
  {
    return v10;
  }

  return result;
}

unint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = type metadata accessor for KeyedDC(0, *(a2 + 80), *(a2 + 88), a4);
  v8 = a4(a1, v7, a3);
  return v8 | ((HIDWORD(v8) & 1) << 32);
}

uint64_t UnkeyedDC.count.getter()
{
  if ((*(v0 + 81) & 1) == 0)
  {
    return *(v0 + 72);
  }

  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  result = REDecoderContainerElementCount();
  *(v0 + 72) = result;
  *(v0 + 80) = 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UnkeyedDC.IndexedCodingKey@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UnkeyedDC.IndexedCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UnkeyedDC.IndexedCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedDC.decodeNil()()
{
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  Nil = REDecoderTryReadNil();
  if (Nil)
  {
    v2 = *(v0 + 88);
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 88) = v4;
    }
  }

  return Nil;
}

uint64_t UnkeyedDC.decode(_:)()
{
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  result = PrivateDecoder.decode(_:)();
  if (!v1)
  {
    v3 = *(v0 + 88);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 88) = v5;
    }
  }

  return result;
}

uint64_t UnkeyedDC.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v5 = v4;
  v25 = a4;
  v24 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[2];
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v9 = v4[11];
  *&v28 = v9;
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  swift_beginAccess();
  v13 = *(v8 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 24) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    *(v8 + 24) = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
  }

  v29 = &unk_1F40F44E8;
  v30 = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();
  v17 = swift_allocObject();
  *&v28 = v17;
  *(v17 + 16) = v9;
  *(v17 + 24) = 0;
  *(v17 + 32) = v10;
  *(v17 + 40) = v12;
  v13[2] = v16 + 1;
  outlined init with take of ForceEffectBase(&v28, &v13[5 * v16 + 4]);
  *(v8 + 24) = v13;
  swift_endAccess();
  v29 = type metadata accessor for PrivateDecoder();
  v30 = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder, protocol conformance descriptor for PrivateDecoder);
  *&v28 = v8;

  v18 = v31;
  v19 = v26;
  result = dispatch thunk of Decodable.init(from:)();
  if (v19)
  {
    return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v5);
  }

  v21 = *(v5 + 88);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v5 + 88) = v23;
    (*(v24 + 32))(v25, v18, a2);
    return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v5);
  }

  __break(1u);
  return result;
}

uint64_t UnkeyedDC.nestedContainer<A>(keyedBy:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  v30 = a3;
  swift_beginAccess();
  outlined init with copy of [String : String]((v3 + 4), v27, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v28)
  {
    outlined init with copy of __REAssetService(v27, v24);
    outlined destroy of BodyTrackingComponent?(v27, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v8 = v25;
    v9 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v27, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v10 = v3[2];
  PrivateDecoder.terminateContainers(_:)(*(v3[3] + 16) + 1);
  v12 = type metadata accessor for KeyedDC(0, a1, a2, v11);
  v13 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v27[0] = v3[11];
  v15 = v27[0];

  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  *(inited + 56) = &unk_1F40F44E8;
  *(inited + 64) = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();
  v19 = swift_allocObject();
  *(inited + 32) = v19;
  *(v19 + 16) = v15;
  *(v19 + 24) = 0;
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v27[0] = v13;
  specialized Array.append<A>(contentsOf:)(inited);
  v22 = specialized KeyedDC.__allocating_init(decoder:codingPath:)(v10, v27[0], v20, v21);

  if (!v4)
  {
    v28 = v12;
    v29 = &protocol witness table for KeyedDC<A>;
    v27[0] = v22;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v27, (v5 + 4));
    swift_endAccess();
    v27[0] = v22;
    swift_getWitnessTable(protocol conformance descriptor for KeyedDC<A>, v12);
    return KeyedDecodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t UnkeyedDC.nestedUnkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  outlined init with copy of [String : String]((v1 + 4), v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v22)
  {
    outlined init with copy of __REAssetService(v21, v18);
    outlined destroy of BodyTrackingComponent?(v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v5 = v19;
    v6 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v7 = v1[2];
  PrivateDecoder.terminateContainers(_:)(*(v1[3] + 16) + 1);
  v8 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v21[0] = v1[11];
  v10 = v21[0];

  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  *(inited + 56) = &unk_1F40F44E8;
  *(inited + 64) = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();
  v14 = swift_allocObject();
  *(inited + 32) = v14;
  *(v14 + 16) = v10;
  *(v14 + 24) = 0;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  v21[0] = v8;
  specialized Array.append<A>(contentsOf:)(inited);
  v15 = specialized UnkeyedDC.__allocating_init(decoder:codingPath:)(v7, v21[0]);

  if (!v2)
  {
    v17 = type metadata accessor for UnkeyedDC();
    v22 = v17;
    v23 = &protocol witness table for UnkeyedDC;
    v21[0] = v15;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v21, (v3 + 4));
    swift_endAccess();
    a1[3] = v17;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedDC and conformance UnkeyedDC, type metadata accessor for UnkeyedDC, protocol conformance descriptor for UnkeyedDC);
    a1[4] = result;
    *a1 = v15;
  }

  return result;
}

uint64_t UnkeyedDC.superDecoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = *(v1[2] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v6 = v1[11];

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v8;
  *(inited + 56) = &unk_1F40F44E8;
  *(inited + 64) = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();
  v10 = swift_allocObject();
  *(inited + 32) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  specialized Array.append<A>(contentsOf:)(inited);
  v11 = v3;
  v12 = type metadata accessor for PrivateDecoder();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v13 + 40) = v14;
  *(v13 + 48) = 0;
  *(v13 + 16) = v4;
  *(v13 + 24) = v11;
  a1[3] = v12;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder, protocol conformance descriptor for PrivateDecoder);
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t UnkeyedEC.__deallocating_deinit(uint64_t a1)
{

  outlined destroy of BodyTrackingComponent?(v1 + 32, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance UnkeyedDC()
{
  return specialized UnkeyedDC.decode(_:)() & 1;
}

{
  return UnkeyedDC.decode(_:)();
}

{
  return specialized UnkeyedDC.decode(_:)();
}

{
  return specialized UnkeyedDC.decode(_:)();
}

{
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E69988A0]);
}

{
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E6998888]);
}

{
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E6998890]);
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E69988C0]);
}

{
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E69988A8]);
}

{
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E69988B0]);
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return sub_1C1360648();
}

{
  return sub_1C1360680();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

unint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FA8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FC0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FE0]);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FB0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FB8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FD0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FC8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FD8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FE8]);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  return a3(a1, a2) & 0x1FF;
}

{
  return a3(a1, a2) & 0x1FFFF;
}

{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t SingleValueDC.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PrivateDecoder();
  lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder, protocol conformance descriptor for PrivateDecoder);

  return dispatch thunk of Decodable.init(from:)();
}

uint64_t SingleValueEC.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC()
{
  v1 = *(*(*v0 + 16) + 16);
  if (REDecoderReadBool())
  {
    v2 = specialized static REDecoder.Error.getStatus(_:)(v1);
    v4 = v3;
    v6 = v5;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v7 = v2;
    *(v7 + 8) = v4;
    *(v7 + 16) = v6 & 1;
    swift_willThrow();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

{
  return PrivateDecoder.decode(_:)();
}

{
  v1 = *(*(*v0 + 16) + 16);
  result = REDecoderReadDouble();
  if (result)
  {
    v3 = specialized static REDecoder.Error.getStatus(_:)(v1);
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v1 = *(*(*v0 + 16) + 16);
  result = REDecoderReadFloat();
  if (result)
  {
    v3 = specialized static REDecoder.Error.getStatus(_:)(v1);
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2)
{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E69988A0]);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E6998888]);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E6998890]);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E69988C0]);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E69988A8]);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E69988B0]);
}

{
  return sub_1C13606B8(a1, a2);
}

{
  return sub_1C1360718(a1, a2);
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, const char *, unsigned __int8 *))
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*v3 + 16);
  v13 = 0;
  v5 = *(v4 + 16);
  if (!a3(v5, "", &v13))
  {
    return v13;
  }

  v6 = specialized static REDecoder.Error.getStatus(_:)(v5);
  v8 = v7;
  v10 = v9;
  lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
  swift_allocError();
  *v11 = v6;
  *(v11 + 8) = v8;
  *(v11 + 16) = v10 & 1;
  return swift_willThrow();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, const char *, unsigned __int16 *))
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*v3 + 16);
  v13 = 0;
  v5 = *(v4 + 16);
  if (!a3(v5, "", &v13))
  {
    return v13;
  }

  v6 = specialized static REDecoder.Error.getStatus(_:)(v5);
  v8 = v7;
  v10 = v9;
  lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
  swift_allocError();
  *v11 = v6;
  *(v11 + 8) = v8;
  *(v11 + 16) = v10 & 1;
  return swift_willThrow();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, const char *, unsigned int *))
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*v3 + 16);
  v13 = 0;
  v5 = *(v4 + 16);
  if (!a3(v5, "", &v13))
  {
    return v13;
  }

  v6 = specialized static REDecoder.Error.getStatus(_:)(v5);
  v8 = v7;
  v10 = v9;
  lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
  swift_allocError();
  *v11 = v6;
  *(v11 + 8) = v8;
  *(v11 + 16) = v10 & 1;
  return swift_willThrow();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, const char *, void *))
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(*v3 + 16);
  v13[0] = 0;
  v5 = *(v4 + 16);
  if (!a3(v5, "", v13))
  {
    return v13[0];
  }

  v6 = specialized static REDecoder.Error.getStatus(_:)(v5);
  v8 = v7;
  v10 = v9;
  lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
  swift_allocError();
  *v11 = v6;
  *(v11 + 8) = v8;
  *(v11 + 16) = v10 & 1;
  return swift_willThrow();
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ForceEffectBase(&v12, v10 + 40 * a1 + 32);
}

void *specialized static REDecoder.Error.getStatus(_:)(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = 0xD000000000000017;
  v12 = 0;
  Status = REDecoderGetStatus();
  if (Status == 3)
  {
    type metadata accessor for OS_os_log();

    v5 = static OS_os_log.default.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E776F6E6B6E75, 0xE700000000000000, &v10);
      _os_log_impl(&dword_1C1358000, v5, v6, "REDecoder decoding error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1C6902A30](v8, -1, -1);
      MEMORY[0x1C6902A30](v7, -1, -1);
    }

    v10 = 0;
    v11 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v10 = 0xD00000000000001ALL;
    v11 = 0x80000001C18E1690;
    MEMORY[0x1C68F3410](0x6E776F6E6B6E75, 0xE700000000000000);

    return v10;
  }

  else
  {
    type metadata accessor for OS_os_log();
    v3 = static OS_os_log.default.getter();
    v4 = static os_log_type_t.default.getter();
    if (Status == 1)
    {
      os_log(_:dso:log:type:_:)("REDecoder internal API argument error", 37, 2, &dword_1C1358000, v3, v4, MEMORY[0x1E69E7CC0]);

      return 0xD000000000000025;
    }

    else
    {
      os_log(_:dso:log:type:_:)("REDecoder unknown error", 23, 2, &dword_1C1358000, v3, v4, MEMORY[0x1E69E7CC0]);
    }
  }

  return v1;
}

uint64_t specialized KeyedDC.init(decoder:codingPath:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 80) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_s5Int64VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v2 + 88) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s5Int64VTt0g5Tf4g_n(v5);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (*(a1 + 48))
  {
  }

  else
  {
    v6 = *(a1 + 16);

    if (REDecoderBeginContainer())
    {
      v7 = specialized static REDecoder.Error.getStatus(_:)(v6);
      v9 = v8;
      v11 = v10;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v12 = v7;
      *(v12 + 8) = v9;
      *(v12 + 16) = v11 & 1;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t specialized KeyedDC.__allocating_init(decoder:codingPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for KeyedDC(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return specialized KeyedDC.init(decoder:codingPath:)(a1, a2);
}

uint64_t specialized UnkeyedDC.__allocating_init(decoder:codingPath:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnkeyedDC();
  v4 = swift_allocObject();
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 256;
  *(v4 + 88) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  if (*(a1 + 48) == 1)
  {
  }

  else
  {
    v5 = *(a1 + 16);

    if (REDecoderBeginContainer())
    {
      v6 = specialized static REDecoder.Error.getStatus(_:)(v5);
      v8 = v7;
      v10 = v9;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v11 = v6;
      *(v11 + 8) = v8;
      *(v11 + 16) = v10 & 1;
      swift_willThrow();
    }
  }

  return v4;
}

void *specialized static REEncoder.Error.getStatus(_:)(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = 0xD000000000000017;
  v12 = 0;
  Status = REEncoderGetStatus();
  if (Status == 3)
  {
    type metadata accessor for OS_os_log();

    v5 = static OS_os_log.default.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E776F6E6B6E75, 0xE700000000000000, &v10);
      _os_log_impl(&dword_1C1358000, v5, v6, "REEncoder encoding error: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1C6902A30](v8, -1, -1);
      MEMORY[0x1C6902A30](v7, -1, -1);
    }

    v10 = 0;
    v11 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v10 = 0xD00000000000001ALL;
    v11 = 0x80000001C18E1620;
    MEMORY[0x1C68F3410](0x6E776F6E6B6E75, 0xE700000000000000);

    return v10;
  }

  else
  {
    type metadata accessor for OS_os_log();
    v3 = static OS_os_log.default.getter();
    v4 = static os_log_type_t.default.getter();
    if (Status == 1)
    {
      os_log(_:dso:log:type:_:)("REEncoder internal API argument error", 37, 2, &dword_1C1358000, v3, v4, MEMORY[0x1E69E7CC0]);

      return 0xD000000000000025;
    }

    else
    {
      os_log(_:dso:log:type:_:)("REEncoder unknown error", 23, 2, &dword_1C1358000, v3, v4, MEMORY[0x1E69E7CC0]);
    }
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error()
{
  result = lazy protocol witness table cache variable for type REEncoder.Error and conformance REEncoder.Error;
  if (!lazy protocol witness table cache variable for type REEncoder.Error and conformance REEncoder.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for REEncoder.Error, &type metadata for REEncoder.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type REEncoder.Error and conformance REEncoder.Error);
  }

  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)()
{
  v1 = v0;
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REDecoderReadBool())
  {
    v5 = specialized static REDecoder.Error.getStatus(_:)(v4);
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }

  else
  {
    v12 = *(v1 + 88);
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    v11 = 0;
    *(v1 + 88) = v13;
  }

  return v11 & 1;
}

{
  v1 = v0;
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  result = REDecoderReadDouble();
  if (result)
  {
    v6 = specialized static REDecoder.Error.getStatus(_:)(v4);
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    return swift_willThrow();
  }

  else
  {
    v12 = *(v1 + 88);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    *(v1 + 88) = v14;
  }

  return result;
}

{
  v1 = v0;
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  result = REDecoderReadFloat();
  if (result)
  {
    v6 = specialized static REDecoder.Error.getStatus(_:)(v4);
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    return swift_willThrow();
  }

  else
  {
    v12 = *(v1 + 88);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    *(v1 + 88) = v14;
  }

  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)(unsigned int (*a1)(uint64_t, const char *, unsigned __int8 *))
{
  v3 = v1;
  v18 = *MEMORY[0x1E69E9840];
  v5 = v1 + 16;
  v4 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v5 + 8) + 16) + 1);
  v17 = 0;
  v6 = *(v4 + 16);
  if (a1(v6, "", &v17))
  {
    v7 = specialized static REDecoder.Error.getStatus(_:)(v6);
    v9 = v8;
    v11 = v10;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v12 = v7;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11 & 1;
    return swift_willThrow();
  }

  else
  {
    v14 = *(v3 + 88);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    result = v17;
    *(v3 + 88) = v16;
  }

  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)(unsigned int (*a1)(uint64_t, const char *, unsigned __int16 *))
{
  v3 = v1;
  v18 = *MEMORY[0x1E69E9840];
  v5 = v1 + 16;
  v4 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v5 + 8) + 16) + 1);
  v17 = 0;
  v6 = *(v4 + 16);
  if (a1(v6, "", &v17))
  {
    v7 = specialized static REDecoder.Error.getStatus(_:)(v6);
    v9 = v8;
    v11 = v10;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v12 = v7;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11 & 1;
    return swift_willThrow();
  }

  else
  {
    v14 = *(v3 + 88);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    result = v17;
    *(v3 + 88) = v16;
  }

  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)(unsigned int (*a1)(uint64_t, const char *, unsigned int *))
{
  v3 = v1;
  v18 = *MEMORY[0x1E69E9840];
  v5 = v1 + 16;
  v4 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v5 + 8) + 16) + 1);
  v17 = 0;
  v6 = *(v4 + 16);
  if (a1(v6, "", &v17))
  {
    v7 = specialized static REDecoder.Error.getStatus(_:)(v6);
    v9 = v8;
    v11 = v10;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v12 = v7;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11 & 1;
    return swift_willThrow();
  }

  else
  {
    v14 = *(v3 + 88);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    result = v17;
    *(v3 + 88) = v16;
  }

  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)(unsigned int (*a1)(uint64_t, const char *, void *))
{
  v3 = v1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = v1 + 16;
  v4 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v5 + 8) + 16) + 1);
  v17[0] = 0;
  v6 = *(v4 + 16);
  if (a1(v6, "", v17))
  {
    v7 = specialized static REDecoder.Error.getStatus(_:)(v6);
    v9 = v8;
    v11 = v10;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v12 = v7;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11 & 1;
    return swift_willThrow();
  }

  else
  {
    v14 = *(v3 + 88);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      __break(1u);
    }

    result = v17[0];
    *(v3 + 88) = v16;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error()
{
  result = lazy protocol witness table cache variable for type REDecoder.Error and conformance REDecoder.Error;
  if (!lazy protocol witness table cache variable for type REDecoder.Error and conformance REDecoder.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for REDecoder.Error, &type metadata for REDecoder.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type REDecoder.Error and conformance REDecoder.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey()
{
  result = lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnkeyedDC.IndexedCodingKey, &unk_1F40F44E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnkeyedDC.IndexedCodingKey, &unk_1F40F44E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnkeyedDC.IndexedCodingKey, &unk_1F40F44E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey);
  }

  return result;
}

uint64_t outlined assign with take of Terminatable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6578], MEMORY[0x1E69E6530], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6558], MEMORY[0x1E69E6530], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey()
{
  result = lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnkeyedEC.IndexedCodingKey, &unk_1F40F4468, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnkeyedEC.IndexedCodingKey, &unk_1F40F4468, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnkeyedEC.IndexedCodingKey, &unk_1F40F4468, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2();
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnkeyedEC.IndexedCodingKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnkeyedEC.IndexedCodingKey(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c62Foundation17ShaderCacheLoaderC12loadResource6forKey0A3Kit010__e13G0Cx_tYaKFAHyv10KcfU_yAH04g2K8H6VXEfU_AF15BuildParametersVTf1cn_nTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, _BYTE *, uint64_t))
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12[0] = *a1;
    v13 = v8;
    v14 = v5;
    v15 = v9;
    v16 = v10;

    v11 = v10;
    a3(&v17, v12, a2);
    if (v4)
    {

      __break(1u);
    }

    else
    {
    }
  }
}

uint64_t specialized AssetServiceScopedRegistry.instance(for:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 32);
  v6 = v5(v3, v4);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    type metadata accessor for __USDARReferenceProvidingPlugin();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E7CC8];
    *(v11 + 16) = MEMORY[0x1E69E7CC8];
    *(v11 + 24) = v12;
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v19;
    swift_endAccess();
    v5(v3, v4);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v6;
    v18[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v18[5] = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v18[3] = &block_descriptor_34;
    v16 = _Block_copy(v18);

    REAssetManagerAddCleanupCallback();
    _Block_release(v16);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11ShaderCacheCyAA14CustomMaterialV0eC10ParametersVGMd, &_s17RealityFoundation11ShaderCacheCyAA14CustomMaterialV0eC10ParametersVGMR);
    swift_allocObject();
    v11 = specialized ShaderCache.init(_:)(v19);
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v20;
    swift_endAccess();
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    (*(v14 + 32))(v13, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v6;
    v19[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v19[3] = &block_descriptor_99;
    v17 = _Block_copy(v19);

    REAssetManagerAddCleanupCallback();
    _Block_release(v17);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11ShaderCacheCy0A3Kit13UnlitMaterialV0fC10ParametersVGMd, &_s17RealityFoundation11ShaderCacheCy0A3Kit13UnlitMaterialV0fC10ParametersVGMR);
    swift_allocObject();
    v11 = specialized ShaderCache.init(_:)(v19);
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v20;
    swift_endAccess();
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    (*(v14 + 32))(v13, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v6;
    v19[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v19[3] = &block_descriptor_5;
    v17 = _Block_copy(v19);

    REAssetManagerAddCleanupCallback();
    _Block_release(v17);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11ShaderCacheCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMd, &_s17RealityFoundation11ShaderCacheCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMR);
    swift_allocObject();
    v11 = specialized ShaderCache.init(_:)(v19);
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v20;
    swift_endAccess();
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    (*(v14 + 32))(v13, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v6;
    v19[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v19[3] = &block_descriptor_71;
    v17 = _Block_copy(v19);

    REAssetManagerAddCleanupCallback();
    _Block_release(v17);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v19);
    type metadata accessor for SimpleMaterial.SimpleMaterialMapping();
    swift_allocObject();
    v11 = SimpleMaterial.SimpleMaterialMapping.init(_:)(v19);
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v20;
    swift_endAccess();
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    (*(v14 + 32))(v13, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v6;
    v19[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v19[3] = &block_descriptor_80;
    v17 = _Block_copy(v19);

    REAssetManagerAddCleanupCallback();
    _Block_release(v17);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v22);
    type metadata accessor for __ARReferenceProvider();
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation26ARReferenceProvidingPlugin_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation26ARReferenceProvidingPlugin_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1897FC0;
    if (one-time initialization token for instances != -1)
    {
      swift_once();
    }

    v13 = specialized AssetServiceScopedRegistry.instance(for:)(v22);

    *(v12 + 56) = type metadata accessor for __RealityFileARReferenceProvidingPlugin();
    *(v12 + 64) = &protocol witness table for __RealityFileARReferenceProvidingPlugin;
    *(v12 + 32) = v13;
    if (one-time initialization token for instances != -1)
    {
      swift_once();
    }

    v14 = specialized AssetServiceScopedRegistry.instance(for:)(v22);
    *(v12 + 96) = type metadata accessor for __USDARReferenceProvidingPlugin();
    *(v12 + 104) = &protocol witness table for __USDARReferenceProvidingPlugin;
    *(v12 + 72) = v14;
    __swift_destroy_boxed_opaque_existential_1(v22);
    *(v11 + 16) = v12;
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v23;
    swift_endAccess();
    v16 = a1[3];
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    (*(v17 + 32))(v16, v17);
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v6;
    v22[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v22[5] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 1107296256;
    v22[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v22[3] = &block_descriptor_43;
    v20 = _Block_copy(v22);

    REAssetManagerAddCleanupCallback();
    _Block_release(v20);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

void *specialized AssetServiceScopedRegistry.instance(for:)(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, &v20);
    type metadata accessor for __RealityFileARReferenceProvidingPlugin();
    v11 = swift_allocObject();
    if (one-time initialization token for schemePrefix != -1)
    {
      swift_once();
    }

    v12 = *(&static __RealityFileURLResolver.schemePrefix + 1);
    v11[7] = static __RealityFileURLResolver.schemePrefix;
    v11[8] = v12;
    v11[9] = MEMORY[0x1E69E7CC8];
    outlined init with take of ForceEffectBase(&v20, (v11 + 2));

    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v25;
    swift_endAccess();
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 32))(v14, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v6;
    v23 = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v24 = v17;
    *&v20 = MEMORY[0x1E69E9820];
    *(&v20 + 1) = 1107296256;
    v21 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v22 = &block_descriptor_52;
    v18 = _Block_copy(&v20);

    REAssetManagerAddCleanupCallback();
    _Block_release(v18);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

id CustomMaterial.Program.surfaceShader.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v7 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v7;
  *(a1 + 40) = v5;

  swift_unknownObjectRetain();

  return v7;
}

void CustomMaterial.Program.geometryModifier.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 104);
  outlined copy of CustomMaterial.GeometryModifier?(v2, v3, v4, v5, v6);
}

void CustomMaterial.Program.Descriptor.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1C68F4C10](*v0);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }
}

Swift::Int CustomMaterial.Program.Descriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomMaterial.Program.Descriptor()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2 & 1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CustomMaterial.Program.Descriptor()
{
  v1 = v0[1];
  MEMORY[0x1C68F4C10](*v0);
  if (v1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v1 & 1);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomMaterial.Program.Descriptor()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2 & 1);
  }

  return Hasher._finalize()();
}

uint64_t CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:)(a1, a2, a3);
}

uint64_t CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1, uint64_t a2, _WORD *a3)
{
  *(v4 + 800) = v3;
  *(v4 + 808) = *v3;
  *(v4 + 816) = *a1;
  *(v4 + 824) = *(a1 + 8);
  v5 = *(a1 + 32);
  *(v4 + 840) = *(a1 + 24);
  *(v4 + 848) = v5;
  *(v4 + 1032) = *(a1 + 40);
  v6 = *(a2 + 16);
  *(v4 + 856) = *a2;
  *(v4 + 872) = v6;
  *(v4 + 888) = *(a2 + 32);
  *(v4 + 1033) = *(a2 + 40);
  *(v4 + 1034) = *a3;
  return MEMORY[0x1EEE6DFA0](CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:), 0, 0);
}

uint64_t CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:)()
{
  v88 = v0;
  v1 = *(v0 + 1035);
  v2 = *(v0 + 1034);
  v3 = *(v0 + 1033);
  v4 = *(v0 + 888);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 848);
  v7 = *(v0 + 840);
  v8 = *(v0 + 800);
  v9 = *(v0 + 856);
  v10 = *(v0 + 872);
  v11 = *(v0 + 824);
  *(v8 + 16) = *(v0 + 816);
  *(v8 + 24) = v11;
  *(v8 + 40) = v7;
  *(v8 + 48) = v6;
  *(v8 + 56) = v5;
  *(v8 + 64) = v9;
  *(v8 + 80) = v10;
  *(v8 + 96) = v4;
  *(v8 + 104) = v3;
  *(v8 + 105) = v2;
  *(v8 + 106) = v1;
  v12 = 0x800020004uLL >> (16 * v2);
  v13 = *(v0 + 1035);
  if (v13 != 2)
  {
    if (v13)
    {
      LOWORD(v12) = v12 | 0x2001;
    }

    else
    {
      LOWORD(v12) = v12 | 1;
    }
  }

  v77 = v12;
  *(v0 + 1030) = v12;
  v14 = *(v0 + 888);
  v15 = *(v0 + 880);
  v16 = *(v0 + 872);
  v17 = *(v0 + 864);
  v18 = *(v0 + 856);
  v19 = *(v0 + 848);
  v20 = *(v0 + 840);
  v21 = *(v0 + 832);
  v22 = *(v0 + 824);
  v23 = *(v0 + 1033);
  v78 = *(v0 + 816);
  v79 = v22;
  v80 = v21;
  v81 = v20;
  v82 = v19;
  v83 = v5;
  v84 = v18;
  v85 = v17;
  v86.i64[0] = v16;
  v86.i64[1] = v15;
  v87.i64[0] = v14;
  v87.i8[8] = v23;
  v76 = v5;

  swift_unknownObjectRetain();
  v24 = v19;
  outlined copy of CustomMaterial.GeometryModifier?(v18, v17, v16, v15, v14);
  specialized static CustomMaterial.ensureFunctionsExist(surfaceShader:geometryModifier:)(&v78, &v84);
  v25 = *(v0 + 864);
  if (v25)
  {

    v26 = *(v0 + 856);
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  v28 = *(v0 + 1034);
  v29 = *(v0 + 824);
  v30 = *(v0 + 816);
  v84 = 0;
  v85 = 0xE000000000000000;

  MEMORY[0x1C68F3410](v26, v27);

  MEMORY[0x1C68F3410](95, 0xE100000000000000);
  MEMORY[0x1C68F3410](v30, v29);
  MEMORY[0x1C68F3410](95, 0xE100000000000000);
  v31 = 0xE500000000000000;
  v32 = 0x74696C6E75;
  if (v28 != 1)
  {
    v32 = 0x616F637261656C63;
    v31 = 0xE900000000000074;
  }

  if (v28)
  {
    v33 = v32;
  }

  else
  {
    v33 = 7629164;
  }

  if (v28)
  {
    v34 = v31;
  }

  else
  {
    v34 = 0xE300000000000000;
  }

  MEMORY[0x1C68F3410](v33, v34);

  v36 = v84;
  v35 = v85;
  if (v25)
  {
    v37 = *(v0 + 888);
    v38 = *(v0 + 880);
    v39 = *(v0 + 872);
    v40 = *(v0 + 864);
    v42 = *(v0 + 1033);
    v78 = *(v0 + 856);
    v41 = v78;
    v79 = v25;
    v80 = v39;
    v81 = v38;
    v82 = v37;
    v83 = v42 & 1;
    outlined copy of CustomMaterial.GeometryModifier?(v78, v40, v39, v38, v37);

    MEMORY[0x1C68F3410](0x6D6F65675FLL, 0xE500000000000000);
    static CustomMaterial.toCoreMaterialFunction(geometryModifier:libraryName:)(&v78, &v84);

    outlined consume of CustomMaterial.GeometryModifier?(v41, v40, v39, v38, v37);
    v43 = v35;
    v44 = v84;
    v45 = v85;
    v46 = v87;
    v47 = v86;
  }

  else
  {
    static CustomMaterial.createDefaultGeometryModifier()(&v84);
    v44 = v84;
    v45 = v85;
    v46 = v87;
    v47 = v86;
    v43 = v35;
  }

  v71 = v44;
  v73 = v45;
  *(v0 + 1036) = v44;
  *(v0 + 928) = v45;
  v74 = v46;
  v75 = v47;
  v72 = v46.i64[1];
  *(v0 + 896) = vextq_s8(v46, v46, 8uLL);
  *(v0 + 912) = vextq_s8(v47, v47, 8uLL);
  v70 = *(v0 + 888);
  v48 = *(v0 + 880);
  v49 = *(v0 + 872);
  v50 = *(v0 + 864);
  v51 = *(v0 + 856);
  v52 = *(v0 + 848);
  v53 = *(v0 + 840);
  v54 = *(v0 + 832);
  v55 = *(v0 + 824);
  v78 = *(v0 + 816);
  v79 = v55;
  v80 = v54;
  v81 = v53;
  v82 = v52;
  v83 = v76;
  v84 = v36;
  v85 = v43;
  MEMORY[0x1C68F3410](0x667275735FLL, 0xE500000000000000);
  static CustomMaterial.toCoreMaterialFunction(surfaceShader:libraryName:)(&v78, &v84);
  outlined consume of CustomMaterial.GeometryModifier?(v51, v50, v49, v48, v70);

  swift_unknownObjectRelease();

  v56 = v84;
  *(v0 + 1037) = v84;
  v58 = v85;
  v57 = v86.i64[0];
  *(v0 + 936) = v85;
  *(v0 + 944) = v57;
  v60 = v86.i64[1];
  v59 = v87.i64[0];
  *(v0 + 952) = v86.i64[1];
  *(v0 + 960) = v59;
  v61 = v87.i64[1];
  *(v0 + 968) = v87.i64[1];
  *(v0 + 1024) = 1;

  v62 = v61;

  v63 = v72;
  outlined consume of __MaterialResource.CoreMaterialFunction?(0, 0, 0, 0, 0, 0);
  outlined consume of __MaterialResource.CoreMaterialFunction?(0, 0, 0, 0, 0, 0);
  if (one-time initialization token for shaderCacheRegistry != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 1035);
  v65 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v65 + 120, v0 + 736);
  *(v0 + 976) = specialized AssetServiceScopedRegistry.instance(for:)((v0 + 736));
  __swift_destroy_boxed_opaque_existential_1((v0 + 736));
  *(v0 + 16) = 0;
  *(v0 + 18) = v77;
  *(v0 + 24) = 0;
  v66 = *(v0 + 1024);
  *(v0 + 1038) = v66;
  *(v0 + 32) = v66;
  *(v0 + 33) = v64;
  *(v0 + 34) = 1;
  *(v0 + 40) = v71;
  *(v0 + 48) = v73;
  *(v0 + 72) = v74;
  *(v0 + 56) = v75;
  *(v0 + 88) = v56;
  *(v0 + 96) = v58;
  *(v0 + 104) = v57;
  *(v0 + 112) = v60;
  *(v0 + 120) = v59;
  *(v0 + 128) = v62;

  v67 = specialized SharedCacheStorage.getResource(forKey:)((v0 + 16));

  if (v67)
  {

    *(v0 + 1000) = v67;

    return MEMORY[0x1EEE6DFA0](CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:), 0, 0);
  }

  else
  {
    v68 = swift_task_alloc();
    *(v0 + 984) = v68;
    *v68 = v0;
    v68[1] = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);

    return specialized ShaderCacheLoader.loadResource(forKey:)(v0 + 16);
  }
}

{
  *(v0[100] + 112) = v0[125];

  v1 = swift_task_alloc();
  v0[126] = v1;
  *v1 = v0;
  v1[1] = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);

  return specialized RequestLoadable.awaitForResourceSharing()();
}

{
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v2 = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);
  }

  else
  {
    v2 = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v15 = *(v0 + 1038);
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v17 = *(v0 + 936);
  v16 = *(v0 + 1037);
  v14 = *(v0 + 1036);
  v3 = *(v0 + 928);
  v4 = *(v0 + 920);
  v5 = *(v0 + 912);
  v6 = *(v0 + 904);
  v7 = *(v0 + 896);
  v8 = *(v0 + 1030);
  v9 = *(v0 + 1035);
  v18 = *(v0 + 944);

  *(v0 + 136) = 0;
  *(v0 + 138) = v8;
  *(v0 + 144) = 0;
  *(v0 + 152) = v15;
  *(v0 + 153) = v9;
  *(v0 + 154) = 1;
  *(v0 + 155) = *(v0 + 1025);
  *(v0 + 159) = *(v0 + 1029);
  *(v0 + 160) = v14;
  *(v0 + 168) = v3;
  *(v0 + 176) = v4;
  *(v0 + 184) = v5;
  *(v0 + 192) = v6;
  *(v0 + 200) = v7;
  *(v0 + 208) = v16;
  *(v0 + 216) = v17;
  *(v0 + 224) = v18;
  *(v0 + 240) = v2;
  *(v0 + 248) = v1;
  outlined destroy of CustomMaterial.CustomShaderParameters(v0 + 136);
  v10 = *(v0 + 800);
  v11 = *(v10 + 48);

  swift_unknownObjectRelease();

  outlined consume of CustomMaterial.GeometryModifier?(*(v10 + 64), *(v10 + 72), *(v10 + 80), *(v10 + 88), *(v10 + 96));
  swift_deallocPartialClassInstance();
  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v24 = *(v0 + 952);
  v3 = *(v0 + 944);
  v4 = *(v0 + 1037);
  v28 = v4;
  v29 = *(v0 + 936);
  v5 = *(v0 + 1036);
  v27 = v5;
  v26 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 912);
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);
  v10 = *(v0 + 1035);
  v31 = v10;
  v32 = *(v0 + 1030);
  v11 = *(v0 + 800);
  *(v0 + 496) = 0;
  *(v0 + 498) = v32;
  *(v0 + 504) = 0;
  v30 = *(v0 + 1024);
  *(v0 + 512) = v30;
  *(v0 + 513) = v10;
  *(v0 + 514) = 1;
  *(v0 + 519) = *(v0 + 1029);
  *(v0 + 515) = *(v0 + 1025);
  *(v0 + 520) = v5;
  *(v0 + 528) = v26;
  *(v0 + 536) = v6;
  *(v0 + 544) = v7;
  *(v0 + 552) = v8;
  *(v0 + 560) = v9;
  v12 = v9;
  v25 = v9;
  *(v0 + 568) = v4;
  *(v0 + 576) = v29;
  *(v0 + 584) = v3;
  *(v0 + 592) = v24;
  *(v0 + 600) = v2;
  *(v0 + 608) = v1;
  v14 = *(v0 + 528);
  v13 = *(v0 + 544);
  v15 = *(v0 + 512);
  *(v11 + 120) = *(v0 + 496);
  *(v11 + 136) = v15;
  *(v11 + 152) = v14;
  *(v11 + 168) = v13;
  v16 = *(v0 + 560);
  v17 = *(v0 + 576);
  v18 = *(v0 + 592);
  *(v11 + 232) = v1;
  *(v11 + 216) = v18;
  *(v11 + 200) = v17;
  *(v11 + 184) = v16;

  v19 = v1;

  v20 = v12;
  outlined init with copy of CustomMaterial.CustomShaderParameters(v0 + 496, v0 + 616);

  RERelease();
  RERelease();

  *(v0 + 376) = 0;
  *(v0 + 378) = v32;
  *(v0 + 384) = 0;
  *(v0 + 392) = v30;
  *(v0 + 393) = v31;
  *(v0 + 394) = 1;
  *(v0 + 395) = *(v0 + 1025);
  *(v0 + 399) = *(v0 + 1029);
  *(v0 + 400) = v27;
  *(v0 + 408) = v26;
  *(v0 + 416) = v6;
  *(v0 + 424) = v7;
  *(v0 + 432) = v8;
  *(v0 + 440) = v25;
  *(v0 + 448) = v28;
  *(v0 + 456) = v29;
  *(v0 + 464) = v3;
  *(v0 + 472) = v24;
  *(v0 + 480) = v2;
  *(v0 + 488) = v1;
  outlined destroy of CustomMaterial.CustomShaderParameters(v0 + 376);
  v21 = *(v0 + 8);
  v22 = *(v0 + 800);

  return v21(v22);
}

{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v17 = *(v0 + 936);
  v16 = *(v0 + 1037);
  v15 = *(v0 + 1036);
  v3 = *(v0 + 920);
  v13 = *(v0 + 912);
  v14 = *(v0 + 928);
  v4 = *(v0 + 904);
  v5 = *(v0 + 896);
  v6 = *(v0 + 1030);
  v12 = *(v0 + 944);
  v7 = *(v0 + 1035);

  *(v0 + 256) = 0;
  *(v0 + 258) = v6;
  *(v0 + 264) = 0;
  *(v0 + 272) = *(v0 + 1024);
  *(v0 + 273) = v7;
  *(v0 + 274) = 1;
  *(v0 + 275) = *(v0 + 1025);
  *(v0 + 279) = *(v0 + 1029);
  *(v0 + 280) = v15;
  *(v0 + 288) = v14;
  *(v0 + 296) = v3;
  *(v0 + 304) = v13;
  *(v0 + 312) = v4;
  *(v0 + 320) = v5;
  *(v0 + 328) = v16;
  *(v0 + 336) = v17;
  *(v0 + 344) = v12;
  *(v0 + 360) = v2;
  *(v0 + 368) = v1;
  outlined destroy of CustomMaterial.CustomShaderParameters(v0 + 256);
  v8 = *(v0 + 800);
  v9 = *(v8 + 48);

  swift_unknownObjectRelease();

  outlined consume of CustomMaterial.GeometryModifier?(*(v8 + 64), *(v8 + 72), *(v8 + 80), *(v8 + 88), *(v8 + 96));

  swift_deallocPartialClassInstance();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 992) = v1;

  if (v1)
  {
    v5 = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);
  }

  else
  {

    *(v4 + 1000) = a1;
    v5 = CustomMaterial.Program.init(surfaceShader:geometryModifier:descriptor:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void CustomMaterial.Program.hash(into:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  Hasher._combine(_:)(*(v0 + 56));
  v4 = &property descriptor for UnlitMaterial.readsDepth;
  MEMORY[0x1C68F4C10]([v2 hash]);
  if (v1)
  {
    v5 = OpaquePointer.hashValue.getter();
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1C68F4C10]([v3 hash]);
  v6 = *(v0 + 72);
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11 & 1);

    swift_unknownObjectRetain();
    v12 = v10;
    MEMORY[0x1C68F4C10]([v8 hash]);
    if (v9)
    {
      v13 = OpaquePointer.hashValue.getter();
      Hasher._combine(_:)(1u);
      v14 = v13;
      v4 = &property descriptor for UnlitMaterial.readsDepth;
      MEMORY[0x1C68F4C10](v14);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    MEMORY[0x1C68F4C10]([v12 v4[491]]);
    outlined consume of CustomMaterial.GeometryModifier?(v7, v6, v8, v9, v10);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v15 = *(v0 + 106);
  MEMORY[0x1C68F4C10](*(v0 + 105));
  if (v15 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v15 & 1);
  }
}

uint64_t CustomMaterial.Program.init(resource:shaderParameters:blending:)(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a2[5];
  v6 = a2[3];
  v63 = a2[4];
  v64 = v5;
  v7 = a2[5];
  v65 = a2[6];
  v8 = a2[1];
  v59 = *a2;
  v60 = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v61 = a2[2];
  v12 = v61;
  v62 = v9;
  *(v3 + 184) = v63;
  *(v3 + 200) = v7;
  *(v3 + 216) = a2[6];
  *(v3 + 120) = v11;
  *(v3 + 136) = v10;
  *(v3 + 152) = v12;
  v66 = *(a2 + 14);
  v13 = a3[1];
  v46 = *a3;
  v14 = *(a3 + 20);
  v15 = *(a3 + 4);
  *(v3 + 112) = a1;
  *(v3 + 232) = *(a2 + 14);
  *(v3 + 168) = v6;
  if ((v13 - 1) >= 2)
  {
    v16 = v14 & 1;
  }

  else
  {
    v16 = 2;
  }

  if ((BYTE2(v59) & 4) != 0)
  {
    LOBYTE(v17) = 0;
  }

  else if ((BYTE2(v59) & 2) != 0)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    v17 = (WORD1(v59) >> 2) & 2;
  }

  if (BYTE2(v59))
  {
    v16 = (WORD1(v59) & 0x2000) != 0;
  }

  *(v3 + 105) = v17;
  *(v3 + 106) = v16;
  v18 = *(&v64 + 1);
  if (!*(&v64 + 1))
  {

    outlined init with copy of CustomMaterial.CustomShaderParameters(&v59, v49);
    goto LABEL_18;
  }

  v20 = *(&v65 + 1);
  v19 = v66;
  v21 = v65;
  v23 = *(&v63 + 1);
  v22 = v64;
  v47[0] = BYTE8(v63);
  *&v47[8] = v64;
  *&v47[24] = v65;
  v48 = v66;

  outlined init with copy of CustomMaterial.CustomShaderParameters(&v59, v49);
  outlined copy of __MaterialResource.CoreMaterialFunction?(v23, v22, v18, v21, v20, v19);
  __MaterialResource.CoreMaterialFunction.getSurfaceShader()(&v53);

  v24 = v54;
  if (!v54)
  {
LABEL_18:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v25 = v15 | (v14 << 32);
  v26 = v53;
  v27 = v55;
  v28 = v56;
  v29 = v57;
  v30 = v58;
  outlined consume of CustomMaterial.Blending?(v46, v13, v25);
  *(v4 + 16) = v26;
  *(v4 + 24) = v24;
  *(v4 + 32) = v27;
  *(v4 + 40) = v28;
  *(v4 + 48) = v29;
  *(v4 + 56) = v30 & 1;
  v31 = *(&v61 + 1);
  if (*(&v61 + 1))
  {
    v32 = *(&v62 + 1);
    v33 = v63;
    v34 = v26;
    v44 = v26;
    v45 = v29;
    v35 = v62;
    v36 = v29;
    v38 = *(&v60 + 1);
    v37 = v61;
    v49[0] = BYTE8(v60);
    v50 = v61;
    v51 = v62;
    v52 = v63;
    outlined copy of CustomMaterial.GeometryModifier?(v34, v24, v27, v28, v36);
    outlined copy of __MaterialResource.CoreMaterialFunction?(v38, v37, v31, v35, v32, v33);
    __MaterialResource.CoreMaterialFunction.getGeometryModifier()(v47);
    outlined destroy of CustomMaterial.CustomShaderParameters(&v59);
    outlined consume of CustomMaterial.GeometryModifier?(v44, v24, v27, v28, v45);

    v39 = *v47;
    v40 = *&v47[16];
    v41 = *&v47[32];
    v42 = v48;
  }

  else
  {

    outlined destroy of CustomMaterial.CustomShaderParameters(&v59);
    v41 = 0;
    v42 = 0;
    v39 = 0uLL;
    v40 = 0uLL;
  }

  *(v4 + 64) = v39;
  *(v4 + 80) = v40;
  *(v4 + 96) = v41;
  *(v4 + 104) = v42;
  return v4;
}

uint64_t CustomMaterial.Program.deinit()
{
  swift_unknownObjectRelease();

  outlined consume of CustomMaterial.GeometryModifier?(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  v1 = *(v0 + 200);
  v5[4] = *(v0 + 184);
  v5[5] = v1;
  v5[6] = *(v0 + 216);
  v6 = *(v0 + 232);
  v2 = *(v0 + 136);
  v5[0] = *(v0 + 120);
  v5[1] = v2;
  v3 = *(v0 + 168);
  v5[2] = *(v0 + 152);
  v5[3] = v3;
  outlined destroy of CustomMaterial.CustomShaderParameters(v5);
  return v0;
}

uint64_t CustomMaterial.Program.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  outlined consume of CustomMaterial.GeometryModifier?(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  v1 = *(v0 + 200);
  v5[4] = *(v0 + 184);
  v5[5] = v1;
  v5[6] = *(v0 + 216);
  v6 = *(v0 + 232);
  v2 = *(v0 + 136);
  v5[0] = *(v0 + 120);
  v5[1] = v2;
  v3 = *(v0 + 168);
  v5[2] = *(v0 + 152);
  v5[3] = v3;
  outlined destroy of CustomMaterial.CustomShaderParameters(v5);
  return swift_deallocClassInstance();
}

Swift::Int CustomMaterial.Program.hashValue.getter()
{
  Hasher.init(_seed:)();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  Hasher._combine(_:)(*(v0 + 56));
  v4 = &property descriptor for UnlitMaterial.readsDepth;
  MEMORY[0x1C68F4C10]([v2 hash]);
  if (v1)
  {
    v5 = OpaquePointer.hashValue.getter();
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1C68F4C10]([v3 hash]);
  v6 = *(v0 + 72);
  if (v6)
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 104);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11 & 1);

    swift_unknownObjectRetain();
    v12 = v10;
    MEMORY[0x1C68F4C10]([v8 hash]);
    if (v9)
    {
      v13 = OpaquePointer.hashValue.getter();
      Hasher._combine(_:)(1u);
      v14 = v13;
      v4 = &property descriptor for UnlitMaterial.readsDepth;
      MEMORY[0x1C68F4C10](v14);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    MEMORY[0x1C68F4C10]([v12 v4[491]]);
    outlined consume of CustomMaterial.GeometryModifier?(v7, v6, v8, v9, v10);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v15 = *(v0 + 106);
  MEMORY[0x1C68F4C10](*(v0 + 105));
  if (v15 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v15 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomMaterial.Program()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  CustomMaterial.SurfaceShader.hash(into:)(v6);
  if (*(v1 + 72))
  {
    v2 = *(v1 + 96);
    Hasher._combine(_:)(1u);

    swift_unknownObjectRetain();
    v3 = v2;
    CustomMaterial.GeometryModifier.hash(into:)(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v1 + 106);
  MEMORY[0x1C68F4C10](*(v1 + 105));
  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v4 & 1);
  }

  return Hasher._finalize()();
}

uint64_t CustomMaterial.init(program:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 32) = REMaterialParameterBlockValueCreate();
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = xmmword_1C18A4F00;
  *(a2 + 76) = 0;
  *(a2 + 72) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 304) = 0;
  *(a2 + 312) = 3;
  *(a2 + 344) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 335) = 0;
  *(a2 + 352) = 257;
  *a2 = *(a1 + 112);
  v4 = *(a1 + 184);
  v6 = *(a1 + 216);
  v29 = *(a1 + 200);
  v5 = v29;
  v30 = v6;
  v31 = *(a1 + 232);
  v7 = v31;
  v24 = *(a1 + 120);
  v8 = v24;
  v10 = *(a1 + 152);
  v25 = *(a1 + 136);
  v9 = v25;
  v26 = v10;
  v27 = *(a1 + 168);
  v11 = v27;
  v28 = v4;
  *(a2 + 160) = 0u;
  *(a2 + 176) = v8;
  *(a2 + 192) = v9;
  *(a2 + 208) = v10;
  *(a2 + 224) = v11;
  *(a2 + 240) = v4;
  *(a2 + 256) = v5;
  *(a2 + 272) = v6;
  *(a2 + 288) = v7;
  *(a2 + 296) = 0;
  if (*(a1 + 106) == 2)
  {

    outlined init with copy of CustomMaterial.CustomShaderParameters(&v24, &v20);
    v12 = 0;
    v13 = 0;
    v14 = 1;
  }

  else
  {

    outlined init with copy of CustomMaterial.CustomShaderParameters(&v24, &v20);
    MaterialParameterTypes.BlendMode.getCustomMaterialBlending()(&v20);
    v12 = v20;
    v14 = v21;
    v13 = v22 | (v23 << 32);
  }

  outlined consume of CustomMaterial.Blending?(0, 2, 0);
  *(a2 + 56) = v12;
  *(a2 + 64) = v14;
  *(a2 + 76) = BYTE4(v13);
  *(a2 + 72) = v13;
  v15 = REDirectParameterResourcesCreate();
  *(a2 + 80) = xmmword_1C18A2C50;
  if (v14 == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v14 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = v14;
  }

  if (v14 == 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = v13;
  }

  *(a2 + 96) = v15;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v20 = v16;
  v21 = v17;
  v23 = BYTE4(v18);
  v22 = v18;
  outlined copy of CustomMaterial.Blending?(v12, v14, v13);
  CustomMaterial.process(blending:doShaderUpdate:)(&v20, 0);

  return outlined consume of CustomMaterial.Blending(v20, v21);
}

uint64_t CustomMaterial.program.getter()
{
  v1 = *v0;
  v2 = *(v0 + 256);
  v16[4] = *(v0 + 240);
  v16[5] = v2;
  v16[6] = *(v0 + 272);
  v17 = *(v0 + 288);
  v3 = *(v0 + 192);
  v16[0] = *(v0 + 176);
  v16[1] = v3;
  v4 = *(v0 + 224);
  v16[2] = *(v0 + 208);
  v16[3] = v4;
  v6 = *(v0 + 64);
  v7 = *(v0 + 76);
  v8 = *(v0 + 72);
  v9 = v8 | (v7 << 32);
  v13[0] = *(v0 + 56);
  v5 = v13[0];
  v13[1] = v6;
  v15 = v7;
  v14 = v8;
  type metadata accessor for CustomMaterial.Program();
  v10 = swift_allocObject();

  outlined init with copy of CustomMaterial.CustomShaderParameters(v16, &v12);
  outlined copy of CustomMaterial.Blending?(v5, v6, v9);
  CustomMaterial.Program.init(resource:shaderParameters:blending:)(v1, (v0 + 176), v13);
  return v10;
}

uint64_t key path getter for CustomMaterial.program : CustomMaterial@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 256);
  v19[4] = *(a1 + 240);
  v19[5] = v5;
  v19[6] = *(a1 + 272);
  v20 = *(a1 + 288);
  v6 = *(a1 + 192);
  v19[0] = *(a1 + 176);
  v19[1] = v6;
  v7 = *(a1 + 224);
  v19[2] = *(a1 + 208);
  v19[3] = v7;
  v9 = *(a1 + 64);
  v10 = *(a1 + 76);
  v11 = *(a1 + 72);
  v12 = v11 | (v10 << 32);
  v16[0] = *(a1 + 56);
  v8 = v16[0];
  v16[1] = v9;
  v18 = v10;
  v17 = v11;
  type metadata accessor for CustomMaterial.Program();
  v13 = swift_allocObject();

  outlined init with copy of CustomMaterial.CustomShaderParameters(v19, &v15);
  outlined copy of CustomMaterial.Blending?(v8, v9, v12);
  result = CustomMaterial.Program.init(resource:shaderParameters:blending:)(v4, (a1 + 176), v16);
  *a2 = v13;
  return result;
}

uint64_t CustomMaterial.program.setter(uint64_t a1)
{
  v3 = *(a1 + 112);

  *v1 = v3;
  v4 = *(a1 + 200);
  v20[4] = *(a1 + 184);
  v20[5] = v4;
  v20[6] = *(a1 + 216);
  v21 = *(a1 + 232);
  v5 = *(a1 + 136);
  v20[0] = *(a1 + 120);
  v20[1] = v5;
  v6 = *(a1 + 168);
  v20[2] = *(a1 + 152);
  v20[3] = v6;
  v7 = *(v1 + 176);
  v8 = *(v1 + 192);
  v9 = *(v1 + 224);
  v22[2] = *(v1 + 208);
  v22[3] = v9;
  v22[0] = v7;
  v22[1] = v8;
  v10 = *(v1 + 240);
  v11 = *(v1 + 256);
  v12 = *(v1 + 272);
  v23 = *(v1 + 288);
  v22[5] = v11;
  v22[6] = v12;
  v22[4] = v10;
  memmove((v1 + 176), (a1 + 120), 0x78uLL);
  outlined init with copy of CustomMaterial.CustomShaderParameters(v20, &v17);
  outlined destroy of CustomMaterial.CustomShaderParameters(v22);
  v13 = *(a1 + 106);
  if (v13 == 2)
  {
    outlined consume of CustomMaterial.Blending?(*(v1 + 56), *(v1 + 64), *(v1 + 72) | (*(v1 + 76) << 32));
    *(v1 + 56) = xmmword_1C18A4F10;
    *(v1 + 76) = 0;
    *(v1 + 72) = 0;
    outlined copy of CustomMaterial.Blending(0, 1);
    v14 = xmmword_1C18A4F10;
    v15 = 0;
  }

  else
  {
    outlined consume of CustomMaterial.Blending?(*(v1 + 56), *(v1 + 64), *(v1 + 72) | (*(v1 + 76) << 32));
    *(v1 + 56) = *zmmword_1C1887630;
    if (v13)
    {
      *(v1 + 72) = 0;
      *(v1 + 76) = 1;
      v15 = 0x100000000;
      outlined copy of CustomMaterial.Blending(1065353216, 0);
    }

    else
    {
      *(v1 + 76) = 0;
      *(v1 + 72) = 0;
      outlined copy of CustomMaterial.Blending(1065353216, 0);
      v15 = 0;
    }

    v14 = *zmmword_1C1887630;
  }

  v17 = v14;
  v18 = v15;
  v19 = BYTE4(v15);
  CustomMaterial.process(blending:doShaderUpdate:)(&v17, 0);

  return outlined consume of CustomMaterial.Blending(v17, *(&v17 + 1));
}

void (*CustomMaterial.program.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 248) = v1;
  v5 = *v1;
  v6 = *(v1 + 176);
  v7 = *(v1 + 192);
  v8 = *(v1 + 224);
  *(v3 + 32) = *(v1 + 208);
  *(v3 + 48) = v8;
  *v3 = v6;
  *(v3 + 16) = v7;
  v9 = *(v1 + 240);
  v10 = *(v1 + 256);
  v11 = *(v1 + 272);
  *(v3 + 112) = *(v1 + 288);
  *(v3 + 80) = v10;
  *(v3 + 96) = v11;
  *(v3 + 64) = v9;
  v12 = *(v1 + 256);
  v25[4] = *(v1 + 240);
  v25[5] = v12;
  v25[6] = *(v1 + 272);
  v26 = *(v1 + 288);
  v13 = *(v1 + 192);
  v25[0] = *(v1 + 176);
  v25[1] = v13;
  v14 = *(v1 + 224);
  v25[2] = *(v1 + 208);
  v25[3] = v14;
  v15 = *(v1 + 56);
  v16 = *(v1 + 64);
  v17 = *(v1 + 76);
  v18 = *(v1 + 72);
  v19 = v18 | (v17 << 32);
  v22[0] = v15;
  v22[1] = v16;
  v24 = v17;
  v23 = v18;
  type metadata accessor for CustomMaterial.Program();
  v20 = swift_allocObject();

  outlined init with copy of CustomMaterial.CustomShaderParameters(v4, v4 + 120);
  outlined copy of CustomMaterial.Blending?(v15, v16, v19);
  CustomMaterial.Program.init(resource:shaderParameters:blending:)(v5, v25, v22);
  *(v4 + 240) = v20;
  return CustomMaterial.program.modify;
}

void CustomMaterial.program.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 240);
  if (a2)
  {

    CustomMaterial.program.setter(v4);
  }

  else
  {
    CustomMaterial.program.setter(v3);
  }

  free(v2);
}

uint64_t specialized SharedCacheStorage.getResource(forKey:)(__int128 *a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16))
  {

    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock(v3 + 4);
  return v7;
}

uint64_t specialized SharedCacheStorage.addResource(value:forKey:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    swift_beginAccess();
    outlined init with copy of CustomMaterial.CustomShaderParameters(a2, v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    outlined destroy of CustomMaterial.CustomShaderParameters(a2);
    *(v3 + 16) = v12[0];
    swift_endAccess();

    goto LABEL_6;
  }

  a1 = *(*(v7 + 56) + 8 * v8);

LABEL_6:
  os_unfair_lock_unlock(v6 + 4);
  return a1;
}

uint64_t specialized SharedCacheStorage.addResource(value:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 0xFFFFFFFF0001), (v9 & 1) != 0))
  {
    a1 = *(*(v7 + 56) + 8 * v8);
  }

  else
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2 & 0xFFFFFFFF0001, isUniquelyReferenced_nonNull_native);
    *(v3 + 16) = v12;
    swift_endAccess();
  }

  os_unfair_lock_unlock(v6 + 4);
  return a1;
}

uint64_t specialized SharedCacheStorage.addResource(value:forKey:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = *(v4 + 24);
  os_unfair_lock_lock(v10 + 4);
  swift_beginAccess();
  v11 = *(v4 + 16);
  if (!*(v11 + 16))
  {
    v12 = a2 & 0xFFFF0001;
    goto LABEL_5;
  }

  v12 = a2 & 0xFFFF0001;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(v12, a3, a4 & 0xFFFF01);
  if ((v14 & 1) == 0)
  {
LABEL_5:
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v12, a3, a4 & 0xFFFF01, isUniquelyReferenced_nonNull_native);
    *(v5 + 16) = v17;
    swift_endAccess();
    goto LABEL_6;
  }

  a1 = *(*(v11 + 56) + 8 * v13);
LABEL_6:

  os_unfair_lock_unlock(v10 + 4);
  return a1;
}

uint64_t specialized ShaderCacheLoader.loadResource(forKey:)(uint64_t a1)
{
  v2[61] = a1;
  v2[62] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ShaderCacheLoader.loadResource(forKey:), v1, 0);
}

{
  v2[16] = a1;
  v2[17] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ShaderCacheLoader.loadResource(forKey:), v1, 0);
}

uint64_t specialized ShaderCacheLoader.loadResource(forKey:)()
{
  v1 = v0[62];
  swift_beginAccess();
  v2 = *(v1 + 160);
  if (*(v2 + 16))
  {
    v3 = v0[61];

    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      v0[64] = v6;

      v7 = swift_task_alloc();
      v0[65] = v7;
      v8 = type metadata accessor for __MaterialResource();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v7 = v0;
      v7[1] = specialized ShaderCacheLoader.loadResource(forKey:);
      v10 = MEMORY[0x1E69E7288];
      v11 = v0 + 60;
      v12 = v6;
      v13 = v8;
      goto LABEL_6;
    }
  }

  v15 = v0[62];
  v14 = v0[63];
  v16 = v0[61];
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = lazy protocol witness table accessor for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>(&lazy protocol witness table cache variable for type ShaderCacheLoader<CustomMaterial.CustomShaderParameters> and conformance ShaderCacheLoader<A>, &_s17RealityFoundation17ShaderCacheLoaderCyAA14CustomMaterialV0fC10ParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCyAA14CustomMaterialV0fC10ParametersVGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v18;
  v20 = *(v16 + 48);
  v22 = *v16;
  v21 = *(v16 + 16);
  *(v19 + 64) = *(v16 + 32);
  *(v19 + 80) = v20;
  *(v19 + 32) = v22;
  *(v19 + 48) = v21;
  v23 = *(v16 + 64);
  v24 = *(v16 + 96);
  v25 = *(v16 + 112);
  *(v19 + 112) = *(v16 + 80);
  *(v19 + 128) = v24;
  *(v19 + 96) = v23;
  *(v19 + 144) = v25;
  *(v19 + 152) = v15;
  swift_retain_n();
  outlined init with copy of CustomMaterial.CustomShaderParameters(v16, (v0 + 2));
  v26 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v14, &async function pointer to partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v19);
  v0[67] = v26;
  swift_beginAccess();
  outlined init with copy of CustomMaterial.CustomShaderParameters(v16, (v0 + 17));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v1 + 160);
  *(v1 + 160) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v16, isUniquelyReferenced_nonNull_native);
  outlined destroy of CustomMaterial.CustomShaderParameters(v16);
  *(v1 + 160) = v31;
  swift_endAccess();
  v28 = swift_task_alloc();
  v0[68] = v28;
  v29 = type metadata accessor for __MaterialResource();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v0[69] = v9;
  *v28 = v0;
  v28[1] = specialized ShaderCacheLoader.loadResource(forKey:);
  v10 = MEMORY[0x1E69E7288];
  v11 = v0 + 58;
  v12 = v26;
  v13 = v29;
LABEL_6:

  return MEMORY[0x1EEE6DA10](v11, v12, v13, v9, v10);
}

{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 496);
  if (v0)
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 560) = v0;

  v3 = *(v2 + 496);
  if (v0)
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 480);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[61];
  v2 = v0[58];
  swift_beginAccess();
  outlined init with copy of CustomMaterial.CustomShaderParameters(v1, (v0 + 32));
  specialized Dictionary.subscript.setter(0, v1);
  swift_endAccess();

  v3 = v0[1];

  return v3(v2);
}

{
  v1 = v0[70];
  _StringGuts.grow(_:)(119);
  v0[56] = 0;
  v0[57] = 0xE000000000000000;
  MEMORY[0x1C68F3410](0xD00000000000002CLL, 0x80000001C18E17B0);
  v0[59] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0xD000000000000049, 0x80000001C18E17E0);
  v2 = v0[56];
  v3 = v0[57];
  lazy protocol witness table accessor for type ShaderCacheError and conformance ShaderCacheError();
  swift_allocError();
  *v4 = v2;
  v4[1] = v3;
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 136);
  swift_beginAccess();
  v2 = *(v1 + 160);
  v3 = *(v0 + 212);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 208) & 0xFFFF0001;
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4, *(v0 + 128), v3 & 0xFFFF01);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);
      *(v0 + 152) = v7;

      v8 = swift_task_alloc();
      *(v0 + 160) = v8;
      v9 = type metadata accessor for __MaterialResource();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      *v8 = v0;
      v8[1] = specialized ShaderCacheLoader.loadResource(forKey:);
      v11 = MEMORY[0x1E69E7288];
      v12 = v0 + 120;
      v13 = v7;
      v14 = v9;
      goto LABEL_7;
    }

    v16 = v3 & 0xFFFF00;
    v15 = *(v0 + 208);
    v3 = *(v0 + 212);
  }

  else
  {
    v15 = *(v0 + 208);
    v4 = v15 & 0xFFFF0001;
    v16 = v3 & 0xFFFF00;
  }

  v33 = v16;
  v34 = v4;
  *(v0 + 216) = v16;
  *(v0 + 220) = v4;
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  v31 = v3 >> 8;
  v32 = HIWORD(v3);
  v19 = HIWORD(v15);
  v20 = *(v0 + 128);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = v15 & 1;
  v23 = v3 & 1;
  v35 = v3 & 1;
  v24 = lazy protocol witness table accessor for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>(&lazy protocol witness table cache variable for type ShaderCacheLoader<PhysicallyBasedMaterial.PBRShaderParameters> and conformance ShaderCacheLoader<A>, &_s17RealityFoundation17ShaderCacheLoaderCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = v18;
  *(v25 + 24) = v24;
  *(v25 + 32) = v22;
  *(v25 + 34) = v19;
  *(v25 + 40) = v20;
  *(v25 + 48) = v35;
  *(v25 + 49) = v31;
  *(v25 + 50) = v32;
  *(v25 + 56) = v18;
  swift_retain_n();
  v26 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v17, &async function pointer to partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v25);
  *(v0 + 176) = v26;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v1 + 160);
  *(v1 + 160) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v34, v20, v33 | v23, isUniquelyReferenced_nonNull_native);
  *(v1 + 160) = v36;
  swift_endAccess();
  v28 = swift_task_alloc();
  *(v0 + 184) = v28;
  v29 = type metadata accessor for __MaterialResource();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *(v0 + 192) = v10;
  *v28 = v0;
  v28[1] = specialized ShaderCacheLoader.loadResource(forKey:);
  v11 = MEMORY[0x1E69E7288];
  v12 = v0 + 104;
  v13 = v26;
  v14 = v29;
LABEL_7:

  return MEMORY[0x1EEE6DA10](v12, v13, v14, v10, v11);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{

  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 220);
  v3 = *(v0 + 212);
  v4 = *(v0 + 128);
  v5 = *(v0 + 104);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v2, v4, v1 | v3 & 1);
  swift_endAccess();

  v6 = *(v0 + 8);

  return v6(v5);
}

{
  v1 = v0[25];
  _StringGuts.grow(_:)(119);
  v0[11] = 0;
  v0[12] = 0xE000000000000000;
  MEMORY[0x1C68F3410](0xD00000000000002CLL, 0x80000001C18E17B0);
  v0[14] = v1;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0xD000000000000049, 0x80000001C18E17E0);
  v2 = v0[11];
  v3 = v0[12];
  lazy protocol witness table accessor for type ShaderCacheError and conformance ShaderCacheError();
  swift_allocError();
  *v4 = v2;
  v4[1] = v3;
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[16];
  v2 = v0[17];
  swift_beginAccess();
  v3 = *(v2 + 160);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v1 & 0xFFFFFFFF0001), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    v0[19] = v6;

    v7 = swift_task_alloc();
    v0[20] = v7;
    v8 = type metadata accessor for __MaterialResource();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v7 = v0;
    v7[1] = specialized ShaderCacheLoader.loadResource(forKey:);
    v10 = MEMORY[0x1E69E7288];
    v11 = v0 + 15;
    v12 = v6;
  }

  else
  {
    v27 = v1;
    v14 = v0[16];
    v13 = v0[17];
    v15 = v14 >> 40;
    v16 = v0[18];
    v17 = HIDWORD(v14);
    v18 = v14 >> 16;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    v20 = v14 & 1;
    v21 = lazy protocol witness table accessor for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>(&lazy protocol witness table cache variable for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>, &_s17RealityFoundation17ShaderCacheLoaderCy0A3Kit13UnlitMaterialV0gC10ParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCy0A3Kit13UnlitMaterialV0gC10ParametersVGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = v13;
    *(v22 + 24) = v21;
    *(v22 + 32) = v20;
    *(v22 + 34) = v18;
    *(v22 + 36) = v17;
    *(v22 + 37) = v15;
    *(v22 + 40) = v13;
    swift_retain_n();
    v23 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC10RealityKit18__MaterialResourceC_Tt2g5(0, 0, v16, &async function pointer to partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v22);
    v0[22] = v23;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v2 + 160);
    *(v2 + 160) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v27 & 0xFFFFFFFF0001, isUniquelyReferenced_nonNull_native);
    *(v2 + 160) = v28;
    swift_endAccess();
    v25 = swift_task_alloc();
    v0[23] = v25;
    v8 = type metadata accessor for __MaterialResource();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v0[24] = v9;
    *v25 = v0;
    v25[1] = specialized ShaderCacheLoader.loadResource(forKey:);
    v10 = MEMORY[0x1E69E7288];
    v11 = v0 + 13;
    v12 = v23;
  }

  return MEMORY[0x1EEE6DA10](v11, v12, v8, v9, v10);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  else
  {
    v4 = specialized ShaderCacheLoader.loadResource(forKey:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[16];
  v2 = v0[13];
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v1 & 0xFFFFFFFF0001);
  swift_endAccess();

  v3 = v0[1];

  return v3(v2);
}

uint64_t specialized ShaderCacheLoader.loadResource(forKey:)(int a1, uint64_t a2, int a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 208) = a1;
  *(v4 + 212) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ShaderCacheLoader.loadResource(forKey:), v3, 0);
}

uint64_t specialized ShaderCache.init(_:)(void *a1)
{
  outlined init with copy of __REAssetService(a1, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18SharedCacheStorageCyAA14CustomMaterialV0F16ShaderParametersVGMd, &_s17RealityFoundation18SharedCacheStorageCyAA14CustomMaterialV0F16ShaderParametersVGMR);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation14CustomMaterialV0E16ShaderParametersV_0C3Kit02__F8ResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 24) = v5;
  *(v1 + 56) = v3;
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17ShaderCacheLoaderCyAA14CustomMaterialV0fC10ParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCyAA14CustomMaterialV0fC10ParametersVGMR);
  v6 = swift_allocObject();

  swift_defaultActor_initialize();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation14CustomMaterialV0E16ShaderParametersV_ScTy0C3Kit02__F8ResourceCs5Error_pGTt0g5Tf4g_n(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v6 + 160) = v7;
  *(v6 + 112) = v3;
  outlined init with take of ForceEffectBase(v9, v6 + 120);
  *(v1 + 64) = v6;
  return v1;
}

{
  outlined init with copy of __REAssetService(a1, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18SharedCacheStorageCy0A3Kit13UnlitMaterialV0G16ShaderParametersVGMd, &_s17RealityFoundation18SharedCacheStorageCy0A3Kit13UnlitMaterialV0G16ShaderParametersVGMR);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit13UnlitMaterialV0E16ShaderParametersV_AC02__F8ResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 24) = v5;
  *(v1 + 56) = v3;
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17ShaderCacheLoaderCy0A3Kit13UnlitMaterialV0gC10ParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCy0A3Kit13UnlitMaterialV0gC10ParametersVGMR);
  v6 = swift_allocObject();

  swift_defaultActor_initialize();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit13UnlitMaterialV0E16ShaderParametersV_ScTyAC02__F8ResourceCs5Error_pGTt0g5Tf4g_n(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v6 + 160) = v7;
  *(v6 + 112) = v3;
  outlined init with take of ForceEffectBase(v9, v6 + 120);
  *(v1 + 64) = v6;
  return v1;
}

{
  outlined init with copy of __REAssetService(a1, v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation18SharedCacheStorageCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMd, &_s17RealityFoundation18SharedCacheStorageCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMR);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV_0C3Kit02__G8ResourceCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v3 + 24) = v5;
  *(v1 + 56) = v3;
  outlined init with copy of __REAssetService(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation17ShaderCacheLoaderCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMd, &_s17RealityFoundation17ShaderCacheLoaderCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMR);
  v6 = swift_allocObject();

  swift_defaultActor_initialize();
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV_ScTy0C3Kit02__G8ResourceCs5Error_pGTt0g5Tf4g_n(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v6 + 160) = v7;
  *(v6 + 112) = v3;
  outlined init with take of ForceEffectBase(v9, v6 + 120);
  *(v1 + 64) = v6;
  return v1;
}

uint64_t specialized closure #1 in AssetServiceScopedRegistry.instance(for:)(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    a3(0, a2);
    swift_endAccess();
  }

  return result;
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 80);
  *(v5 + 80) = *(a4 + 64);
  *(v5 + 96) = v7;
  *(v5 + 112) = *(a4 + 96);
  *(v5 + 128) = *(a4 + 112);
  *(v5 + 136) = a1;
  v8 = *(a4 + 16);
  *(v5 + 16) = *a4;
  *(v5 + 32) = v8;
  v9 = *(a4 + 48);
  *(v5 + 48) = *(a4 + 32);
  *(v5 + 64) = v9;
  v10 = swift_task_alloc();
  *(v5 + 144) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(v5 + 16, a5);
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 136) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = *a4;
  v8 = *(a4 + 1);
  v9 = a4[16];
  v10 = a4[17];
  v11 = a4[18];
  v12 = *(a4 + 1);
  v13 = swift_task_alloc();
  *(v5 + 24) = v13;
  *v13 = v5;
  v13[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(v7 | (v12 << 16), v8, (v10 << 8) | (v11 << 16) | v9, a5);
}

{
  *(v5 + 16) = a1;
  v7 = *a4;
  v8 = *(a4 + 1);
  v9 = a4[4];
  v10 = a4[5];
  v11 = swift_task_alloc();
  *(v5 + 24) = v11;
  *v11 = v5;
  v11[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(v7 | (v8 << 16) | (v9 << 32) | (v10 << 40), a5);
}

uint64_t specialized static CustomMaterial.Program.Descriptor.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = a1[1];
    v3 = a2[1];
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static CustomMaterial.Program.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);

  swift_unknownObjectRetain();
  v6 = v4;

  swift_unknownObjectRetain();
  v7 = v5;
  v8 = specialized static CustomMaterial.GeometryModifier.== infix(_:_:)();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = *(a1 + 80);
  v11 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a2 + 64);
  v15 = *(a2 + 72);
  v16 = *(a2 + 80);
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v31 = v12;
  v32 = v9;
  if (v10)
  {
    if (v15)
    {
      v29 = *(a1 + 88);
      outlined copy of CustomMaterial.GeometryModifier?(v9, v10, v12, v11, v13);
      outlined copy of CustomMaterial.GeometryModifier?(v14, v15, v16, v17, v18);
      outlined copy of CustomMaterial.GeometryModifier?(v32, v10, v31, v29, v13);
      v33 = specialized static CustomMaterial.GeometryModifier.== infix(_:_:)();

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      outlined consume of CustomMaterial.GeometryModifier?(v32, v10, v31, v29, v13);
      if ((v33 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v21 = *(a1 + 64);
    v22 = v11;
    outlined copy of CustomMaterial.GeometryModifier?(v9, v10, v12, v11, v13);
    v23 = v14;
    v20 = v22;
    v28 = v23;
    outlined copy of CustomMaterial.GeometryModifier?(v23, 0, v16, v17, v18);
    v24 = v21;
    v19 = v31;
    outlined copy of CustomMaterial.GeometryModifier?(v24, v10, v31, v22, v13);

    swift_unknownObjectRelease();

LABEL_9:
    outlined consume of CustomMaterial.GeometryModifier?(v32, v10, v19, v20, v13);
    outlined consume of CustomMaterial.GeometryModifier?(v28, v15, v16, v17, v18);
    return 0;
  }

  v30 = *(a1 + 88);
  outlined copy of CustomMaterial.GeometryModifier?(v9, 0, v12, v11, v13);
  if (v15)
  {
    v28 = v14;
    outlined copy of CustomMaterial.GeometryModifier?(v14, v15, v16, v17, v18);
    v20 = v30;
    v19 = v31;
    goto LABEL_9;
  }

  outlined copy of CustomMaterial.GeometryModifier?(v14, 0, v16, v17, v18);
  outlined consume of CustomMaterial.GeometryModifier?(v32, 0, v31, v30, v13);
LABEL_11:
  if (*(a1 + 105) == *(a2 + 105))
  {
    v25 = *(a1 + 106);
    v26 = *(a2 + 106);
    if (v25 == 2)
    {
      if (v26 != 2)
      {
        return 0;
      }
    }

    else if (v26 == 2 || ((v26 ^ v25) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t outlined consume of CustomMaterial.Blending?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != 2)
  {
    return outlined consume of CustomMaterial.Blending(result, a2);
  }

  return result;
}

uint64_t outlined consume of CustomMaterial.Blending(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double outlined copy of CustomMaterial.Blending?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != 2)
  {
    return outlined copy of CustomMaterial.Blending(result, a2);
  }

  return v3;
}

double outlined copy of CustomMaterial.Blending(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.Program.Descriptor and conformance CustomMaterial.Program.Descriptor()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.Program.Descriptor and conformance CustomMaterial.Program.Descriptor;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Program.Descriptor and conformance CustomMaterial.Program.Descriptor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CustomMaterial.Program.Descriptor, &type metadata for CustomMaterial.Program.Descriptor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Program.Descriptor and conformance CustomMaterial.Program.Descriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CustomMaterial.Program and conformance CustomMaterial.Program()
{
  result = lazy protocol witness table cache variable for type CustomMaterial.Program and conformance CustomMaterial.Program;
  if (!lazy protocol witness table cache variable for type CustomMaterial.Program and conformance CustomMaterial.Program)
  {
    v3 = type metadata accessor for CustomMaterial.Program();
    result = swift_getWitnessTable(protocol conformance descriptor for CustomMaterial.Program, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CustomMaterial.Program and conformance CustomMaterial.Program);
  }

  return result;
}

uint64_t dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 120) + **(v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of CustomMaterial.Program.__allocating_init(surfaceShader:geometryModifier:descriptor:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t getEnumTagSinglePayload for CustomMaterial.Program.Descriptor(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for CustomMaterial.Program.Descriptor(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(a1, v4, v5, (v1 + 32), v6);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TextureResource.PartialContents.init(source:mipmaps:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(a1, v4, v5, (v1 + 32), v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[19];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(a1, v4, v5, (v1 + 4), v6);
}

unint64_t lazy protocol witness table accessor for type ShaderCacheError and conformance ShaderCacheError()
{
  result = lazy protocol witness table cache variable for type ShaderCacheError and conformance ShaderCacheError;
  if (!lazy protocol witness table cache variable for type ShaderCacheError and conformance ShaderCacheError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShaderCacheError, &type metadata for ShaderCacheError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShaderCacheError and conformance ShaderCacheError);
  }

  return result;
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  *(v2 + 200) = *(a1 + 64);
  *(v2 + 216) = v3;
  *(v2 + 232) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 136) = *a1;
  *(v2 + 152) = v4;
  v5 = *(a1 + 48);
  *(v2 + 168) = *(a1 + 32);
  *(v2 + 632) = a2;
  *(v2 + 624) = a1;
  *(v2 + 248) = *(a1 + 112);
  *(v2 + 184) = v5;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), a2, 0);
}

{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), a2, 0);
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)()
{
  v1 = *(v0 + 632);
  v2 = CustomMaterial.CustomShaderParameters.materialPath.getter();
  v4 = v3;
  v5 = CustomMaterial.CustomShaderParameters.functionConstants.getter();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 480);
  v6 = *(v0 + 504);
  v7 = *(v0 + 512);
  __swift_project_boxed_opaque_existential_1((v0 + 480), v6);
  v8 = __REAssetService.asset(_:)(v2, v4, v6, v7);
  if (v8)
  {
    v11 = v8;
    v12 = *(v0 + 624);

    v13 = *v12;
    LOWORD(v12) = *(v12 + 2);
    *(v0 + 264) = v5;
    *(v0 + 272) = 0;
    *(v0 + 280) = 1;
    *(v0 + 283) = 2;
    *(v0 + 256) = v11;
    v14 = MEMORY[0x1E69E7CC0];
    *(v0 + 312) = MEMORY[0x1E69E7CC0];

    *(v0 + 288) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(v14);
    *(v0 + 296) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v14);
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v14);

    *(v0 + 304) = v15;
    __swift_destroy_boxed_opaque_existential_1((v0 + 480));
    *(v0 + 286) = *(v0 + 153);
    *(v0 + 281) = (v12 & 0x400) != 0;
    *(v0 + 282) = (v12 & 0x800) != 0;
    *(v0 + 284) = (v12 & 0x4000) != 0;
    *(v0 + 285) = v13;
    v16 = *(v0 + 176);
    *(v0 + 384) = *(v0 + 160);
    *(v0 + 400) = v16;
    *(v0 + 416) = *(v0 + 192);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c62Foundation17ShaderCacheLoaderC12loadResource6forKey0A3Kit010__e13G0Cx_tYaKFAHyv10KcfU_yAH04g2K8H6VXEfU_AF15BuildParametersVTf1cn_nTm(v0 + 384, v0 + 256, closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:));
    v17 = *(v0 + 224);
    *(v0 + 432) = *(v0 + 208);
    *(v0 + 448) = v17;
    *(v0 + 464) = *(v0 + 240);
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c62Foundation17ShaderCacheLoaderC12loadResource6forKey0A3Kit010__e13G0Cx_tYaKFAHyv10KcfU_yAH04g2K8H6VXEfU_AF15BuildParametersVTf1cn_nTm(v0 + 432, v0 + 256, closure #1 in closure #1 in ShaderCacheLoader.loadResource(forKey:));
    *(v0 + 640) = type metadata accessor for __MaterialResource();
    *(v0 + 648) = specialized static __ServiceLocator.shared.getter();

    v8 = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);
    v9 = 0;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  v8 = v0;
  v1 = *(v0 + 648);
  v2 = *(v0 + 272);
  v7[0] = *(v0 + 256);
  v7[1] = v2;
  v3 = *(v0 + 304);
  v7[2] = *(v0 + 288);
  v7[3] = v3;
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 560);
  v4 = specialized static __MaterialResource.buildCoreAsset(_:assetService:)(v7, (v0 + 560));
  *(v0 + 656) = v4;
  __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  v5 = swift_task_alloc();
  *(v0 + 664) = v5;
  *v5 = v0;
  v5[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return static __MaterialResource.load(_:)(v0 + 520, v4);
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), 0, 0);
}

{
  v1 = *(v0 + 632);
  RERelease();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v1, 0);
}

{
  v1 = *(v0 + 544);
  v2 = *(v0 + 552);
  __swift_project_boxed_opaque_existential_1((v0 + 520), v1);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + 520));
  v4 = *(v0 + 216);
  *(v0 + 80) = *(v0 + 200);
  *(v0 + 96) = v4;
  *(v0 + 112) = *(v0 + 232);
  *(v0 + 128) = *(v0 + 248);
  v5 = *(v0 + 152);
  *(v0 + 16) = *(v0 + 136);
  *(v0 + 32) = v5;
  v6 = *(v0 + 184);
  *(v0 + 48) = *(v0 + 168);
  *(v0 + 64) = v6;

  v7 = specialized SharedCacheStorage.addResource(value:forKey:)(v3, (v0 + 16));

  v8 = *(v0 + 272);
  *(v0 + 320) = *(v0 + 256);
  *(v0 + 336) = v8;
  v9 = *(v0 + 304);
  *(v0 + 352) = *(v0 + 288);
  *(v0 + 368) = v9;
  outlined destroy of __MaterialResource.BuildParameters(v0 + 320);
  v10 = *(v0 + 8);

  return v10(v7);
}

{
  v1 = 0xD00000000000002ALL;
  v2 = HIWORD(*(v0 + 244));
  if ((v2 & 2) != 0)
  {
    v3 = "EnableOpacityThreshold";
  }

  else if ((v2 & 1) == 0 && (*(v0 + 332) & 0xFF00) == 512)
  {
    v1 = 0xD00000000000001FLL;
    v3 = "ntUnlit.rematerialdefinition";
  }

  else
  {
    v3 = "engine:pbr.rematerialdefinition";
  }

  v4 = *(v0 + 248);
  *(v0 + 256) = PhysicallyBasedMaterial.PBRShaderParameters.functionConstants.getter();
  outlined init with copy of __REAssetService(v4 + 120, v0 + 80);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v5);
  v7 = __REAssetService.asset(_:)(v1, v3 | 0x8000000000000000, v5, v6);
  *(v0 + 264) = v7;
  if (v7)
  {

    *(v0 + 328) = 1;
    v10 = MEMORY[0x1E69E7CC0];
    *(v0 + 272) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v0 + 280) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v10);
    *(v0 + 288) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v10);
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    *(v0 + 243) = *(v0 + 241);
    *(v0 + 296) = type metadata accessor for __MaterialResource();
    *(v0 + 329) = *(v0 + 328);
    *(v0 + 304) = specialized static __ServiceLocator.shared.getter();

    v7 = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  v18 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 329);
  v3 = *(v0 + 243);
  v4 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 244) & 1;
  v10[0] = *(v0 + 264);
  v10[1] = v5;
  v10[2] = 0;
  v11 = v2;
  v12 = 0x20000;
  v13 = v6;
  v14 = v3;
  v15 = *(v0 + 272);
  v16 = v4;
  v17 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 160);
  v7 = specialized static __MaterialResource.buildCoreAsset(_:assetService:)(v10, (v0 + 160));
  *(v0 + 312) = v7;
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  v8 = swift_task_alloc();
  *(v0 + 320) = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return static __MaterialResource.load(_:)(v0 + 120, v7);
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), 0, 0);
}

{
  v1 = *(v0 + 248);
  RERelease();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v1, 0);
}

{
  v19 = *(v0 + 288);
  v1 = *(v0 + 256);
  v15 = *(v0 + 264);
  v17 = *(v0 + 244) & 1;
  v18 = *(v0 + 243);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v16 = *(v0 + 272);
  __swift_project_boxed_opaque_existential_1((v0 + 120), v2);
  v4 = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);
  v8 = *(v0 + 241);
  v9 = *(v0 + 242);
  v10 = *(v0 + 226);

  v11 = specialized SharedCacheStorage.addResource(value:forKey:)(v4, v5 | (v10 << 16), v6, (v8 << 8) | (v9 << 16) | v7);

  *(v0 + 16) = v15;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = *(v0 + 328);
  *(v0 + 41) = 0x20000;
  *(v0 + 45) = v17;
  *(v0 + 46) = v18;
  *(v0 + 48) = v16;
  v12 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = v19;
  *(v0 + 72) = v12;
  outlined destroy of __MaterialResource.BuildParameters(v0 + 16);
  v13 = *(v0 + 8);

  return v13(v11);
}

{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = "aterialdefinition";
  if ((v2 & 0xFF00000000) == 0x200000000 && (v2 & 0x10000) == 0)
  {
    v4 = 0xD000000000000021;
  }

  else
  {
    v4 = 0xD00000000000002CLL;
  }

  if ((v2 & 0xFF00000000) == 0x200000000 && (v2 & 0x10000) == 0)
  {
    v3 = "fail with the same error.";
  }

  if ((*(v0 + 224) & 0x20000) != 0)
  {
    v5 = 0xD00000000000002CLL;
  }

  else
  {
    v5 = v4;
  }

  if ((*(v0 + 224) & 0x20000) != 0)
  {
    v6 = "utPbr.rematerialdefinition";
  }

  else
  {
    v6 = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMd, &_ss23_ContiguousArrayStorageCySS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1887600;
  *(v7 + 32) = 0x6C6E55686374614DLL;
  v8 = v7 + 32;
  *(v7 + 40) = 0xEF726F6C6F437469;
  *(v7 + 48) = (v2 >> 18) & 1;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v0 + 240) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  outlined destroy of (String, __MaterialResource.BuildParameters.Value)(v8);
  swift_deallocClassInstance();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 80);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), v9);
  v11 = __REAssetService.asset(_:)(v5, v6 | 0x8000000000000000, v9, v10);
  *(v0 + 248) = v11;
  if (v11)
  {

    *(v0 + 312) = 1;
    v14 = MEMORY[0x1E69E7CC0];
    *(v0 + 256) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v0 + 264) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v14);
    *(v0 + 272) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v14);
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    *(v0 + 280) = type metadata accessor for __MaterialResource();
    *(v0 + 313) = *(v0 + 312);
    *(v0 + 288) = specialized static __ServiceLocator.shared.getter();

    v11 = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

{
  v18 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 313);
  v3 = *(v0 + 272);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224) & 1;
  v6 = HIDWORD(*(v0 + 224));
  v10[0] = *(v0 + 248);
  v10[1] = v4;
  v10[2] = 0;
  v11 = v2;
  v12 = 0x20000;
  v13 = v5;
  v14 = v6;
  v15 = *(v0 + 256);
  v16 = v3;
  v17 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  outlined init with copy of __REAssetService(v1 + 120, v0 + 160);
  v7 = specialized static __MaterialResource.buildCoreAsset(_:assetService:)(v10, (v0 + 160));
  *(v0 + 296) = v7;
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  v8 = swift_task_alloc();
  *(v0 + 304) = v8;
  *v8 = v0;
  v8[1] = specialized closure #1 in ShaderCacheLoader.loadResource(forKey:);

  return static __MaterialResource.load(_:)(v0 + 120, v7);
}

{

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), 0, 0);
}

{
  v1 = *(v0 + 232);
  RERelease();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), v1, 0);
}

{
  v12 = *(v0 + 272);
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v11 = *(v0 + 256);
  __swift_project_boxed_opaque_existential_1((v0 + 120), v4);
  v6 = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  v7 = specialized SharedCacheStorage.addResource(value:forKey:)(v6, v3 & 0xFFFFFFFF0001);

  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = *(v0 + 312);
  *(v0 + 41) = 0x20000;
  *(v0 + 45) = v3 & 1;
  *(v0 + 46) = BYTE4(v3);
  *(v0 + 48) = v11;
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 64) = v12;
  *(v0 + 72) = v8;
  outlined destroy of __MaterialResource.BuildParameters(v0 + 16);
  v9 = *(v0 + 8);

  return v9(v7);
}

uint64_t specialized closure #1 in ShaderCacheLoader.loadResource(forKey:)(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  *(v4 + 248) = a4;
  *(v4 + 332) = a3;
  *(v4 + 244) = a1;
  *(v4 + 224) = a1;
  *(v4 + 227) = HIBYTE(a1);
  *(v4 + 225) = a1 >> 8;
  *(v4 + 232) = a2;
  *(v4 + 240) = a3;
  *(v4 + 242) = BYTE2(a3);
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in ShaderCacheLoader.loadResource(forKey:), a4, 0);
}

uint64_t outlined destroy of (String, __MaterialResource.BuildParameters.Value)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMd, &_sSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void outlined copy of __MaterialResource.CoreMaterialFunction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3)
  {

    v6 = a6;
  }
}

void outlined copy of CustomMaterial.GeometryModifier?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    swift_unknownObjectRetain();

    v5 = a5;
  }
}

void outlined consume of CustomMaterial.GeometryModifier?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

uint64_t lazy protocol witness table accessor for type ShaderCacheLoader<UnlitMaterial.UnlitShaderParameters> and conformance ShaderCacheLoader<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(protocol conformance descriptor for ShaderCacheLoader<A>, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t areJointDefinitionsEqual(_:_:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (DynamicType != swift_getDynamicType())
  {
    goto LABEL_5;
  }

  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 16))(v72, v5, v6);
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(v8 + 16))(&v62, v7, v8);
  v9 = specialized static GeometricPin.== infix(_:_:)(v72, &v62);
  outlined destroy of GeometricPin(&v62);
  outlined destroy of GeometricPin(v72);
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 40))(v72, v10, v11);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  (*(v13 + 40))(&v62, v12, v13);
  v14 = specialized static GeometricPin.== infix(_:_:)(v72, &v62);
  outlined destroy of GeometricPin(&v62);
  outlined destroy of GeometricPin(v72);
  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  LODWORD(v15) = (*(v16 + 64))(v15, v16);
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  if ((v15 ^ (*(v18 + 64))(v17, v18)))
  {
    goto LABEL_5;
  }

  outlined init with copy of __REAssetService(a1, &v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  if (swift_dynamicCast())
  {
    outlined destroy of PhysicsFixedJoint(v72);
    outlined init with copy of __REAssetService(a2, &v62);
    if (swift_dynamicCast())
    {
      outlined destroy of PhysicsFixedJoint(v72);
      v19 = 1;
      return v19 & 1;
    }
  }

  outlined init with copy of __REAssetService(a1, &v51);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsSphericalJoint(&v62, v72);
    outlined init with copy of __REAssetService(a2, v61);
    if (swift_dynamicCast())
    {
      outlined init with take of PhysicsSphericalJoint(&v51, &v62);
      v21 = v73;
      v22 = LOBYTE(v74);
      outlined destroy of PhysicsSphericalJoint(v72);
      if (v22 & 1) != 0 || (BYTE12(v71[1]))
      {
        v19 = v22 & BYTE12(v71[1]);
        outlined destroy of PhysicsSphericalJoint(&v62);
      }

      else
      {
        v23 = *(&v71[1] + 4);
        outlined destroy of PhysicsSphericalJoint(&v62);
        v19 = *(&v21 + 1) == *(&v23 + 1) && *&v21 == *&v23;
      }

      return v19 & 1;
    }

    outlined destroy of PhysicsSphericalJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 29);
    v25 = &v51;
  }

  else
  {
    v70 = 0u;
    memset(v71, 0, 29);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v25 = &v62;
  }

  outlined destroy of BodyTrackingComponent?(v25, &_s17RealityFoundation21PhysicsSphericalJointVSgMd, &_s17RealityFoundation21PhysicsSphericalJointVSgMR);
  outlined init with copy of __REAssetService(a1, &v51);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsRevoluteJoint(&v62, v72);
    outlined init with copy of __REAssetService(a2, v61);
    if (swift_dynamicCast())
    {
      outlined init with take of PhysicsRevoluteJoint(&v51, &v62);
      v26 = v73;
      v27 = LOBYTE(v74);
      outlined destroy of PhysicsRevoluteJoint(v72);
      v28 = *(&v71[1] + 4);
      v29 = BYTE12(v71[1]);
      outlined destroy of PhysicsRevoluteJoint(&v62);
      v19 = v27 & v29;
      if (v27)
      {
        return v19 & 1;
      }

LABEL_31:
      if (v29)
      {
        return v19 & 1;
      }

      if (*&v26 == *&v28)
      {
        v19 = *(&v26 + 1) == *(&v28 + 1);
        return v19 & 1;
      }

      goto LABEL_5;
    }

    outlined destroy of PhysicsRevoluteJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 29);
    v30 = &v51;
  }

  else
  {
    v70 = 0u;
    memset(v71, 0, 29);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v30 = &v62;
  }

  outlined destroy of BodyTrackingComponent?(v30, &_s17RealityFoundation20PhysicsRevoluteJointVSgMd, &_s17RealityFoundation20PhysicsRevoluteJointVSgMR);
  outlined init with copy of __REAssetService(a1, &v51);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsPrismaticJoint(&v62, v72);
    outlined init with copy of __REAssetService(a2, v61);
    if (swift_dynamicCast())
    {
      outlined init with take of PhysicsPrismaticJoint(&v51, &v62);
      v26 = v73;
      v31 = LOBYTE(v74);
      outlined destroy of PhysicsPrismaticJoint(v72);
      v28 = *(&v71[1] + 4);
      v29 = BYTE12(v71[1]);
      outlined destroy of PhysicsPrismaticJoint(&v62);
      v19 = v31 & v29;
      if (v31)
      {
        return v19 & 1;
      }

      goto LABEL_31;
    }

    outlined destroy of PhysicsPrismaticJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 29);
    v32 = &v51;
  }

  else
  {
    v70 = 0u;
    memset(v71, 0, 29);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v32 = &v62;
  }

  outlined destroy of BodyTrackingComponent?(v32, &_s17RealityFoundation21PhysicsPrismaticJointVSgMd, &_s17RealityFoundation21PhysicsPrismaticJointVSgMR);
  outlined init with copy of __REAssetService(a1, &v51);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsDistanceJoint(&v62, v72);
    outlined init with copy of __REAssetService(a2, v61);
    if (swift_dynamicCast())
    {
      outlined init with take of PhysicsDistanceJoint(&v51, &v62);
      if (*&v73 == *(&v71[1] + 1) && *(&v73 + 1) == *(&v71[1] + 2))
      {
        v33 = v74;
        outlined destroy of PhysicsDistanceJoint(v72);
        v34 = *(&v71[1] + 3);
        outlined destroy of PhysicsDistanceJoint(&v62);
        v19 = v33 == v34;
        return v19 & 1;
      }

      outlined destroy of PhysicsDistanceJoint(&v62);
      outlined destroy of PhysicsDistanceJoint(v72);
      goto LABEL_5;
    }

    outlined destroy of PhysicsDistanceJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 32);
    v35 = &v51;
  }

  else
  {
    memset(v71, 0, 32);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v35 = &v62;
  }

  outlined destroy of BodyTrackingComponent?(v35, &_s17RealityFoundation20PhysicsDistanceJointVSgMd, &_s17RealityFoundation20PhysicsDistanceJointVSgMR);
  outlined init with copy of __REAssetService(a1, &v51);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v70 = 0u;
    memset(v71, 0, 89);
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    outlined destroy of BodyTrackingComponent?(&v62, &_s17RealityFoundation18PhysicsCustomJointVSgMd, &_s17RealityFoundation18PhysicsCustomJointVSgMR);
    goto LABEL_5;
  }

  outlined init with take of PhysicsCustomJoint(&v62, v72);
  outlined init with copy of __REAssetService(a2, v61);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined destroy of PhysicsCustomJoint(v72);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, 89);
    outlined destroy of BodyTrackingComponent?(&v51, &_s17RealityFoundation18PhysicsCustomJointVSgMd, &_s17RealityFoundation18PhysicsCustomJointVSgMR);
    goto LABEL_5;
  }

  outlined init with take of PhysicsCustomJoint(&v51, &v62);
  if (LOBYTE(v74) == 1)
  {
    if (v73)
    {
      if (*(&v71[1] + 4))
      {
        v36 = BYTE12(v71[1]);
      }

      else
      {
        v36 = 0;
      }

      if ((v36 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (*(&v71[1] + 4))
      {
        v37 = 0;
      }

      else
      {
        v37 = BYTE12(v71[1]);
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  else if ((BYTE12(v71[1]) & 1) != 0 || *&v73 != *(&v71[1] + 1) || *(&v73 + 1) != *(&v71[1] + 2))
  {
    goto LABEL_128;
  }

  if (v76 == 1)
  {
    if (v75)
    {
      if (*&v71[2])
      {
        v38 = BYTE8(v71[2]);
      }

      else
      {
        v38 = 0;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (*&v71[2])
      {
        v39 = 0;
      }

      else
      {
        v39 = BYTE8(v71[2]);
      }

      if ((v39 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  else if ((BYTE8(v71[2]) & 1) != 0 || *&v75 != *&v71[2] || *(&v75 + 1) != *(&v71[2] + 1))
  {
    goto LABEL_128;
  }

  if (v78 == 1)
  {
    if (v77)
    {
      if (*(&v71[2] + 12))
      {
        v40 = BYTE4(v71[3]);
      }

      else
      {
        v40 = 0;
      }

      if ((v40 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (*(&v71[2] + 12))
      {
        v41 = 0;
      }

      else
      {
        v41 = BYTE4(v71[3]);
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  else if ((BYTE4(v71[3]) & 1) != 0 || *&v77 != *(&v71[2] + 3) || *(&v77 + 1) != *&v71[3])
  {
    goto LABEL_128;
  }

  if (v80 == 1)
  {
    if (v79)
    {
      if (*(&v71[3] + 1))
      {
        v42 = v71[4];
      }

      else
      {
        v42 = 0;
      }

      if ((v42 & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      if (*(&v71[3] + 1))
      {
        v43 = 0;
      }

      else
      {
        v43 = v71[4];
      }

      if ((v43 & 1) == 0)
      {
        goto LABEL_128;
      }
    }
  }

  else if ((v71[4] & 1) != 0 || *&v79 != *(&v71[3] + 2) || *(&v79 + 1) != *(&v71[3] + 3))
  {
    goto LABEL_128;
  }

  if (v82 != 1)
  {
    if ((BYTE12(v71[4]) & 1) == 0 && *&v81 == *(&v71[4] + 1) && *(&v81 + 1) == *(&v71[4] + 2))
    {
      goto LABEL_119;
    }

LABEL_128:
    outlined destroy of PhysicsCustomJoint(&v62);
    outlined destroy of PhysicsCustomJoint(v72);
    goto LABEL_5;
  }

  if (v81)
  {
    if (*(&v71[4] + 4))
    {
      v44 = BYTE12(v71[4]);
    }

    else
    {
      v44 = 0;
    }

    if ((v44 & 1) == 0)
    {
      goto LABEL_128;
    }
  }

  else
  {
    if (*(&v71[4] + 4))
    {
      v49 = 0;
    }

    else
    {
      v49 = BYTE12(v71[4]);
    }

    if ((v49 & 1) == 0)
    {
      goto LABEL_128;
    }
  }

LABEL_119:
  v45 = v83;
  v46 = v84;
  outlined destroy of PhysicsCustomJoint(v72);
  v47 = *&v71[5];
  v48 = BYTE8(v71[5]);
  outlined destroy of PhysicsCustomJoint(&v62);
  if (v46 == 1)
  {
    if (v45)
    {
      if (v47)
      {
        v19 = v48;
      }

      else
      {
        v19 = 0;
      }
    }

    else if (v47)
    {
      v19 = 0;
    }

    else
    {
      v19 = v48;
    }

    return v19 & 1;
  }

  if (v48)
  {
LABEL_5:
    v19 = 0;
    return v19 & 1;
  }

  v19 = *(&v45 + 1) == *(&v47 + 1) && *&v45 == *&v47;
  return v19 & 1;
}

void static PhysicsJointCreator.createJointDefinition(fromCoreJointDefinition:isActive:)(char a2@<W1>, uint64_t *a3@<X8>)
{
  Entity = REPhysicsJointDefinitionGetEntity();
  if (!Entity || (v6 = Entity, (v7 = REPhysicsJointDefinitionGetEntity()) == 0))
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 4;
    swift_willThrow();
    return;
  }

  v8 = v7;
  type metadata accessor for Entity();
  if (REEntityGetSwiftObject())
  {
    swift_dynamicCastClassUnconditional();
  }

  else
  {
    if (REEntityIsBeingDestroyed())
    {
      __break(1u);
      goto LABEL_86;
    }

    v10 = static Entity.entityInfoType(_:)(v6);
    if (v10)
    {
      v11 = (*(v10 + 232))();
      v12 = *(v11 + 16);

      MEMORY[0x1C68F9740](v12, 0);
      *(v11 + 16) = v6;
      MEMORY[0x1C68F9740](v6, v11);
    }

    else
    {
      makeEntity(for:)(v6);
    }
  }

  v70 = a2;
  if (!REEntityGetSwiftObject())
  {
    if ((REEntityIsBeingDestroyed() & 1) == 0)
    {
      v13 = static Entity.entityInfoType(_:)(v8);
      if (v13)
      {
        v14 = (*(v13 + 232))();
        v15 = *(v14 + 16);

        MEMORY[0x1C68F9740](v15, 0);
        *(v14 + 16) = v8;
        MEMORY[0x1C68F9740](v8, v14);
      }

      else
      {
        makeEntity(for:)(v8);
      }

      goto LABEL_14;
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  swift_dynamicCastClassUnconditional();
LABEL_14:
  REPhysicsJointDefinitionGetPinName();
  v16 = String.init(cString:)();
  v18 = v17;
  REPhysicsJointDefinitionGetPinName();
  v19 = String.init(cString:)();
  v21 = v20;
  REPhysicsJointDefinitionGetOffsetFromPin();
  v71 = v23;
  v74 = v22;
  REPhysicsJointDefinitionGetOffsetFromPin();
  v77 = v25;
  v80 = v24;
  swift_weakInit();
  v96 = v74;
  v97 = v71;
  swift_weakAssign();
  v92 = v16;
  v93 = v18;
  v94 = 0;
  v95 = 0;
  swift_weakInit();
  v89 = v80;
  v90 = v77;
  swift_weakAssign();
  v85 = v19;
  v86 = v21;
  v87 = 0;
  v88 = 0;
  ChecksForCollisions = REPhysicsJointDefinitionGetChecksForCollisions();
  JointType = REPhysicsJointDefinitionGetJointType();
  if (JointType <= 3)
  {
    if (JointType != 1)
    {
      if (JointType == 2)
      {
        REPhysicsJointDefinitionSphericalJointGetAngularLimitYZ();
        if (*&v47 <= 0.0 || *(&v47 + 1) <= 0.0)
        {
          v30 = 0;
          v29 = 1;
        }

        else
        {
          v29 = 0;
          v30 = v47;
        }

        a3[3] = &type metadata for PhysicsSphericalJoint;
        a3[4] = lazy protocol witness table accessor for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint();
        goto LABEL_43;
      }

      if (JointType == 3)
      {
        REPhysicsJointDefinitionRevoluteJointGetAngularLimitX();
        v29 = *&v28 > *(&v28 + 1);
        if (*&v28 <= *(&v28 + 1))
        {
          v30 = v28;
        }

        else
        {
          v30 = 0;
        }

        a3[3] = &type metadata for PhysicsRevoluteJoint;
        a3[4] = lazy protocol witness table accessor for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint();
LABEL_43:
        v52 = swift_allocObject();
        *a3 = v52;
        outlined init with copy of GeometricPin(v91, v52 + 16);
        outlined init with copy of GeometricPin(v84, v52 + 96);

        v44 = (v52 + 177);
        *(v52 + 180) = v30;
        *(v52 + 188) = v29;
        *(v52 + 176) = ChecksForCollisions;
        goto LABEL_83;
      }

LABEL_33:
      lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
      swift_allocError();
      *v46 = 1;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      *(v46 + 32) = 4;
      swift_willThrow();

LABEL_84:
      outlined destroy of GeometricPin(v84);
      outlined destroy of GeometricPin(v91);
      return;
    }

    a3[3] = &type metadata for PhysicsFixedJoint;
    a3[4] = lazy protocol witness table accessor for type PhysicsFixedJoint and conformance PhysicsFixedJoint();
    v43 = swift_allocObject();
    *a3 = v43;
    outlined init with copy of GeometricPin(v91, v43 + 16);
    outlined init with copy of GeometricPin(v84, v43 + 96);

    *(v43 + 176) = 0;
    v44 = (v43 + 177);
LABEL_83:
    *v44 = v70 & 1;
    goto LABEL_84;
  }

  if (JointType == 4)
  {
    REPhysicsJointDefinitionPrismaticJointGetLinearLimitX();
    v29 = *&v45 > *(&v45 + 1);
    if (*&v45 <= *(&v45 + 1))
    {
      v30 = v45;
    }

    else
    {
      v30 = 0;
    }

    a3[3] = &type metadata for PhysicsPrismaticJoint;
    a3[4] = lazy protocol witness table accessor for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint();
    goto LABEL_43;
  }

  if (JointType != 5)
  {
    if (JointType != 6)
    {
      goto LABEL_33;
    }

    REPhysicsJointDefinitionGetLinearLimit();
    v68 = v31;
    v32 = 1;
    REPhysicsJointDefinitionGetLinearLimit();
    v72 = v33;
    REPhysicsJointDefinitionGetLinearLimit();
    v75 = v34;
    REPhysicsJointDefinitionGetAngularLimit();
    v78 = v35;
    REPhysicsJointDefinitionGetAngularLimit();
    v81 = v36;
    REPhysicsJointDefinitionGetAngularLimit();
    if (*&v68 == 0.0 && *(&v68 + 1) == 0.0)
    {
      v38 = 0;
      v40 = v78;
      v39 = v81;
      v42 = v72;
      v41 = v75;
    }

    else
    {
      v40 = v78;
      v39 = v81;
      v42 = v72;
      v41 = v75;
      if (*(&v68 + 1) >= *&v68)
      {
        v32 = 0;
        v38 = v68 | (HIDWORD(v68) << 32);
      }

      else
      {
        v38 = 1;
      }
    }

    if (*&v42 == 0.0 && *(&v42 + 1) == 0.0)
    {
      v53 = 0;
    }

    else
    {
      if (*(&v42 + 1) >= *&v42)
      {
        v54 = 0;
        v53 = v42;
        goto LABEL_54;
      }

      v53 = 1;
    }

    v54 = 1;
LABEL_54:
    if (*&v41 == 0.0 && *(&v41 + 1) == 0.0)
    {
      v55 = 0;
    }

    else
    {
      if (*(&v41 + 1) >= *&v41)
      {
        v56 = 0;
        v55 = v41;
        goto LABEL_61;
      }

      v55 = 1;
    }

    v56 = 1;
LABEL_61:
    if (*&v40 == 0.0 && *(&v40 + 1) == 0.0)
    {
      v57 = 0;
    }

    else
    {
      if (*(&v40 + 1) >= *&v40)
      {
        v58 = 0;
        v57 = v40;
        goto LABEL_68;
      }

      v57 = 1;
    }

    v58 = 1;
LABEL_68:
    if (*&v39 == 0.0 && *(&v39 + 1) == 0.0)
    {
      v59 = 0;
    }

    else
    {
      if (*(&v39 + 1) >= *&v39)
      {
        v60 = 0;
        v59 = v39;
        goto LABEL_75;
      }

      v59 = 1;
    }

    v60 = 1;
LABEL_75:
    v67 = ChecksForCollisions;
    v69 = v60;
    v83 = v56;
    v79 = v55;
    v76 = v58;
    v73 = v57;
    v66 = v59;
    if (*&v37 == 0.0 && *(&v37 + 1) == 0.0)
    {
      v61 = v38;
      v62 = v32;
      v64 = 0;
    }

    else
    {
      if (*(&v37 + 1) >= *&v37)
      {
        v61 = v38;
        v62 = v32;
        v65 = 0;
        v64 = v37;
        goto LABEL_82;
      }

      v61 = v38;
      v62 = v32;
      v64 = 1;
    }

    v65 = 1;
LABEL_82:
    a3[3] = &type metadata for PhysicsCustomJoint;
    a3[4] = lazy protocol witness table accessor for type PhysicsCustomJoint and conformance PhysicsCustomJoint();
    v63 = swift_allocObject();
    *a3 = v63;
    outlined init with copy of GeometricPin(v91, v63 + 16);
    outlined init with copy of GeometricPin(v84, v63 + 96);

    v44 = (v63 + 177);
    *(v63 + 180) = v61;
    *(v63 + 188) = v62;
    *(v63 + 192) = v53;
    *(v63 + 200) = v54;
    *(v63 + 204) = v79;
    *(v63 + 212) = v83;
    *(v63 + 216) = v73;
    *(v63 + 224) = v76;
    *(v63 + 228) = v66;
    *(v63 + 236) = v69;
    *(v63 + 240) = v64;
    *(v63 + 248) = v65;
    *(v63 + 176) = v67;
    goto LABEL_83;
  }

  REPhysicsJointDefinitionDistanceJointGetDistanceLimit();
  v82 = v48;
  if ((vmvn_s8(vcge_f32(vdup_lane_s32(v48, 1), v48)).u32[0] & 1) == 0)
  {
    a3[3] = &type metadata for PhysicsDistanceJoint;
    a3[4] = lazy protocol witness table accessor for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint();
    v49 = swift_allocObject();
    *a3 = v49;
    outlined init with copy of GeometricPin(v91, v49 + 16);
    outlined init with copy of GeometricPin(v84, v49 + 96);
    v44 = (v49 + 177);
    *(v49 + 180) = v82;
    *(v49 + 176) = ChecksForCollisions;
    REPhysicsJointDefinitionDistanceJointGetTolerance();
    v51 = v50;

    *(v49 + 188) = v51;
    goto LABEL_83;
  }

LABEL_87:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
}

void specialized static PhysicsJointCreator.findNearestOrAddPhysicsJointsComponent(for:)(uint64_t a1)
{
  v2 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(a1);
  swift_retain_n();
  Component = REEntityGetComponent();

  if (Component)
  {
LABEL_2:

    return;
  }

  v4 = a1;
  while (1)
  {
    if (v2 && *(v4 + 16) == *(v2 + 16) || (, v7 = REEntityGetComponent(), , v7))
    {

      _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation013PhysicsJointsD0V_TtB5(0, MEMORY[0x1E69E7CC0], 0, v4);

      return;
    }

    Parent = REEntityGetParent();
    if (!Parent)
    {
      _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation013PhysicsJointsD0V_TtB5(0, MEMORY[0x1E69E7CC0], 0, a1);

      return;
    }

    v9 = Parent;
    if (REEntityGetSwiftObject())
    {

      type metadata accessor for Entity();
      v5 = swift_dynamicCastClassUnconditional();
      goto LABEL_5;
    }

    if (REEntityIsBeingDestroyed())
    {
      break;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v10 & 1) == 0))
    {
      swift_endAccess();
      v11 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, &type metadata for __EntityInfoComponent, isUniquelyReferenced_nonNull_native);
      static SceneManager.customComponentTypeObjectIdToHandles = v27;
    }

    swift_endAccess();
    if (!REEntityGetCustomComponent())
    {
      goto LABEL_36;
    }

    Object = RECustomComponentGetObject();
    if (!Object)
    {
      goto LABEL_36;
    }

    v14 = *Object;
    if (*(Object + 8) || !v14)
    {
    }

    else
    {
      v15 = *v14;
      v16 = String.init(utf8String:)();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v14 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v15 == 42, v18, v19);

      type metadata accessor for IntrospectionDataCleanupHelper();
      *(swift_allocObject() + 16) = v14;
    }

    if (!v14)
    {
      goto LABEL_41;
    }

    v20 = String.init(utf8String:)();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = MEMORY[0x1C68F3280](v20, v22);

    v24 = NSClassFromString(v23);

    if (v24 && (swift_getObjCClassMetadata(), type metadata accessor for Entity(), (v25 = swift_dynamicCastMetatype()) != 0))
    {
      v5 = (*(v25 + 232))();
      v26 = *(v5 + 16);

      MEMORY[0x1C68F9740](v26, 0);
      *(v5 + 16) = v9;
      MEMORY[0x1C68F9740](v9, v5);
    }

    else
    {
LABEL_36:
      v5 = makeEntity(for:)(v9);
    }

LABEL_5:

    v6 = REEntityGetComponent();

    v4 = v5;
    if (v6)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t specialized static PhysicsJointCreator.verifyData(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 16))(&v60, v2, v3);
  Strong = swift_weakLoadStrong();
  outlined destroy of GeometricPin(&v60);
  if (!Strong)
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 4;
    return swift_willThrow();
  }

  if (!REEntityGetComponent())
  {

    REEntityGetName();
    v18 = String.init(cString:)();
    v20 = v19;
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v14 = v18;
    *(v14 + 8) = v20;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    v15 = 1;
    goto LABEL_12;
  }

  PhysicsBodyComponent.init(_:)(&v70);

  v68 = v78;
  v69[0] = v79[0];
  *(v69 + 12) = *(v79 + 12);
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v60 = v70;
  v61 = v71;
  v62 = v72;
  v63 = v73;
  outlined destroy of PhysicsBodyComponent(&v60);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 16))(&v60, v5, v6);
  GeometricPin.pose.getter(v80);
  outlined destroy of GeometricPin(&v60);
  if (v81)
  {
    REEntityGetName();
    v7 = String.init(cString:)();
    v9 = v8;
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    (*(v11 + 16))(&v60, v10, v11);
    v13 = *(&v60 + 1);
    v12 = v61;

    outlined destroy of GeometricPin(&v60);
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v14 = v7;
    *(v14 + 8) = v9;
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v15 = 3;
LABEL_12:
    *(v14 + 32) = v15;
    swift_willThrow();
  }

  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  (*(v22 + 40))(&v60, v21, v22);
  v23 = swift_weakLoadStrong();
  outlined destroy of GeometricPin(&v60);
  if (!v23)
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v14 = 0u;
    *(v14 + 16) = 0u;
    v15 = 4;
    goto LABEL_12;
  }

  if (!REEntityGetComponent())
  {

    REEntityGetName();
    v35 = String.init(cString:)();
    v37 = v36;
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v33 = v35;
    *(v33 + 8) = v37;
    *(v33 + 16) = 0;
    *(v33 + 24) = 0;
    v34 = 1;
    goto LABEL_15;
  }

  PhysicsBodyComponent.init(_:)(&v70);

  v68 = v78;
  v69[0] = v79[0];
  *(v69 + 12) = *(v79 + 12);
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v60 = v70;
  v61 = v71;
  v62 = v72;
  v63 = v73;
  outlined destroy of PhysicsBodyComponent(&v60);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(v25 + 40))(&v60, v24, v25);
  GeometricPin.pose.getter(v82);
  outlined destroy of GeometricPin(&v60);
  if (v83)
  {
    REEntityGetName();
    v26 = String.init(cString:)();
    v28 = v27;
    v29 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v29);
    (*(v30 + 40))(&v60, v29, v30);
    v32 = *(&v60 + 1);
    v31 = v61;

    outlined destroy of GeometricPin(&v60);
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v33 = v26;
    *(v33 + 8) = v28;
    *(v33 + 16) = v32;
    *(v33 + 24) = v31;
    v34 = 3;
LABEL_15:
    *(v33 + 32) = v34;
LABEL_16:
    swift_willThrow();
  }

  if (*(Strong + 16) == *(v23 + 16))
  {
    REEntityGetName();
    v47 = String.init(cString:)();
    v49 = v48;
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v50 = v47;
    *(v50 + 8) = v49;
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0;
    goto LABEL_16;
  }

  v38 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(Strong);
  v39 = specialized static PhysicsSimulationComponent.nearestSimulationEntity(for:)(v23);
  if (v38)
  {
    if (!v39)
    {

      REEntityGetName();
      v55 = String.init(cString:)();
      v57 = v56;
      lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
      swift_allocError();
      *v58 = v55;
      *(v58 + 8) = v57;
      *(v58 + 16) = xmmword_1C18A5140;
      *(v58 + 32) = 2;
      swift_willThrow();

      goto LABEL_29;
    }

    if (*(v38 + 16) != *(v39 + 16))
    {

      REEntityGetName();
      v40 = String.init(cString:)();
      v42 = v41;
      REEntityGetName();
      v43 = String.init(cString:)();
      v45 = v44;
      lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
      swift_allocError();
      *v46 = v40;
      *(v46 + 8) = v42;
      *(v46 + 16) = v43;
      *(v46 + 24) = v45;
      *(v46 + 32) = 2;
      swift_willThrow();

LABEL_29:
    }
  }

  else if (v39)
  {
    REEntityGetName();
    v51 = String.init(cString:)();
    v53 = v52;
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v54 = xmmword_1C18A5140;
    *(v54 + 16) = v51;
    *(v54 + 24) = v53;
    *(v54 + 32) = 2;
    swift_willThrow();

LABEL_25:
  }

  outlined init with copy of __REAssetService(a1, &v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsFixedJoint(&v60);
  }

  outlined init with copy of __REAssetService(a1, &v70);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsSphericalJoint(&v60);
  }

  outlined init with copy of __REAssetService(a1, &v70);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsRevoluteJoint(&v60);
  }

  outlined init with copy of __REAssetService(a1, &v70);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsPrismaticJoint(&v60);
  }

  outlined init with copy of __REAssetService(a1, &v70);
  if (swift_dynamicCast())
  {

    return outlined destroy of PhysicsDistanceJoint(&v60);
  }

  outlined init with copy of __REAssetService(a1, &v70);
  if (!swift_dynamicCast())
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v59 = 1;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    *(v59 + 32) = 4;
    swift_willThrow();

    goto LABEL_25;
  }

  return outlined destroy of PhysicsCustomJoint(&v60);
}

uint64_t specialized static PhysicsJointCreator.createCoreJointDefinition(fromDefinition:jointsComponentEntity:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 16))(&v42, v2, v3);
  Strong = swift_weakLoadStrong();
  outlined destroy of GeometricPin(&v42);
  if (!Strong || (, v5 = a1[3], v6 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v5), (*(v6 + 40))(&v42, v5, v6), Strong = swift_weakLoadStrong(), outlined destroy of GeometricPin(&v42), !Strong))
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    v18 = v17 + 2;
    *v17 = 0u;
    v17[1] = 0u;
LABEL_6:
    *v18 = 4;
    swift_willThrow();
    return Strong;
  }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 16))(&v42, v7, v8);

  outlined destroy of GeometricPin(&v42);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 40))(&v42, v9, v10);

  outlined destroy of GeometricPin(&v42);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 16))(&v42, v11, v12);
  outlined destroy of GeometricPin(&v42);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 40))(&v42, v13, v14);
  outlined destroy of GeometricPin(&v42);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(v16 + 64))(v15, v16);
  outlined init with copy of __REAssetService(a1, &v32);
  Strong = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
  if (swift_dynamicCast())
  {
    outlined destroy of PhysicsFixedJoint(&v42);
    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreateFixedJoint();
LABEL_21:

    return Strong;
  }

  outlined init with copy of __REAssetService(a1, v52);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsSphericalJoint(&v32, &v42);
    __asm { FMOV            V8.2S, #-1.0 }

    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreateSphericalJoint();
    outlined destroy of PhysicsSphericalJoint(&v42);
    goto LABEL_21;
  }

  v40 = 0u;
  memset(v41, 0, 29);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation21PhysicsSphericalJointVSgMd, &_s17RealityFoundation21PhysicsSphericalJointVSgMR);
  outlined init with copy of __REAssetService(a1, v52);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsRevoluteJoint(&v32, &v42);
    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreateRevoluteJoint();
    outlined destroy of PhysicsRevoluteJoint(&v42);
    goto LABEL_21;
  }

  v40 = 0u;
  memset(v41, 0, 29);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation20PhysicsRevoluteJointVSgMd, &_s17RealityFoundation20PhysicsRevoluteJointVSgMR);
  outlined init with copy of __REAssetService(a1, v52);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsPrismaticJoint(&v32, &v42);
    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreatePrismaticJoint();
    outlined destroy of PhysicsPrismaticJoint(&v42);
    goto LABEL_21;
  }

  v40 = 0u;
  memset(v41, 0, 29);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation21PhysicsPrismaticJointVSgMd, &_s17RealityFoundation21PhysicsPrismaticJointVSgMR);
  outlined init with copy of __REAssetService(a1, v52);
  if (swift_dynamicCast())
  {
    outlined init with take of PhysicsDistanceJoint(&v32, &v42);
    String.utf8CString.getter();

    String.utf8CString.getter();

    Strong = REPhysicsJointDefinitionCreateDistanceJoint();
    outlined destroy of PhysicsDistanceJoint(&v42);
    goto LABEL_21;
  }

  memset(v41, 0, 32);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation20PhysicsDistanceJointVSgMd, &_s17RealityFoundation20PhysicsDistanceJointVSgMR);
  outlined init with copy of __REAssetService(a1, v52);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v40 = 0u;
    memset(v41, 0, 89);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    outlined destroy of BodyTrackingComponent?(&v32, &_s17RealityFoundation18PhysicsCustomJointVSgMd, &_s17RealityFoundation18PhysicsCustomJointVSgMR);
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v25 = 1;
    v25[1] = 0;
    v18 = v25 + 4;
    v25[2] = 0;
    v25[3] = 0;
    goto LABEL_6;
  }

  result = outlined init with take of PhysicsCustomJoint(&v32, &v42);
  if (v45 != 1)
  {
    v26 = v43;
    if (v43 <= v44)
    {
      if (v43 >= -6.2832)
      {
        if (v43 <= 6.2832)
        {
          v27 = -6.2832;
          if (v44 >= -6.2832)
          {
            v27 = 6.2832;
            if (v44 <= 6.2832)
            {
              v27 = v44;
            }
          }
        }

        else
        {
          if (v44 < -6.2832)
          {
            goto LABEL_67;
          }

          v26 = 6.2832;
          v27 = v44;
          if (v44 > 6.2832)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        if (v44 < -6.2832)
        {
          goto LABEL_36;
        }

        v27 = 6.2832;
        if (v44 <= 6.2832)
        {
          v27 = v44;
        }

        v26 = -6.2832;
      }

      if (v26 <= v27)
      {
        goto LABEL_36;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }
  }

LABEL_36:
  if (v48 != 1)
  {
    v28 = v46;
    if (v46 <= v47)
    {
      if (v46 >= -6.2832)
      {
        if (v46 <= 6.2832)
        {
          v29 = -6.2832;
          if (v47 >= -6.2832)
          {
            v29 = 6.2832;
            if (v47 <= 6.2832)
            {
              v29 = v47;
            }
          }
        }

        else
        {
          if (v47 < -6.2832)
          {
            goto LABEL_68;
          }

          v28 = 6.2832;
          v29 = v47;
          if (v47 > 6.2832)
          {
            goto LABEL_51;
          }
        }

LABEL_50:
        if (v28 <= v29)
        {
          goto LABEL_51;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (v47 >= -6.2832)
      {
        v29 = 6.2832;
        if (v47 <= 6.2832)
        {
          v29 = v47;
        }

        v28 = -6.2832;
        goto LABEL_50;
      }
    }
  }

LABEL_51:
  if (v51 == 1)
  {
    goto LABEL_66;
  }

  v30 = v49;
  if (v49 > v50)
  {
    goto LABEL_66;
  }

  if (v49 >= -6.2832)
  {
    if (v49 <= 6.2832)
    {
      v31 = -6.2832;
      if (v50 >= -6.2832)
      {
        v31 = 6.2832;
        if (v50 <= 6.2832)
        {
          v31 = v50;
        }
      }
    }

    else
    {
      if (v50 < -6.2832)
      {
        goto LABEL_69;
      }

      v30 = 6.2832;
      v31 = v50;
      if (v50 > 6.2832)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    if (v50 < -6.2832)
    {
LABEL_66:
      String.utf8CString.getter();

      String.utf8CString.getter();

      Strong = REPhysicsJointDefinitionCreateCustomJoint();
      outlined destroy of PhysicsCustomJoint(&v42);
      goto LABEL_21;
    }

    v31 = 6.2832;
    if (v50 <= 6.2832)
    {
      v31 = v50;
    }

    v30 = -6.2832;
  }

  if (v30 <= v31)
  {
    goto LABEL_66;
  }

LABEL_69:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError()
{
  result = lazy protocol witness table cache variable for type PhysicsJointError and conformance PhysicsJointError;
  if (!lazy protocol witness table cache variable for type PhysicsJointError and conformance PhysicsJointError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhysicsJointError, &type metadata for PhysicsJointError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJointError and conformance PhysicsJointError);
  }

  return result;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  swift_weakDestroy();

  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v1, a1, 15);
}

uint64_t specialized static PhysicsJointCreator.addToSimulation(_:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 16))(v10, v3, v4);
  Strong = swift_weakLoadStrong();
  outlined destroy of GeometricPin(v10);
  if (Strong)
  {
    specialized static PhysicsJointCreator.findNearestOrAddPhysicsJointsComponent(for:)(Strong);
    v3 = v6;
    specialized static PhysicsJointCreator.verifyData(_:)(a1);
    if (!v1)
    {
      specialized static PhysicsJointCreator.createCoreJointDefinition(fromDefinition:jointsComponentEntity:)(a1);
      REPhysicsJointsComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REPhysicsJointsComponentAddPhysicsJointDefinition();
        RERelease();

        return v3;
      }

      lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
      swift_allocError();
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 4;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type PhysicsJointError and conformance PhysicsJointError();
    swift_allocError();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 4;
    swift_willThrow();
  }

  return v3;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation17PhysicsJointErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsJointError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for PhysicsJointError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PhysicsJointError(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t EnvironmentLightingConfigurationComponent.__toCore(_:)(void *a1)
{
  REEnvironmentLightingConfigurationComponentSetEnvironmentLightingWeight();

  return RENetworkMarkComponentDirty();
}

uint64_t protocol witness for Component.__toCore(_:) in conformance EnvironmentLightingConfigurationComponent(void *a1)
{
  REEnvironmentLightingConfigurationComponentSetEnvironmentLightingWeight();

  return RENetworkMarkComponentDirty();
}

uint64_t AudioPlaybackController.deinit()
{
  MEMORY[0x1C68F72F0](*(v0 + 32), *(v0 + 48));
  RENetworkMarkComponentDirty();

  swift_weakDestroy();

  return v0;
}

uint64_t AudioPlaybackController.__deallocating_deinit()
{
  MEMORY[0x1C68F72F0](*(v0 + 32), *(v0 + 48));
  RENetworkMarkComponentDirty();

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t key path getter for AudioPlaybackController.completionHandler : AudioPlaybackController@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIg_Ieg_TRTA_0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4, v5);
}

uint64_t key path setter for AudioPlaybackController.completionHandler : AudioPlaybackController(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(*a2 + 16);
  v8 = *(v7 + 112);
  v9 = *(v7 + 120);
  *(v7 + 112) = v6;
  *(v7 + 120) = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v3, v4);

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t AudioPlaybackController.completionHandler.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v2, *(v1 + 120));
  return v2;
}

uint64_t AudioPlaybackController.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v4, v5);
}

uint64_t (*AudioPlaybackController.completionHandler.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  *a1 = v4;
  a1[1] = v5;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4, v5);
  return AudioPlaybackController.completionHandler.modify;
}

uint64_t AudioPlaybackController.completionHandler.modify(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = *a1;
  *(v2 + 120) = v3;
  if (a2)
  {
    outlined copy of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v4, v3);
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
    v7 = v4;
    v8 = v3;
  }

  else
  {
    v7 = v5;
    v8 = v6;
  }

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
}

uint64_t (*AudioPlaybackController.speed.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  *a1 = MEMORY[0x1C68F71F0]();
  return AudioPlaybackController.speed.modify;
}

uint64_t (*AudioPlaybackController.gain.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  REAudioPlayerComponentGetDecibelGainForToken();
  *a1 = v4;
  return AudioPlaybackController.gain.modify;
}

Swift::Void __swiftcall AudioPlaybackController.fade(to:duration:)(Swift::Double to, Swift::Double duration)
{
  REAudioPlayerComponentFadeTokenToGainWithDuration();

  RENetworkMarkComponentDirty();
}

uint64_t (*AudioPlaybackController.reverbSendLevel.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  *a1 = MEMORY[0x1C68F7200]();
  return AudioPlaybackController.reverbSendLevel.modify;
}

uint64_t key path setter for AudioPlaybackController.speed : AudioPlaybackController(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, float (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, void, float))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *(*a2 + 32);
  v10 = (a5)(v9, *(*a2 + 48), a3, a4);
  v11 = v7;
  result = a6(v9, *(v8 + 48), v11);
  if (v7 != v10)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

uint64_t AudioPlaybackController.speed.setter(float (*a1)(uint64_t, void), uint64_t (*a2)(uint64_t, void, float), double a3)
{
  v6 = *(v3 + 32);
  v7 = a1(v6, *(v3 + 48));
  v8 = a3;
  result = a2(v6, *(v3 + 48), v8);
  if (v7 != a3)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

uint64_t (*AudioPlaybackController.directSendLevel.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  *a1 = MEMORY[0x1C68F71E0]();
  return AudioPlaybackController.directSendLevel.modify;
}

uint64_t AudioPlaybackController.speed.modify(uint64_t a1, uint64_t a2, float (*a3)(uint64_t, void), uint64_t (*a4)(uint64_t, void, float))
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a1;
  v8 = a3(v5, *(v6 + 48));
  v9 = v7;
  result = a4(v5, *(v6 + 48), v9);
  if (v7 != v8)
  {

    return RENetworkMarkComponentDirty();
  }

  return result;
}

Swift::Void __swiftcall AudioPlaybackController.play()()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong() && (v2 = specialized HasHierarchy.parent.getter(), , v2))
  {

    v3 = *(v0 + 48);
    if (!v3)
    {
LABEL_4:
      v4 = static os_log_type_t.error.getter();
      type metadata accessor for OS_os_log();
      v5 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v4, &dword_1C1358000, v5, "Invalid playback token in the AudioPlaybackController", 53, 2, MEMORY[0x1E69E7CC0]);

      return;
    }
  }

  else
  {
    v6 = static os_log_type_t.info.getter();
    type metadata accessor for OS_os_log();
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v6, &dword_1C1358000, v7, "Warning: Entity has no parent. Playback will only start when the entity is in a scene and active.", 97, 2, MEMORY[0x1E69E7CC0]);

    v3 = *(v1 + 48);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  type metadata accessor for AudioUnitResource();
  if (!swift_dynamicCastClass())
  {
    if (one-time initialization token for playingControllers != -1)
    {
      swift_once();
      v3 = *(v1 + 48);
    }

    v8 = *(v1 + 16);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = static AudioPlaybackController.playingControllers;
    static AudioPlaybackController.playingControllers = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v3, isUniquelyReferenced_nonNull_native);
    static AudioPlaybackController.playingControllers = v10;
    swift_endAccess();
  }

  REAudioPlayerComponentPlayToken();
  RENetworkMarkComponentDirty();
}

uint64_t AudioPlaybackController.pause()(void (*a1)(uint64_t, void))
{
  a1(*(v1 + 32), *(v1 + 48));

  return RENetworkMarkComponentDirty();
}

uint64_t AudioPlaybackController.__playbackPosition.setter()
{
  MEMORY[0x1C68F7300](*(v0 + 32), *(v0 + 48));

  return RENetworkMarkComponentDirty();
}

uint64_t (*AudioPlaybackController.__playbackPosition.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 32);
  *(a1 + 8) = v1;
  *(a1 + 16) = v3;
  *a1 = MEMORY[0x1C68F7250]();
  return AudioPlaybackController.__playbackPosition.modify;
}

uint64_t AudioPlaybackController.__playbackPosition.modify(uint64_t a1)
{
  MEMORY[0x1C68F7300](*(a1 + 16), *(*(a1 + 8) + 48), *a1);

  return RENetworkMarkComponentDirty();
}

uint64_t AudioPlaybackController.parentTimebase.getter()
{
  v0 = REAudioPlayerComponentCopySourceClockOrTimebase();
  v1 = CFGetTypeID(v0);
  if (v1 == CMTimebaseGetTypeID())
  {
    type metadata accessor for CMTimebaseRef(0);
    return swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t key path getter for AudioPlaybackController.parentTimebase : AudioPlaybackController@<X0>(uint64_t *a2@<X8>)
{
  v3 = REAudioPlayerComponentCopySourceClockOrTimebase();
  v4 = CFGetTypeID(v3);
  if (v4 == CMTimebaseGetTypeID())
  {
    type metadata accessor for CMTimebaseRef(0);
    result = swift_dynamicCastUnknownClassUnconditional();
  }

  else
  {
    swift_unknownObjectRelease();
    result = 0;
  }

  *a2 = result;
  return result;
}

void key path setter for AudioPlaybackController.parentTimebase : AudioPlaybackController(id *a1, uint64_t a2)
{
  if (*a1)
  {
    v2 = *a1;
    REAudioPlayerComponentSetSourceClockOrTimebase();
    RENetworkMarkComponentDirty();
  }
}

void AudioPlaybackController.audioUnit.getter()
{
  if (*(*(v0 + 16) + 56))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMd, &_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMR);
    lazy protocol witness table accessor for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>();
    Publisher.eraseToAnyPublisher()();
  }

  else
  {
    __break(1u);
  }
}

BOOL AudioPlaybackController.__audioUnitIsLoaded.getter()
{
  v1 = *(*(v0 + 16) + 56);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = *(v2 + 16);

    os_unfair_lock_lock(v3 + 4);
    swift_beginAccess();
    v4 = *(v2 + 32);
    v7 = v2 + 16;
    v6 = *(v2 + 16);
    v5 = *(v7 + 8);
    outlined copy of Result<AUAudioUnit, Error>?(v5, v4);
    os_unfair_lock_unlock(v6 + 4);

    if (v4 != 255)
    {
      outlined consume of Result<AUAudioUnit, Error>?(v5, v4);
    }

    return v4 != 255;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AudioPlaybackController.seek(to:)(uint64_t a1, uint64_t a2)
{
  v3 = Duration.components.getter();
  Duration.components.getter();
  MEMORY[0x1C68F7300](*(v2 + 32), *(v2 + 48), v4 * 1.0e-18 + v3);

  return RENetworkMarkComponentDirty();
}

void *AudioPlaybackController.Internal.createAudioPlaybackController()()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  v3 = *(v0 + 32);
  type metadata accessor for AudioPlaybackController();
  swift_allocObject();

  v4 = v0;
  v5 = specialized AudioPlaybackController.init(resource:entity:)(v3, v2);

  v6 = *(v4 + 16);
  v7 = *(v4 + 48);
  REAudioPlayerComponentGetDecibelGainForToken();
  v9 = v8;
  REAudioPlayerComponentGetDecibelGainForToken();
  v11 = v10;
  REAudioPlayerComponentSetDecibelGainForToken();
  if (v9 != v11)
  {
    RENetworkMarkComponentDirty();
  }

  v12 = MEMORY[0x1C68F71F0](v6, v7);
  v13 = MEMORY[0x1C68F71F0](v5[4], v5[6]);
  REAudioPlayerComponentSetPlaybackRateForToken();
  if (v12 != v13)
  {
    RENetworkMarkComponentDirty();
  }

  v14 = MEMORY[0x1C68F7200](v6, v7);
  v15 = MEMORY[0x1C68F7200](v5[4], v5[6]);
  REAudioPlayerComponentSetReverbSendLevelForToken();
  if (v14 != v15)
  {
    RENetworkMarkComponentDirty();
  }

  v16 = MEMORY[0x1C68F71E0](v6, v7);
  v17 = MEMORY[0x1C68F71E0](v5[4], v5[6]);
  REAudioPlayerComponentSetDirectSendLevelForToken();
  if (v16 != v17)
  {
    RENetworkMarkComponentDirty();
  }

  return v5;
}

uint64_t closure #1 in AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48) == a2 && a4 <= 5 && ((1 << a4) & 0x2D) != 0 && (REAudioPlayerComponentIsStreamPendingPlay() & 1) == 0)
    {
      if (one-time initialization token for playingControllers != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      specialized Dictionary._Variant.removeValue(forKey:)(a2);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @unowned REAudioPlaybackState, @unowned REAudioPlaybackState) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

void closure #2 in AudioPlaybackController.Internal.init(component:entity:resource:token:)(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = REAudioPlayerComponentGetAudioUnitForToken();
  if (v7)
  {
    v8 = v7;

    v16 = v8;
    LOBYTE(v17) = 0;
    v9 = v8;
    a1(&v16);
  }

  else
  {
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TextureResource, Error>) -> ();
    v11[4] = v6;
    v20 = partial apply for closure #1 in closure #2 in AudioPlaybackController.Internal.init(component:entity:resource:token:);
    v21 = v11;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @guaranteed AUAudioUnit?, @guaranteed Error?) -> ();
    v19 = &block_descriptor_76;
    v12 = _Block_copy(&v16);

    v13 = REAudioPlayerComponentSetDidPrepareAudioUnitCallback();
    v15 = v14;
    _Block_release(v12);
    *(a3 + 88) = v13;
    *(a3 + 96) = v15;
    *(a3 + 104) = 0;
  }
}

uint64_t closure #1 in closure #2 in AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void *, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 48) == a2)
    {
      v11 = (result + 88);
      if ((*(result + 104) & 1) == 0)
      {
        if (a4)
        {
          v12 = result;
          v13 = a4;
          a6(a4, 1);
          v14 = v12;
          REAudioPlayerComponentRemoveCallback();
        }

        else
        {
          if (!a3)
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v14 = result;
          v15 = a3;
          a6(a3, 0);
          REAudioPlayerComponentRemoveCallback();
        }

        *v11 = 0;
        v11[1] = 0;
        *(v14 + 104) = 1;
      }
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @guaranteed AUAudioUnit?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v11 = a4;
  v10 = a5;
  v9(a2, a3, a4, a5);
}

uint64_t handler #1 (token:) in AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1)
{
  if (one-time initialization token for playingControllers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static AudioPlaybackController.playingControllers;
  if (!*(static AudioPlaybackController.playingControllers + 16))
  {
    return swift_endAccess();
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return swift_endAccess();
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  result = swift_endAccess();
  v7 = *(v5 + 112);
  if (v7)
  {
    v8 = *(v5 + 120);

    v7(v9);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);
  }

  return result;
}

uint64_t removeFromSceneCallback #1 (token:) in AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1)
{
  if (one-time initialization token for playingControllers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v3)
  {
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = static AudioPlaybackController.playingControllers;
    v8 = static AudioPlaybackController.playingControllers;
    static AudioPlaybackController.playingControllers = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v6 = v8;
    }

    specialized _NativeDictionary._delete(at:)(v4, v6);
    static AudioPlaybackController.playingControllers = v6;
  }

  return swift_endAccess();
}

uint64_t AudioPlaybackController.Internal.deinit()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    REAudioPlayerComponentRemoveCallback();
  }

  if ((*(v0 + 104) & 1) == 0)
  {
    REAudioPlayerComponentRemoveCallback();
  }

  MEMORY[0x1C68F7170](*(v0 + 16), *(v0 + 48));
  RENetworkMarkComponentDirty();
  RERelease();
  swift_weakDestroy();

  swift_weakDestroy();

  outlined consume of (@escaping @callee_guaranteed () -> ())?(*(v0 + 112), *(v0 + 120));
  return v0;
}

uint64_t AudioPlaybackController.Internal.__deallocating_deinit()
{
  AudioPlaybackController.Internal.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>()
{
  result = lazy protocol witness table cache variable for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>;
  if (!lazy protocol witness table cache variable for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMd, &_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMR);
    result = swift_getWitnessTable(protocol conformance descriptor for LoadRequest<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type LoadRequest<AUAudioUnit> and conformance LoadRequest<A>);
  }

  return result;
}

id outlined copy of Result<AUAudioUnit, Error>?(id a1, char a2)
{
  if (a2 != -1)
  {
    return outlined copy of Result<AUAudioUnit, Error>(a1);
  }

  return a1;
}

double keypath_get_7Tm@<D0>(uint64_t a1@<X0>, float (*a2)(void, void)@<X3>, double *a3@<X8>)
{
  result = a2(*(*a1 + 32), *(*a1 + 48));
  *a3 = result;
  return result;
}

uint64_t specialized AudioPlaybackController.Internal.init(component:entity:resource:token:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_weakInit();
  swift_weakInit();
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 1;
  *(v5 + 88) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v5 + 16) = a1;
  swift_weakAssign();
  *(v5 + 32) = a3;
  *(v5 + 48) = a4;
  v9 = swift_allocObject();
  swift_weakInit();
  v19[4] = partial apply for closure #1 in AudioPlaybackController.Internal.init(component:entity:resource:token:);
  v19[5] = v9;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer, @unowned UInt64, @unowned REAudioPlaybackState, @unowned REAudioPlaybackState) -> ();
  v19[3] = &block_descriptor_6;
  v10 = _Block_copy(v19);

  v11 = REAudioPlayerComponentAddDidChangeStateCallback();
  v13 = v12;
  _Block_release(v10);
  *(v5 + 64) = v11;
  *(v5 + 72) = v13;
  *(v5 + 80) = 0;
  type metadata accessor for AudioUnitResource();
  if (swift_dynamicCastClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMd, &_s10RealityKit11LoadRequestCySo11AUAudioUnitCGMR);
    v14 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOySo11AUAudioUnitCs5Error_pGSgGMd, &_s17RealityFoundation24LoadRequestAllocatedLock33_6AA91A85AECC85EF216D9CC8FE978720LLCys6ResultOySo11AUAudioUnitCs5Error_pGSgGMR);
    v15 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v15 + 16) = v16;
    *(v15 + 24) = 0;
    *(v15 + 32) = -1;
    *(v14 + 16) = v15;
    v17 = swift_allocObject();
    v17[2] = partial apply for closure #2 in AudioPlaybackController.Internal.init(component:entity:resource:token:);
    v17[3] = v5;
    v17[4] = v15;
    v17[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo11AUAudioUnitCs5Error_pGMd, &_s7Combine6FutureCySo11AUAudioUnitCs5Error_pGMR);
    swift_allocObject();

    *(v14 + 24) = Future.init(_:)();
    *(v5 + 56) = v14;
  }

  REAudioPlayerComponentSetCompletionHandler();
  REAudioPlayerComponentSetRemoveFromSceneCallback();
  return v5;
}

void *specialized AudioPlaybackController.init(resource:entity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_weakInit();
  v2[5] = a1;
  v2[6] = 0;
  swift_beginAccess();
  swift_weakAssign();

  REAudioPlayerComponentGetComponentType();
  v2[4] = REEntityGetOrAddComponentByClass();
  RERetain();
  v6 = REAudioPlayerComponentPrepareAsset();
  v3[6] = v6;
  v7 = v3[4];
  type metadata accessor for AudioPlaybackController.Internal();
  swift_allocObject();

  v8 = specialized AudioPlaybackController.Internal.init(component:entity:resource:token:)(v7, a2, a1, v6);

  v3[2] = v8;
  swift_weakAssign();
  RENetworkMarkComponentDirty();
  return v3;
}

void *specialized static AudioPlaybackController.audioPlaybackControllerForToken(token:)(uint64_t a1)
{
  if (one-time initialization token for playingControllers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(static AudioPlaybackController.playingControllers + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v2 & 1) != 0))
  {
    swift_endAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      return result;
    }

    v4 = AudioPlaybackController.Internal.createAudioPlaybackController()();
    if (v4)
    {
      v5 = v4;

      return v5;
    }

    v8 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v8, &dword_1C1358000, v7, "Unable to locate parent Entity for AudioPlaybackController", 58, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    swift_endAccess();
    v6 = static os_log_type_t.error.getter();
    type metadata accessor for OS_os_log();
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v6, &dword_1C1358000, v7, "Unable to locate AudioPlaybackController in playing controllers", 63, 2, MEMORY[0x1E69E7CC0]);
  }

  return 0;
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t __ResolvedRealityCoordinateSpace.entity.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double Entity._resolve(in:)@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

double protocol witness for RealityCoordinateSpace._resolve(in:) in conformance Entity@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

double CameraRealityCoordinateSpace._resolve(in:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

RealityFoundation::LowLevelBuffer::Descriptor __swiftcall LowLevelBuffer.Descriptor.init(capacity:sizeMultiple:)(Swift::Int capacity, Swift::Int sizeMultiple)
{
  *v2 = capacity;
  v2[1] = sizeMultiple;
  result.sizeMultiple = sizeMultiple;
  result.capacity = capacity;
  return result;
}

__n128 LowLevelBuffer.descriptor.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t (*LowLevelBuffer.bytesUsed.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = DRBufferGetBytesUsed();
  return LowLevelBuffer.bytesUsed.modify;
}

uint64_t LowLevelBuffer.__allocating_init(descriptor:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LowLevelBuffer.init(descriptor:)(a1);
  return v2;
}

void LowLevelBuffer.init(descriptor:)(uint64_t *a1)
{
  v2 = v1;
  v24 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  v5 = DRBufferDescriptorCreate();
  if (v3 < 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v6 = v5;
  DRBufferDescriptorSetCapacity();
  if (v4 < 0)
  {
    goto LABEL_11;
  }

  DRBufferDescriptorSetSizeMultiple();
  v23 = 0;
  v7 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v8 = MEMORY[0x1C68FE220](*(v7 + 16));
  if (v8)
  {
    v9 = v8;
    Buffer = DRContextCreateBuffer();
  }

  else
  {
    v13 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __RenderService?(v13 + 40, &v18);
    if (!v19)
    {
      __break(1u);
      goto LABEL_13;
    }

    outlined init with take of ForceEffectBase(&v18, v20);
    v14 = v21;
    v15 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v15 + 24))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v16 = RERenderManagerGetRenderDevice();
    Buffer = DRBufferCreateUnmanaged();
    swift_unknownObjectRelease();
    v17 = v23;
    if (v23)
    {
      type metadata accessor for CFErrorRef(0);
      lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      swift_allocError();
      *v11 = v17;
      swift_willThrow();
      v12 = v17;

      swift_deallocPartialClassInstance();
      return;
    }
  }

  v2[3] = v3;
  v2[4] = v4;
  if (Buffer)
  {

    v2[2] = Buffer;
    return;
  }

LABEL_13:
  __break(1u);
}

void LowLevelBuffer.init(coreBuffer:)(void *a1)
{
  v1[2] = a1;
  v2 = a1;
  v3 = DRBufferCopyDescriptor();
  Capacity = DRBufferDescriptorGetCapacity();

  if (Capacity < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = DRBufferCopyDescriptor();
    SizeMultiple = DRBufferDescriptorGetSizeMultiple();

    if ((SizeMultiple & 0x8000000000000000) == 0)
    {
      v1[3] = Capacity;
      v1[4] = SizeMultiple;
      return;
    }
  }

  __break(1u);
}

uint64_t LowLevelBuffer.withUnsafeBytes(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelBuffer.withUnsafeBytes(_:);
  *(v7 + 24) = v6;
  v11[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ();
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned UInt) -> ();
  v11[3] = &block_descriptor_7;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRBufferRead();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelBuffer.withUnsafeMutableBytes(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelBuffer.withUnsafeMutableBytes(_:);
  *(v7 + 24) = v6;
  v11[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  v11[3] = &block_descriptor_13;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRBufferUpdate();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t LowLevelBuffer.replaceUnsafeMutableBytes(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in LowLevelBuffer.replaceUnsafeMutableBytes(_:);
  *(v7 + 24) = v6;
  v11[4] = thunk for @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ()partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer, @unowned UInt) -> ();
  v11[3] = &block_descriptor_23;
  v8 = _Block_copy(v11);
  v9 = v5;

  DRBufferReplace();

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in LowLevelBuffer.withUnsafeBytes(_:)(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return a3(result, result + a2);
  }

  __break(1u);
  return result;
}

id LowLevelBuffer.read(using:)(uint64_t a1)
{
  Using = DRBufferReadUsing();

  return Using;
}

id LowLevelBuffer.replace(using:)(uint64_t a1)
{
  v1 = DRBufferReplaceUsing();

  return v1;
}

uint64_t LowLevelBuffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef()
{
  result = lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef;
  if (!lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef)
  {
    type metadata accessor for CFErrorRef(255);
    result = swift_getWitnessTable(MEMORY[0x1E6969E70], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef);
  }

  return result;
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in LowLevelBuffer.withUnsafeBytes(_:)(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return (*(v2 + 16))(result, result + a2);
  }

  __break(1u);
  return result;
}

uint64_t (*CustomMaterial.GeometryModifier.constantValues.modify(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return CustomMaterial.GeometryModifier.constantValues.modify;
}

uint64_t CustomMaterial.GeometryModifier.init(named:in:constantValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  return CustomMaterial.GeometryModifier.init(named:in:constantValues:)(a1, a2, a3, a4, a6);
}

{
  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  ServicesToUpdate = REEngineConfigurationGetServicesToUpdate();

  if ((ServicesToUpdate & 0x10) != 0)
  {
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = 0;
    *(a6 + 32) = a4;
    *(a6 + 40) = 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*CustomMaterial.SurfaceShader.constantValues.modify(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return CustomMaterial.SurfaceShader.constantValues.modify;
}

uint64_t (*protocol witness for MaterialFunction.constantValues.modify in conformance CustomMaterial.GeometryModifier(void *a1))()
{
  v2 = *(v1 + 32);
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return CustomMaterial.GeometryModifier.constantValues.modify;
}

void CustomMaterial.GeometryModifier.constantValues.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *(v2 + 32) = v5;
  }

  else
  {

    *(v2 + 32) = v4;
  }
}

uint64_t PlayAnimationAction.animationName.getter()
{
  v1 = *v0;

  return v1;
}

void PlayAnimationAction.animationName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t PlayAnimationAction.targetEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of ActionEntityResolution(v2, v3, v4);
}

void PlayAnimationAction.targetEntity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  outlined consume of ActionEntityResolution(*(v1 + 40), *(v1 + 48), *(v1 + 56));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
}

uint64_t (*PlayAnimationAction.parentControllers.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 57);
  return PlayAnimationAction.parentControllers.modify;
}

__n128 PlayAnimationAction.init(animationName:targetEntity:transitionDuration:blendLayer:separateAnimatedValue:useParentedControllers:handoffType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v9 = a3[1].n128_u8[0];
  v10 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = v10;
  *(a8 + 57) = a6;
  result = *a3;
  *(a8 + 40) = *a3;
  *(a8 + 56) = v9;
  return result;
}

__n128 PlayAnimationAction.init(animationName:targetEntity:transitionDuration:blendLayer:separateAnimatedValue:parentControllers:handoffType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v9 = a3[1].n128_u8[0];
  v10 = *a7;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a9;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = v10;
  result = *a3;
  *(a8 + 40) = *a3;
  *(a8 + 56) = v9;
  *(a8 + 57) = a6;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlayAnimationAction.CodingKeys()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000012;
    if (v1 != 1)
    {
      v5 = 0x79614C646E656C62;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F6974616D696E61;
    }
  }

  else
  {
    v2 = 0x6E45746567726174;
    if (v1 != 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0x5466666F646E6168;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlayAnimationAction.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PlayAnimationAction.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlayAnimationAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlayAnimationAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlayAnimationAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation19PlayAnimationActionV10CodingKeys33_88779308CF53CA2B5E6F5A30D53A9BB7LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation19PlayAnimationActionV10CodingKeys33_88779308CF53CA2B5E6F5A30D53A9BB7LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v20 = *(v1 + 24);
  v7 = *(v1 + 32);
  v18 = *(v1 + 33);
  v19 = v7;
  v8 = *(v1 + 40);
  v16 = *(v1 + 48);
  v17 = v8;
  LODWORD(v8) = *(v1 + 56);
  v14[2] = *(v1 + 57);
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v9 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v9)
  {
    v10 = v18;
    v12 = v16;
    v11 = v17;
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = v10;
    v25 = 4;
    lazy protocol witness table accessor for type AnimationHandoffType and conformance AnimationHandoffType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v11;
    v23 = v12;
    v24 = v15;
    v25 = 5;
    outlined copy of ActionEntityResolution(v11, v12, v15);
    lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of ActionEntityResolution(v22, v23, v24);
    LOBYTE(v22) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlayAnimationAction.CodingKeys, &unk_1F40F5330, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlayAnimationAction.CodingKeys, &unk_1F40F5330, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlayAnimationAction.CodingKeys, &unk_1F40F5330, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlayAnimationAction.CodingKeys, &unk_1F40F5330, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType and conformance AnimationHandoffType()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType, &type metadata for AnimationHandoffType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType, &type metadata for AnimationHandoffType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType and conformance AnimationHandoffType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution()
{
  result = lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution;
  if (!lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEntityResolution, &type metadata for ActionEntityResolution, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution;
  if (!lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionEntityResolution, &type metadata for ActionEntityResolution, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionEntityResolution and conformance ActionEntityResolution);
  }

  return result;
}

void PlayAnimationAction.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation19PlayAnimationActionV10CodingKeys33_88779308CF53CA2B5E6F5A30D53A9BB7LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation19PlayAnimationActionV10CodingKeys33_88779308CF53CA2B5E6F5A30D53A9BB7LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlayAnimationAction.CodingKeys and conformance PlayAnimationAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v32) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v12 = v9;
    LOBYTE(v32) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    LOBYTE(v32) = 2;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v32) = 3;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v29) = 4;
    lazy protocol witness table accessor for type AnimationHandoffType and conformance AnimationHandoffType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v32;
    LOBYTE(v29) = 5;
    lazy protocol witness table accessor for type ActionEntityResolution and conformance ActionEntityResolution();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v32;
    v25 = v33;
    v43 = v34;
    v42 = 6;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 &= 1u;
    (*(v6 + 8))(v8, v5);
    v23 = v15 & 1;
    *&v29 = v12;
    *(&v29 + 1) = v11;
    *&v30 = v14;
    v16 = v28;
    *(&v30 + 1) = v28;
    v17 = v26;
    v31[0] = v27;
    v31[1] = v26;
    v19 = v24;
    v18 = v25;
    *&v31[8] = v24;
    *&v31[16] = v25;
    v22 = v43;
    v31[24] = v43;
    v31[25] = v23;
    v20 = v30;
    *a2 = v29;
    a2[1] = v20;
    a2[2] = *v31;
    *(a2 + 42) = *&v31[10];
    outlined init with copy of PlayAnimationAction(&v29, &v32);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v32 = v12;
    v33 = v11;
    v34 = v14;
    v35 = v16;
    v36 = v27;
    v37 = v17;
    v38 = v19;
    v39 = v18;
    v40 = v22;
    v41 = v23;
    outlined destroy of PlayAnimationAction(&v32);
  }
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlayAnimationAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
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

uint64_t storeEnumTagSinglePayload for PlayAnimationAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void PlayAnimationActionHandler.triggerAnimation(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  *v51 = *(a1 + 42);
  *&v51[15] = *(a1 + 57);
  v9 = *(a1 + 65);
  *v53 = *(a1 + 66);
  *&v53[14] = *(a1 + 80);
  v10 = *(a1 + 96);
  v55 = *(a1 + 104);
  v56 = *(a1 + 120);
  v57 = *(a1 + 136);
  v11 = *(a1 + 152);
  v12 = *(a1 + 160);
  v43 = v2;
  v44 = v2;
  v45 = v3;
  v46 = v4;
  v47 = *&v5;
  v48 = v6;
  v49 = v7;
  v50 = v8;
  v52 = v9;
  v54 = v10;
  v58 = v11;
  v59 = v12;
  v61 = *(a1 + 177);
  v60 = *(a1 + 161);
  *(v64 + 15) = *(a1 + 240);
  v64[0] = *(a1 + 225);
  v63 = *(a1 + 209);
  v62 = *(a1 + 193);
  if (!specialized PlayAnimationActionHandler.getTargetEntity(event:)(&v44))
  {
    return;
  }

  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation016AnimationLibraryD0V_Tt0B5(&v44);

  if (v44 != 1)
  {
    v39 = v46;
    v40 = v44;
    v37 = v1;
    v38 = v45;
    v41 = v47;
    v42 = v48;
    if (!AnimationLibraryComponent.animationResource(_:)(v3, v4))
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19PlayAnimationActionVmMd, &_s17RealityFoundation19PlayAnimationActionVmMR);
      v25 = String.init<A>(describing:)();
      MEMORY[0x1C68F3410](v25);

      MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E1E20);
      MEMORY[0x1C68F3410](v3, v4);
      MEMORY[0x1C68F3410](0xD000000000000021, 0x80000001C18E1E50);
      v23 = v44;
      v3 = v45;
      if (one-time initialization token for logger == -1)
      {
LABEL_15:
        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static AnimationLogger.logger);

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v44 = v30;
          *v29 = 136315138;
          *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v3, &v44);
          _os_log_impl(&dword_1C1358000, v27, v28, "%s", v29, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v30);
          MEMORY[0x1C6902A30](v30, -1, -1);
          MEMORY[0x1C6902A30](v29, -1, -1);
        }

        goto LABEL_38;
      }

LABEL_44:
      swift_once();
      goto LABEL_15;
    }

    REAnimationHandoffDefaultDescEx();
    v22 = v45;
    v23 = v8 >> 6;
    if (v8 >> 6 <= 1)
    {
      if (v23)
      {
        v23 = 1;
      }

      v24 = v8 ^ 1;
      if (!v6)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    if (v23 == 3)
    {
      if (!v6)
      {
        v36 = v45;
        v31 = v46;
        LODWORD(v23) = 0;
        goto LABEL_30;
      }

      goto LABEL_23;
    }

    if (v8 == 128)
    {
      if (v6)
      {
LABEL_23:
        v24 = 0;
        v23 = 2;
LABEL_26:
        if (v6 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v6 <= 0x7FFFFFFF)
        {
          v22 = v6;
LABEL_29:
          v36 = v22;
          v31 = v46;
          LOBYTE(v6) = v24;
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_44;
      }

      v36 = v45;
      v31 = v46;
      LODWORD(v23) = 2;
    }

    else
    {
      if (v6)
      {
        v24 = 0;
        v23 = 3;
        goto LABEL_26;
      }

      v36 = v45;
      v31 = v46;
      LODWORD(v23) = 3;
    }

LABEL_30:
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    LODWORD(v44) = v23;
    v32 = v5;
    *(&v44 + 1) = v32;
    LODWORD(v45) = v36;
    v46 = v31;
    LOBYTE(v47) = v6 & 1;
    v33 = REAnimationComponentPlay();
    type metadata accessor for AnimationPlaybackController();
    swift_allocObject();

    v35 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v34, v33, 1);

    *v37 = v35;
    if ((v12 & 1) == 0 && swift_weakLoadStrong())
    {
      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        REAnimationComponentSetCurrentPlaybackTime();
        RENetworkMarkComponentDirty();
      }
    }

    if (v9)
    {
      AnimationPlaybackController.setParent(parent:)(v43);
    }

LABEL_38:
    outlined consume of AnimationLibraryComponent?(v40, v38, v39, v41, v42);

    return;
  }

  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19PlayAnimationActionVmMd, &_s17RealityFoundation19PlayAnimationActionVmMR);
  v13 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v13);

  MEMORY[0x1C68F3410](0xD00000000000003ELL, 0x80000001C18E1DE0);
  REEntityGetName();
  v14 = String.init(cString:)();
  MEMORY[0x1C68F3410](v14);

  MEMORY[0x1C68F3410](11815, 0xE200000000000000);
  v16 = v44;
  v15 = v45;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static AnimationLogger.logger);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44 = v21;
    *v20 = 136315138;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v44);
    _os_log_impl(&dword_1C1358000, v18, v19, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1C6902A30](v21, -1, -1);
    MEMORY[0x1C6902A30](v20, -1, -1);
  }
}

uint64_t PlayAnimationActionHandler.actionEnded(event:)(uint64_t a1)
{
  if (*(a1 + 65) == 1 && *v1 && swift_weakLoadStrong())
  {
    REAnimationComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      REAnimationComponentStopAnimation();
      RENetworkMarkComponentDirty();
    }
  }

  *v1 = 0;
  return result;
}

uint64_t specialized PlayAnimationAction.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974616D696E61 && a2 == 0xED0000656D614E6ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18E1D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79614C646E656C62 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18E1DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5466666F646E6168 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E45746567726174 && a2 == 0xEC00000079746974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C18E1DC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized PlayAnimationActionHandler.getTargetEntity(event:)(uint64_t a1)
{
  if ((*(*a1 + 40) & 1) != 0 || (v1 = *(a1 + 48), v2 = *(a1 + 56), v3 = *(a1 + 64), (Strong = swift_weakLoadStrong()) == 0))
  {
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    MEMORY[0x1C68F3410](0x2072656C646E6148, 0xEC00000020726F66);
    v14[3] = &type metadata for PlayAnimationAction;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19PlayAnimationActionVmMd, &_s17RealityFoundation19PlayAnimationActionVmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x1C68F3410](v8);

    MEMORY[0x1C68F3410](0xD000000000000030, 0x80000001C18E1E80);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static AnimationLogger.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v14);
      _os_log_impl(&dword_1C1358000, v10, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1C6902A30](v13, -1, -1);
      MEMORY[0x1C6902A30](v12, -1, -1);
    }

    return 0;
  }

  else
  {
    v5 = Strong;
    v14[0] = v1;
    outlined copy of ActionEntityResolution(v1, v2, v3);
    v6 = ActionEntityResolution.resolve(from:)(v5);

    outlined consume of ActionEntityResolution(v14[0], v2, v3);
    return v6;
  }
}

double outlined consume of AnimationLibraryComponent?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != 1)
  {

    outlined consume of String??(a3, a4);
  }

  return result;
}

double outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10RealityKit17AudioFileResourceC0A10FoundationE5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for AudioFileResource.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioFileResource.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t destructiveInjectEnumTag for AudioFileResource.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type AudioFileResource.Error and conformance AudioFileResource.Error()
{
  result = lazy protocol witness table cache variable for type AudioFileResource.Error and conformance AudioFileResource.Error;
  if (!lazy protocol witness table cache variable for type AudioFileResource.Error and conformance AudioFileResource.Error)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AudioFileResource.Error, &type metadata for AudioFileResource.Error, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AudioFileResource.Error and conformance AudioFileResource.Error);
  }

  return result;
}

unint64_t AudioFileResource.Error.errorDescription.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(21);

    v5 = 0xD000000000000012;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(23);

    v5 = 0xD000000000000014;
LABEL_5:
    v7 = v5;
    MEMORY[0x1C68F3410](a1, a2);
    MEMORY[0x1C68F3410](46, 0xE100000000000000);
    return v7;
  }

  return 0x206E776F6E6B6E55;
}

double __REAssetManager.__allocating_init(handle:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 2;
  *(v2 + 96) = 514;
  *(v2 + 88) = a1;
  return result;
}

uint64_t static __REAsset.__fromHandleTransfer(_:)(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for __REAsset();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

void protocol witness for CodingKey.init(stringValue:) in conformance __REAssetIdentifier.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __REAssetIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAssetIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __REAssetIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t __REAssetIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance __REAssetIdentifier(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit19__REAssetIdentifierV10CodingKeys019_65F9A3124753291160J12C93A735AF52FLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static __REAsset.__fromHandle(_:)(void *a1)
{
  v1 = *a1;
  RERetain();
  type metadata accessor for __REAsset();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t __REAsset.debugDescription.getter()
{
  v0 = REAssetCopyDescription();

  return String.init(_:)(v0)._countAndFlagsBits;
}

uint64_t __REAsset.sanitizedDescription.getter()
{
  v0 = REAssetCopyDescription();

  return String.init(_:)(v0)._countAndFlagsBits;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __REAsset()
{
  v0 = REAssetCopyDescription();

  return String.init(_:)(v0)._countAndFlagsBits;
}

Swift::Int __REAsset.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t __REAssetManager.init(handle:)(uint64_t a1)
{
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 80) = 2;
  *(v1 + 96) = 514;
  *(v1 + 88) = a1;
  return v1;
}

unint64_t lazy protocol witness table accessor for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetIdentifier.CodingKeys, &unk_1F40F5708, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetIdentifier.CodingKeys, &unk_1F40F5708, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetIdentifier.CodingKeys, &unk_1F40F5708, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __REAssetIdentifier.CodingKeys, &unk_1F40F5708, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __REAssetIdentifier.CodingKeys and conformance __REAssetIdentifier.CodingKeys);
  }

  return result;
}

uint64_t __REAssetManager._mainBundle.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = outlined init with copy of __REAssetBundle?(v1 + 16, &v9);
  if (v9)
  {
    v4 = v10;
    *a1 = v9;
    *(a1 + 1) = v4;
    v5 = v12;
    *(a1 + 2) = v11;
    *(a1 + 3) = v5;
  }

  else
  {
    outlined destroy of __REAssetBundle?(&v9);
    *(&v10 + 1) = type metadata accessor for __REAssetManager();
    *&v11 = &protocol witness table for __REAssetManager;
    *&v9 = v1;
    outlined init with copy of __REAssetService(&v9, v8);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

    __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v6, v8, v7, 0, a1);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    outlined init with copy of __REAssetBundle(a1, &v9);
    swift_beginAccess();
    outlined assign with take of __REAssetBundle?(&v9, v1 + 16);
    return swift_endAccess();
  }

  return result;
}

id __REAssetManager.engineQueue.getter()
{
  EngineQueue = REAssetManagerGetEngineQueue();

  return EngineQueue;
}

uint64_t __REAssetManager.syncLoadsShouldWaitForResourceSharing.getter()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 80) = 0;
  }

  return v1 & 1;
}

uint64_t (*__REAssetManager.syncLoadsShouldWaitForResourceSharing.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = __REAssetManager.syncLoadsShouldWaitForResourceSharing.getter() & 1;
  return __REAssetManager.syncLoadsShouldWaitForResourceSharing.modify;
}

uint64_t __REAssetManager.loadBundle(at:)@<X0>(uint64_t *x8_0@<X8>)
{
  v24[5] = *MEMORY[0x1E69E9840];
  v24[3] = type metadata accessor for __REAssetManager();
  v24[4] = &protocol witness table for __REAssetManager;
  v24[0] = v2;
  memset(v18, 0, sizeof(v18));
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v19 = 1;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v13[0] = 2;

  ServiceLocatorForLegacyAPIWorkaround = _REAssetManagerGetServiceLocatorForLegacyAPIWorkaround();
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v9 = RERealityFileMountFileAtURL();

  if (v9)
  {
    static __REAssetBundle.__init_REKit2(realityFile:assetService:coreServiceLocator:_:)(v9, v24, ServiceLocatorForLegacyAPIWorkaround, v13, x8_0);
    RERealityFileUnmount();
  }

  else
  {
    specialized static __REAssetBundle.checkForUnsupportedVersion(_:)(0);
    if (!v3)
    {
      _StringGuts.grow(_:)(34);

      v10 = URL.path.getter();
      MEMORY[0x1C68F3410](v10);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      lazy protocol witness table accessor for type __RealityFileError and conformance __RealityFileError();
      swift_allocError();
      *v11 = 0xD00000000000001FLL;
      *(v11 + 8) = 0x80000001C18E1F00;
      *(v11 + 16) = 4;
      swift_willThrow();
    }
  }

  outlined destroy of __REAssetBundle.LoadOptions(v13);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t __REAssetManager.makeBundle()@<X0>(uint64_t *a1@<X8>)
{
  v7[3] = type metadata accessor for __REAssetManager();
  v7[4] = &protocol witness table for __REAssetManager;
  v7[0] = v1;
  outlined init with copy of __REAssetService(v7, v6);
  v3 = MEMORY[0x1E69E7CC0];
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v3, v6, v4, 0, a1);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t __REAssetManager.__getDependencies(asset:)(uint64_t a1)
{
  REAssetHandleLoadNow();
  REAssetCopyDependencyArray();
  result = REAssetDynamicArrayGetSize();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = MEMORY[0x1E69E7CC0];
    if (!result)
    {
LABEL_7:
      RERelease();
      return v3;
    }

    v6 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 0;
    while (1)
    {
      result = REAssetDynamicArrayGetAsset();
      if (!result)
      {
        break;
      }

      v5 = result;
      ++v4;
      RERetain();
      type metadata accessor for __REAsset();
      *(swift_allocObject() + 16) = v5;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v2 == v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t __REAssetManager.asyncLoadsShouldWaitForResourceSharing.getter()
{
  v1 = *(v0 + 96);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = MEMORY[0x1C68F3280](0xD00000000000003ALL, 0x80000001C18E1F20);
    v4 = [v2 BOOLForKey_];

    LOBYTE(v1) = v4 ^ 1;
    *(v0 + 96) = v4 ^ 1;
  }

  return v1 & 1;
}

uint64_t (*__REAssetManager.asyncLoadsShouldWaitForResourceSharing.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = __REAssetManager.asyncLoadsShouldWaitForResourceSharing.getter() & 1;
  return __REAssetManager.asyncLoadsShouldWaitForResourceSharing.modify;
}

uint64_t __REAssetManager.syncLoadsShouldInitiateResourceSharing.getter()
{
  v1 = *(v0 + 97);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
    v3 = MEMORY[0x1C68F3280](0xD000000000000033, 0x80000001C18E1F60);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v6, &v7);
    }

    else
    {
      v8 = MEMORY[0x1E69E6370];
      LOBYTE(v7) = 1;
    }

    LOBYTE(v1) = swift_dynamicCast() ^ 1 | v6;
    *(v0 + 97) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t (*__REAssetManager.syncLoadsShouldInitiateResourceSharing.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = __REAssetManager.syncLoadsShouldInitiateResourceSharing.getter() & 1;
  return __REAssetManager.syncLoadsShouldInitiateResourceSharing.modify;
}

uint64_t __REAssetManager.__deallocating_deinit()
{
  outlined destroy of __REAssetBundle?(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for __REAssetService.makeBundle() in conformance __REAssetManager@<X0>(uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  v6 = *v3;
  v11[3] = type metadata accessor for __REAssetManager();
  v11[4] = a2;
  v11[0] = v6;
  outlined init with copy of __REAssetService(v11, v10);
  v7 = MEMORY[0x1E69E7CC0];
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);

  __REAssetBundle.init(sceneAssets:assetService:assetMapSceneDescriptorsByAsset:header:)(v7, v10, v8, 0, x8_0);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t __REAssetService.asset(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 32))(a3, a4);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (!AssetHandle)
  {
    return 0;
  }

  type metadata accessor for __REAsset();
  result = swift_allocObject();
  *(result + 16) = AssetHandle;
  return result;
}

uint64_t __REAssetService.resource<A>(ofType:at:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  (*(a5 + 8))(v9, a3, a5);
  __REAssetBundle.__resource<A>(ofType:identifier:)(a4, x8_0);
  return outlined destroy of __REAssetBundle(v9);
}

uint64_t __REAssetBundle.__renderGraphEmitter(at:)(uint64_t *a1)
{
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 32))(v2, v3);
  String.utf8CString.getter();
  AssetHandle = REAssetManagerCreateAssetHandle();

  if (!AssetHandle)
  {
    return 0;
  }

  type metadata accessor for __REAsset();
  v5 = swift_allocObject();
  *(v5 + 16) = AssetHandle;
  type metadata accessor for __RERenderGraphEmitter();
  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}