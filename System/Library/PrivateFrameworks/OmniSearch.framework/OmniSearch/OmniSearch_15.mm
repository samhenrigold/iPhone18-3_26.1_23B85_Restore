void SearchPropertyRequest.init(groupingInfo:type:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_16();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v8);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_86_7();
  v10 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_233_1();
  v12 = v3[1];
  v13 = v3[3];
  v40 = v3[2];
  v41 = *v3;
  v14 = *(v3 + 32);
  v42 = *v1;
  OUTLINED_FUNCTION_26_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_120_5(v15, v16, v17, v10);
  v18 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  DisplayRepresentation.init(title:subtitle:image:)();
  v22 = type metadata accessor for SearchPropertyRequest(0);
  v23 = v22[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_38_15();
  LocalizedStringResource.init(stringLiteral:)();
  *(v5 + v23) = EntityProperty<>.init(title:)();
  v24 = v22[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_114_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
  *(v5 + v24) = EntityProperty<>.init(title:)();
  v25 = v22[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMR);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0_39();
  lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(v26);
  *(v5 + v25) = EntityProperty<>.init(title:)();
  v27 = v5 + v22[8];
  *v27 = v41;
  *(v27 + 8) = v12;
  *(v27 + 16) = v40;
  *(v27 + 24) = v13;
  *(v27 + 32) = v14;
  v28 = OUTLINED_FUNCTION_52_10();
  outlined copy of SearchPropertyRequest.GroupInfo(v28, v29, v30, v31, v14);
  OUTLINED_FUNCTION_28_1();
  outlined consume of SearchPropertyRequest.GroupInfo?(v32, v33, v34, v35, 255);
  OUTLINED_FUNCTION_112_7(v42);
  EntityProperty.wrappedValue.setter();

  EntityProperty.wrappedValue.setter();
  v36 = OUTLINED_FUNCTION_52_10();
  outlined consume of SearchPropertyRequest.GroupInfo(v36, v37, v38, v39, (v14 & 1) != 0);
  OUTLINED_FUNCTION_148();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SearchPropertyRequest.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25D86BEDC();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchPropertyRequest.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25D86BF24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchPropertyRequest.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25D86BEDC();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchPropertyRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchPropertyRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void SearchPropertyRequest.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60_1();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  OUTLINED_FUNCTION_114(v28);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_59_4();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E15PropertyRequestV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E15PropertyRequestV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMR);
  OUTLINED_FUNCTION_14();
  v32 = v31;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_218(v27, v27[3]);
  v34 = lazy protocol witness table accessor for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys();
  OUTLINED_FUNCTION_125_4(&unk_286F7E008, v35, v34);
  type metadata accessor for SearchPropertyRequest(0);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_67_9();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v23)
  {
    (*(v32 + 8))(v25, v30);
  }

  else
  {

    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_67_9();
    KeyedEncodingContainer.encode(_:forKey:)();

    EntityProperty.wrappedValue.getter();
    type metadata accessor for HydrationContext(0);
    OUTLINED_FUNCTION_0_39();
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(v36);
    OUTLINED_FUNCTION_67_9();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined destroy of IntentApplication?(v24, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
    (*(v32 + 8))(v25, v30);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t SearchPropertyType.rawValue.getter()
{
  result = 0x676E69727473;
  switch(*v0)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = OUTLINED_FUNCTION_55_7();
      break;
    case 3:
      result = 0x6E6F697461727564;
      break;
    case 4:
      result = OUTLINED_FUNCTION_106_5();
      break;
    case 5:
      result = OUTLINED_FUNCTION_105_8();
      break;
    case 6:
      result = OUTLINED_FUNCTION_104_6();
      break;
    case 7:
      result = OUTLINED_FUNCTION_54_10();
      break;
    case 8:
      result = 7107189;
      break;
    case 9:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

void SearchPropertyRequest.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v4 = v3;
  v37 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_109();
  v36 = v8 - v9;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_2();
  v38 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E15PropertyRequestV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E15PropertyRequestV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMR);
  OUTLINED_FUNCTION_14();
  v39 = v13;
  v40 = v12;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_233_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v15);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_16();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v17);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_24();
  v19 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  v21 = type metadata accessor for SearchPropertyRequest(0);
  v22 = (v21 - 8);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_26_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  type metadata accessor for DisplayRepresentation.Image();
  v26 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_121_0();
  DisplayRepresentation.init(title:subtitle:image:)();
  v30 = v22[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_38_15();
  LocalizedStringResource.init(stringLiteral:)();
  *(v2 + v30) = EntityProperty<>.init(title:)();
  v31 = v22[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMR);
  OUTLINED_FUNCTION_114_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
  *(v2 + v31) = EntityProperty<>.init(title:)();
  v32 = v22[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMR);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0_39();
  lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(v33);
  *(v2 + v32) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_95_6(v22[10]);
  OUTLINED_FUNCTION_218(v4, v4[3]);
  lazy protocol witness table accessor for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    outlined destroy of SearchPropertyRequest();
  }

  else
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    EntityProperty.wrappedValue.setter();
    v34._countAndFlagsBits = KeyedDecodingContainer.decode(_:forKey:)();
    SearchPropertyType.init(rawValue:)(v34);
    OUTLINED_FUNCTION_112_7(1);
    EntityProperty.wrappedValue.setter();
    type metadata accessor for HydrationContext(0);
    OUTLINED_FUNCTION_0_39();
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(v35);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with copy of ResourceBundle?(v38, v36, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v38, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
    (*(v39 + 8))(v1, v40);
    outlined init with take of SearchPropertyRequest(v2, v37);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  OUTLINED_FUNCTION_61_2();
}

OmniSearch::SearchPropertyType_optional __swiftcall SearchPropertyType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89_7();
  v3 = v2;
  v4._object = v1;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchPropertyType.init(rawValue:), v4);

  v7 = 10;
  if (v5 < 0xA)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

void SearchPropertyRequest.description.getter()
{
  OUTLINED_FUNCTION_155();
  v56 = type metadata accessor for HydrationEntity(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v53 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_49_3();
  v55 = v7;
  v54 = type metadata accessor for IntentApplication();
  OUTLINED_FUNCTION_14();
  v52[1] = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v52[0] = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v12);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_1();
  v14 = type metadata accessor for HydrationContext(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v16);
  v18 = v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  v20 = OUTLINED_FUNCTION_114(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_109();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v52 - v25;
  v59 = 0;
  v60 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);

  v59 = 40;
  v60 = 0xE100000000000000;
  type metadata accessor for SearchPropertyRequest(0);
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](v57, v58);

  v27 = 0xE300000000000000;
  OUTLINED_FUNCTION_107_4();
  EntityProperty.wrappedValue.getter();
  v28 = 7107189;
  switch(v57)
  {
    case 1:
      v27 = 0xE400000000000000;
      v28 = 1702125924;
      break;
    case 2:
      v27 = 0xEE0073746E656E6FLL;
      v28 = OUTLINED_FUNCTION_55_7();
      break;
    case 3:
      v27 = 0xE800000000000000;
      v29 = 1634891108;
      goto LABEL_5;
    case 4:
      v27 = 0xE600000000000000;
      v28 = OUTLINED_FUNCTION_106_5();
      break;
    case 5:
      v27 = 0xE600000000000000;
      v28 = OUTLINED_FUNCTION_105_8();
      break;
    case 6:
      v27 = 0xE500000000000000;
      v28 = OUTLINED_FUNCTION_104_6();
      break;
    case 7:
      v27 = 0xEA00000000006E6FLL;
      v28 = OUTLINED_FUNCTION_54_10();
      break;
    case 8:
      break;
    case 9:
      v27 = 0xE800000000000000;
      v29 = 1633906540;
LABEL_5:
      v28 = v29 | 0x6E6F697400000000;
      break;
    default:
      v27 = 0xE600000000000000;
      v28 = OUTLINED_FUNCTION_50_10(29811);
      break;
  }

  MEMORY[0x25F89F6C0](v28, v27);

  OUTLINED_FUNCTION_107_4();
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v26, 1, v14))
  {
    v30 = &_s10OmniSearch16HydrationContextVSgMd;
    v31 = &_s10OmniSearch16HydrationContextVSgMR;
    v32 = v26;
LABEL_16:
    outlined destroy of IntentApplication?(v32, v30, v31);
    v33 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_17;
  }

  outlined init with copy of SearchPropertyRequest(v26, v18);
  outlined destroy of IntentApplication?(v26, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  EntityProperty.wrappedValue.getter();
  outlined destroy of SearchPropertyRequest();
  if (__swift_getEnumTagSinglePayload(v0, 1, v54))
  {
    v30 = &_s10AppIntents17IntentApplicationVSgMd;
    v31 = &_s10AppIntents17IntentApplicationVSgMR;
    v32 = v0;
    goto LABEL_16;
  }

  v43 = OUTLINED_FUNCTION_107();
  v44(v43);
  v45 = outlined destroy of IntentApplication?(v0, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  v33 = MEMORY[0x25F898B70](v45);
  v34 = v46;
  v47 = OUTLINED_FUNCTION_100_4();
  v48(v47);
LABEL_17:
  MEMORY[0x25F89F6C0](v33, v34);

  OUTLINED_FUNCTION_107_4();
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v23, 1, v14))
  {
    v35 = &_s10OmniSearch16HydrationContextVSgMd;
    v36 = &_s10OmniSearch16HydrationContextVSgMR;
    v37 = v23;
LABEL_21:
    outlined destroy of IntentApplication?(v37, v35, v36);
    v41 = 0;
    v42 = 0xE000000000000000;
    goto LABEL_22;
  }

  outlined init with copy of SearchPropertyRequest(v23, v1);
  outlined destroy of IntentApplication?(v23, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  v38 = v55;
  EntityProperty.wrappedValue.getter();
  outlined destroy of SearchPropertyRequest();
  v39 = OUTLINED_FUNCTION_93_6();
  if (__swift_getEnumTagSinglePayload(v39, v40, v56))
  {
    v35 = &_s10OmniSearch15HydrationEntityVSgMd;
    v36 = &_s10OmniSearch15HydrationEntityVSgMR;
    v37 = v38;
    goto LABEL_21;
  }

  outlined init with copy of SearchPropertyRequest(v38, v53);
  outlined destroy of IntentApplication?(v38, &_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  v49 = HydrationEntity.value.getter();
  v51 = v50;
  OUTLINED_FUNCTION_1_28();
  outlined destroy of SearchPropertyRequest();
  if (v51)
  {
    v41 = v49;
  }

  else
  {
    v41 = 0;
  }

  if (v51)
  {
    v42 = v51;
  }

  else
  {
    v42 = 0xE000000000000000;
  }

LABEL_22:
  MEMORY[0x25F89F6C0](v41, v42);

  MEMORY[0x25F89F6C0](41, 0xE100000000000000);
  OUTLINED_FUNCTION_148();
}

uint64_t HydrationContext.app.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for HydrationContext(v0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t HydrationContext.entity.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for HydrationContext(v0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.wrappedValue.getter();
}

unint64_t HydrationEntity.value.getter()
{
  type metadata accessor for HydrationEntity(0);
  OUTLINED_FUNCTION_17_9();
  EntityProperty.wrappedValue.getter();
  if (v12)
  {
    EntityProperty.wrappedValue.getter();
    return v11;
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_110_6(&v11);
    if (_s10OmniSearch0B7ContextVSgWOg(&v11) == 1)
    {
      OUTLINED_FUNCTION_110_6(v10);
      outlined destroy of IntentApplication?(v10, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
      return 0;
    }

    else
    {
      OUTLINED_FUNCTION_110_6(v8);
      OUTLINED_FUNCTION_110_6(v9);
      OUTLINED_FUNCTION_110_6(v10);
      outlined init with copy of SearchAnswerEntity(v10, &v7);
      OUTLINED_FUNCTION_201_0();
      outlined destroy of IntentApplication?(v1, v2, v3);
      EntityProperty.wrappedValue.getter();
      OUTLINED_FUNCTION_201_0();
      outlined destroy of IntentApplication?(v4, v5, v6);
      return v7;
    }
  }
}

BOOL static SearchPropertyRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static DisplayRepresentation.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  v4 = OUTLINED_FUNCTION_47_1();
  v5 = type metadata accessor for SearchPropertyRequest(v4);
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMR);
  lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
  OUTLINED_FUNCTION_121_0();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMR);
  lazy protocol witness table accessor for type HydrationContext? and conformance <A> A?();
  OUTLINED_FUNCTION_121_0();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 32);
  v7 = *(a1 + v6 + 32);
  v8 = *(a2 + v6 + 32);
  if (v7 == 255)
  {
    v36 = OUTLINED_FUNCTION_6_11();
    outlined copy of SearchPropertyRequest.GroupInfo?(v36, v37, v38, v39, 255);
    if (v8 == 255)
    {
      v70 = OUTLINED_FUNCTION_17_17();
      outlined copy of SearchPropertyRequest.GroupInfo?(v70, v71, v72, v73, 255);
      v74 = OUTLINED_FUNCTION_6_11();
      outlined consume of SearchPropertyRequest.GroupInfo?(v74, v75, v76, v77, 255);
      return 1;
    }

    v40 = OUTLINED_FUNCTION_17_17();
    outlined copy of SearchPropertyRequest.GroupInfo?(v40, v41, v42, v43, v8);
    goto LABEL_12;
  }

  if (v8 == 255)
  {
    v44 = OUTLINED_FUNCTION_6_11();
    outlined copy of SearchPropertyRequest.GroupInfo?(v44, v45, v46, v47, v7);
    v48 = OUTLINED_FUNCTION_17_17();
    outlined copy of SearchPropertyRequest.GroupInfo?(v48, v49, v50, v51, 255);
    v52 = OUTLINED_FUNCTION_6_11();
    outlined copy of SearchPropertyRequest.GroupInfo?(v52, v53, v54, v55, v7);
    v56 = OUTLINED_FUNCTION_6_11();
    outlined consume of SearchPropertyRequest.GroupInfo(v56, v57, v58, v59, v60);
LABEL_12:
    v61 = OUTLINED_FUNCTION_6_11();
    outlined consume of SearchPropertyRequest.GroupInfo?(v61, v62, v63, v64, v7);
    v65 = OUTLINED_FUNCTION_17_17();
    outlined consume of SearchPropertyRequest.GroupInfo?(v65, v66, v67, v68, v8);
    return 0;
  }

  v78 = v8 & 1;
  v9 = OUTLINED_FUNCTION_6_11();
  outlined copy of SearchPropertyRequest.GroupInfo?(v9, v10, v11, v12, v7);
  v13 = OUTLINED_FUNCTION_17_17();
  outlined copy of SearchPropertyRequest.GroupInfo?(v13, v14, v15, v16, v8);
  v17 = OUTLINED_FUNCTION_6_11();
  outlined copy of SearchPropertyRequest.GroupInfo?(v17, v18, v19, v20, v7);
  static SearchPropertyRequest.GroupInfo.== infix(_:_:)();
  v22 = v21;
  v23 = OUTLINED_FUNCTION_17_17();
  outlined consume of SearchPropertyRequest.GroupInfo(v23, v24, v25, v26, v78);
  v27 = OUTLINED_FUNCTION_6_11();
  outlined consume of SearchPropertyRequest.GroupInfo(v27, v28, v29, v30, v31);
  v32 = OUTLINED_FUNCTION_6_11();
  outlined consume of SearchPropertyRequest.GroupInfo?(v32, v33, v34, v35, v7);
  return (v22 & 1) != 0;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchPropertyRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchPropertyRequest(uint64_t a1)
{
  lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest);

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchPropertyRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchPropertyRequest(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t HydrationContext.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_16();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_4();
  v6 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_98_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_120_5(v8, v9, v10, v6);
  v11 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_34_11();
  DisplayRepresentation.init(title:subtitle:image:)();
  v15 = type metadata accessor for HydrationContext(0);
  v16 = *(v15 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMd, &_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v16) = EntityProperty<>.init(title:)();
  v17 = *(v15 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC0VSgGMR);
  OUTLINED_FUNCTION_53_9();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_1_38();
  lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(v18);
  OUTLINED_FUNCTION_54_5();
  result = EntityProperty<>.init(title:)();
  *(a1 + v17) = result;
  return result;
}

uint64_t static HydrationContext.typeDisplayRepresentation.modify(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static HydrationContext.typeDisplayRepresentation);
  OUTLINED_FUNCTION_147_2(v3, a1);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t key path setter for SearchPropertyRequest.hydrationContext : SearchPropertyRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  v14 = OUTLINED_FUNCTION_64_0();
  outlined init with copy of ResourceBundle?(v14, v15, a5, a6);
  return a7(v13);
}

uint64_t HydrationContext.app.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for HydrationContext(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*HydrationContext.app.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for HydrationContext(v3);
  OUTLINED_FUNCTION_17_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t HydrationContext.entity.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for HydrationContext(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*HydrationContext.entity.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for HydrationContext(v3);
  OUTLINED_FUNCTION_11_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void static HydrationContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v79 = v3;
  v4 = OUTLINED_FUNCTION_47_1();
  v77 = type metadata accessor for HydrationEntity(v4);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v73 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15HydrationEntityVSg_ADtMd, &_s10OmniSearch15HydrationEntityVSg_ADtMR);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  v11 = OUTLINED_FUNCTION_114(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  v74 = v12 - v13;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v14);
  v78 = &v72 - v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_2();
  v76 = v17;
  v18 = type metadata accessor for IntentApplication();
  OUTLINED_FUNCTION_14();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  v26 = OUTLINED_FUNCTION_114(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v27);
  v29 = &v72 - v28;
  type metadata accessor for HydrationContext(0);
  v75 = v1;
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v29, 1, v18))
  {
    outlined destroy of IntentApplication?(v29, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    (*(v20 + 16))(v24, v29, v18);
    v32 = outlined destroy of IntentApplication?(v29, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    v30 = MEMORY[0x25F898B70](v32);
    v31 = v33;
    v34 = OUTLINED_FUNCTION_116_0();
    v35(v34);
  }

  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v2, 1, v18))
  {
    outlined destroy of IntentApplication?(v2, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    if (v31)
    {
LABEL_6:

      goto LABEL_24;
    }
  }

  else
  {
    v36 = OUTLINED_FUNCTION_64_0();
    v37(v36);
    v38 = outlined destroy of IntentApplication?(v2, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    v39 = MEMORY[0x25F898B70](v38);
    v41 = v40;
    v42 = OUTLINED_FUNCTION_116_0();
    v43(v42);
    if (v31)
    {
      if (!v41)
      {
        goto LABEL_6;
      }

      if (v30 == v39 && v31 == v41)
      {
      }

      else
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v45 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else if (v41)
    {
      goto LABEL_6;
    }
  }

  v46 = v76;
  EntityProperty.wrappedValue.getter();
  v47 = v78;
  EntityProperty.wrappedValue.getter();
  v48 = *(v8 + 48);
  outlined init with copy of ResourceBundle?(v46, v0, &_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  outlined init with copy of ResourceBundle?(v47, v0 + v48, &_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  v49 = v77;
  if (__swift_getEnumTagSinglePayload(v0, 1, v77) == 1)
  {
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v50, v51, v52);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v53, v54, v55);
    if (__swift_getEnumTagSinglePayload(v0 + v48, 1, v49) == 1)
    {
      outlined destroy of IntentApplication?(v0, &_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
      goto LABEL_24;
    }

LABEL_23:
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch15HydrationEntityVSg_ADtMd, &_s10OmniSearch15HydrationEntityVSg_ADtMR);
    goto LABEL_24;
  }

  outlined init with copy of ResourceBundle?(v0, v74, &_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  if (__swift_getEnumTagSinglePayload(v0 + v48, 1, v49) == 1)
  {
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v56, v57, v58);
    OUTLINED_FUNCTION_47_11();
    outlined destroy of IntentApplication?(v59, v60, v61);
    OUTLINED_FUNCTION_46_12();
    outlined destroy of SearchPropertyRequest();
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_45_10();
  outlined init with take of SearchPropertyRequest(v0 + v48, v73);
  if (static DisplayRepresentation.== infix(_:_:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMR);
    lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();
    OUTLINED_FUNCTION_34_11();
    if (static EntityProperty<>.== infix(_:_:)())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMR);
      OUTLINED_FUNCTION_44_13();
      lazy protocol witness table accessor for type SearchAnswerEntity? and conformance <A> A?(v62);
      OUTLINED_FUNCTION_34_11();
      if (static EntityProperty<>.== infix(_:_:)())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
        OUTLINED_FUNCTION_51_8(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
        OUTLINED_FUNCTION_34_11();
        static EntityProperty<>.== infix(_:_:)();
      }
    }
  }

  outlined destroy of SearchPropertyRequest();
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v63, v64, v65);
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v66, v67, v68);
  outlined destroy of SearchPropertyRequest();
  OUTLINED_FUNCTION_54_8();
  outlined destroy of IntentApplication?(v69, v70, v71);
LABEL_24:
  OUTLINED_FUNCTION_148();
}

