void closure #1 in AttributedString.init<A>(converting:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v35 = a7;
  v31 = a6;
  v32 = a1;
  v39 = a2;
  v40 = a3;
  v33 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AttributeContainer();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributedSubstring?(0, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v31 - v19;
  type metadata accessor for Range<AttributedString.Index>(0);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v15 + 16);
  v38 = a5;
  v27(v17, a5, v14, v24);
  _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  Range<>.init<A>(_:in:)();
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    outlined destroy of AttributedSubstring?(v20, &lazy cache variable for type metadata for Range<AttributedString.Index>?, type metadata accessor for Range<AttributedString.Index>);
  }

  else
  {
    outlined init with take of Range<AttributedString.Index>(v20, v26, type metadata accessor for Range<AttributedString.Index>);
    AttributeContainer.init()();
    v28 = v33;
    v29 = v35;
    (*(v33 + 16))(v10, v31, v35);
    (*(v34 + 40))(v32, v13, 1, v29);
    (*(v28 + 8))(v10, v29);
    _s10Foundation16AttributedStringV5IndexVAESLAAWlTm_0(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>, MEMORY[0x1E69E66D8]);
    v30 = AttributedString.subscript.modify();
    AttributedSubstring.setAttributes(_:)();
    v30(v41, 0);
    (*(v36 + 8))(v13, v37);
    outlined destroy of Range<AttributedString.Index>(v26);
  }
}

void type metadata accessor for AttributedSubstring?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of AttributedSubstring?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for AttributedSubstring?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (lower: AttributedString.Index, upper: AttributedString.Index))
  {
    type metadata accessor for AttributedString.Index();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (lower: AttributedString.Index, upper: AttributedString.Index));
    }
  }
}

uint64_t outlined init with copy of (lower: AttributedString.Index, upper: AttributedString.Index)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (lower: AttributedString.Index, upper: AttributedString.Index)(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for Gradient.ProviderTag.SwiftUIPlatformTag(uint64_t a1)
{
  result = type metadata singleton initialization cache for Gradient.ProviderTag.SwiftUIPlatformTag;
  if (!type metadata singleton initialization cache for Gradient.ProviderTag.SwiftUIPlatformTag)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369627563 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys>, lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys, &unk_1EFF9C290, MEMORY[0x1E69E6F58]);
  v14 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFF9C270, v2);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v6, v14);
  return (*(v9 + 8))(v11, v8);
}

uint64_t CubicGradientProvider.codingProxy.getter(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v7 = v20;
    v8 = (a1 + 32);
    v9 = *(v20 + 16);
    do
    {
      v10 = *v8;
      v11 = *(v20 + 24);

      if (v9 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1);
      }

      *(v20 + 16) = v9 + 1;
      *(v20 + 8 * v9 + 32) = v10;
      ++v8;
      ++v9;
      --v4;
    }

    while (v4);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (a3 && (v12 = a3[1].n128_i64[0]) != 0)
  {

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v5;
    v14 = a3 + 2;
    v15 = *(v5 + 16);
    do
    {
      v16 = *v14;
      v21 = v13;
      v17 = *(v13 + 24);
      if (v15 >= v17 >> 1)
      {
        v19 = *v14;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v15 + 1, 1);
        v16 = v19;
        v13 = v21;
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + 16 * v15 + 32) = v16;
      ++v14;
      ++v15;
      --v12;
    }

    while (v12);
  }

  else
  {
  }

  return v7;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance CubicGradientProvider@<X0>(uint64_t *a1@<X8>)
{
  result = CubicGradientProvider.codingProxy.getter(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance CubicGradientProvider@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized static CubicGradientProvider.unwrap(codingProxy:)(*a1, a1[1], a1[2]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t Gradient.CubicDefinition.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a3;
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Gradient.CubicDefinition.CodingKeys>, lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys, &unk_1EFF9C320, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v17 = 0;
  type metadata accessor for [ProxyCodable<Color>](0, &lazy cache variable for type metadata for [ProxyCodable<Color>], type metadata accessor for ProxyCodable<Color>);
  lazy protocol witness table accessor for type [ProxyCodable<Color>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ProxyCodable<Color>] and conformance <A> [A], &lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, MEMORY[0x1E697DEE8], MEMORY[0x1E69E6300]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v12 = v15;
    v18 = v16;
    v17 = 1;
    type metadata accessor for [Float]();
    lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A], MEMORY[0x1E69E6458], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v12;
    v17 = 2;
    type metadata accessor for [ProxyCodable<Color>](0, &lazy cache variable for type metadata for [ConformingTuple<Pack{Float, Float, Float, Float}>], type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>);
    lazy protocol witness table accessor for type [ConformingTuple<Pack{Float, Float, Float, Float}>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ConformingTuple<Pack{Float, Float, Float, Float}>] and conformance <A> [A], &lazy protocol witness table cache variable for type ConformingTuple<Pack{Float, Float, Float, Float}> and conformance <each A> ConformingTuple<Pack{repeat A}>, MEMORY[0x1E697E638], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Gradient.CubicDefinition.CodingKeys()
{
  v1 = 0x6F69746C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C6F707265746E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73726F6C6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Gradient.CubicDefinition.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Gradient.CubicDefinition.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Gradient.CubicDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Gradient.CubicDefinition.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Gradient.CubicDefinition@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized Gradient.CubicDefinition.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t Gradient.ProviderTag.SwiftUIPlatformTag.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Gradient.ProviderTag.SwiftUIPlatformTag.init(from:)(a1);
  return v2;
}

uint64_t *Gradient.ProviderTag.SwiftUIPlatformTag.init(from:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();

    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v1;
}

uint64_t Gradient.ProviderTag.SwiftUIPlatformTag.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag()
{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag, &type metadata for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag, &type metadata for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag, &type metadata for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition()
{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.CubicDefinition, &type metadata for Gradient.CubicDefinition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.CubicDefinition, &type metadata for Gradient.CubicDefinition, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition and conformance Gradient.CubicDefinition);
  }

  return result;
}

uint64_t specialized Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys>, lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys, &unk_1EFF9C290, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys>, lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFF9C270, v2);
  v8 = v7;
  v23 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys();
  v11 = v29;
  v12 = a1;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v11)
  {
    v14 = v23;
    v13 = v24;
    v15 = KeyedDecodingContainer.allKeys.getter();
    v16 = (2 * *(v15 + 16)) | 1;
    v25 = v15;
    v26 = v15 + 32;
    v27 = 0;
    v28 = v16;
    if (specialized Collection<>.popFirst()() || v27 != v28 >> 1)
    {
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v19 = v18;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v19 = &type metadata for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      v20 = *(*(v17 - 8) + 104);
      v21 = v17;
      v12 = a1;
      v20(v19, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
    }

    else
    {
      lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v13 + 8))(v6, v4);
    }

    (*(v14 + 8))(v10, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t specialized static CubicGradientProvider.unwrap(codingProxy:)(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = a1 + 32;
    do
    {
      v7 += 8;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
    v8 = v17;
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  v9 = a3[1].n128_i64[0];
  if (!v9)
  {
LABEL_12:

    return v8;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = v5;
  v11 = a3 + 2;
  v12 = *(v5 + 16);
  do
  {
    v13 = *v11;
    v18 = v10;
    v14 = *(v10 + 24);
    if (v12 >= v14 >> 1)
    {
      v16 = *v11;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v12 + 1, 1);
      v13 = v16;
      v10 = v18;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + 16 * v12 + 32) = v13;
    ++v11;
    ++v12;
    --v9;
  }

  while (v9);
  return v8;
}

uint64_t specialized Gradient.CubicDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746C61636F6CLL && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F707265746E69 && a2 == 0xEE00736E6F697461)
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

uint64_t specialized Gradient.CubicDefinition.init(from:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>, lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys, &unk_1EFF9C320, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    type metadata accessor for [ProxyCodable<Color>](0, &lazy cache variable for type metadata for [ProxyCodable<Color>], type metadata accessor for ProxyCodable<Color>);
    v11 = 0;
    lazy protocol witness table accessor for type [ProxyCodable<Color>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ProxyCodable<Color>] and conformance <A> [A], &lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, MEMORY[0x1E697DEF0], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v12;
    type metadata accessor for [Float]();
    v11 = 1;
    lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A], MEMORY[0x1E69E6478], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    type metadata accessor for [ProxyCodable<Color>](0, &lazy cache variable for type metadata for [ConformingTuple<Pack{Float, Float, Float, Float}>], type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>);
    v11 = 2;
    lazy protocol witness table accessor for type [ConformingTuple<Pack{Float, Float, Float, Float}>] and conformance <A> [A](&lazy protocol witness table cache variable for type [ConformingTuple<Pack{Float, Float, Float, Float}>] and conformance <A> [A], &lazy protocol witness table cache variable for type ConformingTuple<Pack{Float, Float, Float, Float}> and conformance <each A> ConformingTuple<Pack{repeat A}>, MEMORY[0x1E697E640], MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.CubicDefinition.CodingKeys, &unk_1EFF9C320, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.CubicDefinition.CodingKeys, &unk_1EFF9C320, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.CubicDefinition.CodingKeys, &unk_1EFF9C320, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.CubicDefinition.CodingKeys, &unk_1EFF9C320, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.CubicDefinition.CodingKeys and conformance Gradient.CubicDefinition.CodingKeys);
  }

  return result;
}

void type metadata accessor for ProxyCodable<Color>()
{
  if (!lazy cache variable for type metadata for ProxyCodable<Color>)
  {
    v0 = type metadata accessor for ProxyCodable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ProxyCodable<Color>);
    }
  }
}

void type metadata accessor for [Float]()
{
  if (!lazy cache variable for type metadata for [Float])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Float]);
    }
  }
}

void type metadata accessor for [ProxyCodable<Color>](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>()
{
  if (!lazy cache variable for type metadata for ConformingTuple<Pack{Float, Float, Float, Float}>)
  {
    v0 = type metadata accessor for ConformingTuple();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ConformingTuple<Pack{Float, Float, Float, Float}>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [ProxyCodable<Color>] and conformance <A> [A](unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [ProxyCodable<Color>](255, &lazy cache variable for type metadata for [ProxyCodable<Color>], type metadata accessor for ProxyCodable<Color>);
    v10 = v9;
    v11 = lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(a2, a3);
    result = swift_getWitnessTable(a4, v10, &v11);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProxyCodable<Color>();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Float] and conformance <A> [A](unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [Float]();
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ConformingTuple<Pack{Float, Float, Float, Float}> and conformance <each A> ConformingTuple<Pack{repeat A}>(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>();
    v8[0] = MEMORY[0x1E69E6478];
    v8[1] = MEMORY[0x1E69E6478];
    v8[2] = MEMORY[0x1E69E6478];
    v8[3] = MEMORY[0x1E69E6478];
    v7[0] = MEMORY[0x1E69E6458];
    v7[1] = MEMORY[0x1E69E6458];
    v7[2] = MEMORY[0x1E69E6458];
    v7[3] = MEMORY[0x1E69E6458];
    v6[0] = v8;
    v6[1] = v7;
    result = swift_getWitnessTable(a2, v5, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys()
{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys, &unk_1EFF9C290, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys, &unk_1EFF9C290, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys, &unk_1EFF9C290, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CubicCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFF9C270, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFF9C270, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFF9C270, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys;
  if (!lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys, &unk_1EFF9C270, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys and conformance Gradient.ProviderTag.SwiftUIPlatformTag.ProviderTag.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<Gradient.CubicDefinition.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void *assignWithCopy for Gradient.CubicDefinition(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for Gradient.CubicDefinition(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t lazy protocol witness table accessor for type [SheetBehavior.Role] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SheetBehavior.Role] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SheetBehavior.Role] and conformance [A])
  {
    type metadata accessor for [SheetBehavior.Role]();
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [SheetBehavior.Role] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [SheetBehavior.Role]()
{
  if (!lazy cache variable for type metadata for [SheetBehavior.Role])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [SheetBehavior.Role]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SheetBehavior.Role and conformance SheetBehavior.Role()
{
  result = lazy protocol witness table cache variable for type SheetBehavior.Role and conformance SheetBehavior.Role;
  if (!lazy protocol witness table cache variable for type SheetBehavior.Role and conformance SheetBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SheetBehavior.Role, &type metadata for SheetBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SheetBehavior.Role and conformance SheetBehavior.Role);
  }

  return result;
}

uint64_t initializeWithCopy for WheelEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for WheelEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for WheelEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for WheelEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for WheelEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void protocol witness for EventType.init(_:) in conformance WheelEvent(uint64_t a3@<X8>)
{
  type metadata accessor for EventType();
  if (swift_dynamicCast())
  {
    v4 = v6;
    v5 = v8;
    *(a3 + 8) = v7;
  }

  else
  {
    outlined consume of WheelEvent?(0, 0, 1);
    v5 = xmmword_18CD6A6D0;
    v4 = 0;
    *(a3 + 8) = 0;
  }

  *a3 = v4;
  *(a3 + 16) = v5;
}

double outlined consume of WheelEvent?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

BOOL specialized static WheelEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (!v5)
  {
    if (!v6)
    {
      return *(a1 + 24) == *(a2 + 24);
    }

    goto LABEL_12;
  }

  if (!v6)
  {
LABEL_12:

    return 0;
  }

  if (v5 == v6)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return 0;
}

void *initializeBufferWithCopyOfBuffer for CustomHoverEffectModifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (((((((v5 & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v10 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5) & 0xFFFFFFFFFFFFFFF8;
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    outlined copy of Environment<Bool>.Content();
    *(v10 + 8) = v12;
    *(v10 + 16) = v13;
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v16 = *(v11 + 40);
    v17 = *(v11 + 48);
    outlined copy of Environment<HoverEffectContext.State>.Content(v14, v15, v16, v17);
    *(v10 + 24) = v14;
    *(v10 + 32) = v15;
    *(v10 + 40) = v16;
    *(v10 + 48) = v17;
    *(v10 + 49) = *(v11 + 49);
    v18 = (v10 + 57) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v11 + 57) & 0xFFFFFFFFFFFFFFF8;
    v20 = *v19;
    *(v18 + 8) = *(v19 + 8);
    *v18 = v20;
    v21 = (v10 + 73) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v11 + 73) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    *(v21 + 8) = *(v22 + 8);
    *v21 = v23;
    *(v21 + 9) = *(v22 + 9);
    v24 = ((v21 + 17) & 0xFFFFFFFFFFFFFFF8);
    v25 = (v22 + 17) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    v25 += 15;
    *v24 = v26;
    v27 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = *(v25 & 0xFFFFFFFFFFFFFFF8);
    v29 = *((v25 & 0xFFFFFFFFFFFFFFF8) + 8);
    LOBYTE(v16) = *((v25 & 0xFFFFFFFFFFFFFFF8) + 16);
    outlined copy of Environment<String?>.Content(v28, v29, v16);
    *v27 = v28;
    *(v27 + 8) = v29;
    *(v27 + 16) = v16;
  }

  return v3;
}

uint64_t initializeWithTake for CustomHoverEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v7 &= 0xFFFFFFFFFFFFFFF8;
  v8 &= 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = v9;
  v10 = *(v8 + 33);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 33) = v10;
  *(v7 + 49) = *(v8 + 49);
  v11 = (v7 + 57) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 57) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  *v11 = *v12;
  *(v11 + 8) = v13;
  v14 = (v7 + 73) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v8 + 73) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v11) = *(v15 + 8);
  *v14 = *v15;
  *(v14 + 8) = v11;
  *(v14 + 9) = *(v15 + 9);
  v16 = ((v14 + 17) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v11) = *(v19 + 16);
  *v18 = *v19;
  *(v18 + 16) = v11;
  return a1;
}

uint64_t assignWithTake for CustomHoverEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v7) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 16);
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  *(v9 + 8) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v9 + 16) = v7;
  outlined consume of Environment<Bool>.Content(v11, v12);
  v13 = *(v10 + 40);
  v14 = *(v10 + 48);
  v15 = *(v9 + 24);
  v16 = *(v9 + 32);
  v17 = *(v9 + 40);
  v18 = *(v9 + 48);
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 40) = v13;
  *(v9 + 48) = v14;
  outlined consume of Environment<HoverEffectContext.State>.Content(v15, v16, v17, v18);
  *(v9 + 49) = *(v10 + 49);
  v19 = (v9 + 57) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v10 + 57) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  v22 = (v9 + 73) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v10 + 73) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  *(v22 + 8) = *(v23 + 8);
  *v22 = v24;
  *(v22 + 9) = *(v23 + 9);
  v25 = ((v23 + 17) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v22 + 17) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v25;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v24) = *(v28 + 16);
  v29 = *v27;
  v30 = *(v27 + 8);
  v31 = *(v27 + 16);
  *v27 = *v28;
  *(v27 + 16) = v24;
  outlined consume of Environment<String?>.Content(v29, v30, v31);
  return a1;
}

uint64_t getEnumTagSinglePayload for CustomHoverEffectModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = a1[v6];
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void storeEnumTagSinglePayload for CustomHoverEffectModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = (((((((v9 & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, (((((((v9 & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

double protocol witness for static Rule.initialValue.getter in conformance CustomHoverEffectPrimitiveViewModifier<A>.MakeRootContext@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CustomHoverEffectPrimitiveViewModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for CustomHoverEffectPrimitiveViewModifier<A>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t key path getter for EnvironmentValues.sceneIdentifier : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CustomHoverEffectPrimitiveViewModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 88 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v10 = *v11;
    *(v10 + 8) = *(v11 + 8);
    v12 = *(v11 + 16);
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 16) = v12;
    LOBYTE(v12) = *(v11 + 40);
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 40) = v12;
    *(v10 + 41) = *(v11 + 41);
    *(v10 + 42) = *(v11 + 42);
    *(v10 + 48) = *(v11 + 48);
    *(v10 + 56) = *(v11 + 56);
    *(v10 + 64) = *(v11 + 64);
    *(v10 + 72) = *(v11 + 72);
    *(v10 + 80) = *(v11 + 80);
  }

  return v3;
}

uint64_t initializeWithTake for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  v11 = *(v8 + 48);
  v10 = *(v8 + 64);
  v12 = *(v8 + 32);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 48) = v11;
  *(v7 + 64) = v10;
  *(v7 + 32) = v12;
  return a1;
}

uint64_t assignWithTake for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  LOBYTE(v6) = *(v8 + 24);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = v6;
  LOBYTE(v6) = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v6;
  *(v7 + 41) = *(v8 + 41);
  *(v7 + 42) = *(v8 + 42);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 64) = *(v8 + 64);

  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for CustomHoverEffectPrimitiveViewModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 88;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 64);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for CustomHoverEffectPrimitiveViewModifier(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 88;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFA8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFA8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFA8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 88);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      result = 0.0;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 64) = a2;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t destroy for HoverEffectContext.RootContextOptions()
{
}

uint64_t assignWithCopy for HoverEffectContext.RootContextOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t assignWithTake for HoverEffectContext.RootContextOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v4;

  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for HoverEffectContext.RootContextOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for HoverEffectContext.RootContextOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t AnyNavigationLinkPresentedValue.view<A>(basedOn:applying:apparentPosition:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v12;
  v17[4] = *(a1 + 64);
  v18 = *(a1 + 80);
  v13 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v13;
  v14 = v6[3];
  v15 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v14);
  return (*(v15 + 104))(v17, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 112), a1);
  return v2;
}

uint64_t AnyNavigationLinkPresentedValue.as<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  return (*(v5 + 48))(a2, a2, v4, v5);
}

uint64_t AnyNavigationLinkPresentedValue.setSelection<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 88))(a1, a2, a3, v7, v8);
}

uint64_t AnyNavigationLinkPresentedValue.select<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  return (*(v8 + 96))(a1, a2, a3, v7, v8);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyNavigationLinkPresentedValue()
{
  Hasher.init(_seed:)();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(v4, v1, v2);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnyNavigationLinkPresentedValue(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 24))(v5, v2, v3);
  AnyHashable.hash(into:)();
  return outlined destroy of AnyHashable(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyNavigationLinkPresentedValue(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 24))(v5, v2, v3);
  AnyHashable.hash(into:)();
  outlined destroy of AnyHashable(v5);
  return Hasher._finalize()();
}

unint64_t AnyNavigationLinkPresentedValueStorage.description.getter(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - v4;
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v8 = 0xD000000000000021;
  v9 = 0x800000018CD409A0;
  (*(v3 + 16))(v5, v1 + *(*v1 + 96), v2);
  v6 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v6);

  return v8;
}

void *AnyNavigationLinkPresentedValueStorage.hashableRepresentation.getter(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - v7, v2 + *(v3 + 96), v4, v5);
  return AnyHashable.init<A>(_:)();
}

uint64_t AnyNavigationLinkPresentedValueStorage.presentationAction.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 96);
  v6 = *v2;
  v7 = *(*v2 + 80);
  *(a2 + 24) = v7;
  *(a2 + 32) = *(v6 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  result = (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v2 + v5, v7);
  *(a2 + 56) = a1;
  return result;
}

uint64_t AnyNavigationLinkPresentedValueStorage.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*v3 + 80);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v13 - v10, v3 + *(v8 + 96), v6, v7);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t AnyNavigationLinkPresentedValueStorage.append(to:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v9 - v6;
  (*(v4 + 16))(v9 - v6, v1 + *(v2 + 96), v3, v5);
  AnyNavigationPath.append<A>(_:)(v7, v3, *(v2 + 88));
  return (*(v4 + 8))(v7, v3);
}

