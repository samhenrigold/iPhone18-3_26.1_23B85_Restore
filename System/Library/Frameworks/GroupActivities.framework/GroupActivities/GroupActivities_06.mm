GroupActivities::TypedPayloadBox::CodingKeys_optional __swiftcall TypedPayloadBox.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TypedPayloadBox.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GroupActivities_TypedPayloadBox_CodingKeys_value;
  }

  else
  {
    v4.value = GroupActivities_TypedPayloadBox_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

GroupActivities::TypedPayloadBox::CodingKeys_optional __swiftcall TypedPayloadBox.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TypedPayloadBox.CodingKeys.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GroupActivities_TypedPayloadBox_CodingKeys_value;
  }

  else
  {
    v4.value = GroupActivities_TypedPayloadBox_CodingKeys_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t TypedPayloadBox.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 118;
  }

  else
  {
    return 110;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TypedPayloadBox.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 118;
  }

  else
  {
    v2 = 110;
  }

  if (*a2)
  {
    v3 = 118;
  }

  else
  {
    v3 = 110;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TypedPayloadBox.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TypedPayloadBox.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TypedPayloadBox.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TypedPayloadBox.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TypedPayloadBox.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TypedPayloadBox.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 110;
  if (*v1)
  {
    v2 = 118;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TypedPayloadBox.CodingKeys()
{
  if (*v0)
  {
    return 118;
  }

  else
  {
    return 110;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TypedPayloadBox.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TypedPayloadBox.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TypedPayloadBox.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TypedPayloadBox.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

_OWORD *outlined init with take of Decodable & Encodable(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t TypedPayloadBox.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = dispatch thunk of Decoder.userInfo.getter();
  if (one-time initialization token for typedPayloadDecoderMap != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = __swift_project_value_buffer(v10, static CodingUserInfoKey.typedPayloadDecoderMap);
  if (!*(v9 + 16))
  {

    __break(1u);
    goto LABEL_15;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v11);
  if ((v13 & 1) == 0)
  {
LABEL_15:

    __break(1u);
    goto LABEL_16;
  }

  v34 = a2;
  v40 = v6;
  outlined init with copy of Any(*(v9 + 56) + 32 * v12, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15GroupActivities20TypedPayloadDecoding_pGMd, &_sSDySS15GroupActivities20TypedPayloadDecoding_pGMR);
  v14 = MEMORY[0x1E69E7CA0];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v16 = v36[0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
  }

  else
  {
    LOBYTE(v35[0]) = 0;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v17;
    v20 = v18;
    if (*(v16 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18), (v22 & 1) != 0))
    {
      v23 = v21;

      outlined init with copy of Transferable(*(v16 + 56) + 40 * v23, v35);

      outlined init with take of Transferable(v35, v36);
      v24 = v37;
      v25 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v25 + 8))(v35, v8, v24, v25);
      (*(v40 + 8))(v8, v5);
      outlined init with take of Decodable & Encodable(v35, v39);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v29 = v39[1];
      v30 = v34;
      *v34 = v39[0];
      v30[1] = v29;
      v30[2] = v39[2];
    }

    else
    {

      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      v32 = v26;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v27 = v14 + 8;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      *&v35[0] = 0;
      *(&v35[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      *&v35[0] = 0xD000000000000015;
      *(&v35[0] + 1) = 0x80000001AF01BEF0;
      MEMORY[0x1B27141F0](v19, v20);

      MEMORY[0x1B27141F0](0xD000000000000010, 0x80000001AF01BF10);
      v28 = v32;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 1) + 104))(v28, *MEMORY[0x1E69E6B08]);
      swift_willThrow();
      (*(v40 + 8))(v8, v5);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TypedPayloadBox.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[3];
  v9 = v2[5];
  v10 = __swift_project_boxed_opaque_existential_1(v2, v8);
  specialized encode #1 <A>(openedValue:) in TypedPayloadBox.encode(to:)(v10, v7, v8, v9);
  return (*(v5 + 8))(v7, v4);
}

uint64_t specialized encode #1 <A>(openedValue:) in TypedPayloadBox.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static Encodable.messageIdentifier.getter(a3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_endAccess();
  if (v4)
  {
  }

  swift_beginAccess();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return swift_endAccess();
}

uint64_t TypedPayloadBox.unbox<A>(as:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  outlined init with copy of Decodable & Encodable(v3, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
  v6 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v6 ^ 1u, 1, a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TypedPayloadBox(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities15TypedPayloadBoxV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[3];
  v9 = v2[5];
  v10 = __swift_project_boxed_opaque_existential_1(v2, v8);
  specialized encode #1 <A>(openedValue:) in TypedPayloadBox.encode(to:)(v10, v7, v8, v9);
  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys;
  if (!lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedPayloadBox.CodingKeys and conformance TypedPayloadBox.CodingKeys);
  }

  return result;
}

uint64_t getter of identifier #1 in static SharePlayLatencyLogger.beginInterval<A>(for:activity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return (*(a3 + 24))(a2, a3);
  }
}

double AnySpatialTemplate.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24))
  {
    outlined init with take of Transferable(a1, v5);
    outlined init with take of Transferable(v5, v6);
    result = *v6;
    v4 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v4;
    *(a2 + 32) = v7;
  }

  else
  {
    outlined destroy of SpatialTemplate?(a1);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t AnySpatialTemplate.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 8))(&v28, v4, v5);
  SpatialTemplateConfiguration.hash(into:)(a1);
  outlined destroy of SpatialTemplateConfiguration(&v28);
  v6 = v1[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  SpatialTemplate.output.getter(v6, v7, &v28);
  v8 = v28;
  v9 = v29;
  if (v30)
  {
    if (v30 == 1)
    {
      MEMORY[0x1B2715040](5);
      Hasher._combine(_:)(v8 & 1);
    }

    else
    {
      if (*(&v29 + 1) | v29 | v28)
      {
        if (v28 == 1 && v29 == 0)
        {
          v13 = 2;
        }

        else if (v28 == 2 && v29 == 0)
        {
          v13 = 3;
        }

        else
        {
          v13 = 4;
        }
      }

      else
      {
        v13 = 1;
      }

      MEMORY[0x1B2715040](v13);
    }
  }

  else
  {
    MEMORY[0x1B2715040](0);
    specialized Array<A>.hash(into:)(a1, v8);
    if (*(&v9 + 1))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v10 = v8;
      v12 = v9 >> 64;
      v11 = v9;
    }

    else
    {
      Hasher._combine(_:)(0);
      v10 = v8;
      v11 = v9;
      v12 = 0;
    }

    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v10, v11, v12, 0);
  }

  v14 = v2[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  v16 = (*(v15 + 16))(v14, v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v27;
    v19 = v16 + 32;
    do
    {
      outlined init with copy of Transferable(v19, &v28);
      __swift_project_boxed_opaque_existential_1(&v28, v30);
      v20 = dispatch thunk of Hashable.hashValue.getter();
      __swift_destroy_boxed_opaque_existential_0(&v28);
      v22 = *(v27 + 16);
      v21 = *(v27 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
      }

      *(v27 + 16) = v22 + 1;
      *(v27 + 8 * v22 + 32) = v20;
      v19 += 40;
      --v17;
    }

    while (v17);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1B2715040](*(v18 + 16));
  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = (v18 + 32);
    do
    {
      v25 = *v24++;
      MEMORY[0x1B2715040](v25);
      --v23;
    }

    while (v23);
  }
}

