uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 6);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 11);
}

uint64_t _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2im_xts0C5ErrorOYKFTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, char *))
{
  v35 = a8;
  v36 = a7;
  v15 = type metadata accessor for DecodingError();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v34 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v32 - v21;
  v23 = a1;
  v32 = a2;
  v33 = a3;
  v24 = a5;
  v25 = a5;
  v26 = v36;
  v27 = v44;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v23, a4, v25, a6, v36, &v32 - v21, &v41);
  if (v27)
  {
    (*(v16 + 32))(v35, v22, v15);
  }

  else
  {
    v44 = v15;
    v38 = v41;
    v39 = v42;
    v40 = v43;
    v37[3] = type metadata accessor for _KeyedDecodingContainer(0, a6, v26, v28);
    v37[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v29 = swift_allocObject();
    v37[0] = v29;
    v30 = v33;
    v29[2] = v32;
    v29[3] = v30;
    v29[4] = a4;
    v29[5] = v24;

    a6 = a9(v37, v34);
    outlined consume of EncodingGraph.Value(v38, *(&v38 + 1), v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return a6;
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v9 = a1;
  v11 = 4;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v9, a2, a3, a4, a5, a6, a7, a8);
}

{
  v10 = 0;
  v9 = a1;
  v11 = 8;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v9, a2, a3, a4, a5, a6, a7, a8);
}

{
  v10 = 0;
  v9 = a1;
  v11 = 9;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v9, a2, a3, a4, a5, a6, a7, a8);
}

{
  v10 = 0;
  v9 = a1;
  v11 = 13;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v9, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, _KeyedEncodingContainer.encode(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, 7);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, 12);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, _KeyedEncodingContainer.encode(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, _KeyedEncodingContainer.encode(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, _KeyedEncodingContainer.encode(_:forKey:));
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, 5);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, 6);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, 10);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, 11);
}

void _swift_xpc_session_send_message_with_reply_async(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  xpc_session_send_message_with_reply_async(v5, v6, v7);
}

uint64_t _s3XPC12BufferReaderV4read33_B60F660E558EB6466291C850CECEFCD0LLyxSgxms17FixedWidthIntegerRzSURzlFs6UInt16V_Tt0g5()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v2 - v1;
  if (v2 - v1 <= 1)
  {
    v4 = 0;
    return v4 | ((v3 < 2) << 16);
  }

  v5 = v0[7];
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v1 + 2;
  if (v2 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v0[5];
  v8 = *(v7 + v5);
  v9 = *(v7 + v5 + 1);
  v0[3] = v6;
  v10 = v5 + 2;
  if (!__OFADD__(v5, 2))
  {
    v4 = v8 | (v9 << 8);
    v0[7] = v10;
    return v4 | ((v3 < 2) << 16);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _UnkeyedDecodingContainer.decode<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DecodingError();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s3XPC25_UnkeyedDecodingContainerV10_container33_1016890FE93F2D24F6CF826DE25716D5LL_7forTypexxm_ypXpSgts0C5ErrorOYKAA01_cD0RzlFAA16_TopLevelDecoderV_Tt1g5(a1, v11, v16);
  if (v3)
  {
    swift_allocError();
    return (*(v8 + 32))(v12, v11, v7);
  }

  else
  {
    destructiveProjectEnumData for _KeyedEncodingContainer._ContainerCodingKey();
    _TopLevelDecoder.decode<A>(_:)(a1, a2, a3);
    v14 = v16[1];
    v18 = v16[0];
    outlined destroy of [CodingKey](&v18, &_sSays9CodingKey_pGMd, &_sSays9CodingKey_pGMR);
    v17 = v14;
    outlined destroy of [CodingKey](&v17, &_sSDys17CodingUserInfoKeyVypGMd, &_sSDys17CodingUserInfoKeyVypGMR);
    return swift_unknownObjectRelease();
  }
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV10_container33_1016890FE93F2D24F6CF826DE25716D5LL_7forTypexxm_ypXpSgts0C5ErrorOYKAA01_cD0RzlFAA16_TopLevelDecoderV_Tt1g5@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v8 = type metadata accessor for DecodingError();
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3[3];
  v47 = v3[2];
  v48 = v14;
  v15 = v3[1];
  v45 = *v3;
  v46 = v15;
  if (__OFSUB__(v14 >> 1, *(&v47 + 1)))
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (*(&v48 + 1) == (v48 >> 1) - *(&v47 + 1))
  {
    v43 = &type metadata for _UnkeyedDecodingContainer;
    v44 = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v16 = swift_allocObject();
    *&v42 = v16;
    v17 = v3[1];
    v16[1] = *v3;
    v16[2] = v17;
    v18 = v3[3];
    v16[3] = v3[2];
    v16[4] = v18;
    outlined init with copy of _UnkeyedDecodingContainer(&v45, &v39);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(&v42);
    swift_willThrowTypedImpl();
    return (*(v9 + 32))(a2, v13, v8);
  }

  v19 = *(&v48 + 1) + 1;
  if (__OFADD__(*(&v48 + 1), 1))
  {
    goto LABEL_12;
  }

  if (v19 < *(&v47 + 1) || v19 >= (v48 >> 1))
  {
    goto LABEL_13;
  }

  v37 = a1;
  v38 = a2;
  v36 = *(&v45 + 1);
  v49 = v45;
  v35 = v46;
  v20 = v47 + 32 * v19;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v24 = *(v20 + 24);
  *(v3 + 7) = v19;
  *&v39 = v21;
  *(&v39 + 1) = v22;
  *&v40 = v23;
  BYTE8(v40) = v24;
  outlined copy of EncodingGraph.Value(v21, v22, v23, v24);
  v25 = _s3XPC13EncodingGraphO5ValueO19unwrapIntoContainerAC0G0_pyAA18EarlyDecodingErrorVYKF();
  v27 = v26;
  if (v4)
  {

    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    v28 = v38;
    *v38 = &type metadata for _TopLevelDecoder;
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(16);
    v42 = v39;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v39 = v21;
    *(&v39 + 1) = v22;
    *&v40 = v23;
    BYTE8(v40) = v24;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v9 + 104))(v28, *MEMORY[0x1E69E6AF8], v8);
    swift_willThrowTypedImpl();
    return outlined consume of EncodingGraph.Value(v21, v22, v23, v24);
  }

  else
  {
    v29 = v25;
    v41 = 0;
    v40 = 0u;
    v39 = 0u;
    v30 = v49;
    v49 = 0;
    v31 = CodingInfo.coding(forKey:forType:)(&v39, v37, v30, v36);
    v33 = v32;
    v38 = v34;
    outlined consume of EncodingGraph.Value(v21, v22, v23, v24);
    result = outlined destroy of [CodingKey](&v39, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    *a3 = v31;
    a3[1] = v33;
    a3[2] = v38;
    a3[3] = v29;
    a3[4] = v27;
  }

  return result;
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v9 = a1 & 1;
  v11 = 0;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v9, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v9 = *&a8;
  v10 = 0;
  v11 = 3;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v9, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt16VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm(uint64_t a1, uint64_t (*a2)(void *, _BYTE *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[0] = *(v2 + 24);
  *(v18 + 9) = *(v2 + 33);
  *v17 = *(v2 + 24);
  *&v17[9] = *(v2 + 33);
  v16[3] = &type metadata for _SingleValueDecodingContainer;
  v16[4] = &protocol witness table for _SingleValueDecodingContainer;
  v11 = swift_allocObject();
  v16[0] = v11;
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = *(v2 + 48);
  outlined init with copy of EncodingGraph.Value(v18, v15);
  outlined init with copy of _SingleValueDecodingContainer(v2, v15);
  v13 = a2(v16, v10);
  outlined consume of EncodingGraph.Value(*v17, *&v17[8], *&v17[16], v17[24]);
  if (v3)
  {
    (*(v7 + 32))(a1, v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v8 = type metadata accessor for DecodingError();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  v17[0] = *v4;
  v17[1] = v13;
  v17[2] = *(v4 + 32);
  v18 = *(v4 + 48);
  result = a4(v12, a3);
  if (v5)
  {
    v15 = result;
    swift_allocError();
    (*(v9 + 32))(v16, v12, v8);
    return v15;
  }

  return result;
}

{
  v8 = type metadata accessor for DecodingError();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  v17[0] = *v4;
  v17[1] = v13;
  v17[2] = *(v4 + 32);
  v18 = *(v4 + 48);
  result = a4(v12, a3);
  if (v5)
  {
    v15 = result;
    swift_allocError();
    (*(v9 + 32))(v16, v12, v8);
    return v15;
  }

  return result;
}

{
  v8 = type metadata accessor for DecodingError();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  v17[0] = *v4;
  v17[1] = v13;
  v17[2] = *(v4 + 32);
  v18 = *(v4 + 48);
  result = a4(v12, a3);
  if (v5)
  {
    v15 = result;
    swift_allocError();
    (*(v9 + 32))(v16, v12, v8);
    return v15;
  }

  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71B0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E7188]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D8]);
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v15 = &v43 - v14;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  if (v19 == 17)
  {
    v45 = *(v2 + 16);
    v43 = v13;
    v55 = v12;
    v46 = a2;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v44 = v16;
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = v22(v20, v21);
    v25 = v24;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int16VSgMd, &_ss5Int16VSgMR);
    v27 = CodingInfo.coding(forKey:forType:)(v47, v26, v23, v25);
    v29 = v28;
    v31 = v30;

    outlined destroy of CodingKey?(v47);
    swift_unknownObjectRetain();
    v32 = v31;
    v33 = v44;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v27, v29, v32, v44, v15, &v49);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      (*(v43 + 32))(v46, v15, v55);
    }

    else
    {
      v53[0] = v49;
      v53[1] = v50;
      v53[2] = v51;
      v54 = v52;
      v42 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int16VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v53);
      return v42;
    }
  }

  else if (v19 != 6)
  {
    v34 = a2;
    v35 = *(v2 + 8);
    v36 = a1[3];
    v37 = a1[4];
    v55 = v12;
    v38 = a1;
    v39 = v13;
    v40 = v18;
    __swift_project_boxed_opaque_existential_1(v38, v36);
    (*(v37 + 8))(v36, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v34 = MEMORY[0x1E69E7290];
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v47[0] = v49;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v49 = v17;
    *(&v49 + 1) = v35;
    *&v50 = v40;
    BYTE8(v50) = v19;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v39 + 104))(v34, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrowTypedImpl();
  }

  return v17;
}

uint64_t _SingleValueEncodingContainer.encode<A>(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v8 = CodingInfo.coding(forKey:forType:)(&v16, a6, a2, a3);
  v10 = v9;
  v12 = v11;
  outlined destroy of CodingKey?(&v16);
  type metadata accessor for TopLevelGraphEncodingNode();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(&v17 + 1) = &type metadata for _TopLevelEncoder;
  v18 = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v14 = swift_allocObject();
  *&v16 = v14;
  v14[2] = v13;
  v14[3] = v8;
  v14[4] = v10;
  v14[5] = v12;

  dispatch thunk of Encodable.encode(to:)();
  if (v7)
  {

    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v16);
    *&v16 = v13;
    *(&v16 + 1) = &protocol witness table for TopLevelGraphEncodingNode;
    *&v17 = 0;
    BYTE8(v17) = 17;

    SingleValueGraphEncodingNode.setValue(to:)(&v16);
  }
}

uint64_t sub_19790EF64()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2bm_xts0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = a8;
  v32 = a7;
  v14 = type metadata accessor for DecodingError();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v31 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - v20;
  v22 = a1;
  v23 = a5;
  v25 = v32;
  v24 = v33;
  v30 = a6;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v22, a4, v23, a6, v32, &v29 - v20, &v38);
  if (v24)
  {
    (*(v15 + 32))(v41, v21, v14);
  }

  else
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    v34[3] = type metadata accessor for _KeyedDecodingContainer(0, v30, v25, v26);
    v34[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v27 = swift_allocObject();
    v34[0] = v27;
    v27[2] = a2;
    v27[3] = a3;
    v27[4] = a4;
    v27[5] = v23;

    LOBYTE(a6) = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2bm_AA18_DecodingContainer_pts0H5ErrorOYKF(v34, v31);
    outlined consume of EncodingGraph.Value(v35, *(&v35 + 1), v36, v37);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return a6 & 1;
}

void protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2dm_xts0C5ErrorOYKF(a1, *v2, v2[1], v2[2], v2[3], *(a2 + 16), *(a2 + 24), v10);
  if (v3)
  {
    swift_allocError();
    (*(v7 + 32))(v11, v10, v6);
  }
}

{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2fm_xts0C5ErrorOYKF(a1, *v2, v2[1], v2[2], v2[3], *(a2 + 16), *(a2 + 24), v10);
  if (v3)
  {
    swift_allocError();
    (*(v7 + 32))(v11, v10, v6);
  }
}

double _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2dm_xts0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v33 = a7;
  v15 = type metadata accessor for DecodingError();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v32 = (&v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v31 - v21;
  v23 = a1;
  v24 = a5;
  v26 = v33;
  v25 = v34;
  v31 = a6;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v23, a4, v24, a6, v33, &v31 - v21, &v40);
  if (v25)
  {
    (*(v16 + 32))(v35, v22, v15);
  }

  else
  {
    v37 = v40;
    v38 = v41;
    v39 = v42;
    v36[3] = type metadata accessor for _KeyedDecodingContainer(0, v31, v26, v27);
    v36[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v28 = swift_allocObject();
    v36[0] = v28;
    v28[2] = a2;
    v28[3] = a3;
    v28[4] = a4;
    v28[5] = v24;

    _s3XPC13EncodingGraphO5ValueO6decode2as3forS2dm_AA18_DecodingContainer_pts0H5ErrorOYKF(v36, v32);
    v8 = v30;
    outlined consume of EncodingGraph.Value(v37, *(&v37 + 1), v38, v39);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v8;
}

unint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7128]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7100]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7150]);
}

uint64_t protocol witness for _EncodingContainer.codingInfo.getter in conformance _KeyedEncodingContainer<A>()
{
  v1 = *v0;

  return v1;
}

uint64_t _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  ObjectType = swift_getObjectType();
  v13 = *(a5 + 8);
  v14 = v13(ObjectType, a5);
  if (*(v14 + 16) != 2)
  {

    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();

    v23 = *MEMORY[0x1E69E6B00];
    v24 = type metadata accessor for DecodingError();
    (*(*(v24 - 8) + 104))(a6, v23, v24);
    swift_willThrowTypedImpl();
    return swift_unknownObjectRelease();
  }

  v30 = a1;
  if (*(v14 + 56) != 16 || *(v14 + 32) != 2)
  {
    v16 = v14;
    _StringGuts.grow(_:)(43);
    MEMORY[0x19A8E8E70](0xD00000000000001FLL, 0x80000001979385D0);
    MEMORY[0x19A8E8E70](0xD00000000000002ELL, 0x8000000197936B60);
    MEMORY[0x19A8E8E70](0x20646E756F66202CLL, 0xE800000000000000);
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    v19 = *(v16 + 48);
    v20 = *(v16 + 56);
    outlined copy of EncodingGraph.Value(v17, v18, v19, v20);

    _print_unlocked<A, B>(_:_:)();
    outlined consume of EncodingGraph.Value(v17, v18, v19, v20);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();

    v21 = *MEMORY[0x1E69E6B00];
    v22 = type metadata accessor for DecodingError();
    (*(*(v22 - 8) + 104))(a6, v21, v22);
    swift_willThrowTypedImpl();
    return swift_unknownObjectRelease();
  }

  result = v13(ObjectType, a5);
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v26 = *(result + 64);
    v27 = *(result + 72);
    v28 = *(result + 80);
    v29 = *(result + 88);
    outlined copy of EncodingGraph.Value(v26, v27, v28, v29);
    swift_unknownObjectRelease();

    *a7 = v30;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3;
    *(a7 + 24) = v26;
    *(a7 + 32) = v27;
    *(a7 + 40) = v28;
    *(a7 + 48) = v29;
  }

  return result;
}

uint64_t XPCSession.send<A, B>(_:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = a2;
  v14[7] = a3;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for Result();
  v15 = ClientSpecifiedHandler.init(_:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<B, Error>) -> (), v14);
  v17 = v16;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v18[6] = v15;
  v18[7] = v17;

  XPCSession._send<A>(_:replyHandler:)(a1, partial apply for closure #1 in XPCSession.send<A, B>(_:replyHandler:), v18, a4, a6);
}

uint64_t sub_19790FCC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = 0;
  v10 = a1;
  v12 = a9;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 13);
}

{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 4);
}

{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 5);
}

{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 6);
}

{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 7);
}

{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 8);
}

{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 9);
}

{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 10);
}

{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 11);
}

{
  return protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(a1, a2, a3, 12);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + 24);
  swift_beginAccess();
  v8 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v7 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[32 * v11];
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  *(v12 + 4) = a1;
  v12[56] = a4;
  *(v7 + 16) = v8;
  return swift_endAccess();
}

xpc_listener_t _swift_xpc_listener_create(const char *a1, void *a2, xpc_listener_create_flags_t a3, void *a4, xpc_rich_error_t *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = xpc_listener_create(a1, v9, a3, v10, a5);

  return v11;
}

uint64_t XPCListener.init(service:targetQueue:options:incomingSessionHandler:)(uint64_t a1, uint64_t a2, void *a3, xpc_listener_create_flags_t *a4, uint64_t a5, uint64_t a6)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v24[0] = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;
  type metadata accessor for XPCListener.IncomingSessionRequest();

  v12 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision)partial apply, v11);
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  v23[4] = closure #1 in XPCListener.init(service:targetQueue:options:incomingSessionHandler:)partial apply;
  v23[5] = v15;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_session) -> ();
  v23[3] = &block_descriptor_14;
  v16 = _Block_copy(v23);

  v17 = String.utf8CString.getter();
  v18 = _swift_xpc_listener_create((v17 + 32), a3, v10, v16, v24);
  _Block_release(v16);

  if (v18)
  {

    *(v6 + 16) = v18;
    *(v6 + 24) = a3;
    swift_unknownObjectRelease();
  }

  else
  {
    if (!v24[0])
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001CLL, 0x8000000197938C90, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
    }

    swift_unknownObjectRetain_n();

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v20 = v19;
    v21 = swift_unknownObjectRetain();
    XPCRichError.init(_:)(v21, v20);
    swift_willThrow();

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    type metadata accessor for XPCListener();
    swift_deallocPartialClassInstance();
  }

  return v6;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v15 = &v43 - v14;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  if (v19 == 17)
  {
    v45 = *(v2 + 16);
    v43 = v13;
    v55 = v12;
    v46 = a2;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v44 = v16;
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = v22(v20, v21);
    v25 = v24;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    v27 = CodingInfo.coding(forKey:forType:)(v47, v26, v23, v25);
    v29 = v28;
    v31 = v30;

    outlined destroy of CodingKey?(v47);
    swift_unknownObjectRetain();
    v32 = v31;
    v33 = v44;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v27, v29, v32, v44, v15, &v49);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      (*(v43 + 32))(v46, v15, v55);
    }

    else
    {
      v53[0] = v49;
      v53[1] = v50;
      v53[2] = v51;
      v54 = v52;
      v42 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int32VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v53);
      return v42;
    }
  }

  else if (v19 != 7)
  {
    v34 = a2;
    v35 = *(v2 + 8);
    v36 = a1[3];
    v37 = a1[4];
    v55 = v12;
    v38 = a1;
    v39 = v13;
    v40 = v18;
    __swift_project_boxed_opaque_existential_1(v38, v36);
    (*(v37 + 8))(v36, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v34 = MEMORY[0x1E69E72F0];
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v47[0] = v49;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v49 = v17;
    *(&v49 + 1) = v35;
    *&v50 = v40;
    BYTE8(v50) = v19;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v39 + 104))(v34, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrowTypedImpl();
  }

  return v17;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v15 = &v43 - v14;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  if (v19 == 17)
  {
    v45 = *(v2 + 16);
    v43 = v13;
    v55 = v12;
    v46 = a2;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v44 = v16;
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = v22(v20, v21);
    v25 = v24;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32VSgMd, &_ss6UInt32VSgMR);
    v27 = CodingInfo.coding(forKey:forType:)(v47, v26, v23, v25);
    v29 = v28;
    v31 = v30;

    outlined destroy of CodingKey?(v47);
    swift_unknownObjectRetain();
    v32 = v31;
    v33 = v44;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v27, v29, v32, v44, v15, &v49);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      (*(v43 + 32))(v46, v15, v55);
    }

    else
    {
      v53[0] = v49;
      v53[1] = v50;
      v53[2] = v51;
      v54 = v52;
      v42 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt32VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v53);
      return v42;
    }
  }

  else if (v19 != 12)
  {
    v34 = a2;
    v35 = *(v2 + 8);
    v36 = a1[3];
    v37 = a1[4];
    v55 = v12;
    v38 = a1;
    v39 = v13;
    v40 = v18;
    __swift_project_boxed_opaque_existential_1(v38, v36);
    (*(v37 + 8))(v36, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v34 = MEMORY[0x1E69E7668];
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v47[0] = v49;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v49 = v17;
    *(&v49 + 1) = v35;
    *&v50 = v40;
    BYTE8(v50) = v19;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v39 + 104))(v34, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrowTypedImpl();
  }

  return v17;
}

