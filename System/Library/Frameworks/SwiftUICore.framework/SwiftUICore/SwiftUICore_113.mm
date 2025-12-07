uint64_t protocol witness for CodingKey.init(intValue:) in conformance Color.RGBADefinition<A, B>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized Color.RGBADefinition.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.RGBADefinition<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for Color.RGBADefinition<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.RGBADefinition<A, B>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for Color.RGBADefinition<A, B>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.GradientDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 1702060386;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Color.GradientDefinition.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.GradientDefinition.CodingKeys(uint64_t a1, double a2)
{
  lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v3);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.GradientDefinition.CodingKeys(uint64_t a1, double a2)
{
  lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v3);
}

uint64_t Color.NamedDefinition.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.NamedDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys, &unk_1F0074758, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  v11 = v13[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t Color.OpacityDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t Color.OpacityDefinition.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7974696361706FLL;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t Color.OpacityDefinition.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v18 = a2[4];
  v19 = v4;
  v6 = type metadata accessor for Color.OpacityDefinition.CodingKeys(255, v4, v5, v18);
  swift_getWitnessTable(protocol conformance descriptor for Color.OpacityDefinition<A>.CodingKeys, v6);
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v20;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = *v11;
  v23 = 0;
  type metadata accessor for ProxyCodable<Color>(0, v12, v13, v14);
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);

  v15 = v21;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v15)
  {
    v22 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t Color.OpacityDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Color.OpacityDefinition.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable(protocol conformance descriptor for Color.OpacityDefinition<A>.CodingKeys, v13);
  v38 = type metadata accessor for KeyedDecodingContainer();
  v33 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v15 = &v29 - v14;
  v35 = a2;
  v36 = a3;
  v16 = type metadata accessor for Color.OpacityDefinition(0, a2, a3, a4);
  v30 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v15;
  v19 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v16;
  v23 = v33;
  v24 = v34;
  v25 = v35;
  type metadata accessor for ProxyCodable<Color>(0, v20, v21, v22);
  v41 = 0;
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v18 = v42;
  v40 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 8))(v37, v38);
  v26 = v39;
  (*(v31 + 32))(&v18[*(v39 + 44)], v24, v25);
  v27 = v30;
  (*(v30 + 16))(v32, v18, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v27 + 8))(v18, v26);
}

uint64_t Color.HierarchicalOpacityDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.HierarchicalOpacityDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys, &unk_1F0074858, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v14[1] = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v8;
  v16 = 0;
  type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
  v12 = v14[2];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v12)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void Color.HierarchicalOpacityDefinition.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.HierarchicalOpacityDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys, &unk_1F0074858, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v6;
    v13 = v16;
    type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
    v18 = 0;
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v19;
    v17 = 1;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v12 + 8))(v8, v5);
    *v13 = v14;
    v13[1] = v15;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t Color.OperationDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.OperationDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys, &unk_1F00748E8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v15 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v8;
  v17 = 0;
  type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
  v12 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v12)
  {

    v18 = v15;
    v17 = 1;

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void Color.OperationDefinition.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.OperationDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys, &unk_1F00748E8, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v6;
    v13 = v17;
    type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
    v18 = 0;
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v19;
    v18 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v8, v5);
    v14 = v19;
    *v13 = v16;
    v13[1] = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t Color.MixDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.MixDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys, &unk_1F0074978, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v17 = v1[1];
  v16 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v8;
  v19 = 0;
  type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
  v12 = v18;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v12)
  {
  }

  else
  {
    v13 = v16;

    v20 = v17;
    v19 = 1;

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    LOBYTE(v20) = v13;
    v19 = 2;
    type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>(0);
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type CodableRawRepresentable<ResolvedGradient.ColorSpace> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>, protocol conformance descriptor for CodableRawRepresentable<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void Color.MixDefinition.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.MixDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys, &unk_1F0074978, MEMORY[0x1E69E6F48]);
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v6;
    type metadata accessor for ProxyCodable<Color>(0, v9, v10, v11);
    v21 = 0;
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
    v13 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v22;
    v21 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v22;
    type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>(0);
    v21 = 2;
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type CodableRawRepresentable<ResolvedGradient.ColorSpace> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>, protocol conformance descriptor for CodableRawRepresentable<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v22;
    LOBYTE(v22) = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    (*(v12 + 8))(v8, v13);
    *a2 = v19;
    *(a2 + 8) = v14;
    *(a2 + 16) = v18;
    *(a2 + 20) = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.NamedDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x6150656C646E7562;
  }

  else
  {
    return 1701667182;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Color.NamedDefinition.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.NamedDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.NamedDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Color.NamedDefinition@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized Color.NamedDefinition.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Color.OpacityDefinition<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Pair.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.OpacityDefinition<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Color.OpacityDefinition.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Color.OpacityDefinition<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance ResetDeltaModifier.ChildPhase();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.OpacityDefinition<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for Color.OpacityDefinition<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.OpacityDefinition<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for Color.OpacityDefinition<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.HierarchicalOpacityDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x6C6576656CLL;
  }

  else
  {
    return 1702060386;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Color.HierarchicalOpacityDefinition.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.HierarchicalOpacityDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.HierarchicalOpacityDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.OperationDefinition.CodingKeys()
{
  if (*v0)
  {
    return 7563378;
  }

  else
  {
    return 7563372;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Color.OperationDefinition.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.OperationDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.OperationDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.MixDefinition.CodingKeys()
{
  v1 = 7563372;
  v2 = 0x617053726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697463617266;
  }

  if (*v0)
  {
    v1 = 7563378;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.MixDefinition.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Color.MixDefinition.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.MixDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.MixDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.CGDefinition.CodingKeys()
{
  if (*v0)
  {
    return 0x6E656E6F706D6F63;
  }

  else
  {
    return 0x617053726F6C6F63;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance Color.CGDefinition.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.CGDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.CGDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.CGDefinition.CodingKeys and conformance Color.CGDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Color.VibrancyDefinition.CodingKeys()
{
  v1 = 0x4D746E6172626976;
  if (*v0 != 1)
  {
    v1 = 0x7972616974726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Color.VibrancyDefinition.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Color.VibrancyDefinition.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color.VibrancyDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Color.VibrancyDefinition.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Color.VibrancyDefinition.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Color.VibrancyDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys, &unk_1F0074048, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 3);
  v10 = *(v1 + 7);
  v25 = *(v1 + 5);
  v26 = v10;
  v27 = *(v1 + 9);
  v23 = *(v1 + 1);
  v24 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v17 = v8;
  v22 = 0;
  type metadata accessor for ProxyCodable<Color>(0, v11, v12, v13);
  lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
  v14 = v16[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
  }

  else
  {

    v19 = v25;
    v20 = v26;
    v21 = v27;
    v18 = v24;
    v17 = v23;
    v22 = 1;
    lazy protocol witness table accessor for type _ColorMatrix and conformance _ColorMatrix();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void Color.VibrancyDefinition.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v19 = a2;
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.VibrancyDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys, &unk_1F0074048, MEMORY[0x1E69E6F48]);
  v20 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v5;
    v12 = v19;
    type metadata accessor for ProxyCodable<Color>(0, v8, v9, v10);
    LOBYTE(v21[0]) = 0;
    lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
    v13 = v20;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v22;
    v30 = 1;
    lazy protocol witness table accessor for type _ColorMatrix and conformance _ColorMatrix();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v33;
    v39 = v34;
    v40 = v35;
    v36 = v31;
    v37 = v32;
    v29 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    (*(v11 + 8))(v7, v13);
    *(&v21[2] + 8) = v38;
    *(&v21[1] + 8) = v37;
    *&v21[0] = v14;
    *(&v21[3] + 8) = v39;
    *(&v21[4] + 8) = v40;
    *(v21 + 8) = v36;
    DWORD2(v21[5]) = v16;
    v17 = v21[3];
    v12[2] = v21[2];
    v12[3] = v17;
    v12[4] = v21[4];
    *(v12 + 76) = *(&v21[4] + 12);
    v18 = v21[1];
    *v12 = v21[0];
    v12[1] = v18;
    outlined init with copy of Color.VibrancyDefinition(v21, &v22);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v22 = v14;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v23 = v36;
    v28 = v16;
    outlined destroy of Color.VibrancyDefinition(&v22);
  }
}

uint64_t Color.ProviderTag.PlatformTag.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0xB0);
  v6 = static CoreGlue2.shared;
  v5();

  type metadata accessor for Color.ProviderTag.AnyPlatformTag();
  v7 = swift_dynamicCastMetatype();
  if (v7)
  {
    v8 = v7;
    outlined init with copy of AnyTrackedValue(a1, v11);
    v9 = (*(v8 + 80))(v11);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v2)
    {
      *a2 = v9;
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Color.ProviderTag.AnyPlatformTag@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 80))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Color.ProviderTag.PlatformTag()
{
  return (*(**v0 + 96))();
}

{
  return sub_18D3AE180();
}

uint64_t Color.ProviderTag.CorePlatformTag.init(from:)(void *a1)
{
  v7 = *v1;
  v3 = type metadata accessor for DecodingError();
  swift_allocError();
  v5 = v4;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
  *v5 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return swift_deallocPartialClassInstance();
}

uint64_t Color.ProviderTag.CorePlatformTag.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for EncodingError();
  swift_allocError();
  v6 = v5;
  type metadata accessor for (Any, EncodingError.Context)(0);
  v6[3] = v3;
  *v6 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  dispatch thunk of Encoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6B30], v4);
  return swift_willThrow();
}

double sub_18D808D90(uint64_t a1)
{

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Color.ProviderTag.CorePlatformTag.NullColorProvider(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EncodingError();
  swift_allocError();
  v6 = v5;
  type metadata accessor for (Any, EncodingError.Context)(0);
  *(v6 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6B30], v4);
  return swift_willThrow();
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.ProviderTag.CorePlatformTag.NullColorProvider(void *a1)
{
  v3 = type metadata accessor for DecodingError();
  swift_allocError();
  v5 = v4;
  type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
  *v5 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
  return swift_willThrow();
}

void specialized static CGColorRef.deserializeCGColor(from:)(uint64_t a1)
{
  outlined init with copy of AnyTrackedValue(a1, v8);
  Color.CGDefinition.init(from:)(v8, &v9);
  if (v1)
  {
    return;
  }

  v3 = v10;
  v2 = v11;
  if (!v10 || (v4 = v9, , v5 = MEMORY[0x193ABEC20](v4, v3), , v6 = CGColorSpaceCreateWithName(v5), v5, !v6))
  {

LABEL_9:

    CGColorCreateGenericGray(0.0, 0.0);
    return;
  }

  if (!v2)
  {

    goto LABEL_9;
  }

  v7 = CGColorCreate(v6, (v2 + 32));

  if (!v7)
  {
    CGColorCreateGenericGray(0.0, 0.0);
  }
}

void lazy protocol witness table accessor for type [CGFloat] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for [CGFloat]();
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.VibrancyDefinition.CodingKeys, &unk_1F0074048, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.VibrancyDefinition.CodingKeys, &unk_1F0074048, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.VibrancyDefinition.CodingKeys, &unk_1F0074048, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.VibrancyDefinition.CodingKeys, &unk_1F0074048, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.VibrancyDefinition.CodingKeys and conformance Color.VibrancyDefinition.CodingKeys);
  }
}

void lazy protocol witness table accessor for type _ColorMatrix and conformance _ColorMatrix()
{
  if (!lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ColorMatrix, &type metadata for _ColorMatrix, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix);
  }
}

{
  if (!lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix)
  {
    swift_getWitnessTable(protocol conformance descriptor for _ColorMatrix, &type metadata for _ColorMatrix, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _ColorMatrix and conformance _ColorMatrix);
  }
}

void lazy protocol witness table accessor for type ProxyCodable<Color> and conformance ProxyCodable<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t outlined init with copy of Color.VibrancyDefinition(uint64_t *a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 3);
  v4 = *(a1 + 5);
  v5 = *(a1 + 7);
  *(a2 + 72) = *(a1 + 9);
  *(a2 + 56) = v5;
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 88) = *(a1 + 22);

  return a2;
}

void instantiation function for generic protocol witness table for Color.ProviderTag(uint64_t a1)
{
  lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type Color.ProviderTag and conformance Color.ProviderTag();
  *(a1 + 16) = v3;
}

void lazy protocol witness table accessor for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void *), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for Color.RGBADefinition<Float, Float>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

unint64_t *assignWithTake for Color.ProviderTag(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v2;
  }

  else if (v2 < 0xFFFFFFFF)
  {
    v4 = result;

    result = v4;
    *v4 = v2;
  }

  else
  {
    *result = v2;
    v3 = result;

    return v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Color.ProviderTag(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFE6 && *(a1 + 8))
  {
    return (*a1 + 2147483623);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 24;
  if (v4 >= 0x1A)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Color.ProviderTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFE7)
  {
    *result = 0;
    *result = a2 - 2147483623;
    if (a3 >= 0x7FFFFFE7)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFE7)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 24;
    }
  }

  return result;
}