Swift::Int AnySpatialTemplate.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnySpatialTemplate.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnySpatialTemplate()
{
  Hasher.init(_seed:)();
  AnySpatialTemplate.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnySpatialTemplate(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnySpatialTemplate.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B2715040](v3);
  if (v3)
  {
    v5 = a2 + 64;
    do
    {
      v6 = *(v5 - 24);
      v7 = *(v5 + 32);
      v8 = *(v5 + 64);
      MEMORY[0x1B2715040](0);
      if (v6)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      MEMORY[0x1B2715040](0);
      SPVector3D.hash(into:)();
      SPAngle.hash(into:)();
      if (v8)
      {
        MEMORY[0x1B2715040](1);
        MEMORY[0x1B2715040](v7);
      }

      else
      {
        MEMORY[0x1B2715040](0);
        MEMORY[0x1B2715040](0);
        SPVector3D.hash(into:)();
      }

      v5 += 112;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t specialized static AnySpatialTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Transferable(a1, v40);
  outlined init with copy of Transferable(a2, v37);
  v3 = v41;
  v4 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  (*(v4 + 8))(v34, v3, v4);
  v5 = v38;
  v6 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v6 + 8))(v36, v5, v6);
  LOBYTE(v5) = specialized static SpatialTemplateConfiguration.== infix(_:_:)(v34, v36);
  outlined destroy of SpatialTemplateConfiguration(v36);
  outlined destroy of SpatialTemplateConfiguration(v34);
  if ((v5 & 1) != 0 && (v7 = v41, v8 = v42, __swift_project_boxed_opaque_existential_1(v40, v41), v9 = *((*(v8 + 16))(v7, v8) + 16), , v10 = v38, v11 = v39, __swift_project_boxed_opaque_existential_1(v37, v38), v12 = *((*(v11 + 16))(v10, v11) + 16), , v9 == v12))
  {
    v13 = v41;
    v14 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v15 = (*(v14 + 16))(v13, v14);
    v16 = v38;
    v17 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    result = (*(v17 + 16))(v16, v17);
    v19 = result;
    v20 = 0;
    v21 = *(v15 + 16);
    v22 = 32;
    while (1)
    {
      if (v21 == v20)
      {

        v31 = 1;
        goto LABEL_11;
      }

      if (v20 >= *(v15 + 16))
      {
        break;
      }

      result = outlined init with copy of Transferable(v15 + v22, v36);
      v23 = *(v19 + 16);
      if (v20 == v23)
      {

        __swift_destroy_boxed_opaque_existential_0(v36);
        v31 = 1;
        goto LABEL_11;
      }

      if (v20++ >= v23)
      {
        goto LABEL_15;
      }

      outlined init with take of Transferable(v36, v34);
      outlined init with copy of Transferable(v19 + v22, v35);
      v24 = __swift_project_boxed_opaque_existential_1(v34, v34[3]);
      MEMORY[0x1EEE9AC00](v24);
      (*(v26 + 16))(&v33[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      __swift_destroy_boxed_opaque_existential_0(v34);
      AnyHashable.init<A>(_:)();
      v27 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
      MEMORY[0x1EEE9AC00](v27);
      (*(v29 + 16))(&v33[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      __swift_destroy_boxed_opaque_existential_0(v35);
      AnyHashable.init<A>(_:)();
      v30 = MEMORY[0x1B2714A90](v36, v33);
      outlined destroy of AnyHashable(v33);
      result = outlined destroy of AnyHashable(v36);
      v22 += 40;
      if ((v30 & 1) == 0)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_10:
    v31 = 0;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v37);
    __swift_destroy_boxed_opaque_existential_0(v40);
    return v31;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnySpatialTemplate and conformance AnySpatialTemplate()
{
  result = lazy protocol witness table cache variable for type AnySpatialTemplate and conformance AnySpatialTemplate;
  if (!lazy protocol witness table cache variable for type AnySpatialTemplate and conformance AnySpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnySpatialTemplate and conformance AnySpatialTemplate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnySpatialTemplate(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AnySpatialTemplate(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id AddressableMember.tuHandle.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_opt_self();
  v4 = MEMORY[0x1B2714130](v1, v2);
  v5 = [v3 normalizedHandleWithDestinationID_];

  return v5;
}

uint64_t AddressableMember.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AddressableMember.handle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static AddressableMember.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int AddressableMember.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LocalAccountMember.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LocalAccountMember.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LocalAccountMember.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int LocalAccountMember.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t LocalAccountMember.init(id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocalAccountMember()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LocalAccountMember(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalAccountMember(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for AddressableMember(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
  result = lazy protocol witness table accessor for type AddressableMember and conformance AddressableMember();
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for LocalAccountMember(uint64_t a1)
{
  *(a1 + 8) = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember, type metadata accessor for LocalAccountMember, &protocol conformance descriptor for LocalAccountMember);
  result = _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type LocalAccountMember and conformance LocalAccountMember, type metadata accessor for LocalAccountMember, &protocol conformance descriptor for LocalAccountMember);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for LocalAccountMember(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocalAccountMember;
  if (!type metadata singleton initialization cache for LocalAccountMember)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LocalAccountMember(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Task.store(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a2;
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v10 = AnyCancellable.init(_:)();
  specialized Set._Variant.insert(_:)(&v12, v10);
}

uint64_t SystemCoordinatorHostManager.state.getter()
{
  type metadata accessor for SystemCoordinatorState();
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t key path getter for SystemCoordinatorHostManager.state : SystemCoordinatorHostManager@<X0>(void *a2@<X8>)
{
  type metadata accessor for SystemCoordinatorState();
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a2 = v4;
  return result;
}

uint64_t SystemCoordinatorHostManager.state.setter(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in SystemCoordinatorHostManager.state.setter;
  *(v5 + 24) = v4;
  v9[4] = _sIg_Ieg_TRTA_0;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

id partial apply for closure #1 in SystemCoordinatorHostManager.state.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state);
  *a1 = v2;
  return v2;
}

void closure #1 in SystemCoordinatorHostManager.state.setter(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state);
  *(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state) = a2;
  v2 = a2;
  SystemCoordinatorHostManager._state.didset(v3);
}

double block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void (*SystemCoordinatorHostManager.state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  type metadata accessor for SystemCoordinatorState();
  OS_dispatch_queue.sync<A>(execute:)();
  return SystemCoordinatorHostManager.state.modify;
}

void SystemCoordinatorHostManager.state.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v6 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v6;
    *(v13 + 24) = v3;
    v14 = swift_allocObject();
    *(v14 + 16) = closure #1 in SystemCoordinatorHostManager.state.setterpartial apply;
    *(v14 + 24) = v13;
    v2[4] = thunk for @callee_guaranteed () -> ()partial apply;
    v2[5] = v14;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed () -> ();
    v2[3] = &block_descriptor_26_0;
    v15 = _Block_copy(v2);

    v16 = v3;

    dispatch_sync(v5, v15);

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = closure #1 in SystemCoordinatorHostManager.state.setterpartial apply;
  *(v8 + 24) = v7;
  v2[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v2[5] = v8;
  *v2 = MEMORY[0x1E69E9820];
  v2[1] = 1107296256;
  v2[2] = thunk for @escaping @callee_guaranteed () -> ();
  v2[3] = &block_descriptor_15;
  v9 = _Block_copy(v2);
  v10 = v3;

  v11 = v10;

  dispatch_sync(v5, v9);

  _Block_release(v9);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

LABEL_5:

  free(v2);
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t SystemCoordinatorHostManager.configurations.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for SystemCoordinatorHostManager.configurations : SystemCoordinatorHostManager@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for SystemCoordinatorHostManager.configurations : SystemCoordinatorHostManager(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t SystemCoordinatorHostManager.configurations.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*SystemCoordinatorHostManager.configurations.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return CKShareGroupSessionProvider.share.modify;
}

uint64_t SystemCoordinatorHostManager.$configurations.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for SystemCoordinatorHostManager.$configurations : SystemCoordinatorHostManager(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for SystemCoordinatorHostManager.$configurations : SystemCoordinatorHostManager(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t SystemCoordinatorHostManager.$configurations.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*SystemCoordinatorHostManager.$configurations.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__configurations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SystemCoordinatorHostManager.$configurations.modify;
}

void SystemCoordinatorHostManager.$configurations.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t SystemCoordinatorHostManager.hosts.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void SystemCoordinatorHostManager._state.didset(uint64_t a1)
{
  v2 = v1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_15GroupActivities21SystemCoordinatorHostC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities21SystemCoordinatorHostC5valuetMR);
  MEMORY[0x1EEE9AC00](v72);
  v4 = &v60 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  *v8 = v9;
  v10 = *(v6 + 104);
  v68 = *MEMORY[0x1E69E8020];
  v66 = v10;
  v67 = v6 + 104;
  v10(v8);
  v11 = v9;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = *(v6 + 8);
  v69 = v8;
  v70 = v6 + 8;
  v71 = v5;
  v65 = v13;
  v13(v8, v5);
  if ((v12 & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v74 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state;
  v14 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state);
  v15 = type metadata accessor for SystemCoordinatorState();
  v16 = v14;
  v73 = v15;
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {
    return;
  }

  if (one-time initialization token for systemCoordinator != -1)
  {
    goto LABEL_25;
  }

LABEL_4:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Log.systemCoordinator);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v77[0] = v22;
    *v21 = 136315138;
    v76 = *(v2 + v74);
    v23 = v76;
    v24 = String.init<A>(reflecting:)();
    v26 = v4;
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v77);

    *(v21 + 4) = v27;
    v4 = v26;
    _os_log_impl(&dword_1AEE80000, v19, v20, "System coordinator state changed to %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x1B2715BA0](v22, -1, -1);
    MEMORY[0x1B2715BA0](v21, -1, -1);
  }

  v28 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts;
  swift_beginAccess();
  v29 = *(v2 + v28);
  v30 = v29 + 64;
  v31 = 1 << *(v29 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v29 + 64);
  v34 = (v31 + 63) >> 6;
  v64 = v29;
  swift_bridgeObjectRetain_n();
  v35 = 0;
  v61 = v30;
  v60 = v34;
  v63 = v2;
  v62 = v4;
  v36 = v69;
  while (v33)
  {
LABEL_16:
    v38 = __clz(__rbit64(v33)) | (v35 << 6);
    v39 = v64;
    v40 = *(v64 + 48);
    v41 = type metadata accessor for UUID();
    (*(*(v41 - 8) + 16))(v4, v40 + *(*(v41 - 8) + 72) * v38, v41);
    v42 = *(*(v39 + 56) + 8 * v38);
    *&v4[*(v72 + 48)] = v42;
    v43 = *(v2 + v74);
    v44 = v42;

    v45 = v44;
    v46 = v43;
    v47 = specialized SystemCoordinatorState.aliasingParticipantIDs(with:)(v46, v2, v45);

    v2 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v48 = *&v45[v2];
    *&v45[v2] = v47;
    v49 = *&v45[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue];
    *v36 = v49;
    v50 = v71;
    v66(v36, v68, v71);
    v51 = v47;
    v52 = v49;
    LOBYTE(v49) = _dispatchPreconditionTest(_:)();
    v65(v36, v50);
    if ((v49 & 1) == 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v53 = *&v45[v2];
    v54 = static NSObject.== infix(_:_:)();

    if ((v54 & 1) != 0 || (v55 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_connection, swift_beginAccess(), (v56 = *&v45[v55]) == 0))
    {
    }

    else
    {
      v57 = v56;
      XPCHostConnection.clientObject.getter();

      v58 = v75;
      v59 = *&v45[v2];
      [v58 updateState_];

      swift_unknownObjectRelease();
    }

    v2 = v63;
    v33 &= v33 - 1;
    v4 = v62;
    outlined destroy of NSObject?(v62, &_s10Foundation4UUIDV3key_15GroupActivities21SystemCoordinatorHostC5valuetMd, &_s10Foundation4UUIDV3key_15GroupActivities21SystemCoordinatorHostC5valuetMR);
    v30 = v61;
    v34 = v60;
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v37 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v37);
    ++v35;
    if (v33)
    {
      v35 = v37;
      goto LABEL_16;
    }
  }
}

id SystemCoordinatorState.aliasingParticipantIDs(with:)(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates);
  v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v9 << 9) | (8 * v11);
    v13 = *(*(v4 + 48) + v12);
    v14 = *(*(v4 + 56) + v12);
    v15 = a1(v13);
    if (v16)
    {
    }

    else
    {
      v39 = v15;
      v38 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v40;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
      v20 = v40[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_22;
      }

      if (v40[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v18;
          v30 = v19;
          specialized _NativeDictionary.copy()();
          v19 = v30;
          v18 = v42;
        }
      }

      else
      {
        v41 = v19;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
        v25 = v24 & 1;
        v19 = v41;
        if ((v41 & 1) != v25)
        {
          goto LABEL_24;
        }
      }

      v40 = v44;
      if (v19)
      {
        v26 = v44[7];
        v27 = *(v26 + 8 * v18);
        *(v26 + 8 * v18) = v38;
      }

      else
      {
        v44[(v18 >> 6) + 8] |= 1 << v18;
        *(v40[6] + 8 * v18) = v39;
        *(v40[7] + 8 * v18) = v38;

        v28 = v40[2];
        v22 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v22)
        {
          goto LABEL_23;
        }

        v40[2] = v29;
      }
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      v31 = *(v2 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState);
      v32 = *(v2 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
      v33 = *(v2 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount);
      v34 = type metadata accessor for SystemCoordinatorState();
      v35 = objc_allocWithZone(v34);
      *&v35[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v31;
      v35[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v32;
      *&v35[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = v33;
      *&v35[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = v40;
      v43.receiver = v35;
      v43.super_class = v34;
      v36 = v31;
      return objc_msgSendSuper2(&v43, sel_init);
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit.debounceInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit.throttleInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0) + 20);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit.gracePeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0) + 24);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit.init(throttleInterval:gracePeriod:debounceInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for DispatchTimeInterval();
  v12 = *(*(v10 - 8) + 32);
  (v12)((v10 - 8), a4 + v9, a1, v10);
  v12(a4 + *(v8 + 24), a2, v10);

  return (v12)(a4, a3, v10);
}

uint64_t SystemCoordinatorHostManager.__allocating_init(configurationUpdatesRateLimit:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SystemCoordinatorHostManager.init(configurationUpdatesRateLimit:)(a1);
  return v2;
}

uint64_t SystemCoordinatorHostManager.init(configurationUpdatesRateLimit:)(uint64_t a1)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__configurations;
  v12 = MEMORY[0x1E69E7CC0];
  v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities30SystemCoordinatorConfigurationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_sSDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
  Published.init(initialValue:)();
  (*(v8 + 32))(v1 + v11, v10, v7);
  *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts) = MEMORY[0x1E69E7CC8];
  v13 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v31 = v12;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
  *(v1 + v13) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = (v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier);
  *v14 = protocol witness for CodingKey.intValue.getter in conformance AnyGroupActivity.CodingKeys;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state;
  v16 = type metadata accessor for SystemCoordinatorState.ParticipantState();
  v17 = objc_allocWithZone(v16);
  v17[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = 0;
  v17[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = 0;
  v18 = &v17[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v18 = 0;
  v18[1] = 0;
  *&v17[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v33.receiver = v17;
  v33.super_class = v16;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  v20 = type metadata accessor for SystemCoordinatorState();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v19;
  v21[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = 3;
  *&v21[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v21[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v32.receiver = v21;
  v32.super_class = v20;
  *(v2 + v15) = objc_msgSendSuper2(&v32, sel_init);
  v22 = v30;
  outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v30, v2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_configurationUpdatesRateLimit, type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit);
  type metadata accessor for ConversationManagerClient();
  v23 = static ConversationManagerClient.shared.getter();
  type metadata accessor for SystemCoordinatorHostManager.EndpointProvider();
  swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SystemCoordinatorHostManager.EndpointProvider and conformance SystemCoordinatorHostManager.EndpointProvider, v24, type metadata accessor for SystemCoordinatorHostManager.EndpointProvider, &protocol conformance descriptor for SystemCoordinatorHostManager.EndpointProvider);
  ConversationManagerClient.registerEndpointProvider(_:)();

  outlined destroy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v22);
  return v2;
}

Swift::Void __swiftcall SystemCoordinatorHostManager.registerEndpointProvider()()
{
  type metadata accessor for ConversationManagerClient();
  v0 = static ConversationManagerClient.shared.getter();
  type metadata accessor for SystemCoordinatorHostManager.EndpointProvider();
  swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SystemCoordinatorHostManager.EndpointProvider and conformance SystemCoordinatorHostManager.EndpointProvider, v1, type metadata accessor for SystemCoordinatorHostManager.EndpointProvider, &protocol conformance descriptor for SystemCoordinatorHostManager.EndpointProvider);
  ConversationManagerClient.registerEndpointProvider(_:)();
}

uint64_t SystemCoordinatorHostManager.__allocating_init()()
{
  v0 = swift_allocObject();
  SystemCoordinatorHostManager.init()();
  return v0;
}

uint64_t SystemCoordinatorHostManager.init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__configurations;
  v12 = MEMORY[0x1E69E7CC0];
  v36 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_15GroupActivities30SystemCoordinatorConfigurationCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_sSDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
  Published.init(initialValue:)();
  (*(v8 + 32))(v0 + v11, v10, v7);
  *(v0 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts) = MEMORY[0x1E69E7CC8];
  v13 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v36 = v12;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v4, *MEMORY[0x1E69E8090], v35);
  *(v0 + v13) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = (v0 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier);
  *v14 = protocol witness for CodingKey.intValue.getter in conformance AnyGroupActivity.CodingKeys;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state;
  v16 = type metadata accessor for SystemCoordinatorState.ParticipantState();
  v17 = objc_allocWithZone(v16);
  v17[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatial] = 0;
  v17[OBJC_IVAR___CPSystemCoordinatorParticipantState_isSpatialInitiator] = 0;
  v18 = &v17[OBJC_IVAR___CPSystemCoordinatorParticipantState_roleIdentifier];
  *v18 = 0;
  v18[1] = 0;
  *&v17[OBJC_IVAR___CPSystemCoordinatorParticipantState_xpcWrappedSeat] = 0;
  v38.receiver = v17;
  v38.super_class = v16;
  v19 = objc_msgSendSuper2(&v38, sel_init);
  v20 = type metadata accessor for SystemCoordinatorState();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v19;
  v21[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = 3;
  *&v21[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = 0;
  *&v21[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v37.receiver = v21;
  v37.super_class = v20;
  *(v1 + v15) = objc_msgSendSuper2(&v37, sel_init);
  v22 = (v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_configurationUpdatesRateLimit);
  v23 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  v24 = *(v23 + 20);
  *&v22[v24] = 1;
  v25 = *MEMORY[0x1E69E7F48];
  v26 = type metadata accessor for DispatchTimeInterval();
  v27 = *(*(v26 - 8) + 104);
  v27(&v22[v24], v25, v26);
  v28 = *(v23 + 24);
  *&v22[v28] = 500;
  v29 = *MEMORY[0x1E69E7F38];
  v27(&v22[v28], v29, v26);
  *v22 = 100;
  v27(v22, v29, v26);
  type metadata accessor for ConversationManagerClient();
  v30 = static ConversationManagerClient.shared.getter();
  type metadata accessor for SystemCoordinatorHostManager.EndpointProvider();
  swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SystemCoordinatorHostManager.EndpointProvider and conformance SystemCoordinatorHostManager.EndpointProvider, v31, type metadata accessor for SystemCoordinatorHostManager.EndpointProvider, &protocol conformance descriptor for SystemCoordinatorHostManager.EndpointProvider);
  ConversationManagerClient.registerEndpointProvider(_:)();

  return v1;
}

uint64_t SystemCoordinatorHostManager.deinit()
{
  v1 = v0;
  type metadata accessor for ConversationManagerClient();
  v2 = static ConversationManagerClient.shared.getter();
  v3._object = 0x80000001AF01BF70;
  v3._countAndFlagsBits = 0xD00000000000002CLL;
  ConversationManagerClient.unregisterEndpointProvider(identifier:)(v3);

  v4 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__configurations;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGGMR);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  outlined destroy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_configurationUpdatesRateLimit);
  return v1;
}

Swift::Void __swiftcall SystemCoordinatorHostManager.unregisterEndpointProvider()()
{
  type metadata accessor for ConversationManagerClient();
  v1 = static ConversationManagerClient.shared.getter();
  v0._object = 0x80000001AF01BF70;
  v0._countAndFlagsBits = 0xD00000000000002CLL;
  ConversationManagerClient.unregisterEndpointProvider(identifier:)(v0);
}

uint64_t SystemCoordinatorHostManager.__deallocating_deinit()
{
  SystemCoordinatorHostManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t SystemCoordinatorHostManager.EndpointProvider.__allocating_init(_:)(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

uint64_t SystemCoordinatorHostManager.setAliasParticipantIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in SystemCoordinatorHostManager.setAliasParticipantIdentifier(_:);
  *(v8 + 24) = v7;
  v11[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_38;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = *(v1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:);
  *(v9 + 24) = v8;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_48;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    v9 = swift_endAccess();
    v10 = *(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager__state);
    MEMORY[0x1EEE9AC00](v9);
    v11 = v8;
    v12 = v10;
    v13 = SystemCoordinatorState.aliasingParticipantIDs(with:)(partial apply for closure #1 in closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:));

    v14 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v15 = *&v11[v14];
    *&v11[v14] = v13;
    v16 = v13;
    SystemCoordinatorHost.currentState.didset(v15);
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t SystemCoordinatorHostManager.host(for:)(uint64_t a1)
{
  type metadata accessor for SystemCoordinatorHost(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

objc_class *closure #1 in SystemCoordinatorHostManager.host(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, objc_class **a3@<X8>)
{
  v6 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_hosts;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);
    swift_endAccess();
    *a3 = v17;
    return v17;
  }

  else
  {
    swift_endAccess();
    (*(v10 + 16))(v12, a2, v9);
    v19 = *(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
    outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(a1 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_configurationUpdatesRateLimit, v8, type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit);
    v20 = objc_allocWithZone(type metadata accessor for SystemCoordinatorHost(0));
    v21 = v19;
    v22 = specialized SystemCoordinatorHost.init(uuid:queue:configurationUpdatesRateLimit:)(v12, v21, v8);

    v23 = v22 + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_delegate;
    swift_beginAccess();
    *(v23 + 1) = &protocol witness table for SystemCoordinatorHostManager;
    v24 = swift_unknownObjectWeakAssign();
    MEMORY[0x1EEE9AC00](v24);
    *(&v33 - 2) = a1;
    *(&v33 - 1) = a2;
    v26 = v25;
    v27 = SystemCoordinatorState.aliasingParticipantIDs(with:)(partial apply for closure #1 in closure #1 in SystemCoordinatorHostManager.host(for:));

    v28 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
    swift_beginAccess();
    v29 = *(v22 + v28);
    *(v22 + v28) = v27;
    v30 = v27;
    SystemCoordinatorHost.currentState.didset(v29);

    swift_beginAccess();
    v31 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a1 + v13);
    *(a1 + v13) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, a2, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMR);
    *(a1 + v13) = v34;
    result = swift_endAccess();
    *a3 = v31;
  }

  return result;
}

uint64_t closure #1 in closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier);

  v6 = v5(a3, a1);

  return v6;
}

uint64_t SystemCoordinatorHostManager.EndpointProvider.manager.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*SystemCoordinatorHostManager.EndpointProvider.manager.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return SystemCoordinatorHostManager.EndpointProvider.manager.modify;
}

void SystemCoordinatorHostManager.EndpointProvider.manager.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t SystemCoordinatorHostManager.EndpointProvider.init(_:)(uint64_t a1)
{
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

id SystemCoordinatorHostManager.EndpointProvider.customEndpoint(for:activity:)(void *a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.systemCoordinator);
  (*(v6 + 16))(v8, a1, v5);
  v10 = a2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v2;
    v14 = v13;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31[0] = v28;
    *v14 = 136315394;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = a1;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v18, v31);
    a1 = v16;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    v20 = v27;
    *v27 = v10;
    v21 = v10;
    _os_log_impl(&dword_1AEE80000, v11, v12, "SystemCoordinatorHostManager: Received custom endpoint request for %s %@", v14, 0x16u);
    outlined destroy of NSObject?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v20, -1, -1);
    v22 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B2715BA0](v22, -1, -1);
    MEMORY[0x1B2715BA0](v14, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  *(&v27 - 2) = MEMORY[0x1EEE9AC00](Strong);
  *(&v27 - 1) = a1;
  type metadata accessor for SystemCoordinatorHost(0);
  OS_dispatch_queue.sync<A>(execute:)();

  v24 = v30;
  v25 = *&v30[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_endpoint];

  return v25;
}

uint64_t SystemCoordinatorHostManager.EndpointProvider.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void SystemCoordinatorHostManager.systemCoordinatorHost(_:didUpdateConfiguration:)(char *a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v4 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v40[0];
  if (*(v40[0] + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(&a1[v3]), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);

    type metadata accessor for SystemCoordinatorConfiguration();
    v17 = a2;
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      return;
    }
  }

  else
  {
  }

  if (one-time initialization token for systemCoordinator != -1)
  {
    goto LABEL_12;
  }

LABEL_8:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.systemCoordinator);
  v20 = a2;
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40[0] = v25;
    *v24 = 136315394;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v40);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v39 = v20;
    type metadata accessor for SystemCoordinatorConfiguration();
    v29 = v20;
    v30 = String.init<A>(reflecting:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v40);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_1AEE80000, v22, v23, "SystemCoordinatorHostManager: Updating configuration for %s to %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v25, -1, -1);
    MEMORY[0x1B2715BA0](v24, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v20;
  v34 = static Published.subscript.modify();
  v36 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v36;
  *v36 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, &a1[v3], isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
  *v36 = v39;
  v34(v40, 0);
}

uint64_t SystemCoordinatorHostManager.systemCoordinatorHostDidInvalidate(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    if (one-time initialization token for systemCoordinator == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.systemCoordinator);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30[0] = v29;
    *v18 = 136315138;
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v4;
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v30);

    *(v18 + 4) = v22;
    v4 = v21;
    _os_log_impl(&dword_1AEE80000, v16, v17, "SystemCoordinatorHostManager: Host connection invalidated for %s", v18, 0xCu);
    v23 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B2715BA0](v23, -1, -1);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  v24 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  v25 = *(v5 + 16);
  v25(v7, &v15[OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid], v4);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v7);
  swift_endAccess();
  v25(v7, &v15[v24], v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = static Published.subscript.modify();
  specialized Dictionary.subscript.setter(0, v7);
  v26(v30, 0);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v47 = v12;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v13;
    v42 = v10;
    v44 = (v10 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v42 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v40)(v47, v29, v9);
        v45 = *(*(v13 + 56) + 8 * v27);
      }

      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v15 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v22 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v22 + 8 * v32);
          if (v36 != -1)
          {
            v23 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v31) & ~*(v22 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v9);
      *(*(v15 + 56) + 8 * v23) = v45;
      ++*(v15 + 16);
      v13 = v41;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v13 + 32);
    v7 = v39;
    if (v37 >= 64)
    {
      bzero(v17, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v37;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for InternalParticipant(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        _s15GroupActivities11ParticipantVWObTm_0(v25, v7, type metadata accessor for InternalParticipant);
      }

      else
      {
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v25, v7, type metadata accessor for InternalParticipant);
      }

      result = MEMORY[0x1B2715020](*(v10 + 40), v23);
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = _s15GroupActivities11ParticipantVWObTm_0(v7, *(v10 + 56) + v24 * v18, type metadata accessor for InternalParticipant);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for LinkManager.Attachment(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities11LinkManagerC10AttachmentVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities11LinkManagerC10AttachmentVGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        _s15GroupActivities11ParticipantVWObTm_0(v27 + v28 * v24, v47, type metadata accessor for LinkManager.Attachment);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v29 + v28 * v24, v47, type metadata accessor for LinkManager.Attachment);
      }

      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = _s15GroupActivities11ParticipantVWObTm_0(v47, *(v12 + 56) + v28 * v20, type metadata accessor for LinkManager.Attachment);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for CodingUserInfoKey();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        outlined init with take of Any((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of Any(*(v9 + 56) + 32 * v23, v44);
      }

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = outlined init with take of Any(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMd, &_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      if ((v36 & 1) == 0)
      {
      }

      result = MEMORY[0x1B2715020](*(v7 + 40), v21);
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities22SystemCoordinatorTableC0B033_E237FEFAA943BC3482616BB5915F349DLLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities22SystemCoordinatorTableC0B033_E237FEFAA943BC3482616BB5915F349DLLVGMR);
  v44 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = v30[1];
        v47 = *v30;

        v46 = v31;
      }

      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        outlined init with take of GroupSessionTable.Storage(*(v9 + 56) + 24 * v23, v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        outlined init with copy of GroupSessionTable.Storage(*(v9 + 56) + 24 * v23, v43);
      }

      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = outlined init with take of GroupSessionTable.Storage(v43, *(v11 + 56) + 24 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v40 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
        v22 = v21;
      }

      result = MEMORY[0x1B2715020](*(v7 + 40), v20);
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiScS12ContinuationVySi_GGMd, &_ss18_DictionaryStorageCySiScS12ContinuationVySi_GGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = MEMORY[0x1B2715020](*(v9 + 40), v23);
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMR);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMR, outlined init with take of Transferable);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        outlined copy of Data._Representation(v34, *(&v34 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMd, &_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + 48 * v22);
      if (v4)
      {
        v25 = *v24;
        v26 = v24[1];
        *(v36 + 9) = *(v24 + 25);
        v35 = v25;
        v36[0] = v26;
      }

      else
      {
        outlined init with copy of TopicManager.ConversationClient.Service(v24, &v35);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v23;
      v16 = (*(v7 + 56) + 48 * v15);
      v17 = v35;
      v18 = v36[0];
      *(v16 + 25) = *(v36 + 9);
      *v16 = v17;
      v16[1] = v18;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Participant(0);
  v62 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMd, &_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMR);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = *(v7 + 64);
    v59 = v2;
    v60 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    v17 = v63;
    v61 = v15;
    while (v14)
    {
      v31 = __clz(__rbit64(v14));
      v32 = (v14 - 1) & v14;
LABEL_15:
      v36 = v31 | (v10 << 6);
      v37 = *(v7 + 48);
      v64 = *(v62 + 72);
      v65 = v32;
      v38 = v37 + v64 * v36;
      if (v4)
      {
        _s15GroupActivities11ParticipantVWObTm_0(v38, v17, type metadata accessor for Participant);
        v39 = (*(v7 + 56) + 240 * v36);
        v40 = v39[11];
        v41 = v39[12];
        v42 = v39[14];
        v79 = v39[13];
        v80 = v42;
        v77 = v40;
        v78 = v41;
        v43 = v39[7];
        v44 = v39[8];
        v45 = v39[10];
        v75 = v39[9];
        v76 = v45;
        v73 = v43;
        v74 = v44;
        v46 = v39[3];
        v47 = v39[4];
        v48 = v39[6];
        v71 = v39[5];
        v72 = v48;
        v70 = v47;
        v69 = v46;
        v50 = v39[1];
        v49 = v39[2];
        v66 = *v39;
        v67 = v50;
        v68 = v49;
      }

      else
      {
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(v38, v17, type metadata accessor for Participant);
        outlined init with copy of SystemCoordinator.ParticipantState(*(v7 + 56) + 240 * v36, &v66);
      }

      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      MEMORY[0x1B2715070](*(v17 + v5[6]));
      if (*(v17 + v5[7] + 8))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v17 = v63;
      Hasher._combine(_:)(v63[v5[8]]);
      Hasher._combine(_:)(*(v17 + v5[9]));
      result = Hasher._finalize()();
      v51 = -1 << *(v9 + 32);
      v52 = result & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v16 + 8 * (v52 >> 6))) == 0)
      {
        v54 = 0;
        v55 = (63 - v51) >> 6;
        while (++v53 != v55 || (v54 & 1) == 0)
        {
          v56 = v53 == v55;
          if (v53 == v55)
          {
            v53 = 0;
          }

          v54 |= v56;
          v57 = *(v16 + 8 * v53);
          if (v57 != -1)
          {
            v18 = __clz(__rbit64(~v57)) + (v53 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v52) & ~*(v16 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      _s15GroupActivities11ParticipantVWObTm_0(v17, *(v9 + 48) + v64 * v18, type metadata accessor for Participant);
      v19 = (*(v9 + 56) + 240 * v18);
      v20 = v77;
      v21 = v78;
      v22 = v80;
      v19[13] = v79;
      v19[14] = v22;
      v19[11] = v20;
      v19[12] = v21;
      v23 = v73;
      v24 = v74;
      v25 = v76;
      v19[9] = v75;
      v19[10] = v25;
      v19[7] = v23;
      v19[8] = v24;
      v26 = v69;
      v27 = v70;
      v28 = v72;
      v19[5] = v71;
      v19[6] = v28;
      v19[3] = v26;
      v19[4] = v27;
      v30 = v67;
      v29 = v68;
      *v19 = v66;
      v19[1] = v30;
      v19[2] = v29;
      ++*(v9 + 16);
      v15 = v61;
      v14 = v65;
    }

    v33 = v10;
    result = v60;
    while (1)
    {
      v10 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v10 >= v15)
      {
        break;
      }

      v35 = v60[v10];
      ++v33;
      if (v35)
      {
        v31 = __clz(__rbit64(v35));
        v32 = (v35 - 1) & v35;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v59;
      goto LABEL_37;
    }

    v58 = 1 << *(v7 + 32);
    v3 = v59;
    if (v58 >= 64)
    {
      bzero(v60, ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v60 = -1 << v58;
    }

    *(v7 + 16) = 0;
  }

LABEL_37:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMd, &_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMd, &_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v38 = *(v26 + 9);
      v39 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v39;
      *(v18 + 9) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v7;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v36)
      {
        a5(v27, v38);
      }

      else
      {
        outlined init with copy of Transferable(v27, v38);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      result = (a5)(v38, *(v10 + 56) + 40 * v18);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero((v8 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for InternalParticipant(0);
  result = _s15GroupActivities11ParticipantVWObTm_0(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for InternalParticipant);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for LinkManager.Attachment(0);
  result = _s15GroupActivities11ParticipantVWObTm_0(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for LinkManager.Attachment);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of GroupSessionTable.Storage(a3, a4[7] + 24 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMd, &_s15GroupActivities19TypedPayloadDecoderVyAA14PlaybackSyncerC7MessageVGMR);
  v15 = &protocol witness table for TypedPayloadDecoder<A>;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a4[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  result = outlined init with take of Transferable(&v13, a4[7] + 40 * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CodingUserInfoKey();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
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

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5 & 1;
  *(v7 + 9) = HIBYTE(a5);
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Transferable(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities22SystemCoordinatorStateC011ParticipantH0CGMR);
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
        result = v18;
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGMR);
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for InternalParticipant(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMd, &_ss18_DictionaryStorageCys6UInt64V15GroupActivities19InternalParticipantVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(*(v5 + 56) + v22, v4, type metadata accessor for InternalParticipant);
        *(*(v7 + 48) + 8 * v20) = v21;
        result = _s15GroupActivities11ParticipantVWObTm_0(v4, *(v7 + 56) + v22, type metadata accessor for InternalParticipant);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v26 = type metadata accessor for CodingUserInfoKey();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVs8Sendable_pGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        outlined init with copy of Any(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = outlined init with take of Any(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities20TypedPayloadDecoding_pGMR, outlined init with take of Transferable);
}

{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E12SessionTableC0B033_64E0A582F9EAD21E39070881D97E5C2ALLVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 24;
        outlined init with copy of GroupSessionTable.Storage(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = outlined init with take of GroupSessionTable.Storage(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMd, &_ss18_DictionaryStorageCy15GroupActivities12TopicManagerC11ServiceNameOAE18ConversationClientC0G0OGMR);
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
        v18 = *(*(v2 + 48) + v17);
        result = outlined init with copy of TopicManager.ConversationClient.Service(*(v2 + 56) + 48 * v17, &v22);
        *(*(v4 + 48) + v17) = v18;
        v19 = (*(v4 + 56) + 48 * v17);
        v20 = *&v23[9];
        v21 = *v23;
        *v19 = v22;
        v19[1] = v21;
        *(v19 + 25) = v20;
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

{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiScS12ContinuationVySi_GGMd, &_ss18_DictionaryStorageCySiScS12ContinuationVySi_GGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for Participant(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMd, &_ss18_DictionaryStorageCy15GroupActivities11ParticipantVAC17SystemCoordinatorC0E5StateVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v36 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(*(v6 + 48) + v22, v5, type metadata accessor for Participant);
        v21 *= 240;
        outlined init with copy of SystemCoordinator.ParticipantState(*(v6 + 56) + v21, v37);
        result = _s15GroupActivities11ParticipantVWObTm_0(v5, *(v8 + 48) + v22, type metadata accessor for Participant);
        v23 = (*(v8 + 56) + v21);
        v24 = v37[11];
        v25 = v37[12];
        v26 = v37[14];
        v23[13] = v37[13];
        v23[14] = v26;
        v23[11] = v24;
        v23[12] = v25;
        v27 = v37[7];
        v28 = v37[8];
        v29 = v37[10];
        v23[9] = v37[9];
        v23[10] = v29;
        v23[7] = v27;
        v23[8] = v28;
        v30 = v37[3];
        v31 = v37[4];
        v32 = v37[6];
        v23[5] = v37[5];
        v23[6] = v32;
        v23[3] = v30;
        v23[4] = v31;
        v33 = v37[2];
        v34 = v37[1];
        *v23 = v37[0];
        v23[1] = v34;
        v23[2] = v33;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v36;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMd, &_ss18_DictionaryStorageCySS15GroupActivities25SpatialTemplatePreferenceVGMR);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        LOBYTE(v21) = *(v21 + 9);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
        *(v25 + 9) = v21;
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMR, outlined init with take of Transferable);
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for LinkManager.Attachment(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v37 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities11LinkManagerC10AttachmentVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities11LinkManagerC10AttachmentVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(*(v5 + 56) + v26, v35, type metadata accessor for LinkManager.Attachment);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = _s15GroupActivities11ParticipantVWObTm_0(v25, *(v27 + 56) + v26, type metadata accessor for LinkManager.Attachment);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMd, &_ss18_DictionaryStorageCySO15GroupActivities0C16SessionMessengerC18MessageStreamStoreO0B033_7F6FED5A36F2E7FBC6D91B446E55DE7FLLVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 24 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = (*(v4 + 56) + 24 * v17);
        *v22 = v20;
        v22[1] = v19;
        v22[2] = v21;
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
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMR);
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities08PresenceE23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities08PresenceE23SessionProviderObserverCGMR);
}

{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities22SystemCoordinatorTableC0B033_E237FEFAA943BC3482616BB5915F349DLLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities22SystemCoordinatorTableC0B033_E237FEFAA943BC3482616BB5915F349DLLVGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

{
  specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12ConversationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12ConversationCGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMd, &_ss18_DictionaryStorageCySS7Combine14AnyCancellableCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
}

void specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = v37;
        v24 = *(v37 + 72) * v22;
        v26 = v34;
        v25 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v24, v35);
        v27 = *(*(v7 + 56) + 8 * v22);
        v28 = v36;
        (*(v23 + 32))(*(v36 + 48) + v24, v26, v25);
        *(*(v28 + 56) + 8 * v22) = v27;

        v17 = v38;
      }

      while (v38);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v21 = *(v31 + v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v38 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    v30 = v5;
    v31 = (v7 + 64);
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, v31, 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v36 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    v19 = v9;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v23 = v20 | (v13 << 6);
        v24 = v37;
        v25 = *(v37 + 72) * v23;
        v27 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v7 + 48) + v25, v35);
        v28 = *(*(v7 + 56) + 8 * v23);
        (*(v24 + 32))(*(v19 + 48) + v25, v27, v26);
        *(*(v19 + 56) + 8 * v23) = v28;
        result = v28;
        v17 = v38;
      }

      while (v38);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v30;
        v9 = v36;
        goto LABEL_21;
      }

      v22 = *(v31 + v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v38 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v9;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        outlined init with copy of Transferable(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMR);
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV14CopresenceCore32BackgroundSessionCreationRequestCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14CopresenceCore32BackgroundSessionCreationRequestCGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for LinkManager.Attachment(0) - 8) + 72) * v14;

  return outlined assign with take of LinkManager.Attachment(a1, v22);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 24 * v14;

  return outlined assign with take of GroupSessionTable.Storage(a1, v21);
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_0(v21);

  return outlined init with take of Any(a1, v21);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a4;
    v25 = (v23[7] + 24 * result);
    *v25 = a1;
    v25[1] = a2;
    v25[2] = a3;
    v26 = v23[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v23[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 24 * result);
  *v24 = a1;
  v24[1] = a2;
  v24[2] = a3;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities08PresenceE23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities08PresenceE23SessionProviderObserverCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12ConversationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12ConversationCGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v23, a2, v24);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, char a3)
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
    *(v19[6] + result) = a2;
    v21 = (v19[7] + 48 * result);
    v22 = *a1;
    v23 = a1[1];
    *(v21 + 25) = *(a1 + 25);
    *v21 = v22;
    v21[1] = v23;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v20 = v19[7] + 48 * result;

  return outlined assign with take of TopicManager.ConversationClient.Service(a1, v20);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v27, v28);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1, v27, v28);
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v26, v27);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a3 & 1, v26, v27);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * result;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;
    *(v24 + 9) = HIBYTE(a2);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a3, a4, a1, a2 & 0xFF01, v23);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMR, outlined init with take of Transferable);
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMR, outlined init with take of Transferable);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Transferable(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in SystemCoordinatorHostManager.setAliasParticipantIdentifier(_:)()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier);
  *v2 = v0[3];
  v2[1] = v1;
}

