id protocol witness for TokenizerRunnerTokenizer.tokenID(forText:) in conformance TokenizerRunnerSentencePieceModel()
{
  v1 = *v0;
  v2 = MEMORY[0x1AC57BF60]();
  v3 = [v1 idFrom_];

  return v3;
}

uint64_t protocol witness for TokenizerRunnerTokenizer.text(forTokenID:) in conformance TokenizerRunnerSentencePieceModel(uint64_t a1)
{
  v2 = [*v1 pieceFrom_];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

TokenGenerationCore::TGModes_optional __swiftcall TGModes.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TGModes.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t TGModes.rawValue.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x657A696E656B6F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TGModes(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000016;
  v4 = 0x80000001A8FD8330;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001A8FD8330;
  }

  else
  {
    v3 = 0x657A696E656B6F74;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6574656C706D6F63;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0xD000000000000016;
  if (*a2 != 1)
  {
    v8 = 0x657A696E656B6F74;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6574656C706D6F63;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TGModes()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TGModes(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TGModes(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TGModes(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x80000001A8FD8330;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0x657A696E656B6F74;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6574656C706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AutomationJSON.mode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AutomationJSON.modelBundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AutomationJSON.prompt.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t AutomationJSON.locale.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

TokenGenerationCore::AutomationJSON::InputPromptType_optional __swiftcall AutomationJSON.InputPromptType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutomationJSON.InputPromptType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t AutomationJSON.InputPromptType.rawValue.getter()
{
  v1 = 0x444974706D6F7270;
  if (*v0 != 1)
  {
    v1 = 0x655474706D6F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutomationJSON.InputPromptType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x444974706D6F7270;
  if (v2 != 1)
  {
    v4 = 0x655474706D6F7270;
    v3 = 0xEE006574616C706DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x74706D6F7270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x444974706D6F7270;
  if (*a2 != 1)
  {
    v8 = 0x655474706D6F7270;
    v7 = 0xEE006574616C706DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x74706D6F7270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AutomationJSON.InputPromptType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AutomationJSON.InputPromptType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutomationJSON.InputPromptType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AutomationJSON.InputPromptType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x444974706D6F7270;
  if (v2 != 1)
  {
    v5 = 0x655474706D6F7270;
    v4 = 0xEE006574616C706DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74706D6F7270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.RichVariableBinding.CodingKeys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.RichVariableBinding.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.RichVariableBinding.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.RichVariableBinding.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AutomationJSON.RichVariableBinding.FieldType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AutomationJSON.RichVariableBinding.FieldType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutomationJSON.RichVariableBinding.FieldType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AutomationJSON.RichVariableBinding.FieldType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AutomationJSON.RichVariableBinding.FieldType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AutomationJSON.RichVariableBinding.FieldType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727473;
  v5 = 0xE900000000000068;
  v6 = 0x7461506567616D69;
  v7 = 0xED00006874615067;
  v8 = 0x6E69646465626D65;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001A8FD83A0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65747441666C6573;
    v3 = 0xED00006E6F69746ELL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t AutomationJSON.RichVariableBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV19RichVariableBindingO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV19RichVariableBindingO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v21 = 0;
    lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v22;
    v10 = (v6 + 8);
    if (v22 <= 1u)
    {
      if (v22)
      {
        v17 = 1;
      }

      else
      {
        v16 = 1;
      }
    }

    else if (v22 == 2)
    {
      v18 = 1;
    }

    else if (v22 == 3)
    {
      v19 = 1;
    }

    else
    {
      v20 = 1;
    }

    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*v10)(v8, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding.FieldType and conformance AutomationJSON.RichVariableBinding.FieldType);
  }

  return result;
}

uint64_t AutomationJSON.RichVariableBinding.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV19RichVariableBindingO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV19RichVariableBindingO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *(v1 + 8);
  v11[1] = *v1;
  v11[2] = v8;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding.CodingKeys and conformance AutomationJSON.RichVariableBinding.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v9 <= 1)
  {
    if (v9)
    {
      v15 = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v14 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v13 = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v2)
      {
        v12 = 1;
        goto LABEL_16;
      }
    }

    return (*(v5 + 8))(v7, v4);
  }

  if (v9 == 2)
  {
    v17 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v2)
    {
      v16 = 1;
      goto LABEL_16;
    }

    return (*(v5 + 8))(v7, v4);
  }

  if (v9 != 3)
  {
    v21 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v2)
    {
      v20 = 1;
      goto LABEL_16;
    }

    return (*(v5 + 8))(v7, v4);
  }

  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v18 = 1;
LABEL_16:
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t AutomationJSON.responses.setter(uint64_t a1)
{

  *(v1 + 160) = a1;
  return result;
}

uint64_t AutomationJSON.output.setter(uint64_t a1)
{

  *(v1 + 168) = a1;
  return result;
}

uint64_t AutomationJSON.RenderedPrompt.originalPrompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AutomationJSON.RenderedPrompt.renderedString.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AutomationJSON.RenderedPrompt.Source.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AutomationJSON.RenderedPrompt.Source.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AutomationJSON.RenderedPrompt.Source.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AutomationJSON.RenderedPrompt.Source.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

TokenGenerationCore::AutomationJSON::RenderedPrompt::Source __swiftcall AutomationJSON.RenderedPrompt.Source.init(identifier:version:)(Swift::String identifier, Swift::String version)
{
  *v2 = identifier;
  v2[1] = version;
  result.version = version;
  result.identifier = identifier;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.RenderedPrompt.Source.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.RenderedPrompt.Source.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.RenderedPrompt.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.RenderedPrompt.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.RenderedPrompt.Source.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV6SourceV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV6SourceV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  v8 = v10[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.RenderedPrompt.Source.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV6SourceV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV6SourceV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source.CodingKeys and conformance AutomationJSON.RenderedPrompt.Source.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.RenderedPrompt.source.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  *a1 = v1[7];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

void __swiftcall AutomationJSON.RenderedPrompt.init(originalPrompt:renderedString:segments:tokenIDs:userInfo:source:)(TokenGenerationCore::AutomationJSON::RenderedPrompt *__return_ptr retstr, Swift::String originalPrompt, Swift::String renderedString, Swift::OpaquePointer segments, Swift::OpaquePointer tokenIDs, Swift::OpaquePointer userInfo, TokenGenerationCore::AutomationJSON::RenderedPrompt::Source source)
{
  v7 = *source.identifier._countAndFlagsBits;
  v8 = *(source.identifier._countAndFlagsBits + 16);
  v9 = *(source.identifier._countAndFlagsBits + 24);
  retstr->originalPrompt = originalPrompt;
  retstr->renderedString = renderedString;
  retstr->segments = segments;
  retstr->tokenIDs = tokenIDs;
  retstr->userInfo = userInfo;
  retstr->source.identifier = v7;
  retstr->source.version._countAndFlagsBits = v8;
  retstr->source.version._object = v9;
}

uint64_t AutomationJSON.RenderedPrompt.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[7];
  v8 = v0[8];
  v13 = v0[10];
  v14 = v0[9];
  _StringGuts.grow(_:)(179);
  MEMORY[0x1AC57C120](0xD000000000000042, 0x80000001A8FD97A0);
  MEMORY[0x1AC57C120](v1, v2);
  MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FD97F0);
  MEMORY[0x1AC57C120](v3, v4);
  MEMORY[0x1AC57C120](0x656D676573202D0ALL, 0xED0000203A73746ELL);
  v9 = MEMORY[0x1AC57C2C0](v6, MEMORY[0x1E69E6158]);
  MEMORY[0x1AC57C120](v9);

  MEMORY[0x1AC57C120](0x6E656B6F74202D0ALL, 0xED0000203A734449);
  v10 = MEMORY[0x1AC57C2C0](v5, MEMORY[0x1E69E6530]);
  MEMORY[0x1AC57C120](v10);

  MEMORY[0x1AC57C120](0x4972657375202D0ALL, 0xED0000203A6F666ELL);
  v11 = Dictionary.description.getter();
  MEMORY[0x1AC57C120](v11);

  MEMORY[0x1AC57C120](0xD000000000000016, 0x80000001A8FD9810);
  MEMORY[0x1AC57C120](v7, v8);
  MEMORY[0x1AC57C120](0xD000000000000013, 0x80000001A8FD9830);
  MEMORY[0x1AC57C120](v14, v13);
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.RenderedPrompt.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C616E696769726FLL;
  v3 = 0x7344496E656B6F74;
  v4 = 0x6F666E4972657375;
  if (v1 != 4)
  {
    v4 = 0x656372756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64657265646E6572;
  if (v1 != 1)
  {
    v5 = 0x73746E656D676573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.RenderedPrompt.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AutomationJSON.RenderedPrompt.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.RenderedPrompt.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.RenderedPrompt.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.RenderedPrompt.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = v1[2];
  v24 = v1[3];
  v25 = v7;
  v8 = v1[4];
  v22 = v1[5];
  v23 = v8;
  v9 = v1[6];
  v11 = v1[8];
  v10 = v1[9];
  v17 = v1[7];
  v18 = v11;
  v19 = v10;
  v20 = v1[10];
  v21 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  v12 = v26;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v14 = v22;
    v13 = v23;
    v15 = v21;
    LOBYTE(v27) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = v13;
    v31 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v14;
    v31 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v15;
    v31 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = 5;
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySiGMd, &_sSaySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source);
  }

  return result;
}

uint64_t AutomationJSON.RenderedPrompt.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV14RenderedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.CodingKeys and conformance AutomationJSON.RenderedPrompt.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v35[0]) = 1;
  *&v29 = KeyedDecodingContainer.decode(_:forKey:)();
  *(&v29 + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  LOBYTE(v30[0]) = 2;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v35[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  LOBYTE(v30[0]) = 3;
  lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
  v27 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v35[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  LOBYTE(v30[0]) = 4;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v35[0];
  v39 = 5;
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt.Source and conformance AutomationJSON.RenderedPrompt.Source();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v27 = v36;
  v24 = v37;
  v13 = v38;
  v23 = *(&v37 + 1);
  *&v30[0] = v9;
  *(&v30[0] + 1) = v11;
  v14 = v29;
  v30[1] = v29;
  v15 = *(&v29 + 1);
  v16 = v28;
  *&v31 = v28;
  *(&v31 + 1) = v26;
  *&v32 = v25;
  *(&v32 + 1) = v36;
  v33 = v37;
  v34 = v38;
  v17 = v29;
  *a2 = v30[0];
  *(a2 + 16) = v17;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  *(a2 + 80) = v13;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 32) = v18;
  outlined init with copy of AutomationJSON.RenderedPrompt(v30, v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35[0] = v9;
  v35[1] = v11;
  v35[2] = v14;
  v35[3] = v15;
  v35[4] = v16;
  v35[5] = v26;
  v35[6] = v25;
  v35[7] = v27;
  v35[8] = v24;
  v35[9] = v23;
  v35[10] = v13;
  return outlined destroy of AutomationJSON.RenderedPrompt(v35);
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AutomationJSON.renderedPrompts.setter(uint64_t a1)
{

  *(v1 + 176) = a1;
  return result;
}

uint64_t AutomationJSON.constraintValidation.setter(uint64_t a1)
{

  *(v1 + 184) = a1;
  return result;
}

uint64_t AutomationJSON.stopSequence.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t AutomationJSON.schema.getter()
{
  v1 = *(v0 + 264);

  return v1;
}

uint64_t AutomationJSON.grammar.getter()
{
  v1 = *(v0 + 280);

  return v1;
}

uint64_t AutomationJSON.schemaIdentifier.getter()
{
  v1 = *(v0 + 304);

  return v1;
}

uint64_t AutomationJSON.grammarIdentifier.getter()
{
  v1 = *(v0 + 320);

  return v1;
}

void AutomationJSON.samplingStrategyConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 400);
  *a1 = *(v1 + 392);
  *(a1 + 8) = v2;
}

BOOL static AutomationJSON.SamplingStrategyConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return *&v2 == *&v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1 || v2 != v3)
    {
      return 0;
    }
  }

  else if (v4 != 2 || *&v3 != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys()
{
  v1 = 0x7375656C63756ELL;
  if (*v0 != 1)
  {
    v1 = 0x78616D677261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1802530676;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AutomationJSON.SamplingStrategyConfiguration.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.SamplingStrategyConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO16ArgmaxCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO16ArgmaxCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO17NucleusCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO17NucleusCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO14TopkCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO14TopkCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v20 = *(v8 - 8);
  v21 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v27 = *v2;
  v15 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v28 = 0;
    lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v21;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v20 + 8))(v10, v17);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v24;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v22 + 8))(v7, v16);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys();
  v19 = v23;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v25 + 8))(v19, v26);
  return (*(v12 + 8))(v14, v11);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.SamplingStrategyConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO16ArgmaxCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO16ArgmaxCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v35[-v4];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO17NucleusCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO17NucleusCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v35[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO14TopkCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO14TopkCodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationO10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35[-v12];
  v14 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.CodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.CodingKeys();
  v15 = v45;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  v37 = 0;
  v45 = v11;
  v16 = v43;
  v17 = v44;
  v18 = KeyedDecodingContainer.allKeys.getter();
  v19 = (2 * *(v18 + 16)) | 1;
  v48 = v18;
  v49 = v18 + 32;
  v50 = 0;
  v51 = v19;
  v20 = specialized Collection<>.popFirst()();
  if (v20 == 3 || v50 != v51 >> 1)
  {
    v23 = type metadata accessor for DecodingError();
    swift_allocError();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v25 = &type metadata for AutomationJSON.SamplingStrategyConfiguration;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v45 + 8))(v13, v10);
    goto LABEL_9;
  }

  v36 = v20;
  if (v20)
  {
    if (v20 == 1)
    {
      v47 = 1;
      lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.NucleusCodingKeys();
      v21 = v37;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v45;
      if (v21)
      {
        (*(v45 + 8))(v13, v10);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v46);
      }

      v30 = v38;
      KeyedDecodingContainer.decode(_:forKey:)();
      v33 = v32;
      (*(v42 + 8))(v6, v30);
      (*(v22 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v34 = v33;
      goto LABEL_18;
    }

    v47 = 2;
    lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.ArgmaxCodingKeys();
    v28 = v37;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v45;
    if (!v28)
    {
      (*(v40 + 8))(v16, v41);
      (*(v29 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v34 = 0;
LABEL_18:
      v31 = v17;
      goto LABEL_19;
    }

LABEL_12:
    (*(v45 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  v47 = 0;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys and conformance AutomationJSON.SamplingStrategyConfiguration.TopkCodingKeys();
  v27 = v37;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v27)
  {
    goto LABEL_12;
  }

  v31 = v17;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v39 + 8))(v9, v7);
  (*(v45 + 8))(v13, v10);
  swift_unknownObjectRelease();
LABEL_19:
  *v31 = v34;
  *(v31 + 8) = v36;
  return __swift_destroy_boxed_opaque_existential_0(v46);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutomationJSON.SamplingStrategyConfiguration(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1 == *&v2;
  }

  v5 = v4;
  v6 = *a1 == v2;
  if (v3 != 1)
  {
    v6 = 0;
  }

  v8 = v3 == 2 && *&v2 == 0;
  if (*(a1 + 8) != 1)
  {
    v6 = v8;
  }

  if (*(a1 + 8))
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t AutomationJSON.useCaseIdentifier.getter()
{
  v1 = *(v0 + 408);

  return v1;
}

void AutomationJSON.inputSafetyConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 424);
  v3 = *(v1 + 432);
  v4 = *(v1 + 440);
  v5 = *(v1 + 448);
  v6 = *(v1 + 456);
  v7 = *(v1 + 464);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 472);
  outlined copy of AutomationJSON.InputSafetyConfiguration?(v2, v3, v4, v5, v6, v7);
}