uint64_t type metadata completion function for Color.RGBADefinition(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Color.RGBADefinition(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(v6 + 80);
  v9 = v7 + v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 80);
  v12 = v7 + v11;
  v13 = ((v7 + v11 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v11) + *(v10 + 64);
  if ((v11 | v8) > 7 || ((*(v10 + 80) | *(v6 + 80)) & 0x100000) != 0 || v13 > 0x18)
  {
    v16 = *a2;
    *v3 = *a2;
    v3 = (v16 + (((v11 | v8) + 16) & ~(v11 | v8)));
  }

  else
  {
    v17 = ~v8;
    v23 = v4;
    v24 = ~v11;
    v18 = *(v6 + 16);
    v18(a1, a2, v5);
    v20 = (a2 + v9) & v17;
    v18(((v3 + v9) & v17), v20, v5);
    v21 = (v9 + v20) & v17;
    v18(((v9 + ((v3 + v9) & v17)) & v17), v21, v5);
    (*(v10 + 16))((((v9 + ((v3 + v9) & v17)) & v17) + v12) & v24, (v21 + v12) & v24, v23);
  }

  return v3;
}

uint64_t destroy for Color.RGBADefinition(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(a1, v4);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = (v7 + v8 + a1) & ~v8;
  v6(v9, v4);
  v10 = (v7 + v8 + v9) & ~v8;
  v6(v10, v4);
  v11 = *(*(a2 + 24) - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + v7 + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t initializeWithCopy for Color.RGBADefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10 + a2) & ~v10;
  v8((v9 + v10 + a1) & ~v10, v11, v6);
  v12 = (v9 + v10 + v11) & ~v10;
  v8((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, v6);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 16))((v9 + *(v13 + 80) + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & ~*(v13 + 80), (v9 + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithCopy for Color.RGBADefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 24);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10 + a2) & ~v10;
  v8((v9 + v10 + a1) & ~v10, v11, v6);
  v12 = (v9 + v10 + v11) & ~v10;
  v8((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, v6);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 24))((v9 + *(v13 + 80) + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & ~*(v13 + 80), (v9 + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t initializeWithTake for Color.RGBADefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10 + a2) & ~v10;
  v8((v9 + v10 + a1) & ~v10, v11, v6);
  v12 = (v9 + v10 + v11) & ~v10;
  v8((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, v6);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 32))((v9 + *(v13 + 80) + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & ~*(v13 + 80), (v9 + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t assignWithTake for Color.RGBADefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 40);
  v8(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(v7 + 80);
  v11 = (v9 + v10 + a2) & ~v10;
  v8((v9 + v10 + a1) & ~v10, v11, v6);
  v12 = (v9 + v10 + v11) & ~v10;
  v8((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10, v12, v6);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 40))((v9 + *(v13 + 80) + ((v9 + v10 + ((v9 + v10 + a1) & ~v10)) & ~v10)) & ~*(v13 + 80), (v9 + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for Color.RGBADefinition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 64);
  v10 = *(v4 + 80);
  v11 = *(v7 + 80);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 + v10;
  v14 = v9 + v11;
  v15 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v16 = ((v14 + ((v13 + (v13 & ~v10)) & ~v10)) & ~v11) + *(*(v6 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((v14 + ((v13 + ((a1 + v13) & ~v10)) & ~v10)) & ~v11, v8, v6);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

char *storeEnumTagSinglePayload for Color.RGBADefinition(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v5 + 80);
  v12 = *(v8 + 80);
  if (v9 <= v6)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = ((v10 + v12 + ((v10 + v11 + ((v10 + v11) & ~v11)) & ~v11)) & ~v12) + *(*(v7 - 8) + 64);
  v15 = a3 >= v13;
  v16 = a3 - v13;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v27 = *(v5 + 56);

    return v27();
  }

  else
  {
    v25 = *(v8 + 56);
    v26 = (v10 + v12 + ((v10 + v11 + (&result[v10 + v11] & ~v11)) & ~v11)) & ~v12;

    return v25(v26);
  }
}

void *initializeBufferWithCopyOfBuffer for Color.CGDefinition(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for Color.CGDefinition(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for Color.CGDefinition(void *a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for Color.CGDefinition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Color.CGDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t initializeWithCopy for Color.VibrancyDefinition(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 88) = *(a2 + 22);

  return a1;
}

uint64_t *assignWithCopy for Color.VibrancyDefinition(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 22) = *(a2 + 22);
  return a1;
}

uint64_t *assignWithTake for Color.VibrancyDefinition(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 22) = *(a2 + 22);
  return a1;
}

uint64_t getEnumTagSinglePayload for Color.VibrancyDefinition(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 92))
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

uint64_t storeEnumTagSinglePayload for Color.VibrancyDefinition(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 92) = 1;
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

    *(result + 92) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Color.ProviderTag.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Color.ProviderTag.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void lazy protocol witness table accessor for type Color.GradientDefinition and conformance Color.GradientDefinition()
{
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.GradientDefinition, &type metadata for Color.GradientDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.GradientDefinition, &type metadata for Color.GradientDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.GradientDefinition and conformance Color.GradientDefinition);
  }
}

void lazy protocol witness table accessor for type Color.NamedDefinition and conformance Color.NamedDefinition()
{
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.NamedDefinition, &type metadata for Color.NamedDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.NamedDefinition, &type metadata for Color.NamedDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.NamedDefinition and conformance Color.NamedDefinition);
  }
}

void lazy protocol witness table accessor for type Color.OpacityDefinition<Float> and conformance Color.OpacityDefinition<A>(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for Color.OpacityDefinition<Float>(255, &lazy cache variable for type metadata for Color.OpacityDefinition<Float>, MEMORY[0x1E69E6448], MEMORY[0x1E69E6478], MEMORY[0x1E69E6458]);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void lazy protocol witness table accessor for type Color.OpacityDefinition<Double> and conformance Color.OpacityDefinition<A>(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for Color.OpacityDefinition<Float>(255, &lazy cache variable for type metadata for Color.OpacityDefinition<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63E8], MEMORY[0x1E69E63C0]);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void type metadata accessor for Color.OpacityDefinition<Float>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = type metadata accessor for Color.OpacityDefinition(0, a3, a4, a5);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition()
{
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.HierarchicalOpacityDefinition, &type metadata for Color.HierarchicalOpacityDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.HierarchicalOpacityDefinition, &type metadata for Color.HierarchicalOpacityDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition and conformance Color.HierarchicalOpacityDefinition);
  }
}

void lazy protocol witness table accessor for type Color.OperationDefinition and conformance Color.OperationDefinition()
{
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.OperationDefinition, &type metadata for Color.OperationDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.OperationDefinition, &type metadata for Color.OperationDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.OperationDefinition and conformance Color.OperationDefinition);
  }
}

void lazy protocol witness table accessor for type Color.MixDefinition and conformance Color.MixDefinition()
{
  if (!lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.MixDefinition, &type metadata for Color.MixDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.MixDefinition, &type metadata for Color.MixDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.MixDefinition and conformance Color.MixDefinition);
  }
}

uint64_t specialized Color.NamedDefinition.init(from:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Color.NamedDefinition.CodingKeys>, lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys, &unk_1F0074758, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized Color.ProviderTag.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44486D6F74737563 && a2 == 0xE900000000000052 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F72676B6361625FLL && a2 == 0xEB00000000646E75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E65636361 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 13168 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E65746E6F635FLL && a2 == 0xED0000656C797453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F6C6F4379656B5FLL && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4B6D6F747375635FLL && a2 == 0xEF726F6C6F437965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6A6441746E69745FLL && a2 == 0xEF746E656D747375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x727574617365645FLL && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x64656D616ELL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7974696361706FLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x676E69747465735FLL && a2 == 0xEF7974696361704FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018DD7B490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018DD7B4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 7891309 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7061724765726F63 && a2 == 0xEC00000073636968 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6C6F4374694B6975 && a2 == 0xEA0000000000726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6F4374694B707061 && a2 == 0xEB00000000726F6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6D6F6F7264616568 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x63537261656E696CLL && a2 == 0xEB00000000656C61)
  {

    return 25;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

uint64_t specialized Color.MixDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7563372 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697463617266 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized Color.VibrancyDefinition.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746E6172626976 && a2 == 0xED00007869727461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616974726574 && a2 == 0xEF7974696361704FLL)
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

void type metadata accessor for CustomColorProvider<Color>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CustomColorProvider<Color>)
  {
    lazy protocol witness table accessor for type Color and conformance Color();
    v3 = type metadata accessor for CustomColorProvider(a1, &type metadata for Color, v2, &protocol witness table for Color);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for CustomColorProvider<Color>);
    }
  }
}

void type metadata accessor for Color.RGBADefinition<Float, Float>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[8] = v3;
    v8[9] = v4;
    v8[0] = MEMORY[0x1E69E6448];
    v8[1] = MEMORY[0x1E69E6448];
    v8[2] = MEMORY[0x1E69E6478];
    v8[3] = MEMORY[0x1E69E6458];
    v8[4] = MEMORY[0x1E69E6478];
    v8[5] = MEMORY[0x1E69E6458];
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for KeyedDecodingContainer<Color.RGBADefinition<Float, Float>.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Color.RGBADefinition<Float, Float>(255, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys);
    v7 = v6;
    lazy protocol witness table accessor for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float>.CodingKeys and conformance Color.RGBADefinition<A, B>.CodingKeys, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>.CodingKeys, type metadata accessor for Color.RGBADefinition.CodingKeys, protocol conformance descriptor for Color.RGBADefinition<A, B>.CodingKeys);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for CustomHDRColorProvider<HDRColor>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CustomHDRColorProvider<HDRColor>)
  {
    lazy protocol witness table accessor for type HDRColor and conformance HDRColor();
    v3 = type metadata accessor for CustomHDRColorProvider(a1, &unk_1F00749F0, v2, &protocol witness table for HDRColor);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for CustomHDRColorProvider<HDRColor>);
    }
  }
}

void lazy protocol witness table accessor for type HDRColor and conformance HDRColor()
{
  if (!lazy protocol witness table cache variable for type HDRColor and conformance HDRColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for HDRColor, &unk_1F00749F0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HDRColor and conformance HDRColor);
  }
}

{
  if (!lazy protocol witness table cache variable for type HDRColor and conformance HDRColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for HDRColor, &unk_1F00749F0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HDRColor and conformance HDRColor);
  }
}

void lazy protocol witness table accessor for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.MixDefinition.CodingKeys, &unk_1F0074978, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.MixDefinition.CodingKeys, &unk_1F0074978, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.MixDefinition.CodingKeys, &unk_1F0074978, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.MixDefinition.CodingKeys, &unk_1F0074978, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.MixDefinition.CodingKeys and conformance Color.MixDefinition.CodingKeys);
  }
}

void type metadata accessor for CodableRawRepresentable<ResolvedGradient.ColorSpace>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<ResolvedGradient.ColorSpace>)
  {
    lazy protocol witness table accessor for type ResolvedGradient.ColorSpace and conformance ResolvedGradient.ColorSpace();
    v5[0] = &type metadata for ResolvedGradient.ColorSpace;
    v5[1] = v2;
    v5[2] = MEMORY[0x1E69E7528];
    v5[3] = MEMORY[0x1E69E7510];
    v3 = type metadata accessor for CodableRawRepresentable(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for CodableRawRepresentable<ResolvedGradient.ColorSpace>);
    }
  }
}

void lazy protocol witness table accessor for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.OperationDefinition.CodingKeys, &unk_1F00748E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.OperationDefinition.CodingKeys, &unk_1F00748E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.OperationDefinition.CodingKeys, &unk_1F00748E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.OperationDefinition.CodingKeys, &unk_1F00748E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.OperationDefinition.CodingKeys and conformance Color.OperationDefinition.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.HierarchicalOpacityDefinition.CodingKeys, &unk_1F0074858, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.HierarchicalOpacityDefinition.CodingKeys, &unk_1F0074858, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.HierarchicalOpacityDefinition.CodingKeys, &unk_1F0074858, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.HierarchicalOpacityDefinition.CodingKeys, &unk_1F0074858, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityDefinition.CodingKeys and conformance Color.HierarchicalOpacityDefinition.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.NamedDefinition.CodingKeys, &unk_1F0074758, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.NamedDefinition.CodingKeys, &unk_1F0074758, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.NamedDefinition.CodingKeys, &unk_1F0074758, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.NamedDefinition.CodingKeys, &unk_1F0074758, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.NamedDefinition.CodingKeys and conformance Color.NamedDefinition.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.GradientDefinition.CodingKeys, &unk_1F00746C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.GradientDefinition.CodingKeys, &unk_1F00746C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.GradientDefinition.CodingKeys, &unk_1F00746C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.GradientDefinition.CodingKeys, &unk_1F00746C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.GradientDefinition.CodingKeys and conformance Color.GradientDefinition.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition()
{
  if (!lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.EitherGradientDefinition, &type metadata for Gradient.EitherGradientDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.EitherGradientDefinition, &type metadata for Gradient.EitherGradientDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.EitherGradientDefinition and conformance Gradient.EitherGradientDefinition);
  }
}

void type metadata accessor for KeyedEncodingContainer<Color.ProviderTag.LinearScaleCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider()
{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CorePlatformTag.NullColorProvider, &unk_1F0074638, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CorePlatformTag.NullColorProvider, &unk_1F0074638, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.ProviderTag.CorePlatformTag.NullColorProvider, &unk_1F0074638, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.ProviderTag.CorePlatformTag.NullColorProvider and conformance Color.ProviderTag.CorePlatformTag.NullColorProvider);
  }
}

void lazy protocol witness table accessor for type LinearScaleColorProvider and conformance LinearScaleColorProvider()
{
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearScaleColorProvider, &type metadata for LinearScaleColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearScaleColorProvider, &type metadata for LinearScaleColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearScaleColorProvider, &type metadata for LinearScaleColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearScaleColorProvider, &type metadata for LinearScaleColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for LinearScaleColorProvider, &type metadata for LinearScaleColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LinearScaleColorProvider and conformance LinearScaleColorProvider);
  }
}

void lazy protocol witness table accessor for type HeadroomColorProvider and conformance HeadroomColorProvider()
{
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for HeadroomColorProvider, &type metadata for HeadroomColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for HeadroomColorProvider, &type metadata for HeadroomColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for HeadroomColorProvider, &type metadata for HeadroomColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for HeadroomColorProvider, &type metadata for HeadroomColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for HeadroomColorProvider, &type metadata for HeadroomColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type HeadroomColorProvider and conformance HeadroomColorProvider);
  }
}

void lazy protocol witness table accessor for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider()
{
  if (!lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.DestinationOverProvider, &type metadata for Color.DestinationOverProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.DestinationOverProvider, &type metadata for Color.DestinationOverProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.DestinationOverProvider, &type metadata for Color.DestinationOverProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.DestinationOverProvider and conformance Color.DestinationOverProvider);
  }
}

void lazy protocol witness table accessor for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor()
{
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.HierarchicalOpacityColor, &type metadata for Color.HierarchicalOpacityColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.HierarchicalOpacityColor, &type metadata for Color.HierarchicalOpacityColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.HierarchicalOpacityColor, &type metadata for Color.HierarchicalOpacityColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.HierarchicalOpacityColor and conformance Color.HierarchicalOpacityColor);
  }
}