uint64_t _s3XPC23_KeyedDecodingContainerV6decode_6forKeys5Int32VAGm_xts0C5ErrorOYKFTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, char *))
{
  v35 = a8;
  v36 = a7;
  v15 = type metadata accessor for DecodingError();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v34 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v32 - v21;
  v23 = a1;
  v32 = a2;
  v33 = a3;
  v24 = a5;
  v25 = a5;
  v26 = v36;
  v27 = v44;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v23, a4, v25, a6, v36, &v32 - v21, &v41);
  if (v27)
  {
    (*(v16 + 32))(v35, v22, v15);
  }

  else
  {
    v44 = v15;
    v38 = v41;
    v39 = v42;
    v40 = v43;
    v37[3] = type metadata accessor for _KeyedDecodingContainer(0, a6, v26, v28);
    v37[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v29 = swift_allocObject();
    v37[0] = v29;
    v30 = v33;
    v29[2] = v32;
    v29[3] = v30;
    v29[4] = a4;
    v29[5] = v24;

    a6 = a9(v37, v34);
    outlined consume of EncodingGraph.Value(v38, *(&v38 + 1), v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return a6;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCRichError()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v6 = a4;
  return SingleValueGraphEncodingNode.setValue(to:)(v5);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 10);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(a1, a2, a3, 5);
}

uint64_t *protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3forS2im_AA18_DecodingContainer_pts0H5ErrorOYKF);
}

{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors4Int8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3forS2um_AA18_DecodingContainer_pts0H5ErrorOYKF);
}

{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5UInt8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

{
  return protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF);
}

uint64_t *protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, char *))
{
  v5 = type metadata accessor for DecodingError();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC25_UnkeyedDecodingContainerV6decodeyS2ims0C5ErrorOYKFTm(v9, a3);
  if (v3)
  {
    v11 = result;
    swift_allocError();
    (*(v6 + 32))(v12, v9, v5);
    return v11;
  }

  return result;
}

{
  v5 = type metadata accessor for DecodingError();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC25_UnkeyedDecodingContainerV6decodeys4Int8VAFms0C5ErrorOYKFTm(v9, a3);
  if (v3)
  {
    v11 = result;
    swift_allocError();
    (*(v6 + 32))(v12, v9, v5);
    return v11;
  }

  return result;
}

{
  v5 = type metadata accessor for DecodingError();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC25_UnkeyedDecodingContainerV6decodeys5Int16VAFms0C5ErrorOYKFTm(v9, a3);
  if (v3)
  {
    v11 = result;
    swift_allocError();
    (*(v6 + 32))(v12, v9, v5);
    return v11;
  }

  return result;
}

{
  v5 = type metadata accessor for DecodingError();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC25_UnkeyedDecodingContainerV6decodeys5Int32VAFms0C5ErrorOYKFTm(v9, a3);
  if (v3)
  {
    v11 = result;
    swift_allocError();
    (*(v6 + 32))(v12, v9, v5);
    return v11;
  }

  return result;
}

uint64_t *_s3XPC25_UnkeyedDecodingContainerV6decodeyS2ims0C5ErrorOYKFTm(uint64_t a1, uint64_t (*a2)(void *, char *))
{
  v6 = type metadata accessor for DecodingError();
  result = MEMORY[0x1EEE9AC00](v6, v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[3];
  v45 = v2[2];
  v46 = v12;
  v13 = v2[1];
  v44[0] = *v2;
  v44[1] = v13;
  if (__OFSUB__(v12 >> 1, *(&v45 + 1)))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(&v46 + 1) == (v12 >> 1) - *(&v45 + 1))
  {
    v36[3] = &type metadata for _UnkeyedDecodingContainer;
    v36[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v14 = swift_allocObject();
    v36[0] = v14;
    v15 = v2[1];
    v14[1] = *v2;
    v14[2] = v15;
    v16 = v2[3];
    v14[3] = v2[2];
    v14[4] = v16;
    v17 = "UnkeyedDecodingContainer";
    outlined init with copy of _UnkeyedDecodingContainer(v44, v42);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v36);
    swift_willThrowTypedImpl();
    return v17;
  }

  v18 = *(&v46 + 1) + 1;
  if (__OFADD__(*(&v46 + 1), 1))
  {
    goto LABEL_13;
  }

  if (v18 < *(&v45 + 1) || v18 >= (v12 >> 1))
  {
    goto LABEL_14;
  }

  v33 = v9;
  v34 = a1;
  v19 = v45 + 32 * v18;
  v47 = v3;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v35 = a2;
  v23 = *(v19 + 24);
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v24 = v2[1];
  v42[0] = *v2;
  v42[1] = v24;
  v25 = v2[3];
  v42[2] = v2[2];
  v43 = v25;
  v37[3] = &type metadata for _UnkeyedDecodingContainer;
  v37[4] = &protocol witness table for _UnkeyedDecodingContainer;
  v26 = swift_allocObject();
  v37[0] = v26;
  v27 = v2[1];
  v26[1] = *v2;
  v26[2] = v27;
  v28 = v2[3];
  v29 = v2;
  v26[3] = v2[2];
  v26[4] = v28;
  outlined copy of EncodingGraph.Value(v20, v21, v22, v23);
  outlined init with copy of _UnkeyedDecodingContainer(v42, v36);
  v17 = &v38;
  v30 = v47;
  v31 = v35(v37, v11);
  if (v30)
  {
    outlined consume of EncodingGraph.Value(v38, v39, v40, v41);
    (*(v33 + 32))(v34, v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v37);
    return v17;
  }

  v17 = v31;
  v32 = *(&v43 + 1);
  outlined consume of EncodingGraph.Value(v38, v39, v40, v41);
  result = __swift_destroy_boxed_opaque_existential_1(v37);
  if (!__OFADD__(v32, 1))
  {
    *(v29 + 7) = v32 + 1;
    return v17;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(void *a1, void *a2)
{
  v5 = type metadata accessor for DecodingError();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v14 = &v38 - v13;
  v15 = *v2;
  v16 = *(v2 + 24);
  if (v16 != 13)
  {
    v40 = v12;
    v41 = v11;
    v17 = *(v2 + 16);
    v42 = *(v2 + 8);
    v43 = a2;
    if (v16 == 17)
    {
      v39 = v17;
      v19 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v20 = *(v18 + 8);
      swift_unknownObjectRetain();
      v21 = v20(v19, v18);
      v23 = v22;
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
      v25 = CodingInfo.coding(forKey:forType:)(v44, v24, v21, v23);
      v27 = v26;
      v29 = v28;

      outlined destroy of CodingKey?(v44);
      swift_unknownObjectRetain();
      v30 = v29;
      v31 = v42;
      v32 = v52;
      _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v25, v27, v30, v42, v14, &v46);
      if (v32)
      {
        outlined consume of EncodingGraph.Value(v15, v31, v39, 0x11u);
        (*(v40 + 32))(v43, v14, v41);
      }

      else
      {
        v50[0] = v46;
        v50[1] = v47;
        v50[2] = v48;
        v51 = v49;
        v36 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt64VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v9);
        v52 = 0;
        outlined consume of EncodingGraph.Value(v15, v31, v39, 0x11u);
        outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v50);
        return v36;
      }
    }

    else
    {
      v33 = a1[3];
      v34 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v33);
      (*(v34 + 8))(v33, v34);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      v35 = v43;
      *v43 = MEMORY[0x1E69E76D8];
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v44[0] = v46;
      MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
      *&v46 = v15;
      *(&v46 + 1) = v42;
      *&v47 = v17;
      BYTE8(v47) = v16;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(v40 + 104))(v35, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrowTypedImpl();
    }
  }

  return v15;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _UnkeyedDecodingContainer.decodeNil()()
{
  v2 = v1;
  v3 = type metadata accessor for DecodingError();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v34 - v11;
  v13 = v0[3];
  v48 = v0[2];
  v49 = v13;
  v14 = v0[1];
  v47[0] = *v0;
  v47[1] = v14;
  if (__OFSUB__(v13 >> 1, *(&v48 + 1)))
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (*(&v49 + 1) == (v13 >> 1) - *(&v48 + 1))
  {
    v37[3] = &type metadata for _UnkeyedDecodingContainer;
    v37[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v15 = swift_allocObject();
    v37[0] = v15;
    v16 = v0[1];
    v15[1] = *v0;
    v15[2] = v16;
    v17 = v0[3];
    v15[3] = v0[2];
    v15[4] = v17;
    outlined init with copy of _UnkeyedDecodingContainer(v47, &v43);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v37);
    swift_willThrowTypedImpl();
    swift_allocError();
    (*(v4 + 32))(v18, v12, v3);
    return v12 & 1;
  }

  v19 = *(&v49 + 1) + 1;
  if (__OFADD__(*(&v49 + 1), 1))
  {
    goto LABEL_23;
  }

  if (v19 < *(&v48 + 1) || v19 >= (v13 >> 1))
  {
    goto LABEL_24;
  }

  v20 = v48 + 32 * v19;
  v22 = *v20;
  v21 = *(v20 + 8);
  v23 = *(v20 + 16);
  v24 = *(v20 + 24);
  v25 = v0[1];
  v43 = *v0;
  v26 = v0[2];
  v27 = v0[3];
  v44 = v25;
  v45 = v26;
  v46 = v27;
  if (v24 == 17)
  {
    v28 = *(&v43 + 1);
    v35 = v43;
    v36 = v44;
    outlined copy of EncodingGraph.Value(v22, v21, v23, 0x11u);
    v50 = v23;
    outlined copy of EncodingGraph.Value(v22, v21, v23, 0x11u);
    outlined init with copy of _UnkeyedDecodingContainer(&v43, v37);
    v29 = v35;

    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v29, v28, v36, v21, v8, v38);
    if (v2)
    {
      (*(v4 + 8))(v8, v3);
      outlined consume of EncodingGraph.Value(v22, v21, v50, 0x11u);
      outlined destroy of _UnkeyedDecodingContainer(&v43);
      LOBYTE(v12) = 0;
      return v12 & 1;
    }

    v30 = v39;
    v31 = v40;
    v32 = v41;
    v33 = v42;

    v36 = v31 | v30 | v32;
    if (v36)
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      LOBYTE(v12) = v33 == 18;
    }

    outlined consume of EncodingGraph.Value(v30, v31, v32, v33);
    outlined consume of EncodingGraph.Value(v22, v21, v50, 0x11u);
    result = outlined destroy of _UnkeyedDecodingContainer(&v43);
    if (v33 != 18 || v36)
    {
      return v12 & 1;
    }
  }

  else
  {
    if (v24 != 18 || v21 | v22 | v23)
    {
      LOBYTE(v12) = 0;
      return v12 & 1;
    }

    LOBYTE(v12) = 1;
  }

  if (!__OFADD__(*(&v46 + 1), 1))
  {
    *(v0 + 7) = *(&v46 + 1) + 1;
    return v12 & 1;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t _SingleValueDecodingContainer.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 8);
  v29 = *v4;
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  v9 = *(v4 + 40);
  v10 = *(v4 + 48);
  *&v30 = v7;
  *(&v30 + 1) = v8;
  *&v31 = v9;
  BYTE8(v31) = v10;
  outlined copy of EncodingGraph.Value(v7, v8, v9, v10);
  v11 = _s3XPC13EncodingGraphO5ValueO19unwrapIntoContainerAC0G0_pyAA18EarlyDecodingErrorVYKF();
  v13 = v12;
  if (v5)
  {

    outlined consume of EncodingGraph.Value(v30, *(&v30 + 1), v31, BYTE8(v31));
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v16 = a1;
    *&v30 = 0;
    *(&v30 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(16);
    v33 = v30;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v30 = v7;
    *(&v30 + 1) = v8;
    *&v31 = v9;
    BYTE8(v31) = v10;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    return swift_willThrow();
  }

  else
  {
    v18 = v11;
    outlined consume of EncodingGraph.Value(v30, *(&v30 + 1), v31, BYTE8(v31));
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v19 = CodingInfo.coding(forKey:forType:)(&v30, a2, v29, v6);
    v21 = v20;
    v23 = v22;
    outlined destroy of [CodingKey](&v30, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    swift_getObjectType();
    specialized _TopLevelDecoder.init(codingInfo:container:)(v19, v21, v23, v18, v13, v34);
    swift_unknownObjectRetain();
    _TopLevelDecoder.decode<A>(_:)(a2, a3, a4);
    v24 = v34[1];
    v36 = v34[0];
    outlined destroy of [CodingKey](&v36, &_sSays9CodingKey_pGMd, &_sSays9CodingKey_pGMR);
    v35 = v24;
    outlined destroy of [CodingKey](&v35, &_sSDys17CodingUserInfoKeyVypGMd, &_sSDys17CodingUserInfoKeyVypGMR);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }
}

uint64_t specialized _TopLevelDecoder.init(codingInfo:container:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.count.getter in conformance _UnkeyedDecodingContainer()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48) >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in XPCSession.send<A, B>(_:replyHandler:)(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v11 = type metadata accessor for Result();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v17 - v14;
  closure #1 in closure #1 in XPCSession.send<A, B>(_:replyHandler:)(*a1, a1[1], a1[2], a5, (&v17 - v14));
  ClientSpecifiedHandler.callEventHandler(_:)(v15, a2, a3);
  return (*(v12 + 8))(v15, v11);
}

uint64_t closure #1 in closure #1 in XPCSession.send<A, B>(_:replyHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v19 - v13;
  if (v15)
  {
    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    v16 = swift_allocError();
    *v17 = a1 & 1;
    *(v17 + 8) = a2;
    *(v17 + 16) = a3;
    *a5 = v16;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for Result();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v19[2] = a1;
    v19[3] = a2;
    XPCReceivedMessage.decode<A>(as:)(a4, a4, v11, v19 - v13);
    (*(v10 + 32))(a5, v14, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5UInt8VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm(uint64_t a1, uint64_t (*a2)(void *, _BYTE *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[0] = *(v2 + 24);
  *(v18 + 9) = *(v2 + 33);
  *v17 = *(v2 + 24);
  *&v17[9] = *(v2 + 33);
  v16[3] = &type metadata for _SingleValueDecodingContainer;
  v16[4] = &protocol witness table for _SingleValueDecodingContainer;
  v11 = swift_allocObject();
  v16[0] = v11;
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = *(v2 + 48);
  outlined init with copy of EncodingGraph.Value(v18, v15);
  outlined init with copy of _SingleValueDecodingContainer(v2, v15);
  v13 = a2(v16, v10);
  outlined consume of EncodingGraph.Value(*v17, *&v17[8], *&v17[16], v17[24]);
  if (v3)
  {
    (*(v7 + 32))(a1, v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance _UnkeyedDecodingContainer()
{
  v1 = type metadata accessor for DecodingError();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s3XPC25_UnkeyedDecodingContainerV6decodeyS2bms0C5ErrorOYKF(v5);
  if (v0)
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, v1);
  }

  return v6 & 1;
}

{
  v1 = type metadata accessor for DecodingError();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC25_UnkeyedDecodingContainerV6decodeyS2dms0C5ErrorOYKF(v5);
  if (v0)
  {
    swift_allocError();
    return (*(v2 + 32))(v7, v5, v1);
  }

  return result;
}

{
  v1 = type metadata accessor for DecodingError();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _s3XPC25_UnkeyedDecodingContainerV6decodeyS2fms0C5ErrorOYKF(v5);
  if (v0)
  {
    swift_allocError();
    return (*(v2 + 32))(v7, v5, v1);
  }

  return result;
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV6decodeyS2bms0C5ErrorOYKF(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  result = MEMORY[0x1EEE9AC00](v4, v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v1[3];
  v43 = v1[2];
  v44 = v10;
  v11 = v1[1];
  v42[0] = *v1;
  v42[1] = v11;
  if (__OFSUB__(v10 >> 1, *(&v43 + 1)))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(&v44 + 1) == (v10 >> 1) - *(&v43 + 1))
  {
    v34[3] = &type metadata for _UnkeyedDecodingContainer;
    v34[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v12 = swift_allocObject();
    v34[0] = v12;
    v13 = v1[1];
    v12[1] = *v1;
    v12[2] = v13;
    v14 = v1[3];
    v12[3] = v1[2];
    v12[4] = v14;
    v15 = "UnkeyedDecodingContainer";
    outlined init with copy of _UnkeyedDecodingContainer(v42, v40);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v34);
    swift_willThrowTypedImpl();
    return v15 & 1;
  }

  v16 = *(&v44 + 1) + 1;
  if (__OFADD__(*(&v44 + 1), 1))
  {
    goto LABEL_13;
  }

  if (v16 < *(&v43 + 1) || v16 >= (v10 >> 1))
  {
    goto LABEL_14;
  }

  v32 = v7;
  v33 = a1;
  v17 = v43 + 32 * v16;
  v45 = v2;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v36 = *v17;
  v18 = v36;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v22 = v1[1];
  v40[0] = *v1;
  v40[1] = v22;
  v23 = v1[3];
  v40[2] = v1[2];
  v41 = v23;
  v35[3] = &type metadata for _UnkeyedDecodingContainer;
  v35[4] = &protocol witness table for _UnkeyedDecodingContainer;
  v24 = swift_allocObject();
  v35[0] = v24;
  v25 = v1[1];
  v24[1] = *v1;
  v24[2] = v25;
  v26 = v1[3];
  v27 = v1;
  v24[3] = v1[2];
  v24[4] = v26;
  outlined copy of EncodingGraph.Value(v18, v19, v20, v21);
  outlined init with copy of _UnkeyedDecodingContainer(v40, v34);
  v15 = &v36;
  v28 = v45;
  v29 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2bm_AA18_DecodingContainer_pts0H5ErrorOYKF(v35, v9);
  if (v28)
  {
    outlined consume of EncodingGraph.Value(v36, v37, v38, v39);
    (*(v32 + 32))(v33, v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return v15 & 1;
  }

  LOBYTE(v15) = v29;
  v30 = *(&v41 + 1);
  outlined consume of EncodingGraph.Value(v36, v37, v38, v39);
  result = __swift_destroy_boxed_opaque_existential_1(v35);
  if (!__OFADD__(v30, 1))
  {
    *(v27 + 7) = v30 + 1;
    return v15 & 1;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3fors5UInt8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v15 = &v43 - v14;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  if (v19 == 17)
  {
    v45 = *(v2 + 16);
    v43 = v13;
    v55 = v12;
    v46 = a2;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v44 = v16;
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = v22(v20, v21);
    v25 = v24;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5UInt8VSgMd, &_ss5UInt8VSgMR);
    v27 = CodingInfo.coding(forKey:forType:)(v47, v26, v23, v25);
    v29 = v28;
    v31 = v30;

    outlined destroy of CodingKey?(v47);
    swift_unknownObjectRetain();
    v32 = v31;
    v33 = v44;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v27, v29, v32, v44, v15, &v49);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      (*(v43 + 32))(v46, v15, v55);
    }

    else
    {
      v53[0] = v49;
      v53[1] = v50;
      v53[2] = v51;
      v54 = v52;
      v42 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5UInt8VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v17, v33, v45, 0x11u);
      outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v53);
      return v42;
    }
  }

  else if (v19 != 10)
  {
    v34 = a2;
    v35 = *(v2 + 8);
    v36 = a1[3];
    v37 = a1[4];
    v55 = v12;
    v38 = a1;
    v39 = v13;
    v40 = v18;
    __swift_project_boxed_opaque_existential_1(v38, v36);
    (*(v37 + 8))(v36, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v34 = MEMORY[0x1E69E7508];
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v47[0] = v49;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v49 = v17;
    *(&v49 + 1) = v35;
    *&v50 = v40;
    BYTE8(v50) = v19;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v39 + 104))(v34, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrowTypedImpl();
  }

  return v17;
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(char a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v3 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[32 * v7];
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = a1 & 1;
  v8[56] = 0;
  *(v3 + 16) = v4;
  return swift_endAccess();
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v10 = 0;
  v9 = LODWORD(a8);
  v11 = 2;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v9, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, "z ");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(uint64_t a1, char a2)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt64VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = *(v1 + 24);
  *(v16 + 9) = *(v1 + 33);
  *v15 = *(v1 + 24);
  *&v15[9] = *(v1 + 33);
  v14[3] = &type metadata for _SingleValueDecodingContainer;
  v14[4] = &protocol witness table for _SingleValueDecodingContainer;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  outlined init with copy of EncodingGraph.Value(v16, v13);
  outlined init with copy of _SingleValueDecodingContainer(v1, v13);
  v11 = _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(v14, v8);
  outlined consume of EncodingGraph.Value(*v15, *&v15[8], *&v15[16], v15[24]);
  if (v2)
  {
    (*(v5 + 32))(a1, v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ims0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = *(v1 + 24);
  *(v16 + 9) = *(v1 + 33);
  *v15 = *(v1 + 24);
  *&v15[9] = *(v1 + 33);
  v14[3] = &type metadata for SingleValueDecodingContainer4OptionalPrimitive;
  v14[4] = &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  outlined init with copy of EncodingGraph.Value(v16, v13);
  outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive(v1, v13);
  v11 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2im_AA18_DecodingContainer_pts0H5ErrorOYKF(v14, v8);
  outlined consume of EncodingGraph.Value(*v15, *&v15[8], *&v15[16], v15[24]);
  if (v2)
  {
    (*(v5 + 32))(a1, v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

float _s3XPC23_KeyedDecodingContainerV6decode_6forKeyS2fm_xts0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v33 = a7;
  v15 = type metadata accessor for DecodingError();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v32 = (&v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v31 - v21;
  v23 = a1;
  v24 = a5;
  v26 = v33;
  v25 = v34;
  v31 = a6;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v23, a4, v24, a6, v33, &v31 - v21, &v40);
  if (v25)
  {
    (*(v16 + 32))(v35, v22, v15);
  }

  else
  {
    v37 = v40;
    v38 = v41;
    v39 = v42;
    v36[3] = type metadata accessor for _KeyedDecodingContainer(0, v31, v26, v27);
    v36[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v28 = swift_allocObject();
    v36[0] = v28;
    v28[2] = a2;
    v28[3] = a3;
    v28[4] = a4;
    v28[5] = v24;

    _s3XPC13EncodingGraphO5ValueO6decode2as3forS2fm_AA18_DecodingContainer_pts0H5ErrorOYKF(v36, v32);
    v8 = v30;
    outlined consume of EncodingGraph.Value(v37, *(&v37 + 1), v38, v39);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return v8;
}

uint64_t XPCCodableObject.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for xpcCodable != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, static CodingUserInfoKey.xpcCodable);
  v12 = v11;
  if (!*(v10 + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v14 & 1) == 0))
  {

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v13, v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    (*(v6 + 16))(v9, v12, v5);
    type metadata accessor for CodingUserInfoKeyNotFound(0);
    lazy protocol witness table accessor for type CodingUserInfoKeyNotFound and conformance CodingUserInfoKeyNotFound();
    swift_allocError();
    (*(v6 + 32))(v16, v9, v5);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v26[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
LABEL_7:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v18 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  __swift_destroy_boxed_opaque_existential_1(v26);
  v19 = xpc_array_get_value(v15, v18);
  if (!v19)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B00], v22);
    swift_willThrow();
    goto LABEL_7;
  }

  v20 = v19;
  result = OS_xpc_object.isCodable()();
  if (result)
  {
    result = xpc_copy(v20);
    if (result)
    {
      v21 = result;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      *a2 = v21;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3forS2fm_AA18_DecodingContainer_pts0H5ErrorOYKF(void *a1, void *a2)
{
  v6 = type metadata accessor for DecodingError();
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8, v11);
  v15 = &v41 - v14;
  v17 = *v2;
  v16 = *(v2 + 8);
  v18 = *(v2 + 16);
  v19 = *(v2 + 24);
  if (v19 == 17)
  {
    v44 = *(v2 + 16);
    v42 = v13;
    v45 = a2;
    v46 = result;
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v43 = v16;
    v22 = *(v21 + 8);
    swift_unknownObjectRetain();
    v23 = v22(v20, v21);
    v25 = v24;
    v48 = 0;
    memset(v47, 0, sizeof(v47));
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSfSgMd, &_sSfSgMR);
    v27 = CodingInfo.coding(forKey:forType:)(v47, v26, v23, v25);
    v29 = v28;
    v31 = v30;

    outlined destroy of CodingKey?(v47);
    swift_unknownObjectRetain();
    v32 = v31;
    v33 = v43;
    _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v27, v29, v32, v43, v15, &v49);
    if (v3)
    {
      outlined consume of EncodingGraph.Value(v17, v33, v44, 0x11u);
      return (*(v42 + 32))(v45, v15, v46);
    }

    else
    {
      v53[0] = v49;
      v53[1] = v50;
      v53[2] = v51;
      v54 = v52;
      _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2fms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v10);
      outlined consume of EncodingGraph.Value(v17, v33, v44, 0x11u);
      return outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v53);
    }
  }

  else if (v19 != 2)
  {
    v34 = a2;
    v35 = *(v2 + 8);
    v36 = a1[3];
    v37 = a1[4];
    v46 = result;
    v38 = a1;
    v39 = v13;
    v40 = v18;
    __swift_project_boxed_opaque_existential_1(v38, v36);
    (*(v37 + 8))(v36, v37);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v34 = MEMORY[0x1E69E6448];
    *&v49 = 0;
    *(&v49 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v47[0] = v49;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v49 = v17;
    *(&v49 + 1) = v35;
    *&v50 = v40;
    BYTE8(v50) = v19;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v39 + 104))(v34, *MEMORY[0x1E69E6AF8], v46);
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(void *a1, void *a2)
{
  v5 = type metadata accessor for DecodingError();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v14 = &v38 - v13;
  v15 = *v2;
  v16 = *(v2 + 24);
  if (v16 != 8)
  {
    v40 = v12;
    v41 = v11;
    v17 = *(v2 + 16);
    v42 = *(v2 + 8);
    v43 = a2;
    if (v16 == 17)
    {
      v39 = v17;
      v19 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v20 = *(v18 + 8);
      swift_unknownObjectRetain();
      v21 = v20(v19, v18);
      v23 = v22;
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
      v25 = CodingInfo.coding(forKey:forType:)(v44, v24, v21, v23);
      v27 = v26;
      v29 = v28;

      outlined destroy of CodingKey?(v44);
      swift_unknownObjectRetain();
      v30 = v29;
      v31 = v42;
      v32 = v52;
      _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v25, v27, v30, v42, v14, &v46);
      if (v32)
      {
        outlined consume of EncodingGraph.Value(v15, v31, v39, 0x11u);
        (*(v40 + 32))(v43, v14, v41);
      }

      else
      {
        v50[0] = v46;
        v50[1] = v47;
        v50[2] = v48;
        v51 = v49;
        v36 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int64VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v9);
        v52 = 0;
        outlined consume of EncodingGraph.Value(v15, v31, v39, 0x11u);
        outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v50);
        return v36;
      }
    }

    else
    {
      v33 = a1[3];
      v34 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v33);
      (*(v34 + 8))(v33, v34);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      v35 = v43;
      *v43 = MEMORY[0x1E69E7360];
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v44[0] = v46;
      MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
      *&v46 = v15;
      *(&v46 + 1) = v42;
      *&v47 = v17;
      BYTE8(v47) = v16;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(v40 + 104))(v35, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrowTypedImpl();
    }
  }

  return v15;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t XPCCodableObject.init(copying:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = OS_xpc_object.isCodable()();
  if (result)
  {
    result = xpc_copy(a1);
    if (result)
    {
      v5 = result;
      result = swift_unknownObjectRelease();
      *a2 = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t XPCCodableObject.encode(to:)(void *a1)
{
  v3 = type metadata accessor for CodingUserInfoKey();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = dispatch thunk of Encoder.userInfo.getter();
  if (one-time initialization token for xpcCodable != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, static CodingUserInfoKey.xpcCodable);
  v11 = v10;
  if (!*(v9 + 16) || (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v10), (v13 & 1) == 0))
  {

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v9 + 56) + 32 * v12, v19);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    (*(v4 + 16))(v7, v11, v3);
    type metadata accessor for CodingUserInfoKeyNotFound(0);
    lazy protocol witness table accessor for type CodingUserInfoKeyNotFound and conformance CodingUserInfoKeyNotFound();
    swift_allocError();
    (*(v4 + 32))(v16, v7, v3);
    return swift_willThrow();
  }

  v14 = v20;
  xpc_array_get_count(v20);
  v15 = swift_unknownObjectRetain();
  if (MEMORY[0x19A8E9F90](v15) == MEMORY[0x1E69E9E68])
  {
    xpc_array_set_connection(v14, 0xFFFFFFFFFFFFFFFFLL, v8);
  }

  else
  {
    xpc_array_set_value(v14, 0xFFFFFFFFFFFFFFFFLL, v8);
  }

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t protocol witness for SingleValueEncodingContainer.encodeNil() in conformance _SingleValueEncodingContainer()
{
  memset(v1, 0, sizeof(v1));
  v2 = 18;
  return SingleValueGraphEncodingNode.setValue(to:)(v1);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t _KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a3;
  v25 = a11;
  v26 = a12;
  v17 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a6, a7, a4);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v25 - v20;
  v22 = *(a6 - 8);
  (*(v22 + 16))(&v25 - v20, a1, a6);
  v23 = (*(v22 + 56))(v21, 0, 1, a6);
  a9[3] = a8;
  a9[4] = a10(v23);
  *a9 = swift_allocObject();
  _KeyedEncodingContainer._encodingContainer<A>(_:forKey:forType:)(a8, v21, 0, v27, v28, v29, v30, a6, a8, a7, v26);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_197914F44()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t protocol witness for _EncodingContainer.init(codingInfo:container:) in conformance _UnkeyedEncodingContainer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!a4)
  {
    goto LABEL_4;
  }

  type metadata accessor for UnkeyedGraphEncodingNode();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    __break(1u);
LABEL_4:
    type metadata accessor for UnkeyedGraphEncodingNode();
    result = swift_allocObject();
    *(result + 16) = &outlined read-only object #0 of protocol witness for _EncodingContainer.init(codingInfo:container:) in conformance _UnkeyedEncodingContainer;
  }

  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = result;
  return result;
}