double AnyNavigationLinkPresentedValueStorage.append(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v15 - v12;
  (*(v10 + 16))(v15 - v12, v4 + *(v8 + 96), v9, v11);
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = a3;
  type metadata accessor for Binding<AnyNavigationPath>();
  MEMORY[0x18D00ACC0](&v16);
  AnyNavigationPath.append<A>(_:)(v13, v9, *(v8 + 88));
  (*(v10 + 8))(v13, v9);
  v15[0] = v16;
  dispatch thunk of AnyLocation.set(_:transaction:)();

  return result;
}

uint64_t AnyNavigationLinkPresentedValueStorage.setSelection<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26[0] = a3;
  v26[1] = a1;
  v6 = *v3;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  v11 = *(v6 + 80);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = *(a2 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, &v4[*(v6 + 96)], v11, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v10, 0, 1, a2);
    (*(v15 + 32))(v19, v10, a2);
    v24 = type metadata accessor for SelectionManagerBox(0, a2, v26[0], v23);
    if ((SelectionManagerBox.isSelected(_:)(v19, v24) & 1) == 0 || SelectionManagerBox.count.getter(v24) != 1)
    {
      SelectionManagerBox.setSelection(_:)(v19, v24);
    }

    return (*(v15 + 8))(v19, a2);
  }

  else
  {
    v22(v10, 1, 1, a2);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t AnyNavigationLinkPresentedValueStorage.select<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = a3;
  v25[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v10 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 96)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v23 = type metadata accessor for SelectionManagerBox(0, a2, v25[0], v22);
    if ((SelectionManagerBox.isSelected(_:)(v18, v23) & 1) == 0)
    {
      SelectionManagerBox.select(_:)(v18, v23);
    }

    return (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t AnyNavigationLinkPresentedValueStorage.view<A>(basedOn:applying:apparentPosition:)(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*v6 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v22 - v14;
  v17 = *(v16 + 48);
  v22[2] = *(v16 + 32);
  v22[3] = v17;
  v22[4] = *(v16 + 64);
  v23 = *(v16 + 80);
  v18 = *(v16 + 16);
  v22[0] = *v16;
  v22[1] = v18;
  (*(v13 + 16))(v22 - v14, v6 + *(v19 + 96), v12);
  v20 = ResolvedNavigationDestinations.view<A, B>(presenting:at:applying:)(v15, a4, a2, a3, v12, a5, a6);
  (*(v13 + 8))(v15, v12);
  return v20;
}

uint64_t AnyNavigationLinkPresentedValueStorage.isOn(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1 + *(v3 + 96), v4, v6);
  LOBYTE(v2) = AnyNavigationPath.contains<A>(_:)(v8, v2, v4, *(v3 + 88));
  (*(v5 + 8))(v8, v4);
  return v2 & 1;
}

uint64_t type metadata completion function for AnyNavigationLinkCodablePresentedValueStorage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t AnyNavigationLinkCodablePresentedValueStorage.description.getter(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - v4;
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v8 = 0xD000000000000021;
  v9 = 0x800000018CD409A0;
  (*(v3 + 16))(v5, v1 + *(*v1 + 112), v2);
  v6 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v6);

  return v8;
}

void *AnyNavigationLinkCodablePresentedValueStorage.hashableRepresentation.getter(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - v7, v2 + *(v3 + 112), v4, v5);
  return AnyHashable.init<A>(_:)();
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.presentationAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 80);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v4 + 88);
  *(a1 + 48) = *(v3 + 104);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  result = (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v1 + v5, v6);
  *(a1 + 56) = 2;
  return result;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.presentationInListAction.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  v4 = *v1;
  v5 = *(*v1 + 80);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v4 + 104);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  result = (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v3, v5);
  *(a1 + 56) = 3;
  return result;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*v3 + 80);
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v13 - v10, v3 + *(v8 + 112), v6, v7);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.append(to:)(uint64_t a1)
{
  v2 = *v1;
  v3 = (*v1)[10];
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v9 - v6;
  (*(v4 + 16))(v9 - v6, v1 + v2[14], v3, v5);
  AnyNavigationPath.append<A>(_:)(v7, v3, v2[11], v2[12], v2[13]);
  return (*(v4 + 8))(v7, v3);
}

double AnyNavigationLinkCodablePresentedValueStorage.append(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = (*v4)[10];
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v15 - v12;
  (*(v10 + 16))(v15 - v12, v4 + v8[14], v9, v11);
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = a3;
  type metadata accessor for Binding<AnyNavigationPath>();
  MEMORY[0x18D00ACC0](&v16);
  AnyNavigationPath.append<A>(_:)(v13, v9, v8[11], v8[12], v8[13]);
  (*(v10 + 8))(v13, v9);
  v15[0] = v16;
  dispatch thunk of AnyLocation.set(_:transaction:)();

  return result;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.isSelected<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[0] = a3;
  v26[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  v10 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 112)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v23 = type metadata accessor for SelectionManagerBox(0, a2, v26[0], v22);
    v24 = SelectionManagerBox.isSelected(_:)(v18, v23);
    (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.setSelection<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26[0] = a3;
  v26[1] = a1;
  v6 = *v3;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  v11 = *(v6 + 80);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  v15 = *(a2 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, &v4[*(v6 + 112)], v11, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v10, 0, 1, a2);
    (*(v15 + 32))(v19, v10, a2);
    v24 = type metadata accessor for SelectionManagerBox(0, a2, v26[0], v23);
    if ((SelectionManagerBox.isSelected(_:)(v19, v24) & 1) == 0 || SelectionManagerBox.count.getter(v24) != 1)
    {
      SelectionManagerBox.setSelection(_:)(v19, v24);
    }

    return (*(v15 + 8))(v19, a2);
  }

  else
  {
    v22(v10, 1, 1, a2);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.select<A>(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[0] = a3;
  v25[1] = a1;
  v5 = *v3;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - v8;
  v10 = *(v5 + 80);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v13, &v3[*(v5 + 112)], v10, v16);
  v20 = swift_dynamicCast();
  v21 = *(v14 + 56);
  if (v20)
  {
    v21(v9, 0, 1, a2);
    (*(v14 + 32))(v18, v9, a2);
    v23 = type metadata accessor for SelectionManagerBox(0, a2, v25[0], v22);
    if ((SelectionManagerBox.isSelected(_:)(v18, v23) & 1) == 0)
    {
      SelectionManagerBox.select(_:)(v18, v23);
    }

    return (*(v14 + 8))(v18, a2);
  }

  else
  {
    v21(v9, 1, 1, a2);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.view<A>(basedOn:applying:apparentPosition:)(uint64_t a1, void (*a2)(uint64_t, __n128), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*v6 + 80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v22 - v14;
  v17 = *(v16 + 48);
  v22[2] = *(v16 + 32);
  v22[3] = v17;
  v22[4] = *(v16 + 64);
  v23 = *(v16 + 80);
  v18 = *(v16 + 16);
  v22[0] = *v16;
  v22[1] = v18;
  (*(v13 + 16))(v22 - v14, v6 + *(v19 + 112), v12);
  v20 = ResolvedNavigationDestinations.view<A, B>(presenting:at:applying:)(v15, a4, a2, a3, v12, a5, a6);
  (*(v13 + 8))(v15, v12);
  return v20;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.matches(_:)(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7 - 8];
  outlined init with copy of _Benchmark(v9, v16);
  type metadata accessor for AnyNavigationLinkPresentedValueStorageProtocol();
  if (swift_dynamicCast())
  {
    v10 = v15;
    v11 = *(v3 + 16);
    v11(v8, v1 + *(*v1 + 112), v2);
    v11(v5, v10 + *(*v10 + 112), v2);
    v12 = dispatch thunk of static Equatable.== infix(_:_:)();

    v13 = *(v3 + 8);
    v13(v5, v2);
    v13(v8, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t AnyNavigationLinkCodablePresentedValueStorage.isOn(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, v1 + *(v3 + 112), v4, v6);
  LOBYTE(v2) = AnyNavigationPath.contains<A>(_:)(v8, v2, v4, *(v3 + 104));
  (*(v5 + 8))(v8, v4);
  return v2 & 1;
}

id AnyNavigationLinkCodablePresentedValueStorage.userActivityForOpeningScene(id:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - v11;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
    v10 = *v3;
  }

  (*(v9 + 16))(v12, v3 + *(v10 + 112), v8);
  v13 = *(v7 + 88);
  v14 = *(v7 + 96);

  v15 = specialized SceneNavigationStrategy_Phone.userActivityForOpeningWindow<A>(id:value:)(a1, a2, a3 & 1, v12, v8, v13, v14);

  (*(v9 + 8))(v12, v8);
  return v15;
}

double AnyNavigationLinkCodablePresentedValueStorage.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  swift_deallocClassInstance();
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyNavigationLinkPresentedValue and conformance AnyNavigationLinkPresentedValue()
{
  result = lazy protocol witness table cache variable for type AnyNavigationLinkPresentedValue and conformance AnyNavigationLinkPresentedValue;
  if (!lazy protocol witness table cache variable for type AnyNavigationLinkPresentedValue and conformance AnyNavigationLinkPresentedValue)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationLinkPresentedValue, &type metadata for AnyNavigationLinkPresentedValue, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationLinkPresentedValue and conformance AnyNavigationLinkPresentedValue);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for AnyNavigationLinkCodablePresentedValueStorage<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyNavigationLinkCodablePresentedValueStorage<A>);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for Binding<AnyNavigationPath>()
{
  if (!lazy cache variable for type metadata for Binding<AnyNavigationPath>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AnyNavigationPath>);
    }
  }
}

BOOL specialized AnyNavigationLinkPresentedValue.canBeSelected<A>(in:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(v3, v4) == a1;
}

double destroy for NavigationStackViewSource(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
    if (*(a1 + 24))
    {
      v4 = a1;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a1 = v4;
    }

    if (*(a1 + 48) != 1)
    {
    }
  }

  else if (!v2)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t assignWithCopy for NavigationStackViewSource(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 64);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      if (*(a1 + 48) != 1)
      {
      }
    }

    else if (!v4)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v5 = *(a2 + 64);
    if (v5 >= 2)
    {
      v5 = *a2 + 2;
    }

    if (v5 == 1)
    {
      v7 = *(a2 + 3);
      if (v7)
      {
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1, a2);
      }

      else
      {
        v11 = *a2;
        v12 = a2[1];
        *(a1 + 32) = *(a2 + 4);
        *a1 = v11;
        *(a1 + 16) = v12;
      }

      if (*(a2 + 6) == 1)
      {
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        *(a1 + 40) = *(a2 + 10);
        *(a1 + 44) = *(a2 + 11);
        *(a1 + 48) = *(a2 + 6);
      }

      *(a1 + 56) = *(a2 + 7);
      *(a1 + 64) = 1;
    }

    else if (v5)
    {
      *a1 = *a2;
      v8 = a2[1];
      v9 = a2[2];
      v10 = a2[3];
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v9;
      *(a1 + 48) = v10;
      *(a1 + 16) = v8;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 64) = 0;
    }
  }

  return a1;
}

__n128 assignWithTake for NavigationStackViewSource(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return result;
  }

  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    v3 = *a1 + 2;
  }

  if (v3 == 1)
  {
    if (*(a1 + 24))
    {
      v5 = a1;
      __swift_destroy_boxed_opaque_existential_1(a1);
      a1 = v5;
    }

    if (*(a1 + 48) == 1)
    {
      goto LABEL_12;
    }

    v4 = a1;

    goto LABEL_11;
  }

  if (!v3)
  {
    v4 = a1;
    __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_11:
    a1 = v4;
  }