void lazy protocol witness table accessor for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider()
{
  if (!lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.SettingOpacityProvider, &type metadata for Color.SettingOpacityProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.SettingOpacityProvider, &type metadata for Color.SettingOpacityProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.SettingOpacityProvider, &type metadata for Color.SettingOpacityProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.SettingOpacityProvider and conformance Color.SettingOpacityProvider);
  }
}

void lazy protocol witness table accessor for type GradientColorProvider and conformance GradientColorProvider()
{
  if (!lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for GradientColorProvider, &type metadata for GradientColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for GradientColorProvider, &type metadata for GradientColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for GradientColorProvider, &type metadata for GradientColorProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GradientColorProvider and conformance GradientColorProvider);
  }
}

void lazy protocol witness table accessor for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider()
{
  if (!lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.TintAdjustmentProvider, &type metadata for Color.TintAdjustmentProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.TintAdjustmentProvider, &type metadata for Color.TintAdjustmentProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.TintAdjustmentProvider, &type metadata for Color.TintAdjustmentProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.TintAdjustmentProvider and conformance Color.TintAdjustmentProvider);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Color.MixDefinition(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 5);

  return a1;
}

uint64_t *assignWithCopy for Color.MixDefinition(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 5) = *(a2 + 5);
  return a1;
}

uint64_t assignWithTake for Color.MixDefinition(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t *assignWithCopy for Color.OperationDefinition(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t type metadata completion function for Color.OpacityDefinition(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Color.GradientDefinition(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for Color.GradientDefinition(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of EitherGradient(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for Color.GradientDefinition(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of EitherGradient(v6, v7);
  *(a1 + 16) = a2[2];
  return a1;
}

uint64_t getEnumTagSinglePayload for Color.GradientDefinition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for Color.GradientDefinition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void _s7SwiftUI014_VariadicView_D4RootPAAs5NeverO4BodyRtzrlE4body8childrenAeA01_cD9_ChildrenV_tFAA16LazyHStackLayoutV_Tt0g5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD75AB0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI014_VariadicView_D4RootPAAs5NeverO4BodyRtzrlE4body8childrenAeA01_cD9_ChildrenV_tFAA13_ZStackLayoutV_Tt0g5Tm(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](a2, 0xED000074756F7961);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void _s7SwiftUI014_VariadicView_D4RootPAAs5NeverO4BodyRtzrlE4body8childrenAeA01_cD9_ChildrenV_tFAA16LazyVStackLayoutV_Tt0g5()
{
  _StringGuts.grow(_:)(34);

  MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD758E0);
  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t static _ViewOutputs.multiView(inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v26 = *(a1 + 32);
  v27 = v5;
  v7 = *(a1 + 48);
  v28 = *(a1 + 64);
  v8 = *(a1 + 16);
  v25[0] = *a1;
  v25[1] = v8;
  v19 = v26;
  v20 = v7;
  v21 = *(a1 + 64);
  v29 = *(a1 + 80);
  LODWORD(v22) = *(a1 + 80);
  v17 = v25[0];
  v18 = v6;
  *(&v22 + 1) = a2;
  v23 = a3;
  v24 = 0;
  v9 = *&v25[0];
  outlined init with copy of _ViewInputs(v25, v15);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v9);
  result = (*(v10 + 8))(&v17, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    v13 = v24;
    v14 = HIDWORD(v24);
    v15[4] = v21;
    v15[5] = v22;
    v15[6] = v23;
    v16 = v24;
    v15[0] = v17;
    v15[1] = v18;
    v15[2] = v19;
    v15[3] = v20;

    result = outlined destroy of MakeViewRoot(v15);
    *a4 = v12;
    *(a4 + 8) = v13;
    *(a4 + 12) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance GroupContainer(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = thunk for @callee_guaranteed (@in_guaranteed _Graph, @in_guaranteed _ViewInputs) -> (@out _ViewListOutputs)partial apply;
  *(v12 + 24) = v11;
  *(v12 + 32) = v5;
  *(v12 + 40) = v10;

  static _ViewOutputs.multiView(inputs:body:)(a2, partial apply for specialized closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:), v12, a5);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

void static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  v14 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v14;
  v17[4] = *(a2 + 64);
  v18 = *(a2 + 80);
  v15 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(partial apply for thunk for @callee_guaranteed (@in_guaranteed _Graph, @in_guaranteed _ViewInputs) -> (@out _ViewListOutputs), v16, v17, v7, v13, a5, a6, a7);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }
}

uint64_t static _VariadicView_MultiViewRoot._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

uint64_t static _VariadicView_Root.viewListOptions.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 8))();
  *a2 = result;
  return result;
}

void closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a6;
  *(v16 + 24) = a7;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a4;
  *(v16 + 56) = a5;
  v17 = a3[3];
  v28 = a3[2];
  v29 = v17;
  v30 = a3[4];
  LODWORD(v31) = *(a3 + 20);
  v18 = a3[1];
  v26 = *a3;
  v27 = v18;
  *(&v31 + 1) = partial apply for closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:);
  v32 = v16;
  v33 = 0;
  v19 = *a3;

  outlined init with copy of _ViewInputs(a3, v24);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v19);
  (*(v20 + 8))(&v26, &type metadata for MakeViewRoot, &protocol witness table for MakeViewRoot);
  v21 = *(&v32 + 1);
  if (*(&v32 + 1))
  {
    v22 = v33;
    v23 = HIDWORD(v33);
    v24[4] = v30;
    v24[5] = v31;
    v24[6] = v32;
    v25 = v33;
    v24[0] = v26;
    v24[1] = v27;
    v24[2] = v28;
    v24[3] = v29;

    outlined destroy of MakeViewRoot(v24);

    *a8 = v21;
    *(a8 + 8) = v22;
    *(a8 + 12) = v23;
  }

  else
  {
    __break(1u);
  }
}

void specialized closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(__int128 *a1, void (*a2)(void *__return_ptr), uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v13 = a1[2];
  v14 = v6;
  v15 = a1[4];
  v16 = *(a1 + 20);
  v7 = a1[1];
  v11 = *a1;
  v12 = v7;
  a2(v22);
  v8 = a1[1];
  v23 = *a1;
  v24 = v8;
  v25 = a1[2];
  LODWORD(v15) = *MEMORY[0x1E698D3F8];
  *(&v15 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v16) = 0;
  v17 = 0;
  v18 = 0;
  swift_weakInit();
  v19 = 0;
  v20 = 0;
  v21 = -1;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v14 = 0uLL;
  outlined init with copy of _GraphInputs(&v23, v10);
  _ViewListOutputs.makeAttribute(inputs:)(&v11);
  outlined destroy of _ViewListInputs(&v11);
  outlined destroy of _ViewListOutputs(v22);
  static DynamicPropertyCache.fields(of:)(a4, &v11);
  if (AGTypeGetKind() - 2 <= 3)
  {
    v9 = AGSubgraphGetCurrent();
    if (v9)
    {

      goto LABEL_6;
    }

    __break(1u);
  }

  *&v11 = 0;
  *(&v11 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(75);
  MEMORY[0x193ABEDD0](0xD00000000000003DLL, 0x800000018DD7B600);
  MEMORY[0x193ABEDD0](0xD000000000000035, 0x800000018DD7B640);
  MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
LABEL_6:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(__int128 *__return_ptr, uint64_t, __int128 *), uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x1E69E9840];
  v11 = a2[3];
  v12 = a2[1];
  v51 = a2[2];
  v52 = v11;
  v13 = a2[3];
  v53 = a2[4];
  v14 = a2[1];
  v49 = *a2;
  v50 = v14;
  v37 = v51;
  v38 = v13;
  v39 = a2[4];
  v54 = *(a2 + 20);
  v40 = *(a2 + 20);
  v35 = v49;
  v36 = v12;
  a3(&v46, a1, &v35);
  LODWORD(v39) = *MEMORY[0x1E698D3F8];
  *(&v39 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v40) = 0;
  v41 = 0;
  v42 = 0;
  swift_weakInit();
  v43 = 0;
  v44 = 0;
  v45 = -1;
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v38 = 0uLL;
  outlined init with copy of _GraphInputs(&v49, v34);
  v15 = _ViewListOutputs.makeAttribute(inputs:)(&v35);
  outlined destroy of _ViewListInputs(&v35);
  outlined destroy of _ViewListOutputs(&v46);
  static DynamicPropertyCache.fields(of:)(a7, &v35);
  v16 = v35;
  v30 = v51;
  v31 = v52;
  v32 = v53;
  v33 = v54;
  v28 = v49;
  v29 = v50;
  v25 = a6;
  v26 = v36;
  v27 = a6;
  v46 = v35;
  v47 = v36;
  v24 = DWORD1(v36);
  v48 = DWORD1(v36);
  outlined init with copy of _ViewInputs(&v49, &v35);
  static _VariadicView_ViewRoot.makeBody(root:list:inputs:fields:)(v34, &v35, &v27, v15, &v28, &v46, a7, *(a8 + 8));
  v17 = LODWORD(v34[0]);
  v18 = *(&v35 + 1);
  v23 = v35;
  v19 = v36;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _ViewInputs.implicitRootBodyInputs.getter(&v35);
  if (AGSubgraphShouldRecordTree())
  {
    AGSubgraphBeginTreeElement();
  }

  LODWORD(v46) = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(&v46, &v35, AssociatedTypeWitness, AssociatedConformanceWitness);
  $defer #1 <A>() in static View.makeDebuggableViewList(view:inputs:)(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  outlined destroy of _ViewListInputs(&v35);
  if (v19)
  {
    outlined consume of DynamicPropertyCache.Fields.Layout(v16, *(&v16 + 1), v26);
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v35 = v28;
    v36 = v29;
    return outlined destroy of _ViewInputs(&v35);
  }

  else
  {
    v34[0] = v23;
    v34[1] = v18;
    v27 = v25;
    v46 = v16;
    v47 = v26;
    v48 = v24;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(&v27, &v46, a7);
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v35 = v28;
    v36 = v29;
    outlined destroy of _ViewInputs(&v35);
    return outlined consume of DynamicPropertyCache.Fields.Layout(v16, *(&v16 + 1), v26);
  }
}

uint64_t _VariadicView_Children.list.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of _ViewList_Elements(a1, v1);
}

double _VariadicView_Children.transform.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

void _VariadicView_Children.transform.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

uint64_t _VariadicView_Children.init(_:contentSubgraph:transform:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  result = outlined init with take of _ViewList_Elements(a1, a4);
  a4[5] = a2;
  a4[6] = v6;
  a4[7] = v7;
  return result;
}

uint64_t static _VariadicView_ViewRoot._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v8[4] = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t static _VariadicView.Tree<>._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[1];
  v10 = a1[3];
  v32 = a1[2];
  v33 = v10;
  v11 = a1[3];
  v34 = a1[4];
  v12 = a1[1];
  v31[0] = *a1;
  v31[1] = v12;
  v28 = v32;
  v29 = v11;
  v30 = a1[4];
  v26 = v31[0];
  v27 = v9;
  outlined init with copy of _ViewListCountInputs(v31, v25);
  outlined init with copy of _ViewListCountInputs(v31, v25);
  v13 = (*(*(a4 + 8) + 8))(a2);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v26, v13);
  outlined destroy of _ViewListCountInputs(v31);
  v23[2] = v28;
  v23[3] = v29;
  v23[4] = v30;
  v23[0] = v26;
  v23[1] = v27;
  v20 = v28;
  v21 = v29;
  v22 = v30;
  v18 = v26;
  v19 = v27;
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = v31;
  v14 = *(a4 + 48);
  outlined init with copy of _ViewListCountInputs(v23, v25);
  v15 = v14(&v18, partial apply for closure #1 in static _VariadicView.Tree<>._viewListCount(inputs:), v17, a2, a4);
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v24[0] = v18;
  v24[1] = v19;
  outlined destroy of _ViewListCountInputs(v24);
  v25[2] = v28;
  v25[3] = v29;
  v25[4] = v30;
  v25[0] = v26;
  v25[1] = v27;
  outlined destroy of _ViewListCountInputs(v25);
  return v15;
}

uint64_t closure #1 in static _VariadicView.Tree<>._viewListCount(inputs:)(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1[1];
  v40[0] = *a1;
  v40[1] = v9;
  v10 = a1[3];
  v40[2] = a1[2];
  v40[3] = v10;
  v40[4] = a1[4];
  v11 = *&v40[0];
  v12 = *a2;
  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v13 = v35[0];
  outlined init with copy of _ViewListCountInputs(v40, v35);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v12, v13);
  if (v14)
  {
    v15 = *(v14 + 72);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(&v40[0] + 1) | v15;
  *&v29 = v11;
  *(&v29 + 1) = *(&v40[0] + 1) | v15;
  v17 = a1[2];
  v30 = a1[1];
  v31 = v17;
  v18 = a1[4];
  v32 = a1[3];
  v33 = v18;
  v26 = v17;
  v27 = v32;
  v28 = v18;
  v24 = v29;
  v25 = v30;
  v19 = *(a6 + 40);
  outlined init with copy of _ViewListCountInputs(&v29, v35);
  v20 = v19(&v24, a4, a6);
  v34[2] = v26;
  v34[3] = v27;
  v34[4] = v28;
  v34[0] = v24;
  v34[1] = v25;
  outlined destroy of _ViewListCountInputs(v34);
  v35[0] = v11;
  v35[1] = v16;
  v21 = a1[2];
  v36 = a1[1];
  v37 = v21;
  v22 = a1[4];
  v38 = a1[3];
  v39 = v22;
  outlined destroy of _ViewListCountInputs(v35);
  return v20;
}

double key path setter for _ViewInputs.implicitRootType : _ViewInputs(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(a2, v3, v4);

  return result;
}

uint64_t (*_ViewInputs.implicitRootType.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.implicitRootType.modify;
}

double _ViewListInputs.implicitRootType.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_ViewListInputs.implicitRootType.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewListInputs.implicitRootType.modify;
}