void partial apply for closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)(v2, v3);
}

void type metadata completion function for SystemCoordinatorHostManager(uint64_t a1)
{
  type metadata accessor for Published<[UUID : SystemCoordinatorConfiguration]>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata completion function for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id specialized SystemCoordinatorState.aliasingParticipantIDs(with:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates);
  v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (a2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier);
  v43 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  v9 = (v5 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v10 << 9) | (8 * v12);
    v14 = *(*(v4 + 48) + v13);
    v15 = *v8;
    v16 = *(*(v4 + 56) + v13);

    v17 = v15(&a3[v43], v14);
    LOBYTE(v14) = v18;

    if (v14)
    {
    }

    else
    {
      v40 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v42;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      v22 = v42[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_22;
      }

      v26 = v21;
      if (v42[3] >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = v20;
          specialized _NativeDictionary.copy()();
          v20 = v32;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }
      }

      v42 = v46;
      if (v26)
      {
        v28 = v46[7];
        v29 = *(v28 + 8 * v20);
        *(v28 + 8 * v20) = v40;
      }

      else
      {
        v46[(v20 >> 6) + 8] |= 1 << v20;
        *(v42[6] + 8 * v20) = v17;
        *(v42[7] + 8 * v20) = v40;

        v30 = v42[2];
        v24 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v24)
        {
          goto LABEL_23;
        }

        v42[2] = v31;
      }
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      v33 = *(a1 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState);
      v34 = *(a1 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
      v35 = *(a1 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount);
      v36 = type metadata accessor for SystemCoordinatorState();
      v37 = objc_allocWithZone(v36);
      *&v37[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v33;
      v37[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v34;
      *&v37[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = v35;
      *&v37[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = v42;
      v45.receiver = v37;
      v45.super_class = v36;
      v38 = v33;
      return objc_msgSendSuper2(&v45, sel_init);
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined assign with take of LinkManager.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkManager.Attachment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s15GroupActivities11ParticipantVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void _Streamed.wrappedValue.getter(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  type metadata accessor for _Streamed.State(0, *(*v2 + 80), *(*v2 + 88), a1);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v6));
  partial apply for closure #1 in _Streamed.wrappedValue.getter(v4 + v5, a2, v7);
  os_unfair_lock_unlock((v4 + v6));
}

uint64_t _Streamed.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  specialized _Streamed.wrappedValue.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t partial apply for closure #1 in _Streamed.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v6 = *(v3 + 16);
  v7 = type metadata accessor for _Streamed.State(0, v6, *(v3 + 24), a3);
  return (*(*(v6 - 8) + 16))(a2, a1 + *(v7 + 40), v6);
}

uint64_t _Streamed.yield(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v31 - v6;
  v38 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v7 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - v8;
  v9 = type metadata accessor for AsyncStream.Continuation();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v31 - v11;
  v12 = v1[2];
  v43 = v4;
  v44 = *(v3 + 88);
  v45 = a1;
  v40 = v4;
  v41 = a1;
  type metadata accessor for _Streamed.State(0, v4, v44, v13);
  v36 = v9;
  type metadata accessor for Dictionary.Values();
  type metadata accessor for Optional();
  v14 = *(*v12 + *MEMORY[0x1E69E6B68] + 16);
  v15 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v15));
  partial apply for closure #1 in _Streamed.yield(_:)(v12 + v14, &v46);
  os_unfair_lock_unlock((v12 + v15));
  result = v46;
  if (v46)
  {
    v17 = v46 + 64;
    v18 = 1 << *(v46 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v46 + 64);
    v21 = (v18 + 63) >> 6;
    v32 = (v5 + 16);
    v33 = v10 + 16;
    v34 = v10;
    v31 = v10 + 8;
    v22 = (v7 + 8);
    v42 = v46;

    v23 = 0;
    v24 = v34;
    for (i = v37; v20; result = (*v22)(i, v38))
    {
      v26 = v23;
      v27 = v42;
LABEL_11:
      v28 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v29 = v35;
      v30 = v36;
      (*(v24 + 16))(v35, *(v27 + 56) + *(v24 + 72) * (v28 | (v26 << 6)), v36);
      (*v32)(v39, v41, v40);
      AsyncStream.Continuation.yield(_:)();
      (*(v24 + 8))(v29, v30);
    }

    v27 = v42;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v21)
      {
      }

      v20 = *(v17 + 8 * v26);
      ++v23;
      if (v20)
      {
        v23 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void (*_Streamed.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  _Streamed.wrappedValue.getter(v10, v9);
  return _Streamed.wrappedValue.modify;
}

void _Streamed.wrappedValue.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    _Streamed.yield(_:)(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    _Streamed.yield(_:)(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *_Streamed.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized _Streamed.init(wrappedValue:)(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

void *_Streamed.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized _Streamed.init(wrappedValue:)(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t _Streamed.deinit()
{
  _Streamed.finish()();

  return v0;
}

Swift::Void __swiftcall _Streamed.finish()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for AsyncStream.Continuation();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - v5;
  v7 = v0[2];
  v21[4] = v2;
  v22 = *(v1 + 88);
  type metadata accessor for _Streamed.State(0, v2, v22, v8);
  type metadata accessor for Dictionary();
  v9 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v10));
  partial apply for closure #1 in _Streamed.finish()(v7 + v9, &v23);
  os_unfair_lock_unlock((v7 + v10));
  v11 = 0;
  v12 = v23;
  v14 = v23 + 64;
  v13 = *(v23 + 64);
  v15 = 1 << *(v23 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v21[1] = v4 + 16;
  if ((v16 & v13) != 0)
  {
    do
    {
      v19 = v11;
LABEL_9:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v4 + 16))(v6, *(v12 + 56) + *(v4 + 72) * (v20 | (v19 << 6)), v3);
      AsyncStream.Continuation.finish()();
      (*(v4 + 8))(v6, v3);
    }

    while (v17);
  }

  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v19);
    ++v11;
    if (v17)
    {
      v11 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _Streamed.__deallocating_deinit()
{
  _Streamed.finish()();

  return swift_deallocClassInstance();
}

uint64_t _Streamed.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = v2;
  v6 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = v36 - v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = TupleTypeMetadata2 - 8;
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v36 - v11;
  v39 = *(v4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v41 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v37 = v36 - v15;
  v16 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v36 - v18;
  v20 = type metadata accessor for AsyncStream.Continuation();
  v40 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v36 - v21;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8650], v16);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v17 + 8))(v19, v16);
  v36[1] = v5;
  v23 = v5[2];
  v45 = v4;
  v24 = *(v3 + 88);
  v46 = v24;
  v47 = v22;
  type metadata accessor for _Streamed.State(0, v4, v24, v25);
  v26 = *(*v23 + *MEMORY[0x1E69E6B68] + 16);
  v27 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v23 + v27));
  partial apply for closure #1 in _Streamed.projectedValue.getter((v23 + v26), v12);
  os_unfair_lock_unlock((v23 + v27));
  v28 = *v12;
  v29 = v39;
  v30 = &v12[*(v9 + 56)];
  v31 = v37;
  (*(v39 + 32))(v37, v30, v4);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v33[2] = v4;
  v33[3] = v24;
  v33[4] = v32;
  v33[5] = v28;
  AsyncStream.Continuation.onTermination.setter();
  (*(v29 + 16))(v41, v31, v4);
  v34 = v42;
  AsyncStream.Continuation.yield(_:)();
  (*(v43 + 8))(v34, v44);
  (*(v29 + 8))(v31, v4);
  return (*(v40 + 8))(v22, v20);
}