uint64_t _UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for _KeyedEncodingContainer(0, a6, a7, a4);
  _UnkeyedEncodingContainer._encodingContainer<A>(_:forType:)(v11, 0, a2, a3, a4, a5, v11, &protocol witness table for _KeyedEncodingContainer<A>);
  swift_getWitnessTable(protocol conformance descriptor for _KeyedEncodingContainer<A>, v11);
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t _UnkeyedEncodingContainer._encodingContainer<A>(_:forType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  v14 = *(*(a6 + 16) + 16);
  v28[3] = &type metadata for IndexCodingKey;
  v28[4] = lazy protocol witness table accessor for type IndexCodingKey and conformance IndexCodingKey();
  v28[0] = v14;
  v15 = CodingInfo.coding(forKey:forType:)(v28, a2, a3, a4);
  v17 = v16;
  v19 = v18;
  outlined destroy of CodingKey?(v28);
  (*(a8 + 40))(v15, v17, v19, 0, 0, a7, a8);
  v20 = (*(a8 + 24))(a7, a8);
  swift_beginAccess();
  v21 = *(a6 + 16);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a6 + 16) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    *(a6 + 16) = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
  }

  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v21 + 2) = v24 + 1;
  v26 = &v21[32 * v24];
  *(v26 + 4) = v20;
  *(v26 + 5) = AssociatedConformanceWitness;
  *(v26 + 6) = 0;
  v26[56] = 17;
  *(a6 + 16) = v21;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t XPCReceivedMessage.auditToken.getter()
{
  swift_unknownObjectRetain();
  xpc_dictionary_get_audit_token();
  swift_unknownObjectRelease();
  return 0;
}

uint64_t _s3XPC13EncodingGraphO5ValueO6decode2as3forS2um_AA18_DecodingContainer_pts0H5ErrorOYKF(void *a1, void *a2)
{
  v5 = type metadata accessor for DecodingError();
  v7 = MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v14 = &v38 - v13;
  v15 = *v2;
  v16 = *(v2 + 24);
  if (v16 != 9)
  {
    v40 = v12;
    v41 = v11;
    v17 = *(v2 + 16);
    v42 = *(v2 + 8);
    v43 = a2;
    if (v16 == 17)
    {
      v39 = v17;
      v19 = a1[3];
      v18 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v19);
      v20 = *(v18 + 8);
      swift_unknownObjectRetain();
      v21 = v20(v19, v18);
      v23 = v22;
      v45 = 0;
      memset(v44, 0, sizeof(v44));
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSuSgMd, &_sSuSgMR);
      v25 = CodingInfo.coding(forKey:forType:)(v44, v24, v21, v23);
      v27 = v26;
      v29 = v28;

      outlined destroy of CodingKey?(v44);
      swift_unknownObjectRetain();
      v30 = v29;
      v31 = v42;
      v32 = v52;
      _s3XPC46SingleValueDecodingContainer4OptionalPrimitiveV10codingInfo9containerAcA06CodingI0V_AA13EncodingGraphO9Container_pts0D5ErrorOYKcfC(v25, v27, v30, v42, v14, &v46);
      if (v32)
      {
        outlined consume of EncodingGraph.Value(v15, v31, v39, 0x11u);
        (*(v40 + 32))(v43, v14, v41);
      }

      else
      {
        v50[0] = v46;
        v50[1] = v47;
        v50[2] = v48;
        v51 = v49;
        v36 = _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ums0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(v9);
        v52 = 0;
        outlined consume of EncodingGraph.Value(v15, v31, v39, 0x11u);
        outlined destroy of SingleValueDecodingContainer4OptionalPrimitive(v50);
        return v36;
      }
    }

    else
    {
      v33 = a1[3];
      v34 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v33);
      (*(v34 + 8))(v33, v34);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      v35 = v43;
      *v43 = MEMORY[0x1E69E6810];
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(16);
      v44[0] = v46;
      MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
      *&v46 = v15;
      *(&v46 + 1) = v42;
      *&v47 = v17;
      BYTE8(v47) = v16;
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(v40 + 104))(v35, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrowTypedImpl();
    }
  }

  return v15;
}

uint64_t _UnkeyedDecodingContainer.nestedContainer<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for _KeyedDecodingContainer(0, a2, a3, v11);
  _s3XPC25_UnkeyedDecodingContainerV10_container33_1016890FE93F2D24F6CF826DE25716D5LL_7forTypexxm_ypXpSgts0C5ErrorOYKAA01_cD0RzlF(v12, 0, v12, &protocol witness table for _KeyedDecodingContainer<A>, v10, &v15);
  if (v3)
  {
    swift_allocError();
    return (*(v7 + 32))(v13, v10, v6);
  }

  else
  {
    swift_getWitnessTable(protocol conformance descriptor for _KeyedDecodingContainer<A>, v12);
    return KeyedDecodingContainer.init<A>(_:)();
  }
}

uint64_t _s3XPC25_UnkeyedDecodingContainerV10_container33_1016890FE93F2D24F6CF826DE25716D5LL_7forTypexxm_ypXpSgts0C5ErrorOYKAA01_cD0RzlF@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a2;
  v58 = a1;
  v47 = a6;
  v11 = type metadata accessor for DecodingError();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v40 - v19;
  v21 = v6[3];
  v56 = v6[2];
  v57 = v21;
  v22 = v6[1];
  v54 = *v6;
  v55 = v22;
  if (__OFSUB__(v21 >> 1, *(&v56 + 1)))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(&v57 + 1) == (v57 >> 1) - *(&v56 + 1))
  {
    v52 = &type metadata for _UnkeyedDecodingContainer;
    v53 = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v23 = swift_allocObject();
    *&v51 = v23;
    v24 = v6[1];
    v23[1] = *v6;
    v23[2] = v24;
    v25 = v6[3];
    v23[3] = v6[2];
    v23[4] = v25;
    outlined init with copy of _UnkeyedDecodingContainer(&v54, &v48);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(&v51);
    swift_willThrowTypedImpl();
    return (*(v12 + 32))(a5, v20, v11);
  }

  v26 = *(&v57 + 1) + 1;
  if (__OFADD__(*(&v57 + 1), 1))
  {
    goto LABEL_13;
  }

  if (v26 < *(&v56 + 1) || v26 >= (v57 >> 1))
  {
    goto LABEL_14;
  }

  v42 = a3;
  v43 = a4;
  v44 = a5;
  v41 = *(&v54 + 1);
  v45 = v54;
  v40 = v55;
  v27 = v56 + 32 * v26;
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  *(v6 + 7) = v26;
  *&v48 = v29;
  *(&v48 + 1) = v28;
  *&v49 = v30;
  BYTE8(v49) = v31;
  outlined copy of EncodingGraph.Value(v29, v28, v30, v31);
  v32 = _s3XPC13EncodingGraphO5ValueO19unwrapIntoContainerAC0G0_pyAA18EarlyDecodingErrorVYKF();
  v34 = v33;
  if (v7)
  {

    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    v35 = v44;
    *v44 = v58;
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(16);
    v51 = v48;
    MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
    *&v48 = v29;
    *(&v48 + 1) = v28;
    *&v49 = v30;
    BYTE8(v49) = v31;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(v12 + 104))(v35, *MEMORY[0x1E69E6AF8], v11);
    swift_willThrowTypedImpl();
    return outlined consume of EncodingGraph.Value(v29, v28, v30, v31);
  }

  else
  {
    v36 = v32;
    v50 = 0;
    v49 = 0u;
    v48 = 0u;
    v58 = 0;
    v46 = CodingInfo.coding(forKey:forType:)(&v48, v46, v45, v41);
    v45 = v37;
    v41 = v38;
    outlined destroy of [CodingKey](&v48, &_ss9CodingKey_pSgMd, &_ss9CodingKey_pSgMR);
    v39 = v58;
    (*(v43 + 16))(v46, v45, v41, v36, v34, v16);
    if (v39)
    {
      outlined consume of EncodingGraph.Value(v29, v28, v30, v31);
      return (*(v12 + 32))(v44, v16, v11);
    }

    else
    {
      return outlined consume of EncodingGraph.Value(v29, v28, v30, v31);
    }
  }
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.nestedUnkeyedContainer(forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void, void, void, char *))
{
  v9 = type metadata accessor for DecodingError();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a4(a1, *v4, v4[1], v4[2], v4[3], *(a2 + 16), *(a2 + 24), v13);
  if (v5)
  {
    swift_allocError();
    return (*(v10 + 32))(v15, v13, v9);
  }

  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV013nestedUnkeyedD06forKeys0fcD0_px_ts0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v30 = a8;
  v31 = a2;
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v13 = type metadata accessor for DecodingError();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a6, a7, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v27 - v21;
  v23 = *(a6 - 8);
  (*(v23 + 16))(&v27 - v21, a1, a6);
  (*(v23 + 56))(v22, 0, 1, a6);
  a9[3] = &type metadata for _UnkeyedDecodingContainer;
  a9[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
  v24 = swift_allocObject();
  *a9 = v24;
  v25 = v35;
  _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF(&type metadata for _UnkeyedDecodingContainer, v22, 0, v31, v32, v33, v34, a6, v24 + 16, &type metadata for _UnkeyedDecodingContainer, a7, &protocol witness table for _UnkeyedDecodingContainer, v16);
  if (!v25)
  {
    return (*(v19 + 8))(v22, v18);
  }

  (*(v19 + 8))(v22, v18);
  (*(v28 + 32))(v30, v16, v29);
  return __swift_deallocate_boxed_opaque_existential_1(a9);
}

double _s3XPC25_UnkeyedDecodingContainerVAA01_cD0A2aDP10codingInfo9containerxAA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfCTW@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v22 = a6;
  v12 = type metadata accessor for DecodingError();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v26;
  _s3XPC25_UnkeyedDecodingContainerV10codingInfo9containerAcA06CodingF0V_AA13EncodingGraphO0D0_pts0C5ErrorOYKcfC(a1, a2, a3, a5, v16, v23);
  if (v17)
  {
    (*(v13 + 32))(v22, v16, v12);
  }

  else
  {
    v19 = v23[1];
    *a7 = v23[0];
    a7[1] = v19;
    result = *&v24;
    v20 = v25;
    a7[2] = v24;
    a7[3] = v20;
  }

  return result;
}

uint64_t sub_19791643C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_197916550()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1979165B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1979165FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_1979166CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1979167D4(xpc_object_t *a1, xpc_object_t *a2, size_t *a3)
{
  if (*a1)
  {
    xpc_array_set_value(*a2, *a3, *a1);
  }

  else
  {
    __break(1u);
  }
}

xpc_object_t sub_197916800@<X0>(xpc_object_t *a1@<X0>, size_t *a2@<X1>, void *a3@<X8>)
{
  result = xpc_array_get_value(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_197916864()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1979168B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_197916920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1979169EC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

__n128 sub_197916A74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197916B20@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  result = XPCDictionary.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *sub_197916C74@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = specialized XPCDictionary.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *sub_197916CC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v8[1] = v4;
  result = XPCDictionary.subscript.getter(v8, v5, v6);
  *a3 = v8[0];
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance XPCSession.InitializationOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance XPCSession.InitializationOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance XPCSession.InitializationOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance XPCSession.InitializationOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t XPCSession.__allocating_init<A>(session:createError:incomingMessageHandler:cancellationHandler:options:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v33 = *a7;
  type metadata accessor for XPCSession();
  v16 = swift_allocObject();
  v17 = v16;
  if (a1)
  {
    *(v16 + 16) = a1;
    v32 = a1;
    closure #1 in XPCSession.init<A>(session:createError:incomingMessageHandler:cancellationHandler:options:)(v17, a3, a4, a8, a9);
    v18 = a4;
    if (a5)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = a5;
      *(v19 + 24) = a6;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);

      v20 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v19);
      v22 = v21;
      v23 = *(v17 + 16);
      v24 = swift_allocObject();
      *(v24 + 16) = v20;
      *(v24 + 24) = v22;
      aBlock[4] = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = &block_descriptor_381;
      v25 = _Block_copy(aBlock);

      v26 = v23;
      v18 = a4;
      _swift_xpc_session_set_cancel_handler(v26, v25);
      _Block_release(v25);

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
    }

    if (v33)
    {
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a3, v18);

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
      swift_unknownObjectRelease();
    }

    else
    {
      XPCSession.activate()();
      if (v27)
      {

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a3, v18);
        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
      }

      else
      {
        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a3, v18);

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (!a2)
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
    }

    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v29 = v28;
    v30 = swift_unknownObjectRetain_n();
    XPCRichError.init(_:)(v30, v29);
    swift_willThrow();
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a3, a4);
    swift_unknownObjectRelease();
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
  }

  return v17;
}

uint64_t closure #1 in XPCSession.init<A>(session:createError:incomingMessageHandler:cancellationHandler:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {

    XPCSession.setIncomingMessageHandler<A>(_:)(a2, a3, a4, a5);

    return _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a2, a3);
  }

  return result;
}