uint64_t HydrationContext.CodingKeys.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_89_7();
  v3._object = v2;
  v4 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HydrationContext.CodingKeys.init(rawValue:), v3);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HydrationContext.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = HydrationContext.CodingKeys.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HydrationContext.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25D86BFE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HydrationContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = HydrationContext.CodingKeys.init(rawValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HydrationContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HydrationContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void HydrationContext.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v31 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_3();
  v29 = v6;
  v7 = type metadata accessor for IntentApplication();
  OUTLINED_FUNCTION_14();
  v27 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_90_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch16HydrationContextV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch16HydrationContextV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMR);
  OUTLINED_FUNCTION_14();
  v30 = v13;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v17 = OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_218(v17, v18);
  lazy protocol witness table accessor for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for HydrationContext(0);
  v28 = v0;
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v2, 1, v7))
  {
    outlined destroy of IntentApplication?(v2, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  }

  else
  {
    v19 = v27;
    (*(v27 + 16))(v3, v2, v7);
    v20 = outlined destroy of IntentApplication?(v2, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    MEMORY[0x25F898B70](v20);
    (*(v19 + 8))(v3, v7);
  }

  OUTLINED_FUNCTION_100_4();
  v21 = v31;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v21)
  {
    OUTLINED_FUNCTION_113_7();
    v22(v16, v12);
  }

  else
  {

    v23 = v29;
    EntityProperty.wrappedValue.getter();
    type metadata accessor for HydrationEntity(0);
    OUTLINED_FUNCTION_1_38();
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(v24);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined destroy of IntentApplication?(v23, &_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
    OUTLINED_FUNCTION_113_7();
    v25(v16, v12);
  }

  OUTLINED_FUNCTION_61_2();
}

void HydrationContext.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60_1();
  v27 = v26;
  v68 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
  v30 = OUTLINED_FUNCTION_114(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_109();
  v67 = v31 - v32;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  v70 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
  v36 = OUTLINED_FUNCTION_114(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_109();
  v69 = v37 - v38;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  v71 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch16HydrationContextV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch16HydrationContextV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_233_1();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v43);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15_16();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v45);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_86_7();
  v47 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_36();
  v49 = type metadata accessor for HydrationContext(0);
  v50 = v49 - 8;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_98_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v47);
  type metadata accessor for DisplayRepresentation.Image();
  v54 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  DisplayRepresentation.init(title:subtitle:image:)();
  v58 = *(v50 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMd, &_s10AppIntents14EntityPropertyCyAA17IntentApplicationVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v25 + v58) = EntityProperty<>.init(title:)();
  v59 = *(v50 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC0VSgGMR);
  OUTLINED_FUNCTION_53_9();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_1_38();
  lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(v60);
  *(v25 + v59) = EntityProperty<>.init(title:)();
  v61 = OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_218(v61, v62);
  lazy protocol witness table accessor for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    outlined destroy of SearchPropertyRequest();
  }

  else
  {
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v63)
    {
      IntentApplication.init(_:)();
      v64 = type metadata accessor for IntentApplication();
      __swift_storeEnumTagSinglePayload(v71, 0, 1, v64);
      outlined init with copy of ResourceBundle?(v71, v69, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
      EntityProperty.wrappedValue.setter();
      outlined destroy of IntentApplication?(v71, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    }

    type metadata accessor for HydrationEntity(0);
    OUTLINED_FUNCTION_1_38();
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(v65);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with copy of ResourceBundle?(v70, v67, &_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v70, &_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
    OUTLINED_FUNCTION_113_7();
    v66(v24, v41);
    outlined init with take of SearchPropertyRequest(v25, v68);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  OUTLINED_FUNCTION_61_2();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance HydrationContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationContext and conformance HydrationContext);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance HydrationContext(uint64_t a1)
{
  lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationContext and conformance HydrationContext);

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance HydrationContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationContext and conformance HydrationContext);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance HydrationContext(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationContext and conformance HydrationContext);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t HydrationEntity.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_16();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_4();
  v6 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_120_5(v8, v9, v10, v6);
  v11 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_34_11();
  DisplayRepresentation.init(title:subtitle:image:)();
  v15 = type metadata accessor for HydrationEntity(0);
  v16 = v15[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();
  OUTLINED_FUNCTION_54_5();
  *(a1 + v16) = EntityProperty<>.init(title:)();
  v17 = v15[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
  OUTLINED_FUNCTION_54_5();
  *(a1 + v17) = EntityProperty<>.init(title:)();
  v18 = v15[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_85_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + v18) = EntityProperty<>.init(title:)();
  return EntityProperty.wrappedValue.setter();
}

uint64_t HydrationEntity.type.setter()
{
  type metadata accessor for HydrationEntity(0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.wrappedValue.setter();
}

void HydrationEntity.init(type:searchAnswerValue:stringValue:)()
{
  OUTLINED_FUNCTION_155();
  v27 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v9);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_233_1();
  v13 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v15 = *v6;
  memcpy(v29, v4, sizeof(v29));
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_120_5(v16, v17, v18, v13);
  v19 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  DisplayRepresentation.init(title:subtitle:image:)();
  v23 = type metadata accessor for HydrationEntity(0);
  v24 = v23[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMR);
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();
  *(v8 + v24) = EntityProperty<>.init(title:)();
  v25 = v23[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
  *(v8 + v25) = EntityProperty<>.init(title:)();
  v26 = v23[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_85_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v8 + v26) = EntityProperty<>.init(title:)();
  LOBYTE(v28[0]) = v15;
  EntityProperty.wrappedValue.setter();
  memcpy(v28, v29, sizeof(v28));
  EntityProperty.wrappedValue.setter();
  v28[0] = v2;
  v28[1] = v27;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

uint64_t HydrationEntity.searchAnswerValue.setter()
{
  v1 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for HydrationEntity(v1);
  OUTLINED_FUNCTION_11_9();
  memcpy(__dst, v0, sizeof(__dst));
  return EntityProperty.wrappedValue.setter();
}

uint64_t static HydrationContext.typeDisplayRepresentation.getter()
{
  OUTLINED_FUNCTION_117_6();
  if (!v1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v2, v0);
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_47_11();
  return v3();
}

uint64_t static HydrationContext.typeDisplayRepresentation.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v6, a3);
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_147_2(v7, v8);
  v9 = *(v6 - 8);
  v10 = OUTLINED_FUNCTION_107();
  v11(v10);
  swift_endAccess();
  return (*(v9 + 8))(a1, v6);
}

uint64_t static HydrationEntity.typeDisplayRepresentation.modify(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static HydrationEntity.typeDisplayRepresentation);
  OUTLINED_FUNCTION_147_2(v3, a1);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t key path getter for static HydrationContext.typeDisplayRepresentation : HydrationContext.Type(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  IdCardEntity.typeDisplayRepresentation.unsafeMutableAddressor(a4, a5, a6);
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v6 = OUTLINED_FUNCTION_94();
  return v7(v6);
}

uint64_t key path setter for static HydrationContext.typeDisplayRepresentation : HydrationContext.Type(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  IdCardEntity.typeDisplayRepresentation.unsafeMutableAddressor(a5, a6, a7);
  OUTLINED_FUNCTION_91_3();
  OUTLINED_FUNCTION_147_2(v7, v8);
  type metadata accessor for TypeDisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v9 = OUTLINED_FUNCTION_107();
  v10(v9);
  return swift_endAccess();
}

uint64_t HydrationContext.displayRepresentation.setter()
{
  OUTLINED_FUNCTION_42_2();
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_107();

  return v1(v0);
}

uint64_t HydrationEntity.type.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for HydrationEntity(v0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t key path getter for HydrationEntity.type : HydrationEntity@<X0>(_BYTE *a1@<X8>)
{
  result = HydrationEntity.type.getter();
  *a1 = v3;
  return result;
}

uint64_t (*HydrationEntity.type.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for HydrationEntity(v3);
  OUTLINED_FUNCTION_17_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t HydrationEntity.searchAnswerValue.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for HydrationEntity(v0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t key path setter for HydrationEntity.searchAnswerValue : HydrationEntity(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  outlined init with copy of ResourceBundle?(__dst, &v2, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
  return HydrationEntity.searchAnswerValue.setter();
}

uint64_t (*HydrationEntity.searchAnswerValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for HydrationEntity(v3);
  OUTLINED_FUNCTION_11_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t HydrationEntity.stringValue.getter()
{
  return HydrationEntity.stringValue.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v1(v0);
  OUTLINED_FUNCTION_10_9();
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t (*HydrationEntity.stringValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for HydrationEntity(v3);
  OUTLINED_FUNCTION_10_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HydrationEntity.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25D86C01C();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HydrationEntity.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25D86C064(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance HydrationEntity.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25D86C01C();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HydrationEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HydrationEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void HydrationEntity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_60_1();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch15HydrationEntityV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch15HydrationEntityV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_218(v26, v26[3]);
  v28 = lazy protocol witness table accessor for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys();
  OUTLINED_FUNCTION_125_4(&unk_286F7DEE8, v29, v28);
  type metadata accessor for HydrationEntity(0);
  EntityProperty.wrappedValue.getter();
  lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();
  OUTLINED_FUNCTION_67_9();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v24)
  {
    v30 = OUTLINED_FUNCTION_116_0();
    v31(v30);
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    memcpy(v35, v36, sizeof(v35));
    lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
    OUTLINED_FUNCTION_67_9();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v34, v35, sizeof(v34));
    outlined destroy of IntentApplication?(v34, &_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_67_9();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = OUTLINED_FUNCTION_116_0();
    v33(v32);
  }

  OUTLINED_FUNCTION_61_2();
}

void HydrationEntity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60_1();
  v54 = v25;
  v51 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch15HydrationEntityV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch15HydrationEntityV10CodingKeys33_B4C1512E77C36E3EEC92565C07EB592DLLOGMR);
  OUTLINED_FUNCTION_14();
  v52 = v28;
  v53 = v27;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_49_3();
  v55 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v31);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15_16();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v33);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4_24();
  v35 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_36();
  v37 = OUTLINED_FUNCTION_86_7();
  v38 = type metadata accessor for HydrationEntity(v37);
  v39 = (v38 - 8);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_233_1();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v35);
  type metadata accessor for DisplayRepresentation.Image();
  v43 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  DisplayRepresentation.init(title:subtitle:image:)();
  v47 = v39[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMR);
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();
  OUTLINED_FUNCTION_74_9();
  *(v24 + v47) = EntityProperty<>.init(title:)();
  v48 = v39[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
  OUTLINED_FUNCTION_74_9();
  *(v24 + v48) = EntityProperty<>.init(title:)();
  v49 = v39[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_85_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v24 + v49) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_218(v54, v54[3]);
  lazy protocol witness table accessor for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    OUTLINED_FUNCTION_46_12();
    outlined destroy of SearchPropertyRequest();
  }

  else
  {
    lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();
    OUTLINED_FUNCTION_121_5();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    EntityProperty.wrappedValue.setter();
    lazy protocol witness table accessor for type SearchAnswerEntity and conformance SearchAnswerEntity();
    OUTLINED_FUNCTION_121_5();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    memcpy(v56, v57, sizeof(v56));
    EntityProperty.wrappedValue.setter();
    LOBYTE(v56[0]) = 2;
    v56[0] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56[1] = v50;
    EntityProperty.wrappedValue.setter();
    (*(v52 + 8))(v55, v53);
    OUTLINED_FUNCTION_45_10();
    outlined init with take of SearchPropertyRequest(v24, v51);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  OUTLINED_FUNCTION_61_2();
}

uint64_t static HydrationEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static DisplayRepresentation.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch09HydrationC4TypeOGMR);
  v2 = OUTLINED_FUNCTION_47_1();
  type metadata accessor for HydrationEntity(v2);
  lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();
  OUTLINED_FUNCTION_64_0();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0f6AnswerC0VSgGMR);
  OUTLINED_FUNCTION_44_13();
  lazy protocol witness table accessor for type SearchAnswerEntity? and conformance <A> A?(v3);
  OUTLINED_FUNCTION_64_0();
  if ((static EntityProperty<>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_51_8(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
  return static EntityProperty<>.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance HydrationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationEntity and conformance HydrationEntity);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance HydrationEntity(uint64_t a1)
{
  lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationEntity and conformance HydrationEntity);

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance HydrationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationEntity and conformance HydrationEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance HydrationEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationEntity and conformance HydrationEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static HydrationEntityType.allCases.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t static HydrationEntityType.allCases.modify()
{
  v0 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_147_2(v0, v1);
  return OUTLINED_FUNCTION_66_2();
}

void static HydrationEntityType.caseDisplayRepresentations.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_23_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_16();
  type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch19HydrationEntityTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch19HydrationEntityTypeO_10AppIntents21DisplayRepresentationVtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch19HydrationEntityTypeO_10AppIntents21DisplayRepresentationVtMd, &_s10OmniSearch19HydrationEntityTypeO_10AppIntents21DisplayRepresentationVtMR);
  OUTLINED_FUNCTION_95_2();
  v7 = *(v6 + 72);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_88_3(v8, xmmword_25DBC9D00);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_18_14();
  v9 = type metadata accessor for DisplayRepresentation.Image();
  v10 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_50_4();
  *(v0 + v7) = 1;
  v13 = OUTLINED_FUNCTION_50_10(29779);
  OUTLINED_FUNCTION_127_7(v13);
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_148();
}

OmniSearch::HydrationEntityType_optional __swiftcall HydrationEntityType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_89_7();
  v3 = v2;
  v4._object = v1;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HydrationEntityType.init(rawValue:), v4);

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

  *v3 = v7;
  return result;
}

uint64_t HydrationEntityType.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E69727473;
  }

  else
  {
    return 0x6E41686372616573;
  }
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance HydrationEntityType@<X0>(uint64_t *a1@<X8>)
{
  result = HydrationEntityType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance HydrationEntityType@<X0>(uint64_t *a1@<X8>)
{
  result = static HydrationEntityType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance HydrationEntityType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance HydrationEntityType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t SearchPropertyRequest.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_113();
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_17();
  v0 = OUTLINED_FUNCTION_94();

  return v1(v0);
}

uint64_t key path setter for SearchPropertyResponse.name : SearchPropertyResponse(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchPropertyResponse.name.setter(v1, v2);
}

uint64_t SearchPropertyRequest.name.setter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*SearchPropertyResponse.name.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  OUTLINED_FUNCTION_17_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path getter for SearchPropertyResponse.type : SearchPropertyResponse@<X0>(_BYTE *a1@<X8>)
{
  result = SearchPropertyResponse.type.getter();
  *a1 = v3;
  return result;
}

uint64_t SearchPropertyRequest.type.setter(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*SearchPropertyResponse.type.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  OUTLINED_FUNCTION_11_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for HydrationEntity.stringValue : HydrationEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_34_11();
  return a5(v6);
}

uint64_t HydrationEntity.stringValue.setter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.wrappedValue.setter();
}

uint64_t (*SearchPropertyResponse.stringValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  OUTLINED_FUNCTION_10_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.dateValue.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchPropertyResponse(v0);
  return OUTLINED_FUNCTION_66_7(v1);
}

uint64_t SearchPropertyResponse.dateValue.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for SearchPropertyResponse(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*SearchPropertyResponse.dateValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.dateComponentsValue.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchPropertyResponse(v0);
  return OUTLINED_FUNCTION_66_7(v1);
}

uint64_t SearchPropertyResponse.dateComponentsValue.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for SearchPropertyResponse(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*SearchPropertyResponse.dateComponentsValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.durationValue.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchPropertyResponse(v0);
  return OUTLINED_FUNCTION_66_7(v1);
}

uint64_t SearchPropertyResponse.durationValue.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for SearchPropertyResponse(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*SearchPropertyResponse.durationValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.locationValue.getter()
{
  type metadata accessor for SearchPropertyResponse(0);
  EntityProperty.wrappedValue.getter();
  return v1;
}

void SearchPropertyResponse.locationValue.setter()
{
  v1 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchPropertyResponse(v1);
  v2 = v0;
  EntityProperty.wrappedValue.setter();
}

uint64_t (*SearchPropertyResponse.locationValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.personValue.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchPropertyResponse(v0);
  return OUTLINED_FUNCTION_66_7(v1);
}

uint64_t SearchPropertyResponse.personValue.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for SearchPropertyResponse(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*SearchPropertyResponse.personValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.numberValue.getter()
{
  OUTLINED_FUNCTION_79_8();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t (*SearchPropertyResponse.numberValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.mediaValue.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for SearchPropertyResponse(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*SearchPropertyResponse.mediaValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.navigationValue.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for SearchPropertyResponse(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*SearchPropertyResponse.navigationValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.urlValue.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchPropertyResponse(v0);
  return OUTLINED_FUNCTION_66_7(v1);
}

uint64_t SearchPropertyResponse.urlValue.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for SearchPropertyResponse(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*SearchPropertyResponse.urlValue.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyResponse.pommesContextFile.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for SearchPropertyResponse(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*SearchPropertyResponse.pommesContextFile.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyResponse(v3);
  *(v0 + 32) = OUTLINED_FUNCTION_63_7();
  return MemoryCreationQUResult.version.modify;
}

void SearchPropertyResponse.init()()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_16();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_59_4();
  v6 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_120_5(v8, v9, v10, v6);
  v11 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_34_11();
  DisplayRepresentation.init(title:subtitle:image:)();
  v15 = type metadata accessor for SearchPropertyResponse(0);
  v16 = v15[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_38_15();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v16) = EntityProperty<>.init(title:)();
  v17 = v15[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMR);
  OUTLINED_FUNCTION_114_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
  OUTLINED_FUNCTION_54_5();
  *(v1 + v17) = EntityProperty<>.init(title:)();
  v18 = v15[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_19_13();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v18) = EntityProperty<>.init(title:)();
  v19 = v15[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_96_6();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v19) = EntityProperty<>.init(title:)();
  v20 = v15[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v20) = EntityProperty<>.init(title:)();
  v21 = v15[10];
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v21) = EntityProperty<>.init(title:)();
  v22 = v15[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMd, &_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMR);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v22) = EntityProperty<>.init(title:)();
  v23 = v15[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  OUTLINED_FUNCTION_83_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v23) = EntityProperty<>.init(title:)();
  v24 = v15[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdSgGMd, &_s10AppIntents14EntityPropertyCySdSgGMR);
  OUTLINED_FUNCTION_82_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v24) = EntityProperty<>.init(title:)();
  v25 = v15[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_61_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v25) = EntityProperty<>.init(title:)();
  v26 = v15[15];
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v26) = EntityProperty<>.init(title:)();
  v27 = v15[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_97_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v27) = EntityProperty<>.init(title:)();
  v28 = v15[17];
  OUTLINED_FUNCTION_17_14();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v28) = EntityProperty<>.init(title:)();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

void SearchPropertyResponse.description.getter()
{
  OUTLINED_FUNCTION_155();
  v109 = type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v100 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_36();
  v99 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_49_3();
  v107 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v10 = OUTLINED_FUNCTION_114(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  v108 = v11 - v12;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v13);
  v106 = &v97 - v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_2();
  v105 = v16;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_109();
  v101 = v18 - v19;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v20);
  v22 = &v97 - v21;
  v110 = type metadata accessor for DateComponents();
  OUTLINED_FUNCTION_14();
  v104 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  v103 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  v28 = OUTLINED_FUNCTION_114(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_109();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v97 - v33;
  v35 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v98 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_208();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v38);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_59_4();
  v115 = 0;
  v116 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  MEMORY[0x25F89F6C0](0xD00000000000001DLL, 0x800000025DBF2500);
  type metadata accessor for SearchPropertyResponse(0);
  EntityProperty.wrappedValue.getter();
  MEMORY[0x25F89F6C0](v114, *(&v114 + 1));

  MEMORY[0x25F89F6C0](0x203A65707974202CLL, 0xE800000000000000);
  EntityProperty.wrappedValue.getter();
  LOBYTE(v111) = v114;
  _print_unlocked<A, B>(_:_:)();
  EntityProperty.wrappedValue.getter();
  switch(v113)
  {
    case 1:
      strcpy(&v114, ", dateValue: ");
      HIWORD(v114) = -4864;
      EntityProperty.wrappedValue.getter();
      if (__swift_getEnumTagSinglePayload(v0, 1, v35))
      {
        outlined destroy of IntentApplication?(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v92 = v98;
        (*(v98 + 16))(v1, v0, v35);
        outlined destroy of IntentApplication?(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        Date.description.getter();
        (*(v92 + 8))(v1, v35);
      }

      v93 = OUTLINED_FUNCTION_34_11();
      MEMORY[0x25F89F6C0](v93);
      goto LABEL_56;
    case 2:
      OUTLINED_FUNCTION_20_10();
      _StringGuts.grow(_:)(25);

      OUTLINED_FUNCTION_27_12();
      *&v114 = v51 + 6;
      *(&v114 + 1) = v50;
      EntityProperty.wrappedValue.getter();
      v52 = OUTLINED_FUNCTION_93_6();
      if (__swift_getEnumTagSinglePayload(v52, v53, v110))
      {
        v54 = 7104878;
        v55 = &_s10Foundation14DateComponentsVSgMd;
        v56 = &_s10Foundation14DateComponentsVSgMR;
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_84_6();
      OUTLINED_FUNCTION_86_4();
      v85();
      v86 = v34;
      goto LABEL_50;
    case 3:
      OUTLINED_FUNCTION_20_10();
      _StringGuts.grow(_:)(19);

      OUTLINED_FUNCTION_27_12();
      *&v114 = v58;
      *(&v114 + 1) = v57;
      EntityProperty.wrappedValue.getter();
      v59 = v110;
      if (__swift_getEnumTagSinglePayload(v31, 1, v110))
      {
        v54 = 7104878;
        v55 = &_s10Foundation14DateComponentsVSgMd;
        v56 = &_s10Foundation14DateComponentsVSgMR;
        v60 = v31;
        goto LABEL_42;
      }

      v87 = OUTLINED_FUNCTION_84_6();
      v88(v87, v31, v59);
      v86 = v31;
LABEL_50:
      v89 = outlined destroy of IntentApplication?(v86, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
      v90 = MEMORY[0x25F899030](v89);
      goto LABEL_54;
    case 4:
      OUTLINED_FUNCTION_20_10();
      _StringGuts.grow(_:)(17);

      OUTLINED_FUNCTION_37_10(0x6E6F73726570202CLL);
      EntityProperty.wrappedValue.getter();
      v42 = type metadata accessor for IntentPerson();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v42);
      outlined destroy of IntentApplication?(v22, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR);
      if (EnumTagSinglePayload == 1)
      {
        goto LABEL_32;
      }

      EntityProperty.wrappedValue.getter();
      goto LABEL_44;
    case 5:
      OUTLINED_FUNCTION_20_10();
      _StringGuts.grow(_:)(17);

      OUTLINED_FUNCTION_37_10(0x7265626D756E202CLL);
      EntityProperty.wrappedValue.getter();
      if (v112)
      {
LABEL_32:
        v40 = 7104878;
        v41 = 0xE300000000000000;
      }

      else
      {
        EntityProperty.wrappedValue.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
LABEL_44:
        v40 = String.init<A>(describing:)();
        v41 = v84;
      }

LABEL_45:
      MEMORY[0x25F89F6C0](v40, v41);
      goto LABEL_56;
    case 6:
      OUTLINED_FUNCTION_20_10();
      _StringGuts.grow(_:)(16);

      strcpy(&v114, ", mediaValue: ");
      HIBYTE(v114) = -18;
      v76 = v105;
      EntityProperty.wrappedValue.getter();
      type metadata accessor for IntentFile();
      v77 = OUTLINED_FUNCTION_93_6();
      v80 = __swift_getEnumTagSinglePayload(v77, v78, v79);
      outlined destroy of IntentApplication?(v76, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      if (v80 == 1)
      {
        v40 = 7104878;
      }

      else
      {
        v40 = 0x6946746E65746E49;
      }

      if (v80 == 1)
      {
        v41 = 0xE300000000000000;
      }

      else
      {
        v41 = 0xEA0000000000656CLL;
      }

      goto LABEL_45;
    case 7:
      OUTLINED_FUNCTION_20_10();
      _StringGuts.grow(_:)(44);

      OUTLINED_FUNCTION_27_12();
      *&v114 = v62 + 2;
      *(&v114 + 1) = v61;
      v63 = v106;
      EntityProperty.wrappedValue.getter();
      v64 = type metadata accessor for IntentFile();
      v65 = OUTLINED_FUNCTION_93_6();
      v67 = __swift_getEnumTagSinglePayload(v65, v66, v64);
      outlined destroy of IntentApplication?(v63, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      if (v67 == 1)
      {
        v68 = 7104878;
      }

      else
      {
        v68 = 0x6946746E65746E49;
      }

      if (v67 == 1)
      {
        v69 = 0xE300000000000000;
      }

      else
      {
        v69 = 0xEA0000000000656CLL;
      }

      MEMORY[0x25F89F6C0](v68, v69);

      MEMORY[0x25F89F6C0](0xD000000000000015, 0x800000025DBF2540);
      v70 = v108;
      EntityProperty.wrappedValue.getter();
      v71 = OUTLINED_FUNCTION_93_6();
      v73 = __swift_getEnumTagSinglePayload(v71, v72, v64);
      if (v73 == 1)
      {
        v74 = 7104878;
      }

      else
      {
        v74 = 0x6946746E65746E49;
      }

      if (v73 == 1)
      {
        v75 = 0xE300000000000000;
      }

      else
      {
        v75 = 0xEA0000000000656CLL;
      }

      outlined destroy of IntentApplication?(v70, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      MEMORY[0x25F89F6C0](v74, v75);
      goto LABEL_56;
    case 8:
      strcpy(&v114, ", urlValue: ");
      BYTE13(v114) = 0;
      HIWORD(v114) = -5120;
      v34 = v107;
      EntityProperty.wrappedValue.getter();
      v81 = OUTLINED_FUNCTION_93_6();
      if (__swift_getEnumTagSinglePayload(v81, v82, v109))
      {
        v54 = 7104878;
        v55 = &_s10Foundation3URLVSgMd;
        v56 = &_s10Foundation3URLVSgMR;
LABEL_41:
        v60 = v34;
LABEL_42:
        outlined destroy of IntentApplication?(v60, v55, v56);
        v83 = 0xE300000000000000;
      }

      else
      {
        OUTLINED_FUNCTION_84_6();
        OUTLINED_FUNCTION_86_4();
        v94();
        outlined destroy of IntentApplication?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v90 = URL.description.getter();
LABEL_54:
        v54 = v90;
        v83 = v91;
        v95 = OUTLINED_FUNCTION_100_4();
        v96(v95);
      }

      MEMORY[0x25F89F6C0](v54, v83);
LABEL_56:

      MEMORY[0x25F89F6C0](v114, *(&v114 + 1));

      MEMORY[0x25F89F6C0](41, 0xE100000000000000);
      OUTLINED_FUNCTION_148();
      return;
    case 9:
      OUTLINED_FUNCTION_20_10();
      _StringGuts.grow(_:)(32);

      OUTLINED_FUNCTION_27_12();
      *&v114 = v45 + 13;
      *(&v114 + 1) = v44;
      EntityProperty.wrappedValue.getter();
      v46 = v111;
      if (v111)
      {
        v47 = [v111 description];

        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v49;
      }

      else
      {
        v48 = 7104878;
        v41 = 0xE300000000000000;
      }

      v40 = v48;
      goto LABEL_45;
    default:
      OUTLINED_FUNCTION_20_10();
      _StringGuts.grow(_:)(17);

      OUTLINED_FUNCTION_37_10(0x676E69727473202CLL);
      EntityProperty.wrappedValue.getter();
      if (v112)
      {
        v40 = v111;
      }

      else
      {
        v40 = 7104878;
      }

      if (v112)
      {
        v41 = v112;
      }

      else
      {
        v41 = 0xE300000000000000;
      }

      goto LABEL_45;
  }
}

uint64_t SearchPropertyResponse.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E16PropertyResponseV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E16PropertyResponseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_218(a1, a1[3]);
  lazy protocol witness table accessor for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for SearchPropertyResponse(0);
  EntityProperty.wrappedValue.getter();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    v4 = OUTLINED_FUNCTION_1_28();
    v5(v4);
  }

  else
  {

    EntityProperty.wrappedValue.getter();
    lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    EntityProperty.wrappedValue.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    _sSSSgxSgSesSeRzlWlTm_0(&lazy protocol witness table cache variable for type String? and conformance <A> A?);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v7 = OUTLINED_FUNCTION_1_28();
    return v8(v7);
  }
}

OmniSearch::SearchPropertyResponse::CodingKeys_optional __swiftcall SearchPropertyResponse.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2 = stringValue._countAndFlagsBits == 1701667182 && stringValue._object == 0xE400000000000000;
  if (v2 || (countAndFlagsBits = stringValue._countAndFlagsBits, OUTLINED_FUNCTION_35_15(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = countAndFlagsBits == 1701869940 && object == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_35_15(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      return 1;
    }

    else if (countAndFlagsBits == (OUTLINED_FUNCTION_50_10(29811) & 0xFFFFFFFFFFFFLL | 0x6156000000000000) && object == v6)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_35_15();
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int SearchPropertyResponse.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1);
  return Hasher._finalize()();
}

uint64_t SearchPropertyResponse.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_74_11();
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x6156676E69727473;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchPropertyResponse.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  SearchPropertyResponse.CodingKeys.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

OmniSearch::SearchPropertyResponse::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance SearchPropertyResponse.CodingKeys@<W0>(uint64_t a1@<X0>, OmniSearch::SearchPropertyResponse::CodingKeys_optional *a2@<X8>)
{
  result.value = SearchPropertyResponse.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchPropertyResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchPropertyResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void SearchPropertyResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_1();
  v55 = v12;
  v50 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E16PropertyResponseV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E16PropertyResponseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_14();
  v52 = v15;
  v53 = v14;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_49_3();
  v54 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v18);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_16();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v20);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_59_4();
  v22 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_233_1();
  v24 = type metadata accessor for SearchPropertyResponse(0);
  v25 = (v24 - 8);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_36();
  v28 = v27 - v26;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v22);
  type metadata accessor for DisplayRepresentation.Image();
  v32 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  DisplayRepresentation.init(title:subtitle:image:)();
  v36 = v25[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_38_15();
  LocalizedStringResource.init(stringLiteral:)();
  v51 = v36;
  *(v28 + v36) = EntityProperty<>.init(title:)();
  v37 = v25[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMR);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_114_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
  *(v28 + v37) = EntityProperty<>.init(title:)();
  v38 = v25[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  OUTLINED_FUNCTION_19_13();
  LocalizedStringResource.init(stringLiteral:)();
  v49 = v38;
  *(v28 + v38) = EntityProperty<>.init(title:)();
  v39 = v25[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_96_6();
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v39) = EntityProperty<>.init(title:)();
  v40 = v25[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v40) = EntityProperty<>.init(title:)();
  v41 = v25[12];
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v41) = EntityProperty<>.init(title:)();
  v42 = v25[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMd, &_s10AppIntents14EntityPropertyCySo11CLPlacemarkCSgGMR);
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v42) = EntityProperty<>.init(title:)();
  v43 = v25[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMd, &_s10AppIntents14EntityPropertyCyAA12IntentPersonVSgGMR);
  OUTLINED_FUNCTION_83_8();
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v43) = EntityProperty<>.init(title:)();
  v44 = v25[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySdSgGMd, &_s10AppIntents14EntityPropertyCySdSgGMR);
  OUTLINED_FUNCTION_82_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v44) = EntityProperty<>.init(title:)();
  v45 = v25[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_61_9();
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v45) = EntityProperty<>.init(title:)();
  v46 = v25[17];
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v46) = EntityProperty<>.init(title:)();
  v47 = v25[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_97_5();
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v47) = EntityProperty<>.init(title:)();
  v48 = v25[19];
  OUTLINED_FUNCTION_17_14();
  LocalizedStringResource.init(stringLiteral:)();
  *(v28 + v48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_218(v55, v55[3]);
  lazy protocol witness table accessor for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v11)
  {
    lazy protocol witness table accessor for type EntityProperty<String> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_88_6();
    OUTLINED_FUNCTION_126_6(v10);

    *(v28 + v51) = a10;
    lazy protocol witness table accessor for type EntityProperty<SearchPropertyType> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_88_6();
    OUTLINED_FUNCTION_126_6(v10);

    *(v28 + v37) = a10;
    lazy protocol witness table accessor for type EntityProperty<String?> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_88_6();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v52 + 8))(v54, v53);

    *(v28 + v49) = a10;
    outlined init with copy of SearchPropertyRequest(v28, v50);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  outlined destroy of SearchPropertyRequest();
  OUTLINED_FUNCTION_61_2();
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchPropertyResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type SearchPropertyResponse and conformance SearchPropertyResponse);

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchPropertyResponse(uint64_t a1)
{
  lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type SearchPropertyResponse and conformance SearchPropertyResponse);

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchPropertyResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type SearchPropertyResponse and conformance SearchPropertyResponse);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchPropertyResponse(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type SearchPropertyResponse and conformance SearchPropertyResponse);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static SearchPropertyType.allCases.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
}