uint64_t closure #1 in _Streamed.projectedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for AsyncStream.Continuation();
  v11 = type metadata accessor for Optional();
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v21 - v13;
  v15 = *a1;
  v16 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v21[0] = a4;
    *a1 = v16;
    v17 = *(v10 - 8);
    (*(v17 + 16))(v14, a2, v10);
    (*(v17 + 56))(v14, 0, 1, v10);
    v21[3] = v15;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v18 = *(swift_getTupleTypeMetadata2() + 48);
    *a5 = v15;
    v20 = type metadata accessor for _Streamed.State(0, a3, v21[0], v19);
    return (*(*(a3 - 8) + 16))(&a5[v18], a1 + *(v20 + 40), a3);
  }

  return result;
}

uint64_t closure #2 in _Streamed.projectedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = *(result + 16);

    MEMORY[0x1EEE9AC00](v9);
    type metadata accessor for _Streamed.State(0, a4, a5, v10);
    v11 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
    v12 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v8 + v12));
    partial apply for closure #1 in closure #2 in _Streamed.projectedValue.getter(v8 + v11);
    os_unfair_lock_unlock((v8 + v12));
  }

  return result;
}

uint64_t closure #1 in closure #2 in _Streamed.projectedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AsyncStream.Continuation();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = a2;
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #1 in _Streamed.yield(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for _Streamed.State(0, v12, v13, v13) + 40);
  (*(v9 + 16))(v11, a1 + v14, a3);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v9 + 8))(v11, a3);
  v17 = 0;
  if ((v15 & 1) == 0)
  {
    (*(v9 + 24))(a1 + v14, a2, a3);
    v17 = *(a1 + 8);
    type metadata accessor for AsyncStream.Continuation();
  }

  *a5 = v17;
  return result;
}