uint64_t XPCSession.__allocating_init(xpcService:targetQueue:options:incomingMessageHandler:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = *MEMORY[0x1E69E9840];
  v13 = *a4;
  v14 = String.utf8CString.getter();

  v51 = a3;
  aBlock = 0;
  v49 = v13;
  v15 = _swift_xpc_session_create_xpc_service((v14 + 32), a3, (v13 | 1), &aBlock);
  v16 = aBlock;
  swift_unknownObjectRetain_n();

  type metadata accessor for XPCSession();
  v17 = swift_allocObject();
  v18 = v17;
  if (v15)
  {
    *(v17 + 16) = v15;
    v50 = v17;
    if (a5)
    {
      v19 = v15;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      v20 = v19;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
      v47 = a8;
      v21 = ClientSpecifiedHandler.init(_:)(a5, a6);
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      v25 = *(v18 + 16);
      v26 = swift_allocObject();
      *(v26 + 16) = partial apply for implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:);
      *(v26 + 24) = v24;
      v56 = partial apply for closure #1 in XPCSession._setIncomingMessageHandler(_:);
      v57 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      v55 = &block_descriptor_18;
      v27 = a6;
      v28 = _Block_copy(&aBlock);

      v29 = v25;
      a8 = v47;
      _swift_xpc_session_set_incoming_message_handler(v29, v28);
      v30 = v28;
      a6 = v27;
      _Block_release(v30);

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, v27);
      if (!a7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v46 = v15;
      if (!a7)
      {
LABEL_5:
        v18 = v50;
        if (v49)
        {
        }

        else
        {
          XPCSession.activate()();

          if (v41)
          {

            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);

LABEL_12:

            swift_unknownObjectRelease_n();
            return v18;
          }
        }

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);
        goto LABEL_12;
      }
    }

    v31 = swift_allocObject();
    *(v31 + 16) = a7;
    *(v31 + 24) = a8;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a7, a8);

    v32 = ClientSpecifiedHandler.init(_:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> (), v31);
    v48 = a7;
    v33 = a8;
    v35 = v34;
    v36 = a6;
    v37 = *(v50 + 16);
    v38 = swift_allocObject();
    *(v38 + 16) = v32;
    *(v38 + 24) = v35;
    v56 = partial apply for closure #1 in XPCSession.setCancellationHandler(_:);
    v57 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v55 = &block_descriptor;
    v39 = _Block_copy(&aBlock);

    v40 = v37;
    a6 = v36;
    _swift_xpc_session_set_cancel_handler(v40, v39);
    _Block_release(v39);
    a8 = v33;
    a7 = v48;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a8);
    goto LABEL_5;
  }

  if (!v16)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v43 = v42;
  v44 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v44, v43);
  swift_willThrow();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
  swift_unknownObjectRelease();
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
  return v18;
}

uint64_t XPCSession.__allocating_init(machService:targetQueue:options:incomingMessageHandler:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = *MEMORY[0x1E69E9840];
  v13 = *a4;
  v14 = String.utf8CString.getter();

  v51 = a3;
  aBlock = 0;
  v49 = v13;
  v15 = _swift_xpc_session_create_mach_service((v14 + 32), a3, (v13 | 1), &aBlock);
  v16 = aBlock;
  swift_unknownObjectRetain_n();

  type metadata accessor for XPCSession();
  v17 = swift_allocObject();
  v18 = v17;
  if (v15)
  {
    *(v17 + 16) = v15;
    v50 = v17;
    if (a5)
    {
      v19 = v15;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      v20 = v19;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
      v47 = a8;
      v21 = ClientSpecifiedHandler.init(_:)(a5, a6);
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      v25 = *(v18 + 16);
      v26 = swift_allocObject();
      *(v26 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
      *(v26 + 24) = v24;
      v56 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
      v57 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      v55 = &block_descriptor_40;
      v27 = a6;
      v28 = _Block_copy(&aBlock);

      v29 = v25;
      a8 = v47;
      _swift_xpc_session_set_incoming_message_handler(v29, v28);
      v30 = v28;
      a6 = v27;
      _Block_release(v30);

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, v27);
      if (!a7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v46 = v15;
      if (!a7)
      {
LABEL_5:
        v18 = v50;
        if (v49)
        {
        }

        else
        {
          XPCSession.activate()();

          if (v41)
          {

            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);

LABEL_12:

            swift_unknownObjectRelease_n();
            return v18;
          }
        }

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);
        goto LABEL_12;
      }
    }

    v31 = swift_allocObject();
    *(v31 + 16) = a7;
    *(v31 + 24) = a8;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a7, a8);

    v32 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v31);
    v48 = a7;
    v33 = a8;
    v35 = v34;
    v36 = a6;
    v37 = *(v50 + 16);
    v38 = swift_allocObject();
    *(v38 + 16) = v32;
    *(v38 + 24) = v35;
    v56 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v57 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v55 = &block_descriptor_29;
    v39 = _Block_copy(&aBlock);

    v40 = v37;
    a6 = v36;
    _swift_xpc_session_set_cancel_handler(v40, v39);
    _Block_release(v39);
    a8 = v33;
    a7 = v48;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a8);
    goto LABEL_5;
  }

  if (!v16)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v43 = v42;
  v44 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v44, v43);
  swift_willThrow();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
  swift_unknownObjectRelease();
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
  return v18;
}

uint64_t XPCSession.__allocating_init<A>(xpcService:targetQueue:options:incomingMessageHandler:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, void *, uint64_t, uint64_t *))
{
  v22[1] = *MEMORY[0x1E69E9840];
  v14 = *a4;
  v15 = String.utf8CString.getter();

  v22[0] = 0;
  v16 = a11(v15 + 32, a3, v14 | 1, v22);
  v17 = v22[0];
  swift_unknownObjectRetain_n();

  v22[0] = v14;
  v18 = XPCSession.__allocating_init<A>(session:createError:incomingMessageHandler:cancellationHandler:options:)(v16, v17, a5, a6, a7, a8, v22, a9, a10);
  swift_unknownObjectRelease();

  return v18;
}

uint64_t XPCSession.setIncomingMessageHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  v9 = ClientSpecifiedHandler.init(_:)(a1, a2);
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v9;
  v12[5] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in XPCSession.setIncomingMessageHandler<A>(_:);
  *(v13 + 24) = v12;
  v14 = *(v4 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = partial apply for closure #1 in XPCSession._setIncomingMessageHandler(_:);
  *(v15 + 24) = v13;
  v18[4] = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
  v18[3] = &block_descriptor_64;
  v16 = _Block_copy(v18);

  _swift_xpc_session_set_incoming_message_handler(v14, v16);
  _Block_release(v16);
}

uint64_t closure #1 in XPCSession.setIncomingMessageHandler<A>(_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v18 - v13;
  v18[0] = *v12;
  v18[2] = v18[0];
  XPCReceivedMessage.decode<A>(as:)(v15, v15, v16, v10);
  (*(v7 + 32))(v14, v10, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  ClientSpecifiedHandler.callEventHandler(_:)(v14, a2, a3);
  return (*(v7 + 8))(v14, a4);
}

uint64_t implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)(__int128 *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  return ClientSpecifiedHandler.callEventHandler(_:)(&v6, a2, a3);
}

xpc_rich_error_t XPCSession.send(message:)(void **a1)
{
  result = _swift_xpc_session_send_message(*(v1 + 16), *a1);
  if (result)
  {
    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v4 = v3;
    v5 = swift_unknownObjectRetain();
    XPCRichError.init(_:)(v5, v4);
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t XPCSession.sendSync<A, B>(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t x8_0@<X8>)
{
  result = XPCSession.sendSync<A>(_:)(a2, &v11);
  if (!v6)
  {
    XPCReceivedMessage.decode<A>(as:)(a3, a3, a5, x8_0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t XPCSession.send(message:replyHandler:)(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy3XPC13XPCDictionaryVAC12XPCRichErrorVGMd, &_ss6ResultOy3XPC13XPCDictionaryVAC12XPCRichErrorVGMR);
  v8 = ClientSpecifiedHandler.init(_:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> (), v7);
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v10;
  v12 = *(v3 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for implicit closure #2 in implicit closure #1 in XPCSession.send(message:replyHandler:);
  *(v13 + 24) = v11;
  v16[4] = partial apply for closure #1 in XPCSession._send(message:replyHandler:);
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?, @guaranteed OS_xpc_object?) -> ();
  v16[3] = &block_descriptor_101;
  v14 = _Block_copy(v16);

  _swift_xpc_session_send_message_with_reply_async(v12, v6, v14);
  _Block_release(v14);
}

uint64_t XPCSession.__allocating_init(endpoint:targetQueue:options:cancellationHandler:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = *a3;
  v9 = swift_unknownObjectRetain();
  if (!xpc_copy(v9))
  {
    __break(1u);
  }

  swift_unknownObjectRelease_n();
  aBlock[0] = 0;
  xpc_endpoint = xpc_session_create_xpc_endpoint();
  swift_unknownObjectRelease();
  type metadata accessor for XPCSession();
  v11 = swift_allocObject();
  v12 = v11;
  if (!xpc_endpoint)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  *(v11 + 16) = xpc_endpoint;
  if (a4)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a4;
    *(v13 + 24) = a5;
    v25 = a2;
    v14 = xpc_endpoint;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
    v15 = v14;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
    swift_unknownObjectRetain_n();
    v16 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v13);
    v18 = v17;
    v19 = *(v12 + 16);
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *(v20 + 24) = v18;
    aBlock[4] = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    aBlock[3] = &block_descriptor_124;
    v21 = _Block_copy(aBlock);

    _swift_xpc_session_set_cancel_handler(v19, v21);
    _Block_release(v21);
    a2 = v25;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v22 = xpc_endpoint;
    swift_unknownObjectRetain_n();
    if (v8)
    {
LABEL_10:

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
      goto LABEL_11;
    }
  }

  XPCSession.activate()();
  if (!v23)
  {
    goto LABEL_10;
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);

LABEL_11:

  swift_unknownObjectRelease_n();
  return v12;
}

uint64_t XPCSession.__allocating_init(endpoint:targetQueue:options:incomingMessageHandler:cancellationHandler:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = *a3;
  v13 = swift_unknownObjectRetain();
  if (!xpc_copy(v13))
  {
    __break(1u);
  }

  swift_unknownObjectRelease_n();
  aBlock = 0;
  v44 = v12;
  xpc_endpoint = xpc_session_create_xpc_endpoint();
  swift_unknownObjectRelease();
  type metadata accessor for XPCSession();
  v15 = swift_allocObject();
  v16 = v15;
  if (!xpc_endpoint)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  *(v15 + 16) = xpc_endpoint;
  v45 = v15;
  if (a4)
  {
    v17 = xpc_endpoint;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
    v18 = v17;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v42 = a7;
    v19 = ClientSpecifiedHandler.init(_:)(a4, a5);
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = *(v16 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
    *(v24 + 24) = v22;
    v50 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
    v51 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v49 = &block_descriptor_146;
    v25 = a5;
    v26 = _Block_copy(&aBlock);

    v27 = v23;
    a7 = v42;
    _swift_xpc_session_set_incoming_message_handler(v27, v26);
    v28 = v26;
    a5 = v25;
    _Block_release(v28);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, v25);
    if (!a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v41 = xpc_endpoint;
  swift_unknownObjectRetain_n();
  if (a6)
  {
LABEL_5:
    v29 = swift_allocObject();
    *(v29 + 16) = a6;
    *(v29 + 24) = a7;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);

    v30 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v29);
    v43 = a6;
    v31 = a7;
    v33 = v32;
    v34 = a5;
    v35 = *(v45 + 16);
    v36 = swift_allocObject();
    *(v36 + 16) = v30;
    *(v36 + 24) = v33;
    v50 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v51 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v49 = &block_descriptor_135;
    v37 = _Block_copy(&aBlock);

    v38 = v35;
    a5 = v34;
    _swift_xpc_session_set_cancel_handler(v38, v37);
    _Block_release(v37);
    a7 = v31;
    a6 = v43;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v43, a7);
  }

LABEL_6:
  if (v44)
  {

    goto LABEL_11;
  }

  XPCSession.activate()();

  if (!v39)
  {
LABEL_11:
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
    goto LABEL_12;
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

LABEL_12:

  swift_unknownObjectRelease_n();
  return v45;
}

{
  v50 = *MEMORY[0x1E69E9840];
  v11 = *a3;
  v12 = swift_unknownObjectRetain();
  if (!xpc_copy(v12))
  {
    __break(1u);
  }

  swift_unknownObjectRelease_n();
  aBlock = 0;
  v42 = a2;
  xpc_endpoint = xpc_session_create_xpc_endpoint();
  swift_unknownObjectRelease();
  type metadata accessor for XPCSession();
  v14 = swift_allocObject();
  v15 = v14;
  if (!xpc_endpoint)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  *(v14 + 16) = xpc_endpoint;
  if (a4)
  {
    v16 = xpc_endpoint;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
    v17 = v16;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
    v18 = ClientSpecifiedHandler.init(_:)(a4, a5);
    v20 = v19;
    v40 = a6;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
    *(v22 + 24) = v21;
    v39 = *(v15 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
    *(v23 + 24) = v22;
    v48 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
    v49 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v47 = &block_descriptor_172;
    v24 = v11;
    v11 = a4;
    v25 = a5;
    v26 = _Block_copy(&aBlock);

    _swift_xpc_session_set_incoming_message_handler(v39, v26);
    v27 = v26;
    a5 = v25;
    a4 = v11;
    LOBYTE(v11) = v24;
    _Block_release(v27);

    a6 = v40;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
    if (!v40)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v38 = xpc_endpoint;
  swift_unknownObjectRetain_n();
  if (a6)
  {
LABEL_5:
    v28 = swift_allocObject();
    *(v28 + 16) = a6;
    *(v28 + 24) = a7;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);

    v29 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v28);
    v31 = v30;
    v41 = v11;
    v11 = a5;
    v32 = *(v15 + 16);
    v33 = swift_allocObject();
    *(v33 + 16) = v29;
    *(v33 + 24) = v31;
    v48 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v49 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v47 = &block_descriptor_157;
    v34 = _Block_copy(&aBlock);

    v35 = v32;
    a5 = v11;
    LOBYTE(v11) = v41;
    _swift_xpc_session_set_cancel_handler(v35, v34);
    _Block_release(v34);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
  }

LABEL_6:
  if (v11)
  {

    goto LABEL_11;
  }

  XPCSession.activate()();

  if (!v36)
  {
LABEL_11:
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
    goto LABEL_12;
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

LABEL_12:

  swift_unknownObjectRelease_n();
  return v15;
}

uint64_t XPCSession.__allocating_init<A>(endpoint:targetQueue:options:incomingMessageHandler:cancellationHandler:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v14 = *a3;
  v15 = swift_unknownObjectRetain();
  if (!xpc_copy(v15))
  {
    __break(1u);
  }

  swift_unknownObjectRelease_n();
  xpc_endpoint = xpc_session_create_xpc_endpoint();
  swift_unknownObjectRelease();
  v20[0] = v14;
  swift_unknownObjectRetain_n();
  v17 = XPCSession.__allocating_init<A>(session:createError:incomingMessageHandler:cancellationHandler:options:)(xpc_endpoint, 0, a4, a5, a6, a7, v20, a8, a9);
  swift_unknownObjectRelease();

  return v17;
}

uint64_t XPCSession.debugDescription.getter()
{
  v1 = _swift_xpc_session_copy_description(*(v0 + 16));
  if (!v1)
  {
    return 0xD000000000000035;
  }

  v2 = v1;
  v3 = String.init(cString:)();
  free(v2);
  return v3;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCSession()
{
  v1 = _swift_xpc_session_copy_description(*(*v0 + 16));
  if (!v1)
  {
    return 0xD000000000000035;
  }

  v2 = v1;
  v3 = String.init(cString:)();
  free(v2);
  return v3;
}

uint64_t XPCSession.__allocating_init(fromConnection:targetQueue:options:cancellationHandler:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = *a3;
  aBlock[0] = 0;
  v9 = _swift__xpc_session_create_from_connection_4SWIFT(a1, a2, v8 | 1, aBlock);
  v10 = aBlock[0];
  type metadata accessor for XPCSession();
  v11 = swift_allocObject();
  v12 = v11;
  if (v9)
  {
    *(v11 + 16) = v9;
    if (a4)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = a4;
      *(v13 + 24) = a5;
      v14 = v9;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
      v15 = v14;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a4, a5);
      swift_unknownObjectRetain_n();
      v16 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v13);
      v18 = v17;
      v29 = v7;
      v19 = *(v12 + 16);
      v20 = swift_allocObject();
      *(v20 + 16) = v16;
      *(v20 + 24) = v18;
      aBlock[4] = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = &block_descriptor_183;
      v21 = _Block_copy(aBlock);

      v22 = v19;
      v7 = v29;
      _swift_xpc_session_set_cancel_handler(v22, v21);
      _Block_release(v21);

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
      if (v8)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v26 = v9;
      swift_unknownObjectRetain_n();
      if (v8)
      {
        goto LABEL_10;
      }
    }

    XPCSession.activate()();
    if (v27)
    {
      swift_unknownObjectRelease();

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);

LABEL_11:

      swift_unknownObjectRelease_n();
      return v12;
    }

LABEL_10:

    swift_unknownObjectRelease();
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
    goto LABEL_11;
  }

  if (!v10)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v24 = v23;
  v25 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v25, v24);
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a4, a5);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
  return v12;
}

uint64_t XPCSession.__allocating_init<A>(fromConnection:targetQueue:options:incomingMessageHandler:cancellationHandler:)(void *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v14 = *a3;
  v20[0] = 0;
  v15 = _swift__xpc_session_create_from_connection_4SWIFT(a1, a2, v14 | 1, v20);
  v16 = v20[0];
  v20[0] = v14;
  swift_unknownObjectRetain_n();
  v17 = XPCSession.__allocating_init<A>(session:createError:incomingMessageHandler:cancellationHandler:options:)(v15, v16, a4, a5, a6, a7, v20, a8, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v17;
}

id XPCSession.extractConnection()()
{
  result = _swift__xpc_session_extract_connection_4SWIFT(*(v0 + 16));
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCSession.__allocating_init(xpcService:targetQueue:options:requirement:incomingMessageHandler:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = *MEMORY[0x1E69E9840];
  v13 = *a4;
  v50 = *a5;
  v14 = String.utf8CString.getter();
  v15 = a3;
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a8, a9);

  v51 = v15;
  aBlock = 0;
  v49 = v13;
  v16 = _swift_xpc_session_create_xpc_service((v14 + 32), v15, (v13 | 1), &aBlock);
  v17 = aBlock;
  swift_unknownObjectRetain_n();

  type metadata accessor for XPCSession();
  v18 = swift_allocObject();
  v19 = v18;
  if (!v16)
  {
    if (!v17)
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
    }

    v30 = v18;
    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v32 = v31;
    v33 = swift_unknownObjectRetain();
    XPCRichError.init(_:)(v33, v32);
    swift_willThrow();
    v34 = v15;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();

    swift_unknownObjectRelease();
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
    v35 = a6;
    v36 = a7;
    goto LABEL_14;
  }

  v48 = a8;
  *(v18 + 16) = v16;
  if (a6)
  {
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);
    v20 = v16;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v22 = ClientSpecifiedHandler.init(_:)(a6, a7);
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v24;
    v26 = v19;
    v27 = *(v19 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
    *(v28 + 24) = v25;
    v56 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
    v57 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v55 = &block_descriptor_253;
    v29 = _Block_copy(&aBlock);

    _swift_xpc_session_set_incoming_message_handler(v27, v29);
    _Block_release(v29);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
  }

  else
  {
    v26 = v18;
    v37 = v16;
  }

  v34 = v51;
  if (v48)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v48;
    *(v38 + 24) = a9;
    swift_retain_n();
    v39 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v38);
    v41 = v40;
    v42 = *(v26 + 16);
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    *(v43 + 24) = v41;
    v56 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v57 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v55 = &block_descriptor_242;
    v44 = _Block_copy(&aBlock);

    v45 = v42;
    v34 = v51;
    _swift_xpc_session_set_cancel_handler(v45, v44);
    _Block_release(v44);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a9);
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a9);

  swift_unknownObjectRelease_n();
  _swift_xpc_session_set_peer_requirement(*(v26 + 16), v50);

  v30 = v26;
  if (v49)
  {
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a9);
    goto LABEL_13;
  }

  XPCSession.activate()();
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a9);
  if (!v46)
  {
LABEL_13:
    v35 = a6;
    v36 = a7;
LABEL_14:
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v35, v36);
    goto LABEL_15;
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

LABEL_15:

  return v30;
}

{
  return XPCSession.__allocating_init(xpcService:targetQueue:options:requirement:incomingMessageHandler:cancellationHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, specialized XPCSession.__allocating_init(xpcService:targetQueue:options:incomingMessageHandler:cancellationHandler:));
}

uint64_t XPCSession.__allocating_init(xpcService:targetQueue:options:requirement:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, void *, uint64_t *, uint64_t, uint64_t))
{
  v15 = *a4;
  v16 = *a5;
  v22 = *a4 | 1;
  v21 = a3;
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);
  v17 = a8(a1, a2, a3, &v22, a6, a7);
  v18 = v17;
  if (v8)
  {

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
  }

  else
  {
    _swift_xpc_session_set_peer_requirement(*(v17 + 16), v16);

    if (v15)
    {
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
    }

    else
    {
      XPCSession.activate()();
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
      if (v19)
      {
      }
    }
  }

  return v18;
}