uint64_t static HydrationEntityType.allCases.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_91_3();
  swift_beginAccess();
  *a2 = v2;
}

uint64_t static SearchPropertyType.allCases.modify()
{
  v0 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_147_2(v0, v1);
  return OUTLINED_FUNCTION_66_2();
}

uint64_t key path getter for static HydrationEntityType.allCases : HydrationEntityType.Type@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  *a2 = *a1;
}

uint64_t key path setter for static HydrationEntityType.allCases : HydrationEntityType.Type(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  swift_beginAccess();
  *a5 = v6;
}

void static SearchPropertyType.caseDisplayRepresentations.getter()
{
  OUTLINED_FUNCTION_155();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_23_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_16();
  type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_136_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch0E12PropertyTypeO_10AppIntents21DisplayRepresentationVtGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E12PropertyTypeO_10AppIntents21DisplayRepresentationVtGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B12PropertyTypeO_10AppIntents21DisplayRepresentationVtMd, &_s10OmniSearch0B12PropertyTypeO_10AppIntents21DisplayRepresentationVtMR);
  OUTLINED_FUNCTION_95_2();
  v7 = *(v6 + 72);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_88_3(v15, xmmword_25DBD73D0);
  v8 = OUTLINED_FUNCTION_50_10(29779);
  OUTLINED_FUNCTION_127_7(v8);
  OUTLINED_FUNCTION_18_14();
  v9 = type metadata accessor for DisplayRepresentation.Image();
  v10 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  OUTLINED_FUNCTION_50_4();
  *(v0 + v7) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  *(v0 + 2 * v7) = 2;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_28_13();
  *(v0 + 3 * v7) = 3;
  OUTLINED_FUNCTION_17_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_28_13();
  *(v0 + 4 * v7) = 9;
  OUTLINED_FUNCTION_32_11();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_28_13();
  *(v0 + 5 * v7) = 4;
  v13 = OUTLINED_FUNCTION_83_8();
  OUTLINED_FUNCTION_127_7(v13);
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_28_13();
  *(v0 + 6 * v7) = 5;
  v14 = OUTLINED_FUNCTION_82_9();
  OUTLINED_FUNCTION_127_7(v14);
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  *(v0 + 7 * v7) = 6;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_28_13();
  *(v0 + 8 * v7) = 7;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_28_13();
  *(v0 + 9 * v7) = 8;
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_50_4();
  type metadata accessor for DisplayRepresentation();
  lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
  Dictionary.init(dictionaryLiteral:)();
  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchPropertyType@<X0>(uint64_t *a1@<X8>)
{
  result = SearchPropertyType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance SearchPropertyType@<X0>(uint64_t *a1@<X8>)
{
  result = static SearchPropertyType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchPropertyType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchPropertyType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();

  return MEMORY[0x28210C300](a1, v2);
}

Swift::String __swiftcall formatSearchPropertyRequest(searchPropertyRequests:)(Swift::OpaquePointer searchPropertyRequests)
{
  v1 = *(searchPropertyRequests._rawValue + 2);
  if (v1)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    type metadata accessor for SearchPropertyRequest(0);
    OUTLINED_FUNCTION_14();
    v4 = searchPropertyRequests._rawValue + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v5 + 72);
    do
    {
      EntityProperty.wrappedValue.getter();
      MEMORY[0x25F89F6C0](58, 0xE100000000000000);
      EntityProperty.wrappedValue.getter();
      v7 = 0xE600000000000000;
      v8 = 0x676E69727473;
      switch(v18)
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1702125924;
          break;
        case 2:
          v8 = OUTLINED_FUNCTION_55_7();
          v7 = 0xEE0073746E656E6FLL;
          break;
        case 3:
          v7 = 0xE800000000000000;
          v9 = 1634891108;
          goto LABEL_9;
        case 4:
          v8 = OUTLINED_FUNCTION_106_5();
          break;
        case 5:
          v8 = OUTLINED_FUNCTION_105_8();
          break;
        case 6:
          v7 = 0xE500000000000000;
          v8 = OUTLINED_FUNCTION_104_6();
          break;
        case 7:
          v7 = 0xEA00000000006E6FLL;
          v8 = OUTLINED_FUNCTION_54_10();
          break;
        case 8:
          v7 = 0xE300000000000000;
          v8 = 7107189;
          break;
        case 9:
          v7 = 0xE800000000000000;
          v9 = 1633906540;
LABEL_9:
          v8 = v9 | 0x6E6F697400000000;
          break;
        default:
          break;
      }

      MEMORY[0x25F89F6C0](v8, v7);

      v11 = *(v21 + 16);
      v10 = *(v21 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v21 + 16) = v11 + 1;
      v12 = v21 + 16 * v11;
      *(v12 + 32) = v19;
      *(v12 + 40) = v20;
      v4 += v6;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  OUTLINED_FUNCTION_47_11();
  lazy protocol witness table accessor for type EmptyResolverSpecification<SearchAnswerEntity> and conformance EmptyResolverSpecification<A>(v13);
  BidirectionalCollection<>.joined(separator:)();

  v14 = OUTLINED_FUNCTION_34_11();
  MEMORY[0x25F89F6C0](v14);

  MEMORY[0x25F89F6C0](93, 0xE100000000000000);
  v15 = 91;
  v16 = 0xE100000000000000;
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyRequest.CodingKeys and conformance SearchPropertyRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t outlined init with copy of SearchPropertyRequest(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for SearchPropertyRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchPropertyRequest()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v2(v1);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t outlined init with take of SearchPropertyRequest(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_1();
  v4(v3);
  OUTLINED_FUNCTION_17();
  v5 = OUTLINED_FUNCTION_94();
  v6(v5);
  return a2;
}

{
  v4 = type metadata accessor for SearchPropertyRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType()
{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType;
  if (!lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntityType and conformance HydrationEntityType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationContext.CodingKeys and conformance HydrationContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntity.CodingKeys and conformance HydrationEntity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyResponse.CodingKeys and conformance SearchPropertyResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<SearchPropertyType> and conformance <> EntityProperty<A>()
{
  result = lazy protocol witness table cache variable for type EntityProperty<SearchPropertyType> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<SearchPropertyType> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMR);
    lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
    lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<SearchPropertyType> and conformance <> EntityProperty<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchPropertyRequest.GroupInfo and conformance SearchPropertyRequest.GroupInfo()
{
  result = lazy protocol witness table cache variable for type SearchPropertyRequest.GroupInfo and conformance SearchPropertyRequest.GroupInfo;
  if (!lazy protocol witness table cache variable for type SearchPropertyRequest.GroupInfo and conformance SearchPropertyRequest.GroupInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPropertyRequest.GroupInfo and conformance SearchPropertyRequest.GroupInfo);
  }

  return result;
}

void type metadata completion function for SearchPropertyRequest(uint64_t a1)
{
  type metadata accessor for DisplayRepresentation();
  if (v1 <= 0x3F)
  {
    _s10AppIntents14EntityPropertyCySSGMaTm_0(319, &lazy cache variable for type metadata for EntityProperty<String>, lazy protocol witness table accessor for type String and conformance String, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      _s10AppIntents14EntityPropertyCySSGMaTm_0(319, &lazy cache variable for type metadata for EntityProperty<SearchPropertyType>, lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType, &type metadata for SearchPropertyType);
      if (v3 <= 0x3F)
      {
        type metadata accessor for EntityProperty<HydrationContext?>(319, &lazy cache variable for type metadata for EntityProperty<HydrationContext?>, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR, lazy protocol witness table accessor for type HydrationContext? and conformance <A> A?);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SearchPropertyRequest.GroupInfo?();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for SearchPropertyRequest.GroupInfo?()
{
  if (!lazy cache variable for type metadata for SearchPropertyRequest.GroupInfo?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SearchPropertyRequest.GroupInfo?);
    }
  }
}

uint64_t getEnumTagSinglePayload for SearchPropertyRequest.GroupInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchPropertyRequest.GroupInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t destructiveInjectEnumTag for SearchPropertyRequest.GroupInfo(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 32) = a2;
  return result;
}

void type metadata completion function for HydrationContext(uint64_t a1)
{
  type metadata accessor for DisplayRepresentation();
  if (v1 <= 0x3F)
  {
    type metadata accessor for EntityProperty<HydrationContext?>(319, &lazy cache variable for type metadata for EntityProperty<IntentApplication?>, &_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR, lazy protocol witness table accessor for type IntentApplication? and conformance <A> A?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EntityProperty<HydrationContext?>(319, &lazy cache variable for type metadata for EntityProperty<HydrationEntity?>, &_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR, lazy protocol witness table accessor for type HydrationEntity? and conformance <A> A?);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for EntityProperty<HydrationContext?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    OUTLINED_FUNCTION_100_4();
    v7 = type metadata accessor for EntityProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IntentApplication? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type IntentApplication? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type IntentApplication? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents17IntentApplicationVSgMd, &_s10AppIntents17IntentApplicationVSgMR);
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type IntentApplication and conformance IntentApplication);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentApplication? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HydrationEntity? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type HydrationEntity? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HydrationEntity? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch15HydrationEntityVSgMd, &_s10OmniSearch15HydrationEntityVSgMR);
    lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(&lazy protocol witness table cache variable for type HydrationEntity and conformance HydrationEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HydrationEntity? and conformance <A> A?);
  }

  return result;
}

void type metadata completion function for HydrationEntity(uint64_t a1)
{
  type metadata accessor for DisplayRepresentation();
  if (v1 <= 0x3F)
  {
    _s10AppIntents14EntityPropertyCySSGMaTm_0(319, &lazy cache variable for type metadata for EntityProperty<HydrationEntityType>, lazy protocol witness table accessor for type HydrationEntityType and conformance HydrationEntityType, &type metadata for HydrationEntityType);
    if (v2 <= 0x3F)
    {
      type metadata accessor for EntityProperty<SearchAnswerEntity?>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for EntityProperty<String?>(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void _s10AppIntents14EntityPropertyCySSGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for EntityProperty();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SearchAnswerEntity? and conformance <A> A?(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10OmniSearch0B12AnswerEntityVSgMd, &_s10OmniSearch0B12AnswerEntityVSgMR);
    v4();
    OUTLINED_FUNCTION_100_4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_42_2();
  v6 = type metadata accessor for DisplayRepresentation();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_47_1();
  result = type metadata accessor for DisplayRepresentation();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for SearchPropertyResponse(uint64_t a1)
{
  v1 = type metadata accessor for DisplayRepresentation();
  if (v2 <= 0x3F)
  {
    _s10AppIntents14EntityPropertyCySSGMaTm_0(319, &lazy cache variable for type metadata for EntityProperty<String>, lazy protocol witness table accessor for type String and conformance String, MEMORY[0x277D837D0]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      _s10AppIntents14EntityPropertyCySSGMaTm_0(319, &lazy cache variable for type metadata for EntityProperty<SearchPropertyType>, lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType, &type metadata for SearchPropertyType);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        type metadata accessor for EntityProperty<String?>(319);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          type metadata accessor for EntityProperty<HydrationContext?>(319, &lazy cache variable for type metadata for EntityProperty<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR, lazy protocol witness table accessor for type Date? and conformance <A> A?);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            type metadata accessor for EntityProperty<HydrationContext?>(319, &lazy cache variable for type metadata for EntityProperty<DateComponents?>, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR, lazy protocol witness table accessor for type DateComponents? and conformance <A> A?);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              type metadata accessor for EntityProperty<HydrationContext?>(319, &lazy cache variable for type metadata for EntityProperty<CLPlacemark?>, &_sSo11CLPlacemarkCSgMd, &_sSo11CLPlacemarkCSgMR, lazy protocol witness table accessor for type CLPlacemark? and conformance <A> A?);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                type metadata accessor for EntityProperty<HydrationContext?>(319, &lazy cache variable for type metadata for EntityProperty<IntentPerson?>, &_s10AppIntents12IntentPersonVSgMd, &_s10AppIntents12IntentPersonVSgMR, lazy protocol witness table accessor for type IntentPerson? and conformance <A> A?);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  type metadata accessor for EntityProperty<Double?>(319);
                  v1 = v17;
                  if (v18 <= 0x3F)
                  {
                    type metadata accessor for EntityProperty<HydrationContext?>(319, &lazy cache variable for type metadata for EntityProperty<IntentFile?>, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, lazy protocol witness table accessor for type IntentFile? and conformance <A> A?);
                    v1 = v19;
                    if (v20 <= 0x3F)
                    {
                      type metadata accessor for EntityProperty<HydrationContext?>(319, &lazy cache variable for type metadata for EntityProperty<URL?>, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR, lazy protocol witness table accessor for type URL? and conformance <A> A?);
                      if (v22 > 0x3F)
                      {
                        return v21;
                      }

                      else
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                        return 0;
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

  return v1;
}

unint64_t type metadata accessor for CLPlacemark()
{
  result = lazy cache variable for type metadata for CLPlacemark;
  if (!lazy cache variable for type metadata for CLPlacemark)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLPlacemark);
  }

  return result;
}

void type metadata accessor for EntityProperty<Double?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for EntityProperty<Double?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSdSgMd, &_sSdSgMR);
    lazy protocol witness table accessor for type Double? and conformance <A> A?(&lazy protocol witness table cache variable for type Double? and conformance <A> A?);
    v1 = type metadata accessor for EntityProperty();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for EntityProperty<Double?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Double and conformance Double()
{
  result = lazy protocol witness table cache variable for type Double and conformance Double;
  if (!lazy protocol witness table cache variable for type Double and conformance Double)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Double and conformance Double);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchPropertyType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HydrationEntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_112_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchPropertyResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_112_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_13()
{

  return outlined init with copy of ResourceBundle?(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_18_14()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_28_13()
{

  return DisplayRepresentation.init(title:subtitle:image:)();
}

unint64_t OUTLINED_FUNCTION_51_8(uint64_t a1)
{

  return _sSSSgxSgSesSeRzlWlTm_0(a1);
}

uint64_t OUTLINED_FUNCTION_63_7()
{

  return EntityProperty.wrappedValue.modify();
}

uint64_t OUTLINED_FUNCTION_66_7(uint64_t a1)
{

  return EntityProperty.wrappedValue.getter();
}

double OUTLINED_FUNCTION_95_6@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = -1;
  return result;
}

void OUTLINED_FUNCTION_107_4()
{

  JUMPOUT(0x25F89F6C0);
}

void *OUTLINED_FUNCTION_110_6(void *a1)
{

  return memcpy(a1, &STACK[0x228], 0x88uLL);
}

uint64_t OUTLINED_FUNCTION_112_7@<X0>(int a1@<W8>)
{
  if (a1 == 10)
  {
    LOBYTE(a1) = 0;
  }

  *(v1 - 96) = a1;
  return v1 - 96;
}

uint64_t OUTLINED_FUNCTION_120_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return type metadata accessor for DisplayRepresentation.Image();
}

uint64_t OUTLINED_FUNCTION_125_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_126_6(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_127_7(uint64_t a1)
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t specialized Sequence.forEach(_:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  result = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = result + 40;
    a1();
    result = v7;
  }

  while (!v3);
  return result;
}

uint64_t one-time initialization function for authenticationPolicy()
{
  v0 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_allocate_value_buffer(v0, static SearchTool.authenticationPolicy);
  v1 = __swift_project_value_buffer(v0, static SearchTool.authenticationPolicy);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static SearchTool.assistantOnly.getter()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  return static SearchTool.assistantOnly;
}

uint64_t static SearchTool.assistantOnly.setter(char a1)
{
  result = swift_beginAccess();
  static SearchTool.assistantOnly = a1;
  return result;
}

uint64_t key path getter for static SearchTool.assistantOnly : SearchTool.Type@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SearchTool.assistantOnly;
  return result;
}

uint64_t key path setter for static SearchTool.assistantOnly : SearchTool.Type(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SearchTool.assistantOnly = v1;
  return result;
}

uint64_t static SearchTool.authenticationPolicy.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  __swift_project_value_buffer(v8, a3);
  OUTLINED_FUNCTION_51();
  v10 = *(v9 + 16);

  return v10(a5);
}

uint64_t SearchTool.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_40(&one-time initialization token for description);
  }

  v0 = type metadata accessor for IntentDescription();

  return __swift_project_value_buffer(v0, static SearchTool.description);
}

uint64_t static SearchTool.description.getter()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_40(&one-time initialization token for description);
  }

  v0 = type metadata accessor for IntentDescription();
  __swift_project_value_buffer(v0, static SearchTool.description);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_51();
  v1 = OUTLINED_FUNCTION_32_0();
  return v2(v1);
}

uint64_t static SearchTool.description.setter(uint64_t a1)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_40(&one-time initialization token for description);
  }

  v2 = type metadata accessor for IntentDescription();
  v3 = __swift_project_value_buffer(v2, static SearchTool.description);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_94();
  return v5(v4);
}