void closure #1 in _Streamed.finish()(uint64_t a1@<X0>, void *a3@<X8>)
{
  v4 = *(a1 + 8);
  type metadata accessor for AsyncStream.Continuation();
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(0);
  *a3 = v4;
}

uint64_t specialized OSAllocatedUnfairLock.init(uncheckedState:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  return static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
}

void *specialized _Streamed.init(wrappedValue:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - v5;
  v9 = type metadata accessor for _Streamed.State(0, v3, *(v7 + 88), v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v4 + 16))(v6, a1, v3);
  type metadata accessor for AsyncStream.Continuation();
  v13 = Dictionary.init()();
  *v12 = 0;
  *(v12 + 1) = v13;
  (*(v4 + 32))(&v12[*(v9 + 40)], v6, v3);
  v14 = specialized OSAllocatedUnfairLock.init(uncheckedState:)(v12, v9);
  (*(v10 + 8))(v12, v9);
  v1[2] = v14;
  return v1;
}

uint64_t type metadata completion function for _Streamed.State(uint64_t a1)
{
  type metadata accessor for AsyncStream.Continuation();
  result = type metadata accessor for Dictionary();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _Streamed.State(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for _Streamed.State(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t partial apply for closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t SystemCoordinatorHostConnection.__allocating_init(connection:queue:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  return XPCHostConnection.init(connection:queue:)();
}

void SystemCoordinatorHostConnection.delegate.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*SystemCoordinatorHostConnection.delegate.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for SystemCoordinatorHostConnection.delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SystemCoordinatorHostConnection.delegate.modify;
}

void SystemCoordinatorHostConnection.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall SystemCoordinatorHostConnection.handleHostConnectionInvalidated()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SystemCoordinatorHost.invalidate()();
  }
}