void outlined copy of AutomationJSON.InputSafetyConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t AutomationJSON.outputSafetyConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 480);
  v3 = *(v1 + 488);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 496);
  return outlined copy of AutomationJSON.OutputSafetyConfiguration?(v2, v3);
}

uint64_t outlined copy of AutomationJSON.OutputSafetyConfiguration?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

TokenGenerationCore::AutomationJSON::InputSafetyConfiguration::Guardrails __swiftcall AutomationJSON.InputSafetyConfiguration.Guardrails.init(ovs:textSanitization:)(Swift::Bool ovs, Swift::Bool textSanitization)
{
  *v2 = ovs;
  v2[1] = textSanitization;
  result.ovs = ovs;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.init(language:topK:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys()
{
  if (*v0)
  {
    return 1265659764;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1265659764 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV18LanguageRecognizerV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV18LanguageRecognizerV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation6LocaleV12LanguageCodeVGMd, &_sSay10Foundation6LocaleV12LanguageCodeVGMR);
  lazy protocol witness table accessor for type [Locale.LanguageCode] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Locale.LanguageCode] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation6LocaleV12LanguageCodeVGMd, &_sSay10Foundation6LocaleV12LanguageCodeVGMR);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(&lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode, MEMORY[0x1E6969610], MEMORY[0x1E6969618]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation6LocaleV12LanguageCodeVGMd, &_sSay10Foundation6LocaleV12LanguageCodeVGMR);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(&lazy protocol witness table cache variable for type Locale.LanguageCode and conformance Locale.LanguageCode, MEMORY[0x1E6969610], MEMORY[0x1E6969630]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Locale.LanguageCode] and conformance <A> [A]);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV18LanguageRecognizerV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV18LanguageRecognizerV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation6LocaleV12LanguageCodeVGMd, &_sSay10Foundation6LocaleV12LanguageCodeVGMR);
  v12[15] = 0;
  lazy protocol witness table accessor for type [Locale.LanguageCode] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v13;
  v12[14] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.init(script:isEmojiAllowed:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys()
{
  if (*v0)
  {
    return 0x41696A6F6D457369;
  }

  else
  {
    return 0x747069726373;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747069726373 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x41696A6F6D457369 && a2 == 0xEE006465776F6C6CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV23LanguageScriptValidatorV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV23LanguageScriptValidatorV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation6LocaleVGMd, &_sSay10Foundation6LocaleVGMR);
  lazy protocol witness table accessor for type [Locale] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Locale] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Locale] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Locale] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation6LocaleVGMd, &_sSay10Foundation6LocaleVGMR);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Locale] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [Locale] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Locale] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation6LocaleVGMd, &_sSay10Foundation6LocaleVGMR);
    lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Locale] and conformance <A> [A]);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV23LanguageScriptValidatorV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV23LanguageScriptValidatorV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation6LocaleVGMd, &_sSay10Foundation6LocaleVGMR);
  v12[15] = 0;
  lazy protocol witness table accessor for type [Locale] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v13;
  v12[14] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t lazy protocol witness table accessor for type Locale.LanguageCode and conformance Locale.LanguageCode(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.denyListIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AutomationJSON.InputSafetyConfiguration.languageScriptValidator.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.InputSafetyConfiguration.CodingKeys()
{
  v1 = 0x6961726472617567;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.InputSafetyConfiguration.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AutomationJSON.InputSafetyConfiguration.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.InputSafetyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.InputSafetyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.InputSafetyConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v22 = *(v1 + 16);
  v7 = *(v1 + 24);
  v17 = *(v1 + 32);
  v18 = v7;
  v16 = *(v1 + 40);
  v15 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  v8 = v19;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v8)
  {
    v10 = v17;
    v9 = v18;
    v11 = v15;
    v12 = v16;
    LOWORD(v20) = v22;
    v23 = 1;
    lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v9;
    v21 = v10;
    v23 = 2;
    lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v20 = v12;
    LOBYTE(v21) = v11;
    v23 = 3;
    lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV24InputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.CodingKeys and conformance AutomationJSON.InputSafetyConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v19) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v18 = v9;
  v22 = 1;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.Guardrails and conformance AutomationJSON.InputSafetyConfiguration.Guardrails();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v19;
  v22 = 2;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageRecognizer and conformance AutomationJSON.InputSafetyConfiguration.LanguageRecognizer();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v12;
  v14 = v20;
  v17 = v19;
  v22 = 3;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator and conformance AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v19;
  v16 = v20;
  *a2 = v18;
  *(a2 + 8) = v11;
  *(a2 + 16) = v21;
  *(a2 + 24) = v17;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.InputSafetyConfiguration.Guardrails.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7566959 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD9850 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.InputSafetyConfiguration.Guardrails.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  v14 = *(v5 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (v13[0])();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v11 = v13[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.InputSafetyConfiguration.Guardrails.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _BYTE *a6@<X8>)
{
  v18 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v6)
  {
    v13 = v17;
    v12 = v18;
    v20 = 0;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = 1;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v13 + 8))(v11, v9);
    *v12 = v14 & 1;
    v12[1] = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.OutputSafetyConfiguration.denyListIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 0x6961726472617567;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001A8FD9870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6961726472617567 && a2 == 0xEA0000000000736CLL)
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
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.OutputSafetyConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v11 = v10;
    v12 = 1;
    lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v6, v4);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails);
  }

  return result;
}

uint64_t AutomationJSON.OutputSafetyConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV25OutputSafetyConfigurationV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.CodingKeys and conformance AutomationJSON.OutputSafetyConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v17 = 1;
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration.Guardrails and conformance AutomationJSON.OutputSafetyConfiguration.Guardrails();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.decoder.getter()
{
  v1 = *(v0 + 504);

  return v1;
}

uint64_t AutomationJSON.decoderConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 632);
  v3 = *(v1 + 600);
  v20 = *(v1 + 616);
  v21 = v2;
  v4 = *(v1 + 632);
  v22 = *(v1 + 648);
  v5 = *(v1 + 568);
  v7 = *(v1 + 536);
  v16 = *(v1 + 552);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 568);
  v9 = *(v1 + 600);
  v18 = *(v1 + 584);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 536);
  v15[0] = *(v1 + 520);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 648);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 664);
  *(a1 + 144) = *(v1 + 664);
  *a1 = v12;
  *(a1 + 16) = v7;
  return outlined init with copy of (String, Any)(v15, v14, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
}