void _ViewInputs.implicitRootType.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance ImplicitRootType@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static ImplicitRootType.defaultValue;
  *a1 = static ImplicitRootType.defaultValue;
  return result;
}

double protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance _ZStackLayout(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v16 = HIDWORD(v14);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 20) = v16;
  *(v17 + 24) = v9;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  a9(v9, a2, a8, v17);

  return result;
}

void protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance SubviewsRoot<A>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for SubviewsRoot<A>, a5);

  static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

double specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<D0>(uint64_t a1@<X0>, void (*a3)(uint64_t, _OWORD *)@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v7;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v8 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v8;
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    *a5 = MEMORY[0x1E69E7CC0];
    *(a5 + 8) = 0;
    *(a5 + 12) = Attribute;
  }

  else
  {
    v11 = Attribute;

    return _s7SwiftUI6LayoutPAAE04makeC4View4root6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyxG_AA01_E6InputsVAA01_e4ListI0VAA01_J0V_ANtXEtFZAA07_ZStackC0V_Tt3B503_s7a14UI019_Variadice19_UnaryD4RootPAAE05_ds29List4root6inputs4bodyAA01_dH7i6VAA11_jk5VyxG_w4_dH6L52VAiA01_M0V_ANtctFZAA01_dL0VAA01_dO0VcfU_AiP_ATtXEfU_ArA01_emL0VAPIegnnr_Tf1nnnc_n(v11, v12, a3, a5);
  }

  return result;
}

uint64_t specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, __n128)@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v12;
  v16[4] = *(a1 + 64);
  v17 = *(a1 + 80);
  v13 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v13;
  result = AGWeakAttributeGetAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    *a7 = MEMORY[0x1E69E7CC0];
    *(a7 + 8) = 0;
    *(a7 + 12) = result;
  }

  else
  {
    v15 = result;

    return (a6)(v15, v16, a3, a4, a5);
  }

  return result;
}

void specialized _VariadicView_ViewRoot<>.body(children:)(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(34);

  v2 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v2);

  MEMORY[0x193ABEDD0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t initializeWithCopy for MakeViewRoot(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  v3 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 20);
  v4 = a2[12];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = v4;
  *(a1 + 104) = a2[13];
  *(a1 + 112) = a2[14];

  return a1;
}

uint64_t *assignWithCopy for MakeViewRoot(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  a1[5] = a2[5];

  a1[6] = a2[6];

  *(a1 + 14) = *(a2 + 14);
  *(a1 + 15) = *(a2 + 15);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 20) = *(a2 + 20);
  v4 = a2[12];
  a1[11] = a2[11];
  a1[12] = v4;

  a1[13] = a2[13];

  *(a1 + 28) = *(a2 + 28);
  *(a1 + 29) = *(a2 + 29);
  return a1;
}

uint64_t *assignWithTake for MakeViewRoot(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  a1[2] = a2[2];

  *(a1 + 3) = *(a2 + 3);

  *(a1 + 5) = *(a2 + 5);

  *(a1 + 7) = *(a2 + 7);
  a1[9] = a2[9];
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 11) = *(a2 + 11);

  a1[13] = a2[13];

  a1[14] = a2[14];
  return a1;
}

uint64_t getEnumTagSinglePayload for MakeViewRoot(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for MakeViewRoot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void partial apply for specialized closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  v6 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v6;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v7 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v7;
  specialized closure #1 in closure #1 in static _VariadicView_MultiViewRoot._makeView(root:inputs:body:)(v8, v4, v3, v5);
}

uint64_t partial apply for specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(a1, v2[3], v2[4], v2[5], specialized static LazyLayout._makeView(root:inputs:body:), a2);
}

{
  return specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(a1, v2[3], v2[4], v2[5], specialized static Layout.makeLayoutView(root:inputs:body:), a2);
}

{
  return specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(a1, v2[3], v2[4], v2[5], specialized static LazyLayout._makeView(root:inputs:body:), a2);
}

{
  return specialized closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(a1, v2[3], v2[4], v2[5], specialized static Layout.makeLayoutView(root:inputs:body:), a2);
}

uint64_t assignWithCopy for ViewRootBodyAccessor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v5 = v3;

  return a1;
}

uint64_t assignWithTake for ViewRootBodyAccessor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t initializeWithCopy for MakeModifiedRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t assignWithCopy for MakeModifiedRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v4;

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  return a1;
}

uint64_t assignWithTake for MakeModifiedRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

SwiftUI::ContentStyle::ID __swiftcall ContentStyle.ID.init(truncatingLevel:)(Swift::Int truncatingLevel)
{
  if (truncatingLevel <= 4)
  {
    if (truncatingLevel > 4u)
    {
      __break(1u);
    }

    else
    {
      *v1 = truncatingLevel;
    }
  }

  else
  {
    LOBYTE(truncatingLevel) = 4;
    *v1 = 4;
  }

  return truncatingLevel;
}

SwiftUI::ContentStyle::Style __swiftcall ContentStyle.Style.init(id:primitive:)(SwiftUI::ContentStyle::ID id, SwiftUI::ContentStyle::Primitive primitive)
{
  v3 = *primitive;
  *v2 = *id;
  v2[1] = v3;
  result.id = id;
  return result;
}

uint64_t ContentStyle.MaterialStyle.init(material:base:)@<X0>(uint64_t result@<X0>, __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  v5 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = v5;
  return result;
}

SwiftUI::ContentStyle::ID_optional __swiftcall ContentStyle.ID.init(rawValue:)(SwiftUI::ContentStyle::ID_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= SwiftUI_ContentStyle_ID_unknownDefault)
  {
    value = SwiftUI_ContentStyle_ID_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

Swift::Int ContentStyle.Primitive.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t ContentStyle.Style.hash(into:)()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int ContentStyle.Style.hashValue.getter()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContentStyle.Style()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContentStyle.Style()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContentStyle.Style(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = v1[1];
  Hasher._combine(_:)(*v1);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t ContentStyle.MaterialStyle.material.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  *a1 = *v1;
  v4 = *(v1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  return outlined copy of Material.ID(v2, v4);
}

uint64_t ContentStyle.MaterialStyle.material.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 3);
  result = outlined consume of Material.ID(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 12) = v4;
  return result;
}

uint64_t ContentStyle.MaterialStyle.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = *(v1 + 17);
  v4 = *(v1 + 16);
  Material.ID.hash(into:)(a1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  return MEMORY[0x193AC11A0](v3);
}

Swift::Int ContentStyle.MaterialStyle.hashValue.getter()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 17);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v5);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ContentStyle.MaterialStyle()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 17);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Material.ID.hash(into:)(v5);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ContentStyle.MaterialStyle(uint64_t a1)
{
  v2 = *(v1 + 12);
  v3 = *(v1 + 17);
  v4 = *(v1 + 16);
  Material.ID.hash(into:)(a1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  return MEMORY[0x193AC11A0](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ContentStyle.MaterialStyle(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(v1 + 12);
  v3 = *(v1 + 17);
  v4 = *(v1 + 16);
  Material.ID.hash(into:)(v6);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  MEMORY[0x193AC11A0](v3);
  return Hasher._finalize()();
}

double Color.init(_:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 1)
  {
    if (*a1)
    {
      if (one-time initialization token for secondary == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (one-time initialization token for primary != -1)
    {
LABEL_17:
      swift_once();
    }
  }

  else if (v1 == 2)
  {
    if (one-time initialization token for tertiary != -1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v1 == 3)
    {
      if (one-time initialization token for quaternary == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }

    if (one-time initialization token for quinary != -1)
    {
      goto LABEL_17;
    }
  }

LABEL_14:

  return result;
}

float ContentStyle.ID.resolve(in:)(_OWORD *a1)
{
  v4 = *v1 + 13;
  *v3 = *a1;
  SystemColorType.resolveHDR(in:)(v3, &v5);
  return v5;
}

SwiftUI::ContentStyle::ID_optional __swiftcall ContentStyle.ID.init(level:)(Swift::Int level)
{
  v2 = level;
  if (level >= 5u)
  {
    v2 = 5;
  }

  if (level != level)
  {
    v2 = 5;
  }

  *v1 = v2;
  return level;
}

void lazy protocol witness table accessor for type ContentStyle.Primitive and conformance ContentStyle.Primitive()
{
  if (!lazy protocol witness table cache variable for type ContentStyle.Primitive and conformance ContentStyle.Primitive)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentStyle.Primitive, &type metadata for ContentStyle.Primitive, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentStyle.Primitive and conformance ContentStyle.Primitive);
  }
}

void lazy protocol witness table accessor for type ContentStyle.Style and conformance ContentStyle.Style()
{
  if (!lazy protocol witness table cache variable for type ContentStyle.Style and conformance ContentStyle.Style)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentStyle.Style, &type metadata for ContentStyle.Style, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentStyle.Style and conformance ContentStyle.Style);
  }
}

uint64_t getEnumTagSinglePayload for ContentStyle.Style(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentStyle.Style(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContentStyle.MaterialStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithCopy for ContentStyle.MaterialStyle(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of Material.ID(v6, v7);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for ContentStyle.MaterialStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Material.ID(v5, v6);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentStyle.MaterialStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 18))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentStyle.MaterialStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 2;
    }
  }

  return result;
}

uint64_t assignWithCopy for LegacyContentStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for LegacyContentStyle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for HierarchicalShapeStyleModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t initializeWithCopy for HierarchicalShapeStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *((*(v5 + 48) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithCopy for HierarchicalShapeStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for HierarchicalShapeStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 24) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for HierarchicalShapeStyleModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *storeEnumTagSinglePayload for HierarchicalShapeStyleModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
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
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t DynamicPropertyBox.getState<A>(type:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Binding(0, a1, a1, a2);
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t static DynamicProperty.addTreeValue<A, B>(_:as:at:in:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    v16 = *a5;
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(a1, v14, a4, a3, &v16, v15, a8);
  }

  return result;
}

Swift::String_optional __swiftcall DynamicPropertyCache.Fields.name(at:)(Swift::Int at)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if ((v1[16] & 1) == 0)
  {
    v6 = *v1 + 24;
    v7 = *(*v1 + 16) + 1;
    while (--v7)
    {
      v8 = (v6 + 32);
      v9 = *(v6 + 24);
      v6 += 32;
      if (v9 == at)
      {
        if (!*v8)
        {
          break;
        }

        static String.Encoding.utf8.getter();
        v4 = String.init(cString:encoding:)();
        goto LABEL_9;
      }
    }
  }

  v4 = 0;
  v5 = 0;
LABEL_9:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t DynamicPropertyCache.Fields._name(at:)(uint64_t a1)
{
  if ((v1[16] & 1) == 0)
  {
    v3 = *v1 + 24;
    v4 = *(*v1 + 16) + 1;
    while (--v4)
    {
      v5 = v3 + 32;
      v6 = *(v3 + 24);
      v3 += 32;
      if (v6 == a1)
      {
        return *v5;
      }
    }
  }

  return 0;
}

uint64_t static DynamicProperty.addTreeValue<A>(_:at:in:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  result = AGSubgraphShouldRecordTree();
  if (result)
  {
    v14 = *a4;
    return static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(a1, v12, a3, a2, &v14, v13, a6);
  }

  return result;
}

uint64_t static DynamicProperty.addTreeValueSlow<A>(_:as:in:fieldOffset:flags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  static DynamicPropertyCache.fields(of:)(a3, &v13);
  if (v15)
  {
    v8 = 1;
  }

  else
  {
    v9 = v13 + 24;
    v10 = *(v13 + 16) + 1;
    while (--v10)
    {
      v11 = *(v9 + 24);
      v9 += 32;
      if (v11 == a4)
      {
        outlined consume of DynamicPropertyCache.Fields.Layout(v13, v14, 0);
        goto LABEL_9;
      }
    }

    v8 = 0;
  }

  outlined consume of DynamicPropertyCache.Fields.Layout(v13, v14, v8);
LABEL_9:

  return AGSubgraphAddTreeValue();
}

uint64_t static StaticBody.metaProperties<A>(as:attribute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (swift_getAssociatedTypeWitness() != a5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  AGGraphGetAttributeInfo();
  v13 = v12;
  type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, AGAttribute)>, type metadata accessor for (String, AGAttribute), MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18DDA6EB0;
  *(v14 + 32) = 0x666C657340;
  *(v14 + 40) = 0xE500000000000000;
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a6;
  v16[3] = a7;
  v15 = type metadata accessor for StaticBody(0, v16);
  result = v14;
  *(v14 + 48) = *(v13 + *(v15 + 52));
  return result;
}

uint64_t static StaticBody.value<A>(as:attribute:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t (*a6)(void, void *)@<X7>, uint64_t a7@<X8>)
{
  if (swift_getAssociatedTypeWitness() == a3)
  {
    AGGraphGetAttributeInfo();
    v18[0] = a1;
    v18[1] = a2;
    v18[2] = a4;
    v18[3] = a5;
    a6(0, v18);
    Value = AGGraphGetValue();
    v17 = *(a3 - 8);
    (*(v17 + 16))(a7, Value, a3);
    return (*(v17 + 56))(a7, 0, 1, a3);
  }

  else
  {
    v14 = *(*(a3 - 8) + 56);

    return v14(a7, 1, 1, a3);
  }
}

uint64_t static DynamicBody.buffer<A>(as:attribute:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  result = swift_getAssociatedTypeWitness();
  v13 = result;
  v14 = 0uLL;
  if (result == a3)
  {
    AGGraphGetAttributeInfo();
    v16 = v15;
    v17[0] = a1;
    v17[1] = a2;
    v17[2] = a4;
    v17[3] = a5;
    result = type metadata accessor for DynamicBody(0, v17);
    v14 = *(v16 + *(result + 60));
  }

  *a6 = v14;
  *(a6 + 16) = v13 != a3;
  return result;
}

uint64_t static DynamicBody.metaProperties<A>(as:attribute:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (swift_getAssociatedTypeWitness() != a5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  AGGraphGetAttributeInfo();
  v13 = v12;
  type metadata accessor for _ContiguousArrayStorage<(String, AGAttribute)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, AGAttribute)>, type metadata accessor for (String, AGAttribute), MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18DDAB4C0;
  *(v14 + 32) = 0x666C657340;
  *(v14 + 40) = 0xE500000000000000;
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a6;
  v16[3] = a7;
  v15 = type metadata accessor for DynamicBody(0, v16);
  result = v14;
  *(v14 + 48) = *(v13 + *(v15 + 52));
  *(v14 + 56) = 0x7469746E65646940;
  *(v14 + 64) = 0xE900000000000079;
  *(v14 + 72) = *(v13 + *(v15 + 56));
  return result;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance StaticBody<A, B>@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 56);

  return v4(a2, 1, 1, AssociatedTypeWitness);
}