uint64_t (*static SearchTool.description.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_40(&one-time initialization token for description);
  }

  v1 = type metadata accessor for IntentDescription();
  __swift_project_value_buffer(v1, static SearchTool.description);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchTool.description : SearchTool.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchTool.description.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for IntentDescription();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchTool.description : SearchTool.Type(uint64_t a1)
{
  v2 = SearchTool.description.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for IntentDescription();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t key path setter for SearchTool.rawQuery : SearchTool(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  memcpy(v6, a2, sizeof(v6));

  outlined init with copy of SearchTool(v6, __dst);
  SearchTool.rawQuery.setter(v3, v4);
  memcpy(__dst, a2, sizeof(__dst));
  return outlined destroy of SearchTool(__dst);
}

uint64_t (*SearchTool.rawQuery.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchTool.rewrittenQuery.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchTool.rewrittenQuery : SearchTool(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  memcpy(v17, a2, sizeof(v17));

  outlined init with copy of SearchTool(v17, v18);
  v8 = a5(v6, v7);
  OUTLINED_FUNCTION_32_17(v8, v9, v10, v11, v12, v13, v14, v15, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], v17[11], v17[12]);
  return outlined destroy of SearchTool(v18);
}

uint64_t (*SearchTool.simplifiedQuery.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchTool.structuredQuery.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_50_7();
  IntentParameter.wrappedValue.setter();
  v2 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v2, v3, &_s10OmniSearch21StructuredQueryEntityVSgMR);
}

uint64_t (*SearchTool.structuredQuery.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchTool.typeIdentifiers.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchTool.context : SearchTool(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v7, a2, sizeof(v7));
  outlined init with copy of SpotlightRankingItem?(__dst, v5, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  outlined init with copy of SearchTool(v7, v5);
  SearchTool.context.setter(__src);
  memcpy(v5, a2, 0x68uLL);
  return outlined destroy of SearchTool(v5);
}

uint64_t (*SearchTool.context.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchTool.matchedEntities.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchTool.isFirstToolInvocation.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchTool.isOnScreenReference.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchTool.isFirstToolInvocation : SearchTool(unsigned __int8 *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  memcpy(v16, a2, sizeof(v16));
  outlined init with copy of SearchTool(v16, v17);
  v7 = a5(v6);
  OUTLINED_FUNCTION_32_17(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12]);
  return outlined destroy of SearchTool(v17);
}

uint64_t (*SearchTool.isSingleStepSearch.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

void *key path getter for SearchTool.invocationClient : SearchTool@<X0>(_BYTE *a1@<X8>)
{
  result = SearchTool.invocationClient.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for SearchTool.invocationClient : SearchTool(char *a1, const void *a2)
{
  v3 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v5 = v3;
  outlined init with copy of SearchTool(__dst, v7);
  SearchTool.invocationClient.setter(&v5);
  memcpy(v7, a2, sizeof(v7));
  return outlined destroy of SearchTool(v7);
}

uint64_t (*SearchTool.invocationClient.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchTool.typeIdentifiers : SearchTool(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  memcpy(v16, a2, sizeof(v16));

  outlined init with copy of SearchTool(v16, v17);
  v7 = a5(v6);
  OUTLINED_FUNCTION_32_17(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12]);
  return outlined destroy of SearchTool(v17);
}

uint64_t (*SearchTool.requestedProperties.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchTool.structuredQuery : SearchTool(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(_BYTE *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v12);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v15 = &__dst[-v14];
  outlined init with copy of SpotlightRankingItem?(a1, &__dst[-v14], a5, a6);
  memcpy(__dst, a2, sizeof(__dst));
  outlined init with copy of SearchTool(__dst, v18);
  a7(v15);
  memcpy(v18, a2, sizeof(v18));
  return outlined destroy of SearchTool(v18);
}

uint64_t SearchTool.disambiguatedEntity.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_50_7();
  IntentParameter.wrappedValue.setter();
  v2 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v2, v3, &_s10OmniSearch0B6EntityVSgMR);
}

uint64_t (*SearchTool.disambiguatedEntity.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchTool.init()@<X0>(uint64_t *a1@<X8>)
{
  v211 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  v203 = &v201 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd, &_sSb10AppIntentsE17IntentDisplayNameVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v207 = &v201 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v205 = &v201 - v9;
  v10 = type metadata accessor for InputConnectionBehavior();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  v15 = OUTLINED_FUNCTION_114(v14);
  MEMORY[0x28223BE20](v15);
  v208 = &v201 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v201 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd, &_sSS10AppIntentsE18IntentInputOptionsVSgMR);
  OUTLINED_FUNCTION_114(v20);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v201 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v24);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v201 - v26;
  v28 = type metadata accessor for LocalizedStringResource();
  v213 = v28;
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v29);
  v31 = &v201 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSGMd, &_s10AppIntents15IntentParameterCySSGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v32 = OUTLINED_FUNCTION_1_39();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
  v206 = type metadata accessor for String.IntentInputOptions();
  __src[0] = 0;
  __src[1] = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v217 = type metadata accessor for IntentDialog();
  v39 = v19;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v215 = *MEMORY[0x277CBA308];
  v216 = *(v11 + 104);
  v212 = v13;
  v214 = v10;
  v216(v13);
  v209 = v31;
  v210 = v11 + 104;
  v44 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v45 = v211;
  *v211 = v44;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSSgGMd, &_s10AppIntents15IntentParameterCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v46 = OUTLINED_FUNCTION_1_39();
  v47 = v213;
  __swift_storeEnumTagSinglePayload(v46, v48, v49, v213);
  __src[0] = 0;
  __src[1] = 0;
  v201 = v23;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v206);
  v53 = OUTLINED_FUNCTION_4_25();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v217);
  v56 = v212;
  v57 = v10;
  v58 = v216;
  (v216)(v212, v215, v57);
  OUTLINED_FUNCTION_24_14();
  v45[1] = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v59 = OUTLINED_FUNCTION_1_39();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v47);
  __src[0] = 0;
  __src[1] = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v206);
  v65 = OUTLINED_FUNCTION_4_25();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v217);
  v68 = v56;
  v69 = v214;
  (v58)(v68, v215, v214);
  v45[2] = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch21StructuredQueryEntityVSgGMd, &_s10AppIntents15IntentParameterCy10OmniSearch21StructuredQueryEntityVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v70 = OUTLINED_FUNCTION_1_39();
  v71 = v213;
  __swift_storeEnumTagSinglePayload(v70, v72, v73, v213);
  type metadata accessor for StructuredQueryEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  v78 = OUTLINED_FUNCTION_4_25();
  v79 = v217;
  __swift_storeEnumTagSinglePayload(v78, v80, v81, v217);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v79);
  (v216)(v212, v215, v69);
  lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(&lazy protocol witness table cache variable for type StructuredQueryEntity and conformance StructuredQueryEntity, type metadata accessor for StructuredQueryEntity, &protocol conformance descriptor for StructuredQueryEntity);
  OUTLINED_FUNCTION_24_14();
  v45[3] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay10OmniSearch0F20EntityTypeIdentifierVGSgGMd, &_s10AppIntents15IntentParameterCySay10OmniSearch0F20EntityTypeIdentifierVGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v85 = OUTLINED_FUNCTION_1_39();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v71);
  __src[0] = MEMORY[0x277D84F90];
  v88 = OUTLINED_FUNCTION_4_25();
  v89 = v217;
  __swift_storeEnumTagSinglePayload(v88, v90, v91, v217);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v89);
  v95 = v215;
  v96 = v216;
  (v216)(v212, v215, v214);
  lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier();
  v45[4] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch0F7ContextVSgGMd, &_s10AppIntents15IntentParameterCy10OmniSearch0F7ContextVSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v97 = OUTLINED_FUNCTION_1_39();
  v98 = v213;
  __swift_storeEnumTagSinglePayload(v97, v99, v100, v213);
  _s10OmniSearch0B7ContextVSgWOi0_(__src);
  memcpy(v218, __src, sizeof(v218));
  v101 = OUTLINED_FUNCTION_4_25();
  v102 = v217;
  __swift_storeEnumTagSinglePayload(v101, v103, v104, v217);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v102);
  v108 = v95;
  v109 = v214;
  v96(v212, v108, v214);
  lazy protocol witness table accessor for type SearchContext and conformance SearchContext();
  OUTLINED_FUNCTION_158();
  v110 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v111 = v211;
  v211[5] = v110;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay10OmniSearch11EntityMatchVGSgGMd, &_s10AppIntents15IntentParameterCySay10OmniSearch11EntityMatchVGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_43_10(v112, v113);
  v114 = OUTLINED_FUNCTION_1_39();
  __swift_storeEnumTagSinglePayload(v114, v115, v116, v98);
  v218[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_92();
  v117 = v217;
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v217);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v117);
  v124 = v215;
  (v216)(v212, v215, v109);
  lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch();
  OUTLINED_FUNCTION_24_14();
  v111[6] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd, &_s10AppIntents15IntentParameterCySbSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_72_5();
  LocalizedStringResource.init(stringLiteral:)();
  v125 = OUTLINED_FUNCTION_1_39();
  v126 = v213;
  __swift_storeEnumTagSinglePayload(v125, v127, v128, v213);
  LOBYTE(v218[0]) = 0;
  v206 = type metadata accessor for Bool.IntentDisplayName();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
  v204 = v39;
  OUTLINED_FUNCTION_92();
  v133 = v217;
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v217);
  v137 = v212;
  v138 = v124;
  v139 = v214;
  (v216)(v212, v138, v214);
  OUTLINED_FUNCTION_158();
  v140 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  v211[7] = v140;
  OUTLINED_FUNCTION_43_10(v140, 0x800000025DBEE1B0);
  OUTLINED_FUNCTION_6_12();
  LocalizedStringResource.init(stringLiteral:)();
  v141 = OUTLINED_FUNCTION_1_39();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v126);
  LOBYTE(v218[0]) = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v206);
  v147 = OUTLINED_FUNCTION_4_25();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v133);
  v150 = v137;
  v151 = v137;
  v152 = v215;
  (v216)(v151, v215, v139);
  v153 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  v154 = v211;
  v211[8] = v153;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v213);
  LOBYTE(v218[0]) = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v155, v156, v157, v158);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v217);
  (v216)(v150, v152, v214);
  v154[9] = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch0F14ToolClientTypeOSgGMd, &_s10AppIntents15IntentParameterCy10OmniSearch0F14ToolClientTypeOSgGMR);
  OUTLINED_FUNCTION_6_12();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v162 = v213;
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v213);
  LOBYTE(v218[0]) = 1;
  OUTLINED_FUNCTION_92();
  v163 = v217;
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v217);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v167, v168, v169, v163);
  v170 = v215;
  (v216)(v150, v215, v214);
  lazy protocol witness table accessor for type SearchToolClientType and conformance SearchToolClientType();
  v171 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v172 = v211;
  v211[10] = v171;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay10OmniSearch0F15PropertyRequestVGSgGMd, &_s10AppIntents15IntentParameterCySay10OmniSearch0F15PropertyRequestVGSgGMR);
  OUTLINED_FUNCTION_43_10(v207, 0x800000025DBEE1F0);
  LocalizedStringResource.init(stringLiteral:)();
  v173 = OUTLINED_FUNCTION_1_39();
  __swift_storeEnumTagSinglePayload(v173, v174, v175, v162);
  v218[0] = 0;
  v176 = OUTLINED_FUNCTION_4_25();
  v177 = v217;
  __swift_storeEnumTagSinglePayload(v176, v178, v179, v217);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v177);
  v183 = v212;
  v184 = v170;
  v185 = v216;
  (v216)(v212, v184, v214);
  lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(&lazy protocol witness table cache variable for type SearchPropertyRequest and conformance SearchPropertyRequest, type metadata accessor for SearchPropertyRequest, &protocol conformance descriptor for SearchPropertyRequest);
  v172[11] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy10OmniSearch0F6EntityVSgGMd, &_s10AppIntents15IntentParameterCy10OmniSearch0F6EntityVSgGMR);
  OUTLINED_FUNCTION_43_10(v186, 0x800000025DBF28C0);
  LocalizedStringResource.init(stringLiteral:)();
  v187 = OUTLINED_FUNCTION_1_39();
  __swift_storeEnumTagSinglePayload(v187, v188, v189, v213);
  type metadata accessor for SearchEntity(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v190, v191, v192, v193);
  v194 = OUTLINED_FUNCTION_4_25();
  __swift_storeEnumTagSinglePayload(v194, v195, v196, v177);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v197, v198, v199, v177);
  (v185)(v183, v215, v214);
  lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(&lazy protocol witness table cache variable for type SearchEntity and conformance SearchEntity, type metadata accessor for SearchEntity, &protocol conformance descriptor for SearchEntity);
  result = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v211[12] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier()
{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier;
  if (!lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchContext and conformance SearchContext()
{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchContext and conformance SearchContext;
  if (!lazy protocol witness table cache variable for type SearchContext and conformance SearchContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchContext and conformance SearchContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityMatch and conformance EntityMatch()
{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch;
  if (!lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityMatch and conformance EntityMatch);
  }

  return result;
}

uint64_t SearchTool.perform()(uint64_t a1)
{
  v2[754] = a1;
  v3 = type metadata accessor for IntentViewOptions();
  OUTLINED_FUNCTION_114(v3);
  v2[755] = OUTLINED_FUNCTION_199();
  v4 = type metadata accessor for DialogData(0);
  OUTLINED_FUNCTION_114(v4);
  v2[756] = OUTLINED_FUNCTION_31_17();
  v2[757] = swift_task_alloc();
  v5 = type metadata accessor for IntentDialog();
  v2[758] = v5;
  OUTLINED_FUNCTION_21(v5);
  v2[759] = v6;
  v2[760] = OUTLINED_FUNCTION_31_17();
  v2[761] = swift_task_alloc();
  v7 = type metadata accessor for SnippetPluginContainer();
  v2[762] = v7;
  OUTLINED_FUNCTION_21(v7);
  v2[763] = v8;
  v2[764] = OUTLINED_FUNCTION_31_17();
  v2[765] = swift_task_alloc();
  v2[766] = swift_task_alloc();
  v9 = type metadata accessor for SearchToolIntentResponse(0);
  v2[767] = v9;
  OUTLINED_FUNCTION_114(v9);
  v2[768] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for SearchToolIntentRequest(0);
  v2[769] = v10;
  OUTLINED_FUNCTION_114(v10);
  v2[770] = OUTLINED_FUNCTION_199();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0VSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0VSgMR);
  OUTLINED_FUNCTION_114(v11);
  v2[771] = OUTLINED_FUNCTION_31_17();
  v2[772] = swift_task_alloc();
  v2[773] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v12);
  v2[774] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for AssistantSystemContext(0);
  v2[775] = v13;
  OUTLINED_FUNCTION_114(v13);
  v2[776] = OUTLINED_FUNCTION_199();
  v14 = type metadata accessor for IntentSystemContext();
  v2[777] = v14;
  OUTLINED_FUNCTION_21(v14);
  v2[778] = v15;
  v2[779] = OUTLINED_FUNCTION_31_17();
  v2[780] = swift_task_alloc();
  v2[781] = swift_task_alloc();
  v2[782] = swift_task_alloc();
  v2[783] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  OUTLINED_FUNCTION_114(v16);
  v2[784] = OUTLINED_FUNCTION_31_17();
  v2[785] = swift_task_alloc();
  v17 = type metadata accessor for DeviceRestrictions();
  v2[786] = v17;
  OUTLINED_FUNCTION_21(v17);
  v2[787] = v18;
  v2[788] = OUTLINED_FUNCTION_199();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v2[789] = v19;
  OUTLINED_FUNCTION_114(v19);
  v2[790] = OUTLINED_FUNCTION_199();
  memcpy(v2 + 522, v1, 0x68uLL);

  return MEMORY[0x2822009F8](SearchTool.perform());
}

uint64_t SearchTool.perform()()
{
  if (one-time initialization token for stextension != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 6328) = v1;
  *(v0 + 6336) = __swift_project_value_buffer(v1, static Logging.stextension);
  outlined init with copy of SearchTool(v0 + 4176, v0 + 4384);
  outlined init with copy of SearchTool(v0 + 4176, v0 + 4488);
  outlined init with copy of SearchTool(v0 + 4176, v0 + 4696);
  outlined init with copy of SearchTool(v0 + 4176, v0 + 4800);
  outlined init with copy of SearchTool(v0 + 4176, v0 + 4904);
  outlined init with copy of SearchTool(v0 + 4176, v0 + 5008);
  outlined init with copy of SearchTool(v0 + 4176, v0 + 5112);
  outlined init with copy of SearchTool(v0 + 4176, v0 + 5216);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v2, v3))
  {
    outlined destroy of SearchTool(v0 + 4176);
    outlined destroy of SearchTool(v0 + 4176);
    outlined destroy of SearchTool(v0 + 4176);
    outlined destroy of SearchTool(v0 + 4176);
    outlined destroy of SearchTool(v0 + 4176);
    outlined destroy of SearchTool(v0 + 4176);
    outlined destroy of SearchTool(v0 + 4176);
    outlined destroy of SearchTool(v0 + 4176);
    goto LABEL_40;
  }

  v94 = v3;
  v4 = *(v0 + 6320);
  v5 = swift_slowAlloc();
  swift_slowAlloc();
  *v5 = 136318722;
  IntentParameter.wrappedValue.getter();
  v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 4) = v6;
  *(v5 + 12) = 2080;
  IntentParameter.wrappedValue.getter();
  v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 14) = v7;
  *(v5 + 22) = 2080;
  IntentParameter.wrappedValue.getter();
  Optional.debugDescription.getter();
  outlined destroy of IntentApplication?(v4, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 24) = v8;
  *(v5 + 32) = 2080;
  IntentParameter.wrappedValue.getter();
  v9 = MEMORY[0x277D84F90];
  if (*(v0 + 5952))
  {
    v10 = *(v0 + 5952);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  MEMORY[0x25F89F8A0](v10, &type metadata for SearchEntityTypeIdentifier);

  OUTLINED_FUNCTION_179_0();
  v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 34) = v11;
  *(v5 + 42) = 2080;
  IntentParameter.wrappedValue.getter();
  memcpy((v0 + 4016), (v0 + 3856), 0xA0uLL);
  memcpy((v0 + 3696), (v0 + 3856), 0xA0uLL);
  v12 = OUTLINED_FUNCTION_158();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  Optional.debugDescription.getter();
  OUTLINED_FUNCTION_33_14(v0 + 4016);
  v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 44) = v14;
  *(v5 + 52) = 2080;
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 6000))
  {
    v15 = *(v0 + 6000);
  }

  else
  {
    v15 = v9;
  }

  MEMORY[0x25F89F8A0](v15, &type metadata for EntityMatch);

  OUTLINED_FUNCTION_158();
  v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 54) = v16;
  *(v5 + 62) = 1024;
  IntentParameter.wrappedValue.getter();
  outlined destroy of SearchTool(v0 + 4176);
  v17 = *(v0 + 6423);
  v18 = v17 != 2 && (v17 & 1) != 0;
  *(v5 + 64) = v18;
  outlined destroy of SearchTool(v0 + 4176);
  *(v5 + 68) = 2080;
  IntentParameter.wrappedValue.getter();
  if (*(v0 + 5984))
  {
    v19 = *(v0 + 5984);
  }

  else
  {
    v19 = v9;
  }

  v20 = type metadata accessor for SearchPropertyRequest(0);
  MEMORY[0x25F89F8A0](v19, v20);

  OUTLINED_FUNCTION_158();
  v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 70) = v21;
  *(v5 + 78) = 1024;
  IntentParameter.wrappedValue.getter();
  outlined destroy of SearchTool(v0 + 4176);
  v22 = *(v0 + 6424);
  v23 = v22 != 2 && (v22 & 1) != 0;
  *(v5 + 80) = v23;
  outlined destroy of SearchTool(v0 + 4176);
  *(v5 + 84) = 1024;
  IntentParameter.wrappedValue.getter();
  outlined destroy of SearchTool(v0 + 4176);
  v24 = *(v0 + 6426);
  v25 = v24 != 2 && (v24 & 1) != 0;
  *(v5 + 86) = v25;
  outlined destroy of SearchTool(v0 + 4176);
  *(v5 + 90) = 2080;
  IntentParameter.wrappedValue.getter();
  OUTLINED_FUNCTION_36_12((v0 + 3536));
  if (_s10OmniSearch0B7ContextVSgWOg((v0 + 3536)) == 1)
  {
    OUTLINED_FUNCTION_36_12((v0 + 16));
    outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
LABEL_29:

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_36_12((v0 + 2736));
  OUTLINED_FUNCTION_36_12((v0 + 2896));
  OUTLINED_FUNCTION_36_12((v0 + 3216));
  outlined init with copy of SearchContext(v0 + 2896, v0 + 2576);
  OUTLINED_FUNCTION_33_14(v0 + 3216);
  EntityProperty.wrappedValue.getter();
  OUTLINED_FUNCTION_33_14(v0 + 2736);
  if (!*(v0 + 5912))
  {
    goto LABEL_29;
  }

LABEL_30:
  v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 92) = v26;
  *(v5 + 100) = 1024;
  IntentParameter.wrappedValue.getter();
  OUTLINED_FUNCTION_35_16((v0 + 2416));
  if (_s10OmniSearch0B7ContextVSgWOg((v0 + 2416)) == 1)
  {
    OUTLINED_FUNCTION_35_16((v0 + 176));
    outlined destroy of IntentApplication?(v0 + 176, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
    outlined destroy of SearchTool(v0 + 4176);
    v27 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_35_16((v0 + 1616));
    OUTLINED_FUNCTION_35_16((v0 + 1776));
    OUTLINED_FUNCTION_35_16((v0 + 1936));
    outlined init with copy of SearchContext(v0 + 1936, v0 + 1456);
    OUTLINED_FUNCTION_33_14(v0 + 1776);
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_33_14(v0 + 1616);
    outlined destroy of SearchTool(v0 + 4176);
    v27 = *(v0 + 6422);
  }

  *(v5 + 102) = v27;
  outlined destroy of SearchTool(v0 + 4176);
  *(v5 + 106) = 2080;
  IntentParameter.wrappedValue.getter();
  OUTLINED_FUNCTION_34_17((v0 + 1296));
  if (_s10OmniSearch0B7ContextVSgWOg((v0 + 1296)) == 1)
  {
    OUTLINED_FUNCTION_34_17((v0 + 336));
    outlined destroy of IntentApplication?(v0 + 336, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  }

  else
  {
    OUTLINED_FUNCTION_34_17((v0 + 656));
    OUTLINED_FUNCTION_34_17((v0 + 816));
    OUTLINED_FUNCTION_34_17((v0 + 976));
    outlined init with copy of SearchContext(v0 + 976, v0 + 496);
    outlined destroy of IntentApplication?(v0 + 816, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
    EntityProperty.wrappedValue.getter();
    DeviceRestrictions.init(rawValue:)();
    outlined destroy of IntentApplication?(v0 + 656, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
    DeviceRestrictions.aceSet.getter();
    v28 = OUTLINED_FUNCTION_179_0();
    v29(v28);
  }

  v30 = *(v0 + 6280);
  Set.description.getter();

  v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 108) = v31;
  *(v5 + 116) = 2080;
  memcpy((v0 + 4592), (v0 + 4176), 0x68uLL);
  lazy protocol witness table accessor for type SearchTool and conformance SearchTool();
  AppIntent.systemContext.getter();
  IntentSystemContext.interfaceIdiom.getter();
  v32 = OUTLINED_FUNCTION_158();
  v33(v32);
  v34 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v34);
  v36 = *(v0 + 6280);
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 6280), &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  }

  else
  {
    IntentSystemContext.InterfaceIdiom.rawValue.getter();
    OUTLINED_FUNCTION_51();
    (*(v37 + 8))(v36, v34);
  }

  v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

  *(v5 + 118) = v38;
  *(v5 + 126) = 1024;
  *(v5 + 128) = qos_class_self();
  _os_log_impl(&dword_25D85C000, v2, v94, "SearchTool Intent perform() called with\n    rawQuery: %s,\n    rewrittenQuery: %s,\n    structuredQuery: %s,\n    typeIdentifiers: %s,\n    context: %s,\n    matchedEntities: %s,\n    isFirstToolInvocation: %{BOOL}d,\n    requestedProperties: %s,\n    isOnScreenReference: %{BOOL}d,\n    isSingleStepSearch: %{BOOL}d,\n    responseMode: %s,\n    isEyesFree: %{BOOL}d,\n    deviceRestrictions: %s,\n    interfaceIdiom: %s,\nat QoS: %u", v5, 0x84u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_42_0();
LABEL_40:

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v39 = one-time initialization token for shared;
  v40 = static OmniSearchService.shared;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 6256);
  v42 = *(v0 + 6224);
  v43 = *(v0 + 6216);
  v44 = *(v0 + 6184);
  v45 = static MetricsLogger.shared;
  type metadata accessor for SearchEntityVisualContext();
  v46 = swift_allocObject();
  *(v0 + 5800) = &type metadata for EntityCardBuilder;
  *(v0 + 5808) = &protocol witness table for EntityCardBuilder;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 5776), v46 + 16);
  type metadata accessor for SearchToolIntentController();
  v47 = swift_allocObject();
  *(v0 + 6344) = v47;
  v47[5] = type metadata accessor for OmniSearchService();
  v47[6] = &protocol witness table for OmniSearchService;
  v47[2] = v40;
  v47[10] = type metadata accessor for MetricsLogger();
  v47[11] = &protocol witness table for MetricsLogger;
  v47[7] = v45;
  v47[12] = v46;
  memcpy((v0 + 5320), (v0 + 4176), 0x68uLL);
  lazy protocol witness table accessor for type SearchTool and conformance SearchTool();

  AppIntent.systemContext.getter();
  IntentSystemContext.assistantContext.getter();
  v91 = *(v42 + 8);
  v91(v41, v43);
  v48 = type metadata accessor for IntentSystemContext.AssistantContext();
  if (__swift_getEnumTagSinglePayload(v44, 1, v48) == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 6184), &_s10AppIntents19IntentSystemContextV09AssistantE0VSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0VSgMR);
    type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  }

  else
  {
    IntentSystemContext.AssistantContext.interactionMode.getter();
    OUTLINED_FUNCTION_51();
    v53 = OUTLINED_FUNCTION_32_0();
    v54(v53);
  }

  v55 = *(v0 + 6248);
  v56 = *(v0 + 6216);
  v57 = *(v0 + 6176);
  memcpy((v0 + 5424), (v0 + 4176), 0x68uLL);
  AppIntent.systemContext.getter();
  IntentSystemContext.interfaceIdiom.getter();
  v91(v55, v56);
  OUTLINED_FUNCTION_40_13();
  AppIntent.systemContext.getter();
  IntentSystemContext.assistantContext.getter();
  v58 = OUTLINED_FUNCTION_179_0();
  (v91)(v58);
  v59 = __swift_getEnumTagSinglePayload(v57, 1, v48);
  v60 = *(v0 + 6176);
  if (v59 == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 6176), &_s10AppIntents19IntentSystemContextV09AssistantE0VSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0VSgMR);
    v87 = 0;
    v89 = 0;
  }

  else
  {
    v61 = IntentSystemContext.AssistantContext.locale.getter();
    v87 = v62;
    v89 = v61;
    OUTLINED_FUNCTION_51();
    (*(v63 + 8))(v60, v48);
  }

  v64 = *(v0 + 6168);
  OUTLINED_FUNCTION_40_13();
  AppIntent.systemContext.getter();
  IntentSystemContext.assistantContext.getter();
  v65 = OUTLINED_FUNCTION_158();
  (v91)(v65);
  v66 = __swift_getEnumTagSinglePayload(v64, 1, v48);
  v67 = *(v0 + 6168);
  if (v66 == 1)
  {
    outlined destroy of IntentApplication?(*(v0 + 6168), &_s10AppIntents19IntentSystemContextV09AssistantE0VSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0VSgMR);
    v68 = 0;
    v69 = 0;
  }

  else
  {
    v68 = IntentSystemContext.AssistantContext.requestIdentifier.getter();
    v69 = v70;
    OUTLINED_FUNCTION_51();
    (*(v71 + 8))(v67, v48);
  }

  v72 = *(v0 + 6272);
  v73 = *(v0 + 6208);
  v74 = *(v0 + 6200);
  v75 = *(v0 + 6160);
  v76 = *(v0 + 6152);
  outlined init with take of SearchResultItem?(*(v0 + 6192), v73, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  outlined init with take of SearchResultItem?(v72, v73 + v74[5], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v77 = (v73 + v74[6]);
  *v77 = v89;
  v77[1] = v87;
  v78 = (v73 + v74[7]);
  *v78 = v68;
  v78[1] = v69;
  *(v73 + v74[8]) = 0;
  IntentParameter.wrappedValue.getter();
  v93 = *(v0 + 5928);
  v95 = *(v0 + 5920);
  IntentParameter.wrappedValue.getter();
  v92 = *(v0 + 5888);
  IntentParameter.wrappedValue.getter();
  v90 = *(v0 + 5872);
  IntentParameter.wrappedValue.getter();
  *(v0 + 6352) = *(v0 + 4208);
  IntentParameter.wrappedValue.getter();
  v88 = *(v0 + 6008);
  IntentParameter.wrappedValue.getter();
  memcpy((v0 + 2256), (v0 + 3056), 0xA0uLL);
  IntentParameter.wrappedValue.getter();
  v86 = *(v0 + 5968);
  IntentParameter.wrappedValue.getter();
  LOBYTE(v72) = *(v0 + 6427);
  *(v0 + 6360) = *(v0 + 4240);
  IntentParameter.wrappedValue.getter();
  v79 = *(v0 + 6428);
  IntentParameter.wrappedValue.getter();
  LOBYTE(v74) = *(v0 + 6420);
  IntentParameter.wrappedValue.getter();
  v80 = *(v0 + 6421);
  IntentParameter.wrappedValue.getter();
  v81 = *(v0 + 6024);
  v82 = v76[16];
  *(v0 + 6416) = v82;
  outlined init with copy of AssistantSystemContext(v73, v75 + v82, type metadata accessor for AssistantSystemContext);
  IntentParameter.wrappedValue.getter();
  *v75 = v95;
  *(v75 + 8) = v93;
  *(v75 + 16) = v92;
  *(v75 + 32) = v90;
  *(v75 + v76[8]) = v88;
  memcpy((v75 + v76[9]), (v0 + 2256), 0xA0uLL);
  *(v75 + v76[10]) = v86;
  *(v75 + v76[11]) = v72;
  *(v75 + v76[12]) = v79;
  *(v75 + v76[13]) = v74;
  *(v75 + v76[14]) = v80;
  *(v75 + v76[15]) = v81;
  *(v0 + 6368) = type metadata accessor for FeatureStoreDonationManager();
  static FeatureStoreDonationManager.donateSearchToolInvocation(searchToolRequest:)(v75);
  type metadata accessor for SearchToolProgressReporterAppIntent();
  v83 = swift_allocObject();
  *(v0 + 6376) = v83;
  *(v0 + 5760) = &type metadata for SearchTool;
  *(v0 + 5768) = lazy protocol witness table accessor for type SearchTool and conformance SearchTool();
  v84 = swift_allocObject();
  *(v0 + 5736) = v84;
  memcpy((v84 + 16), (v0 + 4176), 0x68uLL);
  outlined init with copy of SearchTool(v0 + 4176, v0 + 4280);
  swift_defaultActor_initialize();
  *(v83 + 112) = 0;
  *(v83 + 120) = 0;
  outlined init with take of ResponseOverrideMatcherProtocol((v0 + 5736), v83 + 136);
  *(v83 + 128) = 0;

  return MEMORY[0x2822009F8](SearchTool.perform());
}

{
  specialized SearchToolProgressReporter.setupProgress()();

  return MEMORY[0x2822009F8](SearchTool.perform());
}

{
  v1 = *v0;
  v2 = *v0;

  lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(&lazy protocol witness table cache variable for type SearchToolProgressReporterAppIntent and conformance SearchToolProgressReporterAppIntent, type metadata accessor for SearchToolProgressReporterAppIntent, &protocol conformance descriptor for SearchToolProgressReporterAppIntent);

  v3 = swift_task_alloc();
  *(v1 + 6400) = v3;
  *v3 = v2;
  v3[1] = SearchTool.perform();

  return SearchToolIntentController.perform(request:progressReporter:)();
}

{
  *(*v1 + 6408) = v0;

  if (v0)
  {
    v2 = SearchTool.perform();
  }

  else
  {
    v2 = SearchTool.perform();
  }

  return MEMORY[0x2822009F8](v2);
}

{
  v1 = (*(v0 + 6160) + *(v0 + 6416) + *(*(v0 + 6200) + 28));
  static FeatureStoreDonationManager.donateSearchToolResponse(searchToolResponse:requestId:)(*(v0 + 6144), *v1, v1[1]);
  if (one-time initialization token for entityInfo != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 6144);
  v3 = __swift_project_value_buffer(*(v0 + 6328), static Logging.entityInfo);
  _s10OmniSearch11EvalLoggingV03logC4Info__6loggerySS_AA0cF9Providing_p2os6LoggerVtFZTf4nenn_nAA0B18ToolIntentResponseV_Tt2g5(0xD000000000000018, 0x800000025DBF28E0, v2, v3);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_16_11(v5))
  {
    v6 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v6);
    OUTLINED_FUNCTION_9_11(&dword_25D85C000, v7, v8, "SearchTool Intent receiver response from IntentController");
    OUTLINED_FUNCTION_2_8();
  }

  v9 = *(v0 + 6144);

  v10 = *(v9 + 32);
  if (v10 >> 60 == 15)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v12))
    {
      v13 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v13);
      OUTLINED_FUNCTION_9_11(&dword_25D85C000, v14, v15, "SearchTool Intent creating dialog with no attribution");
      OUTLINED_FUNCTION_2_8();
    }

    v16 = *(v0 + 6408);
    v17 = *(v0 + 6144);
    v18 = *(v0 + 6080);
    v19 = *(v0 + 6048);

    *(v0 + 5992) = *v17;

    v20 = OUTLINED_FUNCTION_179_0();
    outlined copy of Data._Representation(v20, v21);
    OUTLINED_FUNCTION_179_0();
    OUTLINED_FUNCTION_28_1();
    SnippetPluginContainer.init(data:bundleIdentifer:)();
    OUTLINED_FUNCTION_12_19();
    outlined init with copy of AssistantSystemContext(v17 + v22, v19, v23);
    IntentDialog.init(dialogData:)(v19, v18);
    v68 = *(v0 + 6208);
    v24 = *(v0 + 6160);
    v25 = *(v0 + 6112);
    v26 = *(v0 + 6104);
    v27 = *(v0 + 6096);
    if (v16)
    {

      (*(v26 + 8))(v25, v27);
      v28 = v68;
LABEL_14:

      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_3_28();
      outlined destroy of AssistantSystemContext(v28, v45);
      OUTLINED_FUNCTION_2_23();
      outlined destroy of AssistantSystemContext(v24, v46);
      OUTLINED_FUNCTION_22_14();

      OUTLINED_FUNCTION_127();
      goto LABEL_18;
    }

    v67 = *(v0 + 6160);
    v48 = *(v0 + 6080);
    v49 = *(v0 + 6072);
    v65 = *(v0 + 6064);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
    lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
    static IntentResult.result<A>(value:pluginContainer:dialog:)();

    (*(v49 + 8))(v48, v65);
    (*(v26 + 8))(v25, v27);
    v28 = v68;
  }

  else
  {
    v64 = *(v9 + 24);
    v66 = *(v9 + 32);
    outlined copy of Data._Representation(v64, v10);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_16_11(v30))
    {
      v31 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_81_4(v31);
      OUTLINED_FUNCTION_9_11(&dword_25D85C000, v32, v33, "SearchTool Intent creating dialog with attribution");
      OUTLINED_FUNCTION_2_8();
    }

    v34 = *(v0 + 6408);
    v35 = *(v0 + 6144);
    v36 = *(v0 + 6088);
    v37 = *(v0 + 6056);

    *(v0 + 6016) = *v35;

    v38 = OUTLINED_FUNCTION_241_0();
    outlined copy of Data._Representation(v38, v39);
    OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_28_1();
    SnippetPluginContainer.init(data:bundleIdentifer:)();
    OUTLINED_FUNCTION_12_19();
    outlined init with copy of AssistantSystemContext(v35 + v40, v37, v41);
    IntentDialog.init(dialogData:)(v37, v36);
    v28 = *(v0 + 6208);
    v24 = *(v0 + 6160);
    v42 = *(v0 + 6128);
    if (v34)
    {
      v43 = *(v0 + 6104);
      v44 = *(v0 + 6096);

      outlined consume of Data?(v64, v66);

      (*(v43 + 8))(v42, v44);
      goto LABEL_14;
    }

    v67 = *(v0 + 6160);
    v50 = *(v0 + 6120);
    v60 = *(v0 + 6104);
    v61 = *(v0 + 6096);
    v59 = *(v0 + 6088);
    v62 = *(v0 + 6072);
    v63 = *(v0 + 6064);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    v51 = OUTLINED_FUNCTION_241_0();
    outlined copy of Data?(v51, v52);

    IntentViewOptions.init(canReplacePrintableText:)();
    OUTLINED_FUNCTION_241_0();
    SnippetPluginContainer.init(data:bundleIdentifier:intentViewOptions:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
    lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
    static IntentResult.result<A>(value:pluginContainer:dialog:attribution:)();

    v53 = OUTLINED_FUNCTION_241_0();
    outlined consume of Data?(v53, v54);

    v55 = *(v60 + 8);
    v55(v50, v61);
    (*(v62 + 8))(v59, v63);
    v55(v42, v61);
  }

  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_3_28();
  outlined destroy of AssistantSystemContext(v28, v56);
  OUTLINED_FUNCTION_2_23();
  outlined destroy of AssistantSystemContext(v67, v57);

  OUTLINED_FUNCTION_127();