__n128 AutomationJSON.decoderConfig.setter(uint64_t a1)
{
  v13 = *(v1 + 664);
  v3 = *(v1 + 632);
  v12[6] = *(v1 + 616);
  v12[7] = v3;
  v12[8] = *(v1 + 648);
  v4 = *(v1 + 568);
  v12[2] = *(v1 + 552);
  v12[3] = v4;
  v5 = *(v1 + 600);
  v12[4] = *(v1 + 584);
  v12[5] = v5;
  v6 = *(v1 + 536);
  v12[0] = *(v1 + 520);
  v12[1] = v6;
  outlined destroy of [Regex2BNF.CharacterPredicate](v12, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
  v7 = *(a1 + 112);
  *(v1 + 616) = *(a1 + 96);
  *(v1 + 632) = v7;
  *(v1 + 648) = *(a1 + 128);
  *(v1 + 664) = *(a1 + 144);
  v8 = *(a1 + 48);
  *(v1 + 552) = *(a1 + 32);
  *(v1 + 568) = v8;
  v9 = *(a1 + 80);
  *(v1 + 584) = *(a1 + 64);
  *(v1 + 600) = v9;
  result = *a1;
  v11 = *(a1 + 16);
  *(v1 + 520) = *a1;
  *(v1 + 536) = v11;
  return result;
}

TokenGenerationCore::AutomationJSON::Role_optional __swiftcall AutomationJSON.Role.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutomationJSON.Role.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t AutomationJSON.Role.rawValue.getter()
{
  v1 = 1919251317;
  if (*v0 != 1)
  {
    v1 = 0x6E61747369737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6574737973;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AutomationJSON.Role(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1919251317;
  if (v2 != 1)
  {
    v4 = 0x6E61747369737361;
    v3 = 0xE900000000000074;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D6574737973;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1919251317;
  if (*a2 != 1)
  {
    v8 = 0x6E61747369737361;
    v7 = 0xE900000000000074;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6574737973;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AutomationJSON.Role()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AutomationJSON.Role(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AutomationJSON.Role(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AutomationJSON.Role(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1919251317;
  if (v2 != 1)
  {
    v5 = 0x6E61747369737361;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6574737973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t AutomationJSON.Turn.content.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AutomationJSON.Turn.CodingKeys()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1701605234;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.Turn.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701605234 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.Turn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.Turn.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.Turn.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV4TurnV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV4TurnV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type AutomationJSON.Role and conformance AutomationJSON.Role();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Role and conformance AutomationJSON.Role()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Role and conformance AutomationJSON.Role);
  }

  return result;
}

uint64_t AutomationJSON.Turn.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV4TurnV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV4TurnV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Turn.CodingKeys and conformance AutomationJSON.Turn.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type AutomationJSON.Role and conformance AutomationJSON.Role();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AutomationJSON.Response.content.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.Response.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.Response.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.Response.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.Response.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AutomationJSON.Response(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV8ResponseV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.Response.CodingKeys and conformance AutomationJSON.Response.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t AutomationJSON.DecoderConfig.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6E75427466617264;
    v6 = 0x646E7542796E6974;
    v7 = 0x657A696E656B6F74;
    if (a1 != 3)
    {
      v7 = 0xD000000000000018;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6164417466617264;
    if (a1 != 9)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0xD000000000000012;
    v3 = 0x6574537466617264;
    if (a1 != 6)
    {
      v3 = 0x6572547466617264;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.DecoderConfig.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AutomationJSON.DecoderConfig.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.DecoderConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.DecoderConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.DecoderConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV13DecoderConfigV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV13DecoderConfigV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v31 = *(v1 + 24);
  v32 = v7;
  v8 = *(v1 + 32);
  v29 = *(v1 + 40);
  v30 = v8;
  v9 = *(v1 + 48);
  v27 = *(v1 + 56);
  v28 = v9;
  v10 = *(v1 + 64);
  v25 = *(v1 + 72);
  v26 = v10;
  v11 = *(v1 + 88);
  v23 = *(v1 + 80);
  v24 = v11;
  v21 = *(v1 + 96);
  v22 = *(v1 + 104);
  v19 = *(v1 + 112);
  v20 = *(v1 + 120);
  v17 = *(v1 + 128);
  v18 = *(v1 + 136);
  v16 = *(v1 + 137);
  v15 = *(v1 + 140);
  HIDWORD(v14) = *(v1 + 144);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v45 = 0;
  v12 = v33;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v44 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v43 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v40 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v39 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v38 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37[0] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v35 = 10;
    v34 = BYTE4(v14);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys);
  }

  return result;
}

uint64_t AutomationJSON.DecoderConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV13DecoderConfigV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV13DecoderConfigV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v7 = &v31 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AutomationJSON.DecoderConfig.CodingKeys and conformance AutomationJSON.DecoderConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  LOBYTE(v59[0]) = 0;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v9;
  LOBYTE(v59[0]) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v11;
  v40 = v10;
  LOBYTE(v59[0]) = 2;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = v12;
  LOBYTE(v59[0]) = 3;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v43 = v13;
  LOBYTE(v59[0]) = 4;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v14;
  LOBYTE(v59[0]) = 5;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = v15;
  LOBYTE(v59[0]) = 6;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = v17 & 1;
  LOBYTE(v59[0]) = 7;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v18 & 1;
  LOBYTE(v59[0]) = 8;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v69 = v19 & 1;
  LOBYTE(v59[0]) = 9;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72 = 10;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v8 + 8))(v7, v48);
  v68 = BYTE4(v21) & 1;
  *&v49 = v45;
  *(&v49 + 1) = v47;
  *&v50 = v40;
  *(&v50 + 1) = v46;
  *&v51 = v39;
  *(&v51 + 1) = v44;
  *&v52 = v38;
  *(&v52 + 1) = v43;
  *&v53 = v37;
  *(&v53 + 1) = v42;
  *&v54 = v36;
  *(&v54 + 1) = v41;
  v33 = v16;
  *&v55 = v16;
  LODWORD(v48) = v71;
  BYTE8(v55) = v71;
  v22 = v34;
  *&v56 = v35;
  v32 = v70;
  BYTE8(v56) = v70;
  *&v57 = v34;
  LOBYTE(v16) = v69;
  BYTE8(v57) = v69;
  BYTE9(v57) = v20;
  HIDWORD(v57) = v21;
  v58 = BYTE4(v21) & 1;
  v24 = v55;
  v23 = v56;
  v25 = v57;
  *(a2 + 144) = BYTE4(v21) & 1;
  *(a2 + 112) = v23;
  *(a2 + 128) = v25;
  v26 = v50;
  *a2 = v49;
  *(a2 + 16) = v26;
  v27 = v51;
  v28 = v52;
  v29 = v53;
  *(a2 + 80) = v54;
  *(a2 + 96) = v24;
  *(a2 + 48) = v28;
  *(a2 + 64) = v29;
  *(a2 + 32) = v27;
  outlined init with copy of AutomationJSON.DecoderConfig(&v49, v59);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v59[0] = v45;
  v59[1] = v47;
  v59[2] = v40;
  v59[3] = v46;
  v59[4] = v39;
  v59[5] = v44;
  v59[6] = v38;
  v59[7] = v43;
  v59[8] = v37;
  v59[9] = v42;
  v59[10] = v36;
  v59[11] = v41;
  v59[12] = v33;
  v60 = v48;
  v61 = v35;
  v62 = v32;
  v63 = v22;
  v64 = v16;
  v65 = v20;
  v66 = v21;
  v67 = BYTE4(v21) & 1;
  return outlined destroy of AutomationJSON.DecoderConfig(v59);
}

uint64_t AutomationJSON.ParameterizedPrompt.prompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.locale.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void AutomationJSON.ParameterizedPrompt.samplingStrategyConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t AutomationJSON.ParameterizedPrompt.stopSequence.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.schema.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.grammar.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.schemaIdentifier.getter()
{
  v1 = *(v0 + 224);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.grammarIdentifier.getter()
{
  v1 = *(v0 + 240);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.dynamicPartsOfGrammars.getter()
{
  v1 = *(v0 + 256);

  return v1;
}

void AutomationJSON.ParameterizedPrompt.inputSafetyConfiguration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 288);
  v3 = *(v1 + 296);
  v4 = *(v1 + 304);
  v5 = *(v1 + 312);
  v6 = *(v1 + 320);
  v7 = *(v1 + 328);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = *(v1 + 336);
  outlined copy of AutomationJSON.InputSafetyConfiguration?(v2, v3, v4, v5, v6, v7);
}

uint64_t AutomationJSON.ParameterizedPrompt.outputSafetyConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 344);
  v3 = *(v1 + 352);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 360);
  return outlined copy of AutomationJSON.OutputSafetyConfiguration?(v2, v3);
}

uint64_t AutomationJSON.ParameterizedPrompt.priorInferenceOutput.getter()
{
  v1 = *(v0 + 368);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.userData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 384);
  v3 = *(v1 + 392);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 400);
  *(a1 + 16) = v4;
  return outlined copy of JSON?(v2, v3, v4);
}

uint64_t outlined copy of JSON?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of JSON(result, a2, a3);
  }

  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.output.getter()
{
  v1 = *(v0 + 408);

  return v1;
}

uint64_t AutomationJSON.ParameterizedPrompt.output.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 408) = a1;
  *(v2 + 416) = a2;
  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.renderedPrompt.getter@<X0>(uint64_t a1@<X8>)
{
  v12 = *(v1 + 504);
  v2 = *(v1 + 456);
  v4 = *(v1 + 488);
  v10 = *(v1 + 472);
  v3 = v10;
  v11 = v4;
  v6 = *(v1 + 440);
  v9[0] = *(v1 + 424);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of (String, Any)(v9, v8, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
}

__n128 AutomationJSON.ParameterizedPrompt.renderedPrompt.setter(uint64_t a1)
{
  v9 = *(v1 + 504);
  v3 = *(v1 + 472);
  v8[2] = *(v1 + 456);
  v8[3] = v3;
  v8[4] = *(v1 + 488);
  v4 = *(v1 + 440);
  v8[0] = *(v1 + 424);
  v8[1] = v4;
  outlined destroy of [Regex2BNF.CharacterPredicate](v8, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  v5 = *(a1 + 48);
  *(v1 + 456) = *(a1 + 32);
  *(v1 + 472) = v5;
  *(v1 + 488) = *(a1 + 64);
  *(v1 + 504) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 424) = *a1;
  *(v1 + 440) = v7;
  return result;
}

__n128 AutomationJSON.ParameterizedPrompt.init(prompt:inputPromptType:locale:inputVariableBindings:inputImageVariableBindings:inputRichVariableBindings:samplingStrategyConfiguration:temperature:frequencyPenalty:lengthPenalty:stopSequence:maxTokens:randomSeed:promptLookupDraftSteps:speculativeSampling:tokenHealing:speculativeDecoding:schema:grammar:schemaIdentifier:grammarIdentifier:dynamicPartsOfGrammars:timeout:useHighQualityImageTokenization:inputSafetyConfiguration:outputSafetyConfiguration:output:renderedPrompt:userData:priorInferenceOutput:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, __int128 a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, char a24, __int16 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, uint64_t a31, char a32, char a33, __int128 *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t *a39, uint64_t a40, uint64_t a41)
{
  *a9 = a1;
  v42 = *a3;
  *(a9 + 8) = a2;
  *(a9 + 16) = v42;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v43 = *a10;
  *(a9 + 56) = a8;
  *(a9 + 64) = v43;
  *(a9 + 72) = *(a10 + 8);
  *(a9 + 80) = a11;
  *(a9 + 88) = a12 & 1;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14 & 1;
  *(a9 + 112) = a15;
  *(a9 + 120) = a16 & 1;
  *(a9 + 144) = a18;
  *(a9 + 152) = a19 & 1;
  *(a9 + 160) = a20;
  *(a9 + 168) = a21 & 1;
  *(a9 + 176) = a22;
  *(a9 + 184) = a23 & 1;
  *(a9 + 185) = a24;
  *(a9 + 186) = a25;
  *(a9 + 272) = a31;
  *(a9 + 280) = a32 & 1;
  *(a9 + 281) = a33;
  *(a9 + 344) = *a35;
  LOBYTE(v43) = *(a34 + 48);
  *(a9 + 128) = a17;
  v44 = *a34;
  v45 = a34[1];
  v46 = a34[2];
  *(a9 + 336) = v43;
  *(a9 + 360) = *(a35 + 16);
  *(a9 + 408) = a36;
  *(a9 + 416) = a37;
  v47 = *a39;
  v48 = a39[1];
  v49 = *(a39 + 16);
  *(a9 + 504) = 0;
  *(a9 + 192) = a26;
  *(a9 + 208) = a27;
  *(a9 + 424) = 0u;
  *(a9 + 440) = 0u;
  *(a9 + 456) = 0u;
  *(a9 + 472) = 0u;
  *(a9 + 488) = 0u;
  *(a9 + 224) = a28;
  *(a9 + 240) = a29;
  *(a9 + 256) = a30;
  *(a9 + 288) = v44;
  *(a9 + 304) = v45;
  *(a9 + 320) = v46;
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  outlined destroy of [Regex2BNF.CharacterPredicate](v53, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  v50 = *(a38 + 48);
  *(a9 + 456) = *(a38 + 32);
  *(a9 + 472) = v50;
  *(a9 + 488) = *(a38 + 64);
  *(a9 + 504) = *(a38 + 80);
  result = *a38;
  v52 = *(a38 + 16);
  *(a9 + 424) = *a38;
  *(a9 + 440) = v52;
  *(a9 + 384) = v47;
  *(a9 + 392) = v48;
  *(a9 + 400) = v49;
  *(a9 + 368) = a40;
  *(a9 + 376) = a41;
  return result;
}

unint64_t AutomationJSON.ParameterizedPrompt.CodingKeys.stringValue.getter(char a1)
{
  result = 0x74706D6F7270;
  switch(a1)
  {
    case 1:
      return 0x6F72507475706E69;
    case 2:
      return 0x656C61636F6CLL;
    case 3:
      v3 = 5;
      goto LABEL_19;
    case 4:
      v3 = 10;
      goto LABEL_19;
    case 5:
    case 25:
      v3 = 9;
      goto LABEL_19;
    case 6:
      v3 = 13;
LABEL_19:
      result = v3 | 0xD000000000000010;
      break;
    case 7:
      result = 0x74617265706D6574;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x65506874676E656CLL;
      break;
    case 10:
      result = 0x75716553706F7473;
      break;
    case 11:
      result = 0x6E656B6F5478616DLL;
      break;
    case 12:
      result = 0x65536D6F646E6172;
      break;
    case 13:
    case 21:
      result = 0xD000000000000016;
      break;
    case 14:
    case 16:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6165486E656B6F74;
      break;
    case 17:
      result = 0x616D65686373;
      break;
    case 18:
      result = 0x72616D6D617267;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x74756F656D6974;
      break;
    case 23:
      result = 0xD00000000000001FLL;
      break;
    case 24:
      result = 0xD000000000000018;
      break;
    case 26:
      result = 0xD000000000000014;
      break;
    case 27:
      result = 0x6174614472657375;
      break;
    case 28:
      result = 0x74757074756FLL;
      break;
    case 29:
      result = 0x64657265646E6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.ParameterizedPrompt.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AutomationJSON.ParameterizedPrompt.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.ParameterizedPrompt.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.ParameterizedPrompt.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.ParameterizedPrompt.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV19ParameterizedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV19ParameterizedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v81 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v37 - v4;
  v6 = *v1;
  v79 = v1[1];
  v80 = v6;
  v97 = *(v1 + 16);
  v7 = v1[3];
  v77 = v1[4];
  v78 = v7;
  v8 = v1[5];
  v75 = v1[6];
  v76 = v8;
  v9 = v1[8];
  v74 = v1[7];
  v72 = v9;
  v73 = *(v1 + 72);
  v70 = v1[10];
  v71 = *(v1 + 88);
  v68 = v1[12];
  v69 = *(v1 + 104);
  v10 = v1[14];
  v67 = *(v1 + 120);
  v11 = v1[17];
  v64 = v1[16];
  v65 = v11;
  v66 = v10;
  v62 = v1[18];
  v63 = *(v1 + 152);
  v60 = v1[20];
  v61 = *(v1 + 168);
  v58 = v1[22];
  v59 = *(v1 + 184);
  LODWORD(v10) = *(v1 + 185);
  v56 = *(v1 + 186);
  v57 = v10;
  v55 = *(v1 + 187);
  v12 = v1[24];
  v13 = v1[25];
  v96 = v1[63];
  v14 = *(v1 + 59);
  v93 = *(v1 + 57);
  v94 = v14;
  v95 = *(v1 + 61);
  v15 = *(v1 + 53);
  v16 = *(v1 + 55);
  v17 = v1[27];
  v37[2] = v1[26];
  v37[3] = v12;
  v37[1] = v17;
  v18 = v1[29];
  v37[5] = v1[28];
  v37[6] = v13;
  v37[4] = v18;
  v19 = v1[30];
  v37[7] = v1[31];
  v37[8] = v19;
  v20 = v1[32];
  v37[9] = v1[33];
  v37[10] = v20;
  v39 = v1[34];
  v38 = *(v1 + 280);
  LODWORD(v20) = *(v1 + 281);
  v21 = v1[36];
  v46 = v1[37];
  v47 = v21;
  v22 = v1[38];
  v44 = v1[39];
  v45 = v22;
  v23 = v1[40];
  v42 = v1[41];
  v43 = v23;
  LODWORD(v18) = *(v1 + 336);
  v40 = v20;
  v41 = v18;
  v24 = v1[43];
  v49 = v1[44];
  v50 = v24;
  v48 = *(v1 + 180);
  v25 = v1[46];
  v51 = v1[47];
  v52 = v25;
  v26 = v1[48];
  v53 = v1[49];
  v54 = v26;
  v27 = *(v1 + 400);
  v29 = v1[51];
  v28 = v1[52];
  v91 = v15;
  v92 = v16;
  v30 = a1[3];
  v31 = a1;
  v33 = v32;
  __swift_project_boxed_opaque_existential_1(v31, v30);
  lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v85) = 0;
  v34 = v82;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v34)
  {
    return (*(v81 + 8))(v5, v33);
  }

  LODWORD(v80) = v27;
  v82 = v28;
  v79 = v29;
  v36 = v81;
  LOBYTE(v85) = v97;
  LOBYTE(v83[0]) = 1;
  lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v85) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v85 = v76;
  LOBYTE(v83[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v85 = v75;
  LOBYTE(v83[0]) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v85 = v74;
  LOBYTE(v83[0]) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMd, &_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMR);
  lazy protocol witness table accessor for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B], lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v85 = v72;
  BYTE8(v85) = v73;
  LOBYTE(v83[0]) = 6;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v85) = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 11;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 13;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 14;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 15;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 16;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 17;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 18;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 19;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 20;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 21;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 22;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v85) = 23;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v85 = v47;
  *(&v85 + 1) = v46;
  *&v86 = v45;
  *(&v86 + 1) = v44;
  *&v87 = v43;
  *(&v87 + 1) = v42;
  LOBYTE(v88) = v41;
  LOBYTE(v83[0]) = 24;
  outlined copy of AutomationJSON.InputSafetyConfiguration?(v47, v46, v45, v44, v43, v42);
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of AutomationJSON.InputSafetyConfiguration?(v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1));
  *&v85 = v50;
  *(&v85 + 1) = v49;
  LOWORD(v86) = v48;
  LOBYTE(v83[0]) = 25;
  outlined copy of AutomationJSON.OutputSafetyConfiguration?(v50, v49);
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of AutomationJSON.OutputSafetyConfiguration?(v85, *(&v85 + 1));
  LOBYTE(v85) = 26;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v85 = v54;
  *(&v85 + 1) = v53;
  LOBYTE(v86) = v80;
  LOBYTE(v83[0]) = 27;
  outlined copy of JSON?(v54, v53, v80);
  lazy protocol witness table accessor for type JSON and conformance JSON();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of JSON?(v85, *(&v85 + 1), v86);
  LOBYTE(v85) = 28;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v87 = v93;
  v88 = v94;
  v89 = v95;
  v90 = v96;
  v85 = v91;
  v86 = v92;
  v98 = 29;
  outlined init with copy of (String, Any)(&v91, v83, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v83[2] = v87;
  v83[3] = v88;
  v83[4] = v89;
  v84 = v90;
  v83[0] = v85;
  v83[1] = v86;
  outlined destroy of [Regex2BNF.CharacterPredicate](v83, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  return (*(v36 + 8))(0, v33);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGMd, &_sSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGMR);
    lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGMd, &_sSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGMR);
    lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.RichVariableBinding] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RichVariableBinding and conformance AutomationJSON.RichVariableBinding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration);
  }

  return result;
}