uint64_t XPCSession.__allocating_init(machService:targetQueue:options:requirement:incomingMessageHandler:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = *MEMORY[0x1E69E9840];
  v13 = *a4;
  v50 = *a5;
  v14 = String.utf8CString.getter();
  v15 = a3;
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a8, a9);

  v51 = v15;
  aBlock = 0;
  v49 = v13;
  v16 = _swift_xpc_session_create_mach_service((v14 + 32), v15, (v13 | 1), &aBlock);
  v17 = aBlock;
  swift_unknownObjectRetain_n();

  type metadata accessor for XPCSession();
  v18 = swift_allocObject();
  v19 = v18;
  if (!v16)
  {
    if (!v17)
    {
      __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
    }

    v30 = v18;
    lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
    swift_allocError();
    v32 = v31;
    v33 = swift_unknownObjectRetain();
    XPCRichError.init(_:)(v33, v32);
    swift_willThrow();
    v34 = v15;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();

    swift_unknownObjectRelease();
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
    v35 = a6;
    v36 = a7;
    goto LABEL_14;
  }

  v48 = a8;
  *(v18 + 16) = v16;
  if (a6)
  {
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);
    v20 = v16;
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v22 = ClientSpecifiedHandler.init(_:)(a6, a7);
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v24;
    v26 = v19;
    v27 = *(v19 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
    *(v28 + 24) = v25;
    v56 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
    v57 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v55 = &block_descriptor_275;
    v29 = _Block_copy(&aBlock);

    _swift_xpc_session_set_incoming_message_handler(v27, v29);
    _Block_release(v29);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
  }

  else
  {
    v26 = v18;
    v37 = v16;
  }

  v34 = v51;
  if (v48)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v48;
    *(v38 + 24) = a9;
    swift_retain_n();
    v39 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v38);
    v41 = v40;
    v42 = *(v26 + 16);
    v43 = swift_allocObject();
    *(v43 + 16) = v39;
    *(v43 + 24) = v41;
    v56 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v57 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v55 = &block_descriptor_264;
    v44 = _Block_copy(&aBlock);

    v45 = v42;
    v34 = v51;
    _swift_xpc_session_set_cancel_handler(v45, v44);
    _Block_release(v44);

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a9);
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a9);

  swift_unknownObjectRelease_n();
  _swift_xpc_session_set_peer_requirement(*(v26 + 16), v50);

  v30 = v26;
  if (v49)
  {
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a9);
    goto LABEL_13;
  }

  XPCSession.activate()();
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v48, a9);
  if (!v46)
  {
LABEL_13:
    v35 = a6;
    v36 = a7;
LABEL_14:
    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v35, v36);
    goto LABEL_15;
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

LABEL_15:

  return v30;
}

{
  return XPCSession.__allocating_init(xpcService:targetQueue:options:requirement:incomingMessageHandler:cancellationHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, specialized XPCSession.__allocating_init(machService:targetQueue:options:incomingMessageHandler:cancellationHandler:));
}

uint64_t XPCSession.__allocating_init<A>(xpcService:targetQueue:options:requirement:incomingMessageHandler:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t, uint64_t, void *, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v25 = *a5;
  v22 = *a4;
  v26 = *a4 | 1;
  v24 = a3;
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a8, a9);
  v18 = a12(a1, a2, a3, &v26, a6, a7, a8, a9, a10, a11);
  v19 = v18;
  if (!v23)
  {
    _swift_xpc_session_set_peer_requirement(*(v18 + 16), v25);

    if (v22)
    {
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
    }

    else
    {
      XPCSession.activate()();
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
      if (v20)
      {
        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

LABEL_8:

        return v19;
      }
    }

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
    goto LABEL_8;
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

  return v19;
}

uint64_t XPCSession.__allocating_init(xpcService:targetQueue:options:requirement:incomingMessageHandler:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, void *, uint64_t *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16 = *a5;
  v21 = *a4;
  v24 = *a4 | 1;
  v23 = a3;
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a6, a7);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a8, a9);
  v17 = a10(a1, a2, a3, &v24, a6, a7, a8, a9);
  v18 = v17;
  if (!v22)
  {
    _swift_xpc_session_set_peer_requirement(*(v17 + 16), v16);

    if (v21)
    {
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
    }

    else
    {
      XPCSession.activate()();
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
      if (v19)
      {
        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

LABEL_8:

        return v18;
      }
    }

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);
    goto LABEL_8;
  }

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a8, a9);
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a6, a7);

  return v18;
}

uint64_t XPCSession.send<A>(_:userInfo:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static XPCReceivedMessage.encodeMessage<A>(_:userInfo:isSync:)(a2, 0, a5, v16);
  if (!v7)
  {
    v11 = v16[0];
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    v13 = *(v6 + 16);
    v14 = swift_allocObject();
    v14[2] = partial apply for closure #1 in XPCSession.send<A>(_:userInfo:replyHandler:);
    v14[3] = v12;
    v16[4] = closure #1 in XPCSession._send(message:replyHandler:)partial apply;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object?, @guaranteed OS_xpc_object?) -> ();
    v16[3] = &block_descriptor_285;
    v15 = _Block_copy(v16);

    _swift_xpc_session_send_message_with_reply_async(v13, v11, v15);
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t specialized XPCSession.__allocating_init(xpcService:targetQueue:options:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v9 = *a4;
  v10 = String.utf8CString.getter();

  aBlock[0] = 0;
  v11 = _swift_xpc_session_create_xpc_service((v10 + 32), a3, (v9 | 1), aBlock);
  v12 = aBlock[0];
  swift_unknownObjectRetain_n();

  type metadata accessor for XPCSession();
  v13 = swift_allocObject();
  v14 = v13;
  if (v11)
  {
    *(v13 + 16) = v11;
    if (a5)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = a5;
      *(v15 + 24) = a6;
      v30 = a3;
      v16 = v11;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      v17 = v16;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      v18 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v15);
      v20 = v19;
      v21 = *(v14 + 16);
      v22 = swift_allocObject();
      *(v22 + 2) = v18;
      *(v22 + 3) = v20;
      aBlock[4] = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      aBlock[3] = &block_descriptor_392;
      v23 = _Block_copy(aBlock);

      _swift_xpc_session_set_cancel_handler(v21, v23);
      _Block_release(v23);
      a3 = v30;

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v27 = v11;
      if (v9)
      {
        goto LABEL_10;
      }
    }

    XPCSession.activate()();
    if (v28)
    {

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);

LABEL_11:

      swift_unknownObjectRelease_n();
      return v14;
    }

LABEL_10:

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
    goto LABEL_11;
  }

  if (!v12)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v25 = v24;
  v26 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v26, v25);
  swift_willThrow();
  swift_unknownObjectRelease();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
  return v14;
}

xpc_session_t _swift_xpc_session_create_xpc_service(const char *a1, void *a2, xpc_session_create_flags_t a3, xpc_rich_error_t *a4)
{
  v7 = a2;
  xpc_service = xpc_session_create_xpc_service(a1, v7, a3, a4);

  return xpc_service;
}

unint64_t lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError()
{
  result = lazy protocol witness table cache variable for type XPCRichError and conformance XPCRichError;
  if (!lazy protocol witness table cache variable for type XPCRichError and conformance XPCRichError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCRichError, &type metadata for XPCRichError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCRichError and conformance XPCRichError);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t specialized XPCSession.__allocating_init(xpcService:targetQueue:options:incomingMessageHandler:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v13 = *a4;
  v14 = String.utf8CString.getter();

  aBlock = 0;
  v50 = a3;
  v15 = _swift_xpc_session_create_xpc_service((v14 + 32), a3, (v13 | 1), &aBlock);
  v16 = aBlock;
  swift_unknownObjectRetain_n();

  type metadata accessor for XPCSession();
  v17 = swift_allocObject();
  v18 = v17;
  if (v15)
  {
    *(v17 + 16) = v15;
    v49 = a7;
    if (a5)
    {
      v19 = v15;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      v20 = v19;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
      v47 = a8;
      v21 = ClientSpecifiedHandler.init(_:)(a5, a6);
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
      *(v25 + 24) = v24;
      v46 = *(v18 + 16);
      v26 = swift_allocObject();
      *(v26 + 16) = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
      *(v26 + 24) = v25;
      v55 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
      v56 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      v54 = &block_descriptor_370;
      v27 = a5;
      v28 = v13;
      v13 = v18;
      v29 = a6;
      v30 = _Block_copy(&aBlock);

      _swift_xpc_session_set_incoming_message_handler(v46, v30);
      v31 = v30;
      a6 = v29;
      v18 = v13;
      LOBYTE(v13) = v28;
      a5 = v27;
      _Block_release(v31);
      a7 = v49;

      a8 = v47;

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v27, a6);
      if (!v49)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v45 = v15;
      if (!a7)
      {
LABEL_5:
        if (v13)
        {
        }

        else
        {
          XPCSession.activate()();

          if (v40)
          {

            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);

LABEL_12:

            swift_unknownObjectRelease_n();
            return v18;
          }
        }

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);
        goto LABEL_12;
      }
    }

    v32 = swift_allocObject();
    *(v32 + 16) = a7;
    *(v32 + 24) = a8;
    swift_retain_n();
    v33 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v32);
    v48 = a6;
    v35 = v34;
    v36 = v13;
    v13 = *(v18 + 16);
    v37 = swift_allocObject();
    *(v37 + 16) = v33;
    *(v37 + 24) = v35;
    v55 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v56 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v54 = &block_descriptor_355;
    v38 = _Block_copy(&aBlock);

    v39 = v13;
    LOBYTE(v13) = v36;
    _swift_xpc_session_set_cancel_handler(v39, v38);
    _Block_release(v38);
    a7 = v49;
    a6 = v48;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v49, a8);
    goto LABEL_5;
  }

  if (!v16)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v42 = v41;
  v43 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v43, v42);
  swift_willThrow();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
  swift_unknownObjectRelease();
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
  return v18;
}

uint64_t specialized XPCSession.__allocating_init(machService:targetQueue:options:incomingMessageHandler:cancellationHandler:)(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v13 = *a4;
  v14 = String.utf8CString.getter();

  aBlock = 0;
  v50 = a3;
  v15 = _swift_xpc_session_create_mach_service((v14 + 32), a3, (v13 | 1), &aBlock);
  v16 = aBlock;
  swift_unknownObjectRetain_n();

  type metadata accessor for XPCSession();
  v17 = swift_allocObject();
  v18 = v17;
  if (v15)
  {
    *(v17 + 16) = v15;
    v49 = a7;
    if (a5)
    {
      v19 = v15;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      v20 = v19;
      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOy_0(a5, a6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
      v47 = a8;
      v21 = ClientSpecifiedHandler.init(_:)(a5, a6);
      v23 = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)partial apply;
      *(v25 + 24) = v24;
      v46 = *(v18 + 16);
      v26 = swift_allocObject();
      *(v26 + 16) = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
      *(v26 + 24) = v25;
      v55 = closure #1 in XPCSession._setIncomingMessageHandler(_:)partial apply;
      v56 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
      v54 = &block_descriptor_333;
      v27 = a5;
      v28 = v13;
      v13 = v18;
      v29 = a6;
      v30 = _Block_copy(&aBlock);

      _swift_xpc_session_set_incoming_message_handler(v46, v30);
      v31 = v30;
      a6 = v29;
      v18 = v13;
      LOBYTE(v13) = v28;
      a5 = v27;
      _Block_release(v31);
      a7 = v49;

      a8 = v47;

      _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v27, a6);
      if (!v49)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v45 = v15;
      if (!a7)
      {
LABEL_5:
        if (v13)
        {
        }

        else
        {
          XPCSession.activate()();

          if (v40)
          {

            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
            _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);

LABEL_12:

            swift_unknownObjectRelease_n();
            return v18;
          }
        }

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);

        _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);
        goto LABEL_12;
      }
    }

    v32 = swift_allocObject();
    *(v32 + 16) = a7;
    *(v32 + 24) = a8;
    swift_retain_n();
    v33 = ClientSpecifiedHandler.init(_:)(thunk for @escaping @callee_guaranteed (@in_guaranteed XPCRichError) -> ()partial apply, v32);
    v48 = a6;
    v35 = v34;
    v36 = v13;
    v13 = *(v18 + 16);
    v37 = swift_allocObject();
    *(v37 + 16) = v33;
    *(v37 + 24) = v35;
    v55 = closure #1 in XPCSession.setCancellationHandler(_:)partial apply;
    v56 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = thunk for @escaping @callee_guaranteed (@guaranteed OS_xpc_object) -> ();
    v54 = &block_descriptor_318;
    v38 = _Block_copy(&aBlock);

    v39 = v13;
    LOBYTE(v13) = v36;
    _swift_xpc_session_set_cancel_handler(v39, v38);
    _Block_release(v38);
    a7 = v49;
    a6 = v48;

    _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(v49, a8);
    goto LABEL_5;
  }

  if (!v16)
  {
    __XPC_INTERNAL_CRASH__(_:file:line:)(0xD00000000000001BLL, 0x8000000197937F10, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/RichError.swift", 87, 2, 58);
  }

  lazy protocol witness table accessor for type XPCRichError and conformance XPCRichError();
  swift_allocError();
  v42 = v41;
  v43 = swift_unknownObjectRetain_n();
  XPCRichError.init(_:)(v43, v42);
  swift_willThrow();

  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a5, a6);
  swift_unknownObjectRelease();
  _s3XPC13XPCDictionaryVACSgIeghnr_SgWOe_0(a7, a8);
  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  swift_unknownObjectRelease();
  return v18;
}