LABEL_18:

  return v47();
}

{
  v1 = *(v0 + 6208);
  v2 = *(v0 + 6160);

  OUTLINED_FUNCTION_3_28();
  outlined destroy of AssistantSystemContext(v1, v3);
  OUTLINED_FUNCTION_2_23();
  outlined destroy of AssistantSystemContext(v2, v4);
  OUTLINED_FUNCTION_22_14();

  OUTLINED_FUNCTION_127();

  return v5();
}

void SearchTool.perform()()
{
  IntentParameter.wrappedValue.getter();
  v1 = v0[745];
  if (v1)
  {
    v2 = 0;
    v3 = *(v1 + 16);
    v4 = MEMORY[0x277D84F90];
    for (i = 32; ; i += 16)
    {
      if (v3 == v2)
      {

        goto LABEL_12;
      }

      if (v2 >= *(v1 + 16))
      {
        break;
      }

      EntityProperty.wrappedValue.getter();
      v6 = v0[732];
      v7 = v0[733];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
        v4 = v11;
      }

      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v8 > 1);
        v4 = v12;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      ++v2;
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_12:
    v0[798] = v4;
    IntentParameter.wrappedValue.getter();
    v13 = swift_task_alloc();
    v0[799] = v13;
    *v13 = v0;
    v13[1] = SearchTool.perform();

    specialized SearchToolProgressReporter.searchStarted(with:isOnScreenReference:)(v4);
  }
}

uint64_t specialized SearchToolProgressReporter.setupProgress()()
{
  v1 = v0;
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logging.search);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25D85C000, v3, v4, "Progress reporter setup called", v5, 2u);
    MEMORY[0x25F8A1050](v5, -1, -1);
  }

  type metadata accessor for OmniSearchProgressUpdate();
  swift_initStackObject();
  v6 = OmniSearchProgressUpdate.init(totalUnitCount:completedUnitCount:localizedDescription:)(100, 0, 0, 0);
  specialized SearchToolProgressReporterAppIntent.sendProgressReport(_:)(v6, v1);
}

uint64_t key path getter for SearchEntityTypeIdentifier.bundleId : SearchEntityTypeIdentifier@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  result = SearchEntityTypeIdentifier.bundleId.getter(a1);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t specialized SearchToolProgressReporter.searchStarted(with:isOnScreenReference:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](specialized SearchToolProgressReporter.searchStarted(with:isOnScreenReference:));
}

uint64_t specialized SearchToolProgressReporter.searchStarted(with:isOnScreenReference:)()
{
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logging.search);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_16_11(v3))
  {
    v4 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_81_4(v4);
    OUTLINED_FUNCTION_9_11(&dword_25D85C000, v5, v6, "Progress reporter search started called");
    OUTLINED_FUNCTION_2_8();
  }

  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  v9 = specialized SearchToolProgressReporter.getSearchDescription(for:)(v8);
  v11 = v10;
  type metadata accessor for OmniSearchProgressUpdate();
  swift_initStackObject();
  v12 = OmniSearchProgressUpdate.init(totalUnitCount:completedUnitCount:localizedDescription:)(100, 33, v9, v11);
  specialized SearchToolProgressReporterAppIntent.sendProgressReport(_:)(v12, v7);

  OUTLINED_FUNCTION_127();

  return v13();
}

uint64_t IntentDialog.init(dialogData:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v44 - v4;
  v48 = type metadata accessor for URL();
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents16_SpeakableStringVSgMd, &_s10AppIntents16_SpeakableStringVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for _SpeakableString();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for DialogData(0);
  outlined init with copy of SpotlightRankingItem?(a1 + v18[8], v10, &_s10AppIntents16_SpeakableStringVSgMd, &_s10AppIntents16_SpeakableStringVSgMR);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    outlined destroy of IntentApplication?(v10, &_s10AppIntents16_SpeakableStringVSgMd, &_s10AppIntents16_SpeakableStringVSgMR);
    if (*(a1 + v18[7] + 8))
    {
      v19 = one-time initialization token for stextension;

      if (v19 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logging.stextension);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_25D85C000, v21, v22, "Creating IntentDialog with stringLiteral", v23, 2u);
        MEMORY[0x25F8A1050](v23, -1, -1);
      }

      IntentDialog.init(stringLiteral:)();
      return outlined destroy of AssistantSystemContext(a1, type metadata accessor for DialogData);
    }

    if (!a1[1])
    {
      goto LABEL_23;
    }

    v29 = v47;
    outlined init with copy of SpotlightRankingItem?(a1 + v18[5], v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v30 = v48;
    if (__swift_getEnumTagSinglePayload(v29, 1, v48) == 1)
    {
      outlined destroy of IntentApplication?(v29, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_23:
      if (one-time initialization token for stextension != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logging.stextension);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_25D85C000, v40, v41, "Error Creating IntentDialog. Insufficient or invalid data provided", v42, 2u);
        MEMORY[0x25F8A1050](v42, -1, -1);
      }

      lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError();
      swift_allocError();
      *v43 = 0xD000000000000049;
      v43[1] = 0x800000025DBF2900;
      swift_willThrow();
      return outlined destroy of AssistantSystemContext(a1, type metadata accessor for DialogData);
    }

    v32 = v45;
    v31 = v46;
    (*(v45 + 32))(v46, v29, v30);
    if (!*(a1 + v18[6]))
    {
      (*(v32 + 8))(v31, v30);
      goto LABEL_23;
    }

    v33 = one-time initialization token for stextension;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logging.stextension);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_25D85C000, v35, v36, "Creating IntentDialog with CAT identifier", v37, 2u);
      MEMORY[0x25F8A1050](v37, -1, -1);
    }

    v38 = v46;
    (*(v32 + 16))(v44, v46, v30);
    IntentDialog.init(identifier:templateDirectoryURL:parameters:)();
    outlined destroy of AssistantSystemContext(a1, type metadata accessor for DialogData);
    return (*(v32 + 8))(v38, v30);
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    if (one-time initialization token for stextension != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logging.stextension);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_25D85C000, v26, v27, "Creating IntentDialog with speakableString", v28, 2u);
      MEMORY[0x25F8A1050](v28, -1, -1);
    }

    (*(v12 + 16))(v14, v17, v11);
    IntentDialog.init(full:systemImageName:)();
    outlined destroy of AssistantSystemContext(a1, type metadata accessor for DialogData);
    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t protocol witness for AppIntent.perform() in conformance SearchTool(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AppIntent.perform() in conformance SearchTool;

  return SearchTool.perform()(a1);
}

uint64_t protocol witness for AppIntent.perform() in conformance SearchTool()
{

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance SearchTool(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchTool and conformance SearchTool();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t lazy protocol witness table accessor for type SearchToolClientType and conformance SearchToolClientType()
{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType;
  if (!lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolClientType and conformance SearchToolClientType);
  }

  return result;
}

uint64_t specialized SearchToolProgressReporter.getSearchDescription(for:)(uint64_t a1)
{
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(v1 + 128) == 1)
  {
    goto LABEL_12;
  }

  v7 = *(a1 + 16);
  v8 = (a1 + 40);
  for (i = MEMORY[0x277D84F90]; v7; --v7)
  {
    v11 = *(v8 - 1);
    v10 = *v8;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
      i = v15;
    }

    v13 = *(i + 16);
    v12 = *(i + 24);
    if (v13 >= v12 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1);
      i = v16;
    }

    *(i + 16) = v13 + 1;
    v14 = i + 16 * v13;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    v8 += 2;
  }

  v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(i);
  v18 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v17);
  if (v18[2] != 1 || (v20 = v18[4], v19 = v18[5], , , v21 = specialized SearchToolProgressReporter.appName(for:)(v20, v19), !v22))
  {

LABEL_12:
    String.LocalizationValue.init(stringLiteral:)();
    return String.init(localized:)(v6);
  }

  v23 = v21;
  v24 = v22;
  swift_beginAccess();
  *(v1 + 112) = v20;
  *(v1 + 120) = v19;

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x6E69686372616553;
  v25._object = 0xED0000206E692067;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
  v26._countAndFlagsBits = v23;
  v26._object = v24;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v26);

  v27._countAndFlagsBits = 10911970;
  v27._object = 0xA300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
  String.LocalizationValue.init(stringInterpolation:)();
  return String.init(localized:)(v6);
}

uint64_t specialized SearchToolProgressReporter.appName(for:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v5 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(a1, a2, 1);
  v6 = [v5 localizedName];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v7;
}