void changedBodyProperties<A>(of:)(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E698D400];
  type metadata accessor for _DictionaryStorage<AGDescriptionOption, Any>(0);
  v3 = 0;
  v4 = MEMORY[0x1E69E7CA0];
  while (1)
  {
    v83[0] = v2;
    v83[1] = 0x72662F6B63617473;
    v83[4] = MEMORY[0x1E69E6158];
    v83[2] = 0xEB00000000656D61;
    v5 = v2;
    v6 = MEMORY[0x193ABEC20](0x6E695F656D617266, 0xEB00000000786564);
    v84[4] = MEMORY[0x1E69E6530];
    v84[0] = v6;
    v84[1] = v3;
    v7 = static _DictionaryStorage.allocate(capacity:)();
    outlined init with copy of (AGDescriptionOption, Any)(v83, &v81);
    v8 = v81;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
    if (v10)
    {
      break;
    }

    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v7[6] + 8 * v9) = v8;
    outlined init with take of Any((&v81 + 8), (v7[7] + 32 * v9));
    v11 = v7[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      goto LABEL_23;
    }

    v7[2] = v13;
    outlined init with copy of (AGDescriptionOption, Any)(v84, &v81);
    v8 = v81;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v81);
    if (v15)
    {
      break;
    }

    *(v7 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    *(v7[6] + 8 * v14) = v8;
    outlined init with take of Any((&v81 + 8), (v7[7] + 32 * v14));
    v16 = v7[2];
    v12 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v12)
    {
      goto LABEL_23;
    }

    v7[2] = v17;
    type metadata accessor for (AGDescriptionOption, Any)(0);
    swift_arrayDestroy();
    type metadata accessor for AGDescriptionOption(0);
    lazy protocol witness table accessor for type AGDescriptionOption and conformance AGDescriptionOption();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = AGGraphDescription();

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v79 = 0u;
      v80 = 0u;
    }

    v81 = v79;
    v82 = v80;
    if (*(&v80 + 1))
    {
      type metadata accessor for [Int : CGFloat](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E6158], v4 + 8, MEMORY[0x1E69E6168]);
      if (swift_dynamicCast())
      {
        v8 = v76;
        if (*(v76 + 16))
        {
          v20 = specialized __RawDictionaryStorage.find<A>(_:)(0x64692D65646F6ELL, 0xE700000000000000);
          if (v21)
          {
            outlined init with copy of Any(*(v76 + 56) + 32 * v20, &v81);
            if (swift_dynamicCast())
            {
              if (*(v76 + 16))
              {
                v73 = v79;
                v22 = specialized __RawDictionaryStorage.find<A>(_:)(0x7079742D666C6573, 0xE900000000000065);
                if (v23)
                {
                  outlined init with copy of Any(*(v76 + 56) + 32 * v22, &v81);
                  type metadata accessor for BodyAccessorRule.Type();
                  if (swift_dynamicCast())
                  {
                    v72 = *(&v79 + 1);
                    v7 = v79;
                    if ((*(*(&v79 + 1) + 8))(v79) == a1)
                    {
                      goto LABEL_24;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      _sypSgWOhTm_7(&v81, &lazy cache variable for type metadata for Any?, v4 + 8, MEMORY[0x1E69E6720], type metadata accessor for _DynamicPropertyBuffer?);
    }

    if (++v3 == 32)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  v66 = v7;
  v24 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
  v25 = v73;
  if ((AGGraphGetValueState() & 0x80) != 0)
  {
    if (one-time initialization token for _current != -1)
    {
      swift_once();
    }

    v26 = static ObservationCenter._current;
    swift_beginAccess();
    v27 = pthread_getspecific(v26[2]);
    if (!v27)
    {
      v28 = swift_slowAlloc();
      pthread_setspecific(v26[2], v28);
      *(&v82 + 1) = type metadata accessor for ObservationCenter();
      *&v81 = v26[3];
      outlined init with take of Any(&v81, v28);

      v27 = v28;
    }

    outlined init with copy of Any(v27, &v81);
    type metadata accessor for ObservationCenter();
    swift_dynamicCast();
    swift_beginAccess();
    v29 = *(v76 + 16);

    v30 = v29;
    if (v29 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        v38 = __CocoaSet.count.getter();
        v30 = v29;
        v31 = v38;
        if (v38)
        {
          goto LABEL_31;
        }

LABEL_44:
        specialized Array.append<A>(contentsOf:)(v24);
        goto LABEL_45;
      }
    }

    else
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_31:
        v32 = v30;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 & ~(v31 >> 63), 0);
        if (v31 < 0)
        {
          goto LABEL_87;
        }

        v33 = 0;
        v34 = v32;
        v69 = v32 & 0xC000000000000001;
        v71 = v32;
        do
        {
          if (v69)
          {
            MEMORY[0x193AC03C0](v33, v34);
          }

          else
          {
          }

          *&v81 = 0;
          *(&v81 + 1) = 0xE000000000000000;
          type metadata accessor for AnyKeyPath();
          _print_unlocked<A, B>(_:_:)();

          v35 = v81;
          v77 = v24;
          v37 = v24[2];
          v36 = v24[3];
          if (v37 >= v36 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
          }

          ++v33;
          v24[2] = v37 + 1;
          *&v24[2 * v37 + 4] = v35;
          v34 = v71;
        }

        while (v31 != v33);

        v25 = v73;
        goto LABEL_44;
      }
    }

    v24 = &outlined read-only object #0 of changedBodyProperties<A>(of:);
    goto LABEL_44;
  }

LABEL_45:
  v39 = v72;
  v40 = v66;
  v41 = (*(v72 + 32))(a2, v25, a2, v66, v72);
  v70 = *(v41 + 16);
  if (!v70)
  {

LABEL_82:

    (*(v39 + 24))(&v81, a2, v25, a2, v40, v39);
    if ((v82 & 1) == 0)
    {
      v61 = DWORD2(v81);
      v62 = v81;
      v63 = HIDWORD(*(&v81 + 1));
      static DynamicPropertyCache.fields(of:)(a1, &v81);
      v64 = v81;
      v65 = v82;
      *&v81 = v62;
      *(&v81 + 1) = __PAIR64__(v63, v61);
      specialized _DynamicPropertyBuffer.applyChanged(to:)(&v81, v64, *(&v64 + 1), v82 | (DWORD1(v82) << 32), &v78);
      outlined consume of DynamicPropertyCache.Fields.Layout(v64, *(&v64 + 1), v65);
    }

    return;
  }

  if (!*(v8 + 16) || (v42 = specialized __RawDictionaryStorage.find<A>(_:)(0x737475706E69, 0xE600000000000000), (v43 & 1) == 0))
  {

    goto LABEL_52;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v42, &v81);

  type metadata accessor for [[String : Any]](0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_52:
    v68 = v41 + 32;
LABEL_53:
    v44 = MEMORY[0x1E69E7CC0];
    goto LABEL_54;
  }

  v68 = v41 + 32;
  v44 = v77;
  if (!v77)
  {
    goto LABEL_53;
  }

LABEL_54:
  v45 = 0;
  while (v45 < *(v41 + 16))
  {
    v46 = v44[2];
    if (!v46)
    {

LABEL_77:

      goto LABEL_56;
    }

    v47 = v41;
    v48 = v68 + 24 * v45;
    v49 = *(v48 + 8);
    v67 = *v48;
    v50 = *(v48 + 16);

    v51 = 0;
    while (1)
    {
      if (v51 >= v44[2])
      {
        __break(1u);
        goto LABEL_86;
      }

      v52 = v44[v51 + 4];
      if (*(v52 + 16))
      {
        break;
      }

LABEL_61:
      if (v46 == ++v51)
      {
        goto LABEL_55;
      }
    }

    v53 = specialized __RawDictionaryStorage.find<A>(_:)(25705, 0xE200000000000000);
    if ((v54 & 1) == 0 || (outlined init with copy of Any(*(v52 + 56) + 32 * v53, &v81), (swift_dynamicCast() & 1) == 0) || v77 != v50)
    {

      goto LABEL_61;
    }

    if (!*(v52 + 16) || (v55 = specialized __RawDictionaryStorage.find<A>(_:)(0x6465676E616863, 0xE700000000000000), (v56 & 1) == 0))
    {
LABEL_55:

      v41 = v47;
      goto LABEL_56;
    }

    outlined init with copy of Any(*(v52 + 56) + 32 * v55, &v81);

    v41 = v47;
    if (!swift_dynamicCast() || (v77 & 1) == 0)
    {
      goto LABEL_77;
    }

    v57 = v78;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v78 + 2) + 1, 1, v78);
    }

    v59 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v59 >= v58 >> 1)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v57);
    }

    *(v57 + 2) = v59 + 1;
    v60 = &v57[16 * v59];
    *(v60 + 4) = v67;
    *(v60 + 5) = v49;
    v78 = v57;
LABEL_56:
    if (++v45 == v70)
    {

      v25 = v73;
      v40 = v66;
      v39 = v72;
      goto LABEL_82;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

char *closure #2 in changedBodyProperties<A>(of:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v6 = DynamicPropertyCache.Fields.name(at:)(a1);
  if (v6.value._object)
  {
    countAndFlagsBits = v6.value._countAndFlagsBits;
    object = v6.value._object;
  }

  else
  {
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v9);

    countAndFlagsBits = 64;
    object = 0xE100000000000000;
  }

  v10 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v10;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
    v10 = result;
    *a5 = result;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
    *a5 = result;
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = countAndFlagsBits;
  *(v14 + 5) = object;
  return result;
}

double printChangedBodyProperties<A>(of:)(uint64_t a1, uint64_t a2)
{
  changedBodyProperties<A>(of:)(a1, a2);
  v3 = v2;
  v4 = AGTypeID.description.getter();
  v6 = v5;
  if (*(v3 + 16))
  {
    type metadata accessor for _DynamicPropertyBuffer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18DDA6EB0;
    MEMORY[0x193ABEDD0](8250, 0xE200000000000000);
    v8 = v4;
    v9 = MEMORY[0x1E69E6158];
    type metadata accessor for _DynamicPropertyBuffer?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v10 = BidirectionalCollection<>.joined(separator:)();
    v12 = v11;

    MEMORY[0x193ABEDD0](v10, v12);

    MEMORY[0x193ABEDD0](0x6465676E61686320, 0xE90000000000002ELL);

    *(v7 + 56) = v9;
    *(v7 + 32) = v8;
    *(v7 + 40) = v6;
    print(_:separator:terminator:)();
  }

  else
  {

    type metadata accessor for _DynamicPropertyBuffer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDA6EB0;
    MEMORY[0x193ABEDD0](0x6E6168636E75203ALL, 0xEC0000002E646567);
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 32) = v4;
    *(v14 + 40) = v6;
    print(_:separator:terminator:)();
  }

  return result;
}

void logChangedBodyProperties<A>(of:)(uint64_t a1, uint64_t a2)
{
  changedBodyProperties<A>(of:)(a1, a2);
  v3 = v2;
  v4 = AGTypeID.description.getter();
  v6 = v5;
  if (*(v3 + 16))
  {
    if (one-time initialization token for propertyChangeLog != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.propertyChangeLog);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446466;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v23);

      *(v9 + 4) = v11;
      *(v9 + 12) = 2082;
      type metadata accessor for _DynamicPropertyBuffer?(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v12 = BidirectionalCollection<>.joined(separator:)();
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_18D018000, oslog, v8, "%{public}s: %{public}s changed.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AC4820](v10, -1, -1);
      v16 = v9;
LABEL_10:
      MEMORY[0x193AC4820](v16, -1, -1);

      return;
    }
  }

  else
  {

    if (one-time initialization token for propertyChangeLog != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.propertyChangeLog);

    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136446210;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v23);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_18D018000, oslog, v18, "%{public}s: unchanged.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x193AC4820](v20, -1, -1);
      v16 = v19;
      goto LABEL_10;
    }
  }
}

void type metadata accessor for _DictionaryStorage<AGDescriptionOption, Any>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<AGDescriptionOption, Any>)
  {
    type metadata accessor for AGDescriptionOption(255);
    lazy protocol witness table accessor for type AGDescriptionOption and conformance AGDescriptionOption();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<AGDescriptionOption, Any>);
    }
  }
}

void lazy protocol witness table accessor for type AGDescriptionOption and conformance AGDescriptionOption()
{
  if (!lazy protocol witness table cache variable for type AGDescriptionOption and conformance AGDescriptionOption)
  {
    type metadata accessor for AGDescriptionOption(255);
    swift_getWitnessTable(protocol conformance descriptor for AGDescriptionOption, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type AGDescriptionOption and conformance AGDescriptionOption);
  }
}

uint64_t outlined init with copy of (AGDescriptionOption, Any)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (AGDescriptionOption, Any)(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (AGDescriptionOption, Any)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (AGDescriptionOption, Any))
  {
    type metadata accessor for AGDescriptionOption(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (AGDescriptionOption, Any));
    }
  }
}

unint64_t type metadata accessor for BodyAccessorRule.Type()
{
  result = lazy cache variable for type metadata for BodyAccessorRule.Type;
  if (!lazy cache variable for type metadata for BodyAccessorRule.Type)
  {
    type metadata accessor for AnyTrackedValue(255, &lazy cache variable for type metadata for BodyAccessorRule, &protocol descriptor for BodyAccessorRule);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for BodyAccessorRule.Type);
  }

  return result;
}

void type metadata accessor for [[String : Any]](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [[String : Any]])
  {
    type metadata accessor for [Int : CGFloat](255, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [[String : Any]]);
    }
  }
}