void outlined consume of AutomationJSON.InputSafetyConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration;
  if (!lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration);
  }

  return result;
}

uint64_t outlined consume of AutomationJSON.OutputSafetyConfiguration?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSON and conformance JSON()
{
  result = lazy protocol witness table cache variable for type JSON and conformance JSON;
  if (!lazy protocol witness table cache variable for type JSON and conformance JSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON and conformance JSON);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSON and conformance JSON;
  if (!lazy protocol witness table cache variable for type JSON and conformance JSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON and conformance JSON);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSON and conformance JSON;
  if (!lazy protocol witness table cache variable for type JSON and conformance JSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON and conformance JSON);
  }

  return result;
}

uint64_t outlined consume of JSON?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of JSON(result, a2, a3);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt);
  }

  return result;
}

uint64_t AutomationJSON.ParameterizedPrompt.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV19ParameterizedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV19ParameterizedPromptV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  v9 = a1[3];
  v206 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt.CodingKeys and conformance AutomationJSON.ParameterizedPrompt.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v206);
LABEL_4:

    v108 = 0;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    return outlined destroy of [Regex2BNF.CharacterPredicate](&v103, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  }

  v10 = v6;
  v99 = a2;
  LOBYTE(v103) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v98 = v13;
  LOBYTE(v102[0]) = 1;
  lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v103;
  LOBYTE(v103) = 2;
  v97 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  LOBYTE(v102[0]) = 3;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v93 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySSGGMd, &_sSDySSSaySSGGMR);
  LOBYTE(v102[0]) = 4;
  lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v92 = v103;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMd, &_sSDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGMR);
  LOBYTE(v102[0]) = 5;
  lazy protocol witness table accessor for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B], lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v91 = v103;
  LOBYTE(v102[0]) = 6;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v103;
  v96 = BYTE8(v103);
  LOBYTE(v103) = 7;
  v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v95 = v16;
  v203 = v17 & 1;
  LOBYTE(v103) = 8;
  v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v201 = v18 & 1;
  LOBYTE(v103) = 9;
  v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v199 = v19 & 1;
  LOBYTE(v103) = 10;
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v90 = v20;
  LOBYTE(v103) = 11;
  v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v197 = v21 & 1;
  LOBYTE(v103) = 12;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v195 = v22 & 1;
  LOBYTE(v103) = 13;
  v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v193 = v23 & 1;
  LOBYTE(v103) = 14;
  v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v103) = 15;
  v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v103) = 16;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v103) = 17;
  v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v89 = v24;
  LOBYTE(v103) = 18;
  v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = v25;
  LOBYTE(v103) = 19;
  v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = v26;
  LOBYTE(v103) = 20;
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = v27;
  LOBYTE(v103) = 21;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v85 = v28;
  LOBYTE(v103) = 22;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v192 = v29 & 1;
  LOBYTE(v103) = 23;
  v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v102[0]) = 24;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v87 = v103;
  v84 = *(&v104 + 1);
  v86 = v104;
  v80 = *(&v105 + 1);
  v81 = v105;
  v79 = v106;
  LOBYTE(v102[0]) = 25;
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v59 = v103;
  v60 = v104;
  LOBYTE(v103) = 26;
  *&v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v58 + 1) = v30;
  v61 = 0;
  LOBYTE(v102[0]) = 27;
  lazy protocol witness table accessor for type JSON and conformance JSON();
  v31 = v61;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v31)
  {
    (*(v10 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(v206);

    outlined consume of AutomationJSON.InputSafetyConfiguration?(v87, *(&v87 + 1), v86, v84, v81, v80);
    outlined consume of AutomationJSON.OutputSafetyConfiguration?(v59, *(&v59 + 1));
    if (!v61)
    {
    }

    goto LABEL_4;
  }

  v56 = *(&v103 + 1);
  v57 = v103;
  v55 = v104;
  LOBYTE(v103) = 28;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = v32;
  v174 = 29;
  lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v10 + 8))(v8, v5);
  v61 = v175;
  v52 = v177;
  v53 = v176;
  v50 = v179;
  v51 = v178;
  v48 = v181;
  v49 = v180;
  v46 = v183;
  v47 = v182;
  v44 = v185;
  v45 = v184;
  memset(v100, 0, sizeof(v100));
  v101 = 0;
  outlined destroy of [Regex2BNF.CharacterPredicate](v100, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
  *&v102[0] = v12;
  *(&v102[0] + 1) = v98;
  LOBYTE(v102[1]) = v14;
  *(&v102[1] + 1) = v205[0];
  DWORD1(v102[1]) = *(v205 + 3);
  *(&v102[1] + 1) = v97;
  *&v102[2] = v94;
  *(&v102[2] + 1) = v93;
  *&v102[3] = v92;
  *(&v102[3] + 1) = v91;
  *&v102[4] = v95;
  BYTE8(v102[4]) = v96;
  *(&v102[4] + 9) = *v204;
  HIDWORD(v102[4]) = *&v204[3];
  *&v102[5] = v78;
  v43 = v203;
  BYTE8(v102[5]) = v203;
  *(&v102[5] + 9) = *v202;
  HIDWORD(v102[5]) = *&v202[3];
  *&v102[6] = v77;
  v42 = v201;
  BYTE8(v102[6]) = v201;
  *(&v102[6] + 9) = *v200;
  HIDWORD(v102[6]) = *&v200[3];
  *&v102[7] = v76;
  v41 = v199;
  BYTE8(v102[7]) = v199;
  HIDWORD(v102[7]) = *&v198[3];
  *(&v102[7] + 9) = *v198;
  *&v102[8] = v75;
  *(&v102[8] + 1) = v90;
  *&v102[9] = v74;
  v40 = v197;
  BYTE8(v102[9]) = v197;
  HIDWORD(v102[9]) = *&v196[3];
  *(&v102[9] + 9) = *v196;
  *&v102[10] = v73;
  *(&v102[10] + 9) = *v194;
  *(&v102[17] + 10) = v190;
  *(&v102[21] + 1) = *v189;
  *(&v102[22] + 10) = v187;
  v39 = v195;
  BYTE8(v102[10]) = v195;
  HIDWORD(v102[10]) = *&v194[3];
  *&v102[11] = v72;
  *(&v102[25] + 1) = *v186;
  v38 = v193;
  BYTE8(v102[11]) = v193;
  BYTE9(v102[11]) = v71;
  BYTE10(v102[11]) = v70;
  BYTE11(v102[11]) = v69;
  *&v102[12] = v68;
  *(&v102[12] + 1) = v89;
  *&v102[13] = v67;
  *(&v102[13] + 1) = v88;
  *&v102[14] = v66;
  *(&v102[14] + 1) = v82;
  *&v102[15] = v65;
  *(&v102[15] + 1) = v83;
  *&v102[16] = v64;
  v34 = v85;
  *(&v102[16] + 1) = v85;
  *&v102[17] = v63;
  HIWORD(v102[17]) = v191;
  DWORD1(v102[21]) = *&v189[3];
  HIWORD(v102[22]) = v188;
  DWORD1(v102[25]) = *&v186[3];
  v35 = v192;
  BYTE8(v102[17]) = v192;
  v36 = v62;
  BYTE9(v102[17]) = v62;
  v102[18] = v87;
  *&v102[19] = v86;
  *(&v102[19] + 1) = v84;
  *&v102[20] = v81;
  *(&v102[20] + 1) = v80;
  LOBYTE(v102[21]) = v79;
  *(&v102[21] + 8) = v59;
  WORD4(v102[22]) = v60;
  v102[23] = v58;
  *&v102[24] = v57;
  *(&v102[24] + 1) = v56;
  LOBYTE(v102[25]) = v55;
  *(&v102[25] + 1) = v54;
  *&v102[26] = v33;
  *(&v102[26] + 1) = v61;
  *&v102[27] = v53;
  *(&v102[27] + 1) = v52;
  *&v102[28] = v51;
  *(&v102[28] + 1) = v50;
  *&v102[29] = v49;
  *(&v102[29] + 1) = v48;
  *&v102[30] = v47;
  *(&v102[30] + 1) = v46;
  *&v102[31] = v45;
  *(&v102[31] + 1) = v44;
  memcpy(v99, v102, 0x200uLL);
  outlined init with copy of AutomationJSON.ParameterizedPrompt(v102, &v103);
  __swift_destroy_boxed_opaque_existential_0(v206);
  *&v103 = v12;
  *(&v103 + 1) = v98;
  LOBYTE(v104) = v14;
  *(&v104 + 1) = v97;
  *&v105 = v94;
  *(&v105 + 1) = v93;
  *&v106 = v92;
  *(&v106 + 1) = v91;
  *&v107 = v95;
  BYTE8(v107) = v96;
  v108 = v78;
  v109 = v43;
  v111 = v77;
  v112 = v42;
  v114 = v76;
  v115 = v41;
  v117 = v75;
  v118 = v90;
  v119 = v74;
  v120 = v40;
  v122 = v73;
  v123 = v39;
  v125 = v72;
  v126 = v38;
  v127 = v71;
  v128 = v70;
  v129 = v69;
  v130 = v68;
  v131 = v89;
  v132 = v67;
  v133 = v88;
  v134 = v66;
  v135 = v82;
  v136 = v65;
  v137 = v83;
  v138 = v64;
  v139 = v34;
  v140 = v63;
  v141 = v35;
  v142 = v36;
  *(&v104 + 1) = v205[0];
  *(&v107 + 9) = *v204;
  *v110 = *v202;
  *v113 = *v200;
  *v116 = *v198;
  *&v121[3] = *&v196[3];
  *v121 = *v196;
  *&v124[3] = *&v194[3];
  *v124 = *v194;
  v143 = v190;
  DWORD1(v104) = *(v205 + 3);
  HIDWORD(v107) = *&v204[3];
  *&v110[3] = *&v202[3];
  *&v113[3] = *&v200[3];
  *&v116[3] = *&v198[3];
  v144 = v191;
  v145 = v87;
  v146 = v86;
  v147 = v84;
  v148 = v81;
  v149 = v80;
  v150 = v79;
  *v151 = *v189;
  *&v151[3] = *&v189[3];
  v152 = v59;
  v153 = v60;
  v154 = v187;
  v155 = v188;
  v156 = v58;
  v157 = v57;
  v158 = v56;
  v159 = v55;
  *v160 = *v186;
  *&v160[3] = *&v186[3];
  v161 = v54;
  v162 = v33;
  v163 = v61;
  v164 = v53;
  v165 = v52;
  v166 = v51;
  v167 = v50;
  v168 = v49;
  v169 = v48;
  v170 = v47;
  v171 = v46;
  v172 = v45;
  v173 = v44;
  return outlined destroy of AutomationJSON.ParameterizedPrompt(&v103);
}