unint64_t lazy protocol witness table accessor for type SearchTool and conformance SearchTool()
{
  result = lazy protocol witness table cache variable for type SearchTool and conformance SearchTool;
  if (!lazy protocol witness table cache variable for type SearchTool and conformance SearchTool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchTool and conformance SearchTool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchTool and conformance SearchTool;
  if (!lazy protocol witness table cache variable for type SearchTool and conformance SearchTool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchTool and conformance SearchTool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchTool and conformance SearchTool;
  if (!lazy protocol witness table cache variable for type SearchTool and conformance SearchTool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchTool and conformance SearchTool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchTool and conformance SearchTool;
  if (!lazy protocol witness table cache variable for type SearchTool and conformance SearchTool)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchTool and conformance SearchTool);
  }

  return result;
}

void _s10OmniSearch11EvalLoggingV03logC4Info__6loggerySS_AA0cF9Providing_p2os6LoggerVtFZTf4nenn_nAA0B18ToolIntentResponseV_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SearchToolIntentResponse(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AssistantSystemContext(a3, v10, type metadata accessor for SearchToolIntentResponse);
  v11 = type metadata accessor for NSUserDefaults();
  if (static NSUserDefaults.logForEval.getter(v11))
  {
    SearchToolIntentResponse.evalInfo.getter();
    v13 = v12;
    v14 = outlined destroy of AssistantSystemContext(v10, type metadata accessor for SearchToolIntentResponse);
    MEMORY[0x28223BE20](v14);
    v20[-4] = a1;
    v20[-3] = a2;
    v20[-2] = a4;
    specialized Sequence.forEach(_:)(closure #1 in static EvalLogging.logEvalInfo(_:_:logger:)partial apply, &v20[-6], v13);
  }

  else
  {
    outlined destroy of AssistantSystemContext(v10, type metadata accessor for SearchToolIntentResponse);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logging.search);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20[1] = v19;
      *v18 = 136315138;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v16, v17, "%s: Skip extra logging for eval", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x25F8A1050](v19, -1, -1);
      MEMORY[0x25F8A1050](v18, -1, -1);
    }
  }
}

uint64_t lazy protocol witness table accessor for type StructuredQueryEntity and conformance StructuredQueryEntity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for SearchTool(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchTool(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type IntentResultContainer<[SearchEntity], Never, _SnippetViewContainer, IntentDialog> and conformance <> IntentResultContainer<A, B, C, D>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents21IntentResultContainerVySay10OmniSearch0G6EntityVGs5NeverOAA012_SnippetViewE0VAA0C6DialogVGMd, &_s10AppIntents21IntentResultContainerVySay10OmniSearch0G6EntityVGs5NeverOAA012_SnippetViewE0VAA0C6DialogVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void _s10OmniSearch11EvalLoggingV03logC4Info__6loggerySS_AA0cF9Providing_p2os6LoggerVtFZTf4nenn_nSDyAA0B4TypeOAA0B13ServiceResultVG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for NSUserDefaults();
  if (static NSUserDefaults.logForEval.getter(v8))
  {
    v9 = Dictionary<>.evalInfo.getter(a3);
    MEMORY[0x28223BE20](v9);
    v14[2] = a1;
    v14[3] = a2;
    v14[4] = a4;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in static EvalLogging.logEvalInfo(_:_:logger:), v14, v9);
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logging.search);

    v15 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      _os_log_impl(&dword_25D85C000, v15, v11, "%s: Skip extra logging for eval", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }
  }
}

uint64_t outlined destroy of AssistantSystemContext(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of AssistantSystemContext(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

void specialized SearchToolProgressReporterAppIntent.sendProgressReport(_:)(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
  v4 = ProgressReportingIntent.progress.getter();
  [v4 setTotalUnitCount_];

  __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
  v5 = ProgressReportingIntent.progress.getter();
  [v5 setCompletedUnitCount_];

  v6 = a1[5];
  if (v6)
  {
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);

    v8 = ProgressReportingIntent.progress.getter();
    outlined bridged method (mbnn) of @objc NSProgress.localizedDescription.setter(v7, v6, v8);
  }
}

uint64_t OUTLINED_FUNCTION_0_40(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_14()
{

  return outlined destroy of AssistantSystemContext(v0, type metadata accessor for SearchToolIntentResponse);
}

uint64_t OUTLINED_FUNCTION_31_17()
{

  return swift_task_alloc();
}

void *OUTLINED_FUNCTION_32_17(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  return memcpy(va, v21, 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_33_14(uint64_t a1)
{

  return outlined destroy of IntentApplication?(a1, v1, v2);
}

void *OUTLINED_FUNCTION_34_17(void *a1)
{

  return memcpy(a1, (v1 + 1136), 0xA0uLL);
}

void *OUTLINED_FUNCTION_35_16(void *a1)
{

  return memcpy(a1, (v1 + 2096), 0xA0uLL);
}

void *OUTLINED_FUNCTION_36_12(void *a1)
{

  return memcpy(a1, (v1 + 3376), 0xA0uLL);
}

void *OUTLINED_FUNCTION_40_13()
{

  return memcpy((v1 + v0), (v1 + 4176), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_43_10(uint64_t a1, uint64_t a2)
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t static SearchToolControl.assistantOnly.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_11_19(a1);
  static SearchToolControl.assistantOnly = v1;
  return result;
}

uint64_t key path getter for static SearchToolControl.assistantOnly : SearchToolControl.Type@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SearchToolControl.assistantOnly;
  return result;
}

uint64_t key path setter for static SearchToolControl.assistantOnly : SearchToolControl.Type(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SearchToolControl.assistantOnly = v1;
  return result;
}

uint64_t static SearchToolControl.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = __swift_project_value_buffer(v2, static SearchToolControl.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SearchToolControl.description.unsafeMutableAddressor()
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_41(&one-time initialization token for description);
  }

  v0 = type metadata accessor for IntentDescription();

  return __swift_project_value_buffer(v0, static SearchToolControl.description);
}

uint64_t static SearchToolControl.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_41(&one-time initialization token for description);
  }

  v2 = type metadata accessor for IntentDescription();
  v3 = __swift_project_value_buffer(v2, static SearchToolControl.description);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchToolControl.description.setter(uint64_t a1)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_41(&one-time initialization token for description);
  }

  v2 = type metadata accessor for IntentDescription();
  v3 = __swift_project_value_buffer(v2, static SearchToolControl.description);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchToolControl.description.modify())(uint64_t a1)
{
  if (one-time initialization token for description != -1)
  {
    OUTLINED_FUNCTION_0_41(&one-time initialization token for description);
  }

  v0 = type metadata accessor for IntentDescription();
  v1 = __swift_project_value_buffer(v0, static SearchToolControl.description);
  OUTLINED_FUNCTION_59_2(v1);
  return static ExtractedInfo.kExtractedInfoKey.modify;
}

uint64_t key path getter for static SearchToolControl.description : SearchToolControl.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchToolControl.description.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for IntentDescription();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchToolControl.description : SearchToolControl.Type(uint64_t a1)
{
  v2 = SearchToolControl.description.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for IntentDescription();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t key path getter for SearchToolControl.command : SearchToolControl@<X0>(uint64_t *a1@<X8>)
{
  result = SearchToolControl.command.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t key path setter for SearchToolControl.command : SearchToolControl(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];

  SearchToolControl.command.setter(v2, v3);
}

uint64_t (*SearchToolControl.command.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path getter for SearchToolControl.originatorPID : SearchToolControl@<X0>(uint64_t a1@<X8>)
{
  result = SearchToolControl.originatorPID.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t key path setter for SearchToolControl.originatorPID : SearchToolControl(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  SearchToolControl.originatorPID.setter(v2, v3);
}

uint64_t (*SearchToolControl.originatorPID.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t key path getter for SearchToolControl.useMiniMC : SearchToolControl@<X0>(_BYTE *a1@<X8>)
{
  result = SearchToolControl.useMiniMC.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for SearchToolControl.useMiniMC : SearchToolControl(char *a1, void *a2)
{
  v2 = *a1;

  SearchToolControl.useMiniMC.setter(v2);
}

uint64_t (*SearchToolControl.useMiniMC.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = IntentParameter.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t static SearchToolControl.prewarmPID.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_19(a1);
  static SearchToolControl.prewarmPID = a1;
  byte_28155CFA4 = BYTE4(a1) & 1;
  return result;
}

uint64_t key path getter for static SearchToolControl.prewarmPID : SearchToolControl.Type@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v3 = byte_28155CFA4;
  *a1 = static SearchToolControl.prewarmPID;
  *(a1 + 4) = v3;
  return result;
}

uint64_t key path setter for static SearchToolControl.prewarmPID : SearchToolControl.Type(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  result = swift_beginAccess();
  static SearchToolControl.prewarmPID = v1;
  byte_28155CFA4 = v2;
  return result;
}

uint64_t SearchToolControl.init()@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSb10AppIntentsE17IntentDisplayNameVSgMd, &_sSb10AppIntentsE17IntentDisplayNameVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  v65 = &v56 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterC15IntControlStyleOySiSg_GMd, &_s10AppIntents15IntentParameterC15IntControlStyleOySiSg_GMR);
  OUTLINED_FUNCTION_14();
  v63 = v5;
  v64 = v4;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v62 = &v56 - v7;
  v67 = type metadata accessor for InputConnectionBehavior();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  OUTLINED_FUNCTION_114(v13);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10AppIntentsE18IntentInputOptionsVSgMd, &_sSS10AppIntentsE18IntentInputOptionsVSgMR);
  OUTLINED_FUNCTION_114(v15);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v17);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  v19 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v19);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySSGMd, &_s10AppIntents15IntentParameterCySSGMR);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v20 = OUTLINED_FUNCTION_1_39();
  v60 = v19;
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  type metadata accessor for String.IntentInputOptions();
  v68 = 0;
  v69 = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = type metadata accessor for IntentDialog();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  v57 = *MEMORY[0x277CBA308];
  v58 = *(v9 + 104);
  v66 = v9 + 104;
  v56 = v12;
  v31 = v67;
  v58(v12);
  OUTLINED_FUNCTION_2_24();
  v32 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v33 = v61;
  *v61 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySiSgGMd, &_s10AppIntents15IntentParameterCySiSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v34 = OUTLINED_FUNCTION_1_39();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v19);
  v68 = 0;
  LOBYTE(v69) = 1;
  OUTLINED_FUNCTION_92();
  v37 = v27;
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v27);
  (*(v63 + 104))(v62, *MEMORY[0x277CB9EC8], v64);
  v41 = v56;
  v42 = v57;
  v43 = v31;
  v44 = v58;
  (v58)(v56, v57, v43);
  OUTLINED_FUNCTION_2_24();
  v33[1] = IntentParameter<>.init(title:description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySbSgGMd, &_s10AppIntents15IntentParameterCySbSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v45 = OUTLINED_FUNCTION_1_39();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v60);
  LOBYTE(v68) = 2;
  type metadata accessor for Bool.IntentDisplayName();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v37);
  v44(v41, v42, v67);
  OUTLINED_FUNCTION_2_24();
  result = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  v33[2] = result;
  return result;
}

uint64_t SearchToolControl.perform()(uint64_t a1)
{
  *(v2 + 120) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  OUTLINED_FUNCTION_114(v3);
  *(v2 + 128) = swift_task_alloc();
  v4 = type metadata accessor for OSSignpostID();
  *(v2 + 136) = v4;
  *(v2 + 144) = *(v4 - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = *v1;
  *(v2 + 184) = *(v1 + 16);

  return MEMORY[0x2822009F8](SearchToolControl.perform());
}

uint64_t SearchToolControl.perform()()
{
  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = v1 == 0x70756D726177 && v2 == 0xE600000000000000;
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v1 == 0xD000000000000017 && 0x800000025DBF2A60 == v2)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        if (one-time initialization token for stextension != -1)
        {
          OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logging.stextension);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *v31 = 136315138;
          IntentParameter.wrappedValue.getter();
          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v31 + 4) = v32;
          _os_log_impl(&dword_25D85C000, v29, v30, "Unknown command sent to command intent: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          OUTLINED_FUNCTION_42_0();
          OUTLINED_FUNCTION_42_0();
        }

        *(v0 + 105) = 0;
        lazy protocol witness table accessor for type Bool and conformance Bool();
LABEL_39:
        static IntentResult.result<A>(value:)();
        goto LABEL_40;
      }
    }

    IntentParameter.wrappedValue.getter();
    if (*(v0 + 104))
    {
      if (one-time initialization token for stextension != -1)
      {
        OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logging.stextension);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_25D85C000, v34, v35, "No originatorPID was set for prewarming MemoryCreationQU", v36, 2u);
        OUTLINED_FUNCTION_42_0();
      }

      *(v0 + 106) = 0;
      lazy protocol witness table accessor for type Bool and conformance Bool();
    }

    else
    {
      v37 = *(v0 + 96);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      v38 = *(v0 + 128);
      v39 = static MemoryCreationQUController.shared;
      IntentParameter.wrappedValue.getter();
      static MemoryCreationModelType.modelTypeForBool(_:)();
      (*(*v39 + 184))(v37, v38);
      outlined destroy of MemoryCreationModelType?(v38);
      *(v0 + 113) = 1;
      lazy protocol witness table accessor for type Bool and conformance Bool();
    }

    goto LABEL_39;
  }

  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v4, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v5 = OSSignposter.logHandle.getter();
  v6 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v5, v6, v8, "SearchToolControl.perform.warmup", "", v7, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);

  (*(v12 + 16))(v9, v10, v11);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v13 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v12 + 8))(v10, v11);
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_142_0(&one-time initialization token for stextension);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logging.stextension);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v17 = 136315138;
    swift_beginAccess();
    v18 = byte_28155CFA4;
    *(v0 + 108) = static SearchToolControl.prewarmPID;
    *(v0 + 112) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
    String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v17 + 4) = v19;
    _os_log_impl(&dword_25D85C000, v15, v16, "Warming up SearchToolExtension for search, running on pid: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  if (one-time initialization token for shared != -1)
  {
    v20 = swift_once();
  }

  (*((*MEMORY[0x277D85000] & *static OmniSearchService.shared) + 0xC8))(v20);
  v21 = [objc_opt_self() processInfo];
  v22 = [v21 processIdentifier];

  swift_beginAccess();
  static SearchToolControl.prewarmPID = v22;
  byte_28155CFA4 = 0;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_25D85C000, v23, v24, "Finished warming up SearchToolExtension for search", v25, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  *(v0 + 114) = 1;
  lazy protocol witness table accessor for type Bool and conformance Bool();
  static IntentResult.result<A>(value:)();
  $defer #1 () in SearchToolControl.perform()(v13);

LABEL_40:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t $defer #1 () in SearchToolControl.perform()(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Logging.searchSignposter);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "SearchToolControl.perform.warmup", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for AppIntent.perform() in conformance SearchToolControl(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:);

  return SearchToolControl.perform()(a1);
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance SearchToolControl(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolControl and conformance SearchToolControl();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t outlined destroy of MemoryCreationModelType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes23MemoryCreationModelTypeOSgMd, &_s15OmniSearchTypes23MemoryCreationModelTypeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchToolControl and conformance SearchToolControl()
{
  result = lazy protocol witness table cache variable for type SearchToolControl and conformance SearchToolControl;
  if (!lazy protocol witness table cache variable for type SearchToolControl and conformance SearchToolControl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolControl and conformance SearchToolControl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolControl and conformance SearchToolControl;
  if (!lazy protocol witness table cache variable for type SearchToolControl and conformance SearchToolControl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolControl and conformance SearchToolControl);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolControl and conformance SearchToolControl;
  if (!lazy protocol witness table cache variable for type SearchToolControl and conformance SearchToolControl)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolControl and conformance SearchToolControl);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IntentResultContainer<Bool, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>()
{
  result = lazy protocol witness table cache variable for type IntentResultContainer<Bool, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>;
  if (!lazy protocol witness table cache variable for type IntentResultContainer<Bool, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents21IntentResultContainerVySbs5NeverOA2EGMd, &_s10AppIntents21IntentResultContainerVySbs5NeverOA2EGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntentResultContainer<Bool, Never, Never, Never> and conformance IntentResultContainer<A, B, C, D>);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_41(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_18(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_19(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t SearchToolError.localizedStringResource.getter(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  MEMORY[0x28223BE20](v4 - 8);
  if (a2 > 1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v6._object = 0x800000025DBF2B30;
    v6._countAndFlagsBits = 0xD000000000000012;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
    return LocalizedStringResource.init(stringInterpolation:)();
  }

  else
  {

    return LocalizedStringResource.init(stringLiteral:)();
  }
}

uint64_t static SearchToolError.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 != a3 || a2 != a4)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1;
}

uint64_t SiriXReadingFallbackError.serializedSearchResults.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data._Representation(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t SiriXReadingFallbackError.errorUserInfo.getter(uint64_t a1, unint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  v8 = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD000000000000038;
  *(inited + 56) = 0x800000025DBF2BD0;
  *(inited + 72) = v8;
  strcpy((inited + 80), "SearchResults");
  v9 = MEMORY[0x277CC9318];
  *(inited + 94) = -4864;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x800000025DBF2C10;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = a3;
  outlined copy of Data._Representation(a1, a2);
  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t lazy protocol witness table accessor for type SiriXReadingFallbackError and conformance SiriXReadingFallbackError()
{
  result = lazy protocol witness table cache variable for type SiriXReadingFallbackError and conformance SiriXReadingFallbackError;
  if (!lazy protocol witness table cache variable for type SiriXReadingFallbackError and conformance SiriXReadingFallbackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXReadingFallbackError and conformance SiriXReadingFallbackError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriXReadingFallbackError and conformance SiriXReadingFallbackError;
  if (!lazy protocol witness table cache variable for type SiriXReadingFallbackError and conformance SiriXReadingFallbackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriXReadingFallbackError and conformance SiriXReadingFallbackError);
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance SiriXReadingFallbackError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriXReadingFallbackError and conformance SiriXReadingFallbackError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance SiriXReadingFallbackError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SiriXReadingFallbackError and conformance SiriXReadingFallbackError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t get_enum_tag_for_layout_string_10OmniSearch0B9ToolErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SearchToolError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchToolError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for SearchToolError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriXReadingFallbackError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriXReadingFallbackError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized Encodable.oms_jsonPrettyPrinted()()
{
  OUTLINED_FUNCTION_47_1();
  v0 = type metadata accessor for String.Encoding();
  v1 = OUTLINED_FUNCTION_114(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_36();
  if (one-time initialization token for iso8601PrettyPrinted != -1)
  {
    OUTLINED_FUNCTION_15_17();
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch16DialogExperienceCGMd, &_sSay10OmniSearch16DialogExperienceCGMR);
  lazy protocol witness table accessor for type [DialogExperience] and conformance <A> [A]();
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  static String.Encoding.utf8.getter();
  OUTLINED_FUNCTION_116_0();
  String.init(data:encoding:)();
  v2 = OUTLINED_FUNCTION_116_0();
  outlined consume of Data._Representation(v2, v3);
  return OUTLINED_FUNCTION_94();
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D372D8], &lazy protocol witness table cache variable for type WalletTransaction and conformance WalletTransaction, MEMORY[0x277D372D8], MEMORY[0x277D372E0]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D370C8], &lazy protocol witness table cache variable for type WalletPass and conformance WalletPass, MEMORY[0x277D370C8], MEMORY[0x277D370D0]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(type metadata accessor for SearchResult, &lazy protocol witness table cache variable for type SearchResult and conformance SearchResult, type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D37250], &lazy protocol witness table cache variable for type HotelReservation and conformance HotelReservation, MEMORY[0x277D37250], MEMORY[0x277D37258]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D373D8], &lazy protocol witness table cache variable for type RestaurantReservation and conformance RestaurantReservation, MEMORY[0x277D373D8], MEMORY[0x277D373E0]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D37368], &lazy protocol witness table cache variable for type RentalCarReservation and conformance RentalCarReservation, MEMORY[0x277D37368], MEMORY[0x277D37370]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D37438], &lazy protocol witness table cache variable for type TicketedTransportation and conformance TicketedTransportation, MEMORY[0x277D37438], MEMORY[0x277D37440]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D371B8], &lazy protocol witness table cache variable for type TicketedShow and conformance TicketedShow, MEMORY[0x277D371B8], MEMORY[0x277D371C0]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D370E8], &lazy protocol witness table cache variable for type Appointment and conformance Appointment, MEMORY[0x277D370E8], MEMORY[0x277D370F0]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D37520], &lazy protocol witness table cache variable for type Party and conformance Party, MEMORY[0x277D37520], MEMORY[0x277D37528]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D37500], &lazy protocol witness table cache variable for type Trip and conformance Trip, MEMORY[0x277D37500], MEMORY[0x277D37508]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D37218], &lazy protocol witness table cache variable for type ShippingOrder and conformance ShippingOrder, MEMORY[0x277D37218], MEMORY[0x277D37220]);
}

{
  return specialized Encodable.oms_jsonPrettyPrinted()(MEMORY[0x277D37108], &lazy protocol witness table cache variable for type FileDocument and conformance FileDocument, MEMORY[0x277D37108], MEMORY[0x277D37110]);
}

uint64_t specialized Encodable.oms_jsonPrettyPrinted()(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for String.Encoding();
  v7 = OUTLINED_FUNCTION_114(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  if (one-time initialization token for iso8601PrettyPrinted != -1)
  {
    OUTLINED_FUNCTION_15_17();
    swift_once();
  }

  a1(0);
  v8 = OUTLINED_FUNCTION_116_0();
  _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v8, v9, a4);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  static String.Encoding.utf8.getter();
  OUTLINED_FUNCTION_116_0();
  String.init(data:encoding:)();
  v10 = OUTLINED_FUNCTION_116_0();
  outlined consume of Data._Representation(v10, v11);
  return OUTLINED_FUNCTION_94();
}