void lazy protocol witness table accessor for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors()
{
  if (!lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicPropertyBehaviors, &type metadata for DynamicPropertyBehaviors, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors);
  }
}

{
  if (!lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicPropertyBehaviors, &type metadata for DynamicPropertyBehaviors, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors);
  }
}

{
  if (!lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicPropertyBehaviors, &type metadata for DynamicPropertyBehaviors, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors);
  }
}

{
  if (!lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicPropertyBehaviors, &type metadata for DynamicPropertyBehaviors, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicPropertyBehaviors and conformance DynamicPropertyBehaviors);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for DynamicPropertyCache.Fields.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of DynamicPropertyCache.Fields.Layout(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for DynamicPropertyCache.Fields.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of DynamicPropertyCache.Fields.Layout(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of DynamicPropertyCache.Fields.Layout(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for DynamicPropertyCache.Fields.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of DynamicPropertyCache.Fields.Layout(v4, v5, v6);
  return a1;
}

uint64_t assignWithCopy for StaticBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 40) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t assignWithTake for StaticBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  *((*(v5 + 24) + 3 + a1) & 0xFFFFFFFFFFFFFFFCLL) = *((*(v5 + 24) + 3 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for DynamicBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v11 = ((a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    *v10 = *v11;
    v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v12 = *v13;
    v14 = ((v12 + 11) & 0xFFFFFFFFFFFFFFF8);
    v15 = ((v13 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v15;
    *((v14 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 19) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t assignWithCopy for DynamicBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  v7 &= 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v9;
  v11 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 12) = *(v12 + 12);
  *((v11 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for DynamicBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v11 = ((v9 + 11) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  *((v11 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for DynamicBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  v7 &= 0xFFFFFFFFFFFFFFFCLL;
  *v7 = *v8;
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v9;
  v11 = (v10 + 11) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  *(v11 + 12) = *(v12 + 12);
  *((v11 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v12 + 19) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DynamicBody(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  if (*(a1 + ((((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4)))
  {
    return v5 + *a1 + 1;
  }

  if (v5)
  {
    return (*(v4 + 48))();
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for DynamicBody(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = (((((((*(v6 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v7 >= a2)
  {
    if (v7 < a3)
    {
      a1[v8] = 0;
    }

    if (a2)
    {
      v10 = *(v6 + 56);

      v10();
    }
  }

  else
  {
    v9 = ~v7 + a2;
    bzero(a1, v8);
    *a1 = v9;
    if (v7 < a3)
    {
      a1[v8] = 1;
    }
  }
}

void type metadata accessor for (String, AGAttribute)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (String, AGAttribute))
  {
    type metadata accessor for AGAttribute(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, AGAttribute));
    }
  }
}

uint64_t static Update.threadIsUpdating.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  LODWORD(result) = _MovableLockIsOwner(static Update._lock);
  if (static Update.dispatchDepth < static Update.depth)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

BOOL static Update.isOwner.getter()
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  return _MovableLockIsOwner(static Update._lock);
}

void static Update.assertIsLocked()()
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t static Update.canDispatch.getter()
{
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    if (static Update.depth == 1)
    {
      if (one-time initialization token for actions != -1)
      {
        swift_once();
      }

      return *(static Update.actions + 2) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t assignWithCopy for Update.Action(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for Update.Action(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for Update.Action(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t storeEnumTagSinglePayload for Update.Action(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void DistanceGesture.StateType.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

void protocol witness for GestureStateProtocol.init() in conformance DistanceGesture.StateType(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
}

uint64_t DistanceGesture.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v3;
  *a1 = 0;
  *(a1 + 8) = partial apply for closure #1 in DistanceGesture.body.getter;
  *(a1 + 16) = result;
  return result;
}

uint64_t closure #1 in DistanceGesture.body.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  v7 = *(a2 + 81);
  if ((v7 - 1) >= 2)
  {
    if (*(a2 + 81))
    {
      goto LABEL_19;
    }

    if (v5 == 1)
    {
LABEL_15:
      *a3 = 0;
      *(a3 + 8) = 1;
      return result;
    }
  }

  if (*(result + 16))
  {
    *result = v6;
    *(result + 16) = 0;
    v8 = 0.0;
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:
    if (v5 != 1)
    {
      *a3 = v8;
      *(a3 + 8) = 0;
      return result;
    }

    goto LABEL_15;
  }

  v10 = vsubq_f64(*result, v6);
  v8 = sqrt(vaddvq_f64(vmulq_f64(v10, v10)));
  v11 = *(result + 24);
  if (v11 <= v8)
  {
    v11 = v8;
  }

  *(result + 24) = v11;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v7 != 1)
  {
    if (*(result + 24) >= a5 && v8 < a4)
    {
      *a3 = v8;
      *(a3 + 8) = 512;
      return result;
    }

    goto LABEL_19;
  }

  if (v8 > a4)
  {
LABEL_19:
    *a3 = 0;
    *(a3 + 8) = 768;
    return result;
  }

  v9 = *(result + 24);
  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 9) = v9 >= a5;
  return result;
}

uint64_t protocol witness for Gesture.body.getter in conformance DistanceGesture@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v3;
  *a1 = 0;
  *(a1 + 8) = closure #1 in DistanceGesture.body.getterpartial apply;
  *(a1 + 16) = result;
  return result;
}

void lazy protocol witness table accessor for type ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>> and conformance ModifierGesture<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SymbolRenderingMode.Storage.CodingKeys()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000016;
    if (v1 != 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000019;
    if (v1 == 4)
    {
      v6 = 0x6572726566657270;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6F7268636F6E6F6DLL;
    v3 = 0x6863726172656968;
    if (v1 != 2)
    {
      v3 = 0x657474656C6170;
    }

    if (*v0)
    {
      v2 = 0x6C6F6369746C756DLL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SymbolRenderingMode.Storage.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SymbolRenderingMode.Storage.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.MonochromeCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.MonochromeCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.MulticolorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.MulticolorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.PaletteCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.PaletteCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingMode.Storage.PreferredCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingMode.Storage.PreferredCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int SymbolRenderingMode.Storage.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t static SymbolRenderingMode.preferredIfEnabled.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for preferredIfEnabled != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static SymbolRenderingMode.preferredIfEnabled;
  return result;
}

uint64_t SymbolRenderingMode.Storage.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys, &unk_1F0076568, MEMORY[0x1E69E6F58]);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v35 - v6;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys, &unk_1F0076548, v4);
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v35 - v8;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys, &unk_1F0076528, v4);
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v35 - v10;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.PreferredCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys, &unk_1F0076508, v4);
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v35 - v12;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys, &unk_1F00764E8, v4);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v35 - v14;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.HierarchicalCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys, &unk_1F00764C8, v4);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v35 - v16;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.MulticolorCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys, &unk_1F00764A8, v4);
  v39 = v17;
  v38 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v37 = &v35 - v18;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.MonochromeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys, &unk_1F0076488, v4);
  v20 = v19;
  v36 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v35 - v21;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys, &unk_1F0076468, v4);
  v58 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v35 - v25;
  v27 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = (v24 + 8);
  if (v27 > 3)
  {
    if (v27 > 5)
    {
      if (v27 == 6)
      {
        v65 = 6;
        lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys();
        v30 = v52;
        v29 = v58;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v53;
        v31 = v54;
      }

      else
      {
        v66 = 7;
        lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys();
        v30 = v55;
        v29 = v58;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v32 = v56;
        v31 = v57;
      }
    }

    else if (v27 == 4)
    {
      v63 = 4;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys();
      v30 = v46;
      v29 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v47;
      v31 = v48;
    }

    else
    {
      v64 = 5;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys();
      v30 = v49;
      v29 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v50;
      v31 = v51;
    }

    goto LABEL_16;
  }

  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v61 = 2;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys();
      v30 = v40;
      v29 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v41;
      v31 = v42;
    }

    else
    {
      v62 = 3;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys();
      v30 = v43;
      v29 = v58;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = v44;
      v31 = v45;
    }

LABEL_16:
    (*(v32 + 8))(v30, v31);
    return (*v28)(v26, v29);
  }

  if (v27)
  {
    v60 = 1;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys();
    v33 = v37;
    v29 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v38 + 8))(v33, v39);
  }

  else
  {
    v59 = 0;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys();
    v29 = v58;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v36 + 8))(v22, v20);
  }

  return (*v28)(v26, v29);
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys, &unk_1F0076568, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys, &unk_1F0076568, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys, &unk_1F0076568, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys, &unk_1F0076548, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys, &unk_1F0076548, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys, &unk_1F0076548, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys, &unk_1F0076528, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys, &unk_1F0076528, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys, &unk_1F0076528, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.PreferredCodingKeys, &unk_1F0076508, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.PreferredCodingKeys, &unk_1F0076508, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.PreferredCodingKeys, &unk_1F0076508, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.PaletteCodingKeys, &unk_1F00764E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.PaletteCodingKeys, &unk_1F00764E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.PaletteCodingKeys, &unk_1F00764E8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.HierarchicalCodingKeys, &unk_1F00764C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.HierarchicalCodingKeys, &unk_1F00764C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.HierarchicalCodingKeys, &unk_1F00764C8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.MulticolorCodingKeys, &unk_1F00764A8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.MulticolorCodingKeys, &unk_1F00764A8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.MulticolorCodingKeys, &unk_1F00764A8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.MonochromeCodingKeys, &unk_1F0076488, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.MonochromeCodingKeys, &unk_1F0076488, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.MonochromeCodingKeys, &unk_1F0076488, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.CodingKeys, &unk_1F0076468, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.CodingKeys, &unk_1F0076468, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.CodingKeys, &unk_1F0076468, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage.CodingKeys, &unk_1F0076468, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys);
  }
}

uint64_t SymbolRenderingMode.Storage.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v71 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys, &unk_1F0076568, MEMORY[0x1E69E6F48]);
  v63 = v4;
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v47 - v5;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys, &unk_1F0076548, v3);
  v62 = v6;
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v47 - v7;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys, &unk_1F0076528, v3);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v47 - v9;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.PreferredCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys, &unk_1F0076508, v3);
  v57 = v10;
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v47 - v11;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.PaletteCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys, &unk_1F00764E8, v3);
  v54 = v12;
  v55 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v47 - v13;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.HierarchicalCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys, &unk_1F00764C8, v3);
  v53 = v14;
  v52 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v47 - v15;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.MulticolorCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys, &unk_1F00764A8, v3);
  v51 = v16;
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v47 - v17;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.MonochromeCodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys, &unk_1F0076488, v3);
  v19 = v18;
  v49 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys, &unk_1F0076468, v3);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v47 - v25;
  v27 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.CodingKeys and conformance SymbolRenderingMode.Storage.CodingKeys();
  v28 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v72 = v21;
  v48 = v19;
  v30 = v68;
  v29 = v69;
  v31 = v24;
  v32 = v70;
  v33 = v71;
  v34 = KeyedDecodingContainer.allKeys.getter();
  v35 = (2 * *(v34 + 16)) | 1;
  v74 = v34;
  v75 = v34 + 32;
  v76 = 0;
  v77 = v35;
  v36 = specialized Collection<>.popFirst()();
  if (v36 == 8 || v76 != v77 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v40 = &type metadata for SymbolRenderingMode.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v31 + 8))(v26, v23);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v78 = v36;
  if (v36 > 3u)
  {
    if (v36 > 5u)
    {
      if (v36 == 6)
      {
        v79 = 6;
        lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalSlashBadgeCodingKeys();
        v45 = v67;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v60 + 8))(v45, v62);
      }

      else
      {
        v79 = 7;
        lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys and conformance SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v61 + 8))(v32, v63);
      }
    }

    else if (v36 == 4)
    {
      v79 = 4;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PreferredCodingKeys and conformance SymbolRenderingMode.Storage.PreferredCodingKeys();
      v42 = v66;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v56 + 8))(v42, v57);
    }

    else
    {
      v79 = 5;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalUnlessSlashedCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v58 + 8))(v29, v59);
    }

    (*(v31 + 8))(v26, v23);
    goto LABEL_23;
  }

  if (v36 > 1u)
  {
    if (v36 != 2)
    {
      v79 = 3;
      lazy protocol witness table accessor for type SymbolRenderingMode.Storage.PaletteCodingKeys and conformance SymbolRenderingMode.Storage.PaletteCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v55 + 8))(v30, v54);
      (*(v31 + 8))(v26, v23);
      goto LABEL_23;
    }

    v79 = 2;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage.HierarchicalCodingKeys and conformance SymbolRenderingMode.Storage.HierarchicalCodingKeys();
    v43 = v65;
    v44 = v23;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v52 + 8))(v43, v53);
LABEL_21:
    (*(v31 + 8))(v26, v44);
    goto LABEL_23;
  }

  if (v36)
  {
    v79 = 1;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MulticolorCodingKeys and conformance SymbolRenderingMode.Storage.MulticolorCodingKeys();
    v46 = v64;
    v44 = v23;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v50 + 8))(v46, v51);
    goto LABEL_21;
  }

  v79 = 0;
  lazy protocol witness table accessor for type SymbolRenderingMode.Storage.MonochromeCodingKeys and conformance SymbolRenderingMode.Storage.MonochromeCodingKeys();
  v37 = v72;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v49 + 8))(v37, v48);
  (*(v31 + 8))(v26, v23);
LABEL_23:
  swift_unknownObjectRelease();
  *v33 = v78;
  return __swift_destroy_boxed_opaque_existential_1(v73);
}

double View.symbolRenderingMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);

  return result;
}

void EnvironmentValues.symbolRenderingMode.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = v6;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v6);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v3);
    if (v5)
    {
      v4 = (v5 + 9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = &static SymbolRenderingOptionsKey.defaultValue;
    }
  }

  *a1 = *v4;
}

void EnvironmentValues.symbolRenderingOptions.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 74);
      *a1 = *(v4 + 36);
      a1[2] = v5;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = byte_1ED52FC63;
      *a1 = static SymbolRenderingOptionsKey.defaultValue;
      a1[2] = v6;
    }
  }
}

double EnvironmentValues.symbolRenderingOptions.setter(unsigned __int16 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1 | (*(a1 + 2) << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v3, *v2);
  }

  return result;
}