uint64_t SystemCoordinatorHostConnection.init(connection:queue:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();

  return XPCHostConnection.init(connection:queue:)();
}

id SystemCoordinatorHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SystemCoordinatorHostConnection.requestCurrentState(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = XPCHostConnection.queue.getter();
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = partial apply for closure #1 in SystemCoordinatorHostConnection.requestCurrentState(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_7;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  static DispatchQoS.unspecified.getter();
  v18[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v12, v8, v15);
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
}

void closure #1 in SystemCoordinatorHostConnection.requestCurrentState(_:)(uint64_t a1, void (*a2)(void))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue);
    *v6 = v9;
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
    v10 = v9;
    LOBYTE(v9) = _dispatchPreconditionTest(_:)();
    (*(v4 + 8))(v6, v3);
    if (v9)
    {
      v11 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
      swift_beginAccess();
      v12 = *&v8[v11];
      a2();
    }

    else
    {
      __break(1u);
    }
  }
}

double block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t @objc SystemCoordinatorHostConnection.requestCurrentState(_:)(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  SystemCoordinatorHostConnection.requestCurrentState(_:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned SystemCoordinatorState) -> (), v5);
}

uint64_t SystemCoordinatorHostConnection.setConfiguration(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = XPCHostConnection.queue.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in SystemCoordinatorHostConnection.setConfiguration(_:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v17[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v10, v6, v13);
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void closure #1 in SystemCoordinatorHostConnection.setConfiguration(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    PassthroughSubject.send(_:)();
  }
}