void _swift_xpc_session_set_target_queue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_target_queue(v3, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *_swift_xpc_session_copy_description(void *a1)
{
  v1 = a1;
  v2 = xpc_session_copy_description(v1);

  return v2;
}

id _swift__xpc_session_extract_connection_4SWIFT(void *a1)
{
  v1 = a1;
  connection_4SWIFT = _xpc_session_extract_connection_4SWIFT();

  return connection_4SWIFT;
}

void _swift_xpc_session_set_peer_requirement(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  xpc_session_set_peer_requirement();
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in XPCSession.setIncomingMessageHandler(_:)(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return ClientSpecifiedHandler.callEventHandler(_:)(&v5, v3, v2);
}

unint64_t lazy protocol witness table accessor for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions()
{
  result = lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions)
  {
    result = swift_getWitnessTable("I5VW S", &type metadata for XPCSession.InitializationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSession.InitializationOptions, &type metadata for XPCSession.InitializationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSession.InitializationOptions, &type metadata for XPCSession.InitializationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions;
  if (!lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCSession.InitializationOptions, &type metadata for XPCSession.InitializationOptions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCSession.InitializationOptions and conformance XPCSession.InitializationOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCSession.InitializationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for XPCSession.InitializationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void type metadata accessor for xpc_session_create_flags_t()
{
  if (!lazy cache variable for type metadata for xpc_session_create_flags_t)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for xpc_session_create_flags_t);
    }
  }
}

void partial apply for closure #1 in XPCDictionary.subscript.setter(char *a1)
{
  closure #1 in XPCDictionary.subscript.setter(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  partial apply for closure #1 in XPCDictionary.subscript.setter(a1);
}

uint64_t static XPCPeerRequirement.hasEntitlement(_:)@<X0>(void *a3@<X8>)
{
  String.utf8CString.getter();
  v4 = _swift_xpc_peer_requirement_create_entitlement_exists();

  if (!v4)
  {
    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(40);
    MEMORY[0x19A8E8E70](0xD000000000000026, 0x80000001979381C0);
    __break(1u);
  }

  result = swift_unknownObjectRelease();
  *a3 = v4;
  return result;
}

uint64_t static XPCPeerRequirement.entitlement(_:matches:)@<X0>(char a3@<W2>, void *a4@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v5 = xpc_BOOL_create(a3 & 1);
  v6 = String.utf8CString.getter();
  v7 = _swift_xpc_peer_requirement_create_entitlement_matches_value(v6 + 32, v5, v13);

  swift_unknownObjectRelease();
  if (!v7)
  {
    v9 = v13[0];
    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(40);
    MEMORY[0x19A8E8E70](0xD000000000000026, 0x80000001979381C0);
    if (!v9)
    {
      __break(1u);
    }

    v10 = swift_unknownObjectRetain();
    v11 = MEMORY[0x19A8E9F90](v10);
    if (v11 == MEMORY[0x1E69E9EE8])
    {
      v11 = xpc_rich_error_copy_description(v9);
      if (v11)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
LABEL_9:
    v12 = v11;
    String.init(cString:)();
    xpc_rich_error_can_retry(v9);
    free(v12);
    swift_unknownObjectRelease();
    _print_unlocked<A, B>(_:_:)();

    __XPC_INTERNAL_CRASH__(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/PeerRequirement.swift", 93, 2, 19);
  }

  result = swift_unknownObjectRelease();
  *a4 = v7;
  return result;
}

uint64_t static XPCPeerRequirement.entitlement(_:matches:)@<X0>(void *a5@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v6 = String.utf8CString.getter();
  v7 = xpc_string_create((v6 + 32));

  v8 = String.utf8CString.getter();
  v9 = _swift_xpc_peer_requirement_create_entitlement_matches_value(v8 + 32, v7, v15);

  swift_unknownObjectRelease();
  if (!v9)
  {
    v11 = v15[0];
    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(40);
    MEMORY[0x19A8E8E70](0xD000000000000026, 0x80000001979381C0);
    if (!v11)
    {
      __break(1u);
    }

    v12 = swift_unknownObjectRetain();
    v13 = MEMORY[0x19A8E9F90](v12);
    if (v13 == MEMORY[0x1E69E9EE8])
    {
      v13 = xpc_rich_error_copy_description(v11);
      if (v13)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
LABEL_9:
    v14 = v13;
    String.init(cString:)();
    xpc_rich_error_can_retry(v11);
    free(v14);
    swift_unknownObjectRelease();
    _print_unlocked<A, B>(_:_:)();

    __XPC_INTERNAL_CRASH__(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/PeerRequirement.swift", 93, 2, 19);
  }

  result = swift_unknownObjectRelease();
  *a5 = v9;
  return result;
}

uint64_t static XPCPeerRequirement.entitlement(_:matches:)@<X0>(int64_t value@<X2>, void *a4@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v5 = xpc_int64_create(value);
  v6 = String.utf8CString.getter();
  v7 = _swift_xpc_peer_requirement_create_entitlement_matches_value(v6 + 32, v5, v13);

  swift_unknownObjectRelease();
  if (!v7)
  {
    v9 = v13[0];
    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(40);
    MEMORY[0x19A8E8E70](0xD000000000000026, 0x80000001979381C0);
    if (!v9)
    {
      __break(1u);
    }

    v10 = swift_unknownObjectRetain();
    v11 = MEMORY[0x19A8E9F90](v10);
    if (v11 == MEMORY[0x1E69E9EE8])
    {
      v11 = xpc_rich_error_copy_description(v9);
      if (v11)
      {
        goto LABEL_9;
      }

      __break(1u);
    }

    __break(1u);
LABEL_9:
    v12 = v11;
    String.init(cString:)();
    xpc_rich_error_can_retry(v9);
    free(v12);
    swift_unknownObjectRelease();
    _print_unlocked<A, B>(_:_:)();

    __XPC_INTERNAL_CRASH__(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/PeerRequirement.swift", 93, 2, 19);
  }

  result = swift_unknownObjectRelease();
  *a4 = v7;
  return result;
}

uint64_t static XPCPeerRequirement.isFromSameTeam(andMatchesSigningIdentifier:)@<X0>(uint64_t a2@<X1>, void *x8_0@<X8>)
{

  return static XPCPeerRequirement.isFromSameTeam(andMatchesSigningIdentifier:)(a2, _swift_xpc_peer_requirement_create_team_identity, x8_0);
}

uint64_t static XPCPeerRequirement.isPlatformCode(andMatchesSigningIdentifier:)@<X0>(uint64_t a2@<X1>, void *x8_0@<X8>)
{

  return static XPCPeerRequirement.isFromSameTeam(andMatchesSigningIdentifier:)(a2, _swift_xpc_peer_requirement_create_platform_identity, x8_0);
}

uint64_t static XPCPeerRequirement.isFromSameTeam(andMatchesSigningIdentifier:)@<X0>(uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, void *)@<X2>, void *a4@<X8>)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  if (a2)
  {
    v6 = String.utf8CString.getter() + 32;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3(v6, v13);
  swift_unknownObjectRelease();
  if (!v7)
  {
    v9 = v13[0];
    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(40);
    MEMORY[0x19A8E8E70](0xD000000000000026, 0x80000001979381C0);
    if (!v9)
    {
      __break(1u);
    }

    v10 = swift_unknownObjectRetain();
    v11 = MEMORY[0x19A8E9F90](v10);
    if (v11 == MEMORY[0x1E69E9EE8])
    {
      v11 = xpc_rich_error_copy_description(v9);
      if (v11)
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    __break(1u);
LABEL_12:
    v12 = v11;
    String.init(cString:)();
    xpc_rich_error_can_retry(v9);
    free(v12);
    swift_unknownObjectRelease();
    _print_unlocked<A, B>(_:_:)();

    __XPC_INTERNAL_CRASH__(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/XPC_swiftoverlay/XPC-swiftoverlay/PeerRequirement.swift", 93, 2, 19);
  }

  result = swift_unknownObjectRelease();
  *a4 = v7;
  return result;
}

uint64_t static XPCPeerRequirement.fromLWCRData(_:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1)
  {
    __break(1u);
LABEL_5:
    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(28);
    MEMORY[0x19A8E8E70](0xD00000000000001ALL, 0x8000000197938250);
    __break(1u);
  }

  v4 = xpc_data_create(a1, a2 - a1);
  v5 = _swift_xpc_peer_requirement_create_lwcr(v4);
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = v5;
  swift_unknownObjectRelease();
  *a3 = v6;
  return swift_unknownObjectRelease();
}

uint64_t XPCPeerRequirement.init(lightweightCodeRequirements:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = _swift_xpc_peer_requirement_create_lwcr(*a1);
  swift_unknownObjectRelease();
  if (!v3)
  {
    _StringGuts.grow(_:)(28);
    MEMORY[0x19A8E8E70](0xD00000000000001ALL, 0x8000000197938250);
    __break(1u);
  }

  result = swift_unknownObjectRelease();
  *a2 = v3;
  return result;
}

uint64_t audit_token_t.satisfies(requirement:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  *&v7 = a2;
  *(&v7 + 1) = a3;
  v8 = a4;
  v9 = a5;
  return _swift__xpc_peer_requirement_match_token(v5, &v7);
}

id _swift_xpc_peer_requirement_create_entitlement_exists()
{
  entitlement_exists = xpc_peer_requirement_create_entitlement_exists();

  return entitlement_exists;
}

id _swift_xpc_peer_requirement_create_entitlement_matches_value(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  entitlement_matches_value = xpc_peer_requirement_create_entitlement_matches_value();

  return entitlement_matches_value;
}

id _swift_xpc_peer_requirement_create_team_identity()
{
  team_identity = xpc_peer_requirement_create_team_identity();

  return team_identity;
}

id _swift_xpc_peer_requirement_create_platform_identity()
{
  platform_identity = xpc_peer_requirement_create_platform_identity();

  return platform_identity;
}

id _swift_xpc_peer_requirement_create_lwcr(void *a1)
{
  v1 = a1;
  lwcr = xpc_peer_requirement_create_lwcr();

  return lwcr;
}

uint64_t _swift__xpc_peer_requirement_match_token(void *a1, _OWORD *a2)
{
  v2 = a1;
  matched = _xpc_peer_requirement_match_token();

  return matched;
}

uint64_t getEnumTagSinglePayload for XPCPeerRequirement(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for XPCPeerRequirement(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for _EncodingContainer.codingInfo.getter in conformance _TopLevelEncoder()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t testEncodeDecodePipeline<A>(_:userInfo:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for TopLevelGraphEncodingNode();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v14[3] = &type metadata for _TopLevelEncoder;
  v14[4] = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v11 = swift_allocObject();
  v14[0] = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  swift_bridgeObjectRetain_n();

  dispatch thunk of Encodable.encode(to:)();
  if (v5)
  {

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v14[5] = v12;
    v14[6] = a1;
    v14[7] = a2;
    v14[8] = v10;
    v14[9] = &protocol witness table for TopLevelGraphEncodingNode;

    _TopLevelDecoder.decode<A>(_:)(a2, a3, a5);
  }
}

uint64_t testEncodeDecodePipelineWithSerialization<A>(_:userInfo:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for TopLevelGraphEncodingNode();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v21 = &type metadata for _TopLevelEncoder;
  v22 = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v11 = swift_allocObject();
  *&v20 = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  swift_bridgeObjectRetain_n();

  dispatch thunk of Encodable.encode(to:)();
  if (v5)
  {

    swift_bridgeObjectRelease_n();
    return __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v20);

    SerializedEncodingGraph.init(of:)(v14, &protocol witness table for TopLevelGraphEncodingNode, &v20);
    v15 = SerializedEncodingGraph.decode()();
    v17 = v16;
    v18 = v15;
    swift_getObjectType();
    specialized _TopLevelDecoder.init(codingInfo:container:)(MEMORY[0x1E69E7CC0], a1, a2, v18, v17, v23);
    swift_unknownObjectRetain();
    _TopLevelDecoder.decode<A>(_:)(a2, a3, a5);
    v19 = v23[1];
    v25 = v23[0];
    outlined destroy of [CodingKey](&v25, &_sSays9CodingKey_pGMd, &_sSays9CodingKey_pGMR);
    v24 = v19;
    outlined destroy of [CodingKey](&v24, &_sSDys17CodingUserInfoKeyVypGMd, &_sSDys17CodingUserInfoKeyVypGMR);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }
}

uint64_t XPCEncodedContents.init(value:userInfo:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
  type metadata accessor for TopLevelGraphEncodingNode();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *(&v14 + 1) = &type metadata for _TopLevelEncoder;
  v15 = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v9 = swift_allocObject();
  *&v13 = v9;
  v10 = MEMORY[0x1E69E7CC0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  v9[5] = v7;

  dispatch thunk of Encodable.encode(to:)();
  if (v3)
  {

    __swift_destroy_boxed_opaque_existential_1(&v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v13);
    SerializedEncodingGraph.init(of:)(v8, &protocol witness table for TopLevelGraphEncodingNode, &v13);

    v11 = v14;
    *a3 = v13;
    a3[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t XPCEncodedContents.decode<A>(as:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = SerializedEncodingGraph.decode()();
  if (v4)
  {
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    v10 = v7;
    v11 = v8;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_getObjectType();
    specialized _TopLevelDecoder.init(codingInfo:container:)(MEMORY[0x1E69E7CC0], a2, a3, v10, v11, v14);
    lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder();
    v13 = swift_allocObject();
    v12 = v14[1];
    *(v13 + 16) = v14[0];
    *(v13 + 32) = v12;
    *(v13 + 48) = v15;

    return dispatch thunk of Decodable.init(from:)();
  }
}

uint64_t getEnumTagSinglePayload for XPCEncodedContents(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCEncodedContents(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for _TopLevelEncoder(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for _TopLevelEncoder(uint64_t result, int a2, int a3)
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

uint64_t _KeyedEncodingContainer.encodeNil(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = 0uLL;
  v9 = 0;
  v10 = 18;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v8, a1, a2, a3, a4, a5, a6, a7);
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return _KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4, a5, a6, a7, a8, 5);
}

{
  return _KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4, a5, a6, a7, a8, 6);
}

{
  return _KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4, a5, a6, a7, a8, 10);
}

{
  return _KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4, a5, a6, a7, a8, 11);
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return _KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4, a5, a6, a7, a8, 7);
}

{
  return _KeyedEncodingContainer.encode(_:forKey:)(a1, a2, a3, a4, a5, a6, a7, a8, 12);
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = 0;
  v10 = a1;
  v12 = a9;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _KeyedEncodingContainer.encode(_:forKey:)(unsigned __int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = 0;
  v10 = a1;
  v12 = a9;
  return _KeyedEncodingContainer._encode(_:forKey:)(&v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _KeyedEncodingContainer._ContainerCodingKey.stringValue.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    return 0x7265707573;
  }

  (*(v3 + 32))(v6, v9, v2);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  MEMORY[0x19A8E8E70](0x654B676E69646F63, 0xEB00000000203A79);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v11 = v13[0];
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t _KeyedEncodingContainer._ContainerCodingKey.intValue.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v4, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v3 + 8))(v6, a1);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v13 = dispatch thunk of CodingKey.intValue.getter();
    (*(v8 + 8))(v11, v7);
    return v13;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance _KeyedEncodingContainer<A>._ContainerCodingKey(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _KeyedEncodingContainer<A>._ContainerCodingKey, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _KeyedEncodingContainer<A>._ContainerCodingKey(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _KeyedEncodingContainer<A>._ContainerCodingKey, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t _KeyedEncodingContainer.superEncoder()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v20 = a4;
  v13 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a5, a6, a4);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v19 - v16;
  (*(*(a5 - 8) + 56))(&v19 - v16, 1, 1, a5);
  a7[3] = &type metadata for _TopLevelEncoder;
  a7[4] = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  *a7 = swift_allocObject();
  _KeyedEncodingContainer._encodingContainer<A>(_:forKey:forType:)(&type metadata for _TopLevelEncoder, v17, 0, a1, a2, a3, v20, a5, &type metadata for _TopLevelEncoder, a6, &protocol witness table for _TopLevelEncoder);
  return (*(v14 + 8))(v17, v13);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _KeyedEncodingContainer<A>()
{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encode(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71C0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _KeyedEncodingContainer<A>(uint64_t a1, uint64_t a2, char a3)
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t getEnumTagSinglePayload for _KeyedEncodingContainer._ContainerCodingKey(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for _KeyedEncodingContainer._ContainerCodingKey(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
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
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(float a1)
{
  v2[1] = 0;
  v2[2] = 0;
  v2[0] = LODWORD(a1);
  v3 = 2;
  return SingleValueGraphEncodingNode.setValue(to:)(v2);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer()
{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance _SingleValueEncodingContainer(unsigned int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = a1;
  v6 = a4;
  return SingleValueGraphEncodingNode.setValue(to:)(v5);
}

uint64_t protocol witness for _EncodingContainer.init(codingInfo:container:) in conformance _SingleValueEncodingContainer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!a4)
  {
    goto LABEL_4;
  }

  type metadata accessor for SingleValueGraphEncodingNode();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    __break(1u);
LABEL_4:
    type metadata accessor for SingleValueGraphEncodingNode();
    result = swift_allocObject();
    *(result + 16) = &outlined read-only object #0 of protocol witness for _EncodingContainer.init(codingInfo:container:) in conformance _SingleValueEncodingContainer;
  }

  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = result;
  return result;
}

void *_s3XPC25_UnkeyedEncodingContainerV09_encodingD0_7forTypexxm_ypXpSgtAA01_cD0RzlFAC_Tt0g5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(*(a5 + 16) + 16);
  v18[3] = &type metadata for IndexCodingKey;
  v18[4] = lazy protocol witness table accessor for type IndexCodingKey and conformance IndexCodingKey();
  v18[0] = v9;
  v10 = CodingInfo.coding(forKey:forType:)(v18, a1, a2, a3);
  outlined destroy of CodingKey?(v18);
  type metadata accessor for UnkeyedGraphEncodingNode();
  v11 = swift_allocObject();
  *(v11 + 16) = &_s3XPC25_UnkeyedEncodingContainerV09_encodingD0_7forTypexxm_ypXpSgtAA01_cD0RzlFAC_Tt0g5Tv_r;
  swift_beginAccess();
  v12 = *(a5 + 16);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    *(a5 + 16) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[32 * v15];
  *(v16 + 4) = v11;
  *(v16 + 5) = &protocol witness table for UnkeyedGraphEncodingNode;
  *(v16 + 6) = 0;
  v16[56] = 17;
  *(a5 + 16) = v12;
  swift_endAccess();

  return v10;
}

uint64_t protocol witness for UnkeyedEncodingContainer.count.getter in conformance _UnkeyedEncodingContainer()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(*(v1 + 16) + 16);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encodeNil() in conformance _UnkeyedEncodingContainer()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  v2 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 16) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[32 * v5];
  *(v6 + 5) = 0;
  *(v6 + 6) = 0;
  *(v6 + 4) = 0;
  v6[56] = 18;
  *(v1 + 16) = v2;
  return swift_endAccess();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(double a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v3 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[32 * v7];
  *(v8 + 4) = a1;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  v8[56] = 3;
  *(v3 + 16) = v4;
  return swift_endAccess();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(float a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
    *(v3 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[32 * v7];
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = LODWORD(a1);
  v8[56] = 2;
  *(v3 + 16) = v4;
  return swift_endAccess();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer()
{
  return UnkeyedEncodingContainer.encode(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + 24);
  swift_beginAccess();
  v8 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v7 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[32 * v11];
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  *(v12 + 4) = a1;
  v12[56] = a4;
  *(v7 + 16) = v8;
  return swift_endAccess();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + 24);
  swift_beginAccess();
  v8 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v7 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[32 * v11];
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  *(v12 + 4) = a1;
  v12[56] = a4;
  *(v7 + 16) = v8;
  return swift_endAccess();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance _UnkeyedEncodingContainer(unsigned int a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + 24);
  swift_beginAccess();
  v8 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    *(v7 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[32 * v11];
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  *(v12 + 4) = a1;
  v12[56] = a4;
  *(v7 + 16) = v8;
  return swift_endAccess();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance _UnkeyedEncodingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

{
  return UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

void *protocol witness for UnkeyedEncodingContainer.nestedUnkeyedContainer() in conformance _UnkeyedEncodingContainer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  a3[3] = a1;
  a3[4] = a2;
  v9 = swift_allocObject();
  *a3 = v9;
  result = _s3XPC25_UnkeyedEncodingContainerV09_encodingD0_7forTypexxm_ypXpSgtAA01_cD0RzlFAC_Tt0g5(0, v5, v6, v8, v7);
  v9[2] = result;
  v9[3] = v11;
  v9[4] = v12;
  v9[5] = v13;
  return result;
}

uint64_t protocol witness for UnkeyedEncodingContainer.superEncoder() in conformance _UnkeyedEncodingContainer@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  a1[3] = &type metadata for _TopLevelEncoder;
  a1[4] = lazy protocol witness table accessor for type _TopLevelEncoder and conformance _TopLevelEncoder();
  v7 = swift_allocObject();
  *a1 = v7;
  result = _s3XPC25_UnkeyedEncodingContainerV09_encodingD0_7forTypexxm_ypXpSgtAA01_cD0RzlFAA16_TopLevelEncoderV_Tt0g5(0, v3, v4, v6, v5);
  v7[2] = result;
  v7[3] = v9;
  v7[4] = v10;
  v7[5] = v11;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance IndexCodingKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IndexCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndexCodingKey and conformance IndexCodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IndexCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IndexCodingKey and conformance IndexCodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t specialized _UnkeyedEncodingContainer.encode(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)(a1, a2);
    v13 = v12;

    a2 = v13;
  }

  swift_beginAccess();
  v6 = *(a3 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
    *(a3 + 16) = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v10 = &v6[32 * v9];
  *(v10 + 4) = a1;
  *(v10 + 5) = a2;
  *(v10 + 6) = 0;
  v10[56] = 1;
  *(a3 + 16) = v6;
  swift_endAccess();
}

uint64_t XPCArray.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = MEMORY[0x19A8E9F90]();
  if (result == MEMORY[0x1E69E9E50])
  {
    *a2 = a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

xpc_object_t XPCArray.init()@<X0>(void *a1@<X8>)
{
  result = xpc_array_create_empty();
  *a1 = result;
  return result;
}

uint64_t XPCArray.subscript.getter@<X0>(size_t index@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  v7 = xpc_array_get_value(*v4, index);
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x19A8E9F90]();
    if (v9 == MEMORY[0x1E69E9EB0])
    {
      xpc_int64_get_value(v8);
      lazy protocol witness table accessor for type Int64 and conformance Int64();
    }

    else
    {
      if (v9 != MEMORY[0x1E69E9F18])
      {
        if (v9 == MEMORY[0x1E69E9E88])
        {
          xpc_double_get_value(v8);
          lazy protocol witness table accessor for type Double and conformance Double();
          dispatch thunk of BinaryInteger.init<A>(exactly:)();
        }

        else
        {
          (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
        }

        return swift_unknownObjectRelease();
      }

      xpc_uint64_get_value(v8);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    }

    dispatch thunk of Numeric.init<A>(exactly:)();
    return swift_unknownObjectRelease();
  }

  v11 = *(*(a2 - 8) + 56);

  return v11(a4, 1, 1, a2);
}

{
  v7 = xpc_array_get_value(*v4, index);
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x19A8E9F90]();
    if (v9 == MEMORY[0x1E69E9EB0])
    {
      xpc_int64_get_value(v8);
      lazy protocol witness table accessor for type Int64 and conformance Int64();
    }

    else
    {
      if (v9 != MEMORY[0x1E69E9F18])
      {
        if (v9 == MEMORY[0x1E69E9E88])
        {
          xpc_double_get_value(v8);
          lazy protocol witness table accessor for type Double and conformance Double();
          dispatch thunk of BinaryFloatingPoint.init<A>(exactly:)();
        }

        else
        {
          (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
        }

        return swift_unknownObjectRelease();
      }

      xpc_uint64_get_value(v8);
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
    }

    dispatch thunk of FloatingPoint.init<A>(exactly:)();
    return swift_unknownObjectRelease();
  }

  v11 = *(*(a2 - 8) + 56);

  return v11(a4, 1, 1, a2);
}

id XPCArray.subscript.getter(size_t index)
{
  value = xpc_array_get_value(*v1, index);

  return value;
}

{
  value = xpc_array_get_value(*v1, index);

  return value;
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E63B8], MEMORY[0x1E69E63B0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7710], MEMORY[0x1E69E76D8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int64 and conformance Int64()
{
  result = lazy protocol witness table cache variable for type Int64 and conformance Int64;
  if (!lazy protocol witness table cache variable for type Int64 and conformance Int64)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E73A0], MEMORY[0x1E69E7360], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Int64 and conformance Int64);
  }

  return result;
}

uint64_t XPCArray.subscript.setter(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4)
{
  return XPCArray.subscript.setter(a1, a2, a3, a4, partial apply for implicit closure #1 in XPCArray.subscript.setter, MEMORY[0x1E69E7360], MEMORY[0x1E69E9F90]);
}

{
  return XPCArray.subscript.setter(a1, a2, a3, a4, partial apply for implicit closure #1 in XPCArray.subscript.setter, MEMORY[0x1E69E76D8], MEMORY[0x1E69E9FA0]);
}

{
  specialized XPCArray.subscript.setter(a1, a2, a3, a4);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t implicit closure #1 in XPCArray.subscript.setter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v30 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v9 = *(a2 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v28[-v15];
  (*(v9 + 16))(&v28[-v15], a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_14;
  }

  v31 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v29 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v17 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v29 & 1) == 0)
  {
    if (v17 >= 64)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v17 > 64)
  {
LABEL_8:
    lazy protocol witness table accessor for type Int64 and conformance Int64();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v18 = dispatch thunk of static Comparable.< infix(_:_:)();
    v19 = *(v9 + 8);
    v19(v13, a2);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_14:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
      goto LABEL_24;
    }

    v31 = 0x7FFFFFFFFFFFFFFFLL;
    v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v21)
    {
      if (v22 > 64)
      {
        goto LABEL_17;
      }
    }

    else if (v22 > 63)
    {
LABEL_17:
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v23 = dispatch thunk of static Comparable.< infix(_:_:)();
      v19 = *(v9 + 8);
      v19(v13, a2);
      if (v23)
      {
        goto LABEL_18;
      }

LABEL_24:
      v25 = dispatch thunk of BinaryInteger._lowWord.getter();
      result = (*(v9 + 8))(v16, a2);
      v26 = 0;
      goto LABEL_25;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_24;
  }

  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v20 = dispatch thunk of static Comparable.< infix(_:_:)();
  v19 = *(v9 + 8);
  v19(v13, a2);
  if ((v20 & 1) == 0)
  {
LABEL_13:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_14;
  }

LABEL_18:
  result = (v19)(v16, a2);
  v25 = 0;
  v26 = 1;
LABEL_25:
  v27 = v30;
  *v30 = v25;
  *(v27 + 8) = v26;
  return result;
}

_xpc_connection_s *XPCArray.subscript.setter(_xpc_connection_s *result, size_t a2)
{
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x19A8E9F90]();
    v6 = *v2;
    if (v5 == MEMORY[0x1E69E9E68])
    {
      xpc_array_set_connection(v6, a2, v4);
    }

    else
    {
      xpc_array_set_value(v6, a2, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*XPCArray.subscript.modify(void *a1, size_t a2, uint64_t a3, uint64_t a4))(size_t **a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  XPCArray.subscript.getter(a2, a3, v15);
  return XPCArray.subscript.modify;
}

{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  XPCArray.subscript.getter(a2, a3, v15);
  return XPCArray.subscript.modify;
}

void XPCArray.subscript.modify(size_t **a1, uint64_t a2)
{
  XPCArray.subscript.modify(a1, a2, partial apply for implicit closure #1 in XPCArray.subscript.setter, MEMORY[0x1E69E7360], MEMORY[0x1E69E9F90]);
}

{
  XPCArray.subscript.modify(a1, a2, partial apply for implicit closure #1 in XPCArray.subscript.setter, MEMORY[0x1E69E76D8], MEMORY[0x1E69E9FA0]);
}

uint64_t XPCArray.subscript.getter@<X0>(size_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  return XPCArray.subscript.getter(a1, a2, a4);
}

{
  return XPCArray.subscript.getter(a1, a2, a4);
}

uint64_t XPCArray.subscript.setter(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  specialized XPCArray.subscript.setter(a1, a2, a3, a4, a5, a6, a7);
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

uint64_t implicit closure #1 in XPCArray.subscript.setter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v35 = a4;
  v36 = *(*(*(a3 + 8) + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v10 = (&v32 - v9);
  v11 = *(a2 - 8);
  v13 = MEMORY[0x1EEE9AC00](v8, v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v32 - v17;
  (*(v11 + 16))(&v32 - v17, a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v19 = dispatch thunk of static Comparable.< infix(_:_:)(), v34 = *(v11 + 8), v34(v15, a2), (v19 & 1) == 0))
  {
    v34 = v10;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_15;
    }

    v37 = -1;
    v21 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v22 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v21)
    {
      v23 = v11;
      if (v22 > 64)
      {
        lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        v24 = v15;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v25 = dispatch thunk of static Comparable.< infix(_:_:)();
        goto LABEL_10;
      }

      swift_getAssociatedConformanceWitness();
      v33 = v11;
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v29 = v15;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v30 = dispatch thunk of static Comparable.> infix(_:_:)();
      (*(v33 + 8))(v29, a2);
      if ((v30 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v22 >= 65)
    {
      lazy protocol witness table accessor for type UInt64 and conformance UInt64();
      v24 = v15;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v25 = dispatch thunk of static Comparable.< infix(_:_:)();
      v23 = v11;
LABEL_10:
      v26 = *(v23 + 8);
      v26(v24, a2);
      if (v25)
      {
        result = (v26)(v18, a2);
        goto LABEL_12;
      }

LABEL_15:
      v27 = dispatch thunk of BinaryInteger._lowWord.getter();
      result = (*(v11 + 8))(v18, a2);
      v28 = 0;
      goto LABEL_16;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_15;
  }

  result = (v34)(v18, a2);
LABEL_12:
  v27 = 0;
  v28 = 1;
LABEL_16:
  v31 = v35;
  *v35 = v27;
  *(v31 + 8) = v28;
  return result;
}

void XPCArray.subscript.modify(size_t **a1, char a2, void (*a3)(char *, char *), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = (*a1)[6];
  v8 = (*a1)[7];
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v11 = (*a1)[2];
  v12 = **a1;
  v13 = (*a1)[1];
  if (a2)
  {
    (*(v10 + 16))((*a1)[6], v8, v9);
    specialized XPCArray.subscript.setter(v7, v12, v13, v11, a3, a4, a5);
    v14 = *(v10 + 8);
    v14(v7, v9);
    v14(v8, v9);
  }

  else
  {
    specialized XPCArray.subscript.setter((*a1)[7], v12, v13, v11, a3, a4, a5);
    (*(v10 + 8))(v8, v9);
  }

  free(v8);
  free(v7);

  free(v6);
}

xpc_object_t closure #1 in XPCArray.subscript.setter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v4 + 16))(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  result = xpc_double_create(*&v6[1]);
  *a2 = result;
  return result;
}

void (*XPCArray.subscript.modify(void *a1, size_t a2, uint64_t a3, uint64_t a4))(size_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  v12 = type metadata accessor for Optional();
  v11[4] = v12;
  v13 = *(v12 - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  XPCArray.subscript.getter(a2, a3, v15);
  return XPCArray.subscript.modify;
}

void XPCArray.subscript.modify(size_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    specialized XPCArray.subscript.setter(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    specialized XPCArray.subscript.setter((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t XPCArray.subscript.getter@<X0>(size_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  v18[0] = a2;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v18 - v12;
  v18[1] = *v5;
  XPCArray.subscript.getter(a1, a3, v18 - v12);
  v14 = *(a3 - 8);
  v15 = *(v14 + 48);
  v16 = v15(v13, 1, a3);
  if (v16 != 1)
  {
    return (*(v14 + 32))(a5, v13, a3);
  }

  (v18[0])(v16);
  result = v15(v13, 1, a3);
  if (result != 1)
  {
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t XPCArray.subscript.getter(size_t index)
{
  v2 = xpc_array_get_value(*v1, index);
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  if (MEMORY[0x19A8E9F90]() != MEMORY[0x1E69E9E58])
  {
    swift_unknownObjectRelease();
    return 2;
  }

  value = xpc_BOOL_get_value(v3);
  swift_unknownObjectRelease();
  return value;
}

xpc_object_t XPCArray.subscript.getter(size_t index, uint64_t a2)
{
  result = xpc_array_get_value(*v2, index);
  if (result)
  {
    v5 = result;
    if (MEMORY[0x19A8E9F90]() == a2)
    {
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

xpc_object_t key path getter for XPCArray.subscript(_:) : XPCArray@<X0>(xpc_object_t *a1@<X0>, size_t *a2@<X1>, char *a3@<X8>)
{
  result = xpc_array_get_value(*a1, *a2);
  if (result)
  {
    v5 = result;
    if (MEMORY[0x19A8E9F90]() == MEMORY[0x1E69E9E58])
    {
      value = xpc_BOOL_get_value(v5);
      result = swift_unknownObjectRelease();
      goto LABEL_6;
    }

    result = swift_unknownObjectRelease();
  }

  value = 2;
LABEL_6:
  *a3 = value;
  return result;
}

unsigned __int8 *key path setter for XPCArray.subscript(_:) : XPCArray(unsigned __int8 *result, void **a2, size_t *a3)
{
  v4 = *result;
  if (v4 != 2)
  {
    v6 = *a3;
    v7 = xpc_BOOL_create(v4 & 1);
    v8 = MEMORY[0x19A8E9F90]();
    v9 = *a2;
    if (v8 == MEMORY[0x1E69E9E68])
    {
      xpc_array_set_connection(v9, v6, v7);
    }

    else
    {
      xpc_array_set_value(v9, v6, v7);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t XPCArray.subscript.setter(uint64_t result, size_t a2)
{
  if (result != 2)
  {
    v4 = xpc_BOOL_create(result & 1);
    v5 = MEMORY[0x19A8E9F90]();
    v6 = *v2;
    if (v5 == MEMORY[0x1E69E9E68])
    {
      xpc_array_set_connection(v6, a2, v4);
    }

    else
    {
      xpc_array_set_value(v6, a2, v4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*XPCArray.subscript.modify(uint64_t a1, size_t a2))(uint64_t result)
{
  v4 = *v2;
  *a1 = a2;
  *(a1 + 8) = v4;
  v5 = xpc_array_get_value(v4, a2);
  if (v5)
  {
    v6 = v5;
    if (MEMORY[0x19A8E9F90]() == MEMORY[0x1E69E9E58])
    {
      value = xpc_BOOL_get_value(v6);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  value = 2;
LABEL_6:
  *(a1 + 16) = value;
  return XPCArray.subscript.modify;
}

uint64_t XPCArray.subscript.modify(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != 2)
  {
    v3 = xpc_BOOL_create(v2 & 1);
    v4 = MEMORY[0x19A8E9F90]();
    v6 = *v1;
    v5 = v1[1];
    if (v4 == MEMORY[0x1E69E9E68])
    {
      xpc_array_set_connection(v5, v6, v3);
    }

    else
    {
      xpc_array_set_value(v5, v6, v3);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t XPCArray.subscript.getter(size_t index, uint64_t (*a2)(xpc_object_t))
{
  v4 = xpc_array_get_value(*v2, index);
  if (!v4)
  {
    return a2(v4) & 1;
  }

  v5 = v4;
  if (MEMORY[0x19A8E9F90]() != MEMORY[0x1E69E9E58])
  {
    v4 = swift_unknownObjectRelease();
    return a2(v4) & 1;
  }

  value = xpc_BOOL_get_value(v5);
  swift_unknownObjectRelease();
  return value;
}

xpc_object_t XPCArray.subscript.getter@<X0>(size_t index@<X0>, void *a2@<X8>)
{
  result = xpc_array_get_dictionary(*v2, index);
  v5 = result;
  if (result && (result = MEMORY[0x19A8E9F90](result), result != MEMORY[0x1E69E9E80]))
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

{
  result = xpc_array_get_dictionary(*v2, index);
  v5 = result;
  if (result && (result = MEMORY[0x19A8E9F90](result), result != MEMORY[0x1E69E9E80]))
  {
    __break(1u);
  }

  else
  {
    *a2 = v5;
  }

  return result;
}

xpc_object_t key path getter for XPCArray.subscript(_:) : XPCArray@<X0>(xpc_object_t *a1@<X0>, size_t *a2@<X1>, void *a3@<X8>)
{
  result = xpc_array_get_dictionary(*a1, *a2);
  v5 = result;
  if (result && (result = MEMORY[0x19A8E9F90](result), result != MEMORY[0x1E69E9E80]))
  {
    __break(1u);
  }

  else
  {
    *a3 = v5;
  }

  return result;
}

xpc_object_t *XPCArray.subscript.setter(xpc_object_t *result, size_t a2)
{
  if (*result)
  {
    xpc_array_set_value(*v2, a2, *result);

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*XPCArray.subscript.modify(void *a1, size_t a2))(uint64_t result, char a2)
{
  v4 = *v2;
  a1[1] = a2;
  a1[2] = v4;
  v5 = xpc_array_get_dictionary(v4, a2);
  v6 = v5;
  if (v5 && (result = MEMORY[0x19A8E9F90](v5), result != MEMORY[0x1E69E9E80]))
  {
    __break(1u);
  }

  else
  {
    *a1 = v6;
    return XPCArray.subscript.modify;
  }

  return result;
}

uint64_t XPCArray.subscript.modify(uint64_t result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if (v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!v2)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  xpc_array_set_value(*(result + 16), *(result + 8), v2);

  return swift_unknownObjectRelease();
}

{
  v3 = *(result + 8);
  if (a2)
  {
    if (v3)
    {
      v5 = *(result + 16);
      v4 = *(result + 24);
      v6 = *result;

      specialized String.withCString<A>(_:)(v6, v3, v4, v5);
    }
  }

  else
  {
    if (!v3)
    {
      return result;
    }

    specialized String.withCString<A>(_:)(*result, v3, *(result + 24), *(result + 16));
  }
}

_xpc_connection_s **key path setter for XPCArray.subscript(_:) : XPCArray(_xpc_connection_s **result, void **a2, size_t *a3)
{
  v3 = *result;
  if (*result)
  {
    v5 = *a3;
    v6 = swift_unknownObjectRetain();
    v7 = MEMORY[0x19A8E9F90](v6);
    v8 = *a2;
    if (v7 == MEMORY[0x1E69E9E68])
    {
      xpc_array_set_connection(v8, v5, v3);
    }

    else
    {
      xpc_array_set_value(v8, v5, v3);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

_xpc_connection_s **(*XPCArray.subscript.modify(void *a1, size_t a2))(_xpc_connection_s **result, char a2)
{
  v4 = *v2;
  a1[1] = a2;
  a1[2] = v4;
  *a1 = xpc_array_get_value(v4, a2);
  return XPCArray.subscript.modify;
}

_xpc_connection_s **XPCArray.subscript.modify(_xpc_connection_s **result, char a2)
{
  v2 = result;
  v3 = *result;
  if (a2)
  {
    if (v3)
    {
      v4 = swift_unknownObjectRetain();
      v5 = MEMORY[0x19A8E9F90](v4);
      v7 = v2[1];
      v6 = v2[2];
      if (v5 == MEMORY[0x1E69E9E68])
      {
        xpc_array_set_connection(v6, v7, v3);
      }

      else
      {
        xpc_array_set_value(v6, v7, v3);
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  else if (v3)
  {
    v8 = swift_unknownObjectRetain();
    v9 = MEMORY[0x19A8E9F90](v8);
    v11 = v2[1];
    v10 = v2[2];
    if (v9 == MEMORY[0x1E69E9E68])
    {
      xpc_array_set_connection(v10, v11, v3);
    }

    else
    {
      xpc_array_set_value(v10, v11, v3);
    }

    return swift_unknownObjectRelease_n();
  }

  return result;
}

const char *XPCArray.subscript.getter(size_t index)
{
  result = xpc_array_get_string(*v1, index);
  if (result)
  {
    return String.init(cString:)();
  }

  return result;
}

const char *key path getter for XPCArray.subscript(_:) : XPCArray@<X0>(xpc_object_t *a1@<X0>, size_t *a2@<X1>, const char **a3@<X8>)
{
  result = xpc_array_get_string(*a1, *a2);
  if (result)
  {
    result = String.init(cString:)();
  }

  else
  {
    v5 = 0;
  }

  *a3 = result;
  a3[1] = v5;
  return result;
}

void key path setter for XPCArray.subscript(_:) : XPCArray(uint64_t *result, void **a2, size_t *a3)
{
  v4 = result[1];
  if (v4)
  {
    specialized String.withCString<A>(_:)(*result, v4, a2, *a3);
  }
}

uint64_t XPCArray.subscript.setter(uint64_t result, uint64_t a2, size_t index)
{
  if (a2)
  {
    specialized String.withCString<A>(_:)(result, a2, v3, index);
  }

  return result;
}

void specialized String.withCString<A>(_:)(uint64_t a2, uint64_t a3, void **a4, size_t index)
{
  if ((a3 & 0x1000000000000000) == 0)
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      *string = a2;
      v8 = a3 & 0xFFFFFFFFFFFFFFLL;
      v5 = *a4;
      v6 = string;
      goto LABEL_6;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v5 = *a4;
      v6 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      xpc_array_set_string(v5, index, v6);
      return;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
}

uint64_t (*XPCArray.subscript.modify(const char **a1, const char *a2))(uint64_t result, char a2)
{
  a1[2] = a2;
  a1[3] = v2;
  string = xpc_array_get_string(*v2, a2);
  if (string)
  {
    string = String.init(cString:)();
  }

  else
  {
    v5 = 0;
  }

  *a1 = string;
  a1[1] = v5;
  return XPCArray.subscript.modify;
}

uint64_t XPCArray.copy(into:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in XPCArray.copy(into:);
  *(v5 + 24) = v4;
  v8[4] = partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool);
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool);
  v8[3] = &block_descriptor_0;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  xpc_array_apply(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t XPCArray.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  closure #1 in XPCArray.forEach(_:)(partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@error @owned Error), v7, v6);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

{
  v9[3] = a2;
  v4 = *v2;
  v9[2] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@error @owned Error);
  *(v5 + 24) = v9;
  closure #1 in XPCArray.forEach(_:)(thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply, v5, v4);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v8 = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in XPCArray.forEach(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in closure #1 in XPCArray.forEach(_:);
  *(v7 + 24) = v6;
  aBlock[4] = thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool)partial apply;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_49;
  v8 = _Block_copy(aBlock);

  xpc_array_apply(a3, v8);
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else if (v11)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

uint64_t XPCArray.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v20 = Array.init()();
  count = xpc_array_get_count(v8);
  type metadata accessor for Array();
  Array.reserveCapacity(_:)(count);
  v16 = a3;
  v17 = &v20;
  v18 = a1;
  v19 = a2;
  v14[2] = partial apply for closure #1 in XPCArray.map<A>(_:);
  v14[3] = &v15;
  v10 = swift_allocObject();
  *(v10 + 16) = thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply;
  *(v10 + 24) = v14;
  closure #1 in XPCArray.forEach(_:)(thunk for @callee_guaranteed (@unowned Int, @guaranteed OS_xpc_object) -> (@error @owned Error)partial apply, v10, v8);
  if (v4)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }

    __break(1u);
    goto LABEL_8;
  }

  v13 = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return v20;
}

uint64_t closure #1 in XPCArray.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  result = v8(v7);
  if (!v6)
  {
    type metadata accessor for Array();
    return Array.append(_:)();
  }

  return result;
}

Swift::Int XPCArray.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = xpc_hash(v1);
  MEMORY[0x19A8E9610](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCArray()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = xpc_hash(v1);
  MEMORY[0x19A8E9610](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCArray(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = xpc_hash(v2);
  MEMORY[0x19A8E9610](v3);
  return Hasher._finalize()();
}

uint64_t XPCArray.debugDescription.getter()
{
  v1 = MEMORY[0x19A8E9DF0](*v0);
  v2 = String.init(cString:)();
  free(v1);
  return v2;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCArray()
{
  v1 = MEMORY[0x19A8E9DF0](*v0);
  v2 = String.init(cString:)();
  free(v1);
  return v2;
}

void *specialized XPCArray.subscript.setter(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v11 = v7;
  v18[2] = a3;
  v18[3] = a4;
  type metadata accessor for Optional();
  result = _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(a5, v18, MEMORY[0x1E69E73E0], a6, v13, &v19);
  if (v20 != 1)
  {
    v15 = a7(v19);
    v16 = MEMORY[0x19A8E9F90]();
    v17 = *v11;
    if (v16 == MEMORY[0x1E69E9E68])
    {
      xpc_array_set_connection(v17, a2, v15);
    }

    else
    {
      xpc_array_set_value(v17, a2, v15);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *specialized XPCArray.subscript.setter(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13[2] = a3;
  v13[3] = a4;
  type metadata accessor for Optional();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13OS_xpc_object_pMd, &_sSo13OS_xpc_object_pMR);
  result = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in XPCArray.subscript.setter, v13, MEMORY[0x1E69E73E0], v7, v8, &v14);
  v10 = v14;
  if (v14)
  {
    v11 = MEMORY[0x19A8E9F90](v14);
    v12 = *v5;
    if (v11 == MEMORY[0x1E69E9E68])
    {
      xpc_array_set_connection(v12, a2, v10);
    }

    else
    {
      xpc_array_set_value(v12, a2, v10);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCArray and conformance XPCArray()
{
  result = lazy protocol witness table cache variable for type XPCArray and conformance XPCArray;
  if (!lazy protocol witness table cache variable for type XPCArray and conformance XPCArray)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCArray, &type metadata for XPCArray, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCArray and conformance XPCArray);
  }

  return result;
}

uint64_t partial apply for implicit closure #1 in XPCArray.subscript.setter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  return implicit closure #1 in XPCArray.subscript.setter(a1, *(v2 + 16), *(v2 + 24), a2);
}

{
  return implicit closure #1 in XPCArray.subscript.setter(a1, *(v2 + 16), a2);
}

uint64_t type metadata accessor for CodingUserInfoKeyNotFound(uint64_t a1)
{
  result = type metadata singleton initialization cache for CodingUserInfoKeyNotFound;
  if (!type metadata singleton initialization cache for CodingUserInfoKeyNotFound)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CodingUserInfoKeyNotFound(uint64_t a1)
{
  result = type metadata accessor for CodingUserInfoKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodingUserInfoKeyNotFound()
{
  _StringGuts.grow(_:)(28);
  MEMORY[0x19A8E8E70](0xD00000000000001ALL, 0x8000000197938430);
  type metadata accessor for CodingUserInfoKey();
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

xpc_object_t XPCCodableObject.copyUnderlyingXPCObject()()
{
  result = xpc_copy(*v0);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

Swift::Int XPCCodableObject.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = xpc_hash(v1);
  MEMORY[0x19A8E9610](v2);
  return Hasher._finalize()();
}

unint64_t XPCCodableObject.debugDescription.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  MEMORY[0x19A8E9DF0](v1);
  v2 = String.init(cString:)();
  MEMORY[0x19A8E8E70](v2);

  MEMORY[0x19A8E8E70](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t static XPCCodableObjectRepresentable.validXPCObjectTypes.getter()
{
  specialized static XPCCodableObjectRepresentable.validXPCObjectTypes.getter();
}

{
  specialized static XPCCodableObjectRepresentable.validXPCObjectTypes.getter();
}

unint64_t lazy protocol witness table accessor for type CodingUserInfoKeyNotFound and conformance CodingUserInfoKeyNotFound()
{
  result = lazy protocol witness table cache variable for type CodingUserInfoKeyNotFound and conformance CodingUserInfoKeyNotFound;
  if (!lazy protocol witness table cache variable for type CodingUserInfoKeyNotFound and conformance CodingUserInfoKeyNotFound)
  {
    v3 = type metadata accessor for CodingUserInfoKeyNotFound(255);
    result = swift_getWitnessTable(protocol conformance descriptor for CodingUserInfoKeyNotFound, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CodingUserInfoKeyNotFound and conformance CodingUserInfoKeyNotFound);
  }

  return result;
}

uint64_t specialized static XPCCodableObjectRepresentable.validXPCObjectTypes.getter()
{
  if (one-time initialization token for allTypes != -1)
  {
    swift_once();
  }

  return static Set<>.allTypes;
}

unint64_t lazy protocol witness table accessor for type XPCCodableObject and conformance XPCCodableObject()
{
  result = lazy protocol witness table cache variable for type XPCCodableObject and conformance XPCCodableObject;
  if (!lazy protocol witness table cache variable for type XPCCodableObject and conformance XPCCodableObject)
  {
    result = swift_getWitnessTable("Y(VW|J", &type metadata for XPCCodableObject, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCCodableObject and conformance XPCCodableObject);
  }

  return result;
}

Swift::Int XPCEndpoint.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = xpc_hash(v1);
  MEMORY[0x19A8E9610](v2);
  return Hasher._finalize()();
}

unint64_t XPCEndpoint.debugDescription.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(19);

  MEMORY[0x19A8E9DF0](v1);
  v2 = String.init(cString:)();
  MEMORY[0x19A8E8E70](v2);

  MEMORY[0x19A8E8E70](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t XPCEndpoint.encode(to:)(void *a1)
{
  swift_unknownObjectRetain();
  XPCCodableObject.encode(to:)(a1);
  return swift_unknownObjectRelease();
}

uint64_t XPCEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of Decoder(a1, v10);
  XPCCodableObject.init(from:)(v10, &v11);
  if (!v2)
  {
    v5 = v11;
    if (MEMORY[0x19A8E9F90](v11) == MEMORY[0x1E69E9E90])
    {
      *a2 = v5;
    }

    else
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v8 = &type metadata for XPCEndpoint;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      MEMORY[0x19A8E8E70](0x6465746365707845, 0xE900000000000020);
      MEMORY[0x19A8E8E70](0x6F70646E45435058, 0xEB00000000746E69);
      MEMORY[0x19A8E8E70](0xD000000000000026, 0x80000001979384D0);
      v11 = MEMORY[0x19A8E9F90](v5);
      _print_unlocked<A, B>(_:_:)();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6AF8], v6);
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type XPCEndpoint and conformance XPCEndpoint()
{
  result = lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint;
  if (!lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for XPCEndpoint, &type metadata for XPCEndpoint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type XPCEndpoint and conformance XPCEndpoint);
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance XPCEndpoint(void *a1)
{
  swift_unknownObjectRetain();
  XPCCodableObject.encode(to:)(a1);
  return swift_unknownObjectRelease();
}

float _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2fms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  v21 = a1;
  v10 = type metadata accessor for DecodingError();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25[0] = *(v5 + 24);
  *(v25 + 9) = *(v5 + 33);
  *v24 = *(v5 + 24);
  *&v24[9] = *(v5 + 33);
  v23[3] = a2;
  v23[4] = a3;
  v15 = swift_allocObject();
  v23[0] = v15;
  v16 = *(v5 + 16);
  *(v15 + 16) = *v5;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v5 + 32);
  *(v15 + 64) = *(v5 + 48);
  outlined init with copy of EncodingGraph.Value(v25, v22);
  a5(v5, v22);
  _s3XPC13EncodingGraphO5ValueO6decode2as3forS2fm_AA18_DecodingContainer_pts0H5ErrorOYKF(v23, v14);
  v18 = v17;
  outlined consume of EncodingGraph.Value(*v24, *&v24[8], *&v24[16], v24[24]);
  if (v6)
  {
    (*(v11 + 32))(v21, v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt32VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5Tm(uint64_t a1, uint64_t (*a2)(void *, _BYTE *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[0] = *(v2 + 24);
  *(v18 + 9) = *(v2 + 33);
  *v17 = *(v2 + 24);
  *&v17[9] = *(v2 + 33);
  v16[3] = &type metadata for _SingleValueDecodingContainer;
  v16[4] = &protocol witness table for _SingleValueDecodingContainer;
  v11 = swift_allocObject();
  v16[0] = v11;
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = *(v2 + 48);
  outlined init with copy of EncodingGraph.Value(v18, v15);
  outlined init with copy of _SingleValueDecodingContainer(v2, v15);
  v13 = a2(v16, v10);
  outlined consume of EncodingGraph.Value(*v17, *&v17[8], *&v17[16], v17[24]);
  if (v3)
  {
    (*(v7 + 32))(a1, v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int64VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = *(v1 + 24);
  *(v16 + 9) = *(v1 + 33);
  *v15 = *(v1 + 24);
  *&v15[9] = *(v1 + 33);
  v14[3] = &type metadata for SingleValueDecodingContainer4OptionalPrimitive;
  v14[4] = &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  outlined init with copy of EncodingGraph.Value(v16, v13);
  outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive(v1, v13);
  v11 = _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(v14, v8);
  outlined consume of EncodingGraph.Value(*v15, *&v15[8], *&v15[16], v15[24]);
  if (v2)
  {
    (*(v5 + 32))(a1, v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int64VAFms0D5ErrorOYKFAA01_bcdE0V_Tt0B5(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = *(v1 + 24);
  *(v16 + 9) = *(v1 + 33);
  *v15 = *(v1 + 24);
  *&v15[9] = *(v1 + 33);
  v14[3] = &type metadata for _SingleValueDecodingContainer;
  v14[4] = &protocol witness table for _SingleValueDecodingContainer;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  outlined init with copy of EncodingGraph.Value(v16, v13);
  outlined init with copy of _SingleValueDecodingContainer(v1, v13);
  v11 = _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(v14, v8);
  outlined consume of EncodingGraph.Value(*v15, *&v15[8], *&v15[16], v15[24]);
  if (v2)
  {
    (*(v5 + 32))(a1, v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ums0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = *(v1 + 24);
  *(v16 + 9) = *(v1 + 33);
  *v15 = *(v1 + 24);
  *&v15[9] = *(v1 + 33);
  v14[3] = &type metadata for SingleValueDecodingContainer4OptionalPrimitive;
  v14[4] = &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  outlined init with copy of EncodingGraph.Value(v16, v13);
  outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive(v1, v13);
  v11 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2um_AA18_DecodingContainer_pts0H5ErrorOYKF(v14, v8);
  outlined consume of EncodingGraph.Value(*v15, *&v15[8], *&v15[16], v15[24]);
  if (v2)
  {
    (*(v5 + 32))(a1, v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ums0D5ErrorOYKFAA01_bcdE0V_Tt0B5(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = *(v1 + 24);
  *(v16 + 9) = *(v1 + 33);
  *v15 = *(v1 + 24);
  *&v15[9] = *(v1 + 33);
  v14[3] = &type metadata for _SingleValueDecodingContainer;
  v14[4] = &protocol witness table for _SingleValueDecodingContainer;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  outlined init with copy of EncodingGraph.Value(v16, v13);
  outlined init with copy of _SingleValueDecodingContainer(v1, v13);
  v11 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2um_AA18_DecodingContainer_pts0H5ErrorOYKF(v14, v8);
  outlined consume of EncodingGraph.Value(*v15, *&v15[8], *&v15[16], v15[24]);
  if (v2)
  {
    (*(v5 + 32))(a1, v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys4Int8VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t (*a2)(void *, _BYTE *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[0] = *(v2 + 24);
  *(v18 + 9) = *(v2 + 33);
  *v17 = *(v2 + 24);
  *&v17[9] = *(v2 + 33);
  v16[3] = &type metadata for SingleValueDecodingContainer4OptionalPrimitive;
  v16[4] = &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive;
  v11 = swift_allocObject();
  v16[0] = v11;
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = *(v2 + 48);
  outlined init with copy of EncodingGraph.Value(v18, v15);
  outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive(v2, v15);
  v13 = a2(v16, v10);
  outlined consume of EncodingGraph.Value(*v17, *&v17[8], *&v17[16], v17[24]);
  if (v3)
  {
    (*(v7 + 32))(a1, v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int16VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t (*a2)(void *, _BYTE *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[0] = *(v2 + 24);
  *(v18 + 9) = *(v2 + 33);
  *v17 = *(v2 + 24);
  *&v17[9] = *(v2 + 33);
  v16[3] = &type metadata for SingleValueDecodingContainer4OptionalPrimitive;
  v16[4] = &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive;
  v11 = swift_allocObject();
  v16[0] = v11;
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = *(v2 + 48);
  outlined init with copy of EncodingGraph.Value(v18, v15);
  outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive(v2, v15);
  v13 = a2(v16, v10);
  outlined consume of EncodingGraph.Value(*v17, *&v17[8], *&v17[16], v17[24]);
  if (v3)
  {
    (*(v7 + 32))(a1, v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int32VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm(uint64_t a1, uint64_t (*a2)(void *, _BYTE *))
{
  v6 = type metadata accessor for DecodingError();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[0] = *(v2 + 24);
  *(v18 + 9) = *(v2 + 33);
  *v17 = *(v2 + 24);
  *&v17[9] = *(v2 + 33);
  v16[3] = &type metadata for SingleValueDecodingContainer4OptionalPrimitive;
  v16[4] = &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive;
  v11 = swift_allocObject();
  v16[0] = v11;
  v12 = *(v2 + 16);
  *(v11 + 16) = *v2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v2 + 32);
  *(v11 + 64) = *(v2 + 48);
  outlined init with copy of EncodingGraph.Value(v18, v15);
  outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive(v2, v15);
  v13 = a2(v16, v10);
  outlined consume of EncodingGraph.Value(*v17, *&v17[8], *&v17[16], v17[24]);
  if (v3)
  {
    (*(v7 + 32))(a1, v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt64VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16[0] = *(v1 + 24);
  *(v16 + 9) = *(v1 + 33);
  *v15 = *(v1 + 24);
  *&v15[9] = *(v1 + 33);
  v14[3] = &type metadata for SingleValueDecodingContainer4OptionalPrimitive;
  v14[4] = &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive;
  v9 = swift_allocObject();
  v14[0] = v9;
  v10 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = *(v1 + 48);
  outlined init with copy of EncodingGraph.Value(v16, v13);
  outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive(v1, v13);
  v11 = _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt64VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF(v14, v8);
  outlined consume of EncodingGraph.Value(*v15, *&v15[8], *&v15[16], v15[24]);
  if (v2)
  {
    (*(v5 + 32))(a1, v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t SingleValueDecodingContainer4OptionalPrimitive.decode<A>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DecodingError();
  swift_allocError();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
  *v4 = a1;

  _StringGuts.grow(_:)(16);
  MEMORY[0x19A8E8E70](0x20646E756F46, 0xE600000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x19A8E8E70](0x64616574736E6920, 0xE800000000000000);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6AF8], v2);
  return swift_willThrow();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDecodingContainer4OptionalPrimitive(uint64_t a1, uint64_t a2)
{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for SingleValueDecodingContainer4OptionalPrimitive, &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive, &unk_1F0C08FA8, outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive) & 1;
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for SingleValueDecodingContainer4OptionalPrimitive, &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive, &unk_1F0C08FA8, outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ims0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors4Int8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys4Int8VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int16VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5Int32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int32VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int64VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeyS2ums0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors5UInt8VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys4Int8VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt16VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int16VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC13EncodingGraphO5ValueO6decode2as3fors6UInt32VAJm_AA18_DecodingContainer_pts0I5ErrorOYKF, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys5Int32VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5Tm);
}

{
  return protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, _s3XPC35_SingleValueDecodingContainerCommonPAAE6decodeys6UInt64VAFms0D5ErrorOYKFAA0bcD27Container4OptionalPrimitiveV_Tt0B5);
}

void protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDecodingContainer4OptionalPrimitive(uint64_t a1, uint64_t a2)
{
  protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for SingleValueDecodingContainer4OptionalPrimitive, &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive, &unk_1F0C08FA8, outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive);
}

{
  protocol witness for SingleValueDecodingContainer.decode(_:) in conformance _SingleValueDecodingContainer(a1, a2, &type metadata for SingleValueDecodingContainer4OptionalPrimitive, &protocol witness table for SingleValueDecodingContainer4OptionalPrimitive, &unk_1F0C08FA8, outlined init with copy of SingleValueDecodingContainer4OptionalPrimitive);
}

uint64_t _s3XPC29_SingleValueDecodingContainerVAA01_dE0A2aDP10codingInfo9containerxAA06CodingG0V_AA13EncodingGraphO0E0_pts0D5ErrorOYKcfCTWTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v20 = a6;
  v21 = a5;
  v13 = type metadata accessor for DecodingError();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v22;
  result = a9(a1, a2, a3, a4, v21, v17);
  if (v18)
  {
    return (*(v14 + 32))(v20, v17, v13);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SingleValueDecodingContainer(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for _SingleValueDecodingContainer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDecodingContainer4OptionalPrimitive()
{
  return sub_197916990();
}

{
  return sub_1979169A8();
}

void *XPCRichError.init(_:)@<X0>(_xpc_rich_error_s *a1@<X0>, uint64_t a2@<X8>)
{
  result = MEMORY[0x19A8E9F90]();
  if (result == MEMORY[0x1E69E9EE8])
  {
    result = xpc_rich_error_copy_description(a1);
    if (result)
    {
      v5 = result;
      v6 = String.init(cString:)();
      v8 = v7;
      can_retry = xpc_rich_error_can_retry(a1);
      free(v5);
      result = swift_unknownObjectRelease();
      *a2 = can_retry;
      *(a2 + 8) = v6;
      *(a2 + 16) = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t XPCRichError.debugDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t getEnumTagSinglePayload for XPCRichError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCRichError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s3XPC23_KeyedDecodingContainerV6decode_6forKeys4Int8VAGm_xts0C5ErrorOYKFTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, char *))
{
  v35 = a8;
  v36 = a7;
  v15 = type metadata accessor for DecodingError();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v34 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v32 - v21;
  v23 = a1;
  v32 = a2;
  v33 = a3;
  v24 = a5;
  v25 = a5;
  v26 = v36;
  v27 = v44;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v23, a4, v25, a6, v36, &v32 - v21, &v41);
  if (v27)
  {
    (*(v16 + 32))(v35, v22, v15);
  }

  else
  {
    v44 = v15;
    v38 = v41;
    v39 = v42;
    v40 = v43;
    v37[3] = type metadata accessor for _KeyedDecodingContainer(0, a6, v26, v28);
    v37[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v29 = swift_allocObject();
    v37[0] = v29;
    v30 = v33;
    v29[2] = v32;
    v29[3] = v30;
    v29[4] = a4;
    v29[5] = v24;

    a6 = a9(v37, v34);
    outlined consume of EncodingGraph.Value(v38, *(&v38 + 1), v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return a6;
}

uint64_t _s3XPC23_KeyedDecodingContainerV6decode_6forKeys5Int16VAGm_xts0C5ErrorOYKFTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, char *))
{
  v35 = a8;
  v36 = a7;
  v15 = type metadata accessor for DecodingError();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v34 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v32 - v21;
  v23 = a1;
  v32 = a2;
  v33 = a3;
  v24 = a5;
  v25 = a5;
  v26 = v36;
  v27 = v44;
  _s3XPC23_KeyedDecodingContainerV5value33_75B0D857E5E60FECD69B41037A8551756forKeyAA13EncodingGraphO5ValueOx_ts0C5ErrorOYKF(v23, a4, v25, a6, v36, &v32 - v21, &v41);
  if (v27)
  {
    (*(v16 + 32))(v35, v22, v15);
  }

  else
  {
    v44 = v15;
    v38 = v41;
    v39 = v42;
    v40 = v43;
    v37[3] = type metadata accessor for _KeyedDecodingContainer(0, a6, v26, v28);
    v37[4] = &protocol witness table for _KeyedDecodingContainer<A>;
    v29 = swift_allocObject();
    v37[0] = v29;
    v30 = v33;
    v29[2] = v32;
    v29[3] = v30;
    v29[4] = a4;
    v29[5] = v24;

    a6 = a9(v37, v34);
    outlined consume of EncodingGraph.Value(v38, *(&v38 + 1), v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return a6;
}

uint64_t _KeyedDecodingContainer.superDecoder()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  v10 = type metadata accessor for DecodingError();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a5, a6, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v24 - v18;
  (*(*(a5 - 8) + 56))(&v24 - v18, 1, 1, a5);
  a7[3] = &type metadata for _TopLevelDecoder;
  a7[4] = lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder();
  v20 = swift_allocObject();
  *a7 = v20;
  v21 = v30;
  _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF(&type metadata for _TopLevelDecoder, v19, 0, v26, v27, v28, v29, a5, v20 + 16, &type metadata for _TopLevelDecoder, a6, &protocol witness table for _TopLevelDecoder, v13);
  if (!v21)
  {
    return (*(v16 + 8))(v19, v15);
  }

  (*(v16 + 8))(v19, v15);
  swift_allocError();
  (*(v25 + 32))(v22, v13, v10);
  return __swift_deallocate_boxed_opaque_existential_1(a7);
}

uint64_t _s3XPC23_KeyedDecodingContainerV12superDecoder6forKeys0F0_px_ts0C5ErrorOYKF@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v30 = a8;
  v31 = a2;
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v13 = type metadata accessor for DecodingError();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for _KeyedEncodingContainer._ContainerCodingKey(0, a6, a7, v17);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v27 - v21;
  v23 = *(a6 - 8);
  (*(v23 + 16))(&v27 - v21, a1, a6);
  (*(v23 + 56))(v22, 0, 1, a6);
  a9[3] = &type metadata for _TopLevelDecoder;
  a9[4] = lazy protocol witness table accessor for type _TopLevelDecoder and conformance _TopLevelDecoder();
  v24 = swift_allocObject();
  *a9 = v24;
  v25 = v35;
  _s3XPC23_KeyedDecodingContainerV10_container33_75B0D857E5E60FECD69B41037A855175LL_6forKey0M4Typeqd__qd__m_AA01_b8EncodingD0V01_d6CodingN0Oyx_GypXpSgts0C5ErrorOYKAA01_cD0Rd__lF(&type metadata for _TopLevelDecoder, v22, 0, v31, v32, v33, v34, a6, v24 + 16, &type metadata for _TopLevelDecoder, a7, &protocol witness table for _TopLevelDecoder, v16);
  if (!v25)
  {
    return (*(v19 + 8))(v22, v18);
  }

  (*(v19 + 8))(v22, v18);
  (*(v28 + 32))(v30, v16, v29);
  return __swift_deallocate_boxed_opaque_existential_1(a9);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance _KeyedDecodingContainer<A>()
{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

{
  return KeyedDecodingContainerProtocol.decode(_:forKey:)();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7118]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7120]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7140]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7138]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7148]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(a1, a2, a3, MEMORY[0x1E69E7160]);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _KeyedDecodingContainer<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  return a4(a1, a2, a3) & 0x1FF;
}

{
  return a4(a1, a2, a3) & 0x1FFFF;
}

{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x19A8E9CA0);
  }

  return result;
}

void __XPC_INTERNAL_CRASH__(_:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x19A8E8E70](a1, a2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t xpc_uuid_get_uuid(_:)(void *a1)
{
  bytes = xpc_uuid_get_bytes(a1);
  if (bytes)
  {
    return *bytes;
  }

  else
  {
    return 0;
  }
}

xpc_object_t xpc_uuid_create_with_uuid(_:)(unsigned __int8 a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int8 a7, unsigned __int8 a8, int a9, int a10)
{
  v14 = *MEMORY[0x1E69E9840];
  uuid[0] = a1;
  uuid[1] = a2;
  uuid[2] = a3;
  uuid[3] = a4;
  uuid[4] = a5;
  uuid[5] = a6;
  uuid[6] = a7;
  uuid[7] = a8;
  v12 = a9;
  v13 = a10;
  return xpc_uuid_create(uuid);
}

uint64_t Array<A>.byteDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v16;
    v4 = a1 + 32;
    lazy protocol witness table accessor for type UInt8 and conformance UInt8();
    do
    {
      ++v4;
      v5 = String.init<A>(_:radix:uppercase:)();
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  MEMORY[0x19A8E8E70](v12, v14);

  MEMORY[0x19A8E8E70](93, 0xE100000000000000);
  return 91;
}

BOOL audit_token_t.isValid.getter(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (HIDWORD(a3))
  {
    v4 = a4 >= 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = 1;
  }

  return !v4;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E7530], MEMORY[0x1E69E7508], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6310], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *_s3XPC25_UnkeyedDecodingContainerV6decodeyS2Sms0C5ErrorOYKF(uint64_t a1)
{
  v4 = type metadata accessor for DecodingError();
  result = MEMORY[0x1EEE9AC00](v4, v5);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v1[3];
  v43 = v1[2];
  v44 = v10;
  v11 = v1[1];
  v42[0] = *v1;
  v42[1] = v11;
  if (__OFSUB__(v10 >> 1, *(&v43 + 1)))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(&v44 + 1) == (v10 >> 1) - *(&v43 + 1))
  {
    v34[3] = &type metadata for _UnkeyedDecodingContainer;
    v34[4] = lazy protocol witness table accessor for type _UnkeyedDecodingContainer and conformance _UnkeyedDecodingContainer();
    v12 = swift_allocObject();
    v34[0] = v12;
    v13 = v1[1];
    v12[1] = *v1;
    v12[2] = v13;
    v14 = v1[3];
    v12[3] = v1[2];
    v12[4] = v14;
    v15 = "UnkeyedDecodingContainer";
    outlined init with copy of _UnkeyedDecodingContainer(v42, v40);
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    __swift_destroy_boxed_opaque_existential_1(v34);
    swift_willThrowTypedImpl();
    return v15;
  }

  v16 = *(&v44 + 1) + 1;
  if (__OFADD__(*(&v44 + 1), 1))
  {
    goto LABEL_13;
  }

  if (v16 < *(&v43 + 1) || v16 >= (v10 >> 1))
  {
    goto LABEL_14;
  }

  v32 = v7;
  v33 = a1;
  v17 = v43 + 32 * v16;
  v45 = v2;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v36 = *v17;
  v18 = v36;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v22 = v1[1];
  v40[0] = *v1;
  v40[1] = v22;
  v23 = v1[3];
  v40[2] = v1[2];
  v41 = v23;
  v35[3] = &type metadata for _UnkeyedDecodingContainer;
  v35[4] = &protocol witness table for _UnkeyedDecodingContainer;
  v24 = swift_allocObject();
  v35[0] = v24;
  v25 = v1[1];
  v24[1] = *v1;
  v24[2] = v25;
  v26 = v1[3];
  v27 = v1;
  v24[3] = v1[2];
  v24[4] = v26;
  outlined copy of EncodingGraph.Value(v18, v19, v20, v21);
  outlined init with copy of _UnkeyedDecodingContainer(v40, v34);
  v15 = &v36;
  v28 = v45;
  v29 = _s3XPC13EncodingGraphO5ValueO6decode2as3forS2Sm_AA18_DecodingContainer_pts0H5ErrorOYKF(v35, v9);
  if (v28)
  {
    outlined consume of EncodingGraph.Value(v36, v37, v38, v39);
    (*(v32 + 32))(v33, v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v35);
    return v15;
  }

  v15 = v29;
  v30 = *(&v41 + 1);
  outlined consume of EncodingGraph.Value(v36, v37, v38, v39);
  result = __swift_destroy_boxed_opaque_existential_1(v35);
  if (!__OFADD__(v30, 1))
  {
    *(v27 + 7) = v30 + 1;
    return v15;
  }

LABEL_15:
  __break(1u);
  return result;
}