LABEL_12:
  v6 = *(a2 + 64);
  if (v6 >= 2)
  {
    v6 = *a2 + 2;
  }

  if (v6 == 1)
  {
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    result = *(a2 + 32);
    v10 = *(a2 + 48);
    *(a1 + 32) = result;
    *(a1 + 48) = v10;
    *(a1 + 64) = 1;
  }

  else if (v6)
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
    *(a1 + 64) = *(a2 + 64);
    result = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = result;
  }

  else
  {
    result = *a2;
    v8 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v8;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationStackViewSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationStackViewSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for NavigationStackViewSource(uint64_t a1)
{
  result = *(a1 + 64);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for NavigationStackViewSource(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t NavigationStackViewSource.hash(into:)(uint64_t a1)
{
  outlined init with copy of NavigationStackViewSource(v1, &v15);
  if (v19)
  {
    if (v19 == 1)
    {
      v12 = v15;
      v13 = v16;
      *v14 = v17;
      *&v14[16] = v18;
      MEMORY[0x18D00F6F0](2);
      outlined init with copy of AnyNavigationLinkPresentedValue?(&v12, &v9);
      if (*(&v10 + 1))
      {
        v6 = v9;
        v7 = v10;
        v8 = v11;
        Hasher._combine(_:)(1u);
        v2 = *(&v7 + 1);
        v3 = v8;
        __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
        (*(v3 + 24))(v5, v2, v3);
        AnyHashable.hash(into:)();
        outlined destroy of AnyHashable(v5);
        outlined destroy of AnyNavigationLinkPresentedValue(&v6);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      if (*&v14[16] == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v9 = *&v14[8];
        Hasher._combine(_:)(1u);

        _ViewList_ID.Canonical.hash(into:)();
      }

      MEMORY[0x18D00F6F0](*&v14[24]);
      return outlined destroy of NavigationLinkSelectionIdentifier(&v12);
    }

    else
    {
      return MEMORY[0x18D00F6F0](0);
    }
  }

  else
  {
    v12 = v15;
    v13 = v16;
    *v14 = v17;
    MEMORY[0x18D00F6F0](1);
    AnyHashable.hash(into:)();
    return outlined destroy of AnyHashable(&v12);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NavigationStackViewSource()
{
  Hasher.init(_seed:)();
  NavigationStackViewSource.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NavigationStackViewSource(uint64_t a1)
{
  Hasher.init(_seed:)();
  NavigationStackViewSource.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type NavigationStackViewSource and conformance NavigationStackViewSource()
{
  result = lazy protocol witness table cache variable for type NavigationStackViewSource and conformance NavigationStackViewSource;
  if (!lazy protocol witness table cache variable for type NavigationStackViewSource and conformance NavigationStackViewSource)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationStackViewSource, &type metadata for NavigationStackViewSource, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackViewSource and conformance NavigationStackViewSource);
  }

  return result;
}

uint64_t specialized static NavigationStackViewSource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of NavigationStackViewSource(a1, v13);
  outlined init with copy of NavigationStackViewSource(a2, &v15);
  if (!v14)
  {
    outlined init with copy of NavigationStackViewSource(v13, v12);
    if (!v19)
    {
      v8 = v15;
      v9 = v16;
      v10.i64[0] = v17.i64[0];
      v3 = MEMORY[0x18D00E7E0](v12, &v8);
      outlined destroy of AnyHashable(&v8);
      outlined destroy of AnyHashable(v12);
      goto LABEL_16;
    }

    outlined destroy of AnyHashable(v12);
    goto LABEL_14;
  }

  if (v14 == 1)
  {
    outlined init with copy of NavigationStackViewSource(v13, v12);
    if (v19 == 1)
    {
      v8 = v15;
      v9 = v16;
      v10 = v17;
      v11 = v18;
      v3 = specialized static NavigationLinkSelectionIdentifier.== infix(_:_:)(v12, &v8);
      outlined destroy of NavigationLinkSelectionIdentifier(&v8);
      outlined destroy of NavigationLinkSelectionIdentifier(v12);
LABEL_16:
      outlined destroy of NavigationStackViewSource(v13);
      return v3 & 1;
    }

    outlined destroy of NavigationLinkSelectionIdentifier(v12);
    goto LABEL_14;
  }

  v4 = vorrq_s8(vorrq_s8(v15, v17), vorrq_s8(v16, v18));
  v5 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  if (v19 != 2 || *&v5 != 0)
  {
LABEL_14:
    outlined destroy of (NavigationStackViewSource, NavigationStackViewSource)(v13);
    v3 = 0;
    return v3 & 1;
  }

  outlined destroy of NavigationStackViewSource(v13);
  v3 = 1;
  return v3 & 1;
}

uint64_t outlined destroy of (NavigationStackViewSource, NavigationStackViewSource)(uint64_t a1)
{
  type metadata accessor for (NavigationStackViewSource, NavigationStackViewSource)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (NavigationStackViewSource, NavigationStackViewSource)()
{
  if (!lazy cache variable for type metadata for (NavigationStackViewSource, NavigationStackViewSource))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (NavigationStackViewSource, NavigationStackViewSource));
    }
  }
}

uint64_t static DefaultListStyle._makeView<A>(value:inputs:)(int *a1, uint64_t a2, ValueMetadata *a3, _UNKNOWN **a4)
{
  v6 = *a1;
  v7 = *(a2 + 48);
  v31[2] = *(a2 + 32);
  v31[3] = v7;
  v31[4] = *(a2 + 64);
  v32 = *(a2 + 80);
  v8 = *(a2 + 16);
  v31[0] = *a2;
  v31[1] = v8;
  v27 = a3;
  v28 = &type metadata for ListStyleContent;
  v29 = a4;
  v30 = &protocol witness table for ListStyleContent;
  v9 = type metadata accessor for List(255, &v27);
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>(255);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>(255);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>(255);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>(255);
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>(255);
  v14 = type metadata accessor for ModifiedContent();
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<PlainListStyle>, &type metadata for PlainListStyle, &protocol witness table for PlainListStyle, type metadata accessor for ListStyleWriter);
  v15 = type metadata accessor for ModifiedContent();
  v26 = v6;
  v27 = &type metadata for DefaultListStyle;
  v28 = a3;
  v29 = &protocol witness table for DefaultListStyle;
  v30 = a4;
  type metadata accessor for _ListValue(255, &v27);
  type metadata accessor for _GraphValue();
  LODWORD(v27) = _GraphValue.value.getter();
  v17 = type metadata accessor for DefaultListStyle.Body(0, a3, a4, v16);
  swift_getWitnessTable(protocol conformance descriptor for DefaultListStyle.Body<A>, v17);
  _GraphValue.init<A>(_:)();
  v25[0] = swift_getWitnessTable(protocol conformance descriptor for List<A, B>, v9);
  v25[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  v18 = MEMORY[0x1E697E858];
  v24[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v10, v25);
  v24[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v23[0] = swift_getWitnessTable(v18, v11, v24);
  v23[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v22[0] = swift_getWitnessTable(v18, v12, v23);
  v22[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v21[0] = swift_getWitnessTable(v18, v13, v22);
  v21[1] = lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  v20[0] = swift_getWitnessTable(v18, v14, v21);
  v20[1] = &protocol witness table for ListStyleWriter<A>;
  swift_getWitnessTable(v18, v15, v20);
  return static View.makeDebuggableView(view:inputs:)();
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<InsetGroupedListStyle>, &type metadata for InsetGroupedListStyle, &protocol witness table for InsetGroupedListStyle, type metadata accessor for ListStyleWriter);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = a3();
    v7[1] = &protocol witness table for ListStyleWriter<A>;
    v7[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v6, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC38], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DefaultListStyle.Body<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v6[0] = *(a1 + 16);
  v6[1] = &type metadata for ListStyleContent;
  v6[2] = v3;
  v6[3] = &protocol witness table for ListStyleContent;
  type metadata accessor for List(255, v6);
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ListStyleWriter<MultimodalListStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, ListStyleWriter<InlineListStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarStyleContext>, ListStyleWriter<SidebarListStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ContentListStyleContext>, ListStyleWriter<InsetListStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>(255);
  type metadata accessor for ModifiedContent();
  _s7SwiftUI23InterfaceIdiomPredicateVyAA018ClarityUIInterfaceD0VGMaTm_0(255, &lazy cache variable for type metadata for ListStyleWriter<PlainListStyle>, &type metadata for PlainListStyle, &protocol witness table for PlainListStyle, type metadata accessor for ListStyleWriter);
  v4 = type metadata accessor for ModifiedContent();
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

double outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 >> 1 != 0xFFFFFFFF)
  {
    return outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(result, a2, a3, a4, a5);
  }

  return v6;
}

double outlined copy of ResolvedSubviewsSizingOptions.UniformSizeSource(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance SubviewSizingHandlingForUniform@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x1FFFFFFFALL;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void *initializeBufferWithCopyOfBuffer for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 12);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 100) = *(a2 + 25);
    swift_unknownObjectWeakCopyInit();
    v8 = a3[28];
    v9 = v4 + v8;
    v10 = a2 + v8;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = type metadata accessor for CollectionViewListDataSource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
    v15 = *(v14 - 1);
    if ((*(v15 + 48))(v10, 1, v14))
    {
      v16 = type metadata accessor for Optional();
      memcpy(v9, v10, *(*(v16 - 8) + 64));
LABEL_14:
      v36 = a3[30];
      *(v4 + a3[29]) = *(a2 + a3[29]);
      v37 = *(a2 + v36);
      *(v4 + v36) = v37;

      v38 = v37;
      return v4;
    }

    v43 = v15;
    v18 = *(v10 + 24);
    *(v9 + 24) = v18;
    (**(v18 - 8))(v9, v10);
    v19 = *(v10 + 6);
    *(v9 + 5) = *(v10 + 5);
    *(v9 + 6) = v19;
    v20 = *(v10 + 8);
    *(v9 + 7) = *(v10 + 7);
    *(v9 + 8) = v20;
    v41 = *(v10 + 10);
    *(v9 + 9) = *(v10 + 9);
    *(v9 + 10) = v41;
    v42 = v14[9];
    v21 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v40 = *(*(v21 - 8) + 16);
    v22 = v19;

    v40(&v9[v42], &v10[v42], v21);
    v23 = v14[10];
    v24 = &v9[v23];
    v25 = &v10[v23];
    v26 = *&v10[v23 + 8];
    if (v26)
    {
      if (v26 == 1)
      {
        v27 = *(v25 + 3);
        *(v24 + 2) = *(v25 + 2);
        *(v24 + 3) = v27;
        *(v24 + 63) = *(v25 + 63);
        v28 = *(v25 + 1);
        *v24 = *v25;
        *(v24 + 1) = v28;
LABEL_13:
        v31 = v14[11];
        v32 = &v9[v31];
        v33 = &v10[v31];
        v34 = *(v33 + 1);
        *v32 = *v33;
        *(v32 + 1) = v34;
        v9[v14[12]] = v10[v14[12]];
        *&v9[v14[13]] = *&v10[v14[13]];
        *&v9[v14[14]] = *&v10[v14[14]];
        v35 = *(v43 + 56);

        v35(v9, 0, 1, v14);
        goto LABEL_14;
      }

      *v24 = *v25;
      *(v24 + 1) = v26;
      *(v24 + 2) = *(v25 + 2);

      v29 = v25[64];
      if ((v29 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *v24 = *v25;
      *(v24 + 2) = *(v25 + 2);
      v29 = v25[64];
      if ((v29 & 1) == 0)
      {
LABEL_11:
        v30 = *(v25 + 3);
        *(v24 + 3) = v30;
        (**(v30 - 8))((v24 + 24), (v25 + 24));
        goto LABEL_12;
      }
    }

    *(v24 + 3) = *(v25 + 3);

LABEL_12:
    v24[64] = v29;
    *(v24 + 65) = *(v25 + 65);
    goto LABEL_13;
  }

  v17 = *a2;
  *v4 = *a2;
  v4 = (v17 + ((v5 + 16) & ~v5));

  return v4;
}

_DWORD *assignWithCopy for UpdateCollectionViewListCoordinator(_DWORD *a1, _DWORD *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  a1[11] = a2[11];
  a1[12] = a2[12];
  a1[13] = a2[13];
  a1[14] = a2[14];
  a1[15] = a2[15];
  a1[16] = a2[16];
  a1[17] = a2[17];
  a1[18] = a2[18];
  a1[19] = a2[19];
  a1[20] = a2[20];
  a1[21] = a2[21];
  a1[22] = a2[22];
  a1[23] = a2[23];
  a1[24] = a2[24];
  a1[25] = a2[25];
  swift_unknownObjectWeakCopyAssign();
  v6 = a3[28];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for CollectionViewListDataSource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v13 = *(v12 - 1);
  v14 = *(v13 + 48);
  v15 = v14(v7, 1, v12);
  v16 = v14(v8, 1, v12);
  if (!v15)
  {
    if (v16)
    {
      (*(v13 + 8))(v7, v12);
      goto LABEL_8;
    }

    __swift_assign_boxed_opaque_existential_1(v7, v8);
    *(v7 + 10) = *(v8 + 10);
    *(v7 + 11) = *(v8 + 11);
    v29 = v8[6];
    v30 = v7[6];
    v7[6] = v29;
    v31 = v29;

    v7[7] = v8[7];

    v7[8] = v8[8];

    v7[9] = v8[9];

    v7[10] = v8[10];

    v32 = v12[9];
    v33 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    (*(*(v33 - 8) + 24))(v7 + v32, v8 + v32, v33);
    v34 = v12[10];
    v35 = v7 + v34;
    v36 = v8 + v34;
    v37 = *(v7 + v34 + 8);
    v38 = *(v8 + v34 + 8);
    if (v37 == 1)
    {
      if (v38)
      {
        if (v38 == 1)
        {
          *v35 = *v36;
          v39 = *(v36 + 1);
          v40 = *(v36 + 2);
          v41 = *(v36 + 3);
          *(v35 + 63) = *(v36 + 63);
          *(v35 + 32) = v40;
          *(v35 + 48) = v41;
          *(v35 + 16) = v39;
LABEL_38:
          v58 = v12[11];
          v59 = v7 + v58;
          v60 = v8 + v58;
          *(v7 + v58) = *(v8 + v58);

          *(v59 + 1) = *(v60 + 1);

          *(v7 + v12[12]) = *(v8 + v12[12]);
          *(v7 + v12[13]) = *(v8 + v12[13]);
          *(v7 + v12[14]) = *(v8 + v12[14]);
          goto LABEL_39;
        }

        *v35 = *v36;
        *(v35 + 8) = *(v36 + 1);
        *(v35 + 16) = *(v36 + 2);

        v53 = v36[64];
        if ((v53 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v52 = *v36;
        *(v35 + 16) = *(v36 + 2);
        *v35 = v52;
        v53 = v36[64];
        if ((v53 & 1) == 0)
        {
LABEL_28:
          v54 = *(v36 + 6);
          *(v35 + 48) = v54;
          *(v35 + 56) = *(v36 + 7);
          (**(v54 - 8))(v35 + 24, (v36 + 24));
          *(v35 + 64) = v53;
          goto LABEL_37;
        }
      }

      *(v35 + 24) = *(v36 + 3);

      *(v35 + 64) = v53;
    }

    else
    {
      if (v38 == 1)
      {
        outlined destroy of TableHeaderView(v35);
        *v35 = *v36;
        v50 = *(v36 + 2);
        v49 = *(v36 + 3);
        v51 = *(v36 + 1);
        *(v35 + 63) = *(v36 + 63);
        *(v35 + 32) = v50;
        *(v35 + 48) = v49;
        *(v35 + 16) = v51;
        goto LABEL_38;
      }

      if (v37)
      {
        if (v38)
        {
          *v35 = *v36;

          *(v35 + 8) = *(v36 + 1);

          *(v35 + 16) = *(v36 + 2);
        }

        else
        {
          outlined destroy of Binding<[SwiftUIAnySortComparator]>(v35);
          v55 = *(v36 + 2);
          *v35 = *v36;
          *(v35 + 16) = v55;
        }
      }

      else if (v38)
      {
        *v35 = *v36;
        *(v35 + 8) = *(v36 + 1);
        *(v35 + 16) = *(v36 + 2);
      }

      else
      {
        v56 = *v36;
        *(v35 + 16) = *(v36 + 2);
        *v35 = v56;
      }

      if (a1 != a2)
      {
        outlined destroy of TableColumnCollection.Backing(v35 + 24);
        if (v36[64])
        {
          *(v35 + 24) = *(v36 + 3);
          *(v35 + 64) = 1;
        }

        else
        {
          v57 = *(v36 + 6);
          *(v35 + 48) = v57;
          *(v35 + 56) = *(v36 + 7);
          (**(v57 - 8))(v35 + 24, (v36 + 24));
          *(v35 + 64) = 0;
        }
      }
    }

LABEL_37:
    *(v35 + 65) = v36[65];
    *(v35 + 66) = v36[66];
    goto LABEL_38;
  }

  if (!v16)
  {
    v69 = a3;
    v17 = v8[3];
    v7[3] = v17;
    v7[4] = v8[4];
    (**(v17 - 8))(v7, v8);
    v7[5] = v8[5];
    v18 = v8[6];
    v7[6] = v18;
    v7[7] = v8[7];
    v7[8] = v8[8];
    v7[9] = v8[9];
    v7[10] = v8[10];
    v67 = v12[9];
    v19 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    v66 = *(*(v19 - 8) + 16);
    v20 = v18;

    v66(v7 + v67, v8 + v67, v19);
    v68 = v12;
    v21 = v12[10];
    v22 = v7 + v21;
    v23 = v8 + v21;
    v24 = *(v8 + v21 + 8);
    if (v24)
    {
      if (v24 == 1)
      {
        *v22 = *v23;
        v25 = *(v23 + 1);
        v26 = *(v23 + 2);
        v27 = *(v23 + 3);
        *(v22 + 63) = *(v23 + 63);
        *(v22 + 2) = v26;
        *(v22 + 3) = v27;
        *(v22 + 1) = v25;
        a3 = v69;
LABEL_19:
        v45 = v68[11];
        v46 = v7 + v45;
        v47 = v8 + v45;
        *v46 = *v47;
        *(v46 + 1) = *(v47 + 1);
        *(v7 + v68[12]) = *(v8 + v68[12]);
        *(v7 + v68[13]) = *(v8 + v68[13]);
        *(v7 + v68[14]) = *(v8 + v68[14]);
        v48 = *(v13 + 56);

        v48(v7, 0, 1, v68);
        goto LABEL_39;
      }

      *v22 = *v23;
      *(v22 + 1) = *(v23 + 1);
      *(v22 + 2) = *(v23 + 2);
    }

    else
    {
      v42 = *v23;
      *(v22 + 2) = *(v23 + 2);
      *v22 = v42;
    }

    a3 = v69;
    v43 = v23[64];
    if (v43)
    {
      *(v22 + 3) = *(v23 + 3);
    }

    else
    {
      v44 = *(v23 + 6);
      *(v22 + 6) = v44;
      *(v22 + 7) = *(v23 + 7);
      (**(v44 - 8))((v22 + 24), (v23 + 24));
    }

    v22[64] = v43;
    v22[65] = v23[65];
    v22[66] = v23[66];
    goto LABEL_19;
  }

LABEL_8:
  v28 = type metadata accessor for Optional();
  memcpy(v7, v8, *(*(v28 - 8) + 64));
LABEL_39:
  *(a1 + a3[29]) = *(a2 + a3[29]);

  v61 = a3[30];
  v62 = *(a2 + v61);
  v63 = *(a1 + v61);
  *(a1 + v61) = v62;
  v64 = v62;

  return a1;
}

uint64_t initializeWithTake for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 100) = *(a2 + 100);
  swift_unknownObjectWeakTakeInit();
  v7 = a3[28];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for CollectionViewListDataSource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 1);
  if ((*(v14 + 48))(v9, 1, v13))
  {
    v15 = type metadata accessor for Optional();
    memcpy(v8, v9, *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = v9[3];
    v8[2] = v9[2];
    v8[3] = v16;
    v8[4] = v9[4];
    *(v8 + 10) = *(v9 + 10);
    v17 = v9[1];
    *v8 = *v9;
    v8[1] = v17;
    v18 = v13[9];
    v19 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    (*(*(v19 - 8) + 32))(v8 + v18, v9 + v18, v19);
    v20 = v13[10];
    v21 = v8 + v20;
    v22 = v9 + v20;
    v23 = *(v22 + 3);
    *(v21 + 2) = *(v22 + 2);
    *(v21 + 3) = v23;
    *(v21 + 63) = *(v22 + 63);
    v24 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v24;
    *(v8 + v13[11]) = *(v9 + v13[11]);
    *(v8 + v13[12]) = *(v9 + v13[12]);
    *(v8 + v13[13]) = *(v9 + v13[13]);
    *(v8 + v13[14]) = *(v9 + v13[14]);
    (*(v14 + 56))(v8, 0, 1, v13);
  }

  v25 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v25) = *(a2 + v25);
  return a1;
}

uint64_t assignWithTake for UpdateCollectionViewListCoordinator(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  *(a1 + 96) = *(a2 + 96);
  swift_unknownObjectWeakTakeAssign();
  v9 = a3[28];
  v10 = a1 + v9;
  v11 = a2 + v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for CollectionViewListDataSource(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v16 = *(v15 - 1);
  v17 = *(v16 + 48);
  v18 = v17(v10, 1, v15);
  v19 = v17(v11, 1, v15);
  if (!v18)
  {
    if (v19)
    {
      (*(v16 + 8))(v10, v15);
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1(v10);
    v33 = *(v11 + 16);
    *v10 = *v11;
    *(v10 + 16) = v33;
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 40) = *(v11 + 40);
    v34 = *(v10 + 48);
    *(v10 + 48) = *(v11 + 48);

    *(v10 + 56) = *(v11 + 56);

    *(v10 + 64) = *(v11 + 64);

    *(v10 + 72) = *(v11 + 72);

    *(v10 + 80) = *(v11 + 80);

    v35 = v15[9];
    v36 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
    (*(*(v36 - 8) + 40))(v10 + v35, v11 + v35, v36);
    v37 = v15[10];
    v38 = v10 + v37;
    v39 = v11 + v37;
    v40 = *(v10 + v37 + 8);
    if (v40 == 1)
    {
      goto LABEL_11;
    }

    v41 = *(v39 + 8);
    if (v41 == 1)
    {
      outlined destroy of TableHeaderView(v38);
LABEL_11:
      v42 = *(v39 + 48);
      *(v38 + 32) = *(v39 + 32);
      *(v38 + 48) = v42;
      *(v38 + 63) = *(v39 + 63);
      v43 = *(v39 + 16);
      *v38 = *v39;
      *(v38 + 16) = v43;
LABEL_20:
      v44 = v15[11];
      v45 = v10 + v44;
      v46 = v11 + v44;
      *(v10 + v44) = *(v11 + v44);

      *(v45 + 8) = *(v46 + 8);

      *(v10 + v15[12]) = *(v11 + v15[12]);
      *(v10 + v15[13]) = *(v11 + v15[13]);
      *(v10 + v15[14]) = *(v11 + v15[14]);
      goto LABEL_7;
    }

    if (v40)
    {
      if (v41)
      {
        *v38 = *v39;

        *(v38 + 8) = *(v39 + 8);

        *(v38 + 16) = *(v39 + 16);

LABEL_17:
        if (a1 != a2)
        {
          outlined destroy of TableColumnCollection.Backing(v38 + 24);
          *(v38 + 24) = *(v39 + 24);
          *(v38 + 40) = *(v39 + 40);
          *(v38 + 49) = *(v39 + 49);
        }

        *(v38 + 65) = *(v39 + 65);
        *(v38 + 66) = *(v39 + 66);
        goto LABEL_20;
      }

      outlined destroy of Binding<[SwiftUIAnySortComparator]>(v38);
    }

    *v38 = *v39;
    *(v38 + 16) = *(v39 + 16);
    goto LABEL_17;
  }

  if (v19)
  {
LABEL_6:
    v29 = type metadata accessor for Optional();
    memcpy(v10, v11, *(*(v29 - 8) + 64));
    goto LABEL_7;
  }

  v20 = *(v11 + 48);
  *(v10 + 32) = *(v11 + 32);
  *(v10 + 48) = v20;
  *(v10 + 64) = *(v11 + 64);
  *(v10 + 80) = *(v11 + 80);
  v21 = *(v11 + 16);
  *v10 = *v11;
  *(v10 + 16) = v21;
  v22 = v15[9];
  v23 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  (*(*(v23 - 8) + 32))(v10 + v22, v11 + v22, v23);
  v24 = v15[10];
  v25 = v10 + v24;
  v26 = v11 + v24;
  v27 = *(v26 + 48);
  *(v25 + 32) = *(v26 + 32);
  *(v25 + 48) = v27;
  *(v25 + 63) = *(v26 + 63);
  v28 = *(v26 + 16);
  *v25 = *v26;
  *(v25 + 16) = v28;
  *(v10 + v15[11]) = *(v11 + v15[11]);
  *(v10 + v15[12]) = *(v11 + v15[12]);
  *(v10 + v15[13]) = *(v11 + v15[13]);
  *(v10 + v15[14]) = *(v11 + v15[14]);
  (*(v16 + 56))(v10, 0, 1, v15);
LABEL_7:
  *(a1 + a3[29]) = *(a2 + a3[29]);

  v30 = a3[30];
  v31 = *(a1 + v30);
  *(a1 + v30) = *(a2 + v30);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for CollectionViewListRoot(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = *(a3 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = v8 + v11;
  v17 = *(v10 + 64) + 7;
  v18 = v15 | *(v7 + 80) & 0xF8 | v11;
  if (v18 > 7 || ((*(v13 + 80) | *(v10 + 80) | *(v7 + 80)) & 0x100000) != 0 || ((((v15 + 16) & ~v15) + *(v13 + 64) + ((((((v17 + (v16 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v15 | 7) + 8) & ~(v15 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 65 > 0x18)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = (v21 + (((v18 | 7) + 16) & ~(v18 | 7)));
  }

  else
  {
    v45 = *(v12 - 8);
    __n = ((v15 + 16) & ~v15) + *(v13 + 64);
    v47 = v12;
    v22 = ~v11;
    (*(v7 + 16))(a1, a2, v6);
    v23 = (a2 + v16) & v22;
    (*(v10 + 16))((a1 + v16) & v22, v23, v9);
    v24 = ((v17 + ((a1 + v16) & v22)) & 0xFFFFFFFFFFFFFFF8);
    v25 = ((v17 + v23) & 0xFFFFFFFFFFFFFFF8);
    v26 = v25 + 15;
    v28 = *v25;
    v27 = v25 + 23;
    v29 = v24 + 15;
    *v24 = v28;
    v30 = v24 + 23;
    *(v29 & 0xFFFFFFFFFFFFFFF8) = *(v26 & 0xFFFFFFFFFFFFFFF8);
    v31 = (((v27 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v14 & 0x80000000) != 0)
    {
      v35 = v45;
      v34 = v47;
      v33 = (*(v45 + 48))(v31 + 1, v14, v47);
    }

    else
    {
      v32 = *v31;
      if (*v31 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      v33 = v32 + 1;
      v34 = v47;
      v35 = v45;
    }

    v36 = (v30 & 0xFFFFFFFFFFFFFFF8);
    if (v33)
    {
      memcpy(v36, (v27 & 0xFFFFFFFFFFFFFFF8), __n);
    }

    else
    {
      *v36 = *(v27 & 0xFFFFFFFFFFFFFFF8);
      v37 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v37 = *v31;
      v38 = *(v35 + 16);

      v38(v37 + 1, v31 + 1, v34);
    }

    v39 = (v30 + __n) & 0xFFFFFFFFFFFFFFF8;
    v40 = (v27 + __n) & 0xFFFFFFFFFFFFFFF8;
    *v39 = *v40;
    v41 = *(v40 + 16);
    v42 = *(v40 + 32);
    v43 = *(v40 + 48);
    *(v39 + 64) = *(v40 + 64);
    *(v39 + 32) = v42;
    *(v39 + 48) = v43;
    *(v39 + 16) = v41;
  }

  return a1;
}

uint64_t initializeWithTake for CollectionViewListRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = v7 + v11;
  v13 = (v7 + v11 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 32))(v13, v14, v8);
  v15 = *(v10 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = *(a3 + 24);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v22 + 8;
  v24 = *(v21 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = ((v18 + v22 + 8) & v24);
  v26 = ((v19 + v22 + 8) & v24);
  v27 = ~v22;
  v28 = (v22 + 16) & ~v22;
  v29 = *(v21 + 64);
  v30 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v21 + 84) & 0x80000000) == 0)
  {
    v31 = *v30;
    if (*v30 >= 0xFFFFFFFF)
    {
      LODWORD(v31) = -1;
    }

    v32 = v28 + v29;
    if (v31 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v33 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v30;
    (*(v21 + 32))((v33 + v23) & v27, (v30 + v23) & v27, v20);
    goto LABEL_8;
  }

  v32 = v28 + v29;
  if (!(*(v21 + 48))((v30 + v23) & v27))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, v32);
LABEL_8:
  v34 = (v25 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v34 = *v35;
  v36 = *(v35 + 16);
  v37 = *(v35 + 32);
  v38 = *(v35 + 48);
  *(v34 + 64) = *(v35 + 64);
  *(v34 + 32) = v37;
  *(v34 + 48) = v38;
  *(v34 + 16) = v36;
  return a1;
}

uint64_t assignWithTake for CollectionViewListRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = (v7 + v11 + a1) & ~v11;
  v13 = (v7 + v11 + a2) & ~v11;
  (*(v9 + 40))(v12, v13, v8);
  v14 = *(v10 + 24) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = *(a3 + 24);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  v22 = *(v20 + 80);
  v23 = v22 + 8;
  v24 = *(v20 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v25 = ((v17 + v22 + 8) & v24);
  v26 = ((v18 + v22 + 8) & v24);
  v27 = ((v22 + 16) & ~v22) + *(v20 + 64);
  v28 = ((v25 + 15) & 0xFFFFFFFFFFFFFFF8);
  v48 = ~v22;
  if ((v21 & 0x80000000) != 0)
  {
    v47 = ((v22 + 16) & ~v22) + *(v20 + 64);
    v33 = *(v20 + 48);
    v46 = (v17 + v22 + 8) & v24;
    v34 = (v18 + v22 + 8) & v24;
    v35 = ~v22;
    v45 = v33((v28 + v23) & ~v22, v21, v19);
    v30 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = (v30 + v23) & v35;
    v26 = v34;
    v25 = v46;
    v37 = v21;
    v29 = v19;
    v32 = v33(v36, v37, v19);
    v27 = v47;
    if (!v45)
    {
LABEL_5:
      if (!v32)
      {
        *v25 = *v26;

        *v28 = *v30;

        (*(v20 + 40))((v28 + v23) & v48, (v30 + v23) & v48, v29);
        goto LABEL_12;
      }

      (*(v20 + 8))((v28 + v23) & v48, v29);
      goto LABEL_9;
    }
  }

  else
  {
    v29 = v19;
    v30 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = *v30;
    if (*v30 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v31) = -1;
    }

    v32 = v31 + 1;
    if (*v28 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v32)
  {
    *v25 = *v26;
    *v28 = *v30;
    (*(v20 + 32))((v28 + v23) & v48, (v30 + v23) & v48, v29);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v25, v26, v27);
LABEL_12:
  v38 = (v25 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v26 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v38 = *v39;
  v40 = *(v39 + 8);
  *(v38 + 16) = *(v39 + 16);
  *(v38 + 8) = v40;
  v41 = *(v39 + 24);
  *(v38 + 32) = *(v39 + 32);
  *(v38 + 24) = v41;
  v42 = *(v39 + 40);
  *(v38 + 48) = *(v39 + 48);
  *(v38 + 40) = v42;
  v43 = *(v39 + 56);
  *(v38 + 64) = *(v39 + 64);
  *(v38 + 56) = v43;
  return a1;
}

uint64_t getEnumTagSinglePayload for CollectionViewListRoot(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 84);
  v15 = *(v10 + 80);
  v16 = *(v13 + 80);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = v17 - 1;
  if (v18 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v16 | 7;
  v21 = *(v7 + 64) + v15;
  v22 = *(*(v9 - 8) + 64) + 7;
  if (v19 >= a2)
  {
    goto LABEL_34;
  }

  v23 = ((*(v13 + 64) - ((-17 - v16) | v16) - ((-9 - v20 - ((((v22 + (v21 & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) | v20) + 5) & 0xFFFFFFFFFFFFFFF8) + 65;
  if (v23 <= 3)
  {
    v24 = ((a2 - v19 + 255) >> 8) + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = *&a1[v23];
      if (!*&a1[v23])
      {
        goto LABEL_34;
      }
    }

    else
    {
      v27 = *&a1[v23];
      if (!v27)
      {
        goto LABEL_34;
      }
    }

LABEL_30:
    v29 = (v27 - 1) << (8 * v23);
    if (v23 <= 3)
    {
      v30 = *a1;
    }

    else
    {
      v29 = 0;
      v30 = *a1;
    }

    return v19 + (v30 | v29) + 1;
  }

  if (v26)
  {
    v27 = a1[v23];
    if (a1[v23])
    {
      goto LABEL_30;
    }
  }

LABEL_34:
  if (v8 == v19)
  {
    v31 = *(v7 + 48);

    return v31(a1, v8, v6);
  }

  else
  {
    v32 = &a1[v21] & ~v15;
    if (v11 == v19)
    {
      v33 = *(v10 + 48);

      return v33(v32, v11, v9);
    }

    else
    {
      v34 = ((((v16 + 8 + ((((v22 + v32) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v36 = (*(v13 + 48))((v34 + v16 + 8) & ~v16);
      }

      else
      {
        v35 = *v34;
        if (*v34 >= 0xFFFFFFFF)
        {
          LODWORD(v35) = -1;
        }

        v36 = v35 + 1;
      }

      if (v36 >= 2)
      {
        return v36 - 1;
      }

      else
      {
        return 0;
      }
    }
  }
}

void storeEnumTagSinglePayload for CollectionViewListRoot(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(a4 + 24) - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 64);
  v18 = *(v12 + 80);
  v19 = *(*(v11 - 8) + 64);
  if (v16 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = *(v15 + 84);
  }

  if (v20 - 1 <= v14)
  {
    v21 = v14;
  }

  else
  {
    v21 = v20 - 1;
  }

  v22 = *(v15 + 80);
  v23 = *(v15 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v24 = ((v22 + 16) & ~v22) + *(v15 + 64);
  v25 = v17 + v18;
  v26 = v19 + 7;
  v27 = v22 + 8;
  v28 = ((v24 + ((v22 + 8 + ((((v19 + 7 + ((v17 + v18) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 65;
  if (v21 >= a3)
  {
    v31 = 0;
    if (v21 >= a2)
    {
      goto LABEL_23;
    }

LABEL_28:
    v32 = ~v21 + a2;
    bzero(a1, v28);
    if (v28 <= 3)
    {
      v33 = (v32 >> 8) + 1;
    }

    else
    {
      v33 = 1;
    }

    if (v28 <= 3)
    {
      *a1 = v32;
      if (v31 > 1)
      {
LABEL_33:
        if (v31 == 2)
        {
          *&a1[v28] = v33;
        }

        else
        {
          *&a1[v28] = v33;
        }

        return;
      }
    }

    else
    {
      *a1 = v32;
      if (v31 > 1)
      {
        goto LABEL_33;
      }
    }

    if (v31)
    {
      a1[v28] = v33;
    }

    return;
  }

  if (v28 <= 3)
  {
    v29 = ((a3 - v21 + 255) >> 8) + 1;
  }

  else
  {
    v29 = 2;
  }

  if (v29 >= 0x10000)
  {
    v30 = 4;
  }

  else
  {
    v30 = 2;
  }

  if (v29 < 0x100)
  {
    v30 = 1;
  }

  if (v29 >= 2)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  if (v21 < a2)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (v31 <= 1)
  {
    if (v31)
    {
      a1[v28] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (v31 == 2)
  {
    *&a1[v28] = 0;
    goto LABEL_37;
  }

  *&a1[v28] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v10 == v21)
  {
    v34 = *(v9 + 56);
    v35 = a1;
    v36 = a2;
    v37 = v10;
    v38 = v8;
LABEL_45:

    v34(v35, v36, v37, v38);
    return;
  }

  v39 = &a1[v25] & ~v18;
  if (v13 == v21)
  {
    v34 = *(v12 + 56);
    v38 = v11;
    v35 = v39;
    v36 = a2;
    v37 = v13;
    goto LABEL_45;
  }

  v40 = ((v27 + ((((v26 + v39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v23);
  if (v20 - 1 >= a2)
  {
    if (a2 >= v20)
    {
      if (v24 <= 3)
      {
        v47 = ~(-1 << (8 * v24));
      }

      else
      {
        v47 = -1;
      }

      if (v24)
      {
        v42 = v47 & (a2 - v20);
        if (v24 <= 3)
        {
          v43 = v24;
        }

        else
        {
          v43 = 4;
        }

        bzero(v40, v24);
        if (v43 <= 2)
        {
          if (v43 == 1)
          {
            goto LABEL_61;
          }

          goto LABEL_75;
        }

LABEL_76:
        if (v43 == 3)
        {
          *v40 = v42;
          v40[2] = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }
    }

    else
    {
      v44 = (a2 + 1);
      v45 = ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v16 & 0x80000000) != 0)
      {
        v48 = *(v15 + 56);

        v48((v45 + v27) & ~v22, v44);
      }

      else
      {
        if ((v44 & 0x80000000) != 0)
        {
          v46 = (a2 - 0x7FFFFFFF);
        }

        else
        {
          v46 = a2;
        }

        *v45 = v46;
      }
    }
  }

  else
  {
    if (v24 <= 3)
    {
      v41 = ~(-1 << (8 * v24));
    }

    else
    {
      v41 = -1;
    }

    if (v24)
    {
      v42 = v41 & (a2 - v20);
      if (v24 <= 3)
      {
        v43 = v24;
      }

      else
      {
        v43 = 4;
      }

      bzero(v40, v24);
      if (v43 <= 2)
      {
        if (v43 == 1)
        {
LABEL_61:
          *v40 = v42;
          return;
        }

LABEL_75:
        *v40 = v42;
        return;
      }

      goto LABEL_76;
    }
  }
}

uint64_t closure #6 in UpdateCollectionViewListCoordinator.init<A>(viewList:view:inputs:scrollGeometry:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v10 = a4;
  *(&v10 + 1) = a3;
  *&v11 = a6;
  *(&v11 + 1) = a5;
  type metadata accessor for CollectionViewListRoot(255, &v10);
  type metadata accessor for _GraphValue();
  type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  _GraphValue.subscript.getter();
  type metadata accessor for ListTemplateRowWrapperView(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule();
  Attribute.init<A>(body:value:flags:update:)();
  v7 = a2[3];
  v12 = a2[2];
  v13 = v7;
  v14 = a2[4];
  v15 = *(a2 + 20);
  v8 = a2[1];
  v10 = *a2;
  v11 = v8;
  lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type ListTemplateRowWrapperView and conformance ListTemplateRowWrapperView, type metadata accessor for ListTemplateRowWrapperView, protocol conformance descriptor for ListTemplateRowWrapperView);
  return static View.makeDebuggableView(view:inputs:)();
}

Swift::Void __swiftcall UpdateCollectionViewListCoordinator.destroy()()
{
  v2 = *(v0 + 116);

  *(v1 + v2) = 0;
}

unint64_t lazy protocol witness table accessor for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule()
{
  result = lazy protocol witness table cache variable for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule;
  if (!lazy protocol witness table cache variable for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListTemplateRowWrapperView.ViewRule, &type metadata for ListTemplateRowWrapperView.ViewRule, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListTemplateRowWrapperView.ViewRule and conformance ListTemplateRowWrapperView.ViewRule);
  }

  return result;
}

double outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource?(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(result, a2, a3, a4, a5);
  }

  return v5;
}

double outlined consume of ResolvedSubviewsSizingOptions.UniformSizeSource(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 62 == 1)
  {
  }

  else
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t HoverEventDispatcher.receiveEvents(_:manager:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x1E69E7CD0];
  }

  v6 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 16))(ObjectType, v6);
  swift_unknownObjectRelease();
  result = MEMORY[0x1E69E7CD0];
  if (v8)
  {
    v117 = MEMORY[0x1E69E7CD0];
    v10 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    v93 = a1;
    v94 = v2;
    for (i = a1 + 64; ; v10 = i)
    {
      if (!v13)
      {
        if (v14 <= v15 + 1)
        {
          v17 = v15 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        while (1)
        {
          v16 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v13 = 0;
            memset(v102, 0, 40);
            v15 = v18;
            v101 = 0u;
            goto LABEL_22;
          }

          v13 = *(v10 + 8 * v16);
          ++v15;
          if (v13)
          {
            v15 = v16;
            goto LABEL_21;
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
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v16 = v15;
LABEL_21:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(a1 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      outlined init with copy of _Benchmark(*(a1 + 56) + 40 * v20, &v98);
      *&v101 = v22;
      *(&v101 + 1) = v23;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v98, v102);
LABEL_22:
      v114 = v101;
      v115[0] = *v102;
      v115[1] = *&v102[16];
      v116 = *&v102[32];
      v24 = v101;
      if (!v101)
      {

        printEventBindings(_:)(v3->_rawValue);

        return v117;
      }

      v25 = *(&v114 + 1);
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v115, v111);
      v26._rawValue = v3->_rawValue;
      v97 = v25;
      if (*(v3->_rawValue + 2))
      {
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
        if (v28)
        {
          break;
        }
      }

      v39 = v112;
      v40 = v113;
      __swift_project_boxed_opaque_existential_1(v111, v112);
      (*(v40 + 8))(&v101, v39, v40);
      if (v101 != 2 && v101 != 3)
      {
        if (dispatch thunk of ResponderNode.bindEvent(_:)())
        {
          type metadata accessor for HoverResponder(0);
          ResponderNode.firstAncestor<A>(ofType:)();

          v41 = v101;
          if (v101)
          {
            outlined init with copy of _Benchmark(v111, v108);
            v42 = v109;
            v43 = v110;
            __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
            *&v101 = v41;
            v44 = *(v43 + 32);
            swift_retain_n();
            v44(&v101, v42, v43);
            outlined init with copy of _Benchmark(v108, v106);
            type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
            type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for HitTestableEventType, MEMORY[0x1E697FA00]);
            if (swift_dynamicCast())
            {
              outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v103, v107);
              outlined init with copy of _Benchmark(v107, &v101);
              HitTestableEvent.init(_:)();
              __swift_destroy_boxed_opaque_existential_1(v107);
              *&v102[25] = *&v100[9];
              *v102 = v99;
              *&v102[16] = *v100;
              v101 = v98;
              *&v100[9] = *&v102[25];
              HitTestableEvent.hitTestLocation.getter();
              v46 = v45;
              v48 = v47;
              outlined destroy of HitTestableEvent(&v101);
              specialized HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(0, v41, v46, v48);
            }

            else
            {

              v105 = 0;
              v103 = 0u;
              v104 = 0u;
              outlined destroy of HitTestableEventType?(&v103);
            }

            v3 = v94;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v101 = v94->_rawValue;
            v51 = v101;
            v52 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v97);
            v54 = *(v51 + 16);
            v55 = (v53 & 1) == 0;
            v56 = __OFADD__(v54, v55);
            v57 = v54 + v55;
            a1 = v93;
            if (v56)
            {
              goto LABEL_79;
            }

            v58 = v53;
            if (*(v51 + 24) >= v57)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v92 = v52;
                specialized _NativeDictionary.copy()();
                v52 = v92;
              }

              v59 = v97;
              v61 = v101;
              if (v58)
              {
                goto LABEL_45;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
              v59 = v97;
              v52 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v97);
              if ((v58 & 1) != (v60 & 1))
              {
                goto LABEL_81;
              }

              v61 = v101;
              if (v58)
              {
LABEL_45:
                *(v61[7] + 8 * v52) = v41;

                goto LABEL_51;
              }
            }

            v61[(v52 >> 6) + 8] |= 1 << v52;
            v62 = (v61[6] + 16 * v52);
            *v62 = v24;
            v62[1] = v59;
            *(v61[7] + 8 * v52) = v41;
            v63 = v61[2];
            v56 = __OFADD__(v63, 1);
            v64 = v63 + 1;
            if (v56)
            {
              goto LABEL_80;
            }

            v61[2] = v64;
LABEL_51:
            v94->_rawValue = v61;
            specialized Set._Variant.insert(_:)(&v101, v24, v59);
LABEL_9:

            __swift_destroy_boxed_opaque_existential_1(v108);
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v111);
    }

    v95 = v24;
    v29 = *(*(v26._rawValue + 7) + 8 * v27);
    outlined init with copy of _Benchmark(v111, v108);
    v30 = v109;
    v31 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v32 = *(v31 + 8);
    swift_retain_n();
    v32(&v101, v30, v31);
    if (v101 == 2 || v101 == 3)
    {
      outlined init with copy of _Benchmark(v108, v106);
      type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
      type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for HitTestableEventType, MEMORY[0x1E697FA00]);
      v33 = v29;
      if (swift_dynamicCast())
      {
        outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v103, v107);
        outlined init with copy of _Benchmark(v107, &v101);
        HitTestableEvent.init(_:)();
        __swift_destroy_boxed_opaque_existential_1(v107);
        *&v102[25] = *&v100[9];
        *v102 = v99;
        *&v102[16] = *v100;
        v101 = v98;
        *&v100[9] = *&v102[25];
        HitTestableEvent.hitTestLocation.getter();
        v35 = v34;
        v37 = v36;
        outlined destroy of HitTestableEvent(&v101);

        specialized HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(v38, 0, v35, v37);

        v33 = 0;
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (dispatch thunk of ResponderNode.bindEvent(_:)())
    {
      type metadata accessor for HoverResponder(0);
      ResponderNode.firstAncestor<A>(ofType:)();

      v49 = v101;
      if (v101)
      {
        if (v29 == v101)
        {
          v33 = v29;
          goto LABEL_54;
        }
      }
    }

    else
    {
      v49 = 0;
    }

    v33 = v49;
LABEL_54:
    outlined init with copy of _Benchmark(v108, v106);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for EventType, MEMORY[0x1E6981E78]);
    type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for HitTestableEventType, MEMORY[0x1E697FA00]);
    if (swift_dynamicCast())
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v103, v107);
      outlined init with copy of _Benchmark(v107, &v101);
      HitTestableEvent.init(_:)();
      __swift_destroy_boxed_opaque_existential_1(v107);
      *&v102[25] = *&v100[9];
      *v102 = v99;
      *&v102[16] = *v100;
      v101 = v98;
      *&v100[9] = *&v102[25];
      HitTestableEvent.hitTestLocation.getter();
      v66 = v65;
      v68 = v67;
      outlined destroy of HitTestableEvent(&v101);

      specialized HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(v29, v49, v66, v68);

      goto LABEL_58;
    }

LABEL_57:
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    outlined destroy of HitTestableEventType?(&v103);
LABEL_58:
    v70 = v109;
    v69 = v110;
    __swift_mutable_project_boxed_opaque_existential_1(v108, v109);
    *&v101 = v33;
    v71 = *(v69 + 32);

    v71(&v101, v70, v69);
    if (v33)
    {

      v3 = v94;
      v72 = swift_isUniquelyReferenced_nonNull_native();
      *&v101 = v94->_rawValue;
      v73 = v101;
      v74 = v95;
      v75 = v97;
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v97);
      v78 = *(v73 + 16);
      v79 = (v77 & 1) == 0;
      v56 = __OFADD__(v78, v79);
      v80 = v78 + v79;
      if (v56)
      {
        goto LABEL_77;
      }

      v81 = v77;
      if (*(v73 + 24) >= v80)
      {
        if ((v72 & 1) == 0)
        {
          v91 = v76;
          specialized _NativeDictionary.copy()();
          v76 = v91;
          v75 = v97;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v80, v72);
        v76 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v97);
        if ((v81 & 1) != (v82 & 1))
        {
          goto LABEL_81;
        }
      }

      a1 = v93;
      rawValue = v101;
      if (v81)
      {
        *(*(v101 + 56) + 8 * v76) = v33;
      }

      else
      {
        *(v101 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        v88 = (rawValue[6] + 16 * v76);
        *v88 = v95;
        v88[1] = v75;
        *(rawValue[7] + 8 * v76) = v33;
        v89 = rawValue[2];
        v56 = __OFADD__(v89, 1);
        v90 = v89 + 1;
        if (v56)
        {
          goto LABEL_78;
        }

        rawValue[2] = v90;
      }
    }

    else
    {
      v74 = v95;
      v75 = v97;
      v83 = specialized __RawDictionaryStorage.find<A>(_:)(v95, v97);
      a1 = v93;
      v3 = v94;
      if ((v84 & 1) == 0)
      {
        goto LABEL_8;
      }

      v85 = v83;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      rawValue = v94->_rawValue;
      *&v101 = v94->_rawValue;
      if (!v86)
      {
        specialized _NativeDictionary.copy()();
        rawValue = v101;
      }

      specialized _NativeDictionary._delete(at:)(v85, rawValue);
    }

    v3->_rawValue = rawValue;
LABEL_8:
    specialized Set._Variant.insert(_:)(&v101, v74, v75);

    goto LABEL_9;
  }

  return result;
}

unint64_t closure #3 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(unint64_t result, unint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return 0;
  }

  v5 = result;
  v6 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
  }

  else
  {
    v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = a2 >> 62;
  if (!(a2 >> 62))
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v5 & 0xFFFFFFFFFFFFFF8;
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = __CocoaSet.count.getter();
    v11 = result;
    if (!result)
    {
      goto LABEL_25;
    }

LABEL_14:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x18D00E9C0](0, v5);
      if (v7 < v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_40;
      }

      v2 = *(v5 + 32);

      if (v7 < v9)
      {
LABEL_17:
        result = v9 - v7;
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_74;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          goto LABEL_75;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v8 = a2 & 0xFFFFFFFFFFFFFF8;
          if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v12 = *(a2 + 8 * result + 32);

            if (v12 != v2)
            {
              goto LABEL_27;
            }

            return 0;
          }
        }

        __break(1u);
        goto LABEL_79;
      }
    }

    goto LABEL_25;
  }

  result = __CocoaSet.count.getter();
  v9 = result;
  v10 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = *(v10 + 16);
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_25:
  while (v8)
  {
    result = __CocoaSet.count.getter();
    v2 = result;
    if (result)
    {
      goto LABEL_30;
    }

LABEL_42:
    if (((v2 | v11) & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v13 = 0;
        v31 = a2 & 0xC000000000000001;
        v32 = v5 & 0xC000000000000001;
        v29 = a2 & 0xFFFFFFFFFFFFFF8;
        v30 = v5 & 0xFFFFFFFFFFFFFF8;
        v27 = a2;
        v28 = v5;
        v14 = v5 + 8 * v11 + 24;
        v15 = a2 + 8 * v2 + 24;
        v16 = MEMORY[0x1E69E7CC0];
        while (v11 >= v11 + v13)
        {
          if (!(v2 + v13))
          {
            goto LABEL_68;
          }

          if (v2 < v2 + v13)
          {
            goto LABEL_64;
          }

          v17 = v11 + v13 - 1;
          if (v32)
          {
            v18 = MEMORY[0x18D00E9C0](v11 + v13 - 1, v28);
          }

          else
          {
            if (v17 >= *(v30 + 16))
            {
              goto LABEL_65;
            }

            v18 = *(v14 + 8 * v13);
          }

          v19 = v2 + v13 - 1;
          if (v31)
          {
            v20 = MEMORY[0x18D00E9C0](v2 + v13 - 1, v27);
            swift_unknownObjectRelease();
          }

          else
          {
            if (v19 >= *(v29 + 16))
            {
              goto LABEL_66;
            }

            v20 = *(v15 + 8 * v13);
          }

          if (v18 == v20)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1);
            }

            v22 = *(v16 + 16);
            v21 = *(v16 + 24);
            if (v22 >= v21 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
            }

            *(v16 + 16) = v22 + 1;
            v23 = v16 + 16 * v22;
            *(v23 + 32) = v17;
            *(v23 + 40) = v19;
            --v13;
            if (v11 + v13)
            {
              continue;
            }
          }

          goto LABEL_68;
        }

        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }

      v16 = MEMORY[0x1E69E7CC0];
LABEL_68:
      v24 = *(v16 + 16);
      if (v24)
      {
        v25 = *(v16 + 16 + 16 * v24);
      }

      else
      {
        v25 = 0;
      }

      return v25;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    v26 = MEMORY[0x18D00E9C0](result, a2);

    result = swift_unknownObjectRelease();
    if (v26 == v2)
    {
      return 0;
    }
  }

  v8 = a2 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
  v2 = *(v8 + 16);
  if (!v2)
  {
    goto LABEL_42;
  }

LABEL_30:
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_40:
    v3 = MEMORY[0x18D00E9C0](0, a2);
    if (v9 < v7)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_73;
  }

  v3 = *(a2 + 32);

  if (v9 >= v7)
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_33:
  result = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    v8 = result;
    v7 = MEMORY[0x18D00E9C0]();

    result = swift_unknownObjectRelease();
    if (v7 == v3)
    {
      return v8;
    }

    goto LABEL_42;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_80;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (result >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_83;
    }

    v8 = v7 - v9;
    v7 = *(v5 + 8 * result + 32);

    if (v7 == v3)
    {
      return v8;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

void closure #6 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(uint64_t *a2@<X8>)
{
  type metadata accessor for HoverResponder(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
  }

  *a2 = v3;
}

BOOL closure #7 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(CGSize **a1, CGFloat a2, CGFloat a3)
{
  v7 = *a1;
  if (BYTE1((*a1)[30].width) != 1)
  {
    return 0;
  }

  v15 = v6;
  v16 = v5;
  v17 = v3;
  v18 = v4;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size = v7[18];
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v13 = 2;

  CGRect.convert(to:transform:)();
  outlined destroy of CoordinateSpace(v11);

  v19.x = a2;
  v19.y = a3;
  return CGRectContainsPoint(v14, v19);
}

void *protocol witness for ForwardedEventDispatcher.reset() in conformance HoverEventDispatcher()
{

  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v0 = result;
  return result;
}

void specialized _ArrayBuffer.subscript.getter(Swift::Int a1, Swift::Int a2, unint64_t a3)
{
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a1 != a2)
  {
    if (a1 >= a2)
    {
LABEL_14:
      __break(1u);
      return;
    }

    type metadata accessor for HoverResponder(0);

    v6 = a1;
    do
    {
      v7 = v6 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v6);
      v6 = v7;
    }

    while (a2 != v7);
  }

  else
  {
LABEL_4:
  }

  if (a3 >> 62)
  {

    _CocoaArrayWrapper.subscript.getter();
    return;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }
}

void specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    *a2 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t outlined destroy of HitTestableEventType?(uint64_t a1)
{
  type metadata accessor for HitTestableEventType?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for HitTestableEventType?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HitTestableEventType?)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for HitTestableEventType, MEMORY[0x1E697FA00]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HitTestableEventType?);
    }
  }
}

void specialized HoverEventDispatcher.dispatchNewAncestorsHoverCallbacks(oldHighestAncestor:newAncestors:point:)(uint64_t a1, unint64_t a2, double a3, double a4)
{
  if (!a2)
  {
    return;
  }

  v8 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_40;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while ((a2 & 0xC000000000000001) == 0)
    {
      v10 = 0;
      while (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != v10)
      {
        if (a1 && *(a2 + 32 + 8 * v10) == a1)
        {
          goto LABEL_21;
        }

        if (v9 == ++v10)
        {
          goto LABEL_10;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = MEMORY[0x18D00E9C0](v10, a2);
      swift_unknownObjectRelease();
      if (a1)
      {
        if (v11 == a1)
        {
          break;
        }
      }

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      ++v10;
      if (v12 == v9)
      {
        goto LABEL_10;
      }
    }

    if (v10 < 0)
    {
      goto LABEL_47;
    }

LABEL_21:
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_10:
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!v8)
    {
      v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
      v15 = *(v13 + 16);
      goto LABEL_25;
    }

    v14 = __CocoaSet.count.getter();
    if (v14 < 0)
    {
LABEL_48:
      __break(1u);
      return;
    }

    v10 = v14;
  }

  if (__CocoaSet.count.getter() < 0)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v15 = __CocoaSet.count.getter();
LABEL_25:
  if (v15 < v10)
  {
    __break(1u);
    goto LABEL_43;
  }

  specialized _ArrayBuffer.subscript.getter(0, v10, a2);
  v19 = v18 >> 1;
  if (v18 >> 1 == v17)
  {
LABEL_43:

    swift_unknownObjectRelease();
    return;
  }

  v20 = v16;
  v21 = v17;
  v22 = v18 >> 1;
  while (!__OFSUB__(v22--, 1))
  {
    if (v22 < v21 || v22 >= v19)
    {
      goto LABEL_35;
    }

    v24 = *(v20 + 8 * v22);
    if (*(v24 + 481) == 1)
    {
      v26 = *&a3;
      v27 = *&a4;
      swift_beginAccess();
      outlined init with copy of CoordinateSpace(v24 + 304, v25);
      type metadata accessor for CGPoint(0);

      ApplyViewTransform.convertGlobal(to:transform:)();

      outlined destroy of CoordinateSpace(v25);
      HoverResponder.updatePhase(_:)(v26, v27, 0);
    }

    if (v22 == v21)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_unknownObjectRelease();
}

void specialized HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  if (a1)
  {
    type metadata accessor for HoverResponder(0);
    ResponderNode.firstAncestor<A>(ofType:)();
    v7 = v81;
    if (!a2)
    {
      if (!v81)
      {
        return;
      }

      v8 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v7 = 0;
  }

  type metadata accessor for HoverResponder(0);
  ResponderNode.firstAncestor<A>(ofType:)();
  v9 = v81;
  if (!v7)
  {
    if (!v81)
    {
      return;
    }

    v15 = 0;
    v16 = 0;
    goto LABEL_45;
  }

  if (!v81 || v7 != v81)
  {
    v8 = v81;
LABEL_15:

    ResponderNode.sequence.getter();

    v17 = *v83;
    *&v77.origin.x = MEMORY[0x1E69E7CC0];
    *&v74 = v81;
    BYTE8(v74) = v82;

    if (v83[16])
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      (*v83)(&v80, &v74);
      if (*&v80.origin.x)
      {
        type metadata accessor for HoverResponder(0);
        v16 = MEMORY[0x1E69E7CC0];
        do
        {
          if (swift_dynamicCastClass())
          {
            MEMORY[0x18D00CC30]();
            if (*((*&v77.origin.x & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v77.origin.x & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v16 = *&v77.origin.x;
          }

          else
          {
          }

          v17(&v80, &v74);
        }

        while (*&v80.origin.x);
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }
    }

    if (!v8)
    {
      v33 = closure #3 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(v16, 0);
      v15 = v7;
      if (!v16)
      {
        goto LABEL_103;
      }

      v35 = v33;
      v9 = 0;
      goto LABEL_62;
    }

    v9 = v8;
    v15 = v7;
LABEL_45:

    ResponderNode.sequence.getter();

    v31 = *v83;
    v32 = v83[16];
    *&v77.origin.x = MEMORY[0x1E69E7CC0];
    *&v74 = v81;
    BYTE8(v74) = v82;

    if (v32)
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v31(&v80, &v74);
      if (*&v80.origin.x)
      {
        type metadata accessor for HoverResponder(0);
        v8 = MEMORY[0x1E69E7CC0];
        do
        {
          while (!swift_dynamicCastClass())
          {

            v31(&v80, &v74);
            if (!*&v80.origin.x)
            {
              goto LABEL_59;
            }
          }

          v73 = v9;
          MEMORY[0x18D00CC30]();
          if (*((*&v77.origin.x & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v77.origin.x & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v8 = *&v77.origin.x;
          v31(&v80, &v74);
          v9 = v73;
        }

        while (*&v80.origin.x);
      }

      else
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

LABEL_59:
    }

    v36 = closure #3 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:)(v16, v8);
    if (!v16)
    {
      v47 = 0;
      if (v8)
      {
        goto LABEL_109;
      }

      goto LABEL_103;
    }

    v35 = v36;
LABEL_62:
    v71 = v8;
    v72 = v15;
    v37 = v16 >> 62;
    v73 = v9;
    v70 = v16 >> 62;
    if (v34)
    {
      v38 = MEMORY[0x1E69E62F8];
      type metadata accessor for ArraySlice<HoverResponder>(0, &lazy cache variable for type metadata for [HoverResponder], MEMORY[0x1E69E62F8]);
      v40 = v39;
      *&v83[8] = v39;
      *&v83[16] = lazy protocol witness table accessor for type [HoverResponder] and conformance [A](&lazy protocol witness table cache variable for type [HoverResponder] and conformance [A], &lazy cache variable for type metadata for [HoverResponder], v38, MEMORY[0x1E69E6328]);
      v81 = v16;

      goto LABEL_83;
    }

    v41 = &lazy cache variable for type metadata for ArraySlice<HoverResponder>;
    v42 = MEMORY[0x1E69E6948];
    type metadata accessor for ArraySlice<HoverResponder>(0, &lazy cache variable for type metadata for ArraySlice<HoverResponder>, MEMORY[0x1E69E6948]);
    *&v83[8] = v43;
    *&v83[16] = lazy protocol witness table accessor for type [HoverResponder] and conformance [A](&lazy protocol witness table cache variable for type ArraySlice<HoverResponder> and conformance ArraySlice<A>, &lazy cache variable for type metadata for ArraySlice<HoverResponder>, v42, MEMORY[0x1E69E6968]);
    v44 = swift_allocObject();
    v81 = v44;
    if (v35 < 0)
    {
      __break(1u);
    }

    else
    {
      v41 = v44;
      if (!v37)
      {
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v35)
        {
          goto LABEL_67;
        }

        goto LABEL_115;
      }
    }

    if (__CocoaSet.count.getter() < 0)
    {
LABEL_116:
      __break(1u);
      return;
    }

    if (__CocoaSet.count.getter() >= v35)
    {
LABEL_67:
      if ((v16 & 0xC000000000000001) != 0)
      {
        if (v35)
        {
          type metadata accessor for HoverResponder(0);
          swift_bridgeObjectRetain_n();
          v45 = 0;
          do
          {
            v46 = v45 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v45);
            v45 = v46;
          }

          while (v35 != v46);
          if (v16 >> 62)
          {
            goto LABEL_81;
          }
        }

        else
        {
          swift_bridgeObjectRetain_n();
          if (v37)
          {
LABEL_81:

            v49 = _CocoaArrayWrapper.subscript.getter();
            v50 = v52;
            v48 = v53;
            v51 = v54;

            goto LABEL_82;
          }
        }
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      v48 = 0;
      v49 = v16 & 0xFFFFFFFFFFFFFF8;
      v50 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
      v51 = (2 * v35) | 1;
LABEL_82:
      v41[2] = v49;
      v41[3] = v50;
      v41[4] = v48;
      v41[5] = v51;
      v40 = *&v83[8];
LABEL_83:
      v55 = __swift_project_boxed_opaque_existential_1(&v81, v40);
      v56 = MEMORY[0x1EEE9AC00](v55);
      (*(v58 + 16))(&v69 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), v56);
      *(&v75 + 1) = swift_getAssociatedTypeWitness();
      *&v76 = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v74);
      dispatch thunk of Sequence.makeIterator()();
      __swift_mutable_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      dispatch thunk of IteratorProtocol.next()();
      for (i = v77.origin.x; *&v77.origin.x; i = v77.origin.x)
      {
        if (*(*&i + 480))
        {
        }

        else
        {
          v60 = *(*&i + 232);
          v62 = *(*&i + 216);
          v61 = *(*&i + 224);
          *(*&i + 464) = 0;
          *(*&i + 472) = 0;
          *(*&i + 480) = 1;
          LOBYTE(v77.origin.x) = 7;
          v63 = swift_allocObject();
          *(v63 + 16) = v62;
          *(v63 + 24) = v61;
          *(v63 + 32) = v60;
          *(v63 + 40) = 0;
          *(v63 + 48) = 0;
          *(v63 + 56) = 1;
          outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v62, v61);
          outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v62, v61);
          static Update.enqueueAction(reason:_:)();

          outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v62, v61);
        }

        __swift_mutable_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        dispatch thunk of IteratorProtocol.next()();
      }

      __swift_destroy_boxed_opaque_existential_1(&v74);
      __swift_destroy_boxed_opaque_existential_1(&v81);
      if (v71)
      {
        if (v70)
        {
          goto LABEL_106;
        }

        v64 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v64)
        {
          while (1)
          {
            v65 = 0;
            while ((v16 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x18D00E9C0](v65, v16);
              v66 = v65 + 1;
              if (__OFADD__(v65, 1))
              {
LABEL_102:
                __break(1u);
                goto LABEL_103;
              }

LABEL_97:
              if (*(v47 + 481) == 1)
              {
                v77.origin = 0uLL;
                v67 = *(v47 + 272);
                v77.size = *(v47 + 288);
                *&v76 = 0;
                v74 = 0u;
                v75 = 0u;
                BYTE8(v76) = 2;
                v68 = *(v47 + 248);
                v81 = *(v47 + 240);
                v82 = v68;
                *v83 = *(v47 + 256);
                *&v83[16] = v67;

                CGRect.convert(to:transform:)();

                outlined destroy of CoordinateSpace(&v74);
                v93.x = a3;
                v93.y = a4;
                if (CGRectContainsPoint(v77, v93))
                {

                  goto LABEL_108;
                }
              }

              ++v65;
              if (v66 == v64)
              {
                goto LABEL_107;
              }
            }

            if (v65 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            __break(1u);
LABEL_106:
            v64 = __CocoaSet.count.getter();
            if (!v64)
            {
              goto LABEL_107;
            }
          }

          v47 = *(v16 + 8 * v65 + 32);

          v66 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            goto LABEL_102;
          }

          goto LABEL_97;
        }

LABEL_107:

        v47 = 0;
LABEL_108:
        v8 = v71;
LABEL_109:
        specialized HoverEventDispatcher.dispatchNewAncestorsHoverCallbacks(oldHighestAncestor:newAncestors:point:)(v47, v8, a3, a4);

        goto LABEL_110;
      }

LABEL_103:

      return;
    }

LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  ResponderNode.sequence.getter();

  v10 = v81;
  v11 = v82;
  v12 = *v83;
  v13 = v83[16];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v82 = v10;
  v83[0] = v11;
  *&v83[8] = v12;
  v83[24] = v13;
  v84 = closure #6 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:);
  v85 = 0;
  v86 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v87 = 0;
  v88 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  v89 = 0;
  LOBYTE(v81) = 0;
  v90 = partial apply for closure #7 in HoverEventDispatcher.dispatchHoverCallbacks(oldResponder:newResponder:point:);
  v91 = v14;

  if ((v13 & 1) != 0 || (v72 = v7, v73 = v10, (v12)(&v74, &v82), !v74))
  {
LABEL_75:

    goto LABEL_76;
  }

  while (1)
  {
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      goto LABEL_28;
    }

    v19 = v18;
    if (*(v18 + 481) != 1)
    {
      break;
    }

    v80.origin.x = 0.0;
    v80.origin.y = 0.0;
    v20 = *(v18 + 272);
    v80.size = *(v18 + 288);
    v78 = 0;
    memset(&v77, 0, sizeof(v77));
    v79 = 2;
    v22 = *(v18 + 240);
    v21 = *(v18 + 248);
    *&v74 = v22;
    *(&v74 + 1) = v21;
    v75 = *(v19 + 256);
    v76 = v20;

    CGRect.convert(to:transform:)();
    outlined destroy of CoordinateSpace(&v77);

    v92.x = a3;
    v92.y = a4;
    if (!CGRectContainsPoint(v80, v92))
    {
      break;
    }

    if (*(v19 + 481) == 1)
    {
      v80.origin.x = a3;
      v80.origin.y = a4;
      swift_beginAccess();
      outlined init with copy of CoordinateSpace(v19 + 304, &v77);
      v23 = *(v19 + 248);
      *&v74 = *(v19 + 240);
      *(&v74 + 1) = v23;
      v24 = *(v19 + 272);
      v75 = *(v19 + 256);
      v76 = v24;
      type metadata accessor for CGPoint(0);

      ApplyViewTransform.convertGlobal(to:transform:)();

      outlined destroy of CoordinateSpace(&v77);
      x = v80.origin.x;
      y = v80.origin.y;
      v28 = *(v19 + 216);
      v27 = *(v19 + 224);
      v29 = *(v19 + 232);
      if ((v29 & 1) == 0)
      {
        if ((*(v19 + 480) & 1) == 0 && v80.origin.x == *(v19 + 464) && v80.origin.y == *(v19 + 472))
        {
          goto LABEL_28;
        }

LABEL_39:
        *(v19 + 464) = v80.origin.x;
        *(v19 + 472) = y;
        *(v19 + 480) = 0;
        LOBYTE(v74) = 7;
        v30 = swift_allocObject();
        *(v30 + 16) = v28;
        *(v30 + 24) = v27;
        *(v30 + 32) = v29;
        *(v30 + 40) = x;
        *(v30 + 48) = y;
        *(v30 + 56) = 0;
        outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v28, v27);
        outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v28, v27);
        static Update.enqueueAction(reason:_:)();

        outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v28, v27);
        goto LABEL_28;
      }

      if (*(v19 + 480))
      {
        goto LABEL_39;
      }
    }

LABEL_28:

    (v12)(&v74, &v82);
    if (!v74)
    {
      goto LABEL_75;
    }
  }

LABEL_76:

LABEL_110:
}

void type metadata accessor for ArraySlice<HoverResponder>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HoverResponder(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type [HoverResponder] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArraySlice<HoverResponder>(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

double (*Transaction.dismissBehavior.modify(void *a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  Transaction.subscript.getter();
  return Transaction.dismissBehavior.modify;
}

double Transaction.dismissBehavior.modify(uint64_t a1, double a2)
{
  *(a1 + 9) = *(a1 + 8);
  Transaction.subscript.setter();
  return result;
}

unint64_t lazy protocol witness table accessor for type DismissBehavior.Role and conformance DismissBehavior.Role()
{
  result = lazy protocol witness table cache variable for type DismissBehavior.Role and conformance DismissBehavior.Role;
  if (!lazy protocol witness table cache variable for type DismissBehavior.Role and conformance DismissBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DismissBehavior.Role, &type metadata for DismissBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DismissBehavior.Role and conformance DismissBehavior.Role);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarStatus and conformance SidebarStatus()
{
  result = lazy protocol witness table cache variable for type SidebarStatus and conformance SidebarStatus;
  if (!lazy protocol witness table cache variable for type SidebarStatus and conformance SidebarStatus)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarStatus, &type metadata for SidebarStatus, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarStatus and conformance SidebarStatus);
  }

  return result;
}

double static TableViewListCore.Configuration.sidebar(isInExpandedSplitView:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = ~a1 & 1;
  if (a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v12 = 0;
  MEMORY[0x18D007050](v9);
  *&v11[48] = *&v10[9];
  *&v11[39] = *v10;
  *&v11[23] = v9[1];
  *&v11[7] = v9[0];
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v5 = *&v11[16];
  *(a2 + 57) = *v11;
  *(a2 + 73) = v5;
  result = *&v11[32];
  v7 = *&v11[48];
  *(a2 + 89) = *&v11[32];
  v8 = v12;
  *a2 = 2;
  *(a2 + 40) = 1;
  *(a2 + 41) = v8;
  *(a2 + 42) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = 0;
  *(a2 + 105) = v7;
  return result;
}

double TableViewListCore.init(dataSource:selection:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = a3[5];
  v30 = a3[4];
  v31 = v14;
  v32[0] = a3[6];
  *(v32 + 9) = *(a3 + 105);
  v15 = a3[1];
  v26 = *a3;
  v27 = v15;
  v16 = a3[3];
  v28 = a3[2];
  v29 = v16;
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v25[0] = a4;
  v25[1] = a5;
  v25[2] = a6;
  v25[3] = a7;
  v17 = type metadata accessor for TableViewListCore(0, v25);
  v18 = *(v17 + 52);
  type metadata accessor for Binding();
  v19 = type metadata accessor for Optional();
  (*(*(v19 - 8) + 32))(a8 + v18, a2, v19);
  v20 = (a8 + *(v17 + 56));
  v21 = v31;
  v20[4] = v30;
  v20[5] = v21;
  v20[6] = v32[0];
  *(v20 + 105) = *(v32 + 9);
  v22 = v27;
  *v20 = v26;
  v20[1] = v22;
  result = *&v28;
  v24 = v29;
  v20[2] = v28;
  v20[3] = v24;
  return result;
}

uint64_t TableViewListCore.Configuration.TableViewConfiguration.sectionCornerRadius.getter()
{
  if (*(v0 + 42) == 1 || *v0 != 2)
  {
    return 0;
  }

  else
  {
    return *MEMORY[0x1E69DE3D0];
  }
}

uint64_t static TableViewListCore.Configuration.TableViewConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v4 = *(a1 + 42);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v10 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 42);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  if (*(a1 + 41) != 1)
  {
    if (*(a2 + 41))
    {
      goto LABEL_21;
    }

    if (*(a1 + 40))
    {
      v14 = 0;
      if ((*(a2 + 40) & 1) == 0 || v4 != v11)
      {
        return v14 & 1;
      }
    }

    else
    {
      if (*(a2 + 40))
      {
        goto LABEL_21;
      }

      v16 = a1;
      v17 = a2;
      v18 = static EdgeInsets.== infix(_:_:)();
      v14 = 0;
      if ((v18 & 1) == 0)
      {
        return v14 & 1;
      }

      a2 = v17;
      a1 = v16;
      if (v4 != v11)
      {
        return v14 & 1;
      }
    }

LABEL_25:
    v14 = 0;
    if (v5 == v12 && ((v6 ^ v13) & 1) == 0)
    {
      v19 = *(a1 + 80);
      v23[0] = *(a1 + 64);
      v23[1] = v19;
      v24[0] = *(a1 + 96);
      *(v24 + 9) = *(a1 + 105);
      v20 = *(a2 + 80);
      v21[0] = *(a2 + 64);
      v21[1] = v20;
      v22[0] = *(a2 + 96);
      *(v22 + 9) = *(a2 + 105);
      v14 = MEMORY[0x18D006FC0](v23, v21);
    }

    return v14 & 1;
  }

  if (*(a1 + 24) | *(a1 + 16) | *(a1 + 8) | *(a1 + 32) || *(a1 + 40))
  {
    if ((*(a2 + 41) & 1) == 0 || !(v10 | v8 | v7 | v9) && !*(a2 + 40))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v14 = 0;
    if (!*(a2 + 41) || v10 | v8 | v7 | v9 || *(a2 + 40))
    {
      return v14 & 1;
    }
  }

  if (v4 == v11)
  {
    goto LABEL_25;
  }

LABEL_21:
  v14 = 0;
  return v14 & 1;
}

uint64_t TableViewListCore.Configuration.TableViewConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  v8 = *(v1 + 42);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  MEMORY[0x18D00F6F0](*v1);
  if (v7 == 1)
  {
    if (v4 | v3 | v2 | v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6 == 0;
    }

    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 13;
    }

    MEMORY[0x18D00F6F0](v10);
  }

  else
  {
    MEMORY[0x18D00F6F0](31);
    if ((v6 & 1) == 0)
    {
      EdgeInsets.hash(into:)();
    }
  }

  MEMORY[0x18D00F6F0](v8);
  MEMORY[0x18D00F6F0](v12);
  Hasher._combine(_:)(v13);
  return OptionalEdgeInsets.hash(into:)();
}

Swift::Int TableViewListCore.Configuration.TableViewConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  TableViewListCore.Configuration.TableViewConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableViewListCore<A, B>.Configuration.TableViewConfiguration(uint64_t a1)
{
  Hasher.init(_seed:)();
  TableViewListCore.Configuration.TableViewConfiguration.hash(into:)(v2);
  return Hasher._finalize()();
}

double TableViewListCore.Configuration.init()@<D0>(uint64_t a1@<X8>)
{
  v9 = 1;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  v2 = static SemanticFeature.isEnabled.getter();
  MEMORY[0x18D007050](v6);
  *&v8[48] = *&v7[9];
  *&v8[39] = *v7;
  *&v8[23] = v6[1];
  *&v8[7] = v6[0];
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *&v8[16];
  *(a1 + 57) = *v8;
  *(a1 + 73) = v3;
  result = *&v8[32];
  v5 = *&v8[48];
  *(a1 + 89) = *&v8[32];
  *(a1 + 41) = v9;
  *(a1 + 48) = 1;
  *(a1 + 56) = v2 & 1;
  *(a1 + 105) = v5;
  return result;
}

__n128 TableViewListCore.Configuration.init(insetMode:padding:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *&v5[23] = a2[1];
  *&v5[7] = *a2;
  *&v5[39] = a2[2];
  *&v5[48] = *(a2 + 41);
  v3 = *(a1 + 16);
  *(a3 + 8) = *a1;
  *(a3 + 24) = v3;
  *(a3 + 57) = *v5;
  *(a3 + 73) = *&v5[16];
  result = *&v5[32];
  *(a3 + 89) = *&v5[32];
  *a3 = 1;
  *(a3 + 40) = *(a1 + 32);
  *(a3 + 42) = 0;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;
  *(a3 + 105) = *&v5[48];
  return result;
}

double static TableViewListCore.Configuration.inset(isInExpandedSplitView:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v12 = (a1 & 1) == 0;
  MEMORY[0x18D007050](v9);
  *&v11[48] = *&v10[9];
  *&v11[39] = *v10;
  *&v11[23] = v9[1];
  *&v11[7] = v9[0];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v5 = *&v11[16];
  *(a2 + 57) = *v11;
  *(a2 + 73) = v5;
  result = *&v11[32];
  v7 = *&v11[48];
  *(a2 + 89) = *&v11[32];
  v8 = v12;
  *(a2 + 32) = 0;
  *(a2 + 40) = a1;
  *(a2 + 41) = v8;
  *(a2 + 42) = v4;
  *(a2 + 48) = 1;
  *(a2 + 56) = 0;
  *(a2 + 105) = v7;
  return result;
}

double static TableViewListCore._makeView(view:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v78 = a7;
  v125 = *MEMORY[0x1E69E9840];
  v76 = type metadata accessor for ListScrollable.DataSourceProvider(0, a3, a5, a4);
  MEMORY[0x1EEE9AC00](v76);
  v77 = (&v70 - v13);
  v14 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = *a1;
  v17 = *(a2 + 48);
  v118 = *(a2 + 32);
  v119 = v17;
  v120 = *(a2 + 64);
  v121 = *(a2 + 80);
  v18 = *(a2 + 16);
  v116 = *a2;
  v117 = v18;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  v19 = static SemanticFeature.isEnabled.getter();
  v20 = 15.0;
  if (v19)
  {
    v20 = 16.0;
  }

  *v16 = v20;
  v21 = v14[5];
  v22 = type metadata accessor for BridgedListState.ScrollTarget(0);
  (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
  v23 = v16 + v14[6];
  v86 = 1;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *(v23 + 3) = 0u;
  *(v23 + 4) = 0u;
  *(v23 + 5) = 0u;
  *(v23 + 6) = 0u;
  v23[112] = 1;
  *(v16 + v14[7]) = 0;
  LODWORD(v21) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BridgedListState(v16);
  v79 = v21;
  LODWORD(v110) = v21;
  swift_unknownObjectWeakInit();
  *&v95 = a3;
  *(&v95 + 1) = a4;
  *&v96 = a5;
  *(&v96 + 1) = a6;
  updated = type metadata accessor for TableViewListCore.UpdateBridgedState(0, &v95);
  v94[2] = updated;
  v94[3] = swift_getWitnessTable(protocol conformance descriptor for TableViewListCore<A, B>.UpdateBridgedState, updated);
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Attribute<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v110, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_6, v94, updated, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  (*(*(updated - 8) + 8))(&v110, updated);
  LODWORD(v21) = v95;
  AGGraphGetFlags();
  v73 = v21;
  AGGraphSetFlags();
  swift_unknownObjectWeakInit();
  *&v95 = a3;
  *(&v95 + 1) = a4;
  *&v96 = a5;
  *(&v96 + 1) = a6;
  v27 = type metadata accessor for TableViewListCore.ScrollViewProvider(0, &v95);
  v93[2] = v27;
  v93[3] = swift_getWitnessTable(protocol conformance descriptor for TableViewListCore<A, B>.ScrollViewProvider, v27);
  type metadata accessor for Attribute<UIScrollView?>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v110, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_6, v93, v27, MEMORY[0x1E69E73E0], v28, MEMORY[0x1E69E7410], v29);
  (*(*(v27 - 8) + 8))(&v110, v27);
  v83 = v95;
  v75 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0]);
  v82 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v108[0]) = v80;
  *&v84 = a3;
  *(&v84 + 1) = a4;
  *&v95 = a3;
  *(&v95 + 1) = a4;
  v81 = a5;
  *&v96 = a5;
  *(&v96 + 1) = a6;
  v85 = a6;
  type metadata accessor for TableViewListCore(255, &v95);
  v74 = type metadata accessor for _GraphValue();
  v30 = _GraphValue.value.getter();
  v122 = v116;
  v123 = v117;
  v124 = v118;
  outlined init with copy of _GraphInputs(&v122, &v95);
  if (one-time initialization token for listStackBehavior != -1)
  {
    swift_once();
  }

  v31 = v123;
  *&v110 = static CachedEnvironment.ID.listStackBehavior;
  swift_beginAccess();
  v32 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v122);
  outlined init with copy of _GraphInputs(&v122, &v95);
  if (one-time initialization token for appIntentsDataSourcePayloadProvider != -1)
  {
    swift_once();
  }

  *&v110 = static CachedEnvironment.ID.appIntentsDataSourcePayloadProvider;
  swift_beginAccess();
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], MEMORY[0x1E69E6720]);
  v33 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v34 = outlined destroy of _GraphInputs(&v122);
  v72 = &v70;
  *&v110 = __PAIR64__(v73, v30);
  *(&v110 + 1) = __PAIR64__(v32, v83);
  LODWORD(v111) = v33;
  MEMORY[0x1EEE9AC00](v34);
  v35 = *(&v84 + 1);
  v36 = v84;
  v95 = v84;
  v71 = v31;
  v37 = v81;
  v38 = v85;
  *&v96 = v81;
  *(&v96 + 1) = v85;
  type metadata accessor for ListRepresentable(255, &v95);
  type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>();
  v39 = type metadata accessor for ModifiedContent();
  *(&v70 - 4) = v39;
  v95 = __PAIR128__(v35, v36);
  *&v96 = v37;
  *(&v96 + 1) = v38;
  v40 = v37;
  Representable = type metadata accessor for TableViewListCore.MakeRepresentable(0, &v95);
  *(&v70 - 3) = Representable;
  *(&v70 - 2) = swift_getWitnessTable(protocol conformance descriptor for TableViewListCore<A, B>.MakeRepresentable, Representable);
  v42 = type metadata accessor for Attribute();
  v44 = _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v110, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, (&v70 - 6), Representable, MEMORY[0x1E69E73E0], v42, MEMORY[0x1E69E7410], v43);
  v73 = v95;
  v104 = v118;
  v105 = v119;
  v106 = v120;
  v107 = v121;
  v102 = v116;
  v103 = v117;
  LODWORD(v110) = *(v71 + 16);
  DWORD1(v110) = v79;
  MEMORY[0x1EEE9AC00](v44);
  v95 = __PAIR128__(*(&v84 + 1), v36);
  v45 = *(&v84 + 1);
  *&v96 = v40;
  *(&v96 + 1) = v38;
  v46 = type metadata accessor for TableViewListCore.EnvironmentTransform(0, &v95);
  *(&v70 - 2) = v46;
  *(&v70 - 1) = swift_getWitnessTable(protocol conformance descriptor for TableViewListCore<A, B>.EnvironmentTransform, v46);
  outlined init with copy of _ViewInputs(&v116, &v95);
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v110, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, (&v70 - 4), v46, MEMORY[0x1E69E73E0], v47, MEMORY[0x1E69E7410], v48);
  _GraphInputs.environment.setter();
  _ViewInputs.scrollable.setter();
  PreferenceKeys.remove(_:)();
  _GraphValue.init(_:)();
  v108[2] = v104;
  v108[3] = v105;
  v108[4] = v106;
  v109 = v107;
  v108[0] = v102;
  v108[1] = v103;
  v97 = v104;
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v95 = v102;
  v96 = v103;
  outlined init with copy of _ViewInputs(v108, &v110);
  v49 = lazy protocol witness table accessor for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v101[0] = &protocol witness table for ListRepresentable<A, B>;
  v101[1] = v49;
  swift_getWitnessTable(MEMORY[0x1E697E858], v39, v101);
  static View.makeDebuggableView(view:inputs:)();
  v112 = v97;
  v113 = v98;
  v114 = v99;
  v115 = v100;
  v110 = v95;
  v111 = v96;
  outlined destroy of _ViewInputs(&v110);
  v50 = AGCreateWeakAttribute();
  MEMORY[0x1EEE9AC00](v50);
  v51 = v84;
  *(&v70 - 4) = v84;
  *(&v70 - 3) = v45;
  v52 = v40;
  v53 = v85;
  *(&v70 - 2) = v40;
  *(&v70 - 1) = v53;
  LODWORD(v95) = v80;
  _GraphValue.subscript.getter();
  v54 = v51;
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v55 = AGCreateWeakAttribute();
  v56 = v77;
  *v77 = v55;
  swift_storeEnumTagMultiPayload();
  v57 = AGCreateWeakAttribute();
  *&v95 = v89;
  DWORD2(v95) = LODWORD(v90);
  PreferencesOutputs.subscript.getter();
  v58 = AGCreateWeakAttribute();
  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for MutableBox<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E697DAC0]);
  v59 = swift_allocObject();
  *(v59 + 16) = 0;
  *(&v96 + 1) = type metadata accessor for ListScrollable(0, v54, v52, v60);
  *&v97 = swift_getWitnessTable(protocol conformance descriptor for ListScrollable<A>, *(&v96 + 1));
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v95);
  ListScrollable.init(state:dataSourceProvider:scrollView:children:lastUpdateSeed:)(v50, v56, v57, v58, v59, v54, v52, boxed_opaque_existential_1);
  AGGraphSetValue();
  __swift_destroy_boxed_opaque_existential_1(&v95);
  v91 = v119;
  v92 = DWORD2(v119);
  *&v95 = v119;
  DWORD2(v95) = DWORD2(v119);
  v62 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v95 = v91;
  DWORD2(v95) = v92;
  v63 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (v63 & 1) != 0 || (v62)
  {
    LODWORD(v95) = v82;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider();
    v64 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v95) = 0;
    v63 = PreferencesOutputs.subscript.setter();
    if (v62)
    {
      AccessibilityProperties.init()();
      LOBYTE(v95) = 0;
      DWORD1(v95) = v64;
      v65 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of AccessibilityScrollableModifier(&v95);
      _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5(v65, &v116, v89, SLODWORD(v90));
      v63 = PreferencesOutputs.subscript.setter();
    }
  }

  v87 = v91;
  v88 = v92;
  MEMORY[0x1EEE9AC00](v63);
  v66 = *(&v84 + 1);
  *(&v70 - 6) = v84;
  *(&v70 - 5) = v66;
  v67 = v85;
  *(&v70 - 4) = v81;
  *(&v70 - 3) = v67;
  *(&v70 - 4) = v83;
  outlined init with copy of PreferencesInputs(&v91, &v95);
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v97 = v104;
  v98 = v105;
  v99 = v106;
  v100 = v107;
  v95 = v102;
  v96 = v103;
  outlined destroy of _ViewInputs(&v95);
  v68 = v78;
  *v78 = v89;
  result = v90;
  v68[1] = v90;
  return result;
}