uint64_t AutomationJSON.parameterizedPrompts.setter(uint64_t a1)
{

  *(v1 + 672) = a1;
  return result;
}

double AutomationJSON.init(input:mode:modelBundleId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = (a6 + 520);
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  _s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgWOi0_(&v31);
  v13 = v37;
  v14 = v38;
  v15 = v38;
  v12[6] = v37;
  v12[7] = v14;
  v16 = v39;
  v12[8] = v39;
  v17 = v33;
  v18 = v34;
  v19 = v34;
  v12[2] = v33;
  v12[3] = v18;
  v20 = v35;
  v21 = v36;
  v22 = v36;
  v12[4] = v35;
  v12[5] = v21;
  v23 = v31;
  v24 = v32;
  v25 = v32;
  *v12 = v31;
  v12[1] = v24;
  v41[6] = v13;
  v41[7] = v15;
  v41[8] = v16;
  v41[2] = v17;
  v41[3] = v19;
  v41[4] = v20;
  v41[5] = v22;
  *(a6 + 664) = v40;
  *(a6 + 32) = 0;
  *(a6 + 40) = 1;
  *(a6 + 48) = 0;
  *(a6 + 56) = 1;
  *(a6 + 64) = 0;
  *(a6 + 72) = 1;
  *(a6 + 392) = 0;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 400) = -1;
  *(a6 + 192) = 0;
  *(a6 + 200) = 1;
  *(a6 + 208) = 0;
  *(a6 + 216) = 1;
  *(a6 + 248) = 0;
  *(a6 + 224) = 0;
  *(a6 + 232) = 0;
  *(a6 + 240) = 0;
  *(a6 + 256) = 1;
  *(a6 + 504) = 0;
  *(a6 + 512) = 0;
  v42 = v40;
  v41[0] = v23;
  v41[1] = v25;
  outlined destroy of [Regex2BNF.CharacterPredicate](v41, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
  v26 = v38;
  v12[6] = v37;
  v12[7] = v26;
  v12[8] = v39;
  *(a6 + 664) = v40;
  v27 = v34;
  v12[2] = v33;
  v12[3] = v27;
  v28 = v36;
  v12[4] = v35;
  v12[5] = v28;
  v29 = v32;
  *v12 = v31;
  v12[1] = v29;
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 120) = 3;
  *(a6 + 128) = 0;
  *(a6 + 136) = 0;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  *(a6 + 344) = 0;
  *(a6 + 352) = 0;
  *(a6 + 360) = 0;
  *(a6 + 257) = 514;
  *(a6 + 260) = 2;
  *(a6 + 264) = 0u;
  *(a6 + 280) = 0u;
  *(a6 + 296) = 0u;
  *(a6 + 312) = 0u;
  *(a6 + 328) = 0;
  *(a6 + 336) = 1;
  *(a6 + 408) = 0x6974616D6F747561;
  *(a6 + 416) = xmmword_1A8FCD7F0;
  *(a6 + 432) = 1;
  *(a6 + 440) = 0u;
  *(a6 + 456) = 0u;
  *(a6 + 472) = 0;
  result = 0.0;
  *(a6 + 480) = xmmword_1A8FC9770;
  *(a6 + 496) = 0;
  *(a6 + 144) = 0;
  *(a6 + 152) = 0;
  *(a6 + 368) = 0;
  *(a6 + 376) = 0;
  *(a6 + 384) = -1;
  *(a6 + 672) = 0;
  *(a6 + 96) = a1;
  *(a6 + 104) = 0;
  *(a6 + 112) = 0;
  *(a6 + 259) = 2;
  return result;
}

double _s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void *static AutomationJSON.Parse(filePath:)@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v22[0] = a3;
  v22[1] = a1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v22 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 56))(v9, 1, 1, v10, v12);
  (*(v4 + 104))(v6, *MEMORY[0x1E6968F70], v3);

  URL.init(filePath:directoryHint:relativeTo:)();
  v15 = v24;
  v16 = Data.init(contentsOf:options:)();
  if (v15)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v19 = v22[0];
  v20 = v16;
  v21 = v17;
  (*(v11 + 8))(v14, v10);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type AutomationJSON and conformance AutomationJSON();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v20, v21);
  return memcpy(v19, v23, 0x2A8uLL);
}

unint64_t lazy protocol witness table accessor for type AutomationJSON and conformance AutomationJSON()
{
  result = lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON;
  if (!lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON;
  if (!lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON and conformance AutomationJSON);
  }

  return result;
}

uint64_t static AutomationJSON.Serialize(json:)(const void *a1)
{
  v3 = type metadata accessor for JSONEncoder.OutputFormatting();
  MEMORY[0x1EEE9AC00](v3 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v4 = JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.prettyPrinted.getter();
  v5 = v4;
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  memcpy(v18, a1, sizeof(v18));
  lazy protocol witness table accessor for type AutomationJSON and conformance AutomationJSON();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v8 = v6;
    v9 = v7;
    outlined copy of Data._Representation(v6, v7);
    v10 = specialized Data.withContiguousStorageIfAvailable<A>(_:)(v8, v9);
    if (v11)
    {
      v5 = v10;
      outlined consume of Data._Representation(v8, v9);
    }

    else
    {
      v16 = v8;
      v17 = v9;
      outlined copy of Data._Representation(v8, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd, &_ss19_HasContiguousBytes_pMR);
      if (swift_dynamicCast())
      {
        outlined init with take of PromptComponentValueConvertible(v14, v18);
        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
        outlined consume of Data._Representation(v8, v9);
        if (HasContiguous)
        {
          __swift_project_boxed_opaque_existential_1(v18, v18[3]);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();

          outlined consume of Data._Representation(v8, v9);
          v5 = *&v14[0];
          __swift_destroy_boxed_opaque_existential_0(v18);
          return v5;
        }

        __swift_destroy_boxed_opaque_existential_0(v18);
      }

      else
      {
        outlined consume of Data._Representation(v8, v9);
        v15 = 0;
        memset(v14, 0, sizeof(v14));
        outlined destroy of [Regex2BNF.CharacterPredicate](v14, &_ss19_HasContiguousBytes_pSgMd, &_ss19_HasContiguousBytes_pSgMR);
      }

      v5 = _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(v8, v9);
    }

    outlined consume of Data._Representation(v8, v9);
    return v5;
  }

  return v5;
}