uint64_t type metadata accessor for SystemCoordinatorHostConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for SystemCoordinatorHostConnection;
  if (!type metadata singleton initialization cache for SystemCoordinatorHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void @objc SystemCoordinatorHostConnection.setConfiguration(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SystemCoordinatorHostConnection.setConfiguration(_:)(v4);
}

uint64_t GroupStateObserver.isEligibleForGroupSession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for GroupStateObserver.isEligibleForGroupSession : GroupStateObserver@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for GroupStateObserver.isEligibleForGroupSession : GroupStateObserver(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for GroupStateObserver.$isEligibleForGroupSession : GroupStateObserver(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for GroupStateObserver.$isEligibleForGroupSession : GroupStateObserver(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t GroupStateObserver.__allocating_init(conversationManagerClient:queue:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized GroupStateObserver.__allocating_init(conversationManagerClient:queue:)(v7, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t GroupStateObserver.init(conversationManagerClient:queue:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = specialized GroupStateObserver.init(conversationManagerClient:queue:)(v9, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

uint64_t GroupStateObserver.__allocating_init(queue:)(void *a1)
{
  type metadata accessor for ConversationManagerClient();
  v2 = static ConversationManagerClient.shared.getter();
  v3 = swift_allocObject();
  v4 = specialized GroupStateObserver.init(conversationManagerClient:queue:)(v2, a1, v3);

  return v4;
}

uint64_t GroupStateObserver.deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities18GroupStateObserver__isEligibleForGroupSession;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GroupStateObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities18GroupStateObserver__isEligibleForGroupSession;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t specialized GroupStateObserver.init(conversationManagerClient:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v69 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v52 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMR);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v15 = &v52 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMR);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMR);
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v52 - v18;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMR);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v58 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v52 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v61 = v26;
  v27 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  (*(v26 + 32))();
  v73 = a3;
  v29 = a3 + OBJC_IVAR____TtC15GroupActivities18GroupStateObserver__isEligibleForGroupSession;
  LOBYTE(v74) = 0;
  Published.init(initialValue:)();
  v30 = *(v21 + 32);
  v59 = v20;
  v30(v29, v24, v20);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.client);
  v32 = a2;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&dword_1AEE80000, v33, v34, "Initialized group state observer on queue: %@", v35, 0xCu);
    outlined destroy of NSObject?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v36, -1, -1);
    MEMORY[0x1B2715BA0](v35, -1, -1);
  }

  v53 = v27;
  v52 = v28;
  v74 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  v38 = MEMORY[0x1E695BED8];
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR, MEMORY[0x1E695BED8]);
  v39 = v58;
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMR, MEMORY[0x1E695BD60]);
  v40 = v66;
  v74 = Publisher.eraseToAnyPublisher()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR, v38);
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMR, MEMORY[0x1E695BD38]);
  v41 = v56;
  v42 = v57;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v55 + 8))(v15, v41);
  v74 = v32;
  v43 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v44 = v67;
  (*(*(v43 - 8) + 56))(v67, 1, 1, v43);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMR, MEMORY[0x1E695BCC0]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v45 = v62;
  v46 = v63;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(v60 + 8))(v42, v45);
  swift_beginAccess();
  v47 = v70;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.HandleEvents<Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMR, MEMORY[0x1E695BE98]);
  v48 = v65;
  Publisher<>.assign(to:)();
  (*(v64 + 8))(v46, v48);
  v50 = v71;
  v49 = v72;
  (*(v71 + 16))(v69, v47, v72);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();

  (*(v50 + 8))(v47, v49);
  (*(v68 + 8))(v39, v40);
  (*(v61 + 8))(v53, v52);
  return v73;
}