uint64_t closure #1 in static TableViewListCore._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v11[3] = a5;
  v10[2] = type metadata accessor for TableViewListCore(0, v11);
  v10[3] = a2;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v10, a2, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v11[0];
}

uint64_t implicit closure #2 in static TableViewListCore._makeView(view:inputs:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v8 = a1;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v10 = type metadata accessor for TableViewListCore.ScrollViewPreferenceProvider(0, v12);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableViewListCore<A, B>.ScrollViewPreferenceProvider, v10);
  type metadata accessor for Attribute<[ContentScrollViewBox]>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v8, closure #1 in Attribute.init<A>(_:)partial apply, v9, v10, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  return LODWORD(v12[0]);
}

uint64_t protocol witness for Rule.value.getter in conformance TableViewListCore<A, B>.ScrollViewProvider@<X0>(uint64_t *a1@<X8>)
{
  result = TableViewListCore.ScrollViewProvider.value.getter();
  *a1 = result;
  return result;
}

uint64_t TableViewListCore.ScrollViewPreferenceProvider.value.getter(uint64_t a1)
{
  type metadata accessor for UIScrollView?(0);
  if (!*AGGraphGetValue())
  {
    return MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for Attribute<UInt32>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentScrollViewBox>, &type metadata for ContentScrollViewBox, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18CD63400;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + 76) = 0;
  *(v1 + 68) = 0;
  swift_unknownObjectWeakAssign();
  result = v1;
  *(v1 + 48) = 2;
  *(v1 + 60) = 0;
  *(v1 + 52) = 0;
  return result;
}