void SearchToolIntentController.__allocating_init(omniSearchService:metricsLogger:context:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = swift_allocObject();
  v10 = v7[3];
  v9 = v7[4];
  v11 = OUTLINED_FUNCTION_156();
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v15 = OUTLINED_FUNCTION_164_1(v14);
  v16(v15);
  v17 = v5[3];
  v18 = v5[4];
  v19 = OUTLINED_FUNCTION_242();
  __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v23 = OUTLINED_FUNCTION_163_2(v22);
  v24(v23);
  specialized SearchToolIntentController.init(omniSearchService:metricsLogger:context:)(v0, v1, v3, v8, v10, v17, v9, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_148();
}

uint64_t AssistantSystemContext.init(interactionMode:interfaceIdiom:locale:requestIdentifier:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  OUTLINED_FUNCTION_190_3();
  v13 = v12;
  v15 = v14;
  outlined init with take of SearchResultItem?(v16, v14, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v17 = type metadata accessor for AssistantSystemContext(0);
  result = outlined init with take of SearchResultItem?(v13, v15 + v17[5], &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v19 = (v15 + v17[6]);
  *v19 = v10;
  v19[1] = v9;
  v20 = (v15 + v17[7]);
  *v20 = v8;
  v20[1] = v7;
  *(v15 + v17[8]) = a7 & 1;
  return result;
}

uint64_t SearchToolIntentRequest.init(rawQuery:rewrittenQuery:simplifiedQuery:structuredQuery:typeIdentifiers:context:matchEntities:isFirstToolInvocation:isOnScreenReference:isSingleStepSearch:invocationClient:requestedProperties:systemContext:disambiguatedEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t x6_0@<X6>, const void *a9, uint64_t a10, char a11, char a12, char a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a18)
{
  v21 = *a14;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v22 = type metadata accessor for SearchToolIntentRequest(0);
  outlined init with take of SearchResultItem?(x6_0, a8 + v22[7], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  *(a8 + v22[8]) = a7;
  memcpy(a8 + v22[9], a9, 0xA0uLL);
  *(a8 + v22[10]) = a10;
  *(a8 + v22[11]) = a11;
  *(a8 + v22[12]) = a12;
  *(a8 + v22[13]) = a13;
  *(a8 + v22[14]) = v21;
  *(a8 + v22[15]) = a15;
  outlined init with take of AssistantSystemContext(a16, a8 + v22[16]);
  return outlined init with take of SearchResultItem?(a18, a8 + v22[17], &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
}

uint64_t SearchToolIntentControllerProtocol.perform(request:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_185_1(v0);
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_23(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_103_8(v3);
  OUTLINED_FUNCTION_28_1();

  return v6();
}

uint64_t SearchToolIntentRequest.structuredQuery.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchToolIntentRequest(v0);
  v2 = OUTLINED_FUNCTION_85_1(*(v1 + 28));
  return outlined init with copy of SpotlightRankingItem?(v2, v3, v4, v5);
}

uint64_t SearchToolIntentRequest.typeIdentifiers.getter()
{
  type metadata accessor for SearchToolIntentRequest(0);
}

uint64_t SearchToolIntentRequest.context.getter()
{
  v2 = OUTLINED_FUNCTION_113();
  v3 = *(type metadata accessor for SearchToolIntentRequest(v2) + 36);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0xA0uLL);
  return outlined init with copy of SpotlightRankingItem?(__dst, &v5, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
}

uint64_t SearchToolIntentRequest.matchEntities.getter()
{
  type metadata accessor for SearchToolIntentRequest(0);
}

uint64_t SearchToolIntentRequest.invocationClient.getter()
{
  v2 = OUTLINED_FUNCTION_113();
  result = type metadata accessor for SearchToolIntentRequest(v2);
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t SearchToolIntentRequest.requestedProperties.getter()
{
  type metadata accessor for SearchToolIntentRequest(0);
}

uint64_t SearchToolIntentRequest.systemContext.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for SearchToolIntentRequest(v0);
  OUTLINED_FUNCTION_82_10();
  v2 = OUTLINED_FUNCTION_85_1(v1);
  return _s10OmniSearch22AssistantSystemContextVWOcTm_0(v2, v3);
}

uint64_t SearchToolIntentRequest.disambiguatedEntity.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchToolIntentRequest(v0);
  v2 = OUTLINED_FUNCTION_85_1(*(v1 + 68));
  return outlined init with copy of SpotlightRankingItem?(v2, v3, v4, v5);
}

unint64_t SearchToolIntentRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SearchToolIntentRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t SearchToolIntentRequest.CodingKeys.rawValue.getter(char a1)
{
  result = 0x7972657551776172;
  switch(a1)
  {
    case 1:
      result = 0x6574746972776572;
      break;
    case 2:
      result = 0x6966696C706D6973;
      break;
    case 3:
      result = 0x7275746375727473;
      break;
    case 4:
      result = 0x6E65644965707974;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SearchToolIntentRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = SearchToolIntentRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchToolIntentRequest.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = SearchToolIntentRequest.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchToolIntentRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = SearchToolIntentRequest.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SearchToolIntentRequest.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SearchToolIntentRequest.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolIntentRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolIntentRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchToolIntentRequest.encode(to:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E17ToolIntentRequestV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E17ToolIntentRequestV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMR);
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = OUTLINED_FUNCTION_70_2();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 2;
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = type metadata accessor for SearchToolIntentRequest(0);
    LOBYTE(v16) = 3;
    type metadata accessor for StructuredQueryEntity(0);
    OUTLINED_FUNCTION_80_7();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v12, v13, &protocol conformance descriptor for StructuredQueryEntity);
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v1 + *(v11 + 32));
    HIBYTE(v15) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchEntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_96_7(5);
    OUTLINED_FUNCTION_96_7(6);
    OUTLINED_FUNCTION_96_7(7);
    v16 = *(v1 + *(v11 + 60));
    HIBYTE(v15) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
    lazy protocol witness table accessor for type [SearchPropertyRequest] and conformance <A> [A]();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t SearchToolIntentRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E17ToolIntentRequestV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E17ToolIntentRequestV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMR);
  OUTLINED_FUNCTION_14();
  v12 = v11;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_198_2();
  v49 = type metadata accessor for SearchToolIntentRequest(v14);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v51 = v17 - v16;
  v50 = a1;
  v18 = OUTLINED_FUNCTION_70_2();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  lazy protocol witness table accessor for type SearchToolIntentRequest.CodingKeys and conformance SearchToolIntentRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    OUTLINED_FUNCTION_177_3();
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }

  else
  {
    v20 = v12;
    v48 = a2;
    LOBYTE(__src[0]) = 0;
    v21 = v10;
    OUTLINED_FUNCTION_94_5();
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_177_3();
    *a2 = v22;
    a2[1] = v23;
    OUTLINED_FUNCTION_24_15(1);
    a2[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    a2[3] = v24;
    OUTLINED_FUNCTION_24_15(2);
    a2[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    a2[5] = v25;
    type metadata accessor for StructuredQueryEntity(0);
    LOBYTE(__src[0]) = 3;
    OUTLINED_FUNCTION_80_7();
    _s10OmniSearch21StructuredQueryEntityVACSEAAWlTm_0(v26, v27, &protocol conformance descriptor for StructuredQueryEntity);
    OUTLINED_FUNCTION_94_5();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = v49;
    outlined init with take of SearchResultItem?(v9, a2 + *(v49 + 28), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B20EntityTypeIdentifierVGMd, &_sSay10OmniSearch0B20EntityTypeIdentifierVGMR);
    LOBYTE(v54) = 4;
    lazy protocol witness table accessor for type [SearchEntityTypeIdentifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [SearchEntityTypeIdentifier] and conformance <A> [A], lazy protocol witness table accessor for type SearchEntityTypeIdentifier and conformance SearchEntityTypeIdentifier, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_94_5();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(a2 + v28[8]) = __src[0];
    OUTLINED_FUNCTION_24_15(5);
    *(a2 + v28[11]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_24_15(6);
    *(a2 + v28[12]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_24_15(7);
    *(v51 + v28[13]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B15PropertyRequestVGMd, &_sSay10OmniSearch0B15PropertyRequestVGMR);
    v53[0] = 8;
    lazy protocol witness table accessor for type [SearchPropertyRequest] and conformance <A> [A]();
    OUTLINED_FUNCTION_94_5();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v20 + 8))(v3, v21);
    v29 = v51;
    *(v51 + v28[15]) = v54;
    _s10OmniSearch0B7ContextVSgWOi0_(__src);
    memcpy((v29 + v28[9]), __src, 0xA0uLL);
    *(v29 + v28[10]) = 0;
    *(v29 + v28[14]) = 1;
    v30 = v29 + v28[16];
    type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    v35 = type metadata accessor for AssistantSystemContext(0);
    type metadata accessor for IntentSystemContext.InterfaceIdiom();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    v40 = (v30 + v35[6]);
    *v40 = 0;
    v40[1] = 0;
    v41 = (v30 + v35[7]);
    *v41 = 0;
    v41[1] = 0;
    *(v30 + v35[8]) = 1;
    type metadata accessor for SearchEntity(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    OUTLINED_FUNCTION_12_20();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v29, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    OUTLINED_FUNCTION_11_20();
    return outlined destroy of SearchToolIntentRequest(v29, v46);
  }
}

uint64_t AssistantSystemContext.locale.getter()
{
  type metadata accessor for AssistantSystemContext(0);

  return OUTLINED_FUNCTION_94();
}

void AssistantSystemContext.asCATContext.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  SearchCATContext.init()(v2);
  v11 = type metadata accessor for AssistantSystemContext(0);
  if ((*(v0 + *(v11 + 32)) & 1) == 0)
  {
    v12 = DeviceState.deviceClass.getter();
    v14 = v13;
    type metadata accessor for SearchCATContext(0);
    v30 = v12;
    v31 = v14;
    EntityProperty.wrappedValue.setter();
    LOBYTE(v30) = AFIsDeviceUnlocked() ^ 1;
    EntityProperty.wrappedValue.setter();
  }

  outlined init with copy of SpotlightRankingItem?(v0 + *(v11 + 20), v10, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
  v15 = type metadata accessor for IntentSystemContext.InterfaceIdiom();
  v16 = OUTLINED_FUNCTION_103_6();
  OUTLINED_FUNCTION_166(v16, v17, v15);
  if (v18)
  {
    outlined destroy of IntentApplication?(v10, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMd, &_s10AppIntents19IntentSystemContextV14InterfaceIdiomOSgMR);
    v19 = 0;
    v21 = 0;
  }

  else
  {
    v19 = IntentSystemContext.InterfaceIdiom.rawValue.getter();
    v21 = v20;
    OUTLINED_FUNCTION_51();
    (*(v22 + 8))(v10, v15);
  }

  type metadata accessor for SearchCATContext(0);
  v30 = v19;
  v31 = v21;
  EntityProperty.wrappedValue.setter();
  outlined init with copy of SpotlightRankingItem?(v0, v6, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  v23 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
  v24 = OUTLINED_FUNCTION_93_6();
  OUTLINED_FUNCTION_166(v24, v25, v23);
  if (v18)
  {
    outlined destroy of IntentApplication?(v6, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
    v26 = 0;
    v28 = 0;
  }

  else
  {
    v26 = IntentSystemContext.AssistantContext.InteractionMode.asString.getter();
    v28 = v27;
    OUTLINED_FUNCTION_51();
    (*(v29 + 8))(v6, v23);
  }

  v30 = v26;
  v31 = v28;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

uint64_t DialogData.parameters.getter()
{
  type metadata accessor for DialogData(0);
}

uint64_t AssistantSystemContext.requestIdentifier.getter(uint64_t (*a1)(void))
{
  a1(0);

  return OUTLINED_FUNCTION_94();
}

uint64_t DialogData.speakableString.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for DialogData(v0);
  v2 = OUTLINED_FUNCTION_85_1(*(v1 + 32));
  return outlined init with copy of SpotlightRankingItem?(v2, v3, v4, v5);
}

uint64_t DialogData.init(identifier:templateDirectoryURL:parameters:stringLiteral:speakableString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_190_3();
  v13 = v12;
  *v12 = v14;
  v12[1] = v15;
  v16 = type metadata accessor for DialogData(0);
  outlined init with take of SearchResultItem?(v10, v13 + v16[5], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v13 + v16[6]) = v9;
  v17 = (v13 + v16[7]);
  *v17 = v8;
  v17[1] = v7;
  return outlined init with take of SearchResultItem?(a7, v13 + v16[8], &_s10AppIntents16_SpeakableStringVSgMd, &_s10AppIntents16_SpeakableStringVSgMR);
}

uint64_t SearchToolIntentResponse.snippetData.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  outlined copy of Data._Representation(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchToolIntentResponse.attributionData.getter()
{
  v0 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchToolIntentResponse.dialogData.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for SearchToolIntentResponse(v0);
  OUTLINED_FUNCTION_86_8();
  v2 = OUTLINED_FUNCTION_85_1(v1);
  return _s10OmniSearch22AssistantSystemContextVWOcTm_0(v2, v3);
}

uint64_t SearchToolIntentResponse.init(results:snippetData:attributionData:dialogData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  type metadata accessor for SearchToolIntentResponse(0);
  OUTLINED_FUNCTION_7_20();
  return outlined init with take of AssistantSystemContext(a6, a7 + v9);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance SearchToolIntentResponse.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25D86D084(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SearchToolIntentResponse.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = SearchToolIntentResponse.CodingKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance SearchToolIntentResponse.CodingKeys@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_25D86D084(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolIntentResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolIntentResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchToolIntentResponse.encode(to:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E18ToolIntentResponseV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E18ToolIntentResponseV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMR);
  OUTLINED_FUNCTION_14();
  v4 = v3;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  v8 = OUTLINED_FUNCTION_70_2();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
  lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v2);
}

uint64_t SearchToolIntentResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E18ToolIntentResponseV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E18ToolIntentResponseV10CodingKeys33_12E9D6AD9B7C26936623555213C26B09LLOGMR);
  OUTLINED_FUNCTION_14();
  v27 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_198_2();
  v9 = type metadata accessor for SearchToolIntentResponse(v8);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchToolIntentResponse.CodingKeys and conformance SearchToolIntentResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B6EntityVGMd, &_sSay10OmniSearch0B6EntityVGMR);
    lazy protocol witness table accessor for type [SearchEntity] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v27 + 8))(v3, v5);
    *v13 = v28;
    *(v13 + 8) = xmmword_25DBD92A0;
    *(v13 + 24) = xmmword_25DBC9410;
    v14 = (v13 + *(v9 + 28));
    v15 = type metadata accessor for DialogData(0);
    type metadata accessor for URL();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for _SpeakableString();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    *v14 = 0;
    v14[1] = 0;
    *(v14 + *(v15 + 24)) = 0;
    v24 = (v14 + *(v15 + 28));
    *v24 = 0;
    v24[1] = 0;
    outlined init with take of AssistantSystemContext(v13, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t one-time initialization function for catTemplateDirectoryURL()
{
  v0 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v0, static SearchToolIntentController.catTemplateDirectoryURL);
  __swift_project_value_buffer(v0, static SearchToolIntentController.catTemplateDirectoryURL);
  return closure #1 in variable initialization expression of static SearchToolIntentController.catTemplateDirectoryURL();
}

uint64_t closure #1 in variable initialization expression of static SearchToolIntentController.catTemplateDirectoryURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  type metadata accessor for DialogExperience(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = [v11 resourceURL];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v4 + 32);
    v14(v2, v6, v3);
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
    v14(v9, v2, v3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
    v15 = [v11 bundleURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
    {
      outlined destroy of IntentApplication?(v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  URL.appendingPathComponent(_:)();

  return (*(v4 + 8))(v9, v3);
}

void SearchToolIntentController.init(omniSearchService:metricsLogger:context:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *(v8 + 24);
  v10 = *(v8 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v8, v11);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v14 = OUTLINED_FUNCTION_164_1(v13);
  v15(v14);
  v16 = v7[3];
  v17 = v7[4];
  v18 = OUTLINED_FUNCTION_242();
  __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  OUTLINED_FUNCTION_19_14();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  v22 = OUTLINED_FUNCTION_163_2(v21);
  v23(v22);
  specialized SearchToolIntentController.init(omniSearchService:metricsLogger:context:)(v1, v2, v5, v3, v11, v16, v10, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_148();
}

uint64_t SearchToolIntentController.perform(request:progressReporter:)()
{
  OUTLINED_FUNCTION_48();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for SearchToolIntentRequest(0);
  OUTLINED_FUNCTION_21(v6);
  v1[7] = v7;
  v1[8] = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_199();
  v9 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v9);
}

{
  OUTLINED_FUNCTION_75();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  OUTLINED_FUNCTION_12_20();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v7, v1);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[10] = v10;
  *(v10 + 16) = v3;
  outlined init with take of AssistantSystemContext(v1, v10 + v8);
  v11 = (v10 + v9);
  *v11 = v5;
  v11[1] = v6;

  swift_unknownObjectRetain();
  v12 = swift_task_alloc();
  v0[11] = v12;
  v13 = type metadata accessor for SearchToolIntentResponse(0);
  *v12 = v0;
  v12[1] = SearchToolIntentController.perform(request:progressReporter:);
  v14 = v0[2];
  v15.n128_u64[0] = 30.0;

  return MEMORY[0x2821C8618](v14, &async function pointer to partial apply for closure #1 in SearchToolIntentController.perform(request:progressReporter:), v10, v13, v15);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_106();

    return v8();
  }
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v0();
}

uint64_t closure #1 in SearchToolIntentController.perform(request:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(*a2 + 120) + **(*a2 + 120));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v12(a1, a3, a4, a5);
}

uint64_t SearchToolIntentController.performInternal(request:progressReporter:)()
{
  OUTLINED_FUNCTION_48();
  v1[137] = v0;
  v1[136] = v2;
  v1[135] = v3;
  v1[134] = v4;
  v1[133] = v5;
  v6 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[138] = v6;
  OUTLINED_FUNCTION_21(v6);
  v1[139] = v7;
  v1[140] = OUTLINED_FUNCTION_199();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_114(v8);
  v1[141] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for DialogData(0);
  v1[142] = v9;
  OUTLINED_FUNCTION_114(v9);
  v1[143] = OUTLINED_FUNCTION_199();
  v10 = type metadata accessor for SearchAppEntity(0);
  v1[144] = v10;
  OUTLINED_FUNCTION_114(v10);
  v1[145] = OUTLINED_FUNCTION_199();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
  OUTLINED_FUNCTION_114(v11);
  v1[146] = OUTLINED_FUNCTION_199();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
  OUTLINED_FUNCTION_114(v12);
  v1[147] = OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for OSSignpostError();
  v1[148] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[149] = v14;
  v1[150] = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for SearchToolIntentController.ExperienceData(0);
  v1[151] = v15;
  OUTLINED_FUNCTION_114(v15);
  v1[152] = OUTLINED_FUNCTION_199();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
  OUTLINED_FUNCTION_114(v16);
  v1[153] = OUTLINED_FUNCTION_199();
  v17 = type metadata accessor for SearchCATContext(0);
  v1[154] = v17;
  OUTLINED_FUNCTION_114(v17);
  v1[155] = OUTLINED_FUNCTION_199();
  v18 = type metadata accessor for AssistantSystemContext(0);
  v1[156] = v18;
  OUTLINED_FUNCTION_114(v18);
  v1[157] = OUTLINED_FUNCTION_199();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch18RGOverrideResponseVSgMd, &_s10OmniSearch18RGOverrideResponseVSgMR);
  OUTLINED_FUNCTION_114(v19);
  v1[158] = OUTLINED_FUNCTION_199();
  v20 = type metadata accessor for RGOverrideResponse(0);
  v1[159] = v20;
  OUTLINED_FUNCTION_114(v20);
  v1[160] = OUTLINED_FUNCTION_199();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  OUTLINED_FUNCTION_114(v21);
  v1[161] = OUTLINED_FUNCTION_160();
  v1[162] = swift_task_alloc();
  v22 = type metadata accessor for LocalizedStringResource();
  v1[163] = v22;
  OUTLINED_FUNCTION_114(v22);
  v1[164] = OUTLINED_FUNCTION_199();
  v23 = type metadata accessor for DisplayRepresentation();
  v1[165] = v23;
  OUTLINED_FUNCTION_21(v23);
  v1[166] = v24;
  v1[167] = OUTLINED_FUNCTION_199();
  v25 = type metadata accessor for SearchResultType();
  v1[168] = v25;
  OUTLINED_FUNCTION_21(v25);
  v1[169] = v26;
  v1[170] = OUTLINED_FUNCTION_199();
  v27 = type metadata accessor for SearchEntity(0);
  v1[171] = v27;
  OUTLINED_FUNCTION_21(v27);
  v1[172] = v28;
  v1[173] = OUTLINED_FUNCTION_160();
  v1[174] = swift_task_alloc();
  v1[175] = swift_task_alloc();
  v1[176] = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
  v1[177] = v29;
  OUTLINED_FUNCTION_114(v29);
  v1[178] = OUTLINED_FUNCTION_199();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6EntityV7elementtSgMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtSgMR);
  OUTLINED_FUNCTION_114(v30);
  v1[179] = OUTLINED_FUNCTION_160();
  v1[180] = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v31);
  v1[181] = OUTLINED_FUNCTION_160();
  v1[182] = swift_task_alloc();
  v1[183] = swift_task_alloc();
  v32 = type metadata accessor for SearchToolIntentRequest(0);
  v1[184] = v32;
  OUTLINED_FUNCTION_114(v32);
  v1[185] = OUTLINED_FUNCTION_160();
  v1[186] = swift_task_alloc();
  v1[187] = swift_task_alloc();
  v33 = type metadata accessor for OSSignpostID();
  v1[188] = v33;
  OUTLINED_FUNCTION_21(v33);
  v1[189] = v34;
  v1[190] = OUTLINED_FUNCTION_160();
  v1[191] = swift_task_alloc();
  v1[192] = swift_task_alloc();
  v35 = type metadata accessor for UUID();
  v1[193] = v35;
  OUTLINED_FUNCTION_21(v35);
  v1[194] = v36;
  v1[195] = OUTLINED_FUNCTION_199();
  v37 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v37);
}

{
  *(v0 + 764) = *(*(v0 + 1472) + 64);

  UUID.init()();
  *(v0 + 1568) = UUID.uuidString.getter();
  *(v0 + 1576) = v1;
  v2 = OUTLINED_FUNCTION_70_2();
  v3(v2);
  if (one-time initialization token for stextension != -1)
  {
    OUTLINED_FUNCTION_5_21();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 1584) = OUTLINED_FUNCTION_200(v4, static Logging.stextension);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_30_7();
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    *v7 = 136315394;
    OUTLINED_FUNCTION_30_5();
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v7 + 12) = 2080;
    OUTLINED_FUNCTION_119();
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v5, v6, "SearchTool running clientId: %s for requestId: %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + 1096) + 56), *(*(v0 + 1096) + 80));
  v8 = OUTLINED_FUNCTION_119();
  v9(v8);

  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  *(v0 + 1592) = OUTLINED_FUNCTION_200(v10, static Logging.searchComponentSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v13 = OUTLINED_FUNCTION_172();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v14, "SearchTool.E2ESearch", "", v13, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v15 = *(v0 + 1512);

  v16 = OUTLINED_FUNCTION_88();
  v17(v16);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  OUTLINED_FUNCTION_65();
  *(v0 + 1600) = OSSignpostIntervalState.init(id:isOpen:)();
  *(v0 + 1608) = *(v15 + 8);
  *(v0 + 1616) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18 = OUTLINED_FUNCTION_54_0();
  v19(v18);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  v20 = *(v0 + 1472);
  v21 = *(v0 + 1072);
  *(v0 + 1624) = static ContextManager.shared;
  v22 = *(v20 + 36);
  memcpy((v0 + 176), (v21 + v22), 0xA0uLL);
  memcpy((v0 + 336), (v21 + v22), 0xA0uLL);
  outlined init with copy of SpotlightRankingItem?(v0 + 176, v0 + 496, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);

  return MEMORY[0x2822009F8](SearchToolIntentController.performInternal(request:progressReporter:));
}

{
  OUTLINED_FUNCTION_48();
  ContextManager.set(searchContext:)((v0 + 336));
  memcpy((v0 + 16), (v0 + 336), 0xA0uLL);
  outlined destroy of IntentApplication?(v0 + 16, &_s10OmniSearch0B7ContextVSgMd, &_s10OmniSearch0B7ContextVSgMR);
  v1 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v1);
}

{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_52();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1696) = v5;
  *(v3 + 1704) = v0;

  v6 = OUTLINED_FUNCTION_191_3();
  outlined destroy of IntentApplication?(v6, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  v2[217] = v0;

  if (v0)
  {
    outlined consume of OmniSearchResponseRenderOption(v2[128], v2[129]);
  }

  else
  {

    outlined consume of OmniSearchResponseRenderOption(v2[128], v2[129]);
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v4);
}

{
  outlined destroy of OmniSearchOptions(v0 + 656);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 880));
  v2 = *(v0 + 1704);
  OUTLINED_FUNCTION_208_1();
  v3 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_131();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_179_3(v7);
  OUTLINED_FUNCTION_133_5();

  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_89_8();
  OUTLINED_FUNCTION_63_8();
  (*(v8 + 320))(v2);
  v9 = OUTLINED_FUNCTION_115_5();
  v10(v9);

  v11 = OUTLINED_FUNCTION_64_0();
  v12(v11);
  swift_willThrow();

  OUTLINED_FUNCTION_127();

  return v13();
}

{
  v1 = v0[162];
  v2 = v0[155];

  outlined destroy of OmniSearchOptions((v0 + 82));

  OUTLINED_FUNCTION_1_40();
  outlined destroy of SearchToolIntentRequest(v2, v3);
  outlined destroy of IntentApplication?(v1, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);

  v4 = v0[217];
  OUTLINED_FUNCTION_208_1();
  v5 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_131();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_179_3(v9);
  OUTLINED_FUNCTION_133_5();

  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
  }

  OUTLINED_FUNCTION_16_17();
  OUTLINED_FUNCTION_89_8();
  OUTLINED_FUNCTION_63_8();
  (*(v10 + 320))(v4);
  v11 = OUTLINED_FUNCTION_115_5();
  v12(v11);

  v13 = OUTLINED_FUNCTION_64_0();
  v14(v13);
  swift_willThrow();

  OUTLINED_FUNCTION_127();

  return v15();
}