void (*EnvironmentValues.symbolRenderingMode.modify(void *a1))(uint64_t *a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v11);

    *(v4 + 40) = v11[0];
    return EnvironmentValues.symbolRenderingMode.modify;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v5);
    if (v8)
    {
      v9 = (v8 + 9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = &static SymbolRenderingOptionsKey.defaultValue;
    }

    *(v4 + 40) = *v9;
    return EnvironmentValues.symbolRenderingMode.modify;
  }
}

void EnvironmentValues.symbolRenderingMode.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*(*a1 + 24));
  if (a2)
  {
    if (v5)
    {
      v6 = v5 + 73;
      v7 = v5 + 74;
      goto LABEL_9;
    }

    v6 = &static SymbolRenderingOptionsKey.defaultValue + 1;
    v7 = &byte_1ED52FC63;
    if (one-time initialization token for defaultValue == -1)
    {
      goto LABEL_9;
    }

LABEL_14:
    swift_once();
    goto LABEL_9;
  }

  if (v5)
  {
    v6 = v5 + 73;
    v7 = v5 + 74;
    goto LABEL_9;
  }

  v6 = &static SymbolRenderingOptionsKey.defaultValue + 1;
  v7 = &byte_1ED52FC63;
  if (one-time initialization token for defaultValue != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v8 = *v6;
  v9 = *(v3 + 32);
  v10 = *(v3 + 16);
  v11 = v4 | (v8 << 8) | (*v7 << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v10, v11);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v3 + 24), **(v3 + 16));
  }

  free(v3);
}

{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v8);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v3 | (v8[1] << 8) | (v8[2] << 16);
    swift_retain_n();
  }

  else
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v9);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v3 | (v9[1] << 8) | (v9[2] << 16);
    swift_retain_n();
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v6, v7);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v2 + 24), **(v2 + 16));
  }

  free(v2);
}

uint64_t SymbolVariableValueMode.Storage.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolVariableValueMode.Storage.DrawCodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys, &unk_1F0076770, MEMORY[0x1E69E6F58]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolVariableValueMode.Storage.ColorCodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys, &unk_1F0076750, v3);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolVariableValueMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys, &unk_1F0076730, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SymbolVariableValueMode.Storage.CodingKeys()
{
  if (*v0)
  {
    return 2002874980;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance SymbolVariableValueMode.Storage.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 2002874980 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolVariableValueMode.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolVariableValueMode.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolVariableValueMode.Storage.ColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolVariableValueMode.Storage.ColorCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolVariableValueMode.Storage.DrawCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolVariableValueMode.Storage.DrawCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SymbolVariableValueMode.Storage@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized SymbolVariableValueMode.Storage.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void EnvironmentValues.symbolVariableValueMode.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, &v6);

    v4 = &v7;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v3);
    if (v5)
    {
      v4 = (v5 + 73);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = (&static SymbolRenderingOptionsKey.defaultValue + 1);
    }
  }

  *a1 = *v4;
}

double EnvironmentValues.symbolVariableValueMode.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    v6 = v11;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v11);

    v7 = v11[2];
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v4);
    if (v8)
    {
      v6 = (v8 + 9);
      v7 = *(v8 + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = &static SymbolRenderingOptionsKey.defaultValue;
      v7 = byte_1ED52FC63;
    }
  }

  v9 = *v6 | (v3 << 8) | (v7 << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v9);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v4, *v2);
  }

  return result;
}

uint64_t Image.symbolVariableValueMode(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.SymbolRenderingOptionsProvider>, lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider, &unk_1F00763C8, type metadata accessor for ImageProviderBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 8;
  *(v4 + 25) = v3;
  *(v4 + 26) = 514;

  return v4;
}

void key path getter for EnvironmentValues.symbolVariableValueMode : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, &v6);

    v4 = &v7;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = (v5 + 73);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = (&static SymbolRenderingOptionsKey.defaultValue + 1);
    }
  }

  *a2 = *v4;
}

void (*EnvironmentValues.symbolVariableValueMode.modify(void *a1))(uint64_t *a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v11);

    *(v4 + 40) = v11[1];
    return EnvironmentValues.symbolVariableValueMode.modify;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v5);
    if (v8)
    {
      v9 = v8 + 73;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = &static SymbolRenderingOptionsKey.defaultValue + 1;
    }

    *(v4 + 40) = *v9;
    return EnvironmentValues.symbolVariableValueMode.modify;
  }
}

void EnvironmentValues.symbolVariableValueMode.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*(*a1 + 24));
  if (a2)
  {
    if (v5)
    {
      v6 = (v5 + 9);
      v7 = v5 + 74;
      goto LABEL_9;
    }

    v6 = &static SymbolRenderingOptionsKey.defaultValue;
    v7 = &byte_1ED52FC63;
    if (one-time initialization token for defaultValue == -1)
    {
      goto LABEL_9;
    }

LABEL_14:
    swift_once();
    v6 = &static SymbolRenderingOptionsKey.defaultValue;
    goto LABEL_9;
  }

  if (v5)
  {
    v6 = (v5 + 9);
    v7 = v5 + 74;
    goto LABEL_9;
  }

  v6 = &static SymbolRenderingOptionsKey.defaultValue;
  v7 = &byte_1ED52FC63;
  if (one-time initialization token for defaultValue != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v8 = *v7;
  v9 = *(v3 + 32);
  v10 = *(v3 + 16);
  v11 = *v6;
  v12 = (v4 << 8) | (v8 << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v10, v12 | v11);

  if (v9)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v3 + 24), **(v3 + 16));
  }

  free(v3);
}

{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v9);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v9[0];
    v8 = (v3 << 8) | (v9[2] << 16);
    swift_retain_n();
  }

  else
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v10);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v10[0];
    v8 = (v3 << 8) | (v10[2] << 16);
    swift_retain_n();
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v6, v8 | v7);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v2 + 24), **(v2 + 16));
  }

  free(v2);
}

uint64_t SymbolColorRenderingMode.Storage.encode(to:)(void *a1, int a2)
{
  v21 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolColorRenderingMode.Storage.GradientCodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys, &unk_1F00766A0, MEMORY[0x1E69E6F58]);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolColorRenderingMode.Storage.FlatCodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys, &unk_1F0076680, v3);
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolColorRenderingMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys, &unk_1F0076660, v3);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21)
  {
    v23 = 1;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v22 = 0;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v17 + 8))(v9, v18);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SymbolColorRenderingMode.Storage.CodingKeys()
{
  if (*v0)
  {
    return 0x746E656964617267;
  }

  else
  {
    return 1952541798;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance SymbolColorRenderingMode.Storage.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952541798 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x746E656964617267 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolColorRenderingMode.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolColorRenderingMode.Storage.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolColorRenderingMode.Storage.FlatCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolColorRenderingMode.Storage.FlatCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolColorRenderingMode.Storage.GradientCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolColorRenderingMode.Storage.GradientCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SymbolColorRenderingMode.Storage@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized SymbolColorRenderingMode.Storage.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void EnvironmentValues.symbolColorRenderingMode.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v6);

    v4 = v6[2];
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v3);
    if (v5)
    {
      v4 = *(v5 + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = byte_1ED52FC63;
    }
  }

  *a1 = v4;
}

double EnvironmentValues.symbolColorRenderingMode.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    v6 = &v11;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, &v11);

    v7 = &v12;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v4);
    if (v8)
    {
      v6 = (v8 + 9);
      v7 = v8 + 73;
    }

    else
    {
      v6 = &static SymbolRenderingOptionsKey.defaultValue;
      v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
      }
    }
  }

  v9 = *v6 | (v3 << 16) | (*v7 << 8);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v9);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v4, *v2);
  }

  return result;
}

uint64_t Image.symbolColorRenderingMode(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.SymbolRenderingOptionsProvider>, lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider, &unk_1F00763C8, type metadata accessor for ImageProviderBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 520;
  *(v4 + 26) = v3;
  *(v4 + 27) = 4;

  return v4;
}

uint64_t Image.symbolRenderingPreferGradients(_:)(char a1, uint64_t a2)
{
  if (a1 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a1 & 1;
  }

  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for ImageProviderBox<Image.SymbolRenderingOptionsProvider>, lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider and conformance Image.SymbolRenderingOptionsProvider, &unk_1F00763C8, type metadata accessor for ImageProviderBox);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 520;
  *(v4 + 26) = v3;
  *(v4 + 27) = 4;

  return v4;
}

void key path getter for EnvironmentValues.symbolColorRenderingMode : EnvironmentValues(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v6);

    v4 = v6[2];
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = byte_1ED52FC63;
    }
  }

  *a2 = v4;
}

void (*EnvironmentValues.symbolColorRenderingMode.modify(void *a1))(uint64_t *a1, char a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v11);

    *(v4 + 40) = v11[2];
    return EnvironmentValues.symbolColorRenderingMode.modify;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v5);
    if (v8)
    {
      v9 = v8 + 74;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = &byte_1ED52FC63;
    }

    *(v4 + 40) = *v9;
    return EnvironmentValues.symbolColorRenderingMode.modify;
  }
}

void EnvironmentValues.symbolColorRenderingMode.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*(*a1 + 24));
  if (a2)
  {
    if (v5)
    {
      v6 = (v5 + 9);
      v7 = v5 + 73;
      goto LABEL_9;
    }

    v6 = &static SymbolRenderingOptionsKey.defaultValue;
    v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
    if (one-time initialization token for defaultValue == -1)
    {
      goto LABEL_9;
    }

LABEL_14:
    swift_once();
    v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
    v6 = &static SymbolRenderingOptionsKey.defaultValue;
    goto LABEL_9;
  }

  if (v5)
  {
    v6 = (v5 + 9);
    v7 = v5 + 73;
    goto LABEL_9;
  }

  v6 = &static SymbolRenderingOptionsKey.defaultValue;
  v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
  if (one-time initialization token for defaultValue != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v8 = *(v3 + 32);
  v9 = *(v3 + 16);
  v10 = *v6 | (v4 << 16) | (*v7 << 8);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v9, v10);

  if (v8)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v3 + 24), **(v3 + 16));
  }

  free(v3);
}

{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  if (a2)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v8);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v8[0] | (v3 << 16) | (v8[1] << 8);
    swift_retain_n();
  }

  else
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v9);

    v5 = *(v2 + 32);
    v6 = *(v2 + 16);
    v7 = v9[0] | (v3 << 16) | (v9[1] << 8);
    swift_retain_n();
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v6, v7);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v2 + 24), **(v2 + 16));
  }

  free(v2);
}

uint64_t EnvironmentValues.symbolRenderingPreferGradients.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v1, v5);

    v2 = v5[2];
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v1);
    if (v3)
    {
      v2 = *(v3 + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v2 = byte_1ED52FC63;
    }
  }

  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 & 1;
  }
}

double EnvironmentValues.symbolRenderingPreferGradients.setter(char a1)
{
  v2 = v1;
  if (a1 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a1 & 1;
  }

  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    v6 = &v12;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, &v12);

    v7 = &v13;
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v4);
    if (v8)
    {
      v6 = (v8 + 9);
      v7 = v8 + 73;
    }

    else
    {
      v6 = &static SymbolRenderingOptionsKey.defaultValue;
      v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
        v7 = &static SymbolRenderingOptionsKey.defaultValue + 1;
      }
    }
  }

  v9 = *v6;
  v10 = (v3 << 16) | (*v7 << 8);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v10 | v9);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v4, *v2);
  }

  return result;
}

double (*EnvironmentValues.symbolRenderingPreferGradients.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = EnvironmentValues.symbolRenderingPreferGradients.getter();
  return EnvironmentValues.symbolRenderingPreferGradients.modify;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SymbolRenderingOptions.CodingKeys()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x6E697265646E6572;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SymbolRenderingOptions.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SymbolRenderingOptions.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymbolRenderingOptions.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SymbolRenderingOptions.CodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SymbolRenderingOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v18 = a2;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolRenderingOptions.CodingKeys>, lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys, &unk_1F0076350, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v18;
    v23 = 0;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v24;
    v21 = 1;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v12 = v9;
    v13 = v22;
    v19 = 2;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (v13 == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = v13 & 1;
    }

    (*(v12 + 8))(v8, v5);
    if (v20 == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v20 & 1;
    }

    *v10 = v11;
    v10[1] = v15;
    v10[2] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SymbolRenderingOptions.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SymbolRenderingOptions.CodingKeys>, lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys, &unk_1F0076350, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v7 == 8)
  {
    v9 = v14;
  }

  else
  {
    v17 = v7;
    v16 = 0;
    lazy protocol witness table accessor for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage();
    v10 = v14;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = v10;
    if (v10)
    {
      return (*(v15 + 8))(v6, v4);
    }
  }

  if (v8 == 2 || (v19 = v8 & 1, v18 = 1, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage(), KeyedEncodingContainer.encode<A>(_:forKey:)(), !v9))
  {
    if (v13 != 2)
    {
      v21 = v13 & 1;
      v20 = 2;
      lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }
  }

  return (*(v15 + 8))(v6, v4);
}

void key path getter for EnvironmentValues.symbolRenderingOptions : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = v8;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v3, v8);

    v5 = v8[1];
    v6 = v8[2];
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a1);
    if (v7)
    {
      v4 = (v7 + 9);
      v5 = *(v7 + 73);
      v6 = *(v7 + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = &static SymbolRenderingOptionsKey.defaultValue;
      v5 = HIBYTE(static SymbolRenderingOptionsKey.defaultValue);
      v6 = byte_1ED52FC63;
    }
  }

  *a2 = *v4;
  a2[1] = v5;
  a2[2] = v6;
}

double key path setter for EnvironmentValues.symbolRenderingOptions : EnvironmentValues(unsigned __int16 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1 | (*(a1 + 2) << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v3, *a2);
  }

  return result;
}

void (*EnvironmentValues.symbolRenderingOptions.modify(void *a1))(uint64_t *a1)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 74);
      *(v4 + 20) = *(v7 + 36);
      *(v4 + 42) = v8;
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v9 = byte_1ED52FC63;
      *(v4 + 20) = static SymbolRenderingOptionsKey.defaultValue;
      *(v4 + 42) = v9;
    }
  }

  return EnvironmentValues.symbolRenderingOptions.modify;
}