uint64_t TableViewListCore.MakeRepresentable.core.getter@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v7 = type metadata accessor for TableViewListCore(0, v10);
  Value = AGGraphGetValue();
  return (*(*(v7 - 8) + 16))(a6, Value, v7);
}

uint64_t protocol witness for Rule.value.getter in conformance TableViewListCore<A, B>.ScrollViewPreferenceProvider@<X0>(uint64_t *a1@<X8>)
{
  result = TableViewListCore.ScrollViewPreferenceProvider.value.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t TableViewListCore.MakeRepresentable.value.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v93 = a3;
  v96 = a2;
  v92 = a8;
  v13 = type metadata accessor for Binding();
  v87 = type metadata accessor for Optional();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v97 = &v75 - v14;
  v85 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a4;
  v102 = a5;
  v103 = a6;
  v104 = a7;
  v100 = a7;
  v90 = type metadata accessor for ListRepresentable(0, &v101);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v75 - v17;
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v75 - v19;
  v101 = a4;
  v102 = a5;
  v103 = a6;
  v104 = a7;
  v20 = type metadata accessor for TableViewListCore(0, &v101);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v75 - v28;
  v79 = type metadata accessor for Optional();
  v30 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v32 = &v75 - v31;
  v94 = a1;
  v98 = a4;
  v33 = a5;
  v91 = a6;
  v34 = a6;
  v35 = v78;
  TableViewListCore.MakeRepresentable.core.getter(a4, a5, v34, v100, v29);
  v36 = *(v20 + 52);
  v37 = (*(v35 + 48))(&v29[v36], 1, v13);
  v80 = v20;
  if (v37)
  {
    v38 = *(v21 + 8);
    v99 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81 = v38;
    v38(v29, v20);
    v39 = 1;
  }

  else
  {
    v40 = v76;
    (*(v35 + 16))(v76, &v29[v36], v13);
    v41 = *(v21 + 8);
    v99 = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v81 = v41;
    v41(v29, v20);
    MEMORY[0x18D00ACC0](v13);
    (*(v35 + 8))(v40, v13);
    v39 = 0;
  }

  v42 = *(*(v33 - 8) + 56);
  v77 = v33;
  v42(v32, v39, 1, v33);
  (*(v30 + 8))(v32, v79);
  v43 = v82;
  v44 = v98;
  v45 = v91;
  TableViewListCore.MakeRepresentable.core.getter(v98, v33, v91, v100, v82);
  (*(v85 + 16))(v95, v43, v44);
  v46 = v80;
  v47 = v81;
  v48 = v99;
  v81(v43, v80);
  v99 = v48;
  v49 = v83;
  v50 = v44;
  v51 = v44;
  v52 = v77;
  v53 = v45;
  v54 = v45;
  v55 = v100;
  TableViewListCore.MakeRepresentable.core.getter(v51, v77, v53, v100, v83);
  (*(v86 + 16))(v97, v49 + *(v46 + 52), v87);
  v47(v49, v46);
  v56 = v84;
  v57 = v50;
  v58 = v52;
  TableViewListCore.MakeRepresentable.core.getter(v57, v52, v54, v55, v84);
  v59 = (v56 + *(v46 + 56));
  v60 = v59[5];
  v105[4] = v59[4];
  v105[5] = v60;
  *v106 = v59[6];
  *&v106[9] = *(v59 + 105);
  v61 = v59[1];
  v105[0] = *v59;
  v105[1] = v61;
  v62 = v59[3];
  v105[2] = v59[2];
  v105[3] = v62;
  v47(v56, v46);
  v63 = AGCreateWeakAttribute();
  v64 = AGCreateWeakAttribute();
  Value = AGGraphGetValue();
  v66 = *Value;
  v67 = *(Value + 8);
  LOWORD(v48) = *(Value + 9);
  type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], MEMORY[0x1E69E6720]);
  v68 = AGGraphGetValue();
  outlined init with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(v68, &v101);
  v74 = v54;
  v69 = v88;
  ListRepresentable.init(dataSource:selection:configuration:updateBridgedState:scrollViewProvider:stackBehavior:appIntentsDataSourcePayloadProvider:)(v95, v97, v105, v63, v64, v66, v67 | (v48 << 8), &v101, v88, v98, v58, v74, v55);
  v70 = static Edge.Set.all.getter();
  v101 = 1;
  LOBYTE(v102) = v70;
  type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>();
  v71 = v90;
  MEMORY[0x18D00A570](&v101, v90, v72, &protocol witness table for ListRepresentable<A, B>);
  return (*(v89 + 8))(v69, v71);
}