unint64_t AutomationJSON.CodingKeys.stringValue.getter(char a1)
{
  result = 1701080941;
  switch(a1)
  {
    case 1:
      return 0x6E75426C65646F6DLL;
    case 2:
      return 0x74617265706D6574;
    case 3:
      return 0x6E656B6F5478616DLL;
    case 4:
      return 0x65536D6F646E6172;
    case 5:
      return 0x74706D6F7270;
    case 6:
      return 0x7475706E69;
    case 7:
      return 0x656C61636F6CLL;
    case 8:
      return 0x6F72507475706E69;
    case 9:
      v3 = 5;
      goto LABEL_27;
    case 10:
      v3 = 10;
      goto LABEL_27;
    case 11:
    case 37:
      v3 = 9;
      goto LABEL_27;
    case 12:
      return 0x736567617373656DLL;
    case 13:
      return 0x65736E6F70736572;
    case 14:
      return 0x74757074756FLL;
    case 15:
      return 0x64657265646E6572;
    case 16:
    case 40:
      return 0xD000000000000014;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0x65506874676E656CLL;
    case 19:
      return 0x75716553706F7473;
    case 20:
      return 0x6D726177657270;
    case 21:
    case 28:
      return 0xD000000000000016;
    case 22:
    case 25:
      return 0xD000000000000013;
    case 23:
      return 0x6165486E656B6F74;
    case 24:
      return 0xD00000000000001FLL;
    case 26:
      return 0x616D65686373;
    case 27:
      return 0x72616D6D617267;
    case 29:
      return 0xD000000000000010;
    case 30:
    case 35:
      return 0xD000000000000011;
    case 31:
      return 0x6F69746172657469;
    case 32:
      return 0x654474706D6F7270;
    case 33:
      return 0x6174614472657375;
    case 34:
      v3 = 13;
LABEL_27:
      result = v3 | 0xD000000000000010;
      break;
    case 36:
      result = 0xD000000000000018;
      break;
    case 38:
      result = 0x7265646F636564;
      break;
    case 39:
      result = 0x437265646F636564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AutomationJSON.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AutomationJSON.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AutomationJSON.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AutomationJSON.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutomationJSON.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14AutomationJSONV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v129 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v62 - v4;
  v6 = *v1;
  v127 = v1[1];
  v128 = v6;
  v7 = v1[2];
  v125 = v1[3];
  v126 = v7;
  v124 = v1[4];
  v123 = *(v1 + 40);
  v122 = v1[6];
  v121 = *(v1 + 56);
  v8 = v1[8];
  v120 = *(v1 + 72);
  v9 = v1[10];
  v118 = v1[11];
  v119 = v8;
  v10 = v1[13];
  v116 = v1[12];
  v117 = v9;
  v11 = v1[14];
  v114 = v10;
  v115 = v11;
  v113 = *(v1 + 120);
  v12 = v1[16];
  v111 = v1[17];
  v112 = v12;
  v13 = v1[18];
  v109 = v1[19];
  v110 = v13;
  v14 = v1[20];
  v107 = v1[21];
  v108 = v14;
  v15 = v1[22];
  v105 = v1[23];
  v106 = v15;
  v62 = v1[24];
  v63 = *(v1 + 200);
  v67 = v1[26];
  v68 = *(v1 + 216);
  v16 = *(v1 + 79);
  v151 = *(v1 + 77);
  v152 = v16;
  v153 = *(v1 + 81);
  v154 = *(v1 + 664);
  v17 = *(v1 + 71);
  v147 = *(v1 + 69);
  v148 = v17;
  v18 = *(v1 + 75);
  v149 = *(v1 + 73);
  v150 = v18;
  v19 = *(v1 + 65);
  v20 = *(v1 + 67);
  v21 = v1[28];
  v64 = v1[29];
  v65 = v21;
  v145 = v19;
  v146 = v20;
  v66 = *(v1 + 240);
  v70 = v1[31];
  v69 = *(v1 + 256);
  LODWORD(v11) = *(v1 + 258);
  v71 = *(v1 + 257);
  v72 = v11;
  LODWORD(v11) = *(v1 + 260);
  v73 = *(v1 + 259);
  v74 = v11;
  v22 = v1[34];
  v75 = v1[33];
  v76 = v22;
  v23 = v1[36];
  v77 = v1[35];
  v78 = v23;
  v24 = v1[38];
  v79 = v1[37];
  v80 = v24;
  v25 = v1[40];
  v81 = v1[39];
  v82 = v25;
  v26 = v1[42];
  v83 = v1[41];
  v84 = v26;
  v85 = *(v1 + 344);
  v86 = v1[44];
  v87 = *(v1 + 360);
  v27 = v1[47];
  v88 = v1[46];
  v89 = *(v1 + 384);
  v28 = v1[49];
  v90 = v27;
  v91 = v28;
  v92 = *(v1 + 400);
  v29 = v1[52];
  v93 = v1[51];
  v94 = v29;
  v30 = v1[54];
  v95 = v1[53];
  v31 = v1[56];
  v100 = v1[55];
  v101 = v30;
  v32 = v1[58];
  v98 = v1[57];
  v99 = v31;
  v97 = v32;
  v96 = *(v1 + 472);
  v33 = v1[61];
  v102 = v1[60];
  v104 = v33;
  v103 = *(v1 + 248);
  v34 = v1[63];
  v35 = v1[64];
  v36 = v1[84];
  v37 = a1[3];
  v38 = a1;
  v40 = v39;
  __swift_project_boxed_opaque_existential_1(v38, v37);
  lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v135) = 0;
  v41 = v5;
  v42 = v155;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v42)
  {
    v155 = v42;
    return (*(v129 + 8))(v5, v40);
  }

  v127 = v34;
  v128 = v35;
  v44 = v129;
  LOBYTE(v135) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v135) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v135) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v135) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v135) = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v155 = 0;
  *&v135 = v116;
  LOBYTE(v132[0]) = 6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v46 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v47 = v155;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v47)
  {
    v155 = v47;
    return (*(v44 + 8))(v41, v40);
  }

  v125 = v46;
  v126 = v45;
  LOBYTE(v135) = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v155 = 0;
  LOBYTE(v135) = v113;
  LOBYTE(v132[0]) = 8;
  lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType();
  v48 = v155;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v155 = v48;
  if (v48)
  {
    return (*(v44 + 8))(v41, v40);
  }

  *&v135 = v112;
  LOBYTE(v132[0]) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]();
  v49 = v155;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v155 = v49;
  if (v49)
  {
    return (*(v44 + 8))(v41, v40);
  }

  *&v135 = v111;
  LOBYTE(v132[0]) = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySSGGGMd, &_sSaySDySSSaySSGGGMR);
  lazy protocol witness table accessor for type [[String : [String]]] and conformance <A> [A]();
  v124 = v40;
  v50 = v155;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v155 = v50;
  if (!v50)
  {
    *&v135 = v110;
    LOBYTE(v132[0]) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMd, &_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMR);
    lazy protocol witness table accessor for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]();
    v51 = v155;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v155 = v51;
    if (!v51)
    {
      *&v135 = v109;
      LOBYTE(v132[0]) = 12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMd, &_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMR);
      lazy protocol witness table accessor for type [[AutomationJSON.Turn]] and conformance <A> [A]();
      v52 = v155;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v155 = v52;
      if (!v52)
      {
        *&v135 = v108;
        LOBYTE(v132[0]) = 13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMd, &_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMR);
        lazy protocol witness table accessor for type [AutomationJSON.Response] and conformance <A> [A]();
        v53 = v155;
        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
        v155 = v53;
        if (!v53)
        {
          *&v135 = v107;
          LOBYTE(v132[0]) = 14;
          KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
          v155 = 0;
          *&v135 = v106;
          LOBYTE(v132[0]) = 15;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMd, &_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMR);
          lazy protocol witness table accessor for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]();
          v54 = v155;
          KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
          v155 = v54;
          if (!v54)
          {
            *&v135 = v105;
            LOBYTE(v132[0]) = 16;
            KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 17;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 18;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 19;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 20;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 21;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 22;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 23;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 24;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 25;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 26;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 27;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            *&v135 = v79;
            LOBYTE(v132[0]) = 28;
            KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 29;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 30;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 31;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            LOBYTE(v135) = 32;
            KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
            v155 = 0;
            *&v135 = v88;
            *(&v135 + 1) = v90;
            LOBYTE(v136) = v89;
            LOBYTE(v132[0]) = 33;
            outlined copy of JSON?(v88, v90, v89);
            lazy protocol witness table accessor for type JSON and conformance JSON();
            v55 = v155;
            KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
            v155 = v55;
            if (v55)
            {
              outlined consume of JSON?(v135, *(&v135 + 1), v136);
            }

            else
            {
              outlined consume of JSON?(v135, *(&v135 + 1), v136);
              *&v135 = v91;
              BYTE8(v135) = v92;
              LOBYTE(v132[0]) = 34;
              lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration();
              v56 = v155;
              KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
              v155 = v56;
              if (!v56)
              {
                LOBYTE(v135) = 35;
                KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                v155 = 0;
                *&v135 = v95;
                *(&v135 + 1) = v101;
                *&v136 = v100;
                *(&v136 + 1) = v99;
                *&v137 = v98;
                *(&v137 + 1) = v97;
                LOBYTE(v138) = v96;
                LOBYTE(v132[0]) = 36;
                outlined copy of AutomationJSON.InputSafetyConfiguration?(v95, v101, v100, v99, v98, v97);
                lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration();
                v57 = v155;
                KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                v155 = v57;
                if (v57)
                {
                  outlined consume of AutomationJSON.InputSafetyConfiguration?(v135, *(&v135 + 1), v136, *(&v136 + 1), v137, *(&v137 + 1));
                }

                else
                {
                  outlined consume of AutomationJSON.InputSafetyConfiguration?(v135, *(&v135 + 1), v136, *(&v136 + 1), v137, *(&v137 + 1));
                  *&v135 = v102;
                  *(&v135 + 1) = v104;
                  LOWORD(v136) = v103;
                  LOBYTE(v132[0]) = 37;
                  outlined copy of AutomationJSON.OutputSafetyConfiguration?(v102, v104);
                  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration();
                  v58 = v155;
                  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                  v155 = v58;
                  if (v58)
                  {
                    outlined consume of AutomationJSON.OutputSafetyConfiguration?(v135, *(&v135 + 1));
                  }

                  else
                  {
                    outlined consume of AutomationJSON.OutputSafetyConfiguration?(v135, *(&v135 + 1));
                    LOBYTE(v135) = 38;
                    v59 = v155;
                    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
                    v155 = v59;
                    if (!v59)
                    {
                      v141 = v151;
                      v142 = v152;
                      v143 = v153;
                      v144 = v154;
                      v137 = v147;
                      v138 = v148;
                      v139 = v149;
                      v140 = v150;
                      v135 = v145;
                      v136 = v146;
                      v134 = 39;
                      outlined init with copy of (String, Any)(&v145, v132, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
                      lazy protocol witness table accessor for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig();
                      v60 = v155;
                      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                      v155 = v60;
                      v132[6] = v141;
                      v132[7] = v142;
                      v132[8] = v143;
                      v133 = v144;
                      v132[2] = v137;
                      v132[3] = v138;
                      v132[4] = v139;
                      v132[5] = v140;
                      v132[0] = v135;
                      v132[1] = v136;
                      outlined destroy of [Regex2BNF.CharacterPredicate](v132, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
                      if (!v60)
                      {
                        v131 = v36;
                        v130 = 40;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMd, &_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMR);
                        lazy protocol witness table accessor for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A]();
                        v61 = v155;
                        KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
                        v155 = v61;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return (*(v44 + 8))(v41, v124);
}

uint64_t AutomationJSON.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14AutomationJSONV10CodingKeys33_868917FC943B4116B462CF14C383974DLLOGMR);
  v5 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v7 = &v68 - v6;
  _s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgWOi0_(v283);
  v255 = v283[6];
  v256 = v283[7];
  v257 = v283[8];
  v251 = v283[2];
  v252 = v283[3];
  v253 = v283[4];
  v254 = v283[5];
  v249 = v283[0];
  v258 = v284;
  v250 = v283[1];
  v8 = a1[3];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v285 = v2;
    __swift_destroy_boxed_opaque_existential_0(v137);
    v12 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_4;
  }

  v9 = v5;
  LOBYTE(v139) = 0;
  v10 = v136;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v135 = v11;
  LOBYTE(v139) = 1;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = v20;
  v134 = v19;
  LOBYTE(v139) = 2;
  v114 = 0;
  v133 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v282 = v21 & 1;
  LOBYTE(v139) = 3;
  v132 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v280 = v22 & 1;
  LOBYTE(v139) = 4;
  v131 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v278 = v27 & 1;
  LOBYTE(v139) = 5;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  v107 = v28;
  v105 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  LOBYTE(v138[0]) = 6;
  v130 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v31 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v31)
  {
    v285 = v31;
    (*(v9 + 8))(v7, v10);
    v32 = 0;
    LODWORD(v115) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v107) = 0;
    v33 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    v108 = 0;
    LODWORD(v119) = 1;
    goto LABEL_28;
  }

  v126 = v30;
  v99 = v139;
  LOBYTE(v139) = 7;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  v98 = v34;
  v104 = v35;
  LOBYTE(v138[0]) = 8;
  lazy protocol witness table accessor for type AutomationJSON.InputPromptType and conformance AutomationJSON.InputPromptType();
  v36 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v36;
  if (v36)
  {
    (*(v9 + 8))(v7, v10);
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v107) = 0;
    v33 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    v108 = 0;
    LODWORD(v119) = 1;
    v32 = 1;
    LODWORD(v115) = 1;
    goto LABEL_28;
  }

  v97 = v18;
  v37 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  LOBYTE(v138[0]) = 9;
  lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]();
  v38 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v38;
  if (v38)
  {
    (*(v9 + 8))(v7, v136);
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v107) = 0;
    v33 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    v108 = 0;
    LODWORD(v119) = 1;
    v32 = 1;
    LODWORD(v115) = 1;
    goto LABEL_28;
  }

  v103 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySSGGGMd, &_sSaySDySSSaySSGGGMR);
  LOBYTE(v138[0]) = 10;
  lazy protocol witness table accessor for type [[String : [String]]] and conformance <A> [A]();
  v39 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v39;
  if (v39)
  {
    (*(v9 + 8))(v7, v136);
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v107) = 0;
    v33 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    v108 = 0;
    LODWORD(v119) = 1;
    v32 = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    goto LABEL_28;
  }

  v102 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMd, &_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMR);
  LOBYTE(v138[0]) = 11;
  lazy protocol witness table accessor for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]();
  v40 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v40;
  if (v40)
  {
    (*(v9 + 8))(v7, v136);
    LODWORD(v118) = 0;
    LODWORD(v107) = 0;
    v33 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    v108 = 0;
    LODWORD(v119) = 1;
    v32 = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    goto LABEL_28;
  }

  v101 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMd, &_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMR);
  LOBYTE(v138[0]) = 12;
  lazy protocol witness table accessor for type [[AutomationJSON.Turn]] and conformance <A> [A]();
  v41 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v41;
  if (v41)
  {
    (*(v9 + 8))(v7, v136);
    LODWORD(v107) = 0;
    v33 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    v108 = 0;
    LODWORD(v119) = 1;
    v32 = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    goto LABEL_28;
  }

  v100 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMd, &_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMR);
  LOBYTE(v138[0]) = 13;
  lazy protocol witness table accessor for type [AutomationJSON.Response] and conformance <A> [A]();
  v42 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v42;
  if (v42)
  {
    (*(v9 + 8))(v7, v136);
    v33 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    v108 = 0;
LABEL_61:
    LODWORD(v119) = 1;
    v32 = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v107) = 1;
    goto LABEL_28;
  }

  v108 = v139;
  LOBYTE(v138[0]) = 14;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = 0;
  v43 = v139;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMd, &_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMR);
  LOBYTE(v138[0]) = 15;
  lazy protocol witness table accessor for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]();
  v44 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v44;
  if (v44)
  {
    (*(v9 + 8))(v7, v136);
    v33 = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v132) = 0;
    LODWORD(v133) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    goto LABEL_61;
  }

  v96 = v139;
  LOBYTE(v138[0]) = 16;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = 0;
  v95 = v139;
  LOBYTE(v139) = 17;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  v46 = v45;
  v275 = v47 & 1;
  LOBYTE(v139) = 18;
  v94 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  v273 = v48 & 1;
  LOBYTE(v139) = 19;
  v93 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v129 = v49;
  v285 = 0;
  LOBYTE(v139) = 20;
  v92 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  LOBYTE(v139) = 21;
  v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  v270 = v50 & 1;
  LOBYTE(v139) = 22;
  v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  LOBYTE(v139) = 23;
  v89 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  LOBYTE(v139) = 24;
  v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  LOBYTE(v139) = 25;
  v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  LOBYTE(v139) = 26;
  v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v128 = v51;
  v285 = 0;
  LOBYTE(v139) = 27;
  v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v127 = v52;
  v285 = 0;
  LOBYTE(v138[0]) = 28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = 0;
  v125 = v139;
  LOBYTE(v139) = 29;
  v130 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v126 = v53;
  v285 = 0;
  LOBYTE(v139) = 30;
  v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v124 = v54;
  v285 = 0;
  LOBYTE(v139) = 31;
  v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  v267 = v55 & 1;
  LOBYTE(v139) = 32;
  v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v285 = 0;
  v265 = v56 & 1;
  LOBYTE(v138[0]) = 33;
  lazy protocol witness table accessor for type JSON and conformance JSON();
  v57 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v57;
  if (v57)
  {
    (*(v9 + 8))(v7, v136);
    LODWORD(v135) = 0;
    LODWORD(v136) = 0;
    LODWORD(v119) = 1;
    v32 = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v107) = 1;
    v33 = 1;
    LODWORD(v130) = 1;
    LODWORD(v131) = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    LODWORD(v134) = 1;
    goto LABEL_28;
  }

  v122 = *(&v139 + 1);
  v123 = v139;
  v121 = v140;
  LOBYTE(v138[0]) = 34;
  lazy protocol witness table accessor for type AutomationJSON.SamplingStrategyConfiguration and conformance AutomationJSON.SamplingStrategyConfiguration();
  v58 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v58;
  if (v58)
  {
    (*(v9 + 8))(v7, v136);
    LODWORD(v136) = 0;
    LODWORD(v119) = 1;
    v32 = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v107) = 1;
    v33 = 1;
    LODWORD(v130) = 1;
    LODWORD(v131) = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    goto LABEL_28;
  }

  v81 = v139;
  v80 = BYTE8(v139);
  LOBYTE(v139) = 35;
  v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v120 = v59;
  v285 = 0;
  LOBYTE(v138[0]) = 36;
  lazy protocol witness table accessor for type AutomationJSON.InputSafetyConfiguration and conformance AutomationJSON.InputSafetyConfiguration();
  v60 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v60;
  if (v60)
  {
    (*(v9 + 8))(v7, v136);
    LODWORD(v119) = 1;
    v32 = 1;
    LODWORD(v115) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v107) = 1;
    v33 = 1;
    LODWORD(v130) = 1;
    LODWORD(v131) = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    LODWORD(v136) = 1;