uint64_t specialized GroupStateObserver.__allocating_init(conversationManagerClient:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a1, a4);
  return specialized GroupStateObserver.init(conversationManagerClient:queue:)(v11, a2, v12, a4, a5);
}

uint64_t Subject.wrappedValue.getter(void *a1)
{
  if (*(v1 + 8))
  {
    v2 = *(v1 + 8);
  }

  else
  {
    v2 = closure #1 in Subject.wrappedValue.getter(v1, a1[2], a1[3], a1[4]);
    *(v1 + 8) = v2;
  }

  return v2;
}

uint64_t Subject.wrappedValue.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Subject.init()@<X0>(uint64_t *a4@<X8>)
{
  type metadata accessor for PassthroughSubject();
  result = PassthroughSubject.__allocating_init()();
  *a4 = result;
  a4[1] = 0;
  return result;
}

uint64_t closure #1 in Subject.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PassthroughSubject();
  swift_getWitnessTable();
  return Publisher.eraseToAnyPublisher()();
}

uint64_t (*Subject.wrappedValue.modify(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  a1[1] = v2;
  *a1 = Subject.wrappedValue.getter(a2);
  return Subject.wrappedValue.modify;
}

uint64_t Subject.wrappedValue.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    *(v3 + 8) = v2;
  }

  else
  {

    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t type metadata instantiation function for Subject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized _PublisherElements.Iterator.Inner.cancel()(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  v10 = *(v4 + 16);
  os_unfair_lock_lock(v10);
  swift_beginAccess();
  v11 = *(v4 + 24);
  *(v4 + 24) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  outlined init with copy of URL?(v4 + 32, &v54, a1, a2);
  if (v55 >= 2)
  {
    outlined init with take of Transferable(&v54, v52);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.default);
    outlined init with copy of Transferable(v52, &v50);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v42 = v11;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136315138;
      outlined init with copy of Transferable(&v50, v48);
      outlined init with copy of URL?(v48, &v46, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
      v40 = v10;
      if (v47)
      {
        outlined init with take of Transferable(&v46, v44);
        outlined init with copy of Transferable(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
        v25 = String.init<A>(reflecting:)();
        v27 = v26;
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
        v25 = 7104878;
        v27 = 0xE300000000000000;
      }

      outlined destroy of NSObject?(v48, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
      __swift_destroy_boxed_opaque_existential_0(&v50);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v45);

      *(v23 + 4) = v34;
      _os_log_impl(&dword_1AEE80000, v21, v22, "Handling cancellation by terminating upstream subscription: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B2715BA0](v24, -1, -1);
      MEMORY[0x1B2715BA0](v23, -1, -1);

      v10 = v40;
      v11 = v42;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v50);
    }

    v50 = 0uLL;
    *v51 = 0;
    *&v51[8] = xmmword_1AF00FCC0;
    swift_beginAccess();
    outlined assign with take of _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner.State(&v50, v9 + 32, a1, a2);
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    __swift_project_boxed_opaque_existential_1(v52, v53);
    dispatch thunk of Cancellable.cancel()();
    v35 = *(v11 + 16);
    if (v35)
    {
      v36 = (v11 + 32);
      do
      {
        v37 = *v36++;
        **(*(v37 + 64) + 40) = 0;
        swift_continuation_resume();
        --v35;
      }

      while (v35);
    }

    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v39 = v10;
      v41 = v11;
      v15 = a4;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v44[0] = v17;
      *v16 = 136315138;
      outlined init with copy of URL?(v9 + 32, v52, a1, a2);
      v38 = v15;
      outlined init with copy of URL?(v52, &v50, a3, v15);
      if (*&v51[8] == 2)
      {
        v18 = 7104878;
        v19 = 0xE300000000000000;
      }

      else
      {
        v48[0] = v50;
        v48[1] = *v51;
        v49 = *&v51[16];
        outlined init with copy of URL?(v48, &v46, a1, a2);
        __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
        v18 = String.init<A>(reflecting:)();
        v19 = v28;
        outlined destroy of NSObject?(v48, a1, a2);
      }

      outlined destroy of NSObject?(v52, a3, v38);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v44);

      *(v16 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Terminating sequence from state: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v16, -1, -1);

      v10 = v39;
      v11 = v41;
    }

    else
    {
    }

    memset(v52, 0, sizeof(v52));
    v53 = xmmword_1AF00FCC0;
    swift_beginAccess();
    outlined assign with take of _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner.State(v52, v9 + 32, a1, a2);
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    v30 = *(v11 + 16);
    if (v30)
    {
      v31 = (v11 + 32);
      do
      {
        v32 = *v31++;
        **(*(v32 + 64) + 40) = 0;
        swift_continuation_resume();
        --v30;
      }

      while (v30);
    }

    return outlined destroy of NSObject?(&v54, a1, a2);
  }
}

double GroupSessionJournal.attachments.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  if (*(v1 + 32))
  {
    v7 = *(v1 + 32);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
    v8 = v1;
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[GroupSessionJournal.Attachment]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR, MEMORY[0x1E695C068]);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v4 + 8))(v6, v3);
    *(v8 + 32) = v7;
  }

  *a1 = v7;

  return result;
}

uint64_t GroupSessionJournal.Attachments.init(_:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[GroupSessionJournal.Attachment]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR, MEMORY[0x1E695C068]);
  v7 = Publisher.eraseToAnyPublisher()();

  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  return result;
}

uint64_t (*GroupSessionJournal.attachments.modify(uint64_t *a1))()
{
  a1[1] = v1;
  GroupSessionJournal.attachments.getter(a1);
  return GroupSessionJournal.attachments.modify;
}

uint64_t GroupSessionJournal._attachments.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GroupSessionJournal.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal_cancellables;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t GroupSessionJournal.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for GroupSessionJournal.Attachment(0);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for Optional();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = *(a3 - 8);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.add<A>(_:), 0, 0);
}

uint64_t GroupSessionJournal.add<A>(_:)(uint64_t a1)
{
  v48 = v1;
  UUID.init()();
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v2 = v1[19];
  v3 = v1[20];
  v4 = v1[17];
  v5 = v1[18];
  v7 = v1[15];
  v6 = v1[16];
  v9 = v1[3];
  v8 = v1[4];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.ledger);
  v45 = *(v7 + 16);
  v45(v6, v9, v8);
  v11 = *(v5 + 16);
  v1[21] = v11;
  v1[22] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v3, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v1[18];
  v16 = v1[19];
  v18 = v1[16];
  v17 = v1[17];
  v19 = v1[15];
  if (v14)
  {
    v41 = v1[19];
    v42 = v1[17];
    v20 = v1[13];
    v21 = v1[14];
    v40 = v1[12];
    v22 = v1[4];
    log = v12;
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v23 = 136315394;
    v45(v21, v18, v22);
    (*(v19 + 56))(v21, 0, 1, v22);
    v24 = >> prefix<A>(_:)(v21, v22);
    v46 = v13;
    v26 = v25;
    (*(v20 + 8))(v21, v40);
    (*(v19 + 8))(v18, v22);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v47);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v31 = *(v15 + 8);
    v31(v41, v42);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v47);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_1AEE80000, log, v46, "Received add request for item: %s, using ID: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v44, -1, -1);
    MEMORY[0x1B2715BA0](v23, -1, -1);
  }

  else
  {
    v33 = v1[4];

    v31 = *(v15 + 8);
    v31(v16, v17);
    (*(v19 + 8))(v18, v33);
  }

  v1[23] = v31;
  v34 = swift_task_alloc();
  v1[24] = v34;
  *v34 = v1;
  v34[1] = GroupSessionJournal.add<A>(_:);
  v35 = v1[11];
  v36 = v1[4];
  v37 = v1[5];
  v38 = v1[3];

  return static URL.file<A>(from:)(v35, v38, v36, v37);
}