__n128 ListRepresentable.init(dataSource:selection:configuration:updateBridgedState:scrollViewProvider:stackBehavior:appIntentsDataSourcePayloadProvider:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int16 a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = a3[5];
  v39 = a3[4];
  v40 = v19;
  v41[0] = a3[6];
  *(v41 + 9) = *(a3 + 105);
  v20 = a3[1];
  v35 = *a3;
  v36 = v20;
  v21 = a3[3];
  v37 = a3[2];
  v38 = v21;
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  v34[0] = a10;
  v34[1] = a11;
  v34[2] = a12;
  v34[3] = a13;
  v22 = type metadata accessor for ListRepresentable(0, v34);
  v23 = v22[13];
  type metadata accessor for Binding();
  v24 = type metadata accessor for Optional();
  (*(*(v24 - 8) + 32))(a9 + v23, a2, v24);
  v25 = (a9 + v22[14]);
  v26 = v40;
  v25[4] = v39;
  v25[5] = v26;
  v25[6] = v41[0];
  *(v25 + 105) = *(v41 + 9);
  v27 = v36;
  *v25 = v35;
  v25[1] = v27;
  v28 = v38;
  v25[2] = v37;
  v25[3] = v28;
  *(a9 + v22[15]) = a4;
  *(a9 + v22[16]) = a5;
  v29 = a9 + v22[17];
  *v29 = a6;
  *(v29 + 8) = a7;
  *(v29 + 9) = HIBYTE(a7) & 1;
  v30 = a9 + v22[18];
  result = *a8;
  v32 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v32;
  *(v30 + 32) = *(a8 + 32);
  return result;
}