void SearchToolIntentController.performInternal(request:progressReporter:)()
{
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  if (byte_28155CFA4)
  {
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_170_3(v2))
    {
      goto LABEL_11;
    }

    v3 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_124_7(v3);
    v6 = "SearchTool Intent perform() called while not prewarmed!";
  }

  else
  {
    v7 = static SearchToolControl.prewarmPID;
    v8 = [objc_opt_self() processInfo];
    v9 = [v8 processIdentifier];

    v1 = Logger.logObject.getter();
    if (v7 == v9)
    {
      v10 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_170_3(v10))
      {
        goto LABEL_11;
      }

      v11 = OUTLINED_FUNCTION_172();
      OUTLINED_FUNCTION_124_7(v11);
      OUTLINED_FUNCTION_200_2(&dword_25D85C000, v12, v13, "SearchTool extension was successfully prewarmed");
      goto LABEL_10;
    }

    v14 = static os_log_type_t.error.getter();
    if (!OUTLINED_FUNCTION_170_3(v14))
    {
      goto LABEL_11;
    }

    v15 = OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_124_7(v15);
    v6 = "SearchTool Intent perform() called with a different PID than when prewarming!";
  }

  OUTLINED_FUNCTION_200_2(&dword_25D85C000, v4, v5, v6);
LABEL_10:
  OUTLINED_FUNCTION_90();
  MEMORY[0x25F8A1050]();
LABEL_11:
  v16 = *(v0 + 1576);
  v29 = *(v0 + 1568);
  v17 = *(v0 + 1496);
  v18 = *(v0 + 1472);
  v31 = *(v0 + 1464);
  v19 = *(v0 + 1096);
  v30 = *(v0 + 1088);
  v20 = *(v0 + 1080);
  v21 = *(v0 + 1072);

  __swift_project_boxed_opaque_existential_1((v19 + 56), *(v19 + 80));
  v22 = OUTLINED_FUNCTION_107();
  v23(v22);
  *(v0 + 1632) = *(v21 + v18[15]);
  OUTLINED_FUNCTION_12_20();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v21, v17);
  swift_unknownObjectRetain();

  OmniSearchOptions.init(request:clientId:progressReporter:)(v17, v29, v16, v20, v30, (v0 + 656));
  outlined init with copy of ExtractionRule(v19 + 16, v0 + 880);
  v24 = *(v0 + 912);
  __swift_project_boxed_opaque_existential_1((v0 + 880), *(v0 + 904));
  *(v0 + 1640) = *v21;
  *(v0 + 1648) = v21[1];
  *(v0 + 1656) = v21[2];
  *(v0 + 1664) = v21[3];
  v25 = v18[7];
  *(v0 + 876) = v25;
  outlined init with copy of SpotlightRankingItem?(v21 + v25, v31, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  *(v0 + 1672) = *(v21 + v18[8]);
  *(v0 + 1680) = *(v21 + v18[10]);
  *(v0 + 1040) = 3;
  memcpy((v0 + 768), (v0 + 656), 0x69uLL);
  v26 = *(v24 + 8);

  v28 = v26 + *v26;
  v27 = swift_task_alloc();
  *(v0 + 1688) = v27;
  *v27 = v0;
  v27[1] = SearchToolIntentController.performInternal(request:progressReporter:);

  __asm { BRAA            X8, X16 }
}

uint64_t SearchToolIntentController.performInternal(request:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OUTLINED_FUNCTION_199_3();
  v50 = *(v49 + 1704);
  __swift_destroy_boxed_opaque_existential_1Tm((v49 + 880));
  static Task<>.checkCancellation()();
  if (v50)
  {
    v51 = v50;

    outlined destroy of OmniSearchOptions(v49 + 656);
    v86 = *(v49 + 1096);
    type metadata accessor for TaskPriority();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    OUTLINED_FUNCTION_131();
    v91 = swift_allocObject();
    OUTLINED_FUNCTION_179_3(v91);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

    v92 = v86[10];
    v93 = v86[11];
    a9 = __swift_project_boxed_opaque_existential_1(v86 + 7, v86[10]);
    if (one-time initialization token for shared != -1)
    {
LABEL_58:
      OUTLINED_FUNCTION_2_0(&one-time initialization token for shared);
    }

    v94 = *(v49 + 1576);
    v95 = *(v49 + 1568);
    OUTLINED_FUNCTION_16_17();
    v207 = v96;
    v208 = *(v49 + 1264);
    v210 = *(v49 + 1256);
    v212 = *(v49 + 1240);
    v216 = *(v49 + 1224);
    v219 = *(v49 + 1216);
    v211 = *(v49 + 1200);
    v214 = *(v49 + 1176);
    v217 = *(v49 + 1168);
    v222 = *(v49 + 1160);
    v225 = *(v49 + 1144);
    v228 = *(v49 + 1128);
    v97 = *(v49 + 1120);
    OUTLINED_FUNCTION_133();
    (*(v98 + 320))(v51);
    (*(v93 + 32))(v95, v94, v97, v92, v93);

    v99 = OUTLINED_FUNCTION_156();
    v100(v99);
    swift_willThrow();

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_131_3();

    return v102(v101, v102, v103, v104, v105, v106, v107, v108, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, *(&a31 + 1), v207, v208, v210, v211, v212, v214, v216, v217, v219, v222, v225, v228, a44, a45, a46, a47, a48, a49);
  }

  v52 = *(v49 + 876);
  v53 = *(v49 + 1456);
  v54 = *(v49 + 1072);
  v227 = (*(**(v49 + 1696) + 128))();
  outlined init with copy of SpotlightRankingItem?(v54 + v52, v53, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  Entity = type metadata accessor for StructuredQueryEntity(0);
  v56 = OUTLINED_FUNCTION_11_1();
  if (__swift_getEnumTagSinglePayload(v56, v57, Entity) == 1)
  {
    outlined destroy of IntentApplication?(*(v49 + 1456), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_93_8();
  }

  outlined init with copy of SpotlightRankingItem?(*(v49 + 1072) + *(v49 + 876), *(v49 + 1448), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v58 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v58, v59, Entity) == 1)
  {
    outlined destroy of IntentApplication?(*(v49 + 1448), &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  }

  else
  {
    EntityProperty.wrappedValue.getter();
    OUTLINED_FUNCTION_93_8();
  }

  v93 = *(v49 + 1488);
  v60 = *(v49 + 1072);
  v61 = OUTLINED_FUNCTION_94();
  static DerivedType.make(preferredType:filterType:)(v61, v62, v63);

  v51 = a44;
  v64 = SearchToolIntentRequest.isAERRequest.getter();
  v65 = OmniSearchResponse.shouldDisableInAppSearch(isAERRequest:)(v64);
  OUTLINED_FUNCTION_12_20();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v60, v93);
  swift_retain_n();
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.info.getter();
  v68 = os_log_type_enabled(v66, v67);
  v69 = *(v49 + 1696);
  v70 = *(v49 + 1488);
  if (v68)
  {
    v224 = a44;
    v71 = *(v49 + 1472);
    v93 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v72 = swift_slowAlloc();
    a44 = v72;
    *v93 = 136315906;
    v221 = v65;
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v93 + 4) = v73;
    *(v93 + 12) = 1024;
    v74 = *(v69 + 40);

    *(v93 + 14) = v74;

    *(v93 + 18) = 1024;
    v75 = *(v70 + *(v71 + 32));
    if (v75)
    {
      v76 = *(v75 + 16) != 0;
    }

    else
    {
      v76 = 0;
    }

    OUTLINED_FUNCTION_11_20();
    outlined destroy of SearchToolIntentRequest(v79, v80);
    *(v93 + 20) = v76;
    *(v93 + 24) = 1024;
    v81 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    *(v93 + 26) = static NSUserDefaults.enablePhotosInAppSearch.getter(v81) & 1;
    _os_log_impl(&dword_25D85C000, v66, v67, "In-app search is %s, isQuerySearch: %{BOOL}d, isAERRequest: %{BOOL}d, enablePhotoInAppSearch: %{BOOL}d", v93, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();

    v51 = v224;
    if (v221)
    {
      goto LABEL_16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_20();
    outlined destroy of SearchToolIntentRequest(v70, v77);

    if (v65)
    {
LABEL_16:
      v78 = 0;
      goto LABEL_17;
    }
  }

  v78 = *(*(v49 + 1696) + 56);

LABEL_17:
  LOBYTE(a44) = v51;
  type metadata accessor for SearchEntityVisualContext();
  v82 = swift_allocObject();
  *(v49 + 944) = &type metadata for EntityCardBuilder;
  *(v49 + 952) = &protocol witness table for EntityCardBuilder;
  outlined init with take of EntityCardBuilding((v49 + 920), v82 + 16);
  v83 = OUTLINED_FUNCTION_180();
  v110 = Array<A>.createValidEntities(context:inAppSearchString:derivedType:)(v83, v84, v78, v85, v227);

  v111 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v92))
  {
    OUTLINED_FUNCTION_30_7();
    v113 = swift_slowAlloc();
    *v113 = 134218240;
    *(v113 + 4) = *(v110 + 16);

    *(v113 + 12) = 2048;
    v114 = *(v227 + 16);

    *(v113 + 14) = v114;

    _os_log_impl(&dword_25D85C000, v111, v92, "SearchTool creating %ld valid entities from %ld SearchResults.", v113, 0x16u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v115 = 0;
  v116 = *(v110 + 16);
  v209 = (*(v49 + 1352) + 8);
  *&v117 = 134218755;
  a31 = v117;
  v213 = v110;
  v223 = v116;
  while (1)
  {
    if (v115 == v116)
    {
      v118 = 1;
      v119 = v116;
    }

    else
    {
      if (v115 >= *(v110 + 16))
      {
        __break(1u);
        goto LABEL_58;
      }

      v120 = *(v49 + 1432);
      v121 = *(v49 + 1424);
      v119 = v115 + 1;
      OUTLINED_FUNCTION_42_5();
      *v121 = v122;
      OUTLINED_FUNCTION_14_15();
      _s10OmniSearch22AssistantSystemContextVWOcTm_0(v124, v121 + v123);
      outlined init with take of SearchResultItem?(v121, v120, &_sSi6offset_10OmniSearch0C6EntityV7elementtMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtMR);
      v118 = 0;
    }

    v125 = *(v49 + 1440);
    v126 = *(v49 + 1432);
    v127 = *(v49 + 1416);
    __swift_storeEnumTagSinglePayload(v126, v118, 1, v127);
    outlined init with take of SearchResultItem?(v126, v125, &_sSi6offset_10OmniSearch0C6EntityV7elementtSgMd, &_sSi6offset_10OmniSearch0C6EntityV7elementtSgMR);
    v128 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v128, v129, v127);
    if (v130)
    {
      break;
    }

    v229 = v119;
    v131 = *(v49 + 1408);
    v132 = *(v49 + 1400);
    v133 = *(v49 + 1392);
    v93 = *(v49 + 1384);
    v51 = **(v49 + 1440);
    OUTLINED_FUNCTION_8_20();
    outlined init with take of AssistantSystemContext(v134 + v135, v131);
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v131, v132);
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v131, v133);
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v131, v93);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v218 = v137;
      v220 = v136;
      v138 = *(v49 + 1400);
      v139 = *(v49 + 1360);
      v140 = *(v49 + 1344);
      v141 = swift_slowAlloc();
      a44 = swift_slowAlloc();
      *v141 = a31;
      *(v141 + 4) = v51;
      *(v141 + 12) = 2080;
      EntityProperty.wrappedValue.getter();
      SearchResultType.rawValue.getter();
      OUTLINED_FUNCTION_34_10();
      (*v209)(v139, v140);
      OUTLINED_FUNCTION_2_25();
      outlined destroy of SearchToolIntentRequest(v138, v142);
      OUTLINED_FUNCTION_242();
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_176_3();
      *(v141 + 14) = v139;
      *(v141 + 22) = 2085;
      v143 = SearchEntity.card.getter();
      if (v143)
      {
        v144 = v143;
        SFCard.cardDetails.getter();
      }

      v215 = *(v49 + 1408);
      v93 = *(v49 + 1312);
      v51 = *(v49 + 1304);
      v92 = type metadata accessor for SearchEntity;
      outlined destroy of SearchToolIntentRequest(*(v49 + 1392), type metadata accessor for SearchEntity);
      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v141 + 24) = v150;
      *(v141 + 32) = 2085;
      SearchEntity.displayRepresentation.getter();
      DisplayRepresentation.title.getter();
      v151 = OUTLINED_FUNCTION_158();
      v152(v151);
      String.init<A>(describing:)();
      v153 = OUTLINED_FUNCTION_32_0();
      outlined destroy of SearchToolIntentRequest(v153, v154);
      v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v141 + 34) = v155;
      _os_log_impl(&dword_25D85C000, v220, v218, "Result %ld---%s---Card: %{sensitive}s---%{sensitive}s\n", v141, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v156 = OUTLINED_FUNCTION_4_6();
      MEMORY[0x25F8A1050](v156);

      outlined destroy of SearchToolIntentRequest(v215, type metadata accessor for SearchEntity);
      v110 = v213;
    }

    else
    {
      v92 = *(v49 + 1392);
      v145 = *(v49 + 1384);

      outlined destroy of SearchToolIntentRequest(v145, type metadata accessor for SearchEntity);
      outlined destroy of SearchToolIntentRequest(v92, type metadata accessor for SearchEntity);
      v146 = OUTLINED_FUNCTION_153();
      outlined destroy of SearchToolIntentRequest(v146, v147);
      v148 = OUTLINED_FUNCTION_156();
      outlined destroy of SearchToolIntentRequest(v148, v149);
    }

    v116 = v223;
    v115 = v229;
  }

  v157 = (*(v49 + 1072) + *(v49 + 764) + *(*(v49 + 1248) + 24));
  if (v157[1])
  {
    v158 = *v157;
    v159 = v157[1];
  }

  else
  {
    v160 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    v158 = static NSUserDefaults.fallbackLocale.getter(v160, v161, v162, v163, v164);
    v159 = v165;
  }

  v166 = *(v49 + 1696);
  v167 = *(v49 + 1664);
  v168 = *(v49 + 1136);
  type metadata accessor for RGOverrideMatcher();
  swift_allocObject();

  *(v49 + 1712) = RGOverrideMatcher.init(locale:)(v158, v159);
  v169 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v168);
  v226 = *(v166 + 32);
  v230 = *(v166 + 24);
  if (!v167)
  {
  }

  v172 = *(v49 + 1272);
  v173 = *(v49 + 1264);
  OUTLINED_FUNCTION_133();
  v175 = *(v174 + 128);

  outlined copy of OmniSearchResponseRenderOption(v230, v226);

  v176 = OUTLINED_FUNCTION_156();
  v175(v176);

  OUTLINED_FUNCTION_166(v173, 1, v172);
  if (v130)
  {
    outlined destroy of IntentApplication?(*(v49 + 1264), &_s10OmniSearch18RGOverrideResponseVSgMd, &_s10OmniSearch18RGOverrideResponseVSgMR);
    v185 = v213;
  }

  else
  {
    v177 = *(v49 + 1280);
    v178 = *(v49 + 1272);
    v179 = OUTLINED_FUNCTION_70_2();
    outlined destroy of IntentApplication?(v179, v180, &_s10OmniSearch10DialogDataVSgMR);
    v181 = OUTLINED_FUNCTION_180();
    outlined init with take of AssistantSystemContext(v181, v182);
    v183 = OUTLINED_FUNCTION_94();
    outlined init with copy of SpotlightRankingItem?(v183, v184, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
    v185 = *(v177 + *(v178 + 24));

    v186 = *(v177 + *(v178 + 20));
    outlined destroy of SearchToolIntentRequest(v177, type metadata accessor for RGOverrideResponse);
    if (v186 == 1)
    {
      outlined consume of OmniSearchResponseRenderOption(v230, v226);
      v226 = 1;
      v230 = 0;
    }
  }

  *(v49 + 1720) = v185;
  OUTLINED_FUNCTION_12_20();
  _s10OmniSearch22AssistantSystemContextVWOcTm_0(v187, v188);
  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.info.getter();
  v191 = OUTLINED_FUNCTION_88_0(v190);
  v192 = *(v49 + 1480);
  if (v191)
  {
    v193 = *(v49 + 1256);
    OUTLINED_FUNCTION_28_3();
    v194 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v231 = swift_slowAlloc();
    *v194 = 136315138;
    OUTLINED_FUNCTION_82_10();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v192 + v195, v193);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_11_20();
    outlined destroy of SearchToolIntentRequest(v192, v196);
    v197 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v194 + 4) = v197;
    _os_log_impl(&dword_25D85C000, v189, v190, "SearchTool Intent perform() with systemContext: %s", v194, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v231);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_11_20();
    outlined destroy of SearchToolIntentRequest(v192, v198);
  }

  v199 = *(v49 + 1232);
  static SearchCATContext.overrideCATContext()(*(v49 + 1224));
  v200 = OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_166(v200, v201, v199);
  if (v130)
  {
    v202 = *(v49 + 1232);
    AssistantSystemContext.asCATContext.getter();
    v203 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v203, v204, v202);
    if (!v130)
    {
      outlined destroy of IntentApplication?(*(v49 + 1224), &_s10OmniSearch0B10CATContextVSgMd, &_s10OmniSearch0B10CATContextVSgMR);
    }
  }

  else
  {
    outlined init with take of AssistantSystemContext(*(v49 + 1224), *(v49 + 1240));
  }

  *(v49 + 1024) = v230;
  *(v49 + 1032) = v226;

  v205 = swift_task_alloc();
  *(v49 + 1728) = v205;
  *v205 = v49;
  v205[1] = SearchToolIntentController.performInternal(request:progressReporter:);
  OUTLINED_FUNCTION_131_3();

  return SearchToolIntentController.buildExperienceData(from:request:renderOption:isQuestionQuery:searchCATContext:perAppSearchStrings:)();
}

uint64_t SearchToolIntentController.performInternal(request:progressReporter:)(uint64_t a1)
{
  v2 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v3 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v4 = OUTLINED_FUNCTION_64_0();
    if (v5(v4) == *MEMORY[0x277D85B00])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v1 + 1192) + 8))(*(v1 + 1200), *(v1 + 1184));
      v6 = "";
    }

    v7 = OUTLINED_FUNCTION_172();
    *v7 = 0;
    v8 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v8, "SearchTool.E2ESearch", v6, v7, 2u);
    v9 = OUTLINED_FUNCTION_4_6();
    MEMORY[0x25F8A1050](v9);
  }

  v10 = *(v1 + 1696);
  v11 = *(v1 + 1608);

  v12 = OUTLINED_FUNCTION_88();
  v11(v12);
  if (*(v10 + 41) == 1)
  {
    v13 = *(v1 + 1368);
    specialized Collection.first.getter(*(v1 + 1720), *(v1 + 1176));
    v14 = OUTLINED_FUNCTION_11_1();
    if (__swift_getEnumTagSinglePayload(v14, v15, v13) == 1)
    {
      outlined destroy of IntentApplication?(*(v1 + 1176), &_s10OmniSearch0B6EntityVSgMd, &_s10OmniSearch0B6EntityVSgMR);
    }

    else
    {
      v16 = *(v1 + 1152);
      *(v1 + 761) = 1;
      EntityProperty.wrappedValue.setter();
      EntityProperty.wrappedValue.getter();
      v17 = OUTLINED_FUNCTION_93_6();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v16);
      v20 = *(v1 + 1168);
      if (EnumTagSinglePayload)
      {
        outlined destroy of IntentApplication?(*(v1 + 1168), &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
      }

      else
      {
        v21 = *(v1 + 1160);
        v22 = OUTLINED_FUNCTION_88();
        _s10OmniSearch22AssistantSystemContextVWOcTm_0(v22, v23);
        outlined destroy of IntentApplication?(v20, &_s10OmniSearch0B9AppEntityVSgMd, &_s10OmniSearch0B9AppEntityVSgMR);
        EntityProperty.wrappedValue.getter();
        *(v1 + 763) = *(v1 + 762);
        EntityProperty.wrappedValue.setter();
        outlined destroy of SearchToolIntentRequest(v21, type metadata accessor for SearchAppEntity);
      }

      OUTLINED_FUNCTION_2_25();
      outlined destroy of SearchToolIntentRequest(v24, v25);
    }
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_16_11(v27))
  {
    v28 = *(v1 + 1720);
    v29 = *(v1 + 1368);
    OUTLINED_FUNCTION_30_7();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v77 = swift_slowAlloc();
    *v30 = 134218243;
    *(v30 + 4) = *(v28 + 16);
    *(v30 + 12) = 2085;

    MEMORY[0x25F89F8A0](v31, v29);
    OUTLINED_FUNCTION_188_3();

    OUTLINED_FUNCTION_179_0();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v30 + 14) = v32;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v33, v34, v35, v36, v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v77);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v38 = *(v1 + 1136);
  outlined init with copy of SpotlightRankingItem?(*(v1 + 1296), *(v1 + 1288), &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  v39 = OUTLINED_FUNCTION_65();
  v41 = __swift_getEnumTagSinglePayload(v39, v40, v38);
  v42 = *(v1 + 1288);
  if (v41 == 1)
  {
    v43 = *(v1 + 1136);
    OUTLINED_FUNCTION_86_8();
    _s10OmniSearch22AssistantSystemContextVWOcTm_0(v44 + v45, v46);
    v47 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_166(v47, v48, v43);
    if (!v49)
    {
      outlined destroy of IntentApplication?(*(v1 + 1288), &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_20();
    outlined init with take of AssistantSystemContext(v42, v50);
  }

  outlined init with copy of ExtractionRule(*(v1 + 1096) + 56, v1 + 960);
  v51 = *(v1 + 992);
  __swift_project_boxed_opaque_existential_1((v1 + 960), *(v1 + 984));
  v76 = *(v1 + 1144);
  v52 = *(v1 + 1720);
  v74 = *(v1 + 1296);
  v53 = *(v1 + 1240);
  v75 = *(v1 + 1216);
  v54 = *(v1 + 1064);
  v55 = *(v51 + 24);

  v56 = OUTLINED_FUNCTION_153();
  v55(v56);

  outlined destroy of OmniSearchOptions(v1 + 656);

  OUTLINED_FUNCTION_1_40();
  outlined destroy of SearchToolIntentRequest(v53, v57);
  outlined destroy of IntentApplication?(v74, &_s10OmniSearch10DialogDataVSgMd, &_s10OmniSearch10DialogDataVSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 960));
  v59 = *v75;
  v58 = v75[1];
  v60 = v75[2];
  v61 = v75[3];

  v62 = OUTLINED_FUNCTION_107();
  outlined copy of Data._Representation(v62, v63);
  v64 = OUTLINED_FUNCTION_54_0();
  outlined copy of Data?(v64, v65);
  outlined destroy of SearchToolIntentRequest(v75, type metadata accessor for SearchToolIntentController.ExperienceData);
  type metadata accessor for SearchToolIntentResponse(0);
  OUTLINED_FUNCTION_7_20();
  outlined init with take of AssistantSystemContext(v76, v54 + v66);

  *v54 = v52;
  v54[1] = v59;
  v54[2] = v58;
  v54[3] = v60;
  v54[4] = v61;
  type metadata accessor for TaskPriority();
  v67 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  OUTLINED_FUNCTION_131();
  v71 = swift_allocObject();
  OUTLINED_FUNCTION_179_3(v71);
  OUTLINED_FUNCTION_133_5();

  OUTLINED_FUNCTION_106();

  return v72();
}