LABEL_28:
    v23 = v114;
    __swift_destroy_boxed_opaque_existential_0(v137);

    if (v23)
    {
      if (v119)
      {
        goto LABEL_30;
      }
    }

    else
    {

      if (v119)
      {
LABEL_30:

        if ((v32 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_39;
      }
    }

    if (!v32)
    {
LABEL_31:
      if (v115)
      {
        goto LABEL_32;
      }

      goto LABEL_40;
    }

LABEL_39:

    if (v115)
    {
LABEL_32:

      if ((v116 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    }

LABEL_40:
    if (!v116)
    {
LABEL_33:
      if (v117)
      {
        goto LABEL_34;
      }

      goto LABEL_42;
    }

LABEL_41:

    if (v117)
    {
LABEL_34:
      v12 = v33;

      if ((v118 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }

LABEL_42:
    v12 = v33;
    if (!v118)
    {
LABEL_35:
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (!v107)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }

LABEL_43:

    v24 = 0;
    v25 = 0;
    v26 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if ((v107 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  v118 = *(&v139 + 1);
  v119 = v139;
  v116 = *(&v140 + 1);
  v117 = v140;
  v114 = *(&v141 + 1);
  v115 = v141;
  v113 = v142;
  LOBYTE(v138[0]) = 37;
  lazy protocol witness table accessor for type AutomationJSON.OutputSafetyConfiguration and conformance AutomationJSON.OutputSafetyConfiguration();
  v61 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v77 = v61 == 0;
  v285 = v61;
  if (v61)
  {
    (*(v9 + 8))(v7, v136);
    __swift_destroy_boxed_opaque_existential_0(v137);
    v26 = 0;
LABEL_74:

    v12 = 1;
    LODWORD(v130) = 1;
    LODWORD(v131) = 1;
    LODWORD(v132) = 1;
    LODWORD(v133) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    LODWORD(v136) = 1;
    v24 = 1;
    v25 = v77;
LABEL_44:
    v14 = v25;
    v13 = v24;

    v15 = v26;
LABEL_4:

    if (v12)
    {

      if (!v130)
      {
        goto LABEL_6;
      }
    }

    else if (!v130)
    {
LABEL_6:
      if (v131)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (v131)
    {
LABEL_7:

      if (!v132)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!v132)
    {
LABEL_8:
      if (v133)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:

    if (v133)
    {
LABEL_9:

      if (!v134)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (!v134)
    {
LABEL_10:
      if (v135)
      {
        goto LABEL_11;
      }

      goto LABEL_23;
    }

LABEL_22:

    if (v135)
    {
LABEL_11:
      outlined consume of JSON?(v123, v122, v121);
      if (!v136)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

LABEL_23:
    if (!v136)
    {
LABEL_12:
      if (v13)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

LABEL_24:

    if (v13)
    {
LABEL_13:
      outlined consume of AutomationJSON.InputSafetyConfiguration?(v119, v118, v117, v116, v115, v114);
      if (!v14)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

LABEL_25:
    if (!v14)
    {
LABEL_14:
      if (!v15)
      {
LABEL_16:
        v145 = v255;
        v146 = v256;
        v147 = v257;
        LOBYTE(v148) = v258;
        v141 = v251;
        v142 = v252;
        v143 = v253;
        v144 = v254;
        v139 = v249;
        v140 = v250;
        return outlined destroy of [Regex2BNF.CharacterPredicate](&v139, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR);
      }

LABEL_15:

      goto LABEL_16;
    }

LABEL_26:
    outlined consume of AutomationJSON.OutputSafetyConfiguration?(v112, v111);
    if (!v15)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v111 = *(&v139 + 1);
  v112 = v139;
  v110 = v140;
  LOBYTE(v139) = 38;
  v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v109 = v62;
  v285 = 0;
  v237 = 39;
  lazy protocol witness table accessor for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig();
  v63 = v285;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v285 = v63;
  if (v63 || (v231 = v244, v232 = v245, v233 = v246, v234 = v247, v227 = v240, v228 = v241, v229 = v242, v230 = v243, v225 = v238, v226 = v239, v235[6] = v255, v235[7] = v256, v235[8] = v257, v236 = v258, v235[2] = v251, v235[3] = v252, v235[4] = v253, v235[5] = v254, v235[0] = v249, v235[1] = v250, outlined destroy of [Regex2BNF.CharacterPredicate](v235, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMd, &_s19TokenGenerationCore14AutomationJSONV13DecoderConfigVSgMR), v255 = v231, v256 = v232, v257 = v233, v251 = v227, v252 = v228, v253 = v229, v254 = v230, v249 = v225, v258 = v234, v250 = v226, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMd, &_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMR), v223 = 40, lazy protocol witness table accessor for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A](), v64 = v285, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v285 = v64) != 0))
  {
    (*(v9 + 8))(v7, v136);
    __swift_destroy_boxed_opaque_existential_0(v137);
    v26 = 1;
    goto LABEL_74;
  }

  (*(v9 + 8))(v7, v136);
  v71 = v224;
  v138[0] = v135;
  v138[1] = v97;
  v138[2] = v134;
  v138[3] = v106;
  v138[4] = v133;
  LODWORD(v136) = v282;
  LOBYTE(v138[5]) = v282;
  *(&v138[5] + 1) = *v281;
  HIDWORD(v138[5]) = *&v281[3];
  v138[6] = v132;
  v77 = v280;
  LOBYTE(v138[7]) = v280;
  *(&v138[7] + 1) = *v279;
  HIDWORD(v138[7]) = *&v279[3];
  v138[8] = v131;
  v76 = v278;
  LOBYTE(v138[9]) = v278;
  *(&v138[9] + 1) = *v277;
  HIDWORD(v138[9]) = *&v277[3];
  v138[10] = v107;
  v138[11] = v105;
  v138[12] = v99;
  v138[13] = v98;
  v138[14] = v104;
  LOBYTE(v138[15]) = v37;
  *(&v138[15] + 1) = *v276;
  HIDWORD(v138[15]) = *&v276[3];
  v138[16] = v103;
  v138[17] = v102;
  v138[18] = v101;
  v138[19] = v100;
  v138[20] = v108;
  v74 = v46;
  v75 = v43;
  v138[21] = v43;
  v138[22] = v96;
  v138[23] = v95;
  v138[24] = v46;
  v73 = v275;
  LOBYTE(v138[25]) = v275;
  HIDWORD(v138[25]) = *&v274[3];
  *(&v138[25] + 1) = *v274;
  v138[26] = v94;
  v72 = v273;
  LOBYTE(v138[27]) = v273;
  HIDWORD(v138[27]) = *&v272[3];
  *(&v138[27] + 1) = *v272;
  v138[28] = v93;
  v138[29] = v129;
  LOBYTE(v138[30]) = v92;
  *(&v138[30] + 1) = *v271;
  HIDWORD(v138[30]) = *&v271[3];
  v138[31] = v91;
  *(&v138[32] + 5) = v268;
  *(&v138[43] + 1) = *v266;
  *(&v138[45] + 1) = *v264;
  *(&v138[48] + 1) = *v263;
  *(&v138[50] + 1) = *v262;
  *(&v138[59] + 1) = *v261;
  *(&v138[62] + 2) = v259;
  *(&v138[83] + 1) = *v248;
  HIDWORD(v68) = v270;
  LOBYTE(v138[32]) = v270;
  BYTE1(v138[32]) = v90;
  BYTE2(v138[32]) = v89;
  BYTE3(v138[32]) = v88;
  BYTE4(v138[32]) = v87;
  HIBYTE(v138[32]) = v269;
  v138[33] = v86;
  v65 = v127;
  v66 = v128;
  v138[34] = v128;
  v138[35] = v85;
  v138[36] = v127;
  v67 = v125;
  v138[37] = v125;
  v138[38] = v130;
  v138[39] = v126;
  v138[40] = v84;
  v138[41] = v124;
  v138[42] = v83;
  HIDWORD(v138[43]) = *&v266[3];
  HIDWORD(v138[45]) = *&v264[3];
  HIDWORD(v138[48]) = *&v263[3];
  HIDWORD(v138[50]) = *&v262[3];
  HIDWORD(v138[59]) = *&v261[3];
  HIWORD(v138[62]) = v260;
  v70 = v267;
  LOBYTE(v138[43]) = v267;
  v138[44] = v82;
  *&v138[65] = v225;
  *&v138[67] = v226;
  *&v138[73] = v229;
  *&v138[75] = v230;
  *&v138[69] = v227;
  *&v138[71] = v228;
  *&v138[79] = v232;
  *&v138[81] = v233;
  *&v138[77] = v231;
  LOBYTE(v138[83]) = v234;
  HIDWORD(v138[83]) = *&v248[3];
  v69 = v265;
  LOBYTE(v138[45]) = v265;
  v138[46] = v123;
  v138[47] = v122;
  LOBYTE(v138[48]) = v121;
  v138[49] = v81;
  LOBYTE(v138[50]) = v80;
  v138[51] = v79;
  v138[52] = v120;
  v138[53] = v119;
  v138[54] = v118;
  v138[55] = v117;
  v138[56] = v116;
  v138[57] = v115;
  v138[58] = v114;
  LOBYTE(v138[59]) = v113;
  v138[60] = v112;
  v138[61] = v111;
  LOWORD(v138[62]) = v110;
  v138[63] = v78;
  v138[64] = v109;
  v138[84] = v224;
  memcpy(a2, v138, 0x2A8uLL);
  outlined init with copy of AutomationJSON(v138, &v139);
  __swift_destroy_boxed_opaque_existential_0(v137);
  *&v139 = v135;
  *(&v139 + 1) = v97;
  *&v140 = v134;
  *(&v140 + 1) = v106;
  *&v141 = v133;
  BYTE8(v141) = v136;
  *&v142 = v132;
  BYTE8(v142) = v77;
  *&v143 = v131;
  BYTE8(v143) = v76;
  *&v144 = v107;
  *(&v144 + 1) = v105;
  *&v145 = v99;
  *(&v145 + 1) = v98;
  *&v146 = v104;
  BYTE8(v146) = v37;
  *&v147 = v103;
  *(&v147 + 1) = v102;
  v148 = v101;
  v149 = v100;
  v150 = v108;
  v151 = v75;
  v152 = v96;
  v153 = v95;
  v154 = v74;
  v155 = v73;
  v157 = v94;
  v158 = v72;
  v160 = v93;
  v161 = v129;
  v162 = v92;
  v164 = v91;
  v165 = BYTE4(v68);
  v166 = v90;
  v167 = v89;
  v168 = v88;
  v169 = v87;
  v172 = v86;
  v173 = v66;
  v174 = v85;
  v175 = v65;
  v176 = v67;
  v177 = v130;
  *(&v141 + 9) = *v281;
  HIDWORD(v141) = *&v281[3];
  *(&v142 + 9) = *v279;
  HIDWORD(v142) = *&v279[3];
  HIDWORD(v143) = *&v277[3];
  *(&v143 + 9) = *v277;
  *(&v146 + 9) = *v276;
  HIDWORD(v146) = *&v276[3];
  *&v156[3] = *&v274[3];
  *v156 = *v274;
  *&v159[3] = *&v272[3];
  *v159 = *v272;
  *v163 = *v271;
  *&v163[3] = *&v271[3];
  v170 = v268;
  v171 = v269;
  v178 = v126;
  v179 = v84;
  v180 = v124;
  v181 = v83;
  v182 = v70;
  *v183 = *v266;
  *&v183[3] = *&v266[3];
  v184 = v82;
  v185 = v69;
  *v186 = *v264;
  *&v186[3] = *&v264[3];
  v187 = v123;
  v188 = v122;
  v189 = v121;
  *v190 = *v263;
  *&v190[3] = *&v263[3];
  v191 = v81;
  v192 = v80;
  *v193 = *v262;
  *&v193[3] = *&v262[3];
  v194 = v79;
  v195 = v120;
  v196 = v119;
  v197 = v118;
  v198 = v117;
  v199 = v116;
  v200 = v115;
  v201 = v114;
  v202 = v113;
  *v203 = *v261;
  *&v203[3] = *&v261[3];
  v204 = v112;
  v205 = v111;
  v206 = v110;
  v207 = v259;
  v208 = v260;
  v209 = v78;
  v210 = v109;
  v211 = v249;
  v212 = v250;
  v215 = v253;
  v216 = v254;
  v213 = v251;
  v214 = v252;
  v218 = v256;
  v219 = v257;
  v217 = v255;
  v220 = v258;
  *v221 = *v248;
  *&v221[3] = *&v248[3];
  v222 = v71;
  return outlined destroy of AutomationJSON(&v139);
}

uint64_t _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZ10Foundation4DataV_Tt0g5(uint64_t a1, unint64_t a2)
{
  outlined copy of Data._Representation(a1, a2);
  specialized Collection._copyToContiguousArray()(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t closure #2 in String.init<A, B>(decoding:as:)@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void specialized Collection._copyToContiguousArray()(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      outlined consume of Data._Representation(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0);
      v12 = Data._copyContents(initializing:)();
      outlined consume of Data._Representation(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t specialized Data.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  MEMORY[0x1AC57AAA0]();
  return static String._fromUTF8Repairing(_:)();
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.CodingKeys and conformance AutomationJSON.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[String : String]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : String]] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[String : [String]]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSaySSGGGMd, &_sSaySDySSSaySSGGGMR);
    lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSaySSGGGMd, &_sSaySDySSSaySSGGGMR);
    lazy protocol witness table accessor for type [String : [String]] and conformance <> [A : B]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : [String]]] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMd, &_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMR);
    lazy protocol witness table accessor for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B], lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMd, &_sSaySDySSSay19TokenGenerationCore14AutomationJSONV19RichVariableBindingOGGGMR);
    lazy protocol witness table accessor for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : [AutomationJSON.RichVariableBinding]] and conformance <> [A : B], lazy protocol witness table accessor for type [AutomationJSON.RichVariableBinding] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[String : [AutomationJSON.RichVariableBinding]]] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [[AutomationJSON.Turn]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMd, &_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMR);
    lazy protocol witness table accessor for type [AutomationJSON.Turn] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMd, &_sSaySay19TokenGenerationCore14AutomationJSONV4TurnVGGMR);
    lazy protocol witness table accessor for type [AutomationJSON.Turn] and conformance <A> [A]();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [[AutomationJSON.Turn]] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.Turn] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV4TurnVGMd, &_sSay19TokenGenerationCore14AutomationJSONV4TurnVGMR);
    lazy protocol witness table accessor for type AutomationJSON.Turn and conformance AutomationJSON.Turn();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV4TurnVGMd, &_sSay19TokenGenerationCore14AutomationJSONV4TurnVGMR);
    lazy protocol witness table accessor for type AutomationJSON.Turn and conformance AutomationJSON.Turn();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.Turn] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Turn and conformance AutomationJSON.Turn()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Turn and conformance AutomationJSON.Turn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.Response] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMd, &_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMR);
    lazy protocol witness table accessor for type AutomationJSON.Response and conformance AutomationJSON.Response();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMd, &_sSay19TokenGenerationCore14AutomationJSONV8ResponseVGMR);
    lazy protocol witness table accessor for type AutomationJSON.Response and conformance AutomationJSON.Response();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.Response] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.Response and conformance AutomationJSON.Response()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response;
  if (!lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.Response and conformance AutomationJSON.Response);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMd, &_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMR);
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMd, &_sSay19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgGMR);
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.RenderedPrompt?] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMd, &_s19TokenGenerationCore14AutomationJSONV14RenderedPromptVSgMR);
    lazy protocol witness table accessor for type AutomationJSON.RenderedPrompt and conformance AutomationJSON.RenderedPrompt();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.RenderedPrompt? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig;
  if (!lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.DecoderConfig and conformance AutomationJSON.DecoderConfig);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMd, &_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMR);
    lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMd, &_sSay19TokenGenerationCore14AutomationJSONV19ParameterizedPromptVGMR);
    lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AutomationJSON.ParameterizedPrompt] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt()
{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt;
  if (!lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomationJSON.ParameterizedPrompt and conformance AutomationJSON.ParameterizedPrompt);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TGModes and conformance TGModes()
{
  result = lazy protocol witness table cache variable for type TGModes and conformance TGModes;
  if (!lazy protocol witness table cache variable for type TGModes and conformance TGModes)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TGModes and conformance TGModes);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore4JSONO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore4JSONOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 5)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for AutomationJSON(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 680))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 648) = 0u;
    *(result + 664) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 680) = 1;
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

    *(result + 680) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.RichVariableBinding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.RichVariableBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.RenderedPrompt(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.RenderedPrompt(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration.LanguageScriptValidator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.OutputSafetyConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.OutputSafetyConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration.Guardrails(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
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

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AutomationJSON.InputSafetyConfiguration.Guardrails(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.Turn(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.Turn(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.DecoderConfig(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.DecoderConfig(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.ParameterizedPrompt(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 512))
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

uint64_t storeEnumTagSinglePayload for AutomationJSON.ParameterizedPrompt(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 504) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 512) = 1;
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

    *(result + 512) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_17;
  }

  if (a2 + 40 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 40) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 40;
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

      return (*a1 | (v4 << 8)) - 40;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 40;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x29;
  v8 = v6 - 41;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 40) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD8)
  {
    v4 = 0;
  }

  if (a2 > 0xD7)
  {
    v5 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
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
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.ParameterizedPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.ParameterizedPrompt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.DecoderConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.DecoderConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutomationJSON.RenderedPrompt.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationJSON.RenderedPrompt.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized AutomationJSON.RichVariableBinding.FieldType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AutomationJSON.RichVariableBinding.FieldType.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized AutomationJSON.RenderedPrompt.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696769726FLL && a2 == 0xEE0074706D6F7250;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xEE00676E69727453 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E656D676573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7344496E656B6F74 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized AutomationJSON.SamplingStrategyConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802530676 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7375656C63756ELL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x78616D677261 && a2 == 0xE600000000000000)
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

uint64_t specialized AutomationJSON.InputSafetyConfiguration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001A8FD9870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6961726472617567 && a2 == 0xEA0000000000736CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8FD9890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8FD98B0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized AutomationJSON.DecoderConfig.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001A8FD98D0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E75427466617264 && a2 == 0xEF68746150656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E7542796E6974 && a2 == 0xEE0068746150656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696E656B6F74 && a2 == 0xED00006874615072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8FD98F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8FD9910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574537466617264 && a2 == 0xEA00000000007370 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572547466617264 && a2 == 0xEF726F7463614665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8FD9930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6164417466617264 && a2 == 0xED00006576697470 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8FD9950 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t specialized AutomationJSON.ParameterizedPrompt.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F72507475706E69 && a2 == 0xEF6570795474706DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8FD9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A8FD9990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8FD99B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A8FD99D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD99F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65506874676E656CLL && a2 == 0xED000079746C616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x75716553706F7473 && a2 == 0xEC00000065636E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8FD9A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8FD9A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6165486E656B6F74 && a2 == 0xEC000000676E696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8FD9A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x72616D6D617267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD9A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8FD9A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8FD9AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001A8FD9AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8FD9AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8FD9B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8FD9B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x64657265646E6572 && a2 == 0xEE0074706D6F7250)
  {

    return 29;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

uint64_t specialized AutomationJSON.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E75426C65646F6DLL && a2 == 0xED00006449656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F72507475706E69 && a2 == 0xEF6570795474706DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8FD9970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A8FD9990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8FD99B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x64657265646E6572 && a2 == -1192481450101870000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8FD9B50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD99F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x65506874676E656CLL && a2 == 0xED000079746C616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x75716553706F7473 && a2 == 0xEC00000065636E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6D726177657270 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8FD9A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8FD9A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6165486E656B6F74 && a2 == 0xEC000000676E696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001A8FD9AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8FD9A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x72616D6D617267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8FD9AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD9A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8FD9A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x6F69746172657469 && a2 == 0xEE00746E756F436ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x654474706D6F7270 && a2 == 0xEB0000000079616CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001A8FD99D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8FD9B70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A8FD9AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8FD9B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x7265646F636564 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x437265646F636564 && a2 == 0xED00006769666E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8FD9B90 == a2)
  {

    return 40;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 40;
    }

    else
    {
      return 41;
    }
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance JSON.JSONCodingKey()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JSON.JSONCodingKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JSON.JSONCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JSON.JSONCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JSON.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGSgMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGMR);
  MEMORY[0x1EEE9AC00](v22);
  v21 = &v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    outlined destroy of [Regex2BNF.CharacterPredicate](&v23, &_ss28SingleValueDecodingContainer_pSgMd, &_ss28SingleValueDecodingContainer_pSgMR);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.unkeyedContainer()();
    v19 = a1;
    v20 = a2;
    outlined init with take of PromptComponentValueConvertible(&v23, &v26);
    __swift_project_boxed_opaque_existential_1(&v26, v27);
    v10 = dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter();
    v8 = MEMORY[0x1E69E7CC0];
    if ((v10 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(&v26, v27);
        lazy protocol witness table accessor for type JSON and conformance JSON();
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        v11 = v23;
        v12 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
        }

        *(v8 + 16) = v14 + 1;
        v15 = v8 + 24 * v14;
        *(v15 + 32) = v11;
        *(v15 + 48) = v12;
        __swift_project_boxed_opaque_existential_1(&v26, v27);
      }

      while ((dispatch thunk of UnkeyedDecodingContainer.isAtEnd.getter() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_0(&v26);
    v9 = 3;
    a1 = v19;
  }

  else
  {
    outlined init with take of PromptComponentValueConvertible(&v23, &v26);
    __swift_project_boxed_opaque_existential_1(&v26, v27);
    v7 = dispatch thunk of SingleValueDecodingContainer.decodeNil()();
    v20 = a2;
    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_0(&v26);
      v8 = 0;
      v9 = 5;
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      v8 = dispatch thunk of SingleValueDecodingContainer.decode(_:)() & 1;
      __swift_destroy_boxed_opaque_existential_0(&v26);
      v9 = 0;
    }
  }

  v16 = v20;
  *v20 = v8;
  v16[1] = 0;
  *(v16 + 16) = v9;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t lazy protocol witness table accessor for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey()
{
  result = lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey;
  if (!lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey;
  if (!lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey;
  if (!lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey);
  }

  return result;
}

void *JSON.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore4JSONO13JSONCodingKey33_FE01160A198DCF2CC2A2C2F051885AC8LLVGMR);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  v9 = *v1;
  v10 = *(v1 + 16);
  if (v10 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v10 == 1)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Encoder.singleValueContainer()();
        __swift_mutable_project_boxed_opaque_existential_1(v42, v44);
        dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Encoder.singleValueContainer()();
        __swift_mutable_project_boxed_opaque_existential_1(v42, v44);
        dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      __swift_mutable_project_boxed_opaque_existential_1(v42, v44);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    }

    return __swift_destroy_boxed_opaque_existential_0(v42);
  }

  v38 = *v1;
  if (v10 == 3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = dispatch thunk of Encoder.unkeyedContainer()();
    v37 = *(v9 + 16);
    if (v37)
    {
      v28 = 0;
      v29 = (v9 + 48);
      while (v28 < *(v9 + 16))
      {
        v31 = *(v29 - 1);
        v32 = *v29;
        v39 = *(v29 - 2);
        v30 = v39;
        v40 = v31;
        v41 = v32;
        __swift_mutable_project_boxed_opaque_existential_1(v42, v44);
        outlined copy of JSON(v30, v31, v32);
        lazy protocol witness table accessor for type JSON and conformance JSON();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        if (v2)
        {
          outlined consume of JSON(v30, v31, v32);
          return __swift_destroy_boxed_opaque_existential_0(v42);
        }

        ++v28;
        result = outlined consume of JSON(v30, v31, v32);
        v29 += 24;
        v9 = v38;
        if (v37 == v28)
        {
          return __swift_destroy_boxed_opaque_existential_0(v42);
        }
      }

      goto LABEL_31;
    }

    return __swift_destroy_boxed_opaque_existential_0(v42);
  }

  if (v10 != 4)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    __swift_mutable_project_boxed_opaque_existential_1(v42, v44);
    dispatch thunk of SingleValueEncodingContainer.encodeNil()();
    return __swift_destroy_boxed_opaque_existential_0(v42);
  }

  v34 = v6;
  v36 = v5;
  v37 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type JSON.JSONCodingKey and conformance JSON.JSONCodingKey();
  v35 = v8;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v9 + 64;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  if (!v14)
  {
LABEL_11:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return (*(v34 + 8))(v35, v36);
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  while (1)
  {
    v18 = v17;
LABEL_14:
    v19 = __clz(__rbit64(v14)) | (v18 << 6);
    v20 = (*(v9 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v9 + 56) + 24 * v19;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v42[0] = *v23;
    v24 = v42[0];
    v42[1] = v25;
    v43 = v26;
    v39 = v21;
    v40 = v22;

    outlined copy of JSON(v24, v25, v26);
    lazy protocol witness table accessor for type JSON and conformance JSON();
    v27 = v37;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v37 = v27;
    if (v27)
    {
      break;
    }

    v14 &= v14 - 1;

    result = outlined consume of JSON(v24, v25, v26);
    v17 = v18;
    v9 = v38;
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  (*(v34 + 8))(v35, v36);

  return outlined consume of JSON(v24, v25, v26);
}