uint64_t TableViewListCore.UpdateBridgedState.bridgedState.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BridgedListState(0);
  Value = AGGraphGetValue();

  return outlined init with copy of BridgedListState(Value, a1);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance TableViewListCore<A, B>.MakeRepresentable@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v3;
  type metadata accessor for ListRepresentable(255, v6);
  type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>();
  v4 = type metadata accessor for ModifiedContent();
  return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
}

_DWORD *TableViewListCore.UpdateBridgedState.updateValue()(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_4;
  }

  TableViewListCore.UpdateBridgedState.bridgedState.getter(v6);
  v7 = *&v6[*(v1 + 28)];
  outlined destroy of BridgedListState(v6);
  result = AGGraphGetOutputValue();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (v7 != *result)
  {
LABEL_4:
    v9 = AGCreateWeakAttribute();
    AGGraphClearUpdate();
    closure #1 in TableViewListCore.UpdateBridgedState.updateValue()(v9, &v12);
    AGGraphSetUpdate();
    TableViewListCore.UpdateBridgedState.bridgedState.getter(v3);
    v10 = *&v3[*(v1 + 28)];
    outlined destroy of BridgedListState(v3);
    v11 = v10;
    return AGGraphSetOutputValue();
  }

  return result;
}

void closure #1 in TableViewListCore.UpdateBridgedState.updateValue()(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_bridgedState) = a2;
    UpdateCoalescingTableView.updateContent()();
  }

  *a3 = v6 == 0;
}

void TableViewListCore.EnvironmentTransform.value.getter(void *a2@<X8>)
{
  v3 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  ScrollBehaviorModifier.ChildEnvironment.environment.getter(a2);
  Value = AGGraphGetValue();
  outlined init with copy of BridgedListState(Value, v5);
  v7 = *v5;
  outlined destroy of BridgedListState(v5);
  v8[1] = v7;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance TableViewListCore<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for TableViewListCore<A, B>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

id ListRepresentable.makeCoordinator()(uint64_t a1)
{
  v3 = *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = v3;
  type metadata accessor for UITableViewListCoordinator(0, &v5);
  v5 = 0uLL;
  LOBYTE(v6) = 0;
  return specialized UITableViewListCoordinator.__allocating_init(dataSource:selection:transaction:editMode:sidebarStatus:)(v1, v1 + *(a1 + 52), 1, &v5, *(v1 + *(a1 + 56) + 42));
}

char *ListRepresentable.makeViewProvider(context:)(void **a1, uint64_t a2)
{
  v4 = *a1;
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);
  v8 = a1[5];
  v49 = v2 + *(a2 + 56);
  v9 = a1[1];
  v10 = [objc_allocWithZone(type metadata accessor for UpdateCoalescingTableView(0)) initWithFrame:*v49 style:{0.0, 0.0, 0.0, 0.0}];
  swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, a2);
  type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.coordinator.getter();
  [v10 setDataSource_];

  PlatformViewRepresentableContext.coordinator.getter();
  [v10 setDelegate_];

  v62 = v4;
  v63 = v9;
  v64 = v6;
  v65 = v5;
  v66 = v7;
  v67 = v8;
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v53 = *(a2 + 16);
  v56 = v53;
  v57 = v11;
  v51 = v12;
  v52 = v11;
  v58 = v12;
  v59 = v13;
  v50 = v13;
  v59 = type metadata accessor for UITableViewListCoordinator(0, &v56);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UITableViewListCoordinator<A, B>);
  PlatformViewRepresentableContext.coordinator.getter();
  UITableView._appIntentsDataSourcePayloadProvider.setter();
  [v10 setEstimatedRowHeight_];
  [v10 setSeparatorInsetReference_];
  v14 = v4;
  v62 = v4;
  v63 = v9;
  v64 = v6;
  v65 = v5;
  v66 = v7;
  v67 = v8;
  PlatformViewRepresentableContext.coordinator.getter();
  v15 = v56;
  v16 = *(v15 + *((*MEMORY[0x1E69E7D40] & *v15) + 0xA0));

  swift_unknownObjectWeakAssign();
  v62 = v14;
  v63 = v9;
  v64 = v6;
  v65 = v5;
  v66 = v7;
  v67 = v8;
  PlatformViewRepresentableContext.coordinator.getter();
  v56 = v14;
  v57 = v9;
  v58 = v6;
  v59 = v5;
  LOBYTE(WitnessTable) = v7;
  v61 = v8;
  specialized PlatformViewRepresentableContext.transaction.getter();

  UITableViewListCoordinator.recordInitialTransactionIfNeeded(_:)(v17);

  v62 = v14;
  v63 = v9;
  v64 = v6;
  v65 = v5;
  v66 = v7;
  v67 = v8;
  PlatformViewRepresentableContext.environment.getter();
  if (v57)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowSpacing>, &type metadata for ListRowSpacing, &protocol witness table for ListRowSpacing, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowSpacing>, &type metadata for ListRowSpacing, &protocol witness table for ListRowSpacing, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v18 = &v10[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_rowSpacing];
  *v18 = v54;
  v18[8] = v55;
  v62 = v14;
  v63 = v9;
  v64 = v6;
  v65 = v5;
  v66 = v7;
  v67 = v8;
  v19 = PlatformViewRepresentableContext.coordinator.getter();
  v20 = v56;
  v24 = UITableViewListCoordinator.dragAndDropController.getter(v19, v21, v22, v23);

  [v10 setDragDelegate_];
  v62 = v14;
  v63 = v9;
  v64 = v6;
  v65 = v5;
  v66 = v7;
  v67 = v8;
  v25 = PlatformViewRepresentableContext.coordinator.getter();
  v26 = v56;
  v30 = UITableViewListCoordinator.dragAndDropController.getter(v25, v27, v28, v29);

  [v10 setDropDelegate_];
  v31 = *(v49 + 42) - 1 < 2;
  v32 = v10[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_isSidebarStyle];
  v10[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_isSidebarStyle] = v31;
  if (v31 != v32)
  {
    v33 = OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_needsUpdateAlignmentInsets;
    v10[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_needsUpdateAlignmentInsets] = 1;
    v34 = [v10 _viewControllerForAncestor];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 navigationController];

      if (v36)
      {

        v10[v33] = 0;
        [v10 _notifyAlignedContentMarginChanged];
      }
    }
  }

  type metadata accessor for ListTableViewCell(0);
  v37 = [swift_getObjCClassFromMetadata() classForCoder];
  v38 = static UITableViewListCoordinator.cellReuseIdentifier.getter();
  v39 = MEMORY[0x18D00C850](v38);

  [v10 registerClass:v37 forCellReuseIdentifier:v39];

  type metadata accessor for ListTableViewHeaderFooter();
  v40 = [swift_getObjCClassFromMetadata() classForCoder];
  v41 = static UITableViewListCoordinator.headerReuseIdentifier.getter();
  v42 = MEMORY[0x18D00C850](v41);

  [v10 registerClass:v40 forHeaderFooterViewReuseIdentifier:v42];

  Attribute = AGWeakAttributeGetAttribute();
  v44 = *MEMORY[0x1E698D3F8];
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    MEMORY[0x1EEE9AC00](Attribute);
    v62 = v53;
    v63 = v52;
    v64 = v51;
    v65 = v50;
    updated = type metadata accessor for TableViewListCore.UpdateBridgedState(0, &v62);
    MEMORY[0x1EEE9AC00](updated);
    AGGraphMutateAttribute();
  }

  v46 = AGWeakAttributeGetAttribute();
  if (v46 != v44)
  {
    MEMORY[0x1EEE9AC00](v46);
    v62 = v53;
    v63 = v52;
    v64 = v51;
    v65 = v50;
    v47 = type metadata accessor for TableViewListCore.ScrollViewProvider(0, &v62);
    MEMORY[0x1EEE9AC00](v47);
    AGGraphMutateAttribute();
  }

  return v10;
}

double ListRepresentable.updateViewProvider(_:context:)(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v112 = a1;
  v5 = *(a3 + 16);
  v106 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v104 = &v100[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v7 + 32);
  v107 = type metadata accessor for ShadowListDataSource(0, v5, v8, v9);
  v105 = *(v107 - 8);
  v10 = MEMORY[0x1EEE9AC00](v107);
  v102 = &v100[-v11];
  v13 = *a2;
  v12 = *(a2 + 1);
  v14 = *(a2 + 3);
  v118 = *(a2 + 2);
  v111 = v14;
  v15 = a2[32];
  v114 = *(a2 + 5);
  *&v138 = v13;
  *(&v138 + 1) = v12;
  v16 = v13;
  v116 = v13;
  v17 = v12;
  *&v139[0] = v118;
  *(&v139[0] + 1) = v14;
  LOBYTE(v139[1]) = v15;
  v115 = v15;
  *(&v139[1] + 1) = v114;
  swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, a3, v10);
  v18 = type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.environment.getter();
  v117 = *(&v123 + 1);
  v119 = v123;
  v19 = (v120 + *(a3 + 56));
  v20 = v19[1];
  v138 = *v19;
  v139[0] = v20;
  *(v139 + 10) = *(v19 + 26);
  v101 = *(v19 + 42);
  BYTE10(v139[1]) = v101;
  *(&v139[2] + 11) = *(v19 + 59);
  *(&v139[3] + 11) = *(v19 + 75);
  *(&v139[4] + 11) = *(v19 + 91);
  *(&v139[5] + 9) = *(v19 + 105);
  *(&v139[1] + 11) = *(v19 + 43);
  v21 = *(a3 + 24);
  v22 = *(a3 + 40);
  v108 = v5;
  v103 = v8;
  UpdateCoalescingTableView.applyValues<A, B>(from:)(&v138, v5, v21, v8, v22);
  *&v138 = v16;
  *(&v138 + 1) = v17;
  v23 = v17;
  v24 = v118;
  v25 = v111;
  *&v139[0] = v118;
  *(&v139[0] + 1) = v111;
  LOBYTE(v139[1]) = v15;
  v26 = v114;
  *(&v139[1] + 1) = v114;
  PlatformViewRepresentableContext.coordinator.getter();
  v27 = v142;
  v109 = a3;
  v28 = *(a3 + 52);
  v29 = *((*MEMORY[0x1E69E7D40] & *v142) + 0x78);
  swift_beginAccess();
  type metadata accessor for Binding();
  v30 = type metadata accessor for Optional();
  v31 = v120 + v28;
  v32 = v24;
  v33 = v117;
  (*(*(v30 - 8) + 24))(&v27[v29], v31, v30);
  swift_endAccess();

  *&v138 = v116;
  *(&v138 + 1) = v23;
  v113 = v23;
  *&v139[0] = v32;
  *(&v139[0] + 1) = v25;
  LOBYTE(v139[1]) = v115;
  *(&v139[1] + 1) = v26;
  v110 = v18;
  PlatformViewRepresentableContext.coordinator.getter();
  v34 = v142;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>, &type metadata for EditModeKey, &protocol witness table for EditModeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EditModeKey> and conformance EnvironmentPropertyKey<A>();
  if (v33)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v35 = v124;
  v36 = MEMORY[0x1E69E7D40];
  v37 = v34 + *((*MEMORY[0x1E69E7D40] & *v34) + 0x80);
  v38 = *v37;
  v39 = *(v37 + 1);
  *v37 = v123;
  v37[16] = v35;
  outlined consume of Binding<NavigationSplitViewColumn>?(v38, v39);

  v40 = v116;
  v41 = v113;
  v42 = v114;
  *&v138 = v116;
  *(&v138 + 1) = v113;
  v43 = v118;
  v44 = v111;
  *&v139[0] = v118;
  *(&v139[0] + 1) = v111;
  v45 = v115;
  LOBYTE(v139[1]) = v115;
  *(&v139[1] + 1) = v114;
  PlatformViewRepresentableContext.coordinator.getter();
  v46 = v123;
  *(v123 + *((*v36 & *v123) + 0x90)) = v101;

  *&v138 = v40;
  *(&v138 + 1) = v41;
  *&v139[0] = v43;
  *(&v139[0] + 1) = v44;
  LOBYTE(v139[1]) = v45;
  *(&v139[1] + 1) = v42;
  v47 = PlatformViewRepresentableContext.coordinator.getter();
  v48 = v142;
  v52 = UITableViewListCoordinator.dragAndDropController.getter(v47, v49, v50, v51);

  v53 = v104;
  v54 = v108;
  (*(v106 + 16))(v104, v120, v108);
  v55 = v102;
  ShadowListDataSource.init(_:)(v53, v54, v103, v102);
  v56 = *((*v36 & *v52) + 0x60);
  swift_beginAccess();
  (*(v105 + 40))(&v52[v56], v55, v107);
  swift_endAccess();

  v57 = v112;
  v58 = v117;
  if (v117)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>, &type metadata for RefreshAction.Key, &protocol witness table for RefreshAction.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v59 = v138;
  v60 = *&v139[0];
  LOBYTE(v123) = 17;
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  *(v62 + 24) = v59;
  *(v62 + 40) = v60;

  outlined copy of AppIntentExecutor?(v59, *(&v59 + 1));
  static Update.enqueueAction(reason:_:)();
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v59, *(&v59 + 1));

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v3VGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SafeAreaTransitionStateKey>, &type metadata for SafeAreaTransitionStateKey, &protocol witness table for SafeAreaTransitionStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>();
  if (v58)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v64 = *(&v138 + 1);
  outlined destroy of weak FallbackResponderProvider?(&v138);
  if (Strong)
  {
    v65 = &v57[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_safeAreaTransitionState];
    *v65 = Strong;
    v65[1] = v64;
    swift_unknownObjectRelease();
  }

  v66 = v116;
  v67 = v114;
  *&v138 = v116;
  *(&v138 + 1) = v113;
  v68 = v113;
  v69 = v118;
  v70 = v111;
  *&v139[0] = v118;
  *(&v139[0] + 1) = v111;
  LOBYTE(v139[1]) = v115;
  *(&v139[1] + 1) = v114;
  PlatformViewRepresentableContext.coordinator.getter();
  v71 = v123;
  v72 = v109;
  v73 = v120;
  v74 = (v120 + *(v109 + 68));
  v75 = *v74;
  v76 = *(v74 + 8);
  LOBYTE(v74) = *(v74 + 9);
  v77 = v71 + *((*MEMORY[0x1E69E7D40] & *v71) + 0x98);
  *v77 = v75;
  v77[8] = v76;
  v77[9] = v74;

  *&v138 = v66;
  *(&v138 + 1) = v68;
  *&v139[0] = v69;
  *(&v139[0] + 1) = v70;
  LOBYTE(v69) = v115;
  LOBYTE(v139[1]) = v115;
  *(&v139[1] + 1) = v67;
  PlatformViewRepresentableContext.coordinator.getter();
  v78 = v142;
  v79 = *(v72 + 72);
  v80 = *((*MEMORY[0x1E69E7D40] & *v142) + 0x108);
  swift_beginAccess();
  outlined assign with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(v73 + v79, &v78[v80]);
  swift_endAccess();

  v81 = v66;
  v82 = v113;
  v142 = v66;
  v143 = v113;
  v83 = v118;
  v144 = v118;
  v145 = v70;
  v84 = v70;
  v146 = v69;
  v85 = v114;
  v147 = v114;
  PlatformViewRepresentableContext.coordinator.getter();
  v86 = v141;
  v87 = *(v86 + *((*MEMORY[0x1E69E7D40] & *v86) + 0xA0));

  *&v123 = v119;
  *(&v123 + 1) = v117;

  ScrollEnvironmentProperties.init(environment:)(&v123, &v138);
  v88 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v87 + v88, &v123);
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentProperties(&v138, v87 + v88);
  swift_endAccess();
  ScrollViewHelper.didChangeProperties(from:)(&v123);

  outlined destroy of ScrollEnvironmentProperties(&v123);
  outlined destroy of ScrollEnvironmentProperties(&v138);
  v142 = v81;
  v143 = v82;
  v144 = v83;
  v145 = v84;
  v89 = v84;
  v146 = v69;
  LOBYTE(v84) = v69;
  v147 = v85;
  v90 = v85;
  PlatformViewRepresentableContext.coordinator.getter();
  v91 = v141;
  v92 = *(v91 + *((*MEMORY[0x1E69E7D40] & *v91) + 0xA0));

  v121 = v119;
  v122 = v117;
  EnvironmentValues.contentMarginProxy.getter(&v138);
  v93 = &v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v135 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 192];
  v136 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 208];
  v137[0] = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 224];
  *(v137 + 9) = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 233];
  v131 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 128];
  v132 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 144];
  v133 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 160];
  v134 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 176];
  v127 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 64];
  v128 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 80];
  v129 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 96];
  v130 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 112];
  v123 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v124 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 16];
  v125 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 32];
  v126 = *&v92[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins + 48];
  *(v93 + 12) = v139[11];
  *(v93 + 13) = v139[12];
  *(v93 + 14) = v140[0];
  *(v93 + 233) = *(v140 + 9);
  *(v93 + 8) = v139[7];
  *(v93 + 9) = v139[8];
  *(v93 + 10) = v139[9];
  *(v93 + 11) = v139[10];
  *(v93 + 4) = v139[3];
  *(v93 + 5) = v139[4];
  *(v93 + 6) = v139[5];
  *(v93 + 7) = v139[6];
  *v93 = v138;
  *(v93 + 1) = v139[0];
  *(v93 + 2) = v139[1];
  *(v93 + 3) = v139[2];
  ScrollViewHelper.didChangeMargins(from:)();

  v94 = v116;
  v95 = v113;
  *&v123 = v116;
  *(&v123 + 1) = v113;
  v96 = v118;
  *&v124 = v118;
  *(&v124 + 1) = v89;
  LOBYTE(v125) = v84;
  *(&v125 + 1) = v90;
  PlatformViewRepresentableContext.coordinator.getter();
  v97 = v121;
  v142 = v94;
  v143 = v95;
  v144 = v96;
  v145 = v89;
  v146 = v84;
  v147 = v90;
  v98 = specialized PlatformViewRepresentableContext.transaction.getter();

  UITableViewListCoordinator.updateUITableView(_:to:transaction:)(v112, v120, v98);

  return result;
}

void *ListRepresentable.overrideSizeThatFits(_:in:platformView:)(void *result, uint64_t a2, int a3, uint64_t a4, int a5, char *a6, uint64_t a7)
{
  v8 = v7 + *(a7 + 68);
  if (*(v8 + 9) == 1 && !(*v8 ^ 1 | *(v8 + 8)) && ((a5 | a3) & 1) != 0)
  {
    v9 = &a6[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_cachedIdealSize];
    if (a6[OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_cachedIdealSize + 16])
    {
      v16 = 0;
      v17 = 0;
      v10 = result;
      v11 = a5;
      v12 = a3;
      AGGraphClearUpdate();
      specialized closure #1 in UpdateCoalescingTableView.idealSize()(a6, &v16);
      AGGraphSetUpdate();
      swift_beginAccess();
      LOBYTE(a5) = v11;
      result = v10;
      v15 = v16;
      v14 = v17;
      *v9 = v16;
      *(v9 + 1) = v14;
      v9[16] = 0;
      if ((v12 & 1) == 0)
      {
LABEL_9:
        if (a5)
        {
          result[1] = v14;
        }

        return result;
      }
    }

    else
    {
      v15 = *v9;
      v14 = *(v9 + 1);
      if ((a3 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    *result = v15;
    goto LABEL_9;
  }

  return result;
}

uint64_t ListRepresentable._identifiedViewTree(in:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  [a1 layoutIfNeeded];
  v3 = [a1 visibleCells];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITableViewCell, 0x1E69DD028);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    v7 = MEMORY[0x1E69E7CC0];
LABEL_23:

    a2[3] = &type metadata for _IdentifiedViewTree;
    result = swift_allocObject();
    *a2 = result;
    if (*(v7 + 2))
    {
      v26 = 1;
    }

    else
    {
      v27 = result;

      result = v27;
      v7 = 0;
      *(v27 + 168) = 0u;
      *(v27 + 152) = 0u;
      *(v27 + 136) = 0u;
      *(v27 + 120) = 0u;
      *(v27 + 104) = 0u;
      *(v27 + 88) = 0u;
      *(v27 + 72) = 0u;
      *(v27 + 56) = 0u;
      *(v27 + 40) = 0u;
      v26 = 2;
      *(v27 + 24) = 0u;
    }

    *(result + 16) = v7;
    *(result + 184) = v26;
    return result;
  }

LABEL_21:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x18D00E9C0](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(v4 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    type metadata accessor for ListTableViewCell(0);
    result = swift_dynamicCastClassUnconditional();
    v12 = *(result + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
    if (!v12)
    {
      break;
    }

    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>();
    v13 = v12;
    ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

    outlined init with copy of _IdentifiedViewTree(v30, v29);
    if (v29[168] == 2 && (v14 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v29[40], *&v29[104]), vorrq_s8(*&v29[72], *&v29[136])), vorrq_s8(vorrq_s8(*&v29[56], *&v29[120]), vorrq_s8(*&v29[88], *&v29[152]))), vorrq_s8(*&v29[8], *&v29[24])), !(*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *v29)))
    {
      outlined destroy of _IdentifiedViewTree(v30);

      outlined destroy of _IdentifiedViewTree(v29);
    }

    else
    {
      outlined destroy of _IdentifiedViewTree(v29);
      outlined init with copy of _IdentifiedViewTree(v30, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v7);
      }

      outlined destroy of _IdentifiedViewTree(v30);
      *(v7 + 2) = v16 + 1;
      v17 = &v7[176 * v16];
      v18 = *&v29[32];
      v19 = *&v29[16];
      *(v17 + 2) = *v29;
      *(v17 + 3) = v19;
      *(v17 + 4) = v18;
      v20 = *&v29[96];
      v21 = *&v29[64];
      v22 = *&v29[48];
      *(v17 + 7) = *&v29[80];
      *(v17 + 8) = v20;
      *(v17 + 5) = v22;
      *(v17 + 6) = v21;
      v23 = *&v29[144];
      v24 = *&v29[128];
      v25 = *&v29[112];
      *(v17 + 185) = *&v29[153];
      *(v17 + 10) = v24;
      *(v17 + 11) = v23;
      *(v17 + 9) = v25;
    }

    ++v6;
    if (v10 == v5)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