void EnvironmentValues.symbolRenderingOptions.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40) | (*(*a1 + 42) << 16);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t ImageResolutionContext.symbolRenderingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ImageResolutionContext(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ImageResolutionContext.symbolRenderingMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ImageResolutionContext(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t (*ImageResolutionContext.symbolRenderingMode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for ImageResolutionContext(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return ImageResolutionContext.symbolRenderingMode.modify;
}

uint64_t Image.SymbolRenderingOptionsProvider.resolveNamedImage(in:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v2[8];
  v9 = v2[9];
  v10 = v2[10];
  v11 = v2[11];
  outlined init with copy of ImageResolutionContext(a1, v6);
  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6[*(v4 + 32) + 1] = v9;
    if ((v11 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v6[*(v4 + 32)] = v8;
  if ((v11 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v11 & 4) != 0)
  {
LABEL_4:
    v6[*(v4 + 32) + 2] = v10;
  }

LABEL_5:
  (*(*v7 + 88))(v6);
  return outlined destroy of ImageResolutionContext(v6);
}

void lazy protocol witness table accessor for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingOptions.CodingKeys, &unk_1F0076350, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingOptions.CodingKeys, &unk_1F0076350, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingOptions.CodingKeys, &unk_1F0076350, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingOptions.CodingKeys, &unk_1F0076350, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingOptions.CodingKeys and conformance SymbolRenderingOptions.CodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage()
{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage, &type metadata for SymbolRenderingMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage, &type metadata for SymbolRenderingMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolRenderingMode.Storage, &type metadata for SymbolRenderingMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolRenderingMode.Storage and conformance SymbolRenderingMode.Storage);
  }
}

void lazy protocol witness table accessor for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage()
{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage, &type metadata for SymbolVariableValueMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage, &type metadata for SymbolVariableValueMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage, &type metadata for SymbolVariableValueMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage and conformance SymbolVariableValueMode.Storage);
  }
}

void lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage()
{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage, &type metadata for SymbolColorRenderingMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage, &type metadata for SymbolColorRenderingMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage, &type metadata for SymbolColorRenderingMode.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage and conformance SymbolColorRenderingMode.Storage);
  }
}

uint64_t getEnumTagSinglePayload for SymbolRenderingOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = a1[1];
  if (v4 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v5 - 3;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for SymbolRenderingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SymbolRenderingMode?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SymbolRenderingMode?>)
  {
    type metadata accessor for SymbolRenderingMode?();
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SymbolRenderingMode?>);
    }
  }
}

void type metadata accessor for SymbolRenderingMode?()
{
  if (!lazy cache variable for type metadata for SymbolRenderingMode?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SymbolRenderingMode?);
    }
  }
}

uint64_t *assignWithCopy for Image.SymbolRenderingOptionsProvider(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  *(a1 + 11) = *(a2 + 11);
  return a1;
}

uint64_t specialized SymbolVariableValueMode.Storage.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolVariableValueMode.Storage.DrawCodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys, &unk_1F0076770, MEMORY[0x1E69E6F48]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - v4;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolVariableValueMode.Storage.ColorCodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys, &unk_1F0076750, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolVariableValueMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys, &unk_1F0076730, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys();
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v6;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v33 = a1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v34 = v17;
  v35 = v17 + 32;
  v36 = 0;
  v37 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v36 != v37 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v24 = &type metadata for SymbolVariableValueMode.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v32 + 8))(v12, v10);
    swift_unknownObjectRelease();
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20 & 1;
}

uint64_t specialized SymbolColorRenderingMode.Storage.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolColorRenderingMode.Storage.GradientCodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys, &unk_1F00766A0, MEMORY[0x1E69E6F48]);
  v28 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - v4;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolColorRenderingMode.Storage.FlatCodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys, &unk_1F0076680, v2);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  type metadata accessor for KeyedEncodingContainer<SymbolRenderingMode.Storage.PaletteSlashBadgeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SymbolColorRenderingMode.Storage.CodingKeys>, lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys, &unk_1F0076660, v2);
  v10 = v9;
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys();
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = v6;
  v15 = v29;
  v14 = v30;
  v16 = v31;
  v33 = a1;
  v17 = KeyedDecodingContainer.allKeys.getter();
  v18 = (2 * *(v17 + 16)) | 1;
  v34 = v17;
  v35 = v17 + 32;
  v36 = 0;
  v37 = v18;
  v19 = specialized Collection<>.popFirst()();
  if (v19 == 2 || v36 != v37 >> 1)
  {
    v22 = type metadata accessor for DecodingError();
    swift_allocError();
    v24 = v23;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v24 = &type metadata for SymbolColorRenderingMode.Storage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v32 + 8))(v12, v10);
    swift_unknownObjectRelease();
    a1 = v33;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v19;
  if (v19)
  {
    v38 = 1;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v16 + 8))(v14, v28);
  }

  else
  {
    v38 = 0;
    lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v21 = v32;
    (*(v15 + 8))(v8, v27);
  }

  (*(v21 + 8))(v12, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v33);
  return v20 & 1;
}

uint64_t specialized SymbolRenderingMode.Storage.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7268636F6E6F6DLL && a2 == 0xEA0000000000656DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6369746C756DLL && a2 == 0xEA0000000000726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863726172656968 && a2 == 0xEC0000006C616369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657474656C6170 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572726566657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x800000018DD7B840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000018DD7B860 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD7B880 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t specialized SymbolRenderingOptions.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E697265646E6572 && a2 == 0xED000065646F4D67;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018DD7B8A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018DD7B8C0 == a2)
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

void lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.DrawCodingKeys, &unk_1F0076770, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.DrawCodingKeys, &unk_1F0076770, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.DrawCodingKeys, &unk_1F0076770, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.DrawCodingKeys and conformance SymbolVariableValueMode.Storage.DrawCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.ColorCodingKeys, &unk_1F0076750, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.ColorCodingKeys, &unk_1F0076750, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.ColorCodingKeys, &unk_1F0076750, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.ColorCodingKeys and conformance SymbolVariableValueMode.Storage.ColorCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.CodingKeys, &unk_1F0076730, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.CodingKeys, &unk_1F0076730, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.CodingKeys, &unk_1F0076730, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolVariableValueMode.Storage.CodingKeys, &unk_1F0076730, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolVariableValueMode.Storage.CodingKeys and conformance SymbolVariableValueMode.Storage.CodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.GradientCodingKeys, &unk_1F00766A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.GradientCodingKeys, &unk_1F00766A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.GradientCodingKeys, &unk_1F00766A0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.GradientCodingKeys and conformance SymbolColorRenderingMode.Storage.GradientCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.FlatCodingKeys, &unk_1F0076680, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.FlatCodingKeys, &unk_1F0076680, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.FlatCodingKeys, &unk_1F0076680, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.FlatCodingKeys and conformance SymbolColorRenderingMode.Storage.FlatCodingKeys);
  }
}

void lazy protocol witness table accessor for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys()
{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.CodingKeys, &unk_1F0076660, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.CodingKeys, &unk_1F0076660, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.CodingKeys, &unk_1F0076660, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys);
  }
}

{
  if (!lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys)
  {
    swift_getWitnessTable(protocol conformance descriptor for SymbolColorRenderingMode.Storage.CodingKeys, &unk_1F0076660, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SymbolColorRenderingMode.Storage.CodingKeys and conformance SymbolColorRenderingMode.Storage.CodingKeys);
  }
}

void lazy protocol witness table accessor for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties()
{
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.SymbolRenderingOptionsProvider.Properties, &unk_1F0076790, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.SymbolRenderingOptionsProvider.Properties, &unk_1F0076790, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.SymbolRenderingOptionsProvider.Properties, &unk_1F0076790, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.SymbolRenderingOptionsProvider.Properties, &unk_1F0076790, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.SymbolRenderingOptionsProvider.Properties and conformance Image.SymbolRenderingOptionsProvider.Properties);
  }
}

uint64_t _ShaderFilterEffect.init(shader:maxSampleOffset:enabled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = *(result + 8);
  v6 = *(result + 32);
  *a3 = *result;
  *(a3 + 8) = v5;
  *(a3 + 16) = *(result + 16);
  *(a3 + 32) = v6;
  *(a3 + 40) = a4;
  *(a3 + 48) = a5;
  *(a3 + 56) = a2;
  return result;
}

void *static _ShaderFilterEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = a2[3];
  v45 = a2[2];
  v46 = v7;
  v47 = a2[4];
  v48 = *(a2 + 20);
  v8 = a2[1];
  v43 = *a2;
  v44 = v8;
  v9 = v8;
  swift_beginAccess();
  v10 = *(v9 + 16);
  type metadata accessor for PropertyList.Tracker();
  v11 = swift_allocObject();
  type metadata accessor for AtomicBuffer<TrackerData>(0, v12, v13, v14);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC8];
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v16;
  v17 = MEMORY[0x1E69E7CC0];
  *(v15 + 40) = v16;
  *(v15 + 48) = v17;
  *(v15 + 56) = 0;
  *(v11 + 16) = v15;
  *&v37 = __PAIR64__(v10, v6);
  *(&v37 + 1) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type _ShaderFilterEffect.ResolvedEffect and conformance _ShaderFilterEffect.ResolvedEffect();
  v18 = Attribute.init<A>(body:value:flags:update:)();

  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v33 = v45;
  v34 = v46;
  v35 = v47;
  v31 = v43;
  v32 = v44;
  v20 = v45;
  v36 = v48;
  LODWORD(v33) = 0;
  v42 = v48;
  v40 = v46;
  v41 = v47;
  v37 = v43;
  v38 = v44;
  v39 = v33;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v46))
  {
    v23 = v18;
    v24[0] = v37;
    v24[1] = v38;
    v24[2] = v39;
    outlined init with copy of _ViewInputs(&v43, &v25);
    outlined init with copy of _ViewInputs(&v37, &v25);
    _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA6ShaderV08ResolvedJ0V_Tt1B5(&v23, v24);
    _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA6ShaderV08ResolvedN0V_Tt3B5(v23, &v37, a3, a4);
  }

  else
  {
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    v25 = v37;
    v26 = v38;
    outlined init with copy of _ViewInputs(&v43, v24);
    v21 = outlined init with copy of _ViewInputs(&v37, v24);
    (a3)(v21, &v25);
  }

  outlined destroy of _ViewInputs(&v37);
  LODWORD(v33) = v20;
  if (ShouldRecordTree)
  {
    _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a4, &v31);
    AGSubgraphEndTreeElement();
  }

  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  return outlined destroy of _ViewInputs(&v25);
}

double ShaderLibrary.subscript.getter@<D0>(void *a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  v4 = *v3;
  *a3 = *v3;
  a3[1] = a1;
  a3[2] = a2;
  v5 = v4;

  return result;
}

double ShaderFunction.dynamicallyCall(withArguments:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  *(a2 + 32) = 0;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = a1;
  v6 = v3;

  return result;
}

void Shader.ResolvedShader.animatableData.getter(char **a1@<X8>)
{
  v3 = *v1;
  v4 = v3;

  ShaderVectorData.init(rbShader:)(v3, a1);
}

Swift::Void __swiftcall ShaderVectorData.scale(by:)(Swift::Double by)
{
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    v23 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_29:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v6 = 0;
    *v23 = v2;
    v7 = v2 + 32;
    v8 = by;
    v24 = v2 + 32;
    v25 = v2;
    v27 = v8;
    while (1)
    {
      if (v6 == v3)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= *(v2 + 2))
      {
        goto LABEL_28;
      }

      v10 = &v7[24 * v6];
      v11 = *v10;
      v12 = v10[1].u8[0];
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v20 = vmul_n_f32(vmovn_s64(v11), v8);
          v21.i64[0] = v20.u32[0];
          v21.i64[1] = v20.u32[1];
          v9 = vorrq_s8(vshll_n_s32(vmul_n_f32(vshrn_n_s64(v11, 0x20uLL), v8), 0x20uLL), v21);
        }

        else
        {
          if (v12 != 4)
          {
            goto LABEL_6;
          }

          v13 = v10->i64[0];
          v14 = *(v11.i64[0] + 16);
          if (v14)
          {
            v26 = *v10;
            v28 = MEMORY[0x1E69E7CC0];

            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
            v15 = v28;
            v16 = (v13 + 32);
            v17 = *(v28 + 16);
            v18 = v27;
            do
            {
              LODWORD(by) = *v16;
              v19 = *(v28 + 24);
              if (v17 >= v19 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v17 + 1, 1);
                v18 = v27;
              }

              *(v28 + 16) = v17 + 1;
              *(v28 + 4 * v17 + 32) = *&by * v18;
              ++v16;
              ++v17;
              --v14;
            }

            while (v14);
            outlined consume of ShaderVectorData.Element(v13, v26.i64[1], 4);
            v11 = *v10;
            v22 = v10[1].i8[0];
            v7 = v24;
            v2 = v25;
          }

          else
          {
            v22 = 4;
            v15 = MEMORY[0x1E69E7CC0];
          }

          outlined consume of ShaderVectorData.Element(v11.i64[0], v11.i64[1], v22);
          v9 = v15;
          v8 = v27;
        }
      }

      else if (v10[1].i8[0])
      {
        if (v12 == 1)
        {
          v9 = COERCE_UNSIGNED_INT(v8 * *v11.i32) | (COERCE_UNSIGNED_INT(v8 * *&v11.i32[1]) << 32);
        }

        else
        {
          *&v9 = COERCE_UNSIGNED_INT(v8 * *v11.i32) | (COERCE_UNSIGNED_INT(v8 * *&v11.i32[1]) << 32);
          *(&v9 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v8, v11, 2));
        }
      }

      else
      {
        DWORD1(v9) = 0;
        *(&v9 + 1) = 0;
        *&v9 = v8 * *v11.i32;
      }

      *v10 = v9;
      v10[1].i8[0] = v12;
LABEL_6:
      if (++v6 == v3)
      {
        *v23 = v2;
        return;
      }
    }
  }
}