char *protocol witness for CoreViewRepresentable.makeViewProvider(context:) in conformance ListRepresentable<A, B>@<X0>(void **a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = ListRepresentable.makeViewProvider(context:)(a1, a2);
  *a3 = result;
  return result;
}

id protocol witness for CoreViewRepresentable.makeCoordinator() in conformance ListRepresentable<A, B>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ListRepresentable.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

void protocol witness for View.body.getter in conformance ListRepresentable<A, B>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, a1);
  specialized PrimitiveView.body.getter(a1, WitnessTable);
}

{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ListRepresentable<A, B>, a1);
  specialized PrimitiveView.body.getter(a1, WitnessTable);
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t type metadata completion function for TableViewListCore(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Binding();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TableViewListCore(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 16) & ~v9) + *(v7 + 64);
  v11 = ((v10 + (((v9 | 7) + v5) & ~(v9 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 121;
  v12 = v9 | *(v4 + 80) & 0xF8;
  if (v12 <= 7 && ((*(v4 + 80) | *(v7 + 80)) & 0x100000) == 0 && v11 <= 0x18)
  {
    (*(v4 + 16))(a1);
    v17 = v3 + v5 + 7;
    v18 = a2 + v5 + 7;
    v19 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v8 & 0x80000000) != 0)
    {
      v22 = (*(v7 + 48))(v19 + 1, v8, v6);
      v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
      if (v22)
      {
LABEL_14:
        memcpy(v21, (v18 & 0xFFFFFFFFFFFFFFF8), v10);
LABEL_17:
        v25 = (((v17 | 7) + v10) & 0xFFFFFFFFFFFFFFF8);
        v26 = (((v18 | 7) + v10) & 0xFFFFFFFFFFFFFFF8);
        v27 = *v26;
        v28 = v26[1];
        v29 = v26[3];
        v25[2] = v26[2];
        v25[3] = v29;
        *v25 = v27;
        v25[1] = v28;
        v30 = v26[4];
        v31 = v26[5];
        v32 = v26[6];
        *(v25 + 105) = *(v26 + 105);
        v25[5] = v31;
        v25[6] = v32;
        v25[4] = v30;
        return v3;
      }
    }

    else
    {
      v20 = *v19;
      if (*v19 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
      if (v20 != -1)
      {
        goto LABEL_14;
      }
    }

    *v21 = *(v18 & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v19;
    v24 = *(v7 + 16);

    v24(v23 + 1, v19 + 1, v6);
    goto LABEL_17;
  }

  v15 = *a2;
  *v3 = *a2;
  v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));

  return v3;
}

uint64_t destroy for TableViewListCore(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + a1 + (v8 | 7)) & ~(v8 | 7);
  v10 = ~v8;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v15 = v7;
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    result = (*(v7 + 48))((v11 + v8 + 8) & v10);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v12 = *v11;
  if (*v11 >= 0xFFFFFFFF)
  {
    LODWORD(v12) = -1;
  }

  result = (v12 + 1);
  if (v12 == -1)
  {
LABEL_7:

    v14 = *(v15 + 8);

    return v14((v11 + v8 + 8) & v10, v6);
  }

  return result;
}

uint64_t initializeWithCopy for TableViewListCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 48);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    v20 = v9 + 8;
    v21 = v19 + v9 + 8;
    v22 = v16 + v20;
    v23 = *(v8 + 16);

    v23(v21 & v13, v22 & v13, v7);
    goto LABEL_8;
  }

  v18 = v14 + v15;
  if (!(*(v8 + 48))((v16 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  v24 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v26 = *v25;
  v27 = v25[1];
  v28 = v25[3];
  v24[2] = v25[2];
  v24[3] = v28;
  *v24 = v26;
  v24[1] = v27;
  v29 = v25[4];
  v30 = v25[5];
  v31 = v25[6];
  *(v24 + 105) = *(v25 + 105);
  v24[5] = v30;
  v24[6] = v31;
  v24[4] = v29;
  return a1;
}

uint64_t assignWithCopy for TableViewListCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 40);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v15 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ~v9;
  if ((v13 & 0x80000000) != 0)
  {
    v32 = (v10 + a1) & ~(v9 | 7);
    v31 = ((v9 + 16) & ~v9) + *(v8 + 64);
    v19 = *(v8 + 48);
    v30 = v19((v15 + v9 + 8) & ~v9, v13, v7);
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = v32;
    v18 = v19((v16 + v9 + 8) & ~v9, v13, v7);
    v14 = v31;
    if (!v30)
    {
LABEL_5:
      if (!v18)
      {
        *v11 = *v12;

        *v15 = *v16;

        (*(v8 + 24))((v15 + v9 + 8) & v33, (v16 + v9 + 8) & v33, v7);
        goto LABEL_12;
      }

      (*(v8 + 8))((v15 + v9 + 8) & v33, v7);
      goto LABEL_9;
    }
  }

  else
  {
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v15 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    *v11 = *v12;
    *v15 = *v16;
    v20 = *(v8 + 16);

    v20((v15 + v9 + 8) & v33, (v16 + v9 + 8) & v33, v7);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v14);
LABEL_12:
  v21 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  v23 = *(v22 + 8);
  v24 = *(v22 + 24);
  *(v21 + 40) = *(v22 + 40);
  *(v21 + 24) = v24;
  *(v21 + 8) = v23;
  *(v21 + 42) = *(v22 + 42);
  *(v21 + 48) = *(v22 + 48);
  *(v21 + 56) = *(v22 + 56);
  v25 = *(v22 + 64);
  *(v21 + 72) = *(v22 + 72);
  *(v21 + 64) = v25;
  v26 = *(v22 + 80);
  *(v21 + 88) = *(v22 + 88);
  *(v21 + 80) = v26;
  v27 = *(v22 + 96);
  *(v21 + 104) = *(v22 + 104);
  *(v21 + 96) = v27;
  v28 = *(v22 + 112);
  *(v21 + 120) = *(v22 + 120);
  *(v21 + 112) = v28;
  return a1;
}

uint64_t initializeWithTake for TableViewListCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 32);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) == 0)
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v11 = *v12;
    v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    (*(v8 + 32))((v19 + v9 + 8) & v13, (v16 + v9 + 8) & v13, v7);
    goto LABEL_8;
  }

  v18 = v14 + v15;
  if (!(*(v8 + 48))((v16 + v9 + 8) & v13))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v11, v12, v18);
LABEL_8:
  v20 = ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[3];
  v20[2] = v21[2];
  v20[3] = v24;
  *v20 = v22;
  v20[1] = v23;
  v25 = v21[4];
  v26 = v21[5];
  v27 = v21[6];
  *(v20 + 105) = *(v21 + 105);
  v20[5] = v26;
  v20[6] = v27;
  v20[4] = v25;
  return a1;
}

uint64_t assignWithTake for TableViewListCore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 24);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v15 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ~v9;
  if ((v13 & 0x80000000) != 0)
  {
    v19 = *(v8 + 48);
    v20 = v19((v15 + v9 + 8) & ~v9, v13, v7);
    v21 = v19;
    v31 = v20;
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = v21((v16 + v9 + 8) & ~v9, v13, v7);
    if (!v31)
    {
LABEL_5:
      if (!v18)
      {
        *v11 = *v12;

        *v15 = *v16;

        (*(v8 + 40))((v15 + v9 + 8) & v32, (v16 + v9 + 8) & v32, v7);
        goto LABEL_12;
      }

      (*(v8 + 8))((v15 + v9 + 8) & v32, v7);
      goto LABEL_9;
    }
  }

  else
  {
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v15 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v18)
  {
    *v11 = *v12;
    *v15 = *v16;
    (*(v8 + 32))((v15 + v9 + 8) & v32, (v16 + v9 + 8) & v32, v7);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v11, v12, v14);
LABEL_12:
  v22 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v22 = *v23;
  v24 = *(v23 + 8);
  v25 = *(v23 + 24);
  *(v22 + 40) = *(v23 + 40);
  *(v22 + 24) = v25;
  *(v22 + 8) = v24;
  *(v22 + 42) = *(v23 + 42);
  *(v22 + 48) = *(v23 + 48);
  *(v22 + 56) = *(v23 + 56);
  v26 = *(v23 + 64);
  *(v22 + 72) = *(v23 + 72);
  *(v22 + 64) = v26;
  v27 = *(v23 + 80);
  *(v22 + 88) = *(v23 + 88);
  *(v22 + 80) = v27;
  v28 = *(v23 + 96);
  *(v22 + 104) = *(v23 + 104);
  *(v22 + 96) = v28;
  v29 = *(v23 + 112);
  *(v22 + 120) = *(v23 + 120);
  *(v22 + 112) = v29;
  return a1;
}

uint64_t getEnumTagSinglePayload for TableViewListCore(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  v13 = *(v8 + 80);
  if (v12 <= v7)
  {
    v14 = *(v6 + 84);
  }

  else
  {
    v14 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v13 | 7;
  v16 = (v13 | 7) + *(*(v5 - 8) + 64);
  if (v14 >= a2)
  {
    goto LABEL_31;
  }

  v17 = ((*(*(*(a3 + 24) - 8) + 64) + ((v13 + 16) & ~v13) + (v16 & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 121;
  v18 = (a2 - v14 + 255) >> 8;
  if (v17 <= 3)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v22 = *&a1[v17];
      if (!v22)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v24 = (v22 - 1) << (8 * v17);
    if (v17 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v14 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v7 >= v12)
  {
    v29 = *(v6 + 48);

    return v29(a1, v7, v5);
  }

  else
  {
    v26 = (((&a1[v16] & ~v15) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v10 & 0x80000000) != 0)
    {
      v28 = (*(v9 + 48))((v26 + v13 + 8) & ~v13);
    }

    else
    {
      v27 = *v26;
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v28 = v27 + 1;
    }

    if (v28 >= 2)
    {
      return v28 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for TableViewListCore(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  if (v12 - 1 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v12 - 1;
  }

  v15 = ((v11 + 16) & ~v11) + *(v9 + 64);
  v16 = (v11 | 7) + *(*(v6 - 8) + 64);
  v17 = ((v15 + (v16 & ~(v11 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 121;
  if (v14 >= a3)
  {
    v21 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v18 = (a3 - v14 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v14 >= a2)
    {
LABEL_20:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v8 >= v13)
      {
        v28 = *(v7 + 56);

        v28(a1);
      }

      else
      {
        v24 = (&a1[v16] & ~(v11 | 7));
        if (v13 >= a2)
        {
          v29 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v10 & 0x80000000) != 0)
          {
            v30 = *(v9 + 56);
            v31 = a2 + 1;

            v30((v29 + v11 + 8) & ~v11, v31);
          }

          else if (((a2 + 1) & 0x80000000) != 0)
          {
            *v29 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v29 = a2;
          }
        }

        else
        {
          if (v15 <= 3)
          {
            v25 = ~(-1 << (8 * v15));
          }

          else
          {
            v25 = -1;
          }

          if (v15)
          {
            v26 = v25 & (a2 - v12);
            if (v15 <= 3)
            {
              v27 = v15;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v15);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }
  }

  v22 = ~v14 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_30:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

uint64_t getEnumTagSinglePayload for TableViewListCore.Configuration.TableViewConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 121))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TableViewListCore.Configuration.TableViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for Attribute<UIScrollView?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<UIScrollView?>)
  {
    type metadata accessor for UIScrollView?(255);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<UIScrollView?>);
    }
  }
}

void type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation();
    v5[1] = MEMORY[0x1E6980A30];
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ListUsesLegacySafeAreaPropagation, _SafeAreaRegionsIgnoringLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation()
{
  result = lazy protocol witness table cache variable for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation;
  if (!lazy protocol witness table cache variable for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListUsesLegacySafeAreaPropagation, &unk_1EFF9D0C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListUsesLegacySafeAreaPropagation and conformance ListUsesLegacySafeAreaPropagation);
  }

  return result;
}

void type metadata accessor for Attribute<[ContentScrollViewBox]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<[ContentScrollViewBox]>)
  {
    type metadata accessor for Attribute<UInt32>(255, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<[ContentScrollViewBox]>);
    }
  }
}

uint64_t type metadata completion function for ListRepresentable(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    type metadata accessor for Binding();
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ListRepresentable(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 16) & ~v9) + *(v7 + 64);
  v11 = ((((((v10 + (((v9 | 7) + v5) & ~(v9 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 150) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 40;
  v12 = v9 | *(v4 + 80) & 0xF8;
  if (v12 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || v11 > 0x18)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));

    return v3;
  }

  (*(v4 + 16))(a1);
  v17 = v3 + v5 + 7;
  v18 = a2 + v5 + 7;
  v19 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v22 = (*(v7 + 48))(v19 + 1, v8, v6);
    v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
    if (v22)
    {
LABEL_14:
      memcpy(v21, (v18 & 0xFFFFFFFFFFFFFFF8), v10);
      goto LABEL_17;
    }
  }

  else
  {
    v20 = *v19;
    if (*v19 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    v21 = (v17 & 0xFFFFFFFFFFFFFFF8);
    if (v20 != -1)
    {
      goto LABEL_14;
    }
  }

  *v21 = *(v18 & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v19;
  v24 = *(v7 + 16);

  v24(v23 + 1, v19 + 1, v6);
LABEL_17:
  v25 = ((v17 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
  v26 = ((v18 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  v28 = *(v26 + 16);
  v29 = *(v26 + 48);
  *(v25 + 32) = *(v26 + 32);
  *(v25 + 48) = v29;
  *v25 = v27;
  *(v25 + 16) = v28;
  v30 = *(v26 + 64);
  v31 = *(v26 + 80);
  v32 = *(v26 + 96);
  *(v25 + 105) = *(v26 + 105);
  *(v25 + 80) = v31;
  *(v25 + 96) = v32;
  *(v25 + 64) = v30;
  *(v25 + 124) = *(v26 + 124);
  v33 = ((v25 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v34 = ((v26 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v33 = *v34;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = *v36;
  *(v35 + 8) = *(v36 + 8);
  *v35 = v37;
  v38 = (v35 + 17) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v36 + 17) & 0xFFFFFFFFFFFFFFF8;
  v40 = *(v39 + 24);
  if (v40 < 0xFFFFFFFF)
  {
    v41 = *v39;
    v42 = *(v39 + 16);
    *(v38 + 32) = *(v39 + 32);
    *v38 = v41;
    *(v38 + 16) = v42;
  }

  else
  {
    *(v38 + 24) = v40;
    *(v38 + 32) = *(v39 + 32);
    (**(v40 - 8))();
  }

  return v3;
}

void *destroy for ListRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56);
  v6 = *(a2 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + a1 + (v8 | 7)) & ~(v8 | 7);
  v10 = ~v8;
  v11 = v8 + 16;
  v12 = *(v7 + 64);
  v13 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) != 0)
  {
    v15 = v11 & ~v8;
    if (!(*(v7 + 48))((v13 + v8 + 8) & v10))
    {
LABEL_5:

      (*(v7 + 8))((v13 + v8 + 8) & v10, v6);
    }
  }

  else
  {
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v11 & ~v8;
    if (v14 == -1)
    {
      goto LABEL_5;
    }
  }

  result = ((((((v12 + v15 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 150) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(result);
  }

  return result;
}

uint64_t initializeWithCopy for ListRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 48);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = ~v9;
  v14 = (v9 + 16) & ~v9;
  v15 = *(v8 + 64);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v8 + 84) & 0x80000000) != 0)
  {
    v18 = v14 + v15;
    if ((*(v8 + 48))((v16 + v9 + 8) & v13))
    {
LABEL_5:
      memcpy(v11, v12, v18);
      goto LABEL_8;
    }
  }

  else
  {
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v14 + v15;
    if (v17 != -1)
    {
      goto LABEL_5;
    }
  }

  *v11 = *v12;
  v19 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v16;
  v20 = v9 + 8;
  v21 = v19 + v9 + 8;
  v22 = v16 + v20;
  v23 = *(v8 + 16);

  v23(v21 & v13, v22 & v13, v7);
LABEL_8:
  v24 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  v27 = *(v25 + 16);
  v28 = *(v25 + 48);
  *(v24 + 32) = *(v25 + 32);
  *(v24 + 48) = v28;
  *v24 = v26;
  *(v24 + 16) = v27;
  v29 = *(v25 + 64);
  v30 = *(v25 + 80);
  v31 = *(v25 + 96);
  *(v24 + 105) = *(v25 + 105);
  *(v24 + 80) = v30;
  *(v24 + 96) = v31;
  *(v24 + 64) = v29;
  *(v24 + 124) = *(v25 + 124);
  v32 = ((v24 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v33 = ((v25 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v32 = *v33;
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  *(v34 + 8) = *(v35 + 8);
  *v34 = v36;
  v37 = (v34 + 17) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v35 + 17) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v38 + 24);
  if (v39 < 0xFFFFFFFF)
  {
    v40 = *v38;
    v41 = *(v38 + 16);
    *(v37 + 32) = *(v38 + 32);
    *v37 = v40;
    *(v37 + 16) = v41;
  }

  else
  {
    *(v37 + 24) = v39;
    *(v37 + 32) = *(v38 + 32);
    (**(v39 - 8))();
  }

  return a1;
}

uint64_t assignWithCopy for ListRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 | 7) + *(v6 + 40);
  v11 = ((v10 + a1) & ~(v9 | 7));
  v12 = ((v10 + a2) & ~(v9 | 7));
  v13 = *(v8 + 84);
  v14 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v15 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  v46 = ~v9;
  if ((v13 & 0x80000000) == 0)
  {
    v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
    v17 = *v16;
    if (*v16 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 + 1;
    if (*v15 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v18)
    {
      goto LABEL_9;
    }

    *v11 = *v12;
    *v15 = *v16;
    v20 = *(v8 + 16);

    v20((v15 + v9 + 8) & v46, (v16 + v9 + 8) & v46, v7);
    goto LABEL_12;
  }

  v45 = (v10 + a1) & ~(v9 | 7);
  v44 = ((v9 + 16) & ~v9) + *(v8 + 64);
  v19 = *(v8 + 48);
  v43 = v19((v15 + v9 + 8) & ~v9, v13, v7);
  v16 = ((v12 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = v45;
  v18 = v19((v16 + v9 + 8) & ~v9, v13, v7);
  v14 = v44;
  if (v43)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v18)
  {

    (*(v8 + 8))((v15 + v9 + 8) & v46, v7);
LABEL_9:
    memcpy(v11, v12, v14);
    goto LABEL_12;
  }

  *v11 = *v12;

  *v15 = *v16;

  (*(v8 + 24))((v15 + v9 + 8) & v46, (v16 + v9 + 8) & v46, v7);
LABEL_12:
  v21 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v21 = *v22;
  v23 = *(v22 + 8);
  v24 = *(v22 + 24);
  *(v21 + 40) = *(v22 + 40);
  *(v21 + 24) = v24;
  *(v21 + 8) = v23;
  *(v21 + 42) = *(v22 + 42);
  *(v21 + 48) = *(v22 + 48);
  *(v21 + 56) = *(v22 + 56);
  v25 = *(v22 + 64);
  *(v21 + 72) = *(v22 + 72);
  *(v21 + 64) = v25;
  v26 = *(v22 + 80);
  *(v21 + 88) = *(v22 + 88);
  *(v21 + 80) = v26;
  v27 = *(v22 + 96);
  *(v21 + 104) = *(v22 + 104);
  *(v21 + 96) = v27;
  v28 = *(v22 + 112);
  *(v21 + 120) = *(v22 + 120);
  *(v21 + 112) = v28;
  *(v21 + 124) = *(v22 + 124);
  *(v21 + 128) = *(v22 + 128);
  v29 = ((v21 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  v30 = ((v22 + 135) & 0xFFFFFFFFFFFFFFFCLL);
  *v29 = *v30;
  v29[1] = v30[1];
  v31 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *v31 = v33;
  v34 = (v31 + 17) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v32 + 17) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v35 + 24);
  if (*(v34 + 24) < 0xFFFFFFFFuLL)
  {
    if (v36 < 0xFFFFFFFF)
    {
      v40 = *v35;
      v41 = *(v35 + 16);
      *(v34 + 32) = *(v35 + 32);
      *v34 = v40;
      *(v34 + 16) = v41;
    }

    else
    {
      *(v34 + 24) = v36;
      *(v34 + 32) = *(v35 + 32);
      (**(v36 - 8))();
    }
  }

  else if (v36 < 0xFFFFFFFF)
  {
    v37 = (v31 + 17) & 0xFFFFFFFFFFFFFFF8;
    __swift_destroy_boxed_opaque_existential_1(v34);
    v38 = *v35;
    v39 = *(v35 + 16);
    *(v37 + 32) = *(v35 + 32);
    *v37 = v38;
    *(v37 + 16) = v39;
  }

  else
  {
    __swift_assign_boxed_opaque_existential_1(v34, v35);
  }

  return